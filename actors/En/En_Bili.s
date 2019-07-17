.section .text
func_808C0080:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_808C1E68)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C1E68)  # a1 = 808C1E68
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4188                 # a3 = 41880000
    addiu   t6, $zero, 0x009B          # t6 = 0000009B
    sb      t6, 0x00C8(s0)             # 000000C8
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0188             # t7 = 00000188
    addiu   t8, s0, 0x01A6             # t8 = 000001A6
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, 0x00A4             # a3 = 060000A4
    addiu   a2, a2, 0x5848             # a2 = 06005848
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x01C4             # a1 = 000001C4
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_808C1E10)      # a3 = 808C0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_808C1E10)  # a3 = 808C1E10
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_808C1E48)      # a1 = 808C0000
    lui     a2, %hi(var_808C1E3C)      # a2 = 808C0000
    addiu   a2, a2, %lo(var_808C1E3C)  # a2 = 808C1E3C
    addiu   a1, a1, %lo(var_808C1E48)  # a1 = 808C1E48
    jal     func_80050370
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sb      $zero, 0x0185(s0)          # 00000185
    bne     t0, $at, lbl_808C015C
    nop
    jal     func_808C01A4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C0168
    lw      $ra, 0x002C($sp)
lbl_808C015C:
    jal     func_808C0200
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_808C0168:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808C0178:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x01C4             # a1 = 000001C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C01A4:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_808C1EE0)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1EE0)($at)
    lbu     t8, 0x01D4(a0)             # 000001D4
    lbu     t0, 0x01D5(a0)             # 000001D5
    lwc1    $f6, 0x0028(a0)            # 00000028
    lui     t2, %hi(func_808C0968)     # t2 = 808C0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t2, t2, %lo(func_808C0968) # t2 = 808C0968
    ori     t9, t8, 0x0001             # t9 = 00000001
    ori     t1, t0, 0x0001             # t1 = 00000001
    sb      t6, 0x01E8(a0)             # 000001E8
    sh      t7, 0x0186(a0)             # 00000186
    swc1    $f0, 0x006C(a0)            # 0000006C
    swc1    $f0, 0x0060(a0)            # 00000060
    sb      t9, 0x01D4(a0)             # 000001D4
    sb      t1, 0x01D5(a0)             # 000001D5
    sw      t2, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f6, 0x000C(a0)            # 0000000C
    jr      $ra
    nop


func_808C0200:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00A4             # a1 = 060000A4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    lui     $at, %hi(var_808C1EE4)     # $at = 808C0000
    sh      t6, 0x0186(a2)             # 00000186
    swc1    $f4, 0x0060(a2)            # 00000060
    lwc1    $f6, %lo(var_808C1EE4)($at)
    lbu     t7, 0x01D4(a2)             # 000001D4
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     t9, %hi(func_808C0A54)     # t9 = 808C0000
    addiu   t9, t9, %lo(func_808C0A54) # t9 = 808C0A54
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x01D4(a2)             # 000001D4
    sw      t9, 0x0180(a2)             # 00000180
    swc1    $f6, 0x006C(a2)            # 0000006C
    swc1    $f8, 0x0068(a2)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C0278:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0024             # a1 = 06000024
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     t7, %hi(func_808C0AAC)     # t7 = 808C0000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, t7, %lo(func_808C0AAC) # t7 = 808C0AAC
    sh      t6, 0x0186(a2)             # 00000186
    sw      t7, 0x0180(a2)             # 00000180
    swc1    $f4, 0x0068(a2)            # 00000068
    swc1    $f6, 0x0060(a2)            # 00000060
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C02D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0064             # a1 = 06000064
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t8, %hi(func_808C0CA8)     # t8 = 808C0000
    lbu     t6, 0x01D4(a2)             # 000001D4
    addiu   t8, t8, %lo(func_808C0CA8) # t8 = 808C0CA8
    sw      t8, 0x0180(a2)             # 00000180
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sb      t7, 0x01D4(a2)             # 000001D4
    swc1    $f0, 0x0068(a2)            # 00000068
    swc1    $f0, 0x0060(a2)            # 00000060
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C032C:
    lui     $at, %hi(var_808C1EE8)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1EE8)($at)
    lui     t6, %hi(func_808C0D64)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0D64) # t6 = 808C0D64
    sw      t6, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_808C034C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00A4             # a1 = 060000A4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t6, $zero, 0x0060          # t6 = 00000060
    lui     $at, %hi(var_808C1EEC)     # $at = 808C0000
    sh      t6, 0x0186(a2)             # 00000186
    lwc1    $f4, %lo(var_808C1EEC)($at)
    lbu     t7, 0x01D4(a2)             # 000001D4
    lwc1    $f6, 0x0028(a2)            # 00000028
    lui     t9, %hi(func_808C0DF4)     # t9 = 808C0000
    addiu   t9, t9, %lo(func_808C0DF4) # t9 = 808C0DF4
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01D4(a2)             # 000001D4
    sw      t9, 0x0180(a2)             # 00000180
    swc1    $f4, 0x0068(a2)            # 00000068
    swc1    $f6, 0x000C(a2)            # 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C03B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00A4             # a1 = 060000A4
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0144(s0)             # 00000144
    beql    a1, t6, lbl_808C03E4
    lw      a1, 0x01CC(s0)             # 000001CC
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x01CC(s0)             # 000001CC
lbl_808C03E4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002140C
    addiu   a1, a1, 0x0100             # a1 = 00000100
    lw      a1, 0x01CC(s0)             # 000001CC
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t7, v0, $at
    sh      t7, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021488
    addiu   a1, a1, 0x0100             # a1 = 00000100
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     t8, %hi(func_808C0E70)     # t8 = 808C0000
    addiu   t8, t8, %lo(func_808C0E70) # t8 = 808C0E70
    sh      v0, 0x0030(s0)             # 00000030
    sw      t8, 0x0180(s0)             # 00000180
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C043C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t7, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_808C0CA8)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0CA8) # t6 = 808C0CA8
    bne     t6, t7, lbl_808C046C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    jal     func_8008D2D4
    addiu   a1, a1, 0x00A4             # a1 = 060000A4
