# "Text Draw" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles drawing text on the screen.
#
# Starts at VRAM: 800CB9C0 / VROM: B41920
#

.section .text
func_800CB9C0:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    lw      v0, 0x0004(a0)             # 00000004
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t8, 0xEF00                 # t8 = EF000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0x0050                 # t9 = 00500000
    ori     t9, t9, 0x4244             # t9 = 00504244
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    ori     t8, t8, 0xECF0             # t8 = EF00ECF0
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0xFFFC                 # t8 = FFFC0000
    lui     t7, 0xFCFF                 # t7 = FCFF0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    ori     t7, t7, 0xFFFF             # t7 = FCFFFFFF
    ori     t8, t8, 0xF279             # t8 = FFFCF279
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x4C18             # t7 = 80104C18
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    lui     t6, 0xFD50                 # t6 = FD500000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0xF550                 # t9 = F5500000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    addiu   t9, a3, 0x07FF             # t9 = 00000800
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    div     $zero, t9, t3
    lui     t1, 0x0700                 # t1 = 07000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t2, 0xE600                 # t2 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    mflo    t6
    addiu   v1, $zero, 0x03FF          # v1 = 000003FF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sw      t8, 0x0000(v0)             # 00000000
    or      t8, t7, t1                 # t8 = 07000008
    or      a2, v0, $zero              # a2 = 00000000
    lui     a1, 0xF540                 # a1 = F5400000
    ori     a1, a1, 0x0200             # a1 = F5400200
    bne     t3, $zero, lbl_800CBAD4
    nop
    break   # 0x01C00
lbl_800CBAD4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800CBAEC
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_800CBAEC
    nop
    break   # 0x01800
