.section .text
func_80921830:
    sw      a1, 0x024C(a0)             # 0000024C
    sw      a2, 0x0250(a0)             # 00000250
    jr      $ra
    nop


func_80921840:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    jal     func_800597C0
    sw      a2, 0x0018($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     v1, 0x13FA(a0)             # 8011B9CA
    lw      a2, 0x0018($sp)
    andi    t6, v1, 0x0400             # t6 = 00000000
    beq     t6, $zero, lbl_809218C0
    andi    t7, v1, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_809218AC
    addiu   t2, $zero, 0x2085          # t2 = 00002085
    lhu     t8, 0x0EF0(a0)             # 8011B4C0
    addiu   t0, $zero, 0x2088          # t0 = 00002088
    addiu   t1, $zero, 0x2086          # t1 = 00002086
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_809218A4
    nop
    beq     $zero, $zero, lbl_809218B0
    sh      t0, 0x010E(a2)             # 0000010E
lbl_809218A4:
    beq     $zero, $zero, lbl_809218B0
    sh      t1, 0x010E(a2)             # 0000010E
lbl_809218AC:
    sh      t2, 0x010E(a2)             # 0000010E
lbl_809218B0:
    lhu     t3, 0x13FA(a0)             # 8011B9CA
    andi    t4, t3, 0xFEFF             # t4 = 00000000
    beq     $zero, $zero, lbl_80921910
    sh      t4, 0x13FA(a0)             # 8011B9CA
lbl_809218C0:
    bnel    v0, $zero, lbl_80921910
    sh      v0, 0x010E(a2)             # 0000010E
    lhu     t5, 0x0F06(a0)             # 8011B4D6
    addiu   t1, $zero, 0x207E          # t1 = 0000207E
    andi    t6, t5, 0x4000             # t6 = 00000000
    beq     t6, $zero, lbl_80921904
    nop
    lhu     t7, 0x0EF0(a0)             # 8011B4C0
    addiu   t9, $zero, 0x208B          # t9 = 0000208B
    addiu   t0, $zero, 0x207F          # t0 = 0000207F
    andi    t8, t7, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_809218FC
    nop
    beq     $zero, $zero, lbl_80921910
    sh      t9, 0x010E(a2)             # 0000010E
lbl_809218FC:
    beq     $zero, $zero, lbl_80921910
    sh      t0, 0x010E(a2)             # 0000010E
lbl_80921904:
    beq     $zero, $zero, lbl_80921910
    sh      t1, 0x010E(a2)             # 0000010E
    sh      v0, 0x010E(a2)             # 0000010E
lbl_80921910:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80921920:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0054($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x1C94             # a3 = 06001C94
    addiu   a2, a2, 0xB7B8             # a2 = 0600B7B8
    sw      a1, 0x0038($sp)
    jal     func_8008C788
    lw      a0, 0x0054($sp)
    addiu   a1, s0, 0x0254             # a1 = 00000254
    sw      a1, 0x003C($sp)
    jal     func_8004AB7C
    lw      a0, 0x0054($sp)
    lui     a3, %hi(var_80924BD0)      # a3 = 80920000
    lw      a1, 0x003C($sp)
    addiu   a3, a3, %lo(var_80924BD0)  # a3 = 80924BD0
    lw      a0, 0x0054($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     t1, %hi(func_80924480)     # t1 = 80920000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, t1, %lo(func_80924480) # t1 = 80924480
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    sh      $zero, 0x02D0(s0)          # 000002D0
    sh      $zero, 0x02BE(s0)          # 000002BE
    sh      $zero, 0x02D2(s0)          # 000002D2
    sh      t0, 0x02A6(s0)             # 000002A6
    sw      t1, 0x02A0(s0)             # 000002A0
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f0                   # $f0 = -4.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sb      t2, 0x001F(s0)             # 0000001F
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0070(s0)            # 00000070
    beq     v0, $at, lbl_80921A28
    swc1    $f4, 0x006C(s0)            # 0000006C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80921AFC
    lw      a1, 0x0054($sp)
    beq     $zero, $zero, lbl_80921BAC
    lh      v0, 0x00A4(a1)             # 000000A4
lbl_80921A28:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B50(v0)            # 8011B4B0
    lui     t4, 0x8012                 # t4 = 80120000
    andi    t3, v0, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80921A50
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
lbl_80921A50:
    lw      t4, -0x5A2C(t4)            # FFFFA5D4
    andi    t5, v0, 0x0400             # t5 = 00000000
    beq     t4, $zero, lbl_80921A70
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
lbl_80921A70:
    beq     t5, $zero, lbl_80921AB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80922A34)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_80922A34) # a1 = 80922A34
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x02A4(s0)          # 000002A4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1C94             # a1 = 06001C94
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1C94             # t6 = 06001C94
    beq     $zero, $zero, lbl_80921F90
    sw      t6, 0x02D4(s0)             # 000002D4
lbl_80921AB4:
    lui     a1, %hi(func_809224D4)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809224D4) # a1 = 809224D4
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sh      t7, 0x02A4(s0)             # 000002A4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCD50             # a1 = 0600CD50
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f6                   # $f6 = 54.00
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xCD50             # t8 = 0600CD50
    sw      t8, 0x02D4(s0)             # 000002D4
    beq     $zero, $zero, lbl_80921F90
    swc1    $f6, 0x00C4(s0)            # 000000C4
lbl_80921AFC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EE0(v0)             # 8011B4B0
    andi    t0, t9, 0x0800             # t0 = 00000000
    bnel    t0, $zero, lbl_80921B28
    lw      t1, 0x0004(v0)             # 8011A5D4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
    lw      t1, 0x0004(v0)             # 00000004
lbl_80921B28:
    lw      t2, 0x0054($sp)
    beql    t1, $zero, lbl_80921B48
    lh      t3, 0x00A4(t2)             # 000000A4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
    lh      t3, 0x00A4(t2)             # 000000A4
lbl_80921B48:
    addiu   $at, $zero, 0x0036         # $at = 00000036
    or      a0, s0, $zero              # a0 = 00000000
    bne     t3, $at, lbl_80921B74
    lui     a1, %hi(func_80922B28)     # a1 = 80920000
    lw      t4, 0x0010(v0)             # 00000010
    beq     t4, $zero, lbl_80921B74
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
lbl_80921B74:
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922B28) # a1 = 00002B28
    sh      $zero, 0x02A4(s0)          # 000002A4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1C94             # a1 = 06001C94
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x1C94             # t5 = 06001C94
    beq     $zero, $zero, lbl_80921F90
    sw      t5, 0x02D4(s0)             # 000002D4
    lh      v0, 0x00A4(a1)             # 000000A4
lbl_80921BAC:
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    bnel    v0, $at, lbl_80921C6C
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B5A(v0)            # 8011B4A6
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_80921BDC
    andi    t7, v0, 0x0008             # t7 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
lbl_80921BDC:
    beq     t7, $zero, lbl_80921C20
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8092299C)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_8092299C) # a1 = 8092299C
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x02A4(s0)          # 000002A4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1C94             # a1 = 06001C94
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x1C94             # t8 = 06001C94
    beq     $zero, $zero, lbl_80921F90
    sw      t8, 0x02D4(s0)             # 000002D4
lbl_80921C20:
    lui     a1, %hi(func_809223A8)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809223A8) # a1 = 809223A8
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sh      t9, 0x02A4(s0)             # 000002A4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCD50             # a1 = 0600CD50
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f8                   # $f8 = 54.00
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xCD50             # t0 = 0600CD50
    sw      t0, 0x02D4(s0)             # 000002D4
    beq     $zero, $zero, lbl_80921F90
    swc1    $f8, 0x00C4(s0)            # 000000C4
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_80921C6C:
    bne     v0, $at, lbl_80921F4C
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0ED6(v1)             # 8011B4A6
    andi    t2, t1, 0x0010             # t2 = 00000000
    bnel    t2, $zero, lbl_80921CA0
    lw      t3, 0x0004(v1)             # 8011A5D4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
    lw      t3, 0x0004(v1)             # 00000004
lbl_80921CA0:
    bnel    t3, $zero, lbl_80921CBC
    lw      t4, 0x0010(v1)             # 00000010
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80921F94
    lw      $ra, 0x0034($sp)
    lw      t4, 0x0010(v1)             # 00000010