lbl_808C046C:
    lbu     t9, 0x01D4(s0)             # 000001D4
    lbu     t1, 0x01D5(s0)             # 000001D5
    lw      t3, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    ori     t4, t3, 0x0010             # t4 = 00000010
    sh      t8, 0x0186(s0)             # 00000186
    sb      t0, 0x01D4(s0)             # 000001D4
    sb      t2, 0x01D5(s0)             # 000001D5
    sw      t4, 0x0004(s0)             # 00000004
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    swc1    $f4, 0x0068(s0)            # 00000068
    sw      t5, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lui     t6, %hi(func_808C0ED4)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0ED4) # t6 = 808C0ED4
    sw      t6, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808C04DC:
    lw      t7, 0x0004(a0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t9, %hi(func_808C0F48)     # t9 = 808C0000
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    addiu   t9, t9, %lo(func_808C0F48) # t9 = 808C0F48
    and     t8, t7, $at
    sh      t6, 0x0186(a0)             # 00000186
    sw      t8, 0x0004(a0)             # 00000004
    sw      t9, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_808C0510:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x0186(a0)             # 00000186
    sb      $zero, 0x01E8(a0)          # 000001E8
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0068(a0)            # 00000068
    sw      a0, 0x0020($sp)
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lw      a0, 0x0020($sp)
    lui     t0, %hi(func_808C1170)     # t0 = 808C0000
    addiu   t0, t0, %lo(func_808C1170) # t0 = 808C1170
    lbu     t8, 0x01D4(a0)             # 000001D4
    sw      t0, 0x0180(a0)             # 00000180
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t9, 0x01D4(a0)             # 000001D4
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808C0588:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s4, 0x0070($sp)
    sw      s1, 0x0064($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s3, 0x006C($sp)
    sw      s2, 0x0068($sp)
    sw      s0, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      t6, 0x0004(s1)             # 00000004
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
    andi    t7, t6, 0x8000             # t7 = 00000000
    bne     t7, $zero, lbl_808C05E8
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    swc1    $f4, 0x006C(s1)            # 0000006C
lbl_808C05E8:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    swc1    $f6, 0x0060(s1)            # 00000060
    lui     $at, %hi(var_808C1EF0)     # $at = 808C0000
    lwc1    $f28, %lo(var_808C1EF0)($at)
    lui     $at, %hi(var_808C1EF4)     # $at = 808C0000
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f26, %lo(var_808C1EF4)($at)
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f24                  # $f24 = 2.50
    sub.s   $f16, $f8, $f10
    lui     $at, 0xC0E0                # $at = C0E00000
    mtc1    $at, $f22                  # $f22 = -7.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f20                  # $f20 = 7.00
    swc1    $f16, 0x0084($sp)
    addiu   s2, $sp, 0x0080            # s2 = FFFFFFF0
    andi    t8, s0, 0x0001             # t8 = 00000000
lbl_808C0630:
    beql    t8, $zero, lbl_808C0644
    mov.s   $f0, $f22
    beq     $zero, $zero, lbl_808C0644
    mov.s   $f0, $f20
    mov.s   $f0, $f22
lbl_808C0644:
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f6, 0x0084($sp)
    andi    t9, s0, 0x0004             # t9 = 00000000
    add.s   $f4, $f0, $f18
    add.s   $f8, $f6, $f24
    swc1    $f4, 0x0080($sp)
    beq     t9, $zero, lbl_808C066C
    swc1    $f8, 0x0084($sp)
    beq     $zero, $zero, lbl_808C0670
    mov.s   $f0, $f20
lbl_808C066C:
    mov.s   $f0, $f22
lbl_808C0670:
    lwc1    $f10, 0x002C(s1)           # 0000002C
    add.s   $f16, $f0, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0088($sp)
    mul.s   $f18, $f0, $f26
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0x00FA          # t2 = 000000FA
    addiu   t3, $zero, 0x00EB          # t3 = 000000EB
    addiu   t4, $zero, 0x00F5          # t4 = 000000F5
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    add.s   $f4, $f18, $f28
    sw      t5, 0x0024($sp)
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    swc1    $f4, 0x0028($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFF0
    jal     func_8001DC4C
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_808C0630
    andi    t8, s0, 0x0001             # t8 = 00000001
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f6, 0x0068(s1)            # 00000068
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lbu     t7, 0x01D4(s1)             # 000001D4
    lbu     t9, 0x01D5(s1)             # 000001D5
    lui     t2, %hi(func_808C11D0)     # t2 = 808C0000
    addiu   t1, $zero, 0x012C          # t1 = 0000012C
    addiu   t2, t2, %lo(func_808C11D0) # t2 = 808C11D0
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sb      t8, 0x01D4(s1)             # 000001D4
    sb      t0, 0x01D5(s1)             # 000001D5
    sh      t1, 0x0186(s1)             # 00000186
    sw      t2, 0x0180(s1)             # 00000180
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    ldc1    $f28, 0x0058($sp)
    lw      s0, 0x0060($sp)
    lw      s1, 0x0064($sp)
    lw      s2, 0x0068($sp)
    lw      s3, 0x006C($sp)
    lw      s4, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_808C0760:
    lwc1    $f4, 0x0154(a0)            # 00000154
    lw      v1, 0x0180(a0)             # 00000180
    lui     t7, %hi(func_808C0AAC)     # t7 = 808C0000
    trunc.w.s $f6, $f4
    addiu   t7, t7, %lo(func_808C0AAC) # t7 = 808C0AAC
    lui     t1, %hi(func_808C0CA8)     # t1 = 808C0000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    mfc1    v0, $f6
    addiu   t1, t1, %lo(func_808C0CA8) # t1 = 808C0CA8
    sll     v0, v0, 16
    bne     t7, v1, lbl_808C07CC
    sra     v0, v0, 16
    subu    v1, t8, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_808C07AC
    subu    v0, $zero, v1
    beq     $zero, $zero, lbl_808C07AC
    or      v0, v1, $zero              # v0 = 00000000
lbl_808C07AC:
    addiu   t9, v0, 0x0005             # t9 = 00000005
    bgez    t9, lbl_808C07C4
    andi    t0, t9, 0x0007             # t0 = 00000005
    beq     t0, $zero, lbl_808C07C4
    nop
    addiu   t0, t0, 0xFFF8             # t0 = FFFFFFFD
lbl_808C07C4:
    jr      $ra
    sb      t0, 0x0184(a0)             # 00000184
lbl_808C07CC:
    bne     t1, v1, lbl_808C0874
    sra     t2, v0,  1
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_808C0804
    sra     v1, v0,  1
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0004
    bne     $at, $zero, lbl_808C07FC
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    jr      $ra
    sb      t2, 0x0184(a0)             # 00000184
lbl_808C07FC:
    jr      $ra
    sb      v1, 0x0184(a0)             # 00000184
lbl_808C0804:
    slti    $at, v0, 0x0013
    beq     $at, $zero, lbl_808C0838
    addiu   t3, $zero, 0x0011          # t3 = 00000011
    subu    v1, t3, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_808C082C
    or      v0, v1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_808C082C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C082C:
    sra     t4, v0,  1
    jr      $ra
    sb      t4, 0x0184(a0)             # 00000184
lbl_808C0838:
    slti    $at, v0, 0x0025
    beq     $at, $zero, lbl_808C0864
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    addiu   t5, $zero, 0x0024          # t5 = 00000024
    subu    t6, t5, v0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, t6, $at
    mflo    t7
    addiu   t8, t7, 0x0002             # t8 = 808C0AAE
    jr      $ra
    sb      t8, 0x0184(a0)             # 00000184
lbl_808C0864:
    subu    t0, t9, v0
    sra     t1, t0,  1
    jr      $ra
    sb      t1, 0x0184(a0)             # 00000184
lbl_808C0874:
    sb      t2, 0x0184(a0)             # 00000184
    jr      $ra
    nop


func_808C0880:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t7, 0x0180(a3)             # 00000180
    lwc1    $f4, 0x0028(a3)            # 00000028
    lwc1    $f6, 0x0094(a3)            # 00000094
    lui     t6, %hi(func_808C0DF4)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0DF4) # t6 = 808C0DF4
    bne     t6, t7, lbl_808C08B8
    add.s   $f0, $f4, $f6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    beq     $zero, $zero, lbl_808C08C8
    lwc1    $f2, 0x0080(a3)            # 00000080
lbl_808C08B8:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f14                  # $f14 = 40.00
    nop
    lwc1    $f2, 0x0080(a3)            # 00000080
lbl_808C08C8:
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_808C08E4
    mov.s   $f12, $f2
    beq     $zero, $zero, lbl_808C08E4
    mov.s   $f12, $f0
    mov.s   $f12, $f2
lbl_808C08E4:
    add.s   $f8, $f12, $f14
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      a3, 0x0018($sp)
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    lw      a3, 0x0018($sp)
    lui     $at, %hi(var_808C1EF8)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1EF8)($at)
    lh      t8, 0x0186(a3)             # 00000186
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800CF470
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lw      a3, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    lwc1    $f8, 0x000C(a3)            # 0000000C
    lhu     t9, 0x0088(a3)             # 00000088
    andi    t0, t9, 0x0008             # t0 = 00000000
    add.s   $f10, $f6, $f8
    beq     t0, $zero, lbl_808C0958
    swc1    $f10, 0x0028(a3)           # 00000028
    lh      t1, 0x007E(a3)             # 0000007E
    sh      t1, 0x0032(a3)             # 00000032
lbl_808C0958:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C0968:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0186(s0)             # 00000186
    lui     $at, %hi(var_808C1EFC)     # $at = 808C0000
    beq     v0, $zero, lbl_808C099C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_808C099C:
    bgez    v0, lbl_808C09B0
    andi    t7, v0, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_808C09B0
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFC
lbl_808C09B0:
    bne     t7, $zero, lbl_808C09E4
    nop
    jal     func_80026D90
    lwc1    $f12, %lo(var_808C1EFC)($at)
    lh      t8, 0x0032(s0)             # 00000032
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    nop
    sh      t0, 0x0032(s0)             # 00000032
lbl_808C09E4:
    jal     func_808C0880
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x0186(s0)             # 00000186
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f18                  # $f18 = 160.00
    bne     t1, $zero, lbl_808C0A04
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sh      t2, 0x0186(s0)             # 00000186
lbl_808C0A04:
    lwc1    $f16, 0x0090(s0)           # 00000090
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_808C0A44
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808C0A44
    lw      $ra, 0x001C($sp)
    jal     func_808C032C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808C0A44:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C0A54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lh      v0, 0x0186(a1)             # 00000186
    beq     v0, $zero, lbl_808C0A8C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a1)             # 00000186
    lh      v0, 0x0186(a1)             # 00000186
