# "Room" part of the code file
#
# Handles the drawing and allocation of rooms, as well as their backgrounds.
#
# General Documentation about Rooms:
# https://wiki.cloudmodding.com/oot/Scenes_and_Rooms
#
# Starts at VRAM: 8007F540 / VROM: AF54A0
#

.section .text
func_8007F540:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    jr      $ra
    nop


func_8007F558:
# Room Command 0x0A, Type 0
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    lw      t1, 0x0060($sp)
    lw      t6, 0x0058($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    andi    t1, t1, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_8007F5EC
    lw      s0, 0x0000(t6)             # 00000000
    addiu   a0, a0, 0x8B70             # a0 = 800F8B70
    or      a1, t6, $zero              # a1 = 00000000
    jal     func_80027114
    sw      t1, 0x0028($sp)
    lw      a1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x000C             # t8 = DB06000C
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(a1)             # 00000000
    lw      t9, 0x005C($sp)
    lw      t2, 0x000C(t9)             # 0000000C
    sw      t2, 0x0004(a1)             # 00000004
    jal     func_8007E22C
    lw      a0, 0x0058($sp)
    lw      t1, 0x0028($sp)
    lw      a1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t3, a1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    addiu   t5, t5, 0xEDB0             # t5 = 800FEDB0
    ori     t4, t4, 0x0003             # t4 = DA380003
    sw      t4, 0x0000(a1)             # 00000000
    sw      t5, 0x0004(a1)             # 00000004
lbl_8007F5EC:
    lw      t0, 0x0060($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8B70             # a0 = 800F8B70
    andi    t0, t0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_8007F674
    lw      a1, 0x0058($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xEDB0             # t6 = 800FEDB0
    sw      t6, 0x0024($sp)
    sw      t0, 0x0020($sp)
    jal     func_80027188
    sw      t1, 0x0028($sp)
    lw      a1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x000C             # t8 = DB06000C
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(a1)             # 00000000
    lw      t9, 0x005C($sp)
    lw      t2, 0x000C(t9)             # 0000000C
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0058($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(t3)             # 00000000
    lw      t0, 0x0020($sp)
    lw      t1, 0x0028($sp)
    lw      a1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, a1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(a1)             # 00000000
    lw      t6, 0x0024($sp)
    sw      t6, 0x0004(a1)             # 00000004
lbl_8007F674:
    lw      t7, 0x005C($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      a3, 0x0008(t7)             # 00000008
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      a0, $zero, $zero           # a0 = 00000000
    lw      v0, 0x0004(a3)             # 00000004
    lbu     t5, 0x0001(a3)             # 00000001
    lui     a2, 0xDE00                 # a2 = DE000000
    sll     t8, v0,  4
    srl     t9, t8, 28
    sll     t2, t9,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t4, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t3, t4
    blez    t5, lbl_8007F730
    addu    v1, v1, $at
lbl_8007F6C0:
    beq     t1, $zero, lbl_8007F6EC
    nop
    lw      t6, 0x0000(v1)             # 00000000
    beq     t6, $zero, lbl_8007F6EC
    nop
    lw      a1, 0x02C0(s0)             # 000002C0
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      a2, 0x0000(a1)             # 00000000
    lw      t8, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(a1)             # 00000004
lbl_8007F6EC:
    beql    t0, $zero, lbl_8007F71C
    lbu     t4, 0x0001(a3)             # 00000001
    lw      t9, 0x0004(v1)             # 00000004
    beql    t9, $zero, lbl_8007F71C
    lbu     t4, 0x0001(a3)             # 00000001
    lw      a1, 0x02D0(s0)             # 000002D0
    addiu   t2, a1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0000(a1)             # 00000000
    lw      t3, 0x0004(v1)             # 00000004
    sw      t3, 0x0004(a1)             # 00000004
    lbu     t4, 0x0001(a3)             # 00000001
lbl_8007F71C:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0x0008             # v1 = 00000008
    slt     $at, a0, t4
    bne     $at, $zero, lbl_8007F6C0
    nop
lbl_8007F730:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_8007F744:
# Room Command 0x0A, Type 1
    addiu   $sp, $sp, 0xFB50           # $sp -= 0x4B0
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x04B0($sp)
    sw      a1, 0x04B4($sp)
    or      t2, $zero, $zero           # t2 = 00000000
    or      t3, $zero, $zero           # t3 = 00000000
    lw      t6, 0x04B0($sp)
    andi    $ra, s0, 0x0001            # $ra = 00000000
    beq     $ra, $zero, lbl_8007F7F8
    lw      t0, 0x0000(t6)             # 00000000
    lui     a0, 0x8010                 # a0 = 80100000
    sw      $ra, 0x0030($sp)
    addiu   a0, a0, 0x8B70             # a0 = 800F8B70
    or      a1, t6, $zero              # a1 = 00000000
    sw      t0, 0x005C($sp)
    sw      t2, 0x00A4($sp)
    jal     func_80027114
    sw      t3, 0x00A0($sp)
    lw      t0, 0x005C($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x000C             # t8 = DB06000C
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x04B4($sp)
    lw      t6, 0x000C(t9)             # 0000000C
    sw      t6, 0x0004(v1)             # 00000004
    jal     func_8007E22C
    lw      a0, 0x04B0($sp)
    lw      t0, 0x005C($sp)
    lw      t2, 0x00A4($sp)
    lw      t3, 0x00A0($sp)
    lw      $ra, 0x0030($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    addiu   t9, t9, 0xEDB0             # t9 = 800FEDB0
    ori     t8, t8, 0x0003             # t8 = DA380003
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
lbl_8007F7F8:
    andi    t5, s0, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_8007F890
    lui     a0, 0x8010                 # a0 = 80100000
    lui     s0, 0x8010                 # s0 = 80100000
    sw      $ra, 0x0030($sp)
    addiu   s0, s0, 0xEDB0             # s0 = 800FEDB0
    addiu   a0, a0, 0x8B70             # a0 = 800F8B70
    lw      a1, 0x04B0($sp)
    sw      t0, 0x005C($sp)
    sw      t2, 0x00A4($sp)
    sw      t3, 0x00A0($sp)
    jal     func_80027188
    sw      t5, 0x0028($sp)
    lw      t0, 0x005C($sp)
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x000C             # t7 = DB06000C
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x04B4($sp)
    lw      t9, 0x000C(t8)             # 0000000C
    sw      t9, 0x0004(v1)             # 00000004
    lw      t6, 0x04B0($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(t6)             # 00000008
    lw      t0, 0x005C($sp)
    lw      t2, 0x00A4($sp)
    lw      t3, 0x00A0($sp)
    lw      t5, 0x0028($sp)
    lw      $ra, 0x0030($sp)
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      s0, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
lbl_8007F890:
    lw      t9, 0x04B4($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      t4, 0x0008(t9)             # 00000008
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   v1, $sp, 0x00A8            # v1 = FFFFFBF8
    lw      v0, 0x0004(t4)             # 00000004
    or      t1, $zero, $zero           # t1 = 00000000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t6, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s0, t9, t6
    addu    s0, s0, $at
    sw      s0, 0x0068($sp)
    lbu     a0, 0x0001(t4)             # 00000001
    blez    a0, lbl_8007FA6C
    nop
    lw      a0, 0x04B0($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    lh      t7, 0x0000(s0)             # 800FEDB0
lbl_8007F8FC:
    lw      a0, 0x0024($sp)
    addiu   a1, $sp, 0x0080            # a1 = FFFFFBD0
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0074            # a2 = FFFFFBC4
    addiu   a3, $sp, 0x0070            # a3 = FFFFFBC0
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0080($sp)
    lh      t8, 0x0002(s0)             # 800FEDB2
    mtc1    t8, $f8                    # $f8 = -12947850000000000.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0084($sp)
    lh      t9, 0x0004(s0)             # 800FEDB4
    sw      $ra, 0x0030($sp)
    sw      t5, 0x0028($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    sw      t4, 0x04AC($sp)
    sw      t3, 0x00A0($sp)
    cvt.s.w $f18, $f16
    sw      t2, 0x00A4($sp)
    sw      t1, 0x008C($sp)
    sw      t0, 0x005C($sp)
    sw      v1, 0x0094($sp)
    jal     func_8008EC20
    swc1    $f18, 0x0088($sp)
    lh      t6, 0x0006(s0)             # 800FEDB6
    lwc1    $f8, 0x007C($sp)
    lw      v1, 0x0094($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      t0, 0x005C($sp)
    lw      t1, 0x008C($sp)
    cvt.s.w $f0, $f4
    lw      t2, 0x00A4($sp)
    lw      t3, 0x00A0($sp)
    lw      t4, 0x04AC($sp)
    lw      t5, 0x0028($sp)
    lw      $ra, 0x0030($sp)
    neg.s   $f6, $f0
    lw      t7, 0x04B0($sp)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_8007FA58
    lbu     a0, 0x0001(t4)             # 00000001
    lh      t8, 0x07B4(t7)             # 000007B4
    sub.s   $f2, $f8, $f0
    or      v0, t2, $zero              # v0 = 00000000
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_8007FA58
    lbu     a0, 0x0001(t4)             # 00000001
    sw      s0, 0x0000(v1)             # 00000000
    bne     t2, $zero, lbl_8007F9F0
    swc1    $f2, 0x0004(v1)            # 00000004
    or      t3, v1, $zero              # t3 = 00000000
    or      t2, v1, $zero              # t2 = 00000000
    sw      $zero, 0x000C(v1)          # 0000000C
    b       lbl_8007FA50
    sw      $zero, 0x0008(v1)          # 00000008
lbl_8007F9F0:
    lwc1    $f0, 0x0004(v1)            # 00000004
    lwc1    $f18, 0x0004(v0)           # 00000004
lbl_8007F9F8:
    c.lt.s  $f0, $f18
    nop
    bc1t    lbl_8007FA14
    nop
    lw      v0, 0x000C(v0)             # 0000000C
    bnel    v0, $zero, lbl_8007F9F8
    lwc1    $f18, 0x0004(v0)           # 00000004
lbl_8007FA14:
    bnel    v0, $zero, lbl_8007FA34
    lw      a0, 0x0008(v0)             # 00000008
    sw      t3, 0x0008(v1)             # 00000008
    sw      $zero, 0x000C(v1)          # 0000000C
    sw      v1, 0x000C(t3)             # 0000000C
    b       lbl_8007FA50
    or      t3, v1, $zero              # t3 = 00000000
    lw      a0, 0x0008(v0)             # 00000008
lbl_8007FA34:
    bne     a0, $zero, lbl_8007FA44
    sw      a0, 0x0008(v1)             # 00000008
    b       lbl_8007FA48
    or      t2, v1, $zero              # t2 = 00000000
lbl_8007FA44:
    sw      v1, 0x000C(a0)             # 0000000C
lbl_8007FA48:
    sw      v1, 0x0008(v0)             # 00000008
    sw      v0, 0x000C(v1)             # 0000000C
lbl_8007FA50:
    addiu   v1, v1, 0x0010             # v1 = 00000010
    lbu     a0, 0x0001(t4)             # 00000001
lbl_8007FA58:
    addiu   t1, t1, 0x0001             # t1 = 00000001
    addiu   s0, s0, 0x0010             # s0 = 800FEDC0
    slt     $at, t1, a0
    bnel    $at, $zero, lbl_8007F8FC
    lh      t7, 0x0000(s0)             # 800FEDC0
lbl_8007FA6C:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     t2, $zero, lbl_8007FBAC
    sh      a0, 0x0D82(t9)             # 80120D82
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     a3, 0xDE00                 # a3 = DE000000
lbl_8007FA88:
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x4600(a1)            # 8011BA00
    lw      s0, 0x0000(t2)             # 00000000
    lh      a2, 0x0D80(a1)             # 80120D80
    beq     a2, $zero, lbl_8007FB4C
    nop
    lbu     a0, 0x0001(t4)             # 00000001
    lw      v0, 0x0068($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    blez    a0, lbl_8007FAC8
    nop
lbl_8007FAB4:
    beq     s0, v0, lbl_8007FAC8
    addiu   v1, v1, 0x0001             # v1 = 00000001
    slt     $at, v1, a0
    bne     $at, $zero, lbl_8007FAB4
    addiu   v0, v0, 0x0010             # v0 = 00000010
lbl_8007FAC8:
    bnel    t3, a2, lbl_8007FAE0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t6, 0x0D86(a1)             # 80120D86
    slt     $at, t6, t1
    beq     $at, $zero, lbl_8007FAF4
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8007FAE0:
    bnel    a2, $at, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
    lh      t7, 0x0D86(a1)             # 80120D86
    bnel    t1, t7, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
lbl_8007FAF4:
    beq     $ra, $zero, lbl_8007FB1C
    nop
    lw      v0, 0x0008(s0)             # 800FEDC8
    beq     v0, $zero, lbl_8007FB1C
    nop
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000009
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      v0, 0x0004(v1)             # 00000005
    sw      a3, 0x0000(v1)             # 00000001
lbl_8007FB1C:
    beql    t5, $zero, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
    lw      v0, 0x000C(s0)             # 800FEDCC
    beql    v0, $zero, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000005
    sw      a3, 0x0000(v1)             # 00000001
    b       lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
lbl_8007FB4C:
    beq     $ra, $zero, lbl_8007FB74
    nop
    lw      v0, 0x0008(s0)             # 800FEDC8
    beq     v0, $zero, lbl_8007FB74
    nop
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000009
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      v0, 0x0004(v1)             # 00000005
    sw      a3, 0x0000(v1)             # 00000001
lbl_8007FB74:
    beql    t5, $zero, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
    lw      v0, 0x000C(s0)             # 800FEDCC
    beql    v0, $zero, lbl_8007FBA0
    lw      t2, 0x000C(t2)             # 0000000C
    lw      v1, 0x02D0(t0)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000009
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000005
    sw      a3, 0x0000(v1)             # 00000001
    lw      t2, 0x000C(t2)             # 0000000C
lbl_8007FBA0:
    addiu   t1, t1, 0x0001             # t1 = 00000002
    bne     t2, $zero, lbl_8007FA88
    nop
lbl_8007FBAC:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   t8, t1, 0xFFFF             # t8 = 00000001
    sh      t8, 0x0D84(t9)             # 80120D84
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x04B0           # $sp += 0x4B0


func_8007FBCC:
# Room Command 0x0A, Type 2
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     $at, 0xFFD8                # $at = FFD80000
    ori     $at, $at, 0xFFE0           # $at = FFD8FFE0
    lw      t7, 0x0000(t6)             # 00000000
    bnel    t7, $at, lbl_8007FC44
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_800048C0              # osGetTime
    nop
    lui     a1, 0x8013                 # a1 = 80130000
    lui     a2, 0x8015                 # a2 = 80150000
    lui     a3, 0x0001                 # a3 = 00010000
    ori     a3, a3, 0x8000             # a3 = 00018000
    addiu   a2, a2, 0x1640             # a2 = 80151640
    addiu   a1, a1, 0xBE40             # a1 = 8012BE40
    jal     func_8005B52C
    lw      a0, 0x0018($sp)
    bnel    v0, $zero, lbl_8007FC44
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_800048C0              # osGetTime
    nop
    lui     a0, 0x8013                 # a0 = 80130000
    lui     a2, 0x0002                 # a2 = 00020000
    ori     a2, a2, 0x5800             # a2 = 00025800
    addiu   a0, a0, 0xBE40             # a0 = 8012BE40
    jal     func_80004DC0              # bcopy
    lw      a1, 0x0018($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007FC44:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007FC54:
# draw something room related
# Note: T1 = Room Header Type 1 offset
# A0 = SP + 0x98
# A1 = s32, T1 + 0x08 image ptr
# A2 = s32, T1 + 0x10
# A3 = u16, T1 + 0x14 background width
# SP+0x10 = u16, T1 + 0x16 background height
# SP+0x14 =  u8, T1 + 0x18 imageFmt
# SP+0x18 =  u8, T1 + 0x19 imageSiz
# SP+0x1C = u16, T1 + 0x1A imagePal
# SP+0x20 = u16, T1 + 0x1C imageFlip
# SP+0x24 = float
# SP+0x28 = float
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    sll     t7, a1,  4
    lw      t6, 0x0020($sp)
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t5, 0x0C38(t5)             # 80120C38
    lw      v0, 0x0000(t6)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, t5, t6
    addu    a0, a0, $at
    sw      a1, 0x0024($sp)
    jal     func_8007FBCC
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    lw      a1, 0x0024($sp)
    lbu     a2, 0x0037($sp)
    addiu   a0, v0, 0x0008             # a0 = 00000008
    lui     t7, 0xDE01                 # t7 = DE010000
    addiu   v1, v0, 0x0030             # v1 = 00000030
    sw      v1, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    sh      $zero, 0x0000(a0)          # 00000008
    lhu     t2, 0x002E($sp)
    ori     t7, $zero, 0xFFF4          # t7 = 0000FFF4
    or      v0, v1, $zero              # v0 = 00000030
    sll     t2, t2,  2
    sh      t2, 0x0002(a0)             # 0000000A
    lwc1    $f4, 0x0044($sp)
    sh      $zero, 0x0008(a0)          # 00000010
    addiu   $at, $zero, 0x0002         # $at = 00000002
    mul.s   $f6, $f4, $f0
    or      t0, a2, $zero              # t0 = 00000000
    lui     t4, 0x0700                 # t4 = 07000000
    or      v1, v0, $zero              # v1 = 00000030
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0004(a0)             # 0000000C
    lhu     t3, 0x0032($sp)
    lui     t9, 0xFD10                 # t9 = FD100000
    sll     t3, t3,  2
    sh      t3, 0x000A(a0)             # 00000012
    lwc1    $f10, 0x0048($sp)
    sw      a1, 0x0010(a0)             # 00000018
    sh      t7, 0x0014(a0)             # 0000001C
    mul.s   $f16, $f10, $f0
    sb      a2, 0x0016(a0)             # 0000001E
    lui     t7, 0xF500                 # t7 = F5000000
    ori     t7, t7, 0x0100             # t7 = F5000100
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sh      t6, 0x000C(a0)             # 00000014
    lbu     t8, 0x003B($sp)
    sh      $zero, 0x0018(a0)          # 00000020
    sh      $zero, 0x001A(a0)          # 00000022
    bne     a2, $at, lbl_8007FDF8
    sb      t8, 0x0017(a0)             # 0000001F
    or      v1, v0, $zero              # v1 = 00000030
    sw      t9, 0x0000(v1)             # 00000030
    lw      t5, 0x0028($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000038
    or      a1, v0, $zero              # a1 = 00000038
    sw      t5, 0x0004(v1)             # 00000034
    lui     t6, 0xE800                 # t6 = E8000000
    sw      t6, 0x0000(a1)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000040
    sw      $zero, 0x0004(a1)          # 0000003C
    or      a2, v0, $zero              # a2 = 00000040
    sw      t7, 0x0000(a2)             # 00000040
    sw      t4, 0x0004(a2)             # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a3, v0, $zero              # a3 = 00000048
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(a3)             # 00000048
    sw      $zero, 0x0004(a3)          # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      t1, v0, $zero              # t1 = 00000050
    lui     t9, 0xF000                 # t9 = F0000000
    sw      t9, 0x0000(t1)             # 00000050
    lhu     t5, 0x0042($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      v1, v0, $zero              # v1 = 00000058
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    andi    t7, t6, 0x03FF             # t7 = 000003FF
    sll     t8, t7, 14
    or      t9, t8, t4                 # t9 = E7000000
    sw      t9, 0x0004(t1)             # 00000054
    lui     t5, 0xE700                 # t5 = E7000000
    sw      t5, 0x0000(v1)             # 00000058
    addiu   v0, v0, 0x0008             # v0 = 00000060
    sw      $zero, 0x0004(v1)          # 0000005C
    b       lbl_8007FE08
    nop
lbl_8007FDF8:
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(v1)             # 00000058
    addiu   v0, v0, 0x0008             # v0 = 00000068
    sw      $zero, 0x0004(v1)          # 0000005C
lbl_8007FE08:
    bne     t0, $zero, lbl_8007FE8C
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t8, 0x0108(t7)             # 80120108
    bnel    t8, $zero, lbl_8007FE90
    lhu     t5, 0x0008(a0)             # 00000010
    sh      t2, 0x0006(a0)             # 0000000E
    sh      t3, 0x000E(a0)             # 00000016
    sw      a0, 0x0018($sp)
    jal     func_800D3070
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lhu     t9, 0x003E($sp)
    lui     $at, 0x0020                # $at = 00200000
    or      v1, v0, $zero              # v1 = 00000000
    or      t5, t9, $at                # t5 = 00200000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, t5, $at
    lui     $at, 0xEF00                # $at = EF000000
    or      t7, t6, $at                # t7 = EF000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a1, v0, $zero              # a1 = 00000008
    lui     t9, 0x0A00                 # t9 = 0A000000
    sw      t9, 0x0000(a1)             # 00000008
    sw      a0, 0x0004(a1)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    b       lbl_8007FF2C
    or      v1, v0, $zero              # v1 = 00000010
lbl_8007FE8C:
    lhu     t5, 0x0008(a0)             # 00000008
lbl_8007FE90:
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    sh      t2, 0x0006(a0)             # 00000006
    sh      t3, 0x000E(a0)             # 0000000E
    sh      a3, 0x001C(a0)             # 0000001C
    sh      a3, 0x001E(a0)             # 0000001E
    sw      t5, 0x0020(a0)             # 00000020
    lhu     t8, 0x003E($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    ori     t9, t8, 0x0CF0             # t9 = 00000CF1
    and     t5, t9, $at
    or      v1, v0, $zero              # v1 = 00000010
    lui     $at, 0xEF00                # $at = EF000000
    lui     t7, 0x00A0                 # t7 = 00A00000
    ori     t7, t7, 0x3009             # t7 = 00A03009
    or      t6, t5, $at                # t6 = EF200000
    sw      t6, 0x0000(v1)             # 00000010
    sw      t7, 0x0004(v1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      a1, v0, $zero              # a1 = 00000018
    lui     t8, 0xFCFF                 # t8 = FCFF0000
    lui     t9, 0xFFFC                 # t9 = FFFC0000
    ori     t9, t9, 0xFC7E             # t9 = FFFCFC7E
    ori     t8, t8, 0xFFFF             # t8 = FCFFFFFF
    sw      t8, 0x0000(a1)             # 00000018
    sw      t9, 0x0004(a1)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      a2, v0, $zero              # a2 = 00000020
    lui     t5, 0x0B00                 # t5 = 0B000000
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sw      t6, 0x0004(a2)             # 00000024
    sw      t5, 0x0000(a2)             # 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      v1, v0, $zero              # v1 = 00000028
    lui     t7, 0x0900                 # t7 = 09000000
    sw      t7, 0x0000(v1)             # 00000028
    sw      a0, 0x0004(v1)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      v1, v0, $zero              # v1 = 00000030
lbl_8007FF2C:
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000030
    sw      $zero, 0x0004(v1)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    lw      t9, 0x0020($sp)
    sw      v0, 0x0000(t9)             # FFFCFC7E
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8007FF50:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a3, 0x0044($sp)
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    sw      $ra, 0x0034($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     t6, 0x004A($sp)
    lbu     t7, 0x004F($sp)
    lbu     t8, 0x0053($sp)
    lhu     t9, 0x0056($sp)
    lhu     t0, 0x005A($sp)
    sw      t6, 0x0010($sp)
    swc1    $f0, 0x0024($sp)
    swc1    $f0, 0x0028($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8007FC54
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8007FFA8:
# draw pre-rendered background?
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x00A0($sp)
    sw      a1, 0x00A4($sp)
    lw      t6, 0x00A0($sp)
    lw      t3, 0x00A4($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    lh      t7, 0x07A0(t6)             # 000007A0
    lw      s0, 0x0000(t6)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      t2, 0x0790(t9)             # 00000790
    lui     t6, 0x8012                 # t6 = 80120000
    andi    v1, a2, 0x0001             # v1 = 00000000
    sw      t2, 0x009C($sp)
    lw      t1, 0x0008(t3)             # 00000008
    lh      a3, 0x0142(t2)             # 00000142
    sltu    v1, $zero, v1
    lw      v0, 0x0004(t1)             # 00000004
    xori    a3, a3, 0x0019             # a3 = 00000019
    sltiu   a3, a3, 0x0001
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t7, t5,  2
    addu    t6, t6, t7
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t6, t8
    addu    t2, t9, $at
    sw      t2, 0x0090($sp)
    beq     v1, $zero, lbl_80080068
    or      t0, v1, $zero              # t0 = 00000000
    sltu    t0, $zero, a3
    beq     t0, $zero, lbl_80080068
    nop
    lw      t0, 0x0008(t1)             # 00000008
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xBA00             # a3 = 8011BA00
    sltu    t0, $zero, t0
    beq     t0, $zero, lbl_80080068
    nop
    lw      t3, 0x0000(a3)             # 8011BA00
    lh      t0, 0x0106(t3)             # 00000106
    andi    t0, t0, 0x0001             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_80080068:
    lui     a3, 0x8012                 # a3 = 80120000
    or      a1, t0, $zero              # a1 = 00000000
    addiu   a3, a3, 0xBA00             # a3 = 8011BA00
    beq     v1, $zero, lbl_800800A0
    or      t0, v1, $zero              # t0 = 00000000
    lw      t4, 0x0090($sp)
    lw      t0, 0x0000(t4)             # 00000000
    sltu    t0, $zero, t0
    beql    t0, $zero, lbl_800800A4
    or      a0, t0, $zero              # a0 = 00000000
    lw      t5, 0x0000(a3)             # 8011BA00
    lh      t0, 0x0106(t5)             # 00000106
    andi    t0, t0, 0x0002             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_800800A0:
    or      a0, t0, $zero              # a0 = 00000000
lbl_800800A4:
    andi    v0, a2, 0x0002             # v0 = 00000000
    sltu    t0, $zero, v0
    beq     t0, $zero, lbl_800800D4
    lw      t7, 0x0090($sp)
    lw      t0, 0x0004(t7)             # 00000004
    sltu    t0, $zero, t0
    beq     t0, $zero, lbl_800800D4
    nop
    lw      t6, 0x0000(a3)             # 8011BA00
    lh      t0, 0x0106(t6)             # 80120106
    andi    t0, t0, 0x0004             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_800800D4:
    bnel    a0, $zero, lbl_800800E8
    lw      v1, 0x02C0(s0)             # 000002C0
    beq     a1, $zero, lbl_800802C8
    nop
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_800800E8:
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x000C             # t9 = DB06000C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x00A4($sp)
    lw      t3, 0x000C(t2)             # 0000000C
    sw      t3, 0x0004(v1)             # 00000004
    beq     a0, $zero, lbl_80080174
    lw      t4, 0x00A0($sp)
    lw      a0, 0x0000(t4)             # 00000000
    sw      t1, 0x0094($sp)
    sw      t0, 0x0048($sp)
    jal     func_8007E298
    sw      a1, 0x0088($sp)
    lw      a1, 0x0088($sp)
    lw      t0, 0x0048($sp)
    lw      t1, 0x0094($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    addiu   t6, t6, 0xEDB0             # t6 = 800FEDB0
    ori     t7, t7, 0x0003             # t7 = DA380003
    sw      t7, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0090($sp)
    lw      t3, 0x0000(t2)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
lbl_80080174:
    beq     a1, $zero, lbl_800802C8
    lui     t5, 0xE100                 # t5 = E1000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0011                 # t7 = 00110000
    addiu   t7, t7, 0x49E0             # t7 = 001149E0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDD00                 # t8 = DD000000
    lui     t9, 0x000E                 # t9 = 000E0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    addiu   t9, t9, 0x5300             # t9 = 000E5300
    ori     t8, t8, 0x07FF             # t8 = DD0007FF
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      t2, 0x02C0(s0)             # 000002C0
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFBC
    lw      a1, 0x009C($sp)
    sw      t2, 0x0098($sp)
    sw      t0, 0x0048($sp)
    jal     func_80049D34
    sw      t1, 0x0094($sp)
    lwc1    $f4, 0x005C($sp)
    lwc1    $f6, 0x0064($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x75D8($at)         # 80108A28
    lwc1    $f8, 0x0060($sp)
    add.s   $f0, $f4, $f6
    lw      t1, 0x0094($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f16, $f8, $f10
    lwc1    $f18, -0x75D4($at)         # 80108A2C
    lhu     t3, 0x0016(t1)             # 00000016
    lw      a1, 0x0008(t1)             # 00000008
    mul.s   $f4, $f0, $f18
    lw      a2, 0x0010(t1)             # 00000010
    lhu     a3, 0x0014(t1)             # 00000014
    sw      t3, 0x0010($sp)
    lbu     t4, 0x0018(t1)             # 00000018
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x75D0($at)         # 80108A30
    add.s   $f6, $f4, $f16
    lui     $at, 0x8011                # $at = 80110000
    sw      t4, 0x0014($sp)
    mul.s   $f18, $f8, $f10
    lwc1    $f4, -0x75CC($at)          # 80108A34
    lbu     t5, 0x0019(t1)             # 00000019
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFF8
    mul.s   $f16, $f0, $f4
    sw      t5, 0x0018($sp)
    lhu     t7, 0x001A(t1)             # 0000001A
    sw      t7, 0x001C($sp)
    lhu     t6, 0x001C(t1)             # 0000001C
    swc1    $f6, 0x0024($sp)
    add.s   $f6, $f18, $f16
    sw      t6, 0x0020($sp)
    jal     func_8007FC54
    swc1    $f6, 0x0028($sp)
    lw      t0, 0x0048($sp)
    lw      t8, 0x0098($sp)
    sw      t8, 0x02C0(s0)             # 000002C0
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xE100                 # t2 = E1000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    sw      t0, 0x0048($sp)
    jal     func_800ACAEC
    sw      v1, 0x0058($sp)
    lw      a0, 0x0058($sp)
    lui     t4, 0xDD00                 # t4 = DD000000
    ori     t4, t4, 0x07FF             # t4 = DD0007FF
    sw      v0, 0x0004(a0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_800ACADC
    sw      v1, 0x0058($sp)
    lw      a0, 0x0058($sp)
    lw      t0, 0x0048($sp)
    sw      v0, 0x0004(a0)             # 00000004
lbl_800802C8:
    beql    t0, $zero, lbl_80080350
    lw      $ra, 0x003C($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x000C             # t7 = DB06000C
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t6, 0x00A4($sp)
    lw      t8, 0x000C(t6)             # 0000000C
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x00A0($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xEDB0             # t2 = 800FEDB0
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E2C0
    sw      t2, 0x0044($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t5, 0x0044($sp)
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t8, 0x0090($sp)
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0004(v0)             # 00000004
    lw      $ra, 0x003C($sp)
lbl_80080350:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0
    jr      $ra
    nop


func_80080360:
# ../z_room.c related.
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x07A0(a3)             # 000007A0
    addiu   a0, a3, 0x07C0             # a0 = 000007C0
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    sll     t7, t6,  2
    addu    t8, a3, t7
    lw      v0, 0x0790(t8)             # 00000790
    lh      a1, 0x0148(v0)             # 00000148
    sw      a3, 0x0024($sp)
    jal     func_80034290
    sw      a1, 0x0018($sp)
    lh      v1, 0x000E(v0)             # 0000000E
    lw      a1, 0x0018($sp)
    lw      t0, 0x0020($sp)
    bltz    v1, lbl_800803B0
    lw      t9, 0x0024($sp)
    or      a1, v1, $zero              # a1 = 00000000
lbl_800803B0:
    lw      a2, 0x1C44(t9)             # 00001C44
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lh      t1, 0x001C(a2)             # 0000001C
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t2, t1, 0xFF00             # t2 = 00000000
    or      t3, t2, a1                 # t3 = 00000000
    sh      t3, 0x001C(a2)             # 0000001C
    lw      a3, 0x000C(t0)             # 0000000C
    lbu     a0, 0x0008(t0)             # 00000008
    sll     t4, a3,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t8, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t7, t8
    blez    a0, lbl_80080428
    addu    v1, v1, $at
lbl_80080404:
    lbu     t9, 0x0002(v1)             # 00000002
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, v0, a0
    bne     a1, t9, lbl_80080420
    nop
    b       lbl_8008043C
    or      v0, v1, $zero              # v0 = 00000000
lbl_80080420:
    bne     $at, $zero, lbl_80080404
    addiu   v1, v1, 0x001C             # v1 = 0000001C
lbl_80080428:
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8A10             # a0 = 80108A10
    jal     func_800AF734
    addiu   a1, $zero, 0x02D4          # a1 = 000002D4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008043C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008044C:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      a1, 0x00AC($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x00A8($sp)
    sw      a2, 0x00B0($sp)
    lh      t6, 0x07A0(a1)             # 000007A0
    lw      t3, 0x00AC($sp)
    lw      s0, 0x0000(a1)             # 00000000
    sll     t7, t6,  2
    addu    t8, a1, t7
    lw      v1, 0x0790(t8)             # 00000790
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lh      t9, 0x0142(v1)             # 00000142
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    xori    t2, t9, 0x0019             # t2 = 00000019
    sltiu   t2, t2, 0x0001
    sw      t2, 0x0090($sp)
    lw      a0, 0x0008(t3)             # 00000008
    lw      v0, 0x0004(a0)             # 00000004
    sw      a1, 0x00A8($sp)
    sw      v1, 0x00A4($sp)
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t2, t9, $at
    jal     func_80080360
    sw      t2, 0x0094($sp)
    lw      a2, 0x00B0($sp)
    or      t1, v0, $zero              # t1 = 00000000
    lw      v1, 0x0090($sp)
    andi    a0, a2, 0x0001             # a0 = 00000000
    sltu    a0, $zero, a0
    beq     a0, $zero, lbl_80080528
    or      t0, a0, $zero              # t0 = 00000000
    sltu    t0, $zero, v1
    beq     t0, $zero, lbl_80080528
    nop
    lw      t0, 0x0004(v0)             # 00000004
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    sltu    t0, $zero, t0
    beq     t0, $zero, lbl_80080528
    nop
    lw      t3, 0x0000(v1)             # 8011BA00
    lh      t0, 0x0106(t3)             # 00000106
    andi    t0, t0, 0x0001             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_80080528:
    lui     v1, 0x8012                 # v1 = 80120000
    or      a1, t0, $zero              # a1 = 00000000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    beq     a0, $zero, lbl_80080560
    or      t0, a0, $zero              # t0 = 00000000
    lw      t4, 0x0094($sp)
    lw      t0, 0x0000(t4)             # 00000000
    sltu    t0, $zero, t0
    beql    t0, $zero, lbl_80080564
    or      a0, t0, $zero              # a0 = 00000000
    lw      t5, 0x0000(v1)             # 8011BA00
    lh      t0, 0x0106(t5)             # 00000106
    andi    t0, t0, 0x0002             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_80080560:
    or      a0, t0, $zero              # a0 = 00000000
lbl_80080564:
    andi    v0, a2, 0x0002             # v0 = 00000000
    sltu    t0, $zero, v0
    beq     t0, $zero, lbl_80080594
    lw      t6, 0x0094($sp)
    lw      t0, 0x0004(t6)             # 00000004
    sltu    t0, $zero, t0
    beq     t0, $zero, lbl_80080594
    nop
    lw      t7, 0x0000(v1)             # 8011BA00
    lh      t0, 0x0106(t7)             # 00000106
    andi    t0, t0, 0x0004             # t0 = 00000000
    sltiu   t0, t0, 0x0001
lbl_80080594:
    bnel    a0, $zero, lbl_800805A8
    lw      v1, 0x02C0(s0)             # 000002C0
    beq     a1, $zero, lbl_80080788
    nop
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_800805A8:
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x000C             # t9 = DB06000C
    addiu   t8, v1, 0x0008             # t8 = 8011BA08
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 8011BA00
    lw      t2, 0x00AC($sp)
    lw      t3, 0x000C(t2)             # 0000000C
    sw      t3, 0x0004(v1)             # 8011BA04
    beq     a0, $zero, lbl_80080634
    lw      t4, 0x00A8($sp)
    lw      a0, 0x0000(t4)             # 00000000
    sw      t1, 0x0098($sp)
    sw      t0, 0x004C($sp)
    jal     func_8007E298
    sw      a1, 0x008C($sp)
    lw      a1, 0x008C($sp)
    lw      t0, 0x004C($sp)
    lw      t1, 0x0098($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    addiu   t7, t7, 0xEDB0             # t7 = 800FEDB0
    ori     t6, t6, 0x0003             # t6 = DA380003
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0094($sp)
    lw      t3, 0x0000(t2)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
lbl_80080634:
    beq     a1, $zero, lbl_80080788
    lui     t5, 0xE100                 # t5 = E1000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0011                 # t6 = 00110000
    addiu   t6, t6, 0x49E0             # t6 = 001149E0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDD00                 # t8 = DD000000
    lui     t9, 0x000E                 # t9 = 000E0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    addiu   t9, t9, 0x5300             # t9 = 000E5300
    ori     t8, t8, 0x07FF             # t8 = DD0007FF
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      t2, 0x02C0(s0)             # 000002C0
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFB8
    lw      a1, 0x00A4($sp)
    sw      t2, 0x00A0($sp)
    sw      t0, 0x004C($sp)
    jal     func_80049D34
    sw      t1, 0x0098($sp)
    lwc1    $f4, 0x0060($sp)
    lwc1    $f6, 0x0068($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x75C8($at)         # 80108A38
    lwc1    $f8, 0x0064($sp)
    add.s   $f0, $f4, $f6
    lw      t1, 0x0098($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f16, $f8, $f10
    lwc1    $f18, -0x75C4($at)         # 80108A3C
    lhu     t3, 0x0012(t1)             # 00000012
    lw      a1, 0x0004(t1)             # 00000004
    mul.s   $f4, $f0, $f18
    lw      a2, 0x000C(t1)             # 0000000C
    lhu     a3, 0x0010(t1)             # 00000010
    sw      t3, 0x0010($sp)
    lbu     t4, 0x0014(t1)             # 00000014
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x75C0($at)         # 80108A40
    add.s   $f6, $f4, $f16
    lui     $at, 0x8011                # $at = 80110000
    sw      t4, 0x0014($sp)
    mul.s   $f18, $f8, $f10
    lwc1    $f4, -0x75BC($at)          # 80108A44
    lbu     t5, 0x0015(t1)             # 00000015
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFF8
    mul.s   $f16, $f0, $f4
    sw      t5, 0x0018($sp)
    lhu     t6, 0x0016(t1)             # 00000016
    sw      t6, 0x001C($sp)
    lhu     t7, 0x0018(t1)             # 00000018
    swc1    $f6, 0x0024($sp)
    add.s   $f6, $f18, $f16
    sw      t7, 0x0020($sp)
    jal     func_8007FC54
    swc1    $f6, 0x0028($sp)
    lw      t0, 0x004C($sp)
    lw      t8, 0x00A0($sp)
    sw      t8, 0x02C0(s0)             # 000002C0
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xE100                 # t2 = E1000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    sw      t0, 0x004C($sp)
    jal     func_800ACAEC
    sw      v1, 0x005C($sp)
    lw      a0, 0x005C($sp)
    lui     t4, 0xDD00                 # t4 = DD000000
    ori     t4, t4, 0x07FF             # t4 = DD0007FF
    sw      v0, 0x0004(a0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_800ACADC
    sw      v1, 0x005C($sp)
    lw      a0, 0x005C($sp)
    lw      t0, 0x004C($sp)
    sw      v0, 0x0004(a0)             # 00000004
lbl_80080788:
    beql    t0, $zero, lbl_80080810
    lw      $ra, 0x003C($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x000C             # t6 = DB06000C
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x00AC($sp)
    lw      t8, 0x000C(t7)             # 0000000C
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x00A8($sp)
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xEDB0             # t2 = 800FEDB0
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8007E2C0
    sw      t2, 0x0048($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t5, 0x0048($sp)
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0094($sp)
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0004(v0)             # 00000004
    lw      $ra, 0x003C($sp)
lbl_80080810:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8
    jr      $ra
    nop


func_80080820:
# Room Command 0x0A, Type 1
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0008(a1)             # 00000008
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     v1, 0x0001(v0)             # 00000001
    bnel    v1, $at, lbl_80080850
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_8007FFA8
    nop
    b       lbl_8008087C
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80080850:
    bne     v1, $at, lbl_80080868
    nop
    jal     func_8008044C
    nop
    b       lbl_8008087C
    lw      $ra, 0x0014($sp)
lbl_80080868:
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8A1C             # a0 = 80108A1C
    jal     func_800AF734
    addiu   a1, $zero, 0x0351          # a1 = 00000351
    lw      $ra, 0x0014($sp)
lbl_8008087C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80080888:
    sw      a0, 0x0000($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sb      t6, 0x0000(a1)             # 00000000
    sw      $zero, 0x000C(a1)          # 0000000C
    jr      $ra
    nop


func_800808A0:
# Initial Room Allocation
# Allocates space for two rooms
# Result is whichever's bigger: largest room file, or sum of two rooms linked by the transition actor list
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    lw      t4, 0x0058($sp)
    lui     $at, 0x0001                # $at = 00010000
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t4, t4, $at
    lbu     a2, 0x1DEC(t4)             # 00001DEC
    lw      t3, 0x1DF0(t4)             # 00001DF0
    or      t0, $zero, $zero           # t0 = 00000000
    blez    a2, lbl_80080910
    or      a3, t3, $zero              # a3 = 00000000
    or      v0, a3, $zero              # v0 = 00000000
    sll     a1, a2,  3
lbl_800808E4:
    lw      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x0000(v0)             # 00000000
    addiu   v1, v1, 0x0008             # v1 = 00000008
    subu    a0, t6, t7
    sltu    $at, s0, a0
    beql    $at, $zero, lbl_80080908
    slt     $at, v1, a1
    or      s0, a0, $zero              # s0 = 00000000
    slt     $at, v1, a1
lbl_80080908:
    bne     $at, $zero, lbl_800808E4
    addiu   v0, v0, 0x0008             # v0 = 00000008
lbl_80080910:
    lbu     v0, 0x1D34(t4)             # 00001D34
    or      t1, t3, $zero              # t1 = 00000000
    beq     v0, $zero, lbl_800809A0
    or      t2, v0, $zero              # t2 = 00000008
    blez    v0, lbl_800809A0
    lw      a3, 0x1D38(t4)             # 00001D38
lbl_80080928:
    lb      a2, 0x0000(a3)             # 00000000
    addiu   t0, t0, 0x0001             # t0 = 00000001
    lb      a0, 0x0002(a3)             # 00000002
    bgez    a2, lbl_80080944
    sll     t8, a2,  3
    b       lbl_80080954
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80080944:
    addu    v0, t1, t8
    lw      t9, 0x0004(v0)             # 0000000C
    lw      t5, 0x0000(v0)             # 00000008
    subu    a1, t9, t5
lbl_80080954:
    bgez    a0, lbl_80080964
    sll     t6, a0,  3
    b       lbl_80080974
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80080964:
    addu    v0, t1, t6
    lw      t7, 0x0004(v0)             # 0000000C
    lw      t8, 0x0000(v0)             # 00000008
    subu    v1, t7, t8
lbl_80080974:
    beq     a2, a0, lbl_80080984
    or      v0, a1, $zero              # v0 = 00000000
    b       lbl_80080984
    addu    v0, a1, v1
lbl_80080984:
    sltu    $at, s0, v0
    beql    $at, $zero, lbl_80080998
    slt     $at, t0, t2
    or      s0, v0, $zero              # s0 = 00000000
    slt     $at, t0, t2
lbl_80080998:
    bne     $at, $zero, lbl_80080928
    addiu   a3, a3, 0x0010             # a3 = 00000010
lbl_800809A0:
    lw      a0, 0x0058($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t4, 0x0020($sp)
    jal     func_800A01B8
    addiu   a0, a0, 0x0074             # a0 = 00000074
    lw      t9, 0x005C($sp)
    lw      t4, 0x0020($sp)
    addu    t5, v0, s0
    sw      v0, 0x0028(t9)             # 00000028
    lw      t6, 0x005C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      t5, 0x002C(t6)             # 0000002C
    lw      t7, 0x005C($sp)
    sb      $zero, 0x0030(t7)          # 00000030
    lw      t8, 0x005C($sp)
    sb      $zero, 0x0031(t8)          # 00000031
    lw      v1, 0x1364(a0)             # 8011B934
    blez    v1, lbl_80080A04
    sll     t9, v1,  3
    subu    t9, t9, v1
    sll     t9, t9,  2
    addu    t5, a0, t9
    b       lbl_80080A18
    lbu     a2, 0x135E(t5)             # 0000135E
lbl_80080A04:
    lbu     t7, 0x1DEA(t4)             # 00001DEA
    lw      t6, 0x1E00(t4)             # 00001E00
    sll     t8, t7,  1
    addu    t9, t6, t8
    lbu     a2, 0x0001(t9)             # 00000001
lbl_80080A18:
    lw      a0, 0x0058($sp)
    jal     func_80080A3C
    lw      a1, 0x005C($sp)
    or      v0, s0, $zero              # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80080A3C:
# Load Room
# A0 = Global Context
# A1 = Global Context + 0x11CBC (Room Context)
# A2 = Room ID
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lb      t6, 0x0031(s0)             # 00000031
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bnel    t6, $zero, lbl_80080B90
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0000(s0)             # 00000000
    lw      t7, 0x0004(s0)             # 00000004
    sb      a3, 0x0000(s0)             # 00000000
    sw      t8, 0x0014(s0)             # 00000014
    lw      t8, 0x0008(s0)             # 00000008
    sw      t7, 0x0018(s0)             # 00000018
    lw      t7, 0x000C(s0)             # 0000000C
    sw      t8, 0x001C(s0)             # 0000001C
    lw      t8, 0x0010(s0)             # 00000010
    sw      $zero, 0x000C(s0)          # 0000000C
    sb      t9, 0x0031(s0)             # 00000031
    sw      t7, 0x0020(s0)             # 00000020
    sw      t8, 0x0024(s0)             # 00000024
    lw      t0, 0x0040($sp)
    lui     $at, 0x0001                # $at = 00010000
    sll     t1, a3,  3
    addu    t0, t0, $at
    lw      t3, 0x1DF0(t0)             # 00001DF0
    lbu     v1, 0x0030(s0)             # 00000030
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    addu    v0, t3, t1
    lw      t4, 0x0004(v0)             # 00000004
    lw      t5, 0x0000(v0)             # 00000000
    sll     t6, v1,  2
    addu    t7, s0, t6
    subu    t2, t4, t5
    addiu   t9, t2, 0x0008             # t9 = 00000008
    multu   t9, v1
    lw      t8, 0x0028(t7)             # 00000028
    addiu   a0, s0, 0x0058             # a0 = 00000058
    addiu   a1, s0, 0x0070             # a1 = 00000070
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mflo    t3
    subu    t4, t8, t3
    addiu   t5, t4, 0x0008             # t5 = 00000008
    and     t6, t5, $at
    sw      t6, 0x0034(s0)             # 00000034
    sw      t2, 0x003C($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0038($sp)
    sw      a3, 0x0048($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0030($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    lw      a3, 0x0048($sp)
    lw      t0, 0x0038($sp)
    beq     v0, $zero, lbl_80080B4C
    lw      t1, 0x0034($sp)
    lw      v1, 0x0008(v0)             # 80120008
    lw      a0, 0x0040($sp)
    or      a1, s0, $zero              # a1 = 00000000
    beql    v1, $zero, lbl_80080B50
    lw      t7, 0x1DF0(t0)             # 00001DF0
    jalr    $ra, v1
    or      a2, a3, $zero              # a2 = 00000000
    b       lbl_80080B7C
    lbu     t3, 0x0030(s0)             # 00000030
lbl_80080B4C:
    lw      t7, 0x1DF0(t0)             # 00001DF0
lbl_80080B50:
    lw      t8, 0x0030($sp)
    lw      a1, 0x0034(s0)             # 00000034
    addu    t9, t7, t1
    lw      a2, 0x0000(t9)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0038             # a0 = 00000038
    lw      a3, 0x003C($sp)
    jal     func_80000D28
    sw      t8, 0x0014($sp)
    lbu     t3, 0x0030(s0)             # 00000030
lbl_80080B7C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    xori    t4, t3, 0x0001             # t4 = 00000001
    b       lbl_80080B90
    sb      t4, 0x0030(s0)             # 00000030
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80080B90:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80080BA4:
# Update? Room
# A0 = Global Context
# A1 = Room Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lb      t6, 0x0031(a3)             # 00000031
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, a3, 0x0058             # a0 = 00000058
    bne     t6, $at, lbl_80080C30
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80002030              # osRecvMesg
    sw      a3, 0x0024($sp)
    bne     v0, $zero, lbl_80080C28
    lw      a3, 0x0024($sp)
    lw      v0, 0x0034(a3)             # 00000034
    lui     $at, 0x8000                # $at = 80000000
    sb      $zero, 0x0031(a3)          # 00000031
    addu    t7, v0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, 0x000C(a3)             # 0000000C
    sw      t7, 0x0C44($at)            # 80120C44
    lw      a1, 0x000C(a3)             # 0000000C
    jal     func_800817A0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80079200
    lw      a1, 0x1C44(s0)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80025488
    addiu   a1, s0, 0x1C24             # a1 = 00001C24
    b       lbl_80080C34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80080C28:
    b       lbl_80080C34
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80080C30:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80080C34:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80080C48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x000C(a1)             # 0000000C
    lui     $at, 0x8000                # $at = 80000000
    beq     v0, $zero, lbl_80080C88
    addu    t6, v0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, 0x0C44($at)            # 80120C44
    lw      t7, 0x0008(a1)             # 00000008
    lui     $at, 0x8010                # $at = 80100000
    lbu     t8, 0x0000(t7)             # 00000000
    sll     t9, t8,  2
    addu    $at, $at, t9
    lw      t9, -0x7420($at)           # 800F8BE0
    jalr    $ra, t9
    nop
lbl_80080C88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80080C98:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sb      t6, 0x0014(a2)             # 00000014
    sw      $zero, 0x0020(a2)          # 00000020
    addiu   a1, s0, 0x1C24             # a1 = 00001C24
    sw      a1, 0x0024($sp)
    sw      a2, 0x002C($sp)
    jal     func_80024DB8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80025488
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006C1F0
    lb      a1, 0x0000(t7)             # 00000000
    lh      v0, 0x00A4(s0)             # 000000A4
    slti    $at, v0, 0x0051
    bne     $at, $zero, lbl_80080D00
    slti    $at, v0, 0x0064
    bnel    $at, $zero, lbl_80080D0C
    lui     a0, 0x0001                 # a0 = 00010000
lbl_80080D00:
    jal     func_8006BC70
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0001                 # a0 = 00010000
lbl_80080D0C:
    addu    a0, a0, s0
    jal     func_800C73E0
    lb      a0, 0x1CC0(a0)             # 00011CC0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
