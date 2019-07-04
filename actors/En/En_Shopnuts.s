.section .text
func_80B40070:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80B40E44)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B40E44)  # a1 = 80B40E44
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x420C                 # a3 = 420C0000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0186             # t6 = 00000186
    addiu   t7, s0, 0x01F2             # t7 = 000001F2
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x4574             # a3 = 06004574
    addiu   a2, a2, 0x41A8             # a2 = 060041A8
    lw      a0, 0x003C($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0260             # a1 = 00000260
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80B40E10)      # a3 = 80B40000
    addiu   a3, a3, %lo(var_80B40E10)  # a3 = 80B40E10
    lw      a0, 0x003C($sp)
    lw      a1, 0x0030($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B40E3C)      # a2 = 80B40000
    addiu   a2, a2, %lo(var_80B40E3C)  # a2 = 80B40E3C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0030($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $at, lbl_80B40148
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x0EF0(v1)             # 8011B4C0
    andi    t0, t9, 0x0800             # t0 = 00000000
    bne     t0, $zero, lbl_80B40180
lbl_80B40148:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_80B40164
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0F2A(v1)             # 8011B4FA
    andi    t2, t1, 0x0004             # t2 = 00000000
    bne     t2, $zero, lbl_80B40180
lbl_80B40164:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80B40190
    nop
    lhu     t3, 0x0F2A(v1)             # 8011B4FA
    andi    t4, t3, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80B40190
    nop
lbl_80B40180:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B4019C
    lw      $ra, 0x002C($sp)
lbl_80B40190:
    jal     func_80B401D8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80B4019C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B401AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0260             # a1 = 00000260
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B401D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x139C             # a1 = 0600139C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D278
    sw      a3, 0x0018($sp)
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    jal     func_80063BF0
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    lw      a3, 0x0018($sp)
    lui     t9, %hi(func_80B403D8)     # t9 = 80B40000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lbu     t7, 0x0271(a3)             # 00000271
    addiu   t9, t9, %lo(func_80B403D8) # t9 = 80B403D8
    sh      v0, 0x0184(a3)             # 00000184
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      t6, 0x02A2(a3)             # 000002A2
    sb      t8, 0x0271(a3)             # 00000271
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B40240:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0BA0             # a1 = 06000BA0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t7, %hi(func_80B4063C)     # t7 = 80B40000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, t7, %lo(func_80B4063C) # t7 = 80B4063C
    sh      t6, 0x0184(a2)             # 00000184
    sw      t7, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B40288:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01EC             # a1 = 060001EC
    jal     func_8008D1C4
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B40784)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B40784) # t6 = 80B40784
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B402C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4574             # a1 = 06004574
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_80B40784)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B40784) # t6 = 80B40784
    lw      t7, 0x0180(a3)             # 00000180
    lui     t0, %hi(func_80B406C0)     # t0 = 80B40000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     t6, t7, lbl_80B40318
    addiu   t0, t0, %lo(func_80B406C0) # t0 = 80B406C0
    addiu   t8, $zero, 0x1002          # t8 = 00001002
    beq     $zero, $zero, lbl_80B4031C
    sh      t8, 0x0184(a3)             # 00000184
lbl_80B40318:
    sh      t9, 0x0184(a3)             # 00000184
lbl_80B4031C:
    sw      t0, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B40330:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x039C             # a1 = 0600039C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x387D          # a1 = 0000387D
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B408C0)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B408C0) # t6 = 80B408C0
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B40380:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0764             # a1 = 06000764
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3880          # a1 = 00003880
    lw      a3, 0x0018($sp)
    lui     t8, %hi(func_80B40984)     # t8 = 80B40000
    addiu   t8, t8, %lo(func_80B40984) # t8 = 80B40984
    lbu     t6, 0x0271(a3)             # 00000271
    sw      t8, 0x0180(a3)             # 00000180
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sb      t7, 0x0271(a3)             # 00000271
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B403D8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0158(s0)            # 00000158
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    c.lt.s  $f4, $f6
    lui     a1, 0x4110                 # a1 = 41100000
    bc1f    lbl_80B40414
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B40414:
    beql    v1, $zero, lbl_80B40430
    sw      v1, 0x002C($sp)
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B4042C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80B4042C:
    sw      v1, 0x002C($sp)
lbl_80B40430:
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    beq     v0, $zero, lbl_80B40458
    lw      a0, 0x0020($sp)
    lbu     t7, 0x0271(s0)             # 00000271
    ori     t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80B40484
    sb      t8, 0x0271(s0)             # 00000271