lbl_808C0A8C:
    bnel    v0, $zero, lbl_808C0AA0
    lw      $ra, 0x0014($sp)
    jal     func_808C01A4
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_808C0AA0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C0AAC:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f24                  # $f24 = 2.50
    lui     $at, 0x4640                # $at = 46400000
    mtc1    $at, $f22                  # $f22 = 12288.00
    lui     $at, 0x40A0                # $at = 40A00000
    lui     s7, %hi(var_808C1E74)      # s7 = 808C0000
    lui     s6, %hi(var_808C1E70)      # s6 = 808C0000
    mtc1    $at, $f20                  # $f20 = 5.00
    addiu   s6, s6, %lo(var_808C1E70)  # s6 = 808C1E70
    addiu   s7, s7, %lo(var_808C1E74)  # s7 = 808C1E74
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s5, $sp, 0x0078            # s5 = FFFFFFF0
    lh      t6, 0x0186(s3)             # 00000186
lbl_808C0B24:
    sll     t7, s0,  1
    sll     s2, s0, 14
    addu    t8, t6, t7
    bgez    t8, lbl_808C0B44
    andi    t9, t8, 0x0003             # t9 = 00000000
    beq     t9, $zero, lbl_808C0B44
    nop
    addiu   t9, t9, 0xFFFC             # t9 = FFFFFFFC
lbl_808C0B44:
    bnel    t9, $zero, lbl_808C0BE4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_80026D90
    mov.s   $f12, $f22
    trunc.w.s $f4, $f0
    mov.s   $f12, $f20
    mfc1    t3, $f4
    nop
    addu    s1, t3, s2
    addiu   s1, s1, 0x2000             # s1 = 00002000
    sll     s1, s1, 16
    jal     func_80026D90
    sra     s1, s1, 16
    lwc1    $f6, 0x0024(s3)            # 00000024
    add.s   $f8, $f0, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0078($sp)
    mul.s   $f10, $f0, $f20
    lwc1    $f16, 0x0028(s3)           # 00000028
    mov.s   $f12, $f20
    add.s   $f18, $f10, $f16
    add.s   $f4, $f18, $f24
    jal     func_80026D90
    swc1    $f4, 0x007C($sp)
    lwc1    $f6, 0x002C(s3)            # 0000002C
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    add.s   $f8, $f0, $f6
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    swc1    $f8, 0x0080($sp)
    sw      t4, 0x0010($sp)
    sw      s1, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF0
    or      a2, s6, $zero              # a2 = 808C1E70
    jal     func_8001D098
    or      a3, s7, $zero              # a3 = 808C1E74
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_808C0BE4:
    bnel    s0, s8, lbl_808C0B24
    lh      t6, 0x0186(s3)             # 00000186
    addiu   s0, s3, 0x013C             # s0 = 0000013C
    jal     func_8008C9C0
    or      a0, s0, $zero              # a0 = 0000013C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x309A          # a1 = 0000309A
    lh      v0, 0x0186(s3)             # 00000186
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    beq     v0, $zero, lbl_808C0C20
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0186(s3)             # 00000186
    lh      v0, 0x0186(s3)             # 00000186
lbl_808C0C20:
    lwc1    $f10, 0x0060(s3)           # 00000060
    or      a0, s0, $zero              # a0 = 0000013C
    mul.s   $f18, $f10, $f16
    bne     v0, $zero, lbl_808C0C6C
    swc1    $f18, 0x0060(s3)           # 00000060
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_808C0C70
    lw      $ra, 0x0064($sp)
    lh      t8, 0x001C(s3)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_808C0C64
    nop
    jal     func_808C04DC
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C0C70
    lw      $ra, 0x0064($sp)
lbl_808C0C64:
    jal     func_808C02D4
    or      a0, s3, $zero              # a0 = 00000000
lbl_808C0C6C:
    lw      $ra, 0x0064($sp)
lbl_808C0C70:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_808C0CA8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    sw      v0, 0x002C($sp)
    lwc1    $f4, 0x0154(s0)            # 00000154
    lw      a0, 0x0024($sp)
    lui     a1, 0x4110                 # a1 = 41100000
    jal     func_8008D6A8
    swc1    $f4, 0x0028($sp)
    beq     v0, $zero, lbl_808C0CF0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3899          # a1 = 00003899
