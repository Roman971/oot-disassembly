# "Game" part of the code file
#
# Handles the construction, destruction, allocation and monitoring of the game world.
#
# Starts at VRAM: 800A0700 / VROM: B16660
#

.section .text
func_800A0700:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80051AA0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t6, 0x8080                 # t6 = 80800000
    addiu   t6, t6, 0x07B0             # t6 = 808007B0
    sw      $zero, 0x0098(a0)          # 00000098
    addiu   t7, $zero, 0x01E8          # t7 = 000001E8
    sw      t7, 0x0010(a0)             # 00000010
    sw      t6, 0x000C(a0)             # 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A073C:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800A0748:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x800A                 # t6 = 800A0000
    addiu   t6, t6, 0x073C             # t6 = 800A073C
    jal     func_800A0700
    sw      t6, 0x0008(a0)             # 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0770:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x0024($sp)
    lh      v1, 0x0174(v0)             # 80120174
    blez    v1, lbl_800A07DC
    slti    $at, v1, 0x0005
    beq     $at, $zero, lbl_800A07DC
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD190             # a0 = 8011D190
    sw      v1, 0x0000(a0)             # 8011D190
    lh      t8, 0x0176(v0)             # 80120176
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    sb      t8, 0x0008(a0)             # 8011D198
    lh      t9, 0x0178(v0)             # 80120178
    sb      t9, 0x0009(a0)             # 8011D199
    lh      t0, 0x017A(v0)             # 8012017A
    sb      t0, 0x000A(a0)             # 8011D19A
    lh      t1, 0x017C(v0)             # 8012017C
    jal     func_800939A0
    sb      t1, 0x000B(a0)             # 8011D19B
    b       lbl_800A08B0
    lw      t9, 0x0024($sp)
lbl_800A07DC:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_800A07F0
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_800A0850
lbl_800A07F0:
    xori    t2, v1, 0x0006             # t2 = 00000006
    addiu   a0, a0, 0xD1A0             # a0 = 8011D1A0
    sltiu   t2, t2, 0x0001
    sw      t2, 0x0000(a0)             # 8011D1A0
    lh      t3, 0x0176(v0)             # 00000176
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    sb      t3, 0x0008(a0)             # 8011D1A8
    lh      t4, 0x0178(v0)             # 00000178
    sb      t4, 0x0009(a0)             # 8011D1A9
    lh      t5, 0x017A(v0)             # 0000017A
    sb      t5, 0x000A(a0)             # 8011D1AA
    lh      t6, 0x017C(v0)             # 0000017C
    sb      t6, 0x000B(a0)             # 8011D1AB
    lh      t7, 0x017E(v0)             # 0000017E
    sb      t7, 0x000C(a0)             # 8011D1AC
    lh      t8, 0x0180(v0)             # 00000180
    sb      t8, 0x000D(a0)             # 8011D1AD
    lh      t9, 0x0182(v0)             # 00000182
    sb      t9, 0x000E(a0)             # 8011D1AE
    lh      t0, 0x017C(v0)             # 0000017C
    jal     func_800943B0
    sb      t0, 0x000F(a0)             # 8011D1AF
    b       lbl_800A08B0
    lw      t9, 0x0024($sp)
lbl_800A0850:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v1, $at, lbl_800A08AC
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD1B0             # a0 = 8011D1B0
    sw      $zero, 0x0000(a0)          # 8011D1B0
    lh      t1, 0x0176(v0)             # 00000176
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    sb      t1, 0x0008(a0)             # 8011D1B8
    lh      t2, 0x0178(v0)             # 00000178
    sb      t2, 0x0009(a0)             # 8011D1B9
    lh      t3, 0x017A(v0)             # 0000017A
    sb      t3, 0x000A(a0)             # 8011D1BA
    lh      t4, 0x017C(v0)             # 0000017C
    sb      t4, 0x000B(a0)             # 8011D1BB
    lh      t5, 0x017E(v0)             # 0000017E
    sb      t5, 0x000C(a0)             # 8011D1BC
    lh      t6, 0x0180(v0)             # 00000180
    sb      t6, 0x000D(a0)             # 8011D1BD
    lh      t7, 0x0182(v0)             # 00000182
    sb      t7, 0x000E(a0)             # 8011D1BE
    lh      t8, 0x017C(v0)             # 0000017C
    jal     func_80094114
    sb      t8, 0x000F(a0)             # 8011D1BF
lbl_800A08AC:
    lw      t9, 0x0024($sp)