lbl_80921CBC:
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    bne     t4, $zero, lbl_80921F0C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sh      t7, 0x02B8(s0)             # 000002B8
    lw      t5, 0x0004(s0)             # 00000004
    lh      v0, 0x02B8(s0)             # 000002B8
    lwc1    $f10, 0x0024(s0)           # 00000024
    add.s   $f8, $f4, $f6
    ori     t6, t5, 0x0010             # t6 = 00000010
    sw      t6, 0x0004(s0)             # 00000004
    add.s   $f18, $f10, $f16
    sh      v0, 0x02B6(s0)             # 000002B6
    sh      v0, 0x02B4(s0)             # 000002B4
    swc1    $f8, 0x0010($sp)
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f16                  # $f16 = 26.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mfc1    a3, $f18
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f18, $f10, $f16
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0024($sp)
    sw      a0, 0x003C($sp)
    swc1    $f18, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    addiu   a2, $zero, 0x0019          # a2 = 00000019
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      a1, 0x0054($sp)
    add.s   $f18, $f10, $f16
    sw      v0, 0x02A8(s0)             # 000002A8
    lui     $at, 0x41F0                # $at = 41F00000
    sub.s   $f8, $f4, $f6
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mtc1    $at, $f6                   # $f6 = 30.00
    mfc1    a3, $f8
    addiu   t9, $zero, 0x000D          # t9 = 0000000D
    sub.s   $f8, $f4, $f6
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f8, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x003C($sp)
    jal     func_80025110              # ActorSpawn
    addiu   a2, $zero, 0x0019          # a2 = 00000019
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0024(s0)           # 00000024
    lw      a1, 0x0054($sp)
    add.s   $f8, $f4, $f6
    sw      v0, 0x02AC(s0)             # 000002AC
    lui     $at, 0x41F0                # $at = 41F00000
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mtc1    $at, $f16                  # $f16 = 30.00
    mfc1    a3, $f18
    addiu   t0, $zero, 0x000D          # t0 = 0000000D
    sub.s   $f18, $f10, $f16
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f18, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x003C($sp)
    jal     func_80025110              # ActorSpawn
    addiu   a2, $zero, 0x0019          # a2 = 00000019
    sw      v0, 0x02B0(s0)             # 000002B0
    lw      a1, 0x0054($sp)
    jal     func_80921840
    or      a0, s0, $zero              # a0 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    lhu     t1, -0x4636(t1)            # 8011B9CA
    lui     a1, %hi(func_809243BC)     # a1 = 80920000
    addiu   a1, a1, %lo(func_809243BC) # a1 = 809243BC
    andi    t2, t1, 0x0400             # t2 = 00000000
    beq     t2, $zero, lbl_80921ED0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    jal     func_80921830
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC48C             # a0 = 0600C48C
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xC48C             # a0 = 0600C48C
    jal     func_8008A194
    sh      v0, 0x0040($sp)
    lh      t3, 0x0040($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    mfc1    a2, $f0
    sw      t4, 0x0014($sp)
    cvt.s.w $f16, $f10
    addiu   a1, a1, 0xC48C             # a1 = 0600C48C
    lw      a0, 0x0038($sp)
    swc1    $f18, 0x0018($sp)
    sub.s   $f8, $f6, $f0
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f8
    jal     func_8008D17C
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t5, 0x13FA(v0)             # 8011B9CA
    andi    t6, t5, 0xFBFF             # t6 = 00000000
    beq     $zero, $zero, lbl_80921F90
    sh      t6, 0x13FA(v0)             # 8011B9CA
lbl_80921ED0:
    lui     a1, %hi(func_809242BC)     # a1 = 80920000
    lui     a2, %hi(func_80924608)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924608) # a2 = 80924608
    addiu   a1, a1, %lo(func_809242BC) # a1 = 809242BC
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x02A4(s0)          # 000002A4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x17E8             # a1 = 060017E8
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x17E8             # t7 = 060017E8
    beq     $zero, $zero, lbl_80921F90
    sw      t7, 0x02D4(s0)             # 000002D4
lbl_80921F0C:
    lui     a1, %hi(func_80922470)     # a1 = 80920000
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922470) # a1 = 80922470
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sh      t8, 0x02A4(s0)             # 000002A4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCD50             # a1 = 0600CD50
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f4                   # $f4 = 54.00
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0xCD50             # t9 = 0600CD50
    sw      t9, 0x02D4(s0)             # 000002D4
    beq     $zero, $zero, lbl_80921F90
    swc1    $f4, 0x00C4(s0)            # 000000C4
lbl_80921F4C:
    lui     a1, %hi(func_809223A8)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809223A8) # a1 = 809223A8
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sh      t0, 0x02A4(s0)             # 000002A4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCD50             # a1 = 0600CD50
    jal     func_8008D1C4
    lw      a0, 0x0038($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f6                   # $f6 = 54.00
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0xCD50             # t1 = 0600CD50
    sw      t1, 0x02D4(s0)             # 000002D4
    swc1    $f6, 0x00C4(s0)            # 000000C4
lbl_80921F90:
    lw      $ra, 0x0034($sp)
lbl_80921F94:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80921FA4:
    lui     $at, 0x4210                # $at = 42100000
    mtc1    $at, $f4                   # $f4 = 36.00
    lwc1    $f0, 0x00C4(a0)            # 000000C4
    lui     $at, %hi(var_80924C20)     # $at = 80920000
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80921FD0
    nop
    lwc1    $f6, %lo(var_80924C20)($at)
    sub.s   $f8, $f0, $f6
    swc1    $f8, 0x00C4(a0)            # 000000C4
lbl_80921FD0:
    jr      $ra
    nop


func_80921FD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)
    addiu   a1, a2, 0x0254             # a1 = 00000254
    jal     func_8004ABCC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v0, 0x001C(a2)             # 0000001C
    beq     v0, $at, lbl_80922028
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80922028
    lw      t6, 0x001C($sp)
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bne     t7, $at, lbl_80922028
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x4662($at)        # 8011B99E
lbl_80922028:
    lhu     t8, 0x02D0(a2)             # 000002D0
    andi    t9, t8, 0x0200             # t9 = 00000000
    beql    t9, $zero, lbl_80922044
    lw      $ra, 0x0014($sp)
    jal     func_800C6894
    nop
    lw      $ra, 0x0014($sp)
lbl_80922044:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922050:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_8092207C
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_809220E8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8092207C:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lhu     t6, 0x0022($sp)
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809220A4
    sh      t6, 0x010E(a0)             # 0000010E
    beq     $zero, $zero, lbl_809220A8
    or      v1, v0, $zero              # v1 = 00000001
lbl_809220A4:
    subu    v1, $zero, v0
lbl_809220A8:
    slti    $at, v1, 0x4301
    beq     $at, $zero, lbl_809220E4
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_809220E8
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t9, 0x02D0(a0)             # 000002D0
    mfc1    a2, $f0
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x02D0(a0)             # 000002D0
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_809220E4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809220E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809220F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80922128
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_809224D4)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809224D4) # a1 = 809224D4
lbl_80922128:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922138:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80922168
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80922470)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922470) # a1 = 80922470
lbl_80922168:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922178:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0004(v0)             # 8011A5D4
    lui     a1, %hi(func_80922A34)     # a1 = 80920000
    addiu   a1, a1, %lo(func_80922A34) # a1 = 80922A34
    beq     t6, $zero, lbl_809221C8
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    lui     a1, %hi(func_8092299C)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_8092299C) # a1 = 8092299C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0ED6(v0)             # 8011B4A6
    ori     t8, t7, 0x0008             # t8 = 00000008
    beq     $zero, $zero, lbl_809221E4
    sh      t8, 0x0ED6(v0)             # 8011B4A6
lbl_809221C8:
    jal     func_80921830
    addiu   a2, a2, %lo(func_80924574) # a2 = 00004574
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EE0(v0)             # 8011B4B0
    ori     t0, t9, 0x0400             # t0 = 00000400
    sh      t0, 0x0EE0(v0)             # 8011B4B0
lbl_809221E4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809221F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80022AD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8092221C
    nop
    jal     func_80922178
    or      a0, s0, $zero              # a0 = 00000000
lbl_8092221C:
    jal     func_80921FA4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x02D0(s0)             # 000002D0
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80922240:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022AD0
    lw      a1, 0x0024($sp)
    beql    v0, $zero, lbl_80922288
    lw      a0, 0x0024($sp)
    jal     func_80922178
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(func_809244B4)     # t7 = 80920000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, %lo(func_809244B4) # t7 = 809244B4
    sh      t6, 0x02A6(s0)             # 000002A6
    sw      t7, 0x02A0(s0)             # 000002A0
    lw      a0, 0x0024($sp)
lbl_80922288:
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_809222B8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_809221F4)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    sh      t8, 0x02A4(s0)             # 000002A4
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_809221F4) # a1 = 809221F4
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
lbl_809222B8:
    jal     func_80921FA4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t9, 0x02D0(s0)             # 000002D0
    ori     t0, t9, 0x0004             # t0 = 00000004
    sh      t0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809222DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     t6, 0x02D0(a3)             # 000002D0
    lh      t8, 0x02BC(a3)             # 000002BC
    or      a0, a3, $zero              # a0 = 00000000
    ori     t7, t6, 0x0004             # t7 = 00000004
    bne     t8, $zero, lbl_80922358
    sh      t7, 0x02D0(a3)             # 000002D0
    lui     a1, %hi(func_80922240)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_80922240) # a1 = 80922240
    jal     func_80921830
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE3D8             # a1 = 0600E3D8
    sh      t9, 0x02BE(a3)             # 000002BE
    sh      t0, 0x02BC(a3)             # 000002BC
    jal     func_8008D1C4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x1C94             # t1 = 06001C94
    addiu   a1, $zero, 0x6851          # a1 = 00006851
    jal     func_80022FD0
    sw      t1, 0x02D4(a0)             # 000002D4
lbl_80922358:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922368:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80922398
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_809223A8)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809223A8) # a1 = 809223A8
lbl_80922398:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809223A8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    sw      t6, 0x0024($sp)
    beq     v0, $zero, lbl_80922444
    lw      a1, 0x002C($sp)
    jal     func_80022B04
    or      a0, a1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80922418
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0024($sp)
    addiu   t7, $zero, 0x702B          # t7 = 0000702B
    lui     a1, %hi(func_809222DC)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_809222DC) # a1 = 809222DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921830
    sh      t7, 0x010E(t8)             # 0000010E
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    beq     $zero, $zero, lbl_8092245C
    sh      t9, 0x02BC(s0)             # 000002BC
lbl_80922418:
    beq     v0, $zero, lbl_8092242C
    lui     a1, %hi(func_80922368)     # a1 = 80920000
    lw      t1, 0x0024($sp)
    addiu   t0, $zero, 0x702A          # t0 = 0000702A
    sh      t0, 0x010E(t1)             # 0000010E
lbl_8092242C:
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922368) # a1 = 80922368
    beq     $zero, $zero, lbl_80922460
    lw      $ra, 0x001C($sp)
lbl_80922444:
    addiu   t2, $zero, 0x702A          # t2 = 0000702A
    sh      t2, 0x010E(s0)             # 0000010E
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_8092245C:
    lw      $ra, 0x001C($sp)