lbl_808C0CF0:
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f6                   # $f6 = 9.00
    lwc1    $f8, 0x0028($sp)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_808C0D40
    lw      t6, 0x002C($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0094(s0)           # 00000094
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    add.s   $f18, $f10, $f16
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x40A0                 # a3 = 40A00000
    add.s   $f6, $f18, $f4
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lw      t6, 0x002C($sp)
lbl_808C0D40:
    beql    t6, $zero, lbl_808C0D54
    lw      $ra, 0x001C($sp)
    jal     func_808C034C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808C0D54:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808C0D64:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_808C0DA4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_808C0DA4:
    jal     func_808C0880
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0186(s0)             # 00000186
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    bne     t7, $zero, lbl_808C0DC4
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sh      t8, 0x0186(s0)             # 00000186
lbl_808C0DC4:
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_808C0DE4
    lw      $ra, 0x001C($sp)
    jal     func_808C01A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808C0DE4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C0DF4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0186(s0)             # 00000186
    addiu   a0, s0, 0x0032             # a0 = 00000032
    beq     v0, $zero, lbl_808C0E24
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_808C0E24:
    lh      a1, 0x008A(s0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a2, $zero, 0x038E          # a2 = 0000038E
    addu    a1, a1, $at
    sll     a1, a1, 16
    jal     func_80063704
    sra     a1, a1, 16
    jal     func_808C0880
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0186(s0)             # 00000186
    bnel    t7, $zero, lbl_808C0E60
    lw      $ra, 0x001C($sp)
    jal     func_808C01A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808C0E60:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C0E70:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C
    addiu   a0, a3, 0x0068             # a0 = 00000068
    beq     v0, $zero, lbl_808C0EC4
    lw      a3, 0x0018($sp)
    lh      t6, 0x0032(a3)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a0, a3, $zero              # a0 = 00000000
    addu    t7, t6, $at
    jal     func_808C01A4
    sh      t7, 0x0032(a3)             # 00000032
lbl_808C0EC4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C0ED4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lw      t6, 0x0004(a1)             # 00000004
    andi    t7, t6, 0x8000             # t7 = 00000000
    beql    t7, $zero, lbl_808C0F18
    lh      v0, 0x0186(a1)             # 00000186
    beq     $zero, $zero, lbl_808C0F38
    sb      t8, 0x0114(a1)             # 00000114
    lh      v0, 0x0186(a1)             # 00000186
lbl_808C0F18:
    beq     v0, $zero, lbl_808C0F28
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0186(a1)             # 00000186
    lh      v0, 0x0186(a1)             # 00000186
lbl_808C0F28:
    bnel    v0, $zero, lbl_808C0F3C
    lw      $ra, 0x0014($sp)
    jal     func_808C04DC
    or      a0, a1, $zero              # a0 = 00000000
lbl_808C0F38:
    lw      $ra, 0x0014($sp)
lbl_808C0F3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C0F48:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s6, 0x0064($sp)
    sw      s2, 0x0054($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s7, 0x0068($sp)
    sw      s5, 0x0060($sp)
    sw      s4, 0x005C($sp)
    sw      s3, 0x0058($sp)
    sw      s1, 0x0050($sp)
    sw      s0, 0x004C($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lw      t6, 0x0134(s2)             # 00000134
    beql    t6, $zero, lbl_808C0FC0
    lh      v0, 0x0186(s2)             # 00000186
    lw      t7, 0x0004(s2)             # 00000004
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    andi    t8, t7, 0x8000             # t8 = 00000000
    bne     t8, $zero, lbl_808C1130
    addiu   a2, s2, 0x0024             # a2 = 00000024
    sw      $zero, 0x0134(s2)          # 00000134
    jal     func_80013A84
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lh      v0, 0x0186(s2)             # 00000186
lbl_808C0FC0:
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, %hi(var_808C1F00)     # $at = 808C0000
    beq     v0, $zero, lbl_808C0FD8
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0186(s2)             # 00000186
    lh      v0, 0x0186(s2)             # 00000186
lbl_808C0FD8:
    beq     v0, $zero, lbl_808C1108
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    lwc1    $f28, %lo(var_808C1F00)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f24                  # $f24 = 2.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    lui     s5, %hi(var_808C1E84)      # s5 = 808C0000
    lui     s4, %hi(var_808C1E78)      # s4 = 808C0000
    mtc1    $at, $f20                  # $f20 = 5.00
    addiu   s4, s4, %lo(var_808C1E78)  # s4 = 808C1E78
    addiu   s5, s5, %lo(var_808C1E84)  # s5 = 808C1E84
    addiu   s3, $sp, 0x0078            # s3 = FFFFFFF0
lbl_808C1018:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f22
    lwc1    $f6, 0x0024(s2)            # 00000024
    add.s   $f8, $f4, $f6
    sub.s   $f10, $f8, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0078($sp)
    mul.s   $f16, $f0, $f20
    lwc1    $f18, 0x0028(s2)           # 00000028
    add.s   $f4, $f16, $f18
    sub.s   $f6, $f4, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x007C($sp)
    mul.s   $f8, $f0, $f22
    lwc1    $f10, 0x002C(s2)           # 0000002C
    add.s   $f16, $f8, $f10
    sub.s   $f18, $f16, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0080($sp)
    add.s   $f4, $f0, $f26
    lui     $at, %hi(var_808C1E7C)     # $at = 808C0000
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    jal     func_80063BF0
    swc1    $f4, %lo(var_808C1E7C)($at)
    sll     s0, v0, 16
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16
    c.lt.s  $f0, $f28
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s4, $zero              # a2 = 808C1E78
    bc1f    lbl_808C10D8
    or      a3, s5, $zero              # a3 = 808C1E84
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x001C($sp)
    sw      t0, 0x0014($sp)
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s4, $zero              # a2 = 808C1E78
    or      a3, s5, $zero              # a3 = 808C1E84
    sw      s0, 0x0010($sp)
    jal     func_8001D110
    sw      s7, 0x0018($sp)
    beq     $zero, $zero, lbl_808C10F8
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_808C10D8:
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x001C($sp)
    sw      t2, 0x0014($sp)
    sw      s0, 0x0010($sp)
    jal     func_8001D110
    sw      $zero, 0x0018($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_808C10F8:
    bne     s1, s7, lbl_808C1018
    nop
    beq     $zero, $zero, lbl_808C1114
    lh      t4, 0x0186(s2)             # 00000186
lbl_808C1108:
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
    lh      t4, 0x0186(s2)             # 00000186
lbl_808C1114:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    or      a0, s6, $zero              # a0 = 00000000
    bne     t4, $at, lbl_808C1130
    addiu   a1, s2, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x389C          # a3 = 0000389C
lbl_808C1130:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    lw      s6, 0x0064($sp)
    lw      s7, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_808C1170:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x0186(a0)             # 00000186
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    beq     v0, $zero, lbl_808C1190
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a0)             # 00000186
lbl_808C1190:
    lhu     t7, 0x0088(a0)             # 00000088
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_808C11B0
    lh      t9, 0x0186(a0)             # 00000186
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      t9, 0x0186(a0)             # 00000186
lbl_808C11B0:
    bnel    t9, $zero, lbl_808C11C4
    lw      $ra, 0x0014($sp)
    jal     func_808C01A4
    nop
    lw      $ra, 0x0014($sp)
lbl_808C11C4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C11D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x0186(a0)             # 00000186
    lui     $at, 0xBF80                # $at = BF800000
    beq     v0, $zero, lbl_808C11F0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a0)             # 00000186
lbl_808C11F0:
    lw      t7, 0x0004(a0)             # 00000004
    andi    t8, t7, 0x8000             # t8 = 00000000
    bnel    t8, $zero, lbl_808C1210
    lhu     t9, 0x0088(a0)             # 00000088
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    swc1    $f4, 0x006C(a0)            # 0000006C
    lhu     t9, 0x0088(a0)             # 00000088
lbl_808C1210:
    lui     $at, 0xC6FA                # $at = C6FA0000
    andi    t0, t9, 0x0002             # t0 = 00000000
    bne     t0, $zero, lbl_808C123C
    nop
    mtc1    $at, $f6                   # $f6 = -32000.00
    lwc1    $f8, 0x0080(a0)            # 00000080
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_808C1250
    sb      t1, 0x0114(a0)             # 00000114
lbl_808C123C:
    jal     func_808C04DC
    sb      $zero, 0x0114(a0)          # 00000114
    beq     $zero, $zero, lbl_808C1254
    lw      $ra, 0x0014($sp)
    sb      t1, 0x0114(a0)             # 00000114
lbl_808C1250:
    lw      $ra, 0x0014($sp)
lbl_808C1254:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C1260:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x00AF(s0)             # 000000AF
    beql    t6, $zero, lbl_808C141C
    lw      $ra, 0x0024($sp)
    lbu     v0, 0x01D5(s0)             # 000001D5
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01DC             # a1 = 000001DC
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_808C1418
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x01D5(s0)             # 000001D5
    jal     func_800283BC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t9, 0x00B1(s0)             # 000000B1
    bne     t9, $zero, lbl_808C12BC
    nop
    lbu     t0, 0x00B0(s0)             # 000000B0
    beql    t0, $zero, lbl_808C141C
    lw      $ra, 0x0024($sp)
lbl_808C12BC:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808C12F0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x389B          # a1 = 0000389B
    lw      a0, 0x002C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
lbl_808C12F0:
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_808C1328
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t4, 0x0180(s0)             # 00000180
    lui     t3, %hi(func_808C1170)     # t3 = 808C0000
    addiu   t3, t3, %lo(func_808C1170) # t3 = 808C1170
    beql    t3, t4, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
    jal     func_808C0510
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_808C1328:
    bnel    v0, $at, lbl_808C1394
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t6, 0x0180(s0)             # 00000180
    lui     t5, %hi(func_808C1170)     # t5 = 808C0000
    addiu   t5, t5, %lo(func_808C1170) # t5 = 808C1170
    beq     t5, t6, lbl_808C1380
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lbu     t8, 0x00AF(s0)             # 000000AF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     t8, $zero, lbl_808C1370
    nop
    sh      t9, 0x001C(s0)             # 0000001C
lbl_808C1370:
    jal     func_808C0278
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
lbl_808C1380:
    jal     func_808C043C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_808C1394:
    bnel    v0, $at, lbl_808C13B4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_808C043C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     $zero, $zero, lbl_808C13F0
    sh      t0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_808C13B4:
    bne     v0, $at, lbl_808C13CC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C0588
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
lbl_808C13CC:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     v0, $at, lbl_808C13E8
    nop
    jal     func_808C03B4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C13F4
    lw      t1, 0x0200(s0)             # 00000200
lbl_808C13E8:
    jal     func_808C043C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C13F0:
    lw      t1, 0x0200(s0)             # 00000200
lbl_808C13F4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF820           # $at = 0001F820
    lw      t2, 0x0000(t1)             # 00000000
    and     t3, t2, $at
    beql    t3, $zero, lbl_808C141C
    lw      $ra, 0x0024($sp)
    lw      t4, 0x0004(s0)             # 00000004
    ori     t5, t4, 0x0010             # t5 = 00000010
    sw      t5, 0x0004(s0)             # 00000004
lbl_808C1418:
    lw      $ra, 0x0024($sp)
lbl_808C141C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808C142C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     v0, 0x01D4(s0)             # 000001D4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_808C1460
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    jal     func_808C0278
    sb      t7, 0x01D4(s0)             # 000001D4
lbl_808C1460:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C1260
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      t0, 0x0180(s0)             # 00000180
    lui     t8, %hi(func_808C0F48)     # t8 = 808C0000
    addiu   t8, t8, %lo(func_808C0F48) # t8 = 808C0F48
    beql    t8, t0, lbl_808C15F0
    lw      $ra, 0x0024($sp)
    jal     func_808C0760
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D6A8
    lui     a1, 0x4110                 # a1 = 41100000
    beql    v0, $zero, lbl_808C1514
    lw      t9, 0x0180(s0)             # 00000180
    lw      v0, 0x0180(s0)             # 00000180
    lui     t1, %hi(func_808C0968)     # t1 = 808C0000
    addiu   t1, t1, %lo(func_808C0968) # t1 = 808C0968
    beq     t1, v0, lbl_808C14E8
    lui     t2, %hi(func_808C0DF4)     # t2 = 808C0000
    addiu   t2, t2, %lo(func_808C0DF4) # t2 = 808C0DF4
    beq     t2, v0, lbl_808C14E8
    lui     t3, %hi(func_808C0D64)     # t3 = 808C0000
    addiu   t3, t3, %lo(func_808C0D64) # t3 = 808C0D64
    beq     t3, v0, lbl_808C14E8
    lui     t4, %hi(func_808C0E70)     # t4 = 808C0000
    addiu   t4, t4, %lo(func_808C0E70) # t4 = 808C0E70
    bnel    t4, v0, lbl_808C1514
    lw      t9, 0x0180(s0)             # 00000180
lbl_808C14E8:
    lbu     t5, 0x0185(s0)             # 00000185
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beql    t5, $zero, lbl_808C1510
    sb      t6, 0x0185(s0)             # 00000185
    jal     func_80022FD0
    addiu   a1, $zero, 0x3898          # a1 = 00003898
    beq     $zero, $zero, lbl_808C1510
    sb      $zero, 0x0185(s0)          # 00000185
    sb      t6, 0x0185(s0)             # 00000185
lbl_808C1510:
    lw      t9, 0x0180(s0)             # 00000180
lbl_808C1514:
    lui     t7, %hi(func_808C0E70)     # t7 = 808C0000
    addiu   t7, t7, %lo(func_808C0E70) # t7 = 808C0E70
    bne     t7, t9, lbl_808C1534
    nop
    jal     func_800212B8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C1540
    lh      t8, 0x0204(s0)             # 00000204
lbl_808C1534:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x0204(s0)             # 00000204
lbl_808C1540:
    lh      t0, 0x0206(s0)             # 00000206
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t0, $f6                    # $f6 = 0.00
    sw      t1, 0x0014($sp)
    cvt.s.w $f4, $f4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    cvt.s.w $f8, $f6
    mfc1    a3, $f4
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    addiu   a1, s0, 0x01C4             # a1 = 000001C4
    sw      a1, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t2, 0x01D4(s0)             # 000001D4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_808C15A8
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
lbl_808C15A8:
    lbu     t4, 0x01D5(s0)             # 000001D5
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_808C15D4
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0028($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
lbl_808C15D4:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808C15F0:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808C1600:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    mtc1    a1, $f14                   # $f14 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_808C0AAC)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0AAC) # t6 = 808C0AAC
    bne     t6, v0, lbl_808C165C
    lui     t7, %hi(func_808C0CA8)     # t7 = 808C0000
    lui     $at, %hi(var_808C1F04)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1F04)($at)
    mul.s   $f12, $f4, $f14
    jal     func_800CF470
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1F08)     # $at = 808C0000
    lwc1    $f6, %lo(var_808C1F08)($at)
    mul.s   $f8, $f0, $f6
    sub.s   $f10, $f2, $f8
    beq     $zero, $zero, lbl_808C1804
    swc1    $f10, 0x0004(s0)           # 00000004
lbl_808C165C:
    addiu   t7, t7, %lo(func_808C0CA8) # t7 = 00000CA8
    bne     t7, v0, lbl_808C1774
    lui     t8, %hi(func_808C1170)     # t8 = 808C0000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lui     $at, 0x4190                # $at = 41900000
    c.le.s  $f14, $f0
    nop
    bc1fl   lbl_808C16BC
    mtc1    $at, $f2                   # $f2 = 18.00
    lui     $at, %hi(var_808C1F0C)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F0C)($at)
    mul.s   $f12, $f16, $f14
    jal     func_800D2CD0
    nop
    lui     $at, %hi(var_808C1F10)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1F10)($at)
    lui     $at, %hi(var_808C1F14)     # $at = 808C0000
    lwc1    $f6, %lo(var_808C1F14)($at)
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_808C1768
    swc1    $f8, 0x0004(s0)            # 00000004
    mtc1    $at, $f2                   # $f2 = 0.00