lbl_800A08B0:
    lw      t0, 0x0028($sp)
    sw      t9, 0x0000(t0)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800A08C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1212(t6)             # 80121212
    beql    t6, $zero, lbl_800A08EC
    lw      $ra, 0x0014($sp)
    jal     func_801C7E78
    nop
    lw      $ra, 0x0014($sp)
lbl_800A08EC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A08F8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    lw      a0, 0x02C0(s0)             # 000002C0
    jal     func_800A1AA0
    sw      a0, 0x0038($sp)
    sw      v0, 0x003C($sp)
    lw      a0, 0x02B0(s0)             # 000002B0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t7, 0x0000(a0)             # 00000000
    lw      t8, 0x003C($sp)
    sw      t8, 0x0004(a0)             # 00000004
    lw      a1, -0x4600(a1)            # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t9, 0x0184(a1)             # 80120184
    bnel    t9, $at, lbl_800A0964
    lh      t0, 0x00D4(a1)             # 801200D4
    jal     func_800A0770
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFFC
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x4600(a1)            # 8011BA00
    lh      t0, 0x00D4(a1)             # 801200D4
lbl_800A0964:
    bgezl   t0, lbl_800A0974
    lw      t1, 0x003C($sp)
    sh      $zero, 0x00D4(a1)          # 801200D4
    lw      t1, 0x003C($sp)
lbl_800A0974:
    lui     t3, 0xDF00                 # t3 = DF000000
    addiu   t2, t1, 0x0008             # t2 = 00000008
    sw      t2, 0x003C($sp)
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t3, 0x0000(t1)             # 00000000
    lw      a0, 0x0038($sp)
    jal     func_800A1AAC
    lw      a1, 0x003C($sp)
    lw      t4, 0x003C($sp)
    sw      t4, 0x02C0(s0)             # 000002C0
    jal     func_80051D94
    or      a0, s0, $zero              # a0 = 00000000
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD170             # a0 = 8011D170
    lh      t6, 0x00D4(t5)             # 801200D4
    beql    t6, $zero, lbl_800A09E0
    lw      $ra, 0x001C($sp)
    jal     func_800A38F0
    or      a1, s0, $zero              # a1 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD170             # a0 = 8011D170
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A404C
    lw      a2, 0x0040($sp)
    lw      $ra, 0x001C($sp)
