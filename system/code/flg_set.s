# "Flag Set" part of the code file
#
# The purpose of this file's content is unclear but it supposedly relates to flags stored in the Save Context.
#
# Starts at VRAM: 8001E5C0 / VROM: A94520
#

.section .text
func_8001E5C0:
    addiu   $sp, $sp, 0xFDD0           # $sp -= 0x230
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0230($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8050             # t7 = 800E8050
    addiu   t2, t7, 0x01A4             # t2 = 800E81F4
    addiu   t6, $sp, 0x0088            # t6 = FFFFFE58
lbl_8001E5E0:
    lw      t9, 0x0000(t7)             # 800E8050
    addiu   t7, t7, 0x000C             # t7 = 800E805C
    addiu   t6, t6, 0x000C             # t6 = FFFFFE64
    sw      t9, -0x000C(t6)            # FFFFFE58
    lw      t8, -0x0008(t7)            # 800E8054
    sw      t8, -0x0008(t6)            # FFFFFE5C
    lw      t9, -0x0004(t7)            # 800E8058
    bne     t7, t2, lbl_8001E5E0
    sw      t9, -0x0004(t6)            # FFFFFE60
    lw      t9, 0x0000(t7)             # 800E805C
    sw      t9, 0x0000(t6)             # FFFFFE64
    lw      t3, 0x0230($sp)
    lw      v0, 0x0000(t3)             # 00000000
    lw      a0, 0x02C0(v0)             # 000002C0
    sw      v0, 0x0084($sp)
    jal     func_800A1AA0
    sw      a0, 0x0078($sp)
    lw      a3, 0x0084($sp)
    addiu   s0, $sp, 0x0040            # s0 = FFFFFE10
    or      a1, v0, $zero              # a1 = 00000000
    lw      a2, 0x02B0(a3)             # 000002B0
    lui     t5, 0xDE00                 # t5 = DE000000
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   t4, a2, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(a3)             # 000002B0
    sw      v0, 0x0004(a2)             # 00000004
    sw      t5, 0x0000(a2)             # 00000000
    jal     func_800CC4AC
    sw      a1, 0x007C($sp)
    lw      a1, 0x007C($sp)
    jal     func_800CC508
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sw      t2, 0x0010($sp)
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   a1, $zero, 0x00FA          # a1 = 000000FA
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_800CBE58
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CBEC8
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    lui     v1, 0x800F                 # v1 = 800F0000
    lw      v1, -0x7E08(v1)            # 800E81F8
    or      a0, s0, $zero              # a0 = FFFFFE10
    sll     t7, v1,  3
    addu    a1, $sp, t7
    jal     func_800CC588
    lw      a1, 0x008C(a1)             # 0000008C
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CBEC8
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_8001E6BC:
    lui     a1, 0x800F                 # a1 = 800F0000
    lw      a1, -0x7E04(a1)            # 800E81FC
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x7430($at)           # 80118BD0
    bne     v0, a1, lbl_8001E6F8
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = FFFFFE10
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_800CBE58
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    beq     $zero, $zero, lbl_8001E710
    nop
lbl_8001E6F8:
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0010($sp)
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_800CBE58
    addiu   a3, $zero, 0x0064          # a3 = 00000064
lbl_8001E710:
    lui     v1, 0x800F                 # v1 = 800F0000
    lw      v1, -0x7E08(v1)            # 800E81F8
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x7430(v0)            # 80118BD0
    sll     t9, v1,  3
    addu    t3, $sp, t9
    lw      t3, 0x0088(t3)             # 00000088
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sllv    t2, t5, v0
    lhu     t4, 0x0000(t3)             # 00000000
    or      a0, s0, $zero              # a0 = FFFFFE10
    lui     a1, 0x8010                 # a1 = 80100000
    and     t7, t4, t2
    beq     t7, $zero, lbl_8001E764
    nop
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x6418             # a1 = 80106418
    jal     func_800CC588
    or      a0, s0, $zero              # a0 = FFFFFE10
    beq     $zero, $zero, lbl_8001E76C
    nop
lbl_8001E764:
    jal     func_800CC588
    addiu   a1, a1, 0x641C             # a1 = 0000641C
lbl_8001E76C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x7430(v0)            # 80118BD0
    or      a0, s0, $zero              # a0 = FFFFFE10
    lui     a1, 0x8010                 # a1 = 80100000
    andi    t6, v0, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_8001E79C
    addiu   v0, v0, 0xFFFF             # v0 = 8011FFFF
    jal     func_800CC588
    addiu   a1, a1, 0x6420             # a1 = 80106420
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x7430(v0)            # 80118BD0
    addiu   v0, v0, 0xFFFF             # v0 = 8011FFFF
lbl_8001E79C:
    bgez    v0, lbl_8001E6BC
    nop
    lw      a3, 0x0230($sp)
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x7430($at)           # 80118BD0
    lhu     a2, 0x0020(a3)             # 00000020
    addiu   v1, $zero, 0x0200          # v1 = 00000200
    addiu   t0, $zero, 0x0100          # t0 = 00000100
    andi    t8, a2, 0x0200             # t8 = 00000000
    bne     v1, t8, lbl_8001E7E8
    addiu   a3, a3, 0x0014             # a3 = 00000014
    lui     a1, 0x800F                 # a1 = 800F0000
    lw      a1, -0x7E04(a1)            # 800E81FC
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lui     $at, 0x800F                # $at = 800F0000
    sw      a0, -0x7E00($at)           # 800E8200
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a1, a1, 0x0001             # a1 = 800F0001
    sw      a1, -0x7E04($at)           # 800E81FC
lbl_8001E7E8:
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     a1, 0x800F                 # a1 = 800F0000
    andi    t9, a2, 0x0100             # t9 = 00000000
    lw      a1, -0x7E04(a1)            # 800E81FC
    bne     t0, t9, lbl_8001E808
    lw      a0, -0x7E00(a0)            # 800E8200
    addiu   a1, a1, 0xFFFF             # a1 = 800EFFFF
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
lbl_8001E808:
    bne     a0, $zero, lbl_8001E838
    andi    t4, a2, 0x0800             # t4 = 00000000
    lhu     v0, 0x0000(a3)             # 00000014
    andi    t3, v0, 0x0200             # t3 = 00000200
    bne     v1, t3, lbl_8001E828
    andi    t5, v0, 0x0100             # t5 = 00000100
    addiu   a1, a1, 0x0001             # a1 = 800F0000
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_8001E828:
    bnel    t0, t5, lbl_8001E83C
    addiu   t0, $zero, 0x0800          # t0 = 00000800
    addiu   a1, a1, 0xFFFF             # a1 = 800EFFFF
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_8001E838:
    addiu   t0, $zero, 0x0800          # t0 = 00000800
lbl_8001E83C:
    bne     t0, t4, lbl_8001E868
    andi    a1, a1, 0x000F             # a1 = 0000000F
    lui     v1, 0x800F                 # v1 = 800F0000
    lw      v1, -0x7E08(v1)            # 800E81F8
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    lui     $at, 0x800F                # $at = 800F0000
    addiu   v1, v1, 0xFFFF             # v1 = 800EFFFF
    bgez    v1, lbl_8001E864
    nop
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8001E864:
    sw      v1, -0x7E08($at)           # 800E81F8
lbl_8001E868:
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   t1, $zero, 0x0400          # t1 = 00000400
    andi    t2, a2, 0x0400             # t2 = 00000000
    bne     t1, t2, lbl_8001E89C
    lw      v1, -0x7E08(v1)            # 800E81F8
    addiu   v1, v1, 0x0001             # v1 = 800F0001
    sll     t7, v1,  3
    addu    t6, $sp, t7
    lw      t6, 0x0088(t6)             # 00000088
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    bne     t6, $zero, lbl_8001E89C
    nop
    addiu   v1, v1, 0xFFFF             # v1 = 800F0000
lbl_8001E89C:
    bne     a0, $zero, lbl_8001E8EC
    lui     $at, 0x800F                # $at = 800F0000
    lhu     v0, 0x0000(a3)             # 00000014
    andi    t8, v0, 0x0800             # t8 = 00000800
    bne     t0, t8, lbl_8001E8C4
    andi    t9, v0, 0x0400             # t9 = 00000400
    addiu   v1, v1, 0xFFFF             # v1 = 800EFFFF
    bgez    v1, lbl_8001E8C4
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8001E8C4:
    bne     t1, t9, lbl_8001E8EC
    nop
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     t3, v1,  3
    addu    t5, $sp, t3
    lw      t5, 0x0088(t5)             # 00000188
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    bne     t5, $zero, lbl_8001E8EC
    nop
    addiu   v1, v1, 0xFFFF             # v1 = 00000000
lbl_8001E8EC:
    sw      v1, -0x7E08($at)           # 800E81F8
    lui     $at, 0x800F                # $at = 800F0000
    sw      a1, -0x7E04($at)           # 800E81FC
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t4, a2, 0x8000             # t4 = 00000000
    bne     t4, $at, lbl_8001E934
    sll     t2, v1,  3
    addu    v0, $sp, t2
    lw      v0, 0x0088(v0)             # 80120087
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sllv    t8, t6, a1
    lhu     t7, 0x0000(v0)             # 8011FFFF
    lui     $at, 0x800F                # $at = 800F0000
    xor     t9, t7, t8
    sh      t9, 0x0000(v0)             # 8011FFFF
    sw      v1, -0x7E08($at)           # 800E81F8
    lui     $at, 0x800F                # $at = 800F0000
    sw      a1, -0x7E04($at)           # 800E81FC
lbl_8001E934:
    lui     $at, 0x800F                # $at = 800F0000
    beq     a0, $zero, lbl_8001E94C
    sw      a0, -0x7E00($at)           # 800E8200
    addiu   a0, a0, 0xFFFF             # a0 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sw      a0, -0x7E00($at)           # 800E8200
lbl_8001E94C:
    or      a0, s0, $zero              # a0 = FFFFFE10
    jal     func_800CC550
    sw      a3, 0x0030($sp)
    or      a0, s0, $zero              # a0 = FFFFFE10
    jal     func_800CC500
    sw      v0, 0x007C($sp)
    lw      a1, 0x007C($sp)
    or      v0, a1, $zero              # v0 = 00000000
    lui     t3, 0xDF00                 # t3 = DF000000
    sw      t3, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    addiu   a1, a1, 0x0008             # a1 = 00000008
    lw      a0, 0x0078($sp)
    jal     func_800A1AAC
    sw      a1, 0x007C($sp)
    lw      a1, 0x007C($sp)
    lw      t5, 0x0084($sp)
    lw      a3, 0x0030($sp)
    sw      a1, 0x02C0(t5)             # 000002C0
    lhu     t4, 0x000C(a3)             # 0000000C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    lw      t6, 0x0230($sp)
    andi    t2, t4, 0x0020             # t2 = 00000000
    bne     t2, $at, lbl_8001E9B8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    sh      $zero, 0x0936($at)         # 00010936
lbl_8001E9B8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0230           # $sp += 0x230
    jr      $ra
    nop
    nop