lbl_808C16BC:
    lui     $at, %hi(var_808C1F28)     # $at = 808C0000
    c.le.s  $f14, $f2
    nop
    bc1fl   lbl_808C1728
    sub.s   $f4, $f14, $f2
    sub.s   $f10, $f14, $f0
    lui     $at, %hi(var_808C1F18)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F18)($at)
    mul.s   $f12, $f10, $f16
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1F1C)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1F1C)($at)
    lui     $at, %hi(var_808C1F20)     # $at = 808C0000
    mul.s   $f4, $f18, $f0
    sub.s   $f6, $f2, $f4
    swc1    $f6, 0x0004(s0)            # 00000004
    lwc1    $f8, %lo(var_808C1F20)($at)
    lui     $at, %hi(var_808C1F24)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F24)($at)
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f10, $f16
    beq     $zero, $zero, lbl_808C1768
    swc1    $f18, 0x0000(s0)           # 00000000
    sub.s   $f4, $f14, $f2
lbl_808C1728:
    lwc1    $f6, %lo(var_808C1F28)($at)
    mul.s   $f12, $f4, $f6
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1F2C)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C1F2C)($at)
    lui     $at, %hi(var_808C1F30)     # $at = 808C0000
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f2
    swc1    $f16, 0x0004(s0)           # 00000004
    lwc1    $f18, %lo(var_808C1F30)($at)
    mul.s   $f4, $f18, $f0
    sub.s   $f6, $f2, $f4
    swc1    $f6, 0x0000(s0)            # 00000000