lbl_80922460:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80922470:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_809224A8
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80922138)     # a1 = 80920000
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922138) # a1 = 80922138
lbl_809224A8:
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x204B          # t6 = 0000204B
    lui     a2, 0x42C8                 # a2 = 42C80000
    sh      t6, 0x010E(t7)             # 0000010E
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809224D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    sw      t6, 0x0024($sp)
    beq     v0, $zero, lbl_80922570
    lw      a1, 0x002C($sp)
    jal     func_80022B04
    or      a0, a1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80922544
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0024($sp)
    addiu   t7, $zero, 0x702B          # t7 = 0000702B
    lui     a1, %hi(func_809222DC)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_809222DC) # a1 = 809222DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921830
    sh      t7, 0x010E(t8)             # 0000010E
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    beq     $zero, $zero, lbl_80922588
    sh      t9, 0x02BC(s0)             # 000002BC
lbl_80922544:
    beq     v0, $zero, lbl_80922558
    lui     a1, %hi(func_809220F8)     # a1 = 80920000
    lw      t1, 0x0024($sp)
    addiu   t0, $zero, 0x5015          # t0 = 00005015
    sh      t0, 0x010E(t1)             # 0000010E
lbl_80922558:
    lui     a2, %hi(func_809245B4)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809245B4) # a2 = 809245B4
    jal     func_80921830
    addiu   a1, a1, %lo(func_809220F8) # a1 = 809220F8
    beq     $zero, $zero, lbl_8092258C
    lw      $ra, 0x001C($sp)
lbl_80922570:
    addiu   t2, $zero, 0x5015          # t2 = 00005015
    sh      t2, 0x010E(s0)             # 0000010E
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0x0006          # a3 = 00000006
lbl_80922588:
    lw      $ra, 0x001C($sp)
lbl_8092258C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8092259C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x009C(a1)             # 0000009C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   a1, $zero, 0x0800          # a1 = 00000800
    div     $zero, v0, $at
    mfhi    v0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $zero, lbl_809225CC
    nop
    bnel    v0, $at, lbl_809225DC
    lui     $at, 0x40C0                # $at = 40C00000
lbl_809225CC:
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x40C0                # $at = 40C00000
lbl_809225DC:
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0068(a0)            # 00000068
    lui     $at, %hi(var_80924C24)     # $at = 80920000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_80922604
    nop
    lwc1    $f6, %lo(var_80924C24)($at)
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0068(a0)            # 00000068
lbl_80922604:
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8092261C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x0028($sp)
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x002C($sp)
    lui     a2, 0x4248                 # a2 = 42480000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80026308
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      a0, 0x0028($sp)
    jal     func_8092259C
    lw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    lh      t9, 0x02BC(a0)             # 000002BC
    bnel    t9, $zero, lbl_80922684
    lw      $ra, 0x0024($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0024($sp)
lbl_80922684:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80922690:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0032(a0)             # 00000032
    lh      t8, 0x00B6(a0)             # 000000B6
    lh      t0, 0x02BC(a0)             # 000002BC
    addiu   t7, t6, 0x0C00             # t7 = 00000C00
    addiu   t9, t8, 0x0C00             # t9 = 00000C00
    sh      t7, 0x0032(a0)             # 00000032
    bne     t0, $zero, lbl_809226E0
    sh      t9, 0x00B6(a0)             # 000000B6
    lui     a1, %hi(func_8092261C)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_8092261C) # a1 = 8092261C
    jal     func_80921830
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    sh      t1, 0x02BC(a0)             # 000002BC
lbl_809226E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809226F0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8092259C
    lw      a1, 0x0034($sp)
    lh      t9, 0x02BC(s0)             # 000002BC
    lui     a1, %hi(func_80922690)     # a1 = 80920000
    addiu   a1, a1, %lo(func_80922690) # a1 = 80922690
    bne     t9, $zero, lbl_80922764
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    jal     func_80921830
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sh      t0, 0x02BC(s0)             # 000002BC
lbl_80922764:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80922778:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0032(a0)             # 00000032
    lh      t8, 0x00B6(a0)             # 000000B6
    lh      t0, 0x02BC(a0)             # 000002BC
    addiu   t7, t6, 0xF300             # t7 = FFFFF300
    addiu   t9, t8, 0xF300             # t9 = FFFFF300
    sh      t7, 0x0032(a0)             # 00000032
    bne     t0, $zero, lbl_809227C8
    sh      t9, 0x00B6(a0)             # 000000B6
    lui     a1, %hi(func_809226F0)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_809226F0) # a1 = 809226F0
    jal     func_80921830
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t1, $zero, 0x0041          # t1 = 00000041
    sh      t1, 0x02BC(a0)             # 000002BC
lbl_809227C8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809227D8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8092259C
    lw      a1, 0x0034($sp)
    lh      v0, 0x02BC(s0)             # 000002BC
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v0, $at, lbl_80922840
    nop
    jal     func_800D6218
    lw      a0, 0x0034($sp)
    lh      v0, 0x02BC(s0)             # 000002BC
lbl_80922840:
    bne     v0, $zero, lbl_80922864
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    lui     a1, %hi(func_80922778)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    sh      t9, 0x02BC(s0)             # 000002BC
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_80922778) # a1 = 80922778
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
lbl_80922864:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80922878:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0032(a0)             # 00000032
    lh      t8, 0x00B6(a0)             # 000000B6
    lh      t0, 0x02BC(a0)             # 000002BC
    addiu   t7, t6, 0xF400             # t7 = FFFFF400
    addiu   t9, t8, 0xF400             # t9 = FFFFF400
    sh      t7, 0x0032(a0)             # 00000032
    bne     t0, $zero, lbl_809228E0
    sh      t9, 0x00B6(a0)             # 000000B6
    addiu   a1, $zero, 0x6853          # a1 = 00006853
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lui     a1, %hi(func_809227D8)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    lw      a0, 0x0018($sp)
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_809227D8) # a1 = 809227D8
    lw      a0, 0x0018($sp)
    addiu   t1, $zero, 0x0041          # t1 = 00000041
    lw      t2, 0x0004(a0)             # 00000004
    sh      t1, 0x02BC(a0)             # 000002BC
    ori     t3, t2, 0x0010             # t3 = 00000010
    sw      t3, 0x0004(a0)             # 00000004
lbl_809228E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809228F0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80922980
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x104F          # a1 = 0000104F
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     a1, %hi(func_80922878)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    addiu   a1, a1, %lo(func_80922878) # a1 = 80922878
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sh      t6, 0x02BC(s0)             # 000002BC
    lhu     t7, 0x0ED6(v0)             # 8011B4A6
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCF28             # a1 = 0600CF28
    ori     t8, t7, 0x0010             # t8 = 00000010
    sh      t8, 0x0ED6(v0)             # 8011B4A6
    jal     func_8008D1C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0xC858             # t9 = 0600C858
    sw      t9, 0x02D4(s0)             # 000002D4
lbl_80922980:
    lhu     t0, 0x02D0(s0)             # 000002D0
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8092299C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80922050
    addiu   a2, $zero, 0x702C          # a2 = 0000702C
    beq     v0, $zero, lbl_809229D0
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_809228F0)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_809228F0) # a1 = 809228F0
lbl_809229D0:
    jal     func_80921FA4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809229E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80922A18
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80922A34)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922A34) # a1 = 80922A34
lbl_80922A18:
    lw      t6, 0x0018($sp)
    lhu     t7, 0x02D0(t6)             # 000002D0
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x02D0(t6)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80922A34:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B5A(t6)            # 8011B4A6
    addiu   a2, $zero, 0x5017          # a2 = 00005017
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_80922A9C
    nop
    jal     func_80922050
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80922AC0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_809229E8)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_809229E8) # a1 = 809229E8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EE0(v0)             # 8011B4B0
    ori     t9, t8, 0x0800             # t9 = 00000800
    beq     $zero, $zero, lbl_80922AC0
    sh      t9, 0x0EE0(v0)             # 8011B4B0
lbl_80922A9C:
    jal     func_80922050
    addiu   a2, $zero, 0x5016          # a2 = 00005016
    beq     v0, $zero, lbl_80922AC0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_809229E8)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_809229E8) # a1 = 809229E8
lbl_80922AC0:
    jal     func_80921FA4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80922ADC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80922B0C
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80922B28)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922B28) # a1 = 80922B28
lbl_80922B0C:
    lw      t6, 0x0018($sp)
    lhu     t7, 0x02D0(t6)             # 000002D0
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x02D0(t6)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80922B28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80922050
    addiu   a2, $zero, 0x2055          # a2 = 00002055
    beq     v0, $zero, lbl_80922B5C
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80922ADC)     # a1 = 80920000
    lui     a2, %hi(func_80924574)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924574) # a2 = 80924574
    jal     func_80921830
    addiu   a1, a1, %lo(func_80922ADC) # a1 = 80922ADC