lbl_80B40458:
    jal     func_8008D6A8
    lui     a1, 0x4100                 # a1 = 41000000
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    beq     v0, $zero, lbl_80B40484
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    nop
lbl_80B40484:
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4150                # $at = 41500000
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80B404A8
    mtc1    $at, $f14                  # $f14 = 13.00
    beq     $zero, $zero, lbl_80B404CC
    mov.s   $f0, $f12
    mtc1    $at, $f14                  # $f14 = 13.00
lbl_80B404A8:
    nop
    c.lt.s  $f14, $f0
    nop
    bc1fl   lbl_80B404C8
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_80B404C8
    mov.s   $f2, $f14
    mov.s   $f2, $f0
lbl_80B404C8:
    mov.s   $f0, $f2
lbl_80B404CC:
    sub.s   $f8, $f0, $f12
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x42F0                # $at = 42F00000
    mul.s   $f10, $f8, $f12
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t0, $f4
    nop
    sh      t0, 0x02A2(s0)             # 000002A2
    lw      t1, 0x002C($sp)
    bne     t1, $zero, lbl_80B4052C
    nop
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 120.00
    nop
    c.lt.s  $f6, $f8
    nop
    bc1f    lbl_80B4052C
    nop
    jal     func_80B40330
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B405AC
    lw      t3, 0x002C($sp)
lbl_80B4052C:
    jal     func_8008C9C0
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B405A8
    lui     $at, 0x42F0                # $at = 42F00000
    lwc1    $f2, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 120.00
    nop
    c.lt.s  $f2, $f10
    nop
    bc1fl   lbl_80B4056C
    lh      t2, 0x0184(s0)             # 00000184
    jal     func_80B40330
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B405AC
    lw      t3, 0x002C($sp)
    lh      t2, 0x0184(s0)             # 00000184
lbl_80B4056C:
    lui     $at, 0x43A0                # $at = 43A00000
    bne     t2, $zero, lbl_80B405A0
    nop
    mtc1    $at, $f16                  # $f16 = 320.00
    nop
    c.lt.s  $f16, $f2
    nop
    bc1f    lbl_80B405A0
    nop
    jal     func_80B40240
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B405AC
    lw      t3, 0x002C($sp)
lbl_80B405A0:
    jal     func_80B402C8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B405A8:
    lw      t3, 0x002C($sp)
lbl_80B405AC:
    lui     $at, 0x4320                # $at = 43200000
    beql    t3, $zero, lbl_80B4062C
    lw      $ra, 0x001C($sp)
    lwc1    $f2, 0x0090(s0)            # 00000090
    mtc1    $at, $f18                  # $f18 = 160.00
    nop
    c.lt.s  $f18, $f2
    nop
    bc1fl   lbl_80B4062C
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B4062C
    lw      $ra, 0x001C($sp)
    lh      t4, 0x0184(s0)             # 00000184
    lui     $at, 0x43F0                # $at = 43F00000
    beql    t4, $zero, lbl_80B4061C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.lt.s  $f2, $f6
    nop
    bc1f    lbl_80B40628
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80B4061C:
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80B40628:
    lw      $ra, 0x001C($sp)
lbl_80B4062C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B4063C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sw      a0, 0x001C($sp)
    jal     func_8008C9C0
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80B40680
    lw      a2, 0x0020($sp)
    lh      v0, 0x0184(a2)             # 00000184
    beq     v0, $zero, lbl_80B40680
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(a2)             # 00000184
lbl_80B40680:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_80B406A8
    nop
    lh      t7, 0x0184(a2)             # 00000184
    bnel    t7, $zero, lbl_80B406B4
    lw      $ra, 0x0014($sp)
lbl_80B406A8:
    jal     func_80B40330
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80B406B4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B406C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80B40704
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B40704
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
lbl_80B40704:
    lh      t7, 0x0184(s0)             # 00000184
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    andi    t8, t7, 0x1000             # t8 = 00000000
    bnel    t8, $zero, lbl_80B40728
    lui     $at, 0x42F0                # $at = 42F00000
    jal     func_80064624
    lh      a1, 0x008A(s0)             # 0000008A
    lui     $at, 0x42F0                # $at = 42F00000
lbl_80B40728:
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_80B40750
    nop
    lh      v0, 0x0184(s0)             # 00000184
    addiu   $at, $zero, 0x1000         # $at = 00001000
    bne     v0, $at, lbl_80B40760
    nop
lbl_80B40750:
    jal     func_80B40330
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B40774
    lw      $ra, 0x001C($sp)
lbl_80B40760:
    bnel    v0, $zero, lbl_80B40774
    lw      $ra, 0x001C($sp)
    jal     func_80B40288
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B40774:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B40784:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x004C($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80B407DC
    nop
    jal     func_80B40330
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B408B0
    lw      $ra, 0x0034($sp)
lbl_80B407DC:
    jal     func_8008C9C0
    sw      a0, 0x0038($sp)
    beq     v0, $zero, lbl_80B407FC
    lw      a0, 0x0038($sp)
    jal     func_80B402C8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B408B0
    lw      $ra, 0x0034($sp)
lbl_80B407FC:
    jal     func_8008D6A8
    lui     a1, 0x40C0                 # a1 = 40C00000
    beql    v0, $zero, lbl_80B408B0
    lw      $ra, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f8                   # $f8 = 23.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x4140                # $at = 41400000
    mul.s   $f10, $f0, $f8
    mtc1    $at, $f6                   # $f6 = 12.00
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x003C($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0040($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0040($sp)
    mul.s   $f16, $f0, $f10
    lw      a1, 0x004C($sp)
    swc1    $f4, 0x0010($sp)
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a2, $zero, 0x0193          # a2 = 00000193
    lw      a3, 0x003C($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f2, $f16, $f18
    swc1    $f2, 0x0014($sp)
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x0018($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t7, 0x001C($sp)
    lh      t8, 0x00B8(s0)             # 000000B8
    sw      t9, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x0020($sp)
    beq     v0, $zero, lbl_80B408AC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387E          # a1 = 0000387E
lbl_80B408AC:
    lw      $ra, 0x0034($sp)
lbl_80B408B0:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80B408C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B40900
    lui     $at, 0x4080                # $at = 40800000
    jal     func_80B401D8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    beq     $zero, $zero, lbl_80B40954
    mfc1    a1, $f12
lbl_80B40900:
    mtc1    $at, $f12                  # $f12 = 4.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80B40928
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_80B40928
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_80B40928:
    sub.s   $f4, $f12, $f2
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x02A2(s0)             # 000002A2
    mfc1    a1, $f12
lbl_80B40954:
    jal     func_8008D6A8
    lw      a0, 0x0020($sp)
    beql    v0, $zero, lbl_80B40974
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x0271(s0)             # 00000271
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t9, 0x0271(s0)             # 00000271
    lw      $ra, 0x001C($sp)
lbl_80B40974:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B40984:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B409F8
    lw      a1, 0x003C($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    addiu   a2, $zero, 0x011A          # a2 = 0000011A
    swc1    $f6, 0x0014($sp)
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x0018($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t7, 0x001C($sp)
    lh      t8, 0x00B8(s0)             # 000000B8
    sw      t8, 0x0020($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B40A10
    lw      $ra, 0x0034($sp)
lbl_80B409F8:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    lw      $ra, 0x0034($sp)
lbl_80B40A10:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B40A20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x0271(a0)             # 00000271
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B40A5C
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0271(a0)             # 00000271
    sw      a0, 0x0018($sp)
    jal     func_800283BC
    addiu   a1, a0, 0x0278             # a1 = 00000278
    jal     func_80B40380
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80B40A74
    lw      $ra, 0x0014($sp)
lbl_80B40A5C:
    lbu     t8, 0x1C26(a1)             # 00001C26
    beql    t8, $zero, lbl_80B40A74
    lw      $ra, 0x0014($sp)
    jal     func_80B40380
    nop
    lw      $ra, 0x0014($sp)
lbl_80B40A74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B40A80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B40A20
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      t6, 0x02A0(s0)             # 000002A0
    lh      t7, 0x02A2(s0)             # 000002A2
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    sw      t8, 0x0014($sp)
    cvt.s.w $f4, $f4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    cvt.s.w $f8, $f6
    mfc1    a3, $f4
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    lbu     t0, 0x0271(s0)             # 00000271
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80B40B14
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0260             # a2 = 00000260
lbl_80B40B14:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0260             # a2 = 00000260
    lw      v1, 0x0180(s0)             # 00000180
    lui     t2, %hi(func_80B403D8)     # t2 = 80B40000
    addiu   t2, t2, %lo(func_80B403D8) # t2 = 80B403D8
    bne     t2, v1, lbl_80B40B54
    lui     t3, %hi(func_80B408C0)     # t3 = 80B40000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80B40BB0
    lw      $ra, 0x0024($sp)
lbl_80B40B54:
    addiu   t3, t3, %lo(func_80B408C0) # t3 = 000008C0
    bne     t3, v1, lbl_80B40BA4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x039C             # a0 = 0600039C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lwc1    $f10, 0x0154(s0)           # 00000154
    mtc1    v0, $f18                   # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f10, $f0
    cvt.s.w $f4, $f18
    div.s   $f6, $f16, $f4
    sub.s   $f8, $f0, $f6
    mfc1    a1, $f8
    jal     func_80020F04
    nop
    beq     $zero, $zero, lbl_80B40BB0
    lw      $ra, 0x0024($sp)
lbl_80B40BA4:
    jal     func_80020F04
    lui     a1, 0x41A0                 # a1 = 41A00000
    lw      $ra, 0x0024($sp)
lbl_80B40BB0:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B40BC0:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80B40BF0
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t7, 0x0014($sp)
    lui     t6, %hi(func_80B40784)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B40784) # t6 = 80B40784
    lw      t8, 0x0180(t7)             # 00000180
    bne     t6, t8, lbl_80B40BF0
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80B40BF0:
    jr      $ra
    nop


func_80B40BF8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80B40D84
    lw      v0, 0x0048($sp)
    lw      t7, 0x0180(v0)             # 00000180
    lui     t6, %hi(func_80B40784)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B40784) # t6 = 80B40784
    bne     t6, t7, lbl_80B40D84
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f0, 0x0154(v0)            # 00000154
    lw      t8, 0x0038($sp)
    lui     $at, 0x40E0                # $at = 40E00000
    c.le.s  $f0, $f18
    lw      t0, 0x0000(t8)             # 00000000
    bc1fl   lbl_80B40C88
    mtc1    $at, $f2                   # $f2 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, %hi(var_80B40E50)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B40E50)($at)
    lui     $at, %hi(var_80B40E54)     # $at = 80B40000
    lwc1    $f8, %lo(var_80B40E54)($at)
    mul.s   $f6, $f0, $f4
    nop
    mul.s   $f10, $f0, $f8
    sub.s   $f14, $f18, $f6
    add.s   $f12, $f10, $f18
    beq     $zero, $zero, lbl_80B40D20
    mov.s   $f16, $f12
    mtc1    $at, $f2                   # $f2 = 0.00
lbl_80B40C88:
    lui     $at, 0x4120                # $at = 41200000
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_80B40CD0
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80B40E58)     # $at = 80B40000
    lwc1    $f6, %lo(var_80B40E58)($at)
    sub.s   $f0, $f0, $f18
    lui     $at, %hi(var_80B40E5C)     # $at = 80B40000
    lwc1    $f8, %lo(var_80B40E5C)($at)
    add.s   $f14, $f4, $f0
    mul.s   $f10, $f0, $f8
    sub.s   $f12, $f6, $f10
    beq     $zero, $zero, lbl_80B40D20
    mov.s   $f16, $f12
    mtc1    $at, $f4                   # $f4 = 0.00
lbl_80B40CD0:
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_80B40D14
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    sub.s   $f8, $f0, $f2
    lui     $at, %hi(var_80B40E60)     # $at = 80B40000
    lwc1    $f6, %lo(var_80B40E60)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f10, $f8, $f6
    mov.s   $f16, $f12
    beq     $zero, $zero, lbl_80B40D20
    sub.s   $f14, $f4, $f10
    mtc1    $at, $f12                  # $f12 = 1.50
lbl_80B40D14:
    nop
    mov.s   $f16, $f12
    mov.s   $f14, $f12
lbl_80B40D20:
    mfc1    a2, $f16
    jal     func_800AA8FC
    sw      t0, 0x0020($sp)
    lw      t0, 0x0020($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0038($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      t0, 0x0020($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x3B68             # t5 = 06003B68
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
lbl_80B40D84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B40D94:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lui     t7, %hi(func_80B40BC0)     # t7 = 80B40000
    lui     t8, %hi(func_80B40BF8)     # t8 = 80B40000
    lw      a1, 0x0140(t6)             # 00000140
    lw      a2, 0x015C(t6)             # 0000015C
    lbu     a3, 0x013E(t6)             # 0000013E
    addiu   t8, t8, %lo(func_80B40BF8) # t8 = 80B40BF8
    addiu   t7, t7, %lo(func_80B40BC0) # t7 = 80B40BC0
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      t6, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B40DF0: .word 0x01950500, 0x00000005, 0x01680000, 0x000002AC
.word func_80B40070
.word func_80B401AC
.word func_80B40A80
.word func_80B40D94
var_80B40E10: .word \
0x06000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00140028, 0x00000000, 0x00000000
var_80B40E3C: .word 0x01000014, 0x0028FE00
var_80B40E44: .word 0x8917004E, 0xB06CFFFF, 0x304C0A28

.section .rodata

var_80B40E50: .word 0x3DAA9931
var_80B40E54: .word 0x3DEF0069
var_80B40E58: .word 0x3FD9999A
var_80B40E5C: .word 0x3F333333
var_80B40E60: .word 0x3E2AB368, 0x00000000, 0x00000000, 0x00000000