lbl_808C1768:
    lwc1    $f8, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_808C1804
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_808C1774:
    addiu   t8, t8, %lo(func_808C1170) # t8 = 00001170
    bne     t8, v0, lbl_808C17D8
    lui     $at, %hi(var_808C1F3C)     # $at = 808C0000
    lh      t9, 0x0186(a0)             # 00000186
    lui     $at, %hi(var_808C1F34)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1F34)($at)
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800CF470
    nop
    lui     $at, %hi(var_808C1F38)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1F38)($at)
    lwc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0004(s0)           # 00000004
    mul.s   $f2, $f0, $f4
    lwc1    $f18, 0x0008(s0)           # 00000008
    sub.s   $f8, $f6, $f2
    add.s   $f16, $f10, $f2
    swc1    $f8, 0x0000(s0)            # 00000000
    sub.s   $f4, $f18, $f2
    swc1    $f16, 0x0004(s0)           # 00000004
    beq     $zero, $zero, lbl_808C1804
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_808C17D8:
    lwc1    $f6, %lo(var_808C1F3C)($at)
    mul.s   $f12, $f6, $f14
    jal     func_800D2CD0
    nop
    lui     $at, %hi(var_808C1F40)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C1F40)($at)
    lui     $at, %hi(var_808C1F44)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F44)($at)
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(s0)           # 00000004
lbl_808C1804:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C1818:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    mtc1    a1, $f14                   # $f14 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_808C0AAC)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0AAC) # t6 = 808C0AAC
    bne     t6, v0, lbl_808C1874
    lui     t7, %hi(func_808C0CA8)     # t7 = 808C0000
    lui     $at, %hi(var_808C1F48)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1F48)($at)
    mul.s   $f12, $f4, $f14
    jal     func_800CF470
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1F4C)     # $at = 808C0000
    lwc1    $f6, %lo(var_808C1F4C)($at)
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f8, $f2
    beq     $zero, $zero, lbl_808C1A24
    swc1    $f10, 0x0004(s0)           # 00000004
lbl_808C1874:
    addiu   t7, t7, %lo(func_808C0CA8) # t7 = 00000CA8
    bne     t7, v0, lbl_808C1994
    lui     t8, %hi(func_808C1170)     # t8 = 808C0000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lui     $at, 0x4190                # $at = 41900000
    c.le.s  $f14, $f0
    nop
    bc1fl   lbl_808C18D8
    mtc1    $at, $f2                   # $f2 = 18.00
    lui     $at, %hi(var_808C1F50)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F50)($at)
    mul.s   $f12, $f16, $f14
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F90                # $at = 3F900000
    mtc1    $at, $f18                  # $f18 = 1.13
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f4                   # $f4 = 0.13
    nop
    mul.s   $f6, $f0, $f4
    sub.s   $f8, $f18, $f6
    beq     $zero, $zero, lbl_808C1988
    swc1    $f8, 0x0000(s0)            # 00000000
    mtc1    $at, $f2                   # $f2 = 0.13
lbl_808C18D8:
    lui     $at, %hi(var_808C1F60)     # $at = 808C0000
    c.le.s  $f14, $f2
    nop
    bc1fl   lbl_808C1948
    sub.s   $f6, $f14, $f2
    sub.s   $f10, $f14, $f0
    lui     $at, %hi(var_808C1F54)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F54)($at)
    mul.s   $f12, $f10, $f16
    jal     func_800D2CD0
    nop
    lui     $at, %hi(var_808C1F58)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1F58)($at)
    lui     $at, %hi(var_808C1F5C)     # $at = 808C0000
    lwc1    $f6, %lo(var_808C1F5C)($at)
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f10                  # $f10 = 1.25
    lui     $at, 0x3E80                # $at = 3E800000
    mul.s   $f18, $f4, $f0
    mtc1    $at, $f16                  # $f16 = 0.25
    nop
    mul.s   $f4, $f16, $f0
    add.s   $f8, $f18, $f6
    sub.s   $f18, $f10, $f4
    swc1    $f8, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_808C1988
    swc1    $f18, 0x0004(s0)           # 00000004
    sub.s   $f6, $f14, $f2
lbl_808C1948:
    lwc1    $f8, %lo(var_808C1F60)($at)
    mul.s   $f12, $f6, $f8
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1F64)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F64)($at)
    lui     $at, %hi(var_808C1F68)     # $at = 808C0000
    mul.s   $f10, $f16, $f0
    sub.s   $f4, $f2, $f10
    swc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f18, %lo(var_808C1F68)($at)
    mul.s   $f6, $f18, $f0
    add.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
lbl_808C1988:
    lwc1    $f16, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_808C1A24
    swc1    $f16, 0x0008(s0)           # 00000008
lbl_808C1994:
    addiu   t8, t8, %lo(func_808C1170) # t8 = 00001170
    bne     t8, v0, lbl_808C19F8
    lui     $at, %hi(var_808C1F74)     # $at = 808C0000
    lh      t9, 0x0186(a0)             # 00000186
    lui     $at, %hi(var_808C1F6C)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1F6C)($at)
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f12, $f4, $f18
    jal     func_800CF470
    nop
    lui     $at, %hi(var_808C1F70)     # $at = 808C0000
    lwc1    $f6, %lo(var_808C1F70)($at)
    lwc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0004(s0)           # 00000004
    mul.s   $f2, $f0, $f6
    lwc1    $f18, 0x0008(s0)           # 00000008
    add.s   $f16, $f8, $f2
    sub.s   $f4, $f10, $f2
    swc1    $f16, 0x0000(s0)           # 00000000
    add.s   $f6, $f18, $f2
    swc1    $f4, 0x0004(s0)            # 00000004
    beq     $zero, $zero, lbl_808C1A24
    swc1    $f6, 0x0008(s0)            # 00000008
lbl_808C19F8:
    lwc1    $f8, %lo(var_808C1F74)($at)
    mul.s   $f12, $f8, $f14
    jal     func_800D2CD0
    nop
    lui     $at, %hi(var_808C1F78)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F78)($at)
    lui     $at, %hi(var_808C1F7C)     # $at = 808C0000
    lwc1    $f10, %lo(var_808C1F7C)($at)
    mul.s   $f4, $f0, $f10
    sub.s   $f18, $f16, $f4
    swc1    $f18, 0x0004(s0)           # 00000004
lbl_808C1A24:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C1A38:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a1, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_808C0CA8)     # t6 = 808C0000
    addiu   t6, t6, %lo(func_808C0CA8) # t6 = 808C0CA8
    bne     t6, t7, lbl_808C1B90
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lui     $at, 0x4190                # $at = 41900000
    c.le.s  $f14, $f0
    nop
    bc1fl   lbl_808C1ACC
    mtc1    $at, $f2                   # $f2 = 18.00
    lui     $at, %hi(var_808C1F80)     # $at = 808C0000
    lwc1    $f4, %lo(var_808C1F80)($at)
    sw      a2, 0x0020($sp)
    mul.s   $f12, $f4, $f14
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F90                # $at = 3F900000
    mtc1    $at, $f6                   # $f6 = 1.13
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f8                   # $f8 = 0.13
    lw      a2, 0x0020($sp)
    lui     $at, %hi(var_808C1F84)     # $at = 808C0000
    mul.s   $f10, $f8, $f0
    sub.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(a2)           # 00000000
    lwc1    $f18, %lo(var_808C1F84)($at)
    lui     $at, %hi(var_808C1F88)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C1F88)($at)
    mul.s   $f4, $f18, $f0
    add.s   $f6, $f4, $f8
    beq     $zero, $zero, lbl_808C1B88
    swc1    $f6, 0x0004(a2)            # 00000004
    mtc1    $at, $f2                   # $f2 = 0.00
lbl_808C1ACC:
    lui     $at, %hi(var_808C1FA0)     # $at = 808C0000
    c.le.s  $f14, $f2
    nop
    bc1fl   lbl_808C1B40
    sub.s   $f8, $f14, $f2
    sub.s   $f10, $f14, $f0
    lui     $at, %hi(var_808C1F8C)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F8C)($at)
    sw      a2, 0x0020($sp)
    mul.s   $f12, $f10, $f16
    jal     func_800D2CD0
    nop
    lui     $at, %hi(var_808C1F90)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C1F90)($at)
    lui     $at, %hi(var_808C1F94)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C1F94)($at)
    mul.s   $f4, $f18, $f0
    lw      a2, 0x0020($sp)
    lui     $at, %hi(var_808C1F98)     # $at = 808C0000
    add.s   $f6, $f4, $f8
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f10, %lo(var_808C1F98)($at)
    lui     $at, %hi(var_808C1F9C)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1F9C)($at)
    mul.s   $f18, $f16, $f0
    sub.s   $f4, $f10, $f18
    beq     $zero, $zero, lbl_808C1B88
    swc1    $f4, 0x0004(a2)            # 00000004
    sub.s   $f8, $f14, $f2
lbl_808C1B40:
    lwc1    $f6, %lo(var_808C1FA0)($at)
    sw      a2, 0x0020($sp)
    mul.s   $f12, $f8, $f6
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808C1FA4)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C1FA4)($at)
    lw      a2, 0x0020($sp)
    lui     $at, %hi(var_808C1FA8)     # $at = 808C0000
    mul.s   $f10, $f16, $f0
    sub.s   $f18, $f2, $f10
    swc1    $f18, 0x0000(a2)           # 00000000
    lwc1    $f4, %lo(var_808C1FA8)($at)
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f2
    swc1    $f6, 0x0004(a2)            # 00000004
lbl_808C1B88:
    lwc1    $f16, 0x0000(a2)           # 00000000
    swc1    $f16, 0x0008(a2)           # 00000008
lbl_808C1B90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C1BA0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0044($sp)
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    lui     t6, %hi(var_808C1E90)      # t6 = 808C0000
    addiu   t6, t6, %lo(var_808C1E90)  # t6 = 808C1E90
    lw      t8, 0x0000(t6)             # 808C1E90
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t8, 0x0000(a2)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 808C1E94
    sw      t7, 0x0004(a2)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 808C1E98
    sw      t8, 0x0008(a2)             # FFFFFFF8
    bne     a1, $at, lbl_808C1BFC
    lwc1    $f0, 0x0154(a3)            # 00000154
    mfc1    a1, $f0
    jal     func_808C1600
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C1C6C
    lwc1    $f12, 0x0020($sp)
lbl_808C1BFC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a1, $at, lbl_808C1C20
    addiu   $at, $zero, 0x0004         # $at = 00000004
    mfc1    a1, $f0
    jal     func_808C1818
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C1C6C
    lwc1    $f12, 0x0020($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_808C1C20:
    bnel    a1, $at, lbl_808C1C6C
    lwc1    $f12, 0x0020($sp)
    mfc1    a1, $f0
    jal     func_808C1A38
    or      a0, a3, $zero              # a0 = 00000000
    lw      v0, 0x0030($sp)
    lh      t9, 0x07A0(v0)             # 000007A0
    sll     t0, t9,  2
    addu    t1, v0, t0
    jal     func_8004977C
    lw      a0, 0x0790(t1)             # 00000790
    lw      a3, 0x0044($sp)
    lw      t5, 0x0040($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t2, 0x00B6(a3)             # 000000B6
    subu    t3, v0, t2
    addu    t4, t3, $at
    sh      t4, 0x0002(t5)             # 00000002
    lwc1    $f12, 0x0020($sp)
lbl_808C1C6C:
    lwc1    $f14, 0x0024($sp)
    lw      a2, 0x0028($sp)
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808C1C90:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0030($sp)
    lbu     v0, 0x0184(s0)             # 00000184
    lui     a3, %hi(func_808C1BA0)     # a3 = 808C0000
    lw      t0, 0x0030($sp)
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_808C1CD8
    addiu   a3, a3, %lo(func_808C1BA0) # a3 = 808C1BA0
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    beq     $zero, $zero, lbl_808C1CDC
    sb      t7, 0x0184(s0)             # 00000184
lbl_808C1CD8:
    sb      v0, 0x0184(s0)             # 00000184
lbl_808C1CDC:
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t1, 0x0184(s0)             # 00000184
    lui     a0, %hi(var_808C1E9C)      # a0 = 808C0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t1,  2
    addu    a0, a0, t2
    lw      a0, %lo(var_808C1E9C)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, a0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v0)             # 00000004
    lw      t2, 0x0180(s0)             # 00000180
    lui     t1, %hi(func_808C0AAC)     # t1 = 808C0000
    addiu   t1, t1, %lo(func_808C0AAC) # t1 = 808C0AAC
    bne     t1, t2, lbl_808C1D8C
    lui     t9, 0xDB06                 # t9 = DB060000
    lh      t4, 0x0186(s0)             # 00000186
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_808C1D90
    lw      v0, 0x02D0(t0)             # 000002D0
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t7, %hi(var_808C1EC0)      # t7 = 808C0000
    addiu   t7, t7, %lo(var_808C1EC0)  # t7 = 808C1EC0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_808C1DB0
    lw      a1, 0x0140(s0)             # 00000140
lbl_808C1D8C:
    lw      v0, 0x02D0(t0)             # 000002D0
lbl_808C1D90:
    lui     t1, %hi(var_808C1ED0)      # t1 = 808C0000
    addiu   t1, t1, %lo(var_808C1ED0)  # t1 = 808C1ED0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    ori     t9, t9, 0x0024             # t9 = DB060024
    sw      t9, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
lbl_808C1DB0:
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t2, 0x02D0(t0)             # 000002D0
    sw      t0, 0x0030($sp)
    lw      a0, 0x003C($sp)
    jal     func_8008A414
    sw      t2, 0x0018($sp)
    lw      t0, 0x0030($sp)
    sw      v0, 0x02D0(t0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop
    nop

.section .data

var_808C1DF0: .word 0x00340500, 0x00005005, 0x00210000, 0x00000210
.word func_808C0080
.word func_808C0178
.word func_808C142C
.word func_808C1C90
var_808C1E10: .word \
0x08110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x03080000, 0xFFCFFFFF, 0x01000000, 0x19010100, \
0x0009001C, 0xFFEC0000, 0x00000000
var_808C1E3C: .word 0x01000009, 0x001CFFEC, 0x1E000000
var_808C1E48: .word \
0x1002E002, 0x01020202, 0xF1F2F424, 0x34020202, \
0x02243400, 0x00000104, 0x02020804, 0x00000400
var_808C1E68: .word 0x89170017, 0x304C07D0
var_808C1E70: .word 0xFFFFFFFF
var_808C1E74: .word 0xC8FFFFFF
var_808C1E78: .word 0x00000000
var_808C1E7C: .word 0x00000000, 0x00000000
var_808C1E84: .word 0x00000000, 0x00000000, 0x00000000
var_808C1E90: .word 0x3F800000, 0x3F800000, 0x3F800000
var_808C1E9C: .word \
0x06000E08, 0x06001708, 0x06002008, 0x06002908, \
0x06003208, 0x06003B08, 0x06004408, 0x06004D08, \
0x00000000
var_808C1EC0: .word 0xFC621603, 0x1F5BFFF8, 0xDF000000, 0x00000000
var_808C1ED0: .word 0xFC121603, 0xFF5BFFF8, 0xDF000000, 0x00000000

.section .rodata

var_808C1EE0: .word 0x3F333333
var_808C1EE4: .word 0xBE99999A
var_808C1EE8: .word 0x3F99999A
var_808C1EEC: .word 0x3F666666
var_808C1EF0: .word 0x3F333333
var_808C1EF4: .word 0x3E4CCCCD
var_808C1EF8: .word 0x3E490FDB
var_808C1EFC: .word 0x44E38000
var_808C1F00: .word 0x3F333333
var_808C1F04: .word 0x3F060B41
var_808C1F08: .word 0x3E851EB8
var_808C1F0C: .word 0x3EC90FDB
var_808C1F10: .word 0x3E19999A
var_808C1F14: .word 0x3F59999A
var_808C1F18: .word 0x3EA0D97C
var_808C1F1C: .word 0x3E99999A
var_808C1F20: .word 0x3E4CCCCD
var_808C1F24: .word 0x3F4CCCCD
var_808C1F28: .word 0x3D920D28
var_808C1F2C: .word 0x3E9EB852
var_808C1F30: .word 0x3ECCCCCD
var_808C1F34: .word 0x3EA0D97C
var_808C1F38: .word 0x3DA3D70A
var_808C1F3C: .word 0x3EC90FDB
var_808C1F40: .word 0x3E051EB8
var_808C1F44: .word 0x3F5EB852
var_808C1F48: .word 0x3F060B41
var_808C1F4C: .word 0x3E4CCCCD
var_808C1F50: .word 0x3EC90FDB
var_808C1F54: .word 0x3EA0D97C
var_808C1F58: .word 0x3E8CCCCD
var_808C1F5C: .word 0x3F79999A
var_808C1F60: .word 0x3D920D28
var_808C1F64: .word 0x3E99999A
var_808C1F68: .word 0x3EF5C28F
var_808C1F6C: .word 0x3EA0D97C
var_808C1F70: .word 0x3DA3D70A
var_808C1F74: .word 0x3EC90FDB
var_808C1F78: .word 0x3F8CCCCD
var_808C1F7C: .word 0x3DCCCCCD
var_808C1F80: .word 0x3EC90FDB
var_808C1F84: .word 0x3E99999A
var_808C1F88: .word 0x3F333333
var_808C1F8C: .word 0x3EA0D97C
var_808C1F90: .word 0x3EA66666
var_808C1F94: .word 0x3F6CCCCD
var_808C1F98: .word 0x3F733333
var_808C1F9C: .word 0x3F0CCCCD
var_808C1FA0: .word 0x3D920D28
var_808C1FA4: .word 0x3ECCCCCD
var_808C1FA8: .word 0x3F051EB8, 0x00000000