lbl_80922B5C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922B6C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    slti    $at, t6, 0x001E
    beq     $at, $zero, lbl_80922B90
    nop
    beq     $zero, $zero, lbl_80922BAC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80922B90:
    jal     func_80071A94
    nop
    bnel    v0, $zero, lbl_80922BAC
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    beq     $zero, $zero, lbl_80922BAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80922BAC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922BBC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8009D0F0
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x02C0(s1)             # 000002C0
    lh      t6, 0x07A0(s0)             # 000007A0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      t6, 0x02C2(s1)             # 000002C2
    jal     func_8009D1AC
    lh      a1, 0x02C2(s1)             # 000002C2
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x02C0(s1)             # 000002C0
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_80924C28)     # $at = 80920000
    lwc1    $f0, %lo(var_80924C28)($at)
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f4                   # $f4 = 11.00
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f6                   # $f6 = 22.00
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f10                  # $f10 = -40.00
    swc1    $f0, 0x002C($sp)
    swc1    $f0, 0x0020($sp)
    swc1    $f4, 0x0030($sp)
    swc1    $f6, 0x0034($sp)
    swc1    $f8, 0x0024($sp)
    swc1    $f10, 0x0028($sp)
    lh      a1, 0x02C0(s1)             # 000002C0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFE8
    jal     func_8009D328
    addiu   a3, $sp, 0x002C            # a3 = FFFFFFF4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80922C70:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_8009D1AC
    lh      a1, 0x02C2(t6)             # 000002C2
    lw      t7, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8009D21C
    lh      a1, 0x02C0(t7)             # 000002C0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80922CB4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a2, %hi(func_80924608)     # a2 = 80920000
    addiu   a2, a2, %lo(func_80924608) # a2 = 80924608
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t6, 0x02A4(s0)             # 000002A4
    jal     func_8008A194
    addiu   a0, a0, 0x17E8             # a0 = 060017E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x17E8             # a1 = 060017E8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x17E8             # t8 = 060017E8
    sh      $zero, 0x02D2(s0)          # 000002D2
    sw      t8, 0x02D4(s0)             # 000002D4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80922D44:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    sh      t6, 0x02A4(s0)             # 000002A4
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t7, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xC48C             # a0 = 0600C48C
    andi    t8, t7, 0xFFEF             # t8 = 00000000
    jal     func_8008A194
    sh      t8, 0x02D0(s0)             # 000002D0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x0014($sp)
    addiu   a1, a1, 0xC48C             # a1 = 0600C48C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80922DD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80922E30
    lw      t6, 0x0018($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80922E30
    lw      t6, 0x0018($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lui     a1, %hi(func_809242BC)     # a1 = 80920000
    addiu   a1, a1, %lo(func_809242BC) # a1 = 809242BC
    jal     func_80922CB4
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80921840
    lw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
lbl_80922E30:
    lhu     t7, 0x02D0(t6)             # 000002D0
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x02D0(t6)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80922E48:
    lw      v0, 0x1C44(a1)             # 00001C44
    lw      t6, 0x066C(v0)             # 0000066C
    andi    t7, t6, 0x0800             # t7 = 00000000
    beql    t7, $zero, lbl_80922E94
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x0428(v0)             # 00000428
    beql    v1, $zero, lbl_80922E94
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0019         # $at = 00000019
    sll     t9, a2,  2
    bne     t8, $at, lbl_80922E90
    addu    t0, a0, t9
    lw      t1, 0x02A8(t0)             # 000002A8
    bnel    v1, t1, lbl_80922E94
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80922E90:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80922E94:
    jr      $ra
    nop


func_80922E9C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    lw      s0, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0044($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80922FE0
    lhu     t0, 0x02D0(s1)             # 000002D0
    jal     func_800D6110
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_80922FDC
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC48C             # a0 = 0600C48C
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xC48C             # a0 = 0600C48C
    jal     func_8008A194
    sh      v0, 0x0034($sp)
    lh      t6, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    mfc1    a2, $f0
    cvt.s.w $f16, $f10
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0xC48C             # a1 = 0600C48C
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0018($sp)
    sub.s   $f8, $f6, $f0
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f8
    jal     func_8008D17C
    nop
    lhu     t8, 0x02D0(s1)             # 000002D0
    andi    t9, t8, 0xFFEF             # t9 = 00000000
    sh      t9, 0x02D0(s1)             # 000002D0
    jal     func_800D6218
    lw      a0, 0x0044($sp)
    lbu     v1, 0x02BA(s1)             # 000002BA
    lui     t0, %hi(func_809232A0)     # t0 = 80920000
    addiu   t0, t0, %lo(func_809232A0) # t0 = 809232A0
    sw      t0, 0x024C(s1)             # 0000024C
    sll     t1, v1,  2
    addu    v0, s1, t1
    lui     $at, %hi(var_80924C2C)     # $at = 80920000
    lwc1    $f4, %lo(var_80924C2C)($at)
    lw      t2, 0x02A8(v0)             # 000002A8
    mtc1    $zero, $f0                 # $f0 = 0.00
    swc1    $f4, 0x006C(t2)            # 0000006C
    lw      t3, 0x02A8(v0)             # 000002A8
    swc1    $f0, 0x0060(t3)            # 00000060
    lw      t4, 0x02A8(v0)             # 000002A8
    swc1    $f0, 0x0068(t4)            # 00000068
    lw      t5, 0x02A8(v0)             # 000002A8
    sw      $zero, 0x0118(t5)          # 00000118
    lw      t6, 0x0428(s0)             # 00000428
    lw      a0, 0x02A8(v0)             # 000002A8
    bnel    t6, a0, lbl_80922FBC
    lw      t7, 0x039C(s0)             # 0000039C
    sw      $zero, 0x0428(s0)          # 00000428
    lw      a0, 0x02A8(v0)             # 000002A8
    lw      t7, 0x039C(s0)             # 0000039C
lbl_80922FBC:
    bnel    t7, a0, lbl_80922FCC
    lw      t8, 0x066C(s0)             # 0000066C
    sw      $zero, 0x039C(s0)          # 0000039C
    lw      t8, 0x066C(s0)             # 0000066C
lbl_80922FCC:
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    and     t9, t8, $at
    sw      t9, 0x066C(s0)             # 0000066C
    sw      $zero, 0x02A8(v0)          # 000002A8
lbl_80922FDC:
    lhu     t0, 0x02D0(s1)             # 000002D0
lbl_80922FE0:
    ori     t1, t0, 0x0001             # t1 = 809232A1
    sh      t1, 0x02D0(s1)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80922FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80923040
    lw      a0, 0x0018($sp)
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    lui     t6, %hi(func_80922E9C)     # t6 = 80920000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    addiu   t6, t6, %lo(func_80922E9C) # t6 = 80922E9C
    and     t8, t7, $at
    sw      t6, 0x024C(a0)             # 0000024C
    beq     $zero, $zero, lbl_80923054
    sw      t8, 0x0004(a0)             # 00000004
lbl_80923040:
    lw      a1, 0x001C($sp)
    lui     a2, 0x447A                 # a2 = 447A0000
    jal     func_80022A68
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_80923054:
    lhu     t9, 0x02D0(a0)             # 000002D0
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x02D0(a0)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8092306C:
    sw      a1, 0x0004($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, a0, $zero              # a2 = 00000000
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
lbl_80923080:
    lw      t6, 0x02A8(a2)             # 000002A8
    addiu   a1, a1, 0x0004             # a1 = 00000004
    beq     t6, $zero, lbl_80923094
    nop
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_80923094:
    bne     a1, v0, lbl_80923080
    addiu   a2, a2, 0x0004             # a2 = 00000004
    or      v0, v1, $zero              # v0 = 00000001
    jr      $ra
    nop


func_809230A8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lhu     v0, 0x02D0(s0)             # 000002D0
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_80923160
    andi    t7, v0, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_80923114
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f4                   # $f4 = 22.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4188                 # a3 = 41880000
    swc1    $f4, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lhu     t9, 0x02D0(s0)             # 000002D0
    andi    t0, t9, 0xFEFF             # t0 = 00000000
    beq     $zero, $zero, lbl_80923154
    sh      t0, 0x02D0(s0)             # 000002D0
lbl_80923114:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    lui     a2, 0xBF80                 # a2 = BF800000
    lui     a3, 0x41A8                 # a3 = 41A80000
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    lhu     t2, 0x02D0(s0)             # 000002D0
    ori     t3, t2, 0x0100             # t3 = 00000100
    sh      t3, 0x02D0(s0)             # 000002D0
lbl_80923154:
    lhu     t4, 0x02D0(s0)             # 000002D0
    andi    t5, t4, 0xFFEF             # t5 = 00000000
    sh      t5, 0x02D0(s0)             # 000002D0
lbl_80923160:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80923174:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_809230A8
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      t6, 0x02BC(a0)             # 000002BC
    bnel    t6, $zero, lbl_809231B8
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x02D0(a0)             # 000002D0
    andi    t7, v0, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_809231B4
    andi    t8, v0, 0xFF7F             # t8 = 00000000
    sh      t8, 0x02D0(a0)             # 000002D0
    jal     func_80922C70
    lw      a1, 0x001C($sp)
lbl_809231B4:
    lw      $ra, 0x0014($sp)
lbl_809231B8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809231C4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_809230A8
    lw      a0, 0x0020($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80923290
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8092328C
    addiu   t6, $zero, 0x05E4          # t6 = 000005E4
    lui     $at, 0x0001                # $at = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addu    $at, $at, s0
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sh      t6, 0x1E1A($at)            # 00011E1A
    lhu     t7, 0x13FA(v0)             # 8011B9CA
    addiu   t1, $zero, 0x0026          # t1 = 00000026
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    andi    t8, t7, 0x0100             # t8 = 00000000
    beq     t8, $zero, lbl_8092324C
    lui     t6, %hi(func_80923174)     # t6 = 80920000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x002E          # t9 = 0000002E
    sb      t9, 0x1E5E($at)            # 00011E5E
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    beq     $zero, $zero, lbl_80923260
    sb      t0, 0x141D(v0)             # 8011B9ED
lbl_8092324C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t1, 0x1E5E($at)            # 00011E5E
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t2, 0x141D(v0)             # 8011B9ED
lbl_80923260:
    lui     $at, 0x0001                # $at = 00010000
    lw      v1, 0x0020($sp)
    addu    $at, $at, s0
    sb      t3, 0x1E15($at)            # 00011E15
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    addiu   t6, t6, %lo(func_80923174) # t6 = 80923174
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    ori     t5, t4, 0x0400             # t5 = 00000400
    sh      t5, 0x13FA(v0)             # 8011B9CA
    sw      t6, 0x024C(v1)             # 0000024C
    sh      t7, 0x02BC(v1)             # 000002BC
lbl_8092328C:
    lw      $ra, 0x001C($sp)
lbl_80923290:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809232A0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0028($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    or      a3, s1, $zero              # a3 = 00000000
lbl_809232C4:
    lw      v0, 0x02A8(a3)             # 000002A8
    lui     $at, 0xC000                # $at = C0000000
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809234D0
    or      a1, s2, $zero              # a1 = 00000000
    lwc1    $f0, 0x006C(v0)            # 0000006C
    mtc1    $at, $f4                   # $f4 = -2.00
    sll     t6, s0,  1
    addu    v1, s1, t6
    c.lt.s  $f4, $f0
    lui     $at, %hi(var_80924C30)     # $at = 80920000
    or      a2, s0, $zero              # a2 = 00000000
    bc1fl   lbl_8092330C
    sw      v1, 0x0038($sp)
    lwc1    $f6, %lo(var_80924C30)($at)
    sub.s   $f8, $f0, $f6
    swc1    $f8, 0x006C(v0)            # 0000006C
    sw      v1, 0x0038($sp)
lbl_8092330C:
    jal     func_80922E48
    sw      a3, 0x0044($sp)
    lw      v1, 0x0038($sp)
    beq     v0, $zero, lbl_809234C8
    lw      a3, 0x0044($sp)
    lh      v0, 0x02B4(v1)             # 000002B4
    blez    v0, lbl_80923334
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_809234D0
    sh      t7, 0x02B4(v1)             # 000002B4
lbl_80923334:
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f10                  # $f10 = 29.00
    sb      s0, 0x02BA(s1)             # 000002BA
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f16                  # $f16 = -10.00
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    sw      a0, 0x0044($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    swc1    $f10, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    lhu     t9, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    andi    t0, t9, 0xFFEF             # t0 = 00000000
    jal     func_8092306C
    sh      t0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_809233B8
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8092346C
    addiu   t1, $zero, 0x2083          # t1 = 00002083
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80923484
    addiu   t2, $zero, 0x2082          # t2 = 00002082
    beq     $zero, $zero, lbl_80923498
    lw      t4, 0x0004(s1)             # 00000004
lbl_809233B8:
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    sh      $zero, 0x13CE(s0)          # 8011B99E
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2084          # a1 = 00002084
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    lui     t1, %hi(func_809231C4)     # t1 = 80920000
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f18                  # $f18 = 29.00
    addiu   t1, t1, %lo(func_809231C4) # t1 = 809231C4
    sw      t1, 0x024C(s1)             # 0000024C
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    lw      a0, 0x0044($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    swc1    $f18, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0018($sp)
    lhu     t3, 0x02D0(s1)             # 000002D0
    lui     a0, 0x1000                 # a0 = 10000000
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    andi    t5, t3, 0xFFEF             # t5 = 00000000
    sh      t5, 0x02D0(s1)             # 000002D0
    andi    t6, t5, 0xFEFF             # t6 = 00000000
    sh      t6, 0x02D0(s1)             # 000002D0
    lhu     t7, 0x13FA(s0)             # 8011B9CA
    ori     t8, t7, 0x0100             # t8 = 00000100
    jal     func_800CAA70
    sh      t8, 0x13FA(s0)             # 8011B9CA
    lhu     t9, 0x02D0(s1)             # 000002D0
    addiu   a0, $zero, 0x0039          # a0 = 00000039
    andi    t0, t9, 0xFDFF             # t0 = 00000000
    jal     func_800C69A0
    sh      t0, 0x02D0(s1)             # 000002D0
    beq     $zero, $zero, lbl_809235EC
    lw      $ra, 0x0034($sp)
lbl_8092346C:
    sh      t1, 0x010E(s1)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6853          # a1 = 00006853
    beq     $zero, $zero, lbl_80923498
    lw      t4, 0x0004(s1)             # 00000004
lbl_80923484:
    sh      t2, 0x010E(s1)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6851          # a1 = 00006851
    lw      t4, 0x0004(s1)             # 00000004
lbl_80923498:
    lui     t3, %hi(func_80922FFC)     # t3 = 80920000
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, t3, %lo(func_80922FFC) # t3 = 80922FFC
    or      t5, t4, $at                # t5 = 00010000
    sw      t3, 0x024C(s1)             # 0000024C
    sw      t5, 0x0004(s1)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022A68
    lui     a2, 0x447A                 # a2 = 447A0000
    beq     $zero, $zero, lbl_809235EC
    lw      $ra, 0x0034($sp)
lbl_809234C8:
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sh      t6, 0x02B4(v1)             # 000002B4
lbl_809234D0:
    addiu   s0, s0, 0x0001             # s0 = 8011A5D1
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s0, $at, lbl_809232C4
    addiu   a3, a3, 0x0004             # a3 = 00000004
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    lh      v0, 0x13D0(s0)             # 8011B9A0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80923504
    nop
    jal     func_800C666C
    nop
    lh      v0, 0x13D0(s0)             # 8011B9A0
lbl_80923504:
    bnel    v0, $zero, lbl_809235E0
    lhu     t9, 0x02D0(s1)             # 000002D0
    jal     func_8009CB08
    or      a0, s2, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809235DC
    lui     a0, 0x1000                 # a0 = 10000000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    lhu     t7, 0x02D0(s1)             # 000002D0
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    andi    t8, t7, 0xFDFF             # t8 = 00000000
    jal     func_800646F0
    sh      t8, 0x02D0(s1)             # 000002D0
    sh      $zero, 0x13CE(s0)          # 8011B99E
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2081          # a1 = 00002081
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    lui     t9, %hi(func_809231C4)     # t9 = 80920000
    addiu   t9, t9, %lo(func_809231C4) # t9 = 809231C4
    sw      t9, 0x024C(s1)             # 0000024C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80922BBC
    or      a1, s2, $zero              # a1 = 00000000
    lhu     t0, 0x13FA(s0)             # 8011B9CA
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f6                   # $f6 = 29.00
    andi    t1, t0, 0xFEFF             # t1 = 00000000
    sh      t1, 0x13FA(s0)             # 8011B9CA
    lhu     t2, 0x02D0(s1)             # 000002D0
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    ori     t3, t2, 0x0080             # t3 = 00000080
    sh      t3, 0x02D0(s1)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   s2, $zero, 0xFEFF          # s2 = FFFFFEFF
    sw      t4, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t5, 0x02D0(s1)             # 000002D0
    andi    t7, t5, 0xFFEF             # t7 = 00000000
    sh      t7, 0x02D0(s1)             # 000002D0
    and     t8, t7, s2
    sh      t8, 0x02D0(s1)             # 000002D0
lbl_809235DC:
    lhu     t9, 0x02D0(s1)             # 000002D0
lbl_809235E0:
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x02D0(s1)             # 000002D0
    lw      $ra, 0x0034($sp)
lbl_809235EC:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80923600:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s6, 0x0058($sp)
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x0064($sp)
    lh      v0, 0x02BC(s6)             # 000002BC
    addiu   v1, $zero, 0x0023          # v1 = 00000023
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    slti    $at, v0, 0x0024
    bne     $at, $zero, lbl_809236B8
    addiu   s2, s6, 0x0004             # s2 = 00000004
    addiu   s4, $zero, 0xD8F0          # s4 = FFFFD8F0
    addiu   s3, $zero, 0x0003          # s3 = 00000003
lbl_80923658:
    lw      s0, 0x02A8(s2)             # 000002AC
    beql    s0, $zero, lbl_809236A0
    addiu   s1, s1, 0x0001             # s1 = 00000002
    multu   s1, s4
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    mflo    a1
    addiu   a1, a1, 0xF448             # a1 = FFFFF448
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lw      s0, 0x02A8(s2)             # 000002AC
    lh      t7, 0x0032(s0)             # 00000032
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_809236A0:
    bne     s1, s3, lbl_80923658
    addiu   s2, s2, 0x0004             # s2 = 00000008
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    beq     $zero, $zero, lbl_809237A8
    lh      v0, 0x02BC(s6)             # 000002BC
lbl_809236B8:
    bne     v1, v0, lbl_80923730
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f20                  # $f20 = 6.00
    mtc1    $zero, $f22                # $f22 = 0.00
    or      s2, s6, $zero              # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    or      s4, s6, $zero              # s4 = 00000000
    addiu   s5, $zero, 0x0006          # s5 = 00000006
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809236E8:
    jal     func_80026D90
    mov.s   $f12, $f20
    add.s   $f4, $f0, $f24
    addiu   s2, s2, 0x0004             # s2 = 00000004
    addiu   s3, s3, 0x0002             # s3 = 00000002
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    nop
    sh      t9, 0x02B4(s4)             # 000002B4
    lw      s0, 0x02A4(s2)             # 000002A8
    beq     s0, $zero, lbl_80923720
    nop
    sb      s1, 0x02F8(s0)             # 000002F8
    swc1    $f22, 0x006C(s0)           # 0000006C
lbl_80923720:
    bne     s3, s5, lbl_809236E8
    addiu   s4, s4, 0x0002             # s4 = 00000002
    beq     $zero, $zero, lbl_809237A8
    lh      v0, 0x02BC(s6)             # 000002BC
lbl_80923730:
    lui     $at, %hi(var_80924C34)     # $at = 80920000
    lwc1    $f12, %lo(var_80924C34)($at)
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f2                   # $f2 = -2.00
    or      s4, s6, $zero              # s4 = 00000000
    addiu   s3, $zero, 0x0003          # s3 = 00000003
lbl_80923748:
    lh      t0, 0x02B4(s4)             # 000002B4
    sll     t2, s1,  2
    addu    t3, s6, t2
    subu    t1, v1, t0
    slt     $at, v0, t1
    beql    $at, $zero, lbl_80923794
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lw      s0, 0x02A8(t3)             # 000002A8
    beql    s0, $zero, lbl_80923794
    addiu   s1, s1, 0x0001             # s1 = 00000003
    lwc1    $f0, 0x006C(s0)            # 0000006C
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80923794
    addiu   s1, s1, 0x0001             # s1 = 00000004
    sub.s   $f8, $f0, $f12
    swc1    $f8, 0x006C(s0)            # 0000006C
    lh      v0, 0x02BC(s6)             # 000002BC
    addiu   s1, s1, 0x0001             # s1 = 00000005
lbl_80923794:
    bne     s1, s3, lbl_80923748
    addiu   s4, s4, 0x0002             # s4 = 00000002
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    nop
lbl_809237A8:
    bne     v0, $zero, lbl_80923844
    or      a0, s6, $zero              # a0 = 00000000
    lui     a1, %hi(func_809232A0)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    jal     func_80921830
    addiu   a1, a1, %lo(func_809232A0) # a1 = 809232A0
    lhu     t4, 0x02D0(s6)             # 000002D0
    lui     s1, 0x0601                 # s1 = 06010000
    addiu   s1, s1, 0xC48C             # s1 = 0600C48C
    andi    t5, t4, 0xFFEF             # t5 = 00000000
    sh      t5, 0x02D0(s6)             # 000002D0
    jal     func_8008A194
    or      a0, s1, $zero              # a0 = 0600C48C
    sll     s0, v0, 16
    sra     s0, s0, 16
    jal     func_8008A194
    or      a0, s1, $zero              # a0 = 0600C48C
    mtc1    s0, $f10                   # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    cvt.s.w $f16, $f10
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0
    sw      t6, 0x0014($sp)
    cvt.s.w $f6, $f4
    addiu   a0, s6, 0x013C             # a0 = 0000013C
    or      a1, s1, $zero              # a1 = 0600C48C
    swc1    $f24, 0x0018($sp)
    sub.s   $f18, $f16, $f0
    swc1    $f6, 0x0010($sp)
    mfc1    a3, $f18
    jal     func_8008D17C
    nop
    lw      a0, 0x0064($sp)
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80923844:
    lw      $ra, 0x005C($sp)
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
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80923878:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x02BC(s0)             # 000002BC
    bnel    t6, $zero, lbl_80923950
    lw      a0, 0x0034($sp)
    lhu     t7, 0x02D0(s0)             # 000002D0
    lui     a1, %hi(func_80923600)     # a1 = 80920000
    addiu   a1, a1, %lo(func_80923600) # a1 = 80923600
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_8092394C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    jal     func_80921830
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    lhu     t9, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xBF38             # a0 = 0600BF38
    andi    t0, t9, 0xFFEF             # t0 = 00000000
    jal     func_8008A194
    sh      t0, 0x02D0(s0)             # 000002D0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    cvt.s.w $f6, $f4
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t1, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    swc1    $f6, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sh      t2, 0x02BC(s0)             # 000002BC
    jal     func_8007397C
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_800C6820
    addiu   a0, $zero, 0x006C          # a0 = 0000006C
    lhu     t3, 0x02D0(s0)             # 000002D0
    ori     t4, t3, 0x0200             # t4 = 00000200
    sh      t4, 0x02D0(s0)             # 000002D0
    jal     func_800D6218
    lw      a0, 0x0034($sp)
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_8092394C:
    lw      a0, 0x0034($sp)
lbl_80923950:
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80923984
    lhu     t7, 0x02D0(s0)             # 000002D0
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_80923984
    lhu     t7, 0x02D0(s0)             # 000002D0
    lhu     t5, 0x02D0(s0)             # 000002D0
    ori     t6, t5, 0x0020             # t6 = 00000020
    sh      t6, 0x02D0(s0)             # 000002D0
    lhu     t7, 0x02D0(s0)             # 000002D0
lbl_80923984:
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8092399C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     t6, 0x02D0(s0)             # 000002D0
    lui     a1, %hi(func_80923878)     # a1 = 80920000
    addiu   a1, a1, %lo(func_80923878) # a1 = 80923878
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80923A1C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    jal     func_80921830
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    lhu     t8, 0x02D0(s0)             # 000002D0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    andi    t9, t8, 0xFFEF             # t9 = 00000000
    sh      t9, 0x02D0(s0)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    mfc1    a2, $f0
    mfc1    a3, $f2
    sw      t0, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f2, 0x0018($sp)
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sh      t1, 0x02BC(s0)             # 000002BC
lbl_80923A1C:
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80923A54
    lhu     t4, 0x02D0(s0)             # 000002D0
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_80923A54
    lhu     t4, 0x02D0(s0)             # 000002D0
    lhu     t2, 0x02D0(s0)             # 000002D0
    ori     t3, t2, 0x0020             # t3 = 00000020
    sh      t3, 0x02D0(s0)             # 000002D0
    lhu     t4, 0x02D0(s0)             # 000002D0
lbl_80923A54:
    ori     t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80923A6C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     t6, 0x02D0(s0)             # 000002D0
    lui     a1, %hi(func_8092399C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8092399C) # a1 = 8092399C
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80923AE4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    jal     func_80921830
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    lhu     t8, 0x02D0(s0)             # 000002D0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    andi    t9, t8, 0xFFEF             # t9 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t9, 0x02D0(s0)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    lui     a3, 0x41E8                 # a3 = 41E80000
    swc1    $f6, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0010($sp)
lbl_80923AE4:
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80923B1C
    lhu     t3, 0x02D0(s0)             # 000002D0
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_80923B1C
    lhu     t3, 0x02D0(s0)             # 000002D0
    lhu     t1, 0x02D0(s0)             # 000002D0
    ori     t2, t1, 0x0020             # t2 = 00000020
    sh      t2, 0x02D0(s0)             # 000002D0
    lhu     t3, 0x02D0(s0)             # 000002D0
lbl_80923B1C:
    ori     t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80923B34:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(func_80923A6C)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923A6C) # a1 = 80923A6C
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x02D0(s0)             # 000002D0
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f4                   # $f4 = 29.00
    lui     $at, 0xC120                # $at = C1200000
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    mtc1    $at, $f6                   # $f6 = -10.00
    sh      t7, 0x02D0(s0)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0xBF38             # a1 = 0600BF38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    swc1    $f4, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x2080          # a1 = 00002080
    lhu     t9, 0x02D0(s0)             # 000002D0
    andi    t0, t9, 0xFFDF             # t0 = 00000000
    sh      t0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80923BCC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022AD0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80923C0C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_809242BC)     # a1 = 80920000
    jal     func_80922CB4
    addiu   a1, a1, %lo(func_809242BC) # a1 = 809242BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921840
    lw      a1, 0x0024($sp)
lbl_80923C0C:
    lhu     t6, 0x02D0(s0)             # 000002D0
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80923C28:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    sw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80923C8C
    lw      a1, 0x002C($sp)
    lhu     v0, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(func_80923BCC)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80923BCC) # t6 = 80923BCC
    andi    t7, v0, 0x0002             # t7 = 00000000
    sw      $zero, 0x0118(s0)          # 00000118
    bne     t7, $zero, lbl_80923C80
    sw      t6, 0x024C(s0)             # 0000024C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t8, 0x0EF0(v1)             # 8011B4C0
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x0EF0(v1)             # 8011B4C0
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923C80:
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    beq     $zero, $zero, lbl_80923CE0
    sh      t0, 0x02D0(s0)             # 000002D0
lbl_80923C8C:
    lhu     t1, 0x02D0(s0)             # 000002D0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80923CCC
    lui     a3, 0x461C                 # a3 = 461C0000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    beq     $zero, $zero, lbl_80923CE4
    lhu     t3, 0x02D0(s0)             # 000002D0
lbl_80923CCC:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    ori     a3, a3, 0x4000             # a3 = 00004000
    jal     func_80022BD4
    swc1    $f6, 0x0010($sp)
lbl_80923CE0:
    lhu     t3, 0x02D0(s0)             # 000002D0
lbl_80923CE4:
    ori     t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80923CFC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80923D88
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_80923D88
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lw      a0, 0x0020($sp)
    lui     a1, %hi(func_80923C28)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    lhu     t6, 0x02D0(a0)             # 000002D0
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923C28) # a1 = 80923C28
    andi    t7, t6, 0xFFFD             # t7 = 00000000
    jal     func_80921830
    sh      t7, 0x02D0(a0)             # 000002D0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80923D88:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80923D94:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
    jal     func_800D6110
    lw      a0, 0x002C($sp)
    beq     v0, $zero, lbl_80923F48
    lw      a2, 0x002C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80923E04
    nop
    beq     v0, $at, lbl_80923ED8
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80923F30
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923E04:
    jal     func_80922B6C
    nop
    beq     v0, $zero, lbl_80923E34
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80923E5C
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80923E84
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923E34:
    jal     func_800DCE80
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    lui     a1, %hi(func_80922DD0)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80922DD0) # a1 = 80922DD0
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923E5C:
    jal     func_800DCE80
    addiu   a1, $zero, 0x208A          # a1 = 0000208A
    lui     a1, %hi(func_80923BCC)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923BCC) # a1 = 80923BCC
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923E84:
    lhu     t6, 0x02D0(s0)             # 000002D0
    lui     a1, %hi(func_80923C28)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    ori     t7, t6, 0x0002             # t7 = 00000002
    sh      t7, 0x02D0(s0)             # 000002D0
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    jal     func_80921830
    addiu   a1, a1, %lo(func_80923C28) # a1 = 80923C28
    jal     func_800721CC
    addiu   a0, $zero, 0xFFE2          # a0 = FFFFFFE2
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923ED8:
    lh      t8, -0x59FC(t8)            # FFFFA604
    or      a0, a2, $zero              # a0 = 00000000
    slti    $at, t8, 0x000A
    beq     $at, $zero, lbl_80923F14
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    lui     a1, %hi(func_80922DD0)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80922DD0) # a1 = 80922DD0
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923F14:
    jal     func_800721CC
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80923B34
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80923F4C
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923F30:
    lui     a1, %hi(func_809242BC)     # a1 = 80920000
    jal     func_80922CB4
    addiu   a1, a1, %lo(func_809242BC) # a1 = 809242BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921840
    lw      a1, 0x002C($sp)
lbl_80923F48:
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923F4C:
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_80923F5C
    ori     t0, v0, 0x0001             # t0 = 00000001
    sh      t0, 0x02D0(s0)             # 000002D0
lbl_80923F5C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80923F70:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lhu     t6, 0x010E(s0)             # 0000010E
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x2085         # $at = 00002085
    bne     t6, $at, lbl_80923FA0
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    beq     $zero, $zero, lbl_80923FA4
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_80923FA0:
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
lbl_80923FA4:
    jal     func_800DD464
    sw      v1, 0x0024($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80924070
    lw      v1, 0x0024($sp)
    lw      a0, 0x002C($sp)
    jal     func_800D6110
    sw      v1, 0x0024($sp)
    beq     v0, $zero, lbl_80924070
    lw      v1, 0x0024($sp)
    lw      a2, 0x002C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    lui     t7, 0x8012                 # t7 = 80120000
    beq     v0, $zero, lbl_80923FFC
    nop
    beq     v0, $at, lbl_80924058
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80924074
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80923FFC:
    lh      t7, -0x59FC(t7)            # 8011A604
    subu    a0, $zero, v1
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    slt     $at, t7, v1
    beq     $at, $zero, lbl_8092403C
    sll     a0, a0, 16
    jal     func_800DCE80
    or      a0, a2, $zero              # a0 = 00000000
    lui     a1, %hi(func_80922DD0)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80922DD0) # a1 = 80922DD0
    jal     func_80921830
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80924074
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_8092403C:
    jal     func_800721CC
    sra     a0, a0, 16
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80923B34
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80924074
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80924058:
    lui     a1, %hi(func_809242BC)     # a1 = 80920000
    jal     func_80922CB4
    addiu   a1, a1, %lo(func_809242BC) # a1 = 809242BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921840
    lw      a1, 0x002C($sp)
lbl_80924070:
    lhu     v0, 0x02D0(s0)             # 000002D0
lbl_80924074:
    andi    t8, v0, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_80924084
    ori     t9, v0, 0x0001             # t9 = 00000001
    sh      t9, 0x02D0(s0)             # 000002D0
lbl_80924084:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80924098:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_809240F4
    lw      t6, 0x0018($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_809240F0
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x2087          # a1 = 00002087
    lui     a1, %hi(func_80923CFC)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923CFC) # a1 = 80923CFC
    jal     func_80921830
    lw      a0, 0x0018($sp)
lbl_809240F0:
    lw      t6, 0x0018($sp)
lbl_809240F4:
    lhu     v0, 0x02D0(t6)             # 000002D0
    andi    t7, v0, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80924108
    ori     t8, v0, 0x0001             # t8 = 00000001
    sh      t8, 0x02D0(t6)             # 000002D0
lbl_80924108:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80924118:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_809241C0
    lw      v1, 0x0018($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_809241BC
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F06(v0)             # 8011B4D6
    lhu     t8, 0x0EF0(v0)             # 8011B4C0
    addiu   a1, $zero, 0x207F          # a1 = 0000207F
    ori     t7, t6, 0x4000             # t7 = 00004000
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_8092419C
    sh      t7, 0x0F06(v0)             # 8011B4D6
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x208B          # a1 = 0000208B
    lui     a1, %hi(func_80923D94)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923D94) # a1 = 80923D94
    jal     func_80921830
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_809241C0
    lw      v1, 0x0018($sp)
lbl_8092419C:
    jal     func_800DCE80
    lw      a0, 0x001C($sp)
    lui     a1, %hi(func_80923F70)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923F70) # a1 = 80923F70
    jal     func_80921830
    lw      a0, 0x0018($sp)