lbl_800A09E0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800A09F0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     a3, 0x8013                 # a3 = 80130000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x003C             # t9 = DB06003C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x02DC(a0)             # 000002DC
    lui     t8, 0xDB06                 # t8 = DB060000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    ori     t8, t8, 0x0038             # t8 = DB060038
    addiu   a3, a3, 0xBE40             # a3 = 8012BE40
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      a3, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      t1, 0x02D0(a0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    addiu   t9, t1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    sw      $zero, 0x0004(t1)          # 00000004
    sw      t6, 0x0000(t1)             # 00000000
    lw      t1, 0x02D0(a0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x003C             # t8 = DB06003C
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a0)             # 000002D0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t9, 0x02DC(a0)             # 000002DC
    sw      t9, 0x0004(t1)             # 00000004
    lw      t1, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0038             # t7 = DB060038
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    sw      a3, 0x0004(t1)             # 00000004
    sw      t7, 0x0000(t1)             # 00000000
    lw      t5, 0x02B0(a0)             # 000002B0
    lui     t9, 0xDB06                 # t9 = DB060000
    addiu   t8, t5, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(t5)          # 00000004
    sw      t9, 0x0000(t5)             # 00000000
    lw      t5, 0x02B0(a0)             # 000002B0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x003C             # t7 = DB06003C
    sw      t5, 0x0000($sp)
    addiu   t6, t5, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    lw      t8, 0x0000($sp)
    sw      t7, 0x0000(t8)             # 00000008
    lw      t6, 0x0000($sp)
    lw      t9, 0x02DC(a0)             # 000002DC
    sw      t9, 0x0004(t6)             # 0000000C
    lw      t5, 0x02B0(a0)             # 000002B0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0038             # t8 = DB060038
    addiu   t7, t5, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a0)             # 000002B0
    sw      a3, 0x0004(t5)             # 00000004
    sw      t8, 0x0000(t5)             # 00000000
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800A0B0C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lw      a0, 0x02C0(t6)             # 000002C0
    jal     func_800A1AA0
    sw      a0, 0x0030($sp)
    sw      v0, 0x0034($sp)
    lw      t7, 0x0038($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t1, 0x8012                 # t1 = 80120000
    lw      a0, 0x02B0(t7)             # 000002B0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(t7)             # 000002B0
    sw      t9, 0x0000(a0)             # 00000000
    lw      t0, 0x0034($sp)
    sw      t0, 0x0004(a0)             # 00000004
    lbu     t1, 0x1212(t1)             # 80121212
    beql    t1, $zero, lbl_800A0B68
    lw      t2, 0x0034($sp)
    jal     func_801C6EA0
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFFC
    lw      t2, 0x0034($sp)
lbl_800A0B68:
    lui     t4, 0xDF00                 # t4 = DF000000
    addiu   t3, t2, 0x0008             # t3 = 00000008
    sw      t3, 0x0034($sp)
    sw      $zero, 0x0004(t2)          # 00000004
    sw      t4, 0x0000(t2)             # 00000000
    lw      a0, 0x0030($sp)
    jal     func_800A1AAC
    lw      a1, 0x0034($sp)
    lw      t5, 0x0034($sp)
    lw      t6, 0x0038($sp)
    sw      t5, 0x02C0(t6)             # 000002C0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800A0BA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD500             # a0 = 8011D500
    addiu   a1, a3, 0x0014             # a1 = 00000014
    jal     func_800A279C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0BD0:
# ?, related to updating Game State
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lw      s1, 0x0000(s0)             # 00000000
    jal     func_800A09F0
    or      a0, s1, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1212(t6)             # 80121212
    beq     t6, $zero, lbl_800A0C18
    nop
    jal     func_801C7E78
    nop
lbl_800A0C18:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_800A0C3C
    nop
    lw      v1, 0x0074(v0)             # 80120074
    beq     v1, $zero, lbl_800A0C3C
    nop
    jalr    $ra, v1
    or      a0, s0, $zero              # a0 = 00000000
lbl_800A0C3C:
    jal     func_800A08C4
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD1C8             # a0 = 8011D1C8
    lh      t7, 0x0134(v0)             # 80120134
    beql    t7, $zero, lbl_800A0C88
    lh      t0, 0x0190(v0)             # 80120190
    jal     func_80093628
    addiu   a1, s0, 0x0014             # a1 = 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD1C8             # v1 = 8011D1C8
    sw      v1, 0x0284(s1)             # 00000284
    lw      t8, 0x0080(v1)             # 8011D248
    lui     v0, 0x8012                 # v0 = 80120000
    sw      t8, 0x02E4(s1)             # 000002E4
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t0, 0x0190(v0)             # 80120190
lbl_800A0C88:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    beql    t0, $at, lbl_800A0CAC
    lw      t1, 0x009C(s0)             # 0000009C
    jal     func_800A08F8
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800A0B0C
    or      a0, s1, $zero              # a0 = 00000000
    lw      t1, 0x009C(s0)             # 0000009C
lbl_800A0CAC:
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x009C(s0)             # 0000009C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800A0CC8:
# seems to be called primarily to allocate a "default" 0x100000 space on the main heap for the game state
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0084             # a0 = 00000084
    lw      a1, 0x001C($sp)
    jal     func_800A1010
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_800A0D08
    or      a1, v0, $zero              # a1 = 00000000
    addiu   a0, a3, 0x0074             # a0 = 00000074
    jal     func_800A0248
    lw      a2, 0x001C($sp)
    b       lbl_800A0D2C
    lw      $ra, 0x0014($sp)
lbl_800A0D08:
    addiu   a0, a3, 0x0074             # a0 = 00000074
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800A0248
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8D80             # a0 = 80108D80
    jal     func_800AF734
    addiu   a1, $zero, 0x037F          # a1 = 0000037F
    lw      $ra, 0x0014($sp)
lbl_800A0D2C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0D38:
# game_alloc
# Allocate heap memory for "play" game state?
# A0 = Global Context
# A1 = Allocate Size
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0044($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0078(a2)             # 00000078
    addiu   a0, a2, 0x0074             # a0 = 00000074
    sw      a0, 0x0020($sp)
    sw      a2, 0x0040($sp)
    jal     func_800A026C
    sw      t6, 0x0028($sp)
    lw      a2, 0x0040($sp)
    lw      a1, 0x0028($sp)
    addiu   a0, a2, 0x0084             # a0 = 00000084
    jal     func_800A107C
    sw      a0, 0x0024($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    jal     func_800CDBB8
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFEC
    lw      v0, 0x0034($sp)
    lw      t7, 0x0044($sp)
    addiu   v0, v0, 0xFFF0             # v0 = FFFFFFF0
    sltu    $at, v0, t7
    beql    $at, $zero, lbl_800A0DA4
    lw      a0, 0x0024($sp)
    sw      v0, 0x0044($sp)
    lw      a0, 0x0024($sp)
lbl_800A0DA4:
    jal     func_800A1010
    lw      a1, 0x0044($sp)
    beq     v0, $zero, lbl_800A0DC8
    or      a1, v0, $zero              # a1 = 00000000
    lw      a0, 0x0020($sp)
    jal     func_800A0248
    lw      a2, 0x0044($sp)
    b       lbl_800A0DEC
    lw      $ra, 0x0014($sp)
lbl_800A0DC8:
    lw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800A0248
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8D8C             # a0 = 80108D8C
    jal     func_800AF734
    addiu   a1, $zero, 0x03AC          # a1 = 000003AC
    lw      $ra, 0x0014($sp)
lbl_800A0DEC:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800A0DF8:
# Swap Game State
# Performs game state swapping stuff (memory allocations, ?)
# A0 = Global Context
# A1 = Function to execute during routine
# A2 = Graphics Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      a2, 0x0000(s0)             # 00000000
    sw      $zero, 0x009C(s0)          # 0000009C
    sw      $zero, 0x0004(s0)          # 00000004
    sw      $zero, 0x0008(s0)          # 00000008
    jal     func_800048C0              # osGetTime
    sw      t6, 0x0098(s0)             # 00000098
    sw      $zero, 0x000C(s0)          # 0000000C
    sw      $zero, 0x0010(s0)          # 00000010
    jal     func_800048C0              # osGetTime
    nop
    jal     func_800A1118
    addiu   a0, s0, 0x0084             # a0 = 00000084
    jal     func_800048C0              # osGetTime
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800A0CC8
    lui     a1, 0x0010                 # a1 = 00100000
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    sh      t7, 0x0110(t8)             # 80120110
    lw      t9, 0x0024($sp)
    jalr    $ra, t9
    nop
    jal     func_800048C0              # osGetTime
    nop
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093970
    addiu   a0, a0, 0xD190             # a0 = 8011D190
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80094370
    addiu   a0, a0, 0xD1A0             # a0 = 8011D1A0
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093B10
    addiu   a0, a0, 0xD1B0             # a0 = 8011D1B0
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093550
    addiu   a0, a0, 0xD1C8             # a0 = 8011D1C8
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A38C0
    addiu   a0, a0, 0xD170             # a0 = 8011D170
    jal     func_8009169C
    nop
    lw      a0, 0x0000(s0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80001E20              # osSendMesg
    addiu   a0, a0, 0x005C             # a0 = 0000005C
    jal     func_800048C0              # osGetTime
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800A0EF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_800A0290
    nop
    jal     func_800C3DC8
    nop
    lw      a0, 0x0000(s0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    addiu   a0, a0, 0x005C             # a0 = 0000005C
    lw      v0, 0x0008(s0)             # 00000008
    beq     v0, $zero, lbl_800A0F38
    nop
    jalr    $ra, v0
    or      a0, s0, $zero              # a0 = 00000000
lbl_800A0F38:
    jal     func_800916D8
    nop
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A38E4
    addiu   a0, a0, 0xD170             # a0 = 8011D170
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093994
    addiu   a0, a0, 0xD190             # a0 = 8011D190
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800943A4
    addiu   a0, a0, 0xD1A0             # a0 = 8011D1A0
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093B60
    addiu   a0, a0, 0xD1B0             # a0 = 8011D1B0
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800935B8
    addiu   a0, a0, 0xD1C8             # a0 = 8011D1C8
    jal     func_800A026C
    addiu   a0, s0, 0x0074             # a0 = 00000074
    jal     func_800A10C8
    addiu   a0, s0, 0x0084             # a0 = 00000084
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800A0FA0:
# Get Global Context Next State Constructor Function
# V0 = Global Context + 0x0C
    lw      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A0FAC:
# Get Global Context Next Size
# V0 = Global Context + 0x10
    lw      v0, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_800A0FB8:
# Get Global Context Swap State flag
# V0 = Global Context + 0x98
    lw      v0, 0x0098(a0)             # 00000098
    jr      $ra
    nop


func_800A0FC4:
# Get Global Context Free Bytes
# Calls 800A01F4 with A0 (Global Context) + 0x74
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_800A01F4
    addiu   a0, a1, 0x0074             # a0 = 00000074
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