lbl_800CBAEC:
    andi    t9, v1, 0x0FFF             # t9 = 000003FF
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = 07000008
    sw      t7, 0x0004(a2)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0x0003                 # t7 = 00030000
    ori     t7, t7, 0xC3FC             # t7 = 0003C3FC
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     a2, 0xF200                 # a2 = F2000000
    lui     t3, 0xFD10                 # t3 = FD100000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a1, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x4B70             # t8 = 80104B70
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      t7, 0x0004(v0)             # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t4, 0xE800                 # t4 = E8000000
    lui     t5, 0xF000                 # t5 = F0000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     s3, 0x0003                 # s3 = 00030000
    ori     s3, s3, 0xC000             # s3 = 0003C000
    sw      v0, 0x002C($sp)
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x002C($sp)
    lui     t6, 0xF500                 # t6 = F5000000
    ori     t6, t6, 0x0100             # t6 = F5000100
    sw      t4, 0x0000(t7)             # 0003C3FC
    lw      t9, 0x002C($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   s0, $zero, 0x0002          # s0 = 00000002
    sw      $zero, 0x0004(t9)          # 0000000C
    lw      v0, 0x0004(a0)             # 00000004
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      t1, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    or      a3, v0, $zero              # a3 = 00000000
    lw      v0, 0x0004(a0)             # 00000004
    sw      v0, 0x0024($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    lw      t9, 0x0024($sp)
    sw      t2, 0x0000(t9)             # 00000008
    lw      t8, 0x0024($sp)
    lui     t9, 0x070F                 # t9 = 070F0000
    ori     t9, t9, 0xC000             # t9 = 070FC000
    sw      $zero, 0x0004(t8)          # 0000000C
    lw      v0, 0x0004(a0)             # 00000004
    sw      v0, 0x0020($sp)
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0020($sp)
    sw      t5, 0x0000(t7)             # 00000008
    lw      t8, 0x0020($sp)
    sw      t9, 0x0004(t8)             # 0000000C
    lw      v0, 0x0004(a0)             # 00000004
    sw      v0, 0x001C($sp)
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x001C($sp)
    sw      t0, 0x0000(t7)             # 00000008
    lw      t9, 0x001C($sp)
    sw      $zero, 0x0004(t9)          # 070FC004
lbl_800CBC24:
    lw      v0, 0x0004(a0)             # 00000004
    andi    s1, s0, 0x0007             # s1 = 00000002
    andi    t6, v1, 0x000F             # t6 = 00000001
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sll     t7, t6, 20
    sll     s1, s1, 24
    or      t9, s1, t7                 # t9 = 0000000A
    sw      t9, 0x0004(v0)             # 00000004
    sw      a1, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000002
    or      t6, s1, s3                 # t6 = 0003C002
    addiu   t8, v0, 0x0008             # t8 = 00000008
    slti    $at, v1, 0x0004
    sw      t8, 0x0004(a0)             # 00000004
    ori     t7, t6, 0x03FC             # t7 = 0003C3FE
    addiu   s0, s0, 0x0002             # s0 = 00000004
    sw      t7, 0x0004(v0)             # 00000004
    bne     $at, $zero, lbl_800CBC24
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      t6, 0x0010(a0)             # 00000010
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x4C10             # t8 = 80104C10
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0xFD48                 # t9 = FD480000
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0x0700                 # t9 = 07000000
    lui     t7, 0xF548                 # t7 = F5480000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    ori     t7, t7, 0x0200             # t7 = F5480200
    ori     t9, t9, 0xC010             # t9 = 0700C010
    sw      t9, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0x0700                 # t9 = 07000000
    ori     t9, t9, 0x201C             # t9 = 0700201C
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0xF400                 # t7 = F4000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      t9, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0x0140                 # t7 = 01400000
    ori     t7, t7, 0xC010             # t7 = 0140C010
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0x0100                 # t8 = 01000000
    ori     t8, t8, 0x401C             # t8 = 0100401C
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      t7, 0x0004(v0)             # 00000004
    sw      a1, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x4BF0             # t7 = 80104BF0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      t7, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t6, 0xF500                 # t6 = F5000000
    ori     t6, t6, 0x0140             # t6 = F5000140
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      t1, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0x0703                 # t8 = 07030000
    ori     t8, t8, 0xC000             # t8 = 0703C000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t2, 0x0040                 # t2 = 00400000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
lbl_800CBDF8:
    lw      v0, 0x0004(a0)             # 00000004
    andi    t0, s1, 0x0007             # t0 = 00000003
    sll     t0, t0, 24
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    or      t9, t0, t2                 # t9 = 00400003
    ori     t6, t9, 0xC010             # t6 = 0040C013
    sw      t6, 0x0004(v0)             # 00000004
    sw      a1, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000002
    ori     t8, t0, 0x401C             # t8 = 0000401F
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    addiu   s1, s1, 0x0002             # s1 = 00000005
    sw      t8, 0x0004(v0)             # 00000004
    bne     v1, t3, lbl_800CBDF8
    sw      a2, 0x0000(v0)             # 00000000
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_800CBE58:
# SetTextRGBA (?)
    lw      v1, 0x0004(a0)             # 00000004
    sb      a1, 0x0010(a0)             # 00000010
    sb      a2, 0x0011(a0)             # 00000011
    sb      a3, 0x0012(a0)             # 00000012
    lw      t6, 0x0010($sp)
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    sb      t6, 0x0013(a0)             # 00000013
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    lw      v1, 0x0004(a0)             # 00000004
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0010(a0)             # 00000010
    jr      $ra
    sw      t2, 0x0004(v1)             # 00000004


func_800CBEA4:
    lhu     t6, 0x000C(a0)             # 0000000C
    lbu     t9, 0x000E(a0)             # 0000000E
    sll     t7, a1,  2
    sll     t0, a2,  2
    addu    t8, t6, t7
    addu    t1, t9, t0
    sh      t8, 0x0008(a0)             # 00000008
    jr      $ra
    sh      t1, 0x000A(a0)             # 0000000A


func_800CBEC8:
# SetTextXY (?)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    sll     a2, a2,  3
    jal     func_800CBEA4
    sll     a1, a1,  3
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CBEF0:
    sll     t6, a1,  2
    sll     t7, a2,  2
    sh      t6, 0x000C(a0)             # 0000000C
    jr      $ra
    sb      t7, 0x000E(a0)             # 0000000E


func_800CBF04:
    sw      a1, 0x0004($sp)
    lbu     v1, 0x000F(a0)             # 0000000F
    andi    a1, a1, 0x00FF             # a1 = 00000000
    andi    t6, v1, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_800CC054
    andi    t7, v1, 0xFFF7             # t7 = 00000000
    lw      v0, 0x0004(a0)             # 00000004
    sb      t7, 0x000F(a0)             # 0000000F
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t2, 0x000F(a0)             # 0000000F
    lui     t9, 0xE300                 # t9 = E3000000
    ori     t9, t9, 0x1001             # t9 = E3001001
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_800CBFDC
    ori     t2, $zero, 0xC000          # t2 = 0000C000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t5, 0xE300                 # t5 = E3000000
    ori     t5, t5, 0x1001             # t5 = E3001001
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x0004(a0)             # 00000004
    ori     t6, $zero, 0x8000          # t6 = 00008000
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x0A01             # t8 = E3000A01
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0004(a0)             # 00000004
    lui     t9, 0x0010                 # t9 = 00100000
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t4, 0x0C18                 # t4 = 0C180000
    lui     t3, 0xE200                 # t3 = E2000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x0004(a0)             # 00000004
    ori     t3, t3, 0x001C             # t3 = E200001C
    ori     t4, t4, 0x4240             # t4 = 0C184240
    sw      t4, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t6, 0xFC11                 # t6 = FC110000
    ori     t6, t6, 0x15FF             # t6 = FC1115FF
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x0004(a0)             # 00000004
    addiu   t7, $zero, 0xFE38          # t7 = FFFFFE38
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_800CC054
    lbu     v1, 0x000F(a0)             # 0000000F
lbl_800CBFDC:
    lw      v0, 0x0004(a0)             # 00000004
    lui     t4, 0xE300                 # t4 = E3000000
    ori     t4, t4, 0x0A01             # t4 = E3000A01
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    sw      t2, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t6, 0xE200                 # t6 = E2000000
    lui     t7, 0x0050                 # t7 = 00500000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    ori     t7, t7, 0x4240             # t7 = 00504240
    ori     t6, t6, 0x001C             # t6 = E200001C
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x0004(a0)             # 00000004
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x0004(a0)             # 00000004
    lui     t9, 0xFC11                 # t9 = FC110000
    ori     t9, t9, 0xFE23             # t9 = FC11FE23
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    addiu   t2, $zero, 0xF3F9          # t2 = FFFFF3F9
    sw      t2, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lbu     v1, 0x000F(a0)             # 0000000F
lbl_800CC054:
    andi    t3, v1, 0x0004             # t3 = 00000000
    beql    t3, $zero, lbl_800CC150
    lhu     t6, 0x0008(a0)             # 00000008
    lw      v0, 0x0004(a0)             # 00000004
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     $at, 0xE400                # $at = E4000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lhu     t6, 0x0008(a0)             # 00000008
    lw      v0, 0x0004(a0)             # 00000004
    lhu     t3, 0x000A(a0)             # 0000000A
    addiu   t7, t6, 0x0024             # t7 = E2000040
    andi    t8, t7, 0x0FFF             # t8 = 00000040
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x0004(a0)             # 00000004
    sll     t9, t8, 12
    addiu   t4, t3, 0x0024             # t4 = 00000024
    andi    t5, t4, 0x0FFF             # t5 = 00000024
    or      t2, t9, $at                # t2 = FC11FE23
    or      t6, t2, t5                 # t6 = FC11FE27
    sw      t6, 0x0000(v0)             # 00000000
    lhu     t4, 0x0008(a0)             # 00000008
    sll     t8, a1,  1
    andi    t9, t8, 0x0007             # t9 = 00000000
    lhu     t8, 0x000A(a0)             # 0000000A
    addiu   t2, t4, 0x0004             # t2 = 00000028
    andi    t5, t2, 0x0FFF             # t5 = 00000028
    sll     t3, t9, 24
    sll     t6, t5, 12
    addiu   t9, t8, 0x0004             # t9 = 00000044
    andi    t4, t9, 0x0FFF             # t4 = 00000044
    or      t7, t3, t6                 # t7 = FC11FE27
    or      t2, t7, t4                 # t2 = FC11FE67
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t3, 0xE100                 # t3 = E1000000
    andi    t7, a1, 0x0004             # t7 = 00000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x0004(a0)             # 00000004
    sra     t5, a1,  3
    sw      t3, 0x0000(v0)             # 00000000
    sll     t3, t5,  8
    andi    t6, t3, 0xFFFF             # t6 = 00000000
    sll     t4, t7, 22
    or      t8, t4, t6                 # t8 = 00000044
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t2, 0x0400                 # t2 = 04000000
    ori     t2, t2, 0x0400             # t2 = 04000400
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0004(a0)             # 00000004
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x0004(a0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      t3, 0x0010(a0)             # 00000010
    sw      t3, 0x0004(v0)             # 00000004
    lhu     t6, 0x0008(a0)             # 00000008
lbl_800CC150:
    lw      v0, 0x0004(a0)             # 00000004
    lhu     t5, 0x000A(a0)             # 0000000A
    addiu   t8, t6, 0x0020             # t8 = 00000020
    andi    t9, t8, 0x0FFF             # t9 = 00000020
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x0004(a0)             # 00000004
    sll     t7, t9, 12
    lui     $at, 0xE400                # $at = E4000000
    addiu   t3, t5, 0x0020             # t3 = 00000028
    andi    t4, t3, 0x0FFF             # t4 = 00000028
    or      t2, t7, $at                # t2 = F5000000
    or      t6, t2, t4                 # t6 = F5000028
    sw      t6, 0x0000(v0)             # 00000000
    lhu     t3, 0x0008(a0)             # 00000008
    lhu     t8, 0x000A(a0)             # 0000000A
    sll     t9, a1,  1
    andi    t7, t9, 0x0007             # t7 = 00000000
    andi    t2, t3, 0x0FFF             # t2 = 00000028
    sll     t4, t2, 12
    sll     t5, t7, 24
    or      t6, t5, t4                 # t6 = 00000028
    andi    t9, t8, 0x0FFF             # t9 = 00000020
    or      t7, t6, t9                 # t7 = 00000028
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t2, 0xE100                 # t2 = E1000000
    andi    t6, a1, 0x0004             # t6 = 00000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x0004(a0)             # 00000004
    sra     t3, a1,  3
    sw      t2, 0x0000(v0)             # 00000000
    sll     t2, t3,  8
    andi    t5, t2, 0xFFFF             # t5 = 00000000
    sll     t9, t6, 22
    or      t4, t9, t5                 # t4 = 00000020
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x0004(a0)             # 00000004
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0004(a0)             # 00000004
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lhu     t3, 0x0008(a0)             # 00000008
    addiu   t2, t3, 0x0020             # t2 = 00000028
    jr      $ra
    sh      t2, 0x0008(a0)             # 00000008


func_800CC210:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      s0, 0x0018($sp)
    addiu   $at, $zero, 0x0020         # $at = 00000020
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    bne     a1, $at, lbl_800CC244
    or      v0, a1, $zero              # v0 = 00000000
    lhu     t6, 0x0008(a0)             # 00000008
    addiu   t7, t6, 0x0020             # t7 = 00000020
    beq     $zero, $zero, lbl_800CC3B8
    sh      t7, 0x0008(a0)             # 00000008
lbl_800CC244:
    slti    $at, v0, 0x0021
    bne     $at, $zero, lbl_800CC268
    slti    $at, v0, 0x007F
    beql    $at, $zero, lbl_800CC26C
    slti    $at, v0, 0x00A0
    jal     func_800CBF04
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800CC3BC
    lw      $ra, 0x001C($sp)
lbl_800CC268:
    slti    $at, v0, 0x00A0
lbl_800CC26C:
    bne     $at, $zero, lbl_800CC2B8
    slti    $at, v0, 0x00E0
    beql    $at, $zero, lbl_800CC2BC
    slti    $at, v0, 0x000B
    lbu     t8, 0x000F(s0)             # 0000000F
    slti    $at, v0, 0x00C0
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_800CC2A8
    nop
    beq     $at, $zero, lbl_800CC2A4
    addiu   a1, v0, 0x0020             # a1 = 00000020
    addiu   a1, v0, 0xFFE0             # a1 = FFFFFFE0
    beq     $zero, $zero, lbl_800CC2A8
    andi    a1, a1, 0x00FF             # a1 = 000000E0
lbl_800CC2A4:
    andi    a1, a1, 0x00FF             # a1 = 000000E0
lbl_800CC2A8:
    jal     func_800CBF04
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800CC3BC
    lw      $ra, 0x001C($sp)
lbl_800CC2B8:
    slti    $at, v0, 0x000B
lbl_800CC2BC:
    bne     $at, $zero, lbl_800CC300
    slti    $at, v0, 0x000E
    bne     $at, $zero, lbl_800CC2EC
    addiu   t0, v0, 0xFF76             # t0 = FFFFFF76
    sltiu   $at, t0, 0x0005
    beq     $at, $zero, lbl_800CC3B8
    sll     t0, t0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t0
    lw      t0, -0x5E20($at)           # 8010A1E0
    jr      t0
    nop
lbl_800CC2EC:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beql    v0, $at, lbl_800CC328
    lhu     t3, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_800CC3BC
    lw      $ra, 0x001C($sp)
lbl_800CC300:
    beq     v0, $zero, lbl_800CC3B8
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_800CC330
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    v0, $at, lbl_800CC3BC
    lw      $ra, 0x001C($sp)
    lhu     t1, 0x000A(s0)             # 0000000A
    addiu   t2, t1, 0x0020             # t2 = 00000020
    sh      t2, 0x000A(s0)             # 0000000A
    lhu     t3, 0x000C(s0)             # 0000000C
lbl_800CC328:
    beq     $zero, $zero, lbl_800CC3B8
    sh      t3, 0x0008(s0)             # 00000008
lbl_800CC330:
    or      a0, s0, $zero              # a0 = 00000000
lbl_800CC334:
    jal     func_800CBF04
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    lhu     t4, 0x0008(s0)             # 00000008
    lhu     t5, 0x000C(s0)             # 0000000C
    subu    t6, t4, t5
    bgez    t6, lbl_800CC35C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    beq     t7, $zero, lbl_800CC35C
    nop
    addiu   t7, t7, 0xFF00             # t7 = FFFFFF00
lbl_800CC35C:
    bnel    t7, $zero, lbl_800CC334
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800CC3BC
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x000F(s0)             # 0000000F
    ori     t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_800CC3B8
    sb      t9, 0x000F(s0)             # 0000000F
    lbu     t0, 0x000F(s0)             # 0000000F
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    beq     $zero, $zero, lbl_800CC3B8
    sb      t1, 0x000F(s0)             # 0000000F
    lbu     t2, 0x000F(s0)             # 0000000F
    ori     t4, t2, 0x0002             # t4 = 00000002
    sb      t4, 0x000F(s0)             # 0000000F
    ori     t5, t4, 0x0008             # t5 = 0000000A
    beq     $zero, $zero, lbl_800CC3B8
    sb      t5, 0x000F(s0)             # 0000000F
    lbu     t6, 0x000F(s0)             # 0000000F
    andi    t8, t6, 0xFFFD             # t8 = 00000000
    sb      t8, 0x000F(s0)             # 0000000F
    ori     t9, t8, 0x0008             # t9 = 00000008
    sb      t9, 0x000F(s0)             # 0000000F
lbl_800CC3B8:
    lw      $ra, 0x001C($sp)
lbl_800CC3BC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CC3CC:
    multu   a2, a3
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x001C($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    mflo    s1
    beq     s1, $zero, lbl_800CC410
    or      a0, s2, $zero              # a0 = 00000000
lbl_800CC3F8:
    lbu     a1, 0x0000(s0)             # 00000000
    jal     func_800CC210
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    bnel    s1, $zero, lbl_800CC3F8
    or      a0, s2, $zero              # a0 = 00000000
lbl_800CC410:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800CC428:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lbu     s0, 0x0000(a1)             # 00000000
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    beq     s0, $zero, lbl_800CC468
    or      a0, s2, $zero              # a0 = 00000000
lbl_800CC450:
    andi    a1, s0, 0x00FF             # a1 = 00000000
    jal     func_800CC210
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     s0, 0x0000(s1)             # 00000001
    bnel    s0, $zero, lbl_800CC450
    or      a0, s2, $zero              # a0 = 00000000
lbl_800CC468:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800CC480:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      a0, 0x0018($sp)
    jal     func_800CC3CC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0018($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CC4AC:
    lbu     t6, 0x000F(a0)             # 0000000F
    lui     t8, 0x800D                 # t8 = 800D0000
    addiu   t8, t8, 0xC480             # t8 = 800CC480
    andi    t9, t6, 0xFF7F             # t9 = 00000000
    andi    t1, t9, 0xFFFE             # t1 = 00000000
    sb      t9, 0x000F(a0)             # 0000000F
    andi    t3, t1, 0xFFFD             # t3 = 00000000
    sb      t1, 0x000F(a0)             # 0000000F
    ori     t5, t3, 0x0004             # t5 = 00000004
    sb      t3, 0x000F(a0)             # 0000000F
    sb      t5, 0x000F(a0)             # 0000000F
    ori     t6, t5, 0x0008             # t6 = 0000000C
    sw      t8, 0x0000(a0)             # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    sh      $zero, 0x0008(a0)          # 00000008
    sh      $zero, 0x000A(a0)          # 0000000A
    sh      $zero, 0x000C(a0)          # 0000000C
    sb      $zero, 0x000E(a0)          # 0000000E
    sw      $zero, 0x0010(a0)          # 00000010
    jr      $ra
    sb      t6, 0x000F(a0)             # 0000000F


func_800CC500:
# Store A0 on stack
    jr      $ra
    sw      a0, 0x0000($sp)


func_800CC508:
# gfxprint_open:２重オープンです related.
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x000F(a0)             # 0000000F
    andi    t6, v0, 0x0080             # t6 = 00000000
    bne     t6, $zero, lbl_800CC534
    ori     t7, v0, 0x0080             # t7 = 00000080
    sb      t7, 0x000F(a0)             # 0000000F
    jal     func_800CB9C0
    sw      a1, 0x0004(a0)             # 00000004
    beq     $zero, $zero, lbl_800CC544
    lw      $ra, 0x0014($sp)
lbl_800CC534:
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA1C0             # a0 = 8010A1C0
    lw      $ra, 0x0014($sp)
lbl_800CC544:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CC550:
    lbu     t6, 0x000F(a0)             # 0000000F
    lw      v0, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(a0)          # 00000004
    andi    t7, t6, 0xFF7F             # t7 = 00000000
    jr      $ra
    sb      t7, 0x000F(a0)             # 0000000F


func_800CC568:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CE810
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CC588:
# SetTextString (?)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0028($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    jal     func_800CC568
    addiu   a2, $sp, 0x0028            # a2 = 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop
