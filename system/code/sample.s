# "Sample" part of the code file
#
# The purpose of this file's content is unclear but it's supposedly related to scenes/rooms.
#
# Starts at VRAM: 80080D30 / VROM: AF6C90
#

.section .text
func_80080D30:
    lhu     t6, 0x0020(a0)             # 00000020
    addiu   $at, $zero, 0x1000         # $at = 00001000
    lui     t8, 0x800A                 # t8 = 800A0000
    andi    t7, t6, 0x1000             # t7 = 00000000
    bne     t7, $at, lbl_80080D5C
    addiu   t8, t8, 0xA750             # t8 = 8009A750
    lui     t9, 0x0001                 # t9 = 00010000
    ori     t9, t9, 0x2518             # t9 = 00012518
    sw      t9, 0x0010(a0)             # 00000010
    sw      t8, 0x000C(a0)             # 0000000C
    sw      $zero, 0x0098(a0)          # 00000098
lbl_80080D5C:
    jr      $ra
    nop


func_80080D64:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0068($sp)
    lw      t6, 0x0068($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      s0, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0004             # t1 = DB060004
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t2, 0x0068($sp)
    lw      t3, 0x00A4(t2)             # 000000A4
    sw      t3, 0x0004(v0)             # 00000004
    jal     func_8007EE5C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0068($sp)
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    sw      t4, 0x01C8(a0)             # 000001C8
    jal     func_80091F94
    addiu   a0, a0, 0x00A8             # a0 = 000000A8
    lw      a0, 0x02C4(s0)             # 000002C4
    lui     v1, 0x8012                 # v1 = 80120000
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a0, a0, 0xFFC0             # a0 = FFFFFFC0
    sw      a0, 0x02C4(s0)             # 000002C4
    lw      v1, -0x4600(v1)            # 8011BA00
    mtc1    $at, $f10                  # $f10 = 1.00
    lh      t5, 0x011E(v1)             # 8012011E
    lh      t6, 0x0120(v1)             # 80120120
    lh      t7, 0x0122(v1)             # 80120122
    swc1    $f10, 0x0010($sp)
    lh      t8, 0x0124(v1)             # 80120124
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t8, $f16                   # $f16 = 0.00
    cvt.s.w $f4, $f4
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f16
    mfc1    a1, $f4
    cvt.s.w $f6, $f6
    swc1    $f18, 0x0014($sp)
    lh      t9, 0x0126(v1)             # 80120126
    mtc1    t9, $f4                    # $f4 = 0.00
    mfc1    a2, $f6
    cvt.s.w $f8, $f8
    cvt.s.w $f6, $f4
    mfc1    a3, $f8
    swc1    $f6, 0x0018($sp)
    lh      t1, 0x0128(v1)             # 80120128
    sw      a0, 0x0034($sp)
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jal     func_800D2620
    swc1    $f10, 0x001C($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, 0x0034($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sw      t4, 0x0004(v0)             # 00000004
    lw      a0, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8007DF4C
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    sw      v0, 0x02C0(s0)             # 000002C0
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x0A01             # t6 = E3000A01
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xE200                 # t8 = E2000000
    lui     t9, 0x0055                 # t9 = 00550000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    ori     t9, t9, 0x2078             # t9 = 00552078
    ori     t8, t8, 0x001C             # t8 = E200001C
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xFCFF                 # t2 = FCFF0000
    lui     t3, 0xFFFD                 # t3 = FFFD0000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    ori     t3, t3, 0xF6FB             # t3 = FFFDF6FB
    ori     t2, t2, 0xFFFF             # t2 = FCFFFFFF
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     t6, 0xFFFF                 # t6 = FFFF0000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80080F50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80080D64
    lw      a0, 0x0018($sp)
    jal     func_80080D30
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80080F7C:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80080F88:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s0, a2, 0x00A8             # s0 = 000000A8
    lw      a1, 0x0000(a2)             # 00000000
    jal     func_80091858
    or      a0, s0, $zero              # a0 = 000000A8
    addiu   t6, $zero, 0x00F0          # t6 = 000000F0
    addiu   t7, $zero, 0x0140          # t7 = 00000140
    sw      t7, 0x0054($sp)
    sw      t6, 0x004C($sp)
    sw      $zero, 0x0048($sp)
    sw      $zero, 0x0050($sp)
    or      a0, s0, $zero              # a0 = 000000A8
    jal     func_80091AE0
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 000000A8
    lui     a1, 0x4270                 # a1 = 42700000
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_80091A34
    lui     a3, 0x4648                 # a3 = 46480000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x75B0($at)          # 80108A50
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f0, 0x003C($sp)
    swc1    $f0, 0x0040($sp)
    swc1    $f0, 0x0030($sp)
    swc1    $f0, 0x0034($sp)
    swc1    $f0, 0x0038($sp)
    swc1    $f0, 0x0024($sp)
    swc1    $f0, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 000000A8
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFD0
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFC4
    swc1    $f4, 0x0044($sp)
    jal     func_80091918
    swc1    $f6, 0x0028($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80081040:
# ROM st & ed: title_static
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lui     t6, 0x01A4                 # t6 = 01A40000
    lui     t7, 0x01A0                 # t7 = 01A00000
    lw      a0, 0x0020($sp)
    addiu   t7, t7, 0x2000             # t7 = 01A02000
    addiu   t6, t6, 0xB5C0             # t6 = 01A3B5C0
    subu    a2, t6, t7
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0018($sp)
    jal     func_800A01B8
    addiu   a0, a0, 0x0074             # a0 = 00000074
    lw      t8, 0x0020($sp)
    lw      a2, 0x0018($sp)
    lui     a1, 0x01A0                 # a1 = 01A00000
    addiu   a1, a1, 0x2000             # a1 = 01A02000
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    sw      v0, 0x00A4(t8)             # 000000A4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800810A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8008                 # t6 = 80080000
    lui     t7, 0x8008                 # t7 = 80080000
    addiu   t6, t6, 0x0F50             # t6 = 80080F50
    addiu   t7, t7, 0x0F7C             # t7 = 80080F7C
    sw      t6, 0x0004(a0)             # 00000004
    sw      t7, 0x0008(a0)             # 00000008
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0110(t9)             # 00000110
    jal     func_80080F88
    sw      a0, 0x0018($sp)
    jal     func_80081040
    lw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t0, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x011E(t0)          # 0000011E
    lw      t1, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0120(t1)          # 00000120
    lw      t2, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0122(t2)          # 00000122
    lw      t3, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0124(t3)          # 00000124
    lw      t4, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0126(t4)          # 00000126
    lw      t5, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0128(t5)          # 00000128
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    nop
    nop