lbl_809241BC:
    lw      v1, 0x0018($sp)
lbl_809241C0:
    lhu     v0, 0x02D0(v1)             # 000002D0
    andi    t0, v0, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_809241D4
    ori     t1, v0, 0x0001             # t1 = 00000001
    sh      t1, 0x02D0(v1)             # 000002D0
lbl_809241D4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809241E4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_809242AC
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809242AC
    lw      $ra, 0x0024($sp)
    jal     func_80071A94
    nop
    beq     v0, $zero, lbl_80924288
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x02D0(s1)             # 000002D0
    lui     a1, %hi(func_80923C28)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    ori     t7, t6, 0x0002             # t7 = 00000002
    sh      t7, 0x02D0(s1)             # 000002D0
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923C28) # a1 = 80923C28
    jal     func_80921830
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    beq     $zero, $zero, lbl_809242AC
    lw      $ra, 0x0024($sp)
lbl_80924288:
    jal     func_800DCE80
    addiu   a1, $zero, 0x208A          # a1 = 0000208A
    lui     a1, %hi(func_80923BCC)     # a1 = 80920000
    lui     a2, %hi(func_809246E8)     # a2 = 80920000
    addiu   a2, a2, %lo(func_809246E8) # a2 = 809246E8
    addiu   a1, a1, %lo(func_80923BCC) # a1 = 80923BCC
    jal     func_80921830
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_809242AC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809242BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    sh      v0, 0x0026($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80921840
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80922050
    lhu     a2, 0x010E(s0)             # 0000010E
    beq     v0, $zero, lbl_809243A0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6851          # a1 = 00006851
    lhu     t6, 0x0026($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beq     t6, $zero, lbl_80924334
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80923BCC)     # a1 = 80920000
    jal     func_80922D44
    addiu   a1, a1, %lo(func_80923BCC) # a1 = 80923BCC
    beq     $zero, $zero, lbl_809243A4
    lhu     t9, 0x02D0(s0)             # 000002D0
lbl_80924334:
    lhu     t7, 0x0F06(v1)             # 00000F06
    addiu   $at, $zero, 0x207E         # $at = 0000207E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t8, t7, 0x4000             # t8 = 00004000
    sh      t8, 0x0F06(v1)             # 00000F06
    lhu     v0, 0x010E(s0)             # 0000010E
    lui     a1, %hi(func_80923F70)     # a1 = 80920000
    beq     v0, $at, lbl_80924370
    addiu   $at, $zero, 0x207F         # $at = 0000207F
    beq     v0, $at, lbl_80924370
    addiu   $at, $zero, 0x208B         # $at = 0000208B
    beq     v0, $at, lbl_80924380
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80924394
    or      a0, s0, $zero              # a0 = 00000000
lbl_80924370:
    jal     func_80922D44
    addiu   a1, a1, %lo(func_80923F70) # a1 = 80923F70
    beq     $zero, $zero, lbl_809243A4
    lhu     t9, 0x02D0(s0)             # 000002D0
lbl_80924380:
    lui     a1, %hi(func_80923D94)     # a1 = 80920000
    jal     func_80922D44
    addiu   a1, a1, %lo(func_80923D94) # a1 = 80923D94
    beq     $zero, $zero, lbl_809243A4
    lhu     t9, 0x02D0(s0)             # 000002D0
lbl_80924394:
    lui     a1, %hi(func_80924118)     # a1 = 80920000
    jal     func_80922D44
    addiu   a1, a1, %lo(func_80924118) # a1 = 80924118
lbl_809243A0:
    lhu     t9, 0x02D0(s0)             # 000002D0
lbl_809243A4:
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sh      t0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809243BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80924444
    lw      a0, 0x0018($sp)
    lhu     v0, 0x010E(a0)             # 0000010E
    addiu   $at, $zero, 0x2085         # $at = 00002085
    lui     t6, %hi(func_80923F70)     # t6 = 80920000
    beq     v0, $at, lbl_80924410
    addiu   t6, t6, %lo(func_80923F70) # t6 = 80923F70
    addiu   $at, $zero, 0x2086         # $at = 00002086
    beq     v0, $at, lbl_80924418
    lui     t7, %hi(func_80924098)     # t7 = 80920000
    addiu   $at, $zero, 0x2088         # $at = 00002088
    beq     v0, $at, lbl_80924424
    lui     t8, %hi(func_809241E4)     # t8 = 80920000
    beq     $zero, $zero, lbl_80924430
    lw      t9, 0x0004(a0)             # 00000004
lbl_80924410:
    beq     $zero, $zero, lbl_8092442C
    sw      t6, 0x024C(a0)             # 0000024C
lbl_80924418:
    addiu   t7, t7, %lo(func_80924098) # t7 = 80924098
    beq     $zero, $zero, lbl_8092442C
    sw      t7, 0x024C(a0)             # 0000024C
lbl_80924424:
    addiu   t8, t8, %lo(func_809241E4) # t8 = 809241E4
    sw      t8, 0x024C(a0)             # 0000024C
lbl_8092442C:
    lw      t9, 0x0004(a0)             # 00000004
lbl_80924430:
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t0, t9, $at
    beq     $zero, $zero, lbl_80924468
    sw      t0, 0x0004(a0)             # 00000004
lbl_80924444:
    lw      t1, 0x0004(a0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    lui     a2, 0x447A                 # a2 = 447A0000
    or      t2, t1, $at                # t2 = 00010000
    sw      t2, 0x0004(a0)             # 00000004
    sw      a0, 0x0018($sp)
    jal     func_80022A68
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
lbl_80924468:
    lhu     t3, 0x02D0(a0)             # 000002D0
    ori     t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x02D0(a0)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80924480:
    lh      v0, 0x02A6(a0)             # 000002A6
    lui     t6, %hi(func_809244B4)     # t6 = 80920000
    addiu   t6, t6, %lo(func_809244B4) # t6 = 809244B4
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_809244AC
    sw      t6, 0x02A0(a0)             # 000002A0
    jr      $ra
    sh      v0, 0x02A6(a0)             # 000002A6
lbl_809244A8:
    sw      t6, 0x02A0(a0)             # 000002A0
lbl_809244AC:
    jr      $ra
    nop


func_809244B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x02A6(a0)             # 000002A6
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_809244E0
    lh      v0, 0x02A4(a0)             # 000002A4
    beq     $zero, $zero, lbl_80924564
    sh      v0, 0x02A6(a0)             # 000002A6
    lh      v0, 0x02A4(a0)             # 000002A4
lbl_809244E0:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0003
    bnel    $at, $zero, lbl_80924560
    sh      v0, 0x02A4(a0)             # 000002A4
    lh      v1, 0x02BE(a0)             # 000002BE
    sh      $zero, 0x02A4(a0)          # 000002A4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    blez    v1, lbl_80924518
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80924548
    sh      t6, 0x02BE(a0)             # 000002BE
lbl_80924518:
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lw      a0, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    addiu   v0, v0, 0x0014             # v0 = 00000014
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80924548:
    lui     t8, %hi(func_80924480)     # t8 = 80920000
    addiu   t8, t8, %lo(func_80924480) # t8 = 80924480
    sh      v0, 0x02A6(a0)             # 000002A6
    beq     $zero, $zero, lbl_80924564
    sw      t8, 0x02A0(a0)             # 000002A0
    sh      v0, 0x02A4(a0)             # 000002A4
lbl_80924560:
    sh      t9, 0x02A6(a0)             # 000002A6
lbl_80924564:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80924574:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_809245A4
    lw      a0, 0x001C($sp)
    lw      t6, 0x0020($sp)
    jal     func_8008D1C4
    lw      a1, 0x02D4(t6)             # 000002D4
lbl_809245A4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809245B4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_809245EC
    lw      a0, 0x0024($sp)
    jal     func_8008D1C4
    lw      a1, 0x02D4(s0)             # 000002D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x6850          # a1 = 00006850
lbl_809245EC:
    lhu     t6, 0x02D0(s0)             # 000002D0
    ori     t7, t6, 0x000C             # t7 = 0000000C
    sh      t7, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80924608:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      v0, 0x02D2(s0)             # 000002D2
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    blez    v0, lbl_80924630
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_809246CC
    sh      t6, 0x02D2(s0)             # 000002D2
lbl_80924630:
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80924678
    lw      a0, 0x0024($sp)
    jal     func_8008D1C4
    lw      a1, 0x02D4(s0)             # 000002D4
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    nop
    add.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sh      t8, 0x02D2(s0)             # 000002D2
lbl_80924678:
    lui     $at, 0x42C0                # $at = 42C00000
    mtc1    $at, $f10                  # $f10 = 96.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4254                # $at = 42540000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_809246C0
    sh      t0, 0x02A4(s0)             # 000002A4
    mtc1    $at, $f16                  # $f16 = 53.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_809246C0
    sh      t0, 0x02A4(s0)             # 000002A4
    beq     $zero, $zero, lbl_809246C0
    sh      t9, 0x02A4(s0)             # 000002A4
    sh      t0, 0x02A4(s0)             # 000002A4
lbl_809246C0:
    lhu     t1, 0x02D0(s0)             # 000002D0
    ori     t2, t1, 0x0008             # t2 = 00000008
    sh      t2, 0x02D0(s0)             # 000002D0
lbl_809246CC:
    lhu     t3, 0x02D0(s0)             # 000002D0
    ori     t4, t3, 0x0004             # t4 = 00000004
    sh      t4, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809246E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     t6, 0x02D0(a1)             # 000002D0
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    andi    t7, t6, 0x0010             # t7 = 00000000
    bnel    t7, $zero, lbl_80924734
    lw      $ra, 0x0014($sp)
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    beq     v0, $zero, lbl_80924724
    lw      a1, 0x0018($sp)
    lhu     t8, 0x02D0(a1)             # 000002D0
    ori     t9, t8, 0x0010             # t9 = 00000010
    sh      t9, 0x02D0(a1)             # 000002D0
lbl_80924724:
    lhu     t0, 0x02D0(a1)             # 000002D0
    ori     t1, t0, 0x0008             # t1 = 00000008
    sh      t1, 0x02D0(a1)             # 000002D0
    lw      $ra, 0x0014($sp)
lbl_80924734:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80924740:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    addiu   a2, s0, 0x0254             # a2 = 00000254
    or      a1, a2, $zero              # a1 = 00000254
    sw      a2, 0x0034($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0044($sp)
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
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x0250(s0)             # 00000250
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
    lhu     v0, 0x02D0(s0)             # 000002D0
    andi    t7, v0, 0x0004             # t7 = 00000000
    bnel    t7, $zero, lbl_809247F8
    andi    t8, v0, 0x0001             # t8 = 00000000
    lw      t9, 0x02A0(s0)             # 000002A0
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lhu     v0, 0x02D0(s0)             # 000002D0
    andi    t8, v0, 0x0001             # t8 = 00000000
lbl_809247F8:
    beq     t8, $zero, lbl_80924834
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    lw      t1, 0x0038(s0)             # 00000038
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t1, 0x0010($sp)
    lw      t0, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x02C4             # a2 = 000002C4
    addiu   a3, s0, 0x02CA             # a3 = 000002CA
    sw      t0, 0x0014($sp)
    lw      t1, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t1, 0x0018($sp)
    beq     $zero, $zero, lbl_809248A4
    lhu     t6, 0x02D0(s0)             # 000002D0
lbl_80924834:
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t2, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sw      t3, 0x0010($sp)
    addiu   a0, s0, 0x02C6             # a0 = 000002C6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sw      t4, 0x0010($sp)
    addiu   a0, s0, 0x02CA             # a0 = 000002CA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)
    addiu   a0, s0, 0x02CC             # a0 = 000002CC
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lhu     t6, 0x02D0(s0)             # 000002D0
lbl_809248A4:
    lh      v0, 0x02BC(s0)             # 000002BC
    andi    t7, t6, 0xFFFA             # t7 = 00000000
    blez    v0, lbl_809248BC
    sh      t7, 0x02D0(s0)             # 000002D0
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02BC(s0)             # 000002BC
lbl_809248BC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809248D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a3, 0x003C($sp)
    beq     a1, a2, lbl_80924904
    lw      v0, 0x0040($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a1, $at, lbl_8092492C
    lw      v0, 0x0040($sp)
    beq     $zero, $zero, lbl_80924950
    lw      v1, 0x0044($sp)
lbl_80924904:
    lw      v1, 0x0044($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lh      t9, 0x0002(v0)             # 00000002
    lh      t7, 0x02CC(v1)             # 000002CC
    addu    t8, t6, t7
    sh      t8, 0x0000(v0)             # 00000000
    lh      t0, 0x02CA(v1)             # 000002CA
    subu    t1, t9, t0
    beq     $zero, $zero, lbl_80924950
    sh      t1, 0x0002(v0)             # 00000002
lbl_8092492C:
    lw      v1, 0x0044($sp)
    lh      t2, 0x0000(v0)             # 00000000
    lh      t5, 0x0004(v0)             # 00000004
    lh      t3, 0x02C6(v1)             # 000002C6
    addu    t4, t2, t3
    sh      t4, 0x0000(v0)             # 00000000
    lh      t6, 0x02C4(v1)             # 000002C4
    addu    t7, t5, t6
    sh      t7, 0x0004(v0)             # 00000004
lbl_80924950:
    lhu     a0, 0x02D0(v1)             # 000002D0
    andi    t8, a0, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_80924968
    andi    t9, a0, 0xFFF7             # t9 = 00000000
    beq     $zero, $zero, lbl_80924A40
    sh      t9, 0x02D0(v1)             # 000002D0
lbl_80924968:
    beq     a1, a2, lbl_80924980
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a1, $at, lbl_80924980
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    a1, $at, lbl_80924A44
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80924980:
    lw      t0, 0x0030($sp)
    sll     v1, a1,  2
    subu    v1, v1, a1
    sll     v1, v1,  3
    lw      t1, 0x009C(t0)             # 0000009C
    addu    v1, v1, a1
    sll     v1, v1,  1
    addiu   t2, v1, 0x0814             # t2 = 00000814
    multu   t1, t2
    sw      v1, 0x001C($sp)
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      v0, 0x0040($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t3, 0x0002(v0)             # 00000002
    lw      v1, 0x001C($sp)
    mul.s   $f10, $f0, $f8
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   t8, v1, 0x0940             # t8 = 00000940
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x0002(v0)             # 00000002
    lw      t6, 0x0030($sp)
    lw      t7, 0x009C(t6)             # 0000009C
    multu   t7, t8
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lw      v0, 0x0040($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lh      t9, 0x0004(v0)             # 00000004
    mul.s   $f10, $f0, $f6
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0004(v0)             # 00000004
lbl_80924A40:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80924A44:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80924A54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80924A84
    lui     a0, %hi(var_80924BFC)      # a0 = 80920000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80924BFC)  # a0 = 80924BFC
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80924A84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80924A94:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E56C
    sw      a0, 0x0034($sp)
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0034($sp)
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x02A4(s0)             # 000002A4
    lui     t2, %hi(var_80924C08)      # t2 = 80920000
    lui     t1, 0x0600                 # t1 = 06000000
    sll     t6, t9,  2
    addu    t2, t2, t6
    lw      t2, %lo(var_80924C08)(t2)
    addiu   t1, t1, 0x6DC0             # t1 = 06006DC0
    sll     t8, t2,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    addu    t8, t5, t6
    lw      t9, 0x0000(t8)             # DB060020
    and     t7, t2, t4
    addu    t6, t7, t9
    addu    t8, t6, $ra
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    sll     t6, t1,  4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    srl     t8, t6, 28
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t7, t8,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t5, t7
    lw      t6, 0x0000(t9)             # DB060024
    and     t8, t1, t4
    addu    t7, t6, t8
    addu    t9, t7, $ra
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t6, %hi(func_809248D0)     # t6 = 80920000
    lui     t8, %hi(func_80924A54)     # t8 = 80920000
    addiu   t8, t8, %lo(func_80924A54) # t8 = 80924A54
    addiu   t6, t6, %lo(func_809248D0) # t6 = 809248D0
    sw      t6, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop
    nop
    nop

.section .data

var_80924BB0: .word 0x00840400, 0x00000009, 0x00880000, 0x000002D8
.word func_80921920
.word func_80921FD8
.word func_80924740
.word func_80924A94
var_80924BD0: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000004, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80924BFC: .word 0x44898000, 0x447A0000, 0x00000000
var_80924C08: .word \
0x06007F80, 0x06006EC0, 0x060072C0, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80924C20: .word 0x3F4CCCCD
var_80924C24: .word 0x3ECCCCCD
var_80924C28: .word 0x4483A000
var_80924C2C: .word 0x3DCCCCCD
var_80924C30: .word 0x3CF5C28F
var_80924C34: .word 0x3CF5C28F, 0x00000000, 0x00000000

