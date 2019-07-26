# "Animation" part of the code file
#
# Handles the animation of actors such as Link.
#
# General Documentation about Animations:
# https://wiki.cloudmodding.com/oot/Animation_Format
#
# Starts at VRAM: 80088DF0 / VROM: AFED50
#

.section .text
func_80088DF0:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      a0, 0x0060($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0060($sp)
    lw      t7, 0x0000(t6)             # 00000000
    jal     func_800AA6EC
    sw      t7, 0x0040($sp)
    lw      t8, 0x0068($sp)
    sll     t9, s0,  2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addu    t0, t8, t9
    lw      v0, 0x0000(t0)             # 00000000
    lw      t7, 0x006C($sp)
    sll     t8, s0,  2
    subu    t8, t8, s0
    sll     t8, t8,  1
    sll     t2, v0,  4
    srl     t3, t2, 28
    addu    t9, t7, t8
    lwl     t2, 0x0000(t9)             # 00000000
    lwr     t2, 0x0003(t9)             # 00000003
    sll     t4, t3,  2
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFE4
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t2, 0x0000(t6)             # FFFFFFE4
    lhu     t2, 0x0004(t9)             # 00000004
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s1, t1, t5
    addu    s1, s1, $at
    sh      t2, 0x0004(t6)             # FFFFFFE8
    lh      t3, 0x0000(s1)             # 00000000
    lw      t5, 0x007C($sp)
    lw      t9, 0x0070($sp)
    mtc1    t3, $f4                    # $f4 = 0.00
    sll     t7, t5,  2
    addu    t8, s1, t7
    cvt.s.w $f6, $f4
    lw      a0, 0x0060($sp)
    addiu   t0, $sp, 0x0044            # t0 = FFFFFFE4
    or      a1, s0, $zero              # a1 = 00000001
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFEC
    swc1    $f6, 0x004C($sp)
    lh      t4, 0x0002(s1)             # 00000002
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0050($sp)
    lh      t1, 0x0004(s1)             # 00000004
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0054($sp)
    lw      t6, 0x0008(t8)             # 00000008
    beq     t9, $zero, lbl_80088F0C
    sw      t6, 0x0058($sp)
    lw      t2, 0x0078($sp)
    sw      t0, 0x0010($sp)
    jalr    $ra, t9
    sw      t2, 0x0014($sp)
    bne     v0, $zero, lbl_80088F78
lbl_80088F0C:
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFEC
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFE4
    lw      t3, 0x0058($sp)
    lw      v0, 0x0040($sp)
    beql    t3, $zero, lbl_80088F7C
    lw      t2, 0x0074($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t5, 0x0060($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      a1, 0x0038($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t7, 0x0040($sp)
    lw      v1, 0x02C0(t7)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t7)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t0, 0x0058($sp)
    sw      t0, 0x0004(v1)             # 00000004
lbl_80088F78:
    lw      t2, 0x0074($sp)
lbl_80088F7C:
    lw      a0, 0x0060($sp)
    or      a1, s0, $zero              # a1 = 00000001
    beq     t2, $zero, lbl_80088F9C
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF8
    lw      t9, 0x0078($sp)
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFE4
    jalr    $ra, t2
    sw      t9, 0x0010($sp)
lbl_80088F9C:
    lbu     a1, 0x0006(s1)             # 00000006
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
    lw      a0, 0x0060($sp)
    beq     s0, a1, lbl_80088FD8
    lw      a2, 0x0068($sp)
    lw      t3, 0x0070($sp)
    lw      t4, 0x0074($sp)
    lw      t1, 0x0078($sp)
    lw      t5, 0x007C($sp)
    lw      a3, 0x006C($sp)
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      t1, 0x0018($sp)
    jal     func_80088DF0
    sw      t5, 0x001C($sp)
lbl_80088FD8:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s1)             # 00000007
    lw      a0, 0x0060($sp)
    lw      a2, 0x0068($sp)
    beq     s0, a1, lbl_80089018
    lw      a3, 0x006C($sp)
    lw      t8, 0x0070($sp)
    lw      t7, 0x0074($sp)
    lw      t6, 0x0078($sp)
    lw      t0, 0x007C($sp)
    sw      t8, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0018($sp)
    jal     func_80088DF0
    sw      t0, 0x001C($sp)
lbl_80089018:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_8008902C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0064($sp)
    lw      t7, 0x0060($sp)
    beql    t6, $zero, lbl_80089210
    lw      $ra, 0x0024($sp)
    lw      t8, 0x0000(t7)             # 00000000
    jal     func_800AA6EC
    sw      t8, 0x003C($sp)
    lw      t9, 0x0064($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t9)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0068($sp)
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t6, t5, $at
    sw      t6, 0x005C($sp)
    lh      t7, 0x0000(v1)             # 00000000
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFE0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE8
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0048($sp)
    lh      t8, 0x0002(v1)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x004C($sp)
    lh      t9, 0x0004(v1)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    addiu   t9, $sp, 0x0040            # t9 = FFFFFFE0
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0050($sp)
    lwl     t3, 0x0006(v1)             # 00000006
    lwr     t3, 0x0009(v1)             # 00000009
    sw      t3, 0x0000(t1)             # FFFFFFE0
    lhu     t3, 0x000A(v1)             # 0000000A
    sh      t3, 0x0004(t1)             # FFFFFFE4
    lw      t4, 0x0078($sp)
    lw      t0, 0x005C($sp)
    lw      t8, 0x006C($sp)
    sll     t5, t4,  2
    addu    t6, t0, t5
    lw      t7, 0x0008(t6)             # 00000008
    lw      a0, 0x0060($sp)
    beq     t8, $zero, lbl_80089134
    sw      t7, 0x0054($sp)
    lw      t1, 0x0074($sp)
    sw      t9, 0x0010($sp)
    jalr    $ra, t8
    sw      t1, 0x0014($sp)
    bne     v0, $zero, lbl_800891A0
lbl_80089134:
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE0
    lw      t2, 0x0054($sp)
    lw      v0, 0x003C($sp)
    beql    t2, $zero, lbl_800891A4
    lw      v0, 0x0070($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t0, 0x0060($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      a1, 0x0034($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t5, 0x003C($sp)
    lw      v1, 0x02C0(t5)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t5)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t9, 0x0054($sp)
    sw      t9, 0x0004(v1)             # 00000004
lbl_800891A0:
    lw      v0, 0x0070($sp)
lbl_800891A4:
    lw      a0, 0x0060($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_800891C8
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    lw      t1, 0x0074($sp)
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE0
    jalr    $ra, v0
    sw      t1, 0x0010($sp)
    lw      v0, 0x0070($sp)
lbl_800891C8:
    lw      t8, 0x005C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0060($sp)
    lbu     a1, 0x0006(t8)             # 00000006
    lw      a2, 0x0064($sp)
    lw      a3, 0x0068($sp)
    beq     a1, $at, lbl_80089204
    lw      t2, 0x006C($sp)
    lw      t3, 0x0074($sp)
    lw      t4, 0x0078($sp)
    sw      t2, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      t3, 0x0018($sp)
    jal     func_80088DF0
    sw      t4, 0x001C($sp)
lbl_80089204:
    jal     func_800AA724
    nop
    lw      $ra, 0x0024($sp)
lbl_80089210:
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_8008921C:
# Draw Link Limb?
# A0 = Global Context
# A1 = Limb Index
# A2 = Limb Data Pointer
# A3 = Link Instance + 0x1F0 (animation data)
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    jal     func_800AA6EC
    nop
    lw      t7, 0x0074($sp)
    lw      t6, 0x0078($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v0, 0x0000(t9)             # 00000000
    addiu   t5, t7, 0x0001             # t5 = 00000001
    lw      t8, 0x007C($sp)
    sll     t9, t5,  2
    sll     t1, v0,  4
    srl     t2, t1, 28
    subu    t9, t9, t5
    sll     t3, t2,  2
    sll     t9, t9,  1
    addu    t4, t4, t3
    sw      t5, 0x0074($sp)
    addu    t1, t8, t9
    lwl     t3, 0x0000(t1)             # 00000000
    lwr     t3, 0x0003(t1)             # 00000003
    lw      t4, 0x0C38(t4)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFE0
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t3, 0x0000(t6)             # FFFFFFE0
    lhu     t3, 0x0004(t1)             # 00000004
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s0, t0, t4
    addu    s0, s0, $at
    sh      t3, 0x0004(t6)             # FFFFFFE4
    lh      t0, 0x0000(s0)             # 00000000
    lw      t5, 0x008C($sp)
    lw      t1, 0x0080($sp)
    mtc1    t0, $f4                    # $f4 = 0.00
    sll     t8, t5,  2
    addu    t9, s0, t8
    cvt.s.w $f6, $f4
    lw      a1, 0x0074($sp)
    lw      a0, 0x0070($sp)
    addiu   t2, $sp, 0x0050            # t2 = FFFFFFE0
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
    swc1    $f6, 0x0058($sp)
    lh      t4, 0x0002(s0)             # 00000002
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x005C($sp)
    lh      t7, 0x0004(s0)             # 00000004
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0060($sp)
    lw      t6, 0x0008(t9)             # 00000008
    sw      t6, 0x0064($sp)
    beq     t1, $zero, lbl_80089338
    sw      t6, 0x0068($sp)
    lw      t3, 0x0088($sp)
    sw      t2, 0x0010($sp)
    jalr    $ra, t1
    sw      t3, 0x0014($sp)
    bne     v0, $zero, lbl_800893DC
lbl_80089338:
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE8
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE0
    lw      t0, 0x0068($sp)
    lw      t4, 0x0090($sp)
    lw      t5, 0x0064($sp)
    beq     t0, $zero, lbl_800893BC
    nop
    jal     func_800AB8D8
    lw      a0, 0x0000(t4)             # 00000000
    lw      t7, 0x0070($sp)
    lw      a0, 0x0000(t7)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0090($sp)
    lw      t6, 0x0000(t9)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t1, 0x0068($sp)
    sw      t1, 0x0004(v1)             # 00000004
    lw      t0, 0x0090($sp)
    lw      t4, 0x0000(t0)             # 00000000
    addiu   t7, t4, 0x0040             # t7 = 00000040
    b       lbl_800893DC
    sw      t7, 0x0000(t0)             # 00000000
lbl_800893BC:
    beq     t5, $zero, lbl_800893DC
    lw      t8, 0x0090($sp)
    jal     func_800AB8D8
    lw      a0, 0x0000(t8)             # DA380003
    lw      t9, 0x0090($sp)
    lw      t6, 0x0000(t9)             # 00000000
    addiu   t2, t6, 0x0040             # t2 = 00000040
    sw      t2, 0x0000(t9)             # 00000000
lbl_800893DC:
    lw      t3, 0x0084($sp)
    lw      a0, 0x0070($sp)
    lw      a1, 0x0074($sp)
    beq     t3, $zero, lbl_80089400
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    lw      t1, 0x0088($sp)
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE0
    jalr    $ra, t3
    sw      t1, 0x0010($sp)
lbl_80089400:
    lbu     a1, 0x0006(s0)             # 00000006
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0070($sp)
    beq     a1, $at, lbl_80089444
    lw      a2, 0x0078($sp)
    lw      t4, 0x0080($sp)
    lw      t7, 0x0084($sp)
    lw      t0, 0x0088($sp)
    lw      t5, 0x008C($sp)
    lw      t8, 0x0090($sp)
    lw      a3, 0x007C($sp)
    sw      t4, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t0, 0x0018($sp)
    sw      t5, 0x001C($sp)
    jal     func_8008921C
    sw      t8, 0x0020($sp)
lbl_80089444:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s0)             # 00000007
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0070($sp)
    beq     a1, $at, lbl_80089490
    lw      a2, 0x0078($sp)
    lw      t6, 0x0080($sp)
    lw      t2, 0x0084($sp)
    lw      t9, 0x0088($sp)
    lw      t1, 0x008C($sp)
    lw      t3, 0x0090($sp)
    lw      a3, 0x007C($sp)
    sw      t6, 0x0010($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t1, 0x001C($sp)
    jal     func_8008921C
    sw      t3, 0x0020($sp)
lbl_80089490:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_800894A4:
# Link Draw Function (inner)?
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      $ra, 0x002C($sp)
    sw      a1, 0x007C($sp)
    sw      a2, 0x0080($sp)
    lw      v1, 0x0000(a0)             # 00000000
    sll     t7, a3,  6
    addiu   t8, t7, 0x000F             # t8 = 0000000F
    lw      t6, 0x02C4(v1)             # 000002C4
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t9, t8, $at
    subu    v0, t6, t9
    sw      v0, 0x02C4(v1)             # 000002C4
    lw      t1, 0x007C($sp)
    sw      v0, 0x0050($sp)
    beql    t1, $zero, lbl_80089710
    lw      $ra, 0x002C($sp)
    lw      t0, 0x0000(a0)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0034             # t3 = DB060034
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0050($sp)
    sw      t4, 0x0004(v1)             # 00000004
    sw      a0, 0x0078($sp)
    jal     func_800AA6EC
    sw      t0, 0x004C($sp)
    lw      t5, 0x007C($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t5)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0080($sp)
    sll     t8, v0,  4
    srl     t6, t8, 28
    sll     t9, t6,  2
    addu    t1, t1, t9
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t7, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t7, t1
    addu    t3, t2, $at
    sw      t3, 0x0074($sp)
    lh      t4, 0x0000(v1)             # 00000000
    lw      t0, 0x004C($sp)
    addiu   t6, $sp, 0x0054            # t6 = FFFFFFDC
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFF4
    cvt.s.w $f6, $f4
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFE4
    swc1    $f6, 0x005C($sp)
    lh      t5, 0x0002(v1)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0060($sp)
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0064($sp)
    lwl     t7, 0x0006(v1)             # 00000006
    lwr     t7, 0x0009(v1)             # 00000009
    sw      t7, 0x0000(t6)             # FFFFFFDC
    lhu     t7, 0x000A(v1)             # 0000000A
    sh      t7, 0x0004(t6)             # FFFFFFE0
    lw      t2, 0x0094($sp)
    lw      t1, 0x0074($sp)
    lw      t8, 0x0088($sp)
    sll     t3, t2,  2
    addu    t4, t1, t3
    lw      t5, 0x0008(t4)             # 00000008
    lw      a0, 0x0078($sp)
    addiu   t6, $sp, 0x0054            # t6 = FFFFFFDC
    sw      t5, 0x0068($sp)
    beq     t8, $zero, lbl_800895FC
    sw      t5, 0x006C($sp)
    lw      t9, 0x0090($sp)
    sw      t6, 0x0010($sp)
    sw      t0, 0x004C($sp)
    jalr    $ra, t8
    sw      t9, 0x0014($sp)
    bne     v0, $zero, lbl_80089698
    lw      t0, 0x004C($sp)
lbl_800895FC:
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFE4
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFDC
    jal     func_800AB1BC
    sw      t0, 0x004C($sp)
    lw      t7, 0x006C($sp)
    lw      t0, 0x004C($sp)
    lw      a0, 0x0050($sp)
    beql    t7, $zero, lbl_8008967C
    lw      t7, 0x0068($sp)
    jal     func_800AB8D8
    sw      t0, 0x004C($sp)
    lw      t0, 0x004C($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t3, 0x0050($sp)
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x006C($sp)
    sw      t6, 0x0004(v1)             # 00000004
    lw      t9, 0x0050($sp)
    addiu   t8, t9, 0x0040             # t8 = 00000040
    b       lbl_80089698
    sw      t8, 0x0050($sp)
    lw      t7, 0x0068($sp)
lbl_8008967C:
    beql    t7, $zero, lbl_8008969C
    lw      v0, 0x008C($sp)
    jal     func_800AB8D8
    lw      a0, 0x0050($sp)
    lw      t2, 0x0050($sp)
    addiu   t1, t2, 0x0040             # t1 = 00000040
    sw      t1, 0x0050($sp)
lbl_80089698:
    lw      v0, 0x008C($sp)
lbl_8008969C:
    lw      a0, 0x0078($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_800896C0
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFF0
    lw      t3, 0x0090($sp)
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFDC
    jalr    $ra, v0
    sw      t3, 0x0010($sp)
    lw      v0, 0x008C($sp)
lbl_800896C0:
    lw      t4, 0x0074($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0078($sp)
    lbu     a1, 0x0006(t4)             # 00000006
    lw      a2, 0x007C($sp)
    lw      a3, 0x0080($sp)
    beq     a1, $at, lbl_80089704
    lw      t5, 0x0088($sp)
    lw      t6, 0x0090($sp)
    lw      t9, 0x0094($sp)
    addiu   t8, $sp, 0x0050            # t8 = FFFFFFD8
    sw      t8, 0x0020($sp)
    sw      t5, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      t6, 0x0018($sp)
    jal     func_8008921C
    sw      t9, 0x001C($sp)
lbl_80089704:
    jal     func_800AA724
    nop
    lw      $ra, 0x002C($sp)
lbl_80089710:
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_8008971C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      a0, 0x0060($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0060($sp)
    lw      t7, 0x0000(t6)             # 00000000
    jal     func_800AA6EC
    sw      t7, 0x0040($sp)
    lw      t8, 0x0068($sp)
    sll     t9, s0,  2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addu    t0, t8, t9
    lw      v0, 0x0000(t0)             # 00000000
    lw      t7, 0x006C($sp)
    sll     t8, s0,  2
    subu    t8, t8, s0
    sll     t8, t8,  1
    sll     t2, v0,  4
    srl     t3, t2, 28
    addu    t9, t7, t8
    lwl     t2, 0x0000(t9)             # 00000000
    lwr     t2, 0x0003(t9)             # 00000003
    sll     t4, t3,  2
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFE4
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t2, 0x0000(t6)             # FFFFFFE4
    lhu     t2, 0x0004(t9)             # 00000004
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s1, t1, t5
    addu    s1, s1, $at
    sh      t2, 0x0004(t6)             # FFFFFFE8
    lh      t3, 0x0000(s1)             # 00000000
    lw      t7, 0x0070($sp)
    lw      a0, 0x0060($sp)
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   t8, $sp, 0x0044            # t8 = FFFFFFE4
    or      a1, s0, $zero              # a1 = 00000001
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFEC
    swc1    $f6, 0x004C($sp)
    lh      t4, 0x0002(s1)             # 00000002
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0050($sp)
    lh      t1, 0x0004(s1)             # 00000004
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0054($sp)
    lw      t5, 0x0008(s1)             # 00000008
    beq     t7, $zero, lbl_8008982C
    sw      t5, 0x0058($sp)
    lw      t6, 0x0078($sp)
    sw      t8, 0x0010($sp)
    jalr    $ra, t7
    sw      t6, 0x0014($sp)
    bne     v0, $zero, lbl_80089898
lbl_8008982C:
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFEC
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFE4
    lw      t9, 0x0058($sp)
    lw      v0, 0x0040($sp)
    beql    t9, $zero, lbl_8008989C
    lw      t6, 0x0074($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(v0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0060($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      a1, 0x0038($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t4, 0x0040($sp)
    lw      v1, 0x02C0(t4)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(t4)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t8, 0x0058($sp)
    sw      t8, 0x0004(v1)             # 00000004
lbl_80089898:
    lw      t6, 0x0074($sp)
lbl_8008989C:
    lw      a0, 0x0060($sp)
    or      a1, s0, $zero              # a1 = 00000001
    beq     t6, $zero, lbl_800898BC
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF8
    lw      t7, 0x0078($sp)
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFE4
    jalr    $ra, t6
    sw      t7, 0x0010($sp)
lbl_800898BC:
    lbu     a1, 0x0006(s1)             # 00000006
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
    lw      a0, 0x0060($sp)
    beq     s0, a1, lbl_800898F0
    lw      a2, 0x0068($sp)
    lw      t9, 0x0070($sp)
    lw      t0, 0x0074($sp)
    lw      t2, 0x0078($sp)
    lw      a3, 0x006C($sp)
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    jal     func_8008971C
    sw      t2, 0x0018($sp)
lbl_800898F0:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s1)             # 00000007
    lw      a0, 0x0060($sp)
    lw      a2, 0x0068($sp)
    beq     s0, a1, lbl_80089928
    lw      a3, 0x006C($sp)
    lw      t3, 0x0070($sp)
    lw      t1, 0x0074($sp)
    lw      t4, 0x0078($sp)
    sw      t3, 0x0010($sp)
    sw      t1, 0x0014($sp)
    jal     func_8008971C
    sw      t4, 0x0018($sp)
lbl_80089928:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_8008993C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0064($sp)
    lw      t7, 0x0060($sp)
    beql    t6, $zero, lbl_80089B10
    lw      $ra, 0x0024($sp)
    lw      t8, 0x0000(t7)             # 00000000
    jal     func_800AA6EC
    sw      t8, 0x003C($sp)
    lw      t9, 0x0064($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t9)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0068($sp)
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t6, t5, $at
    sw      t6, 0x005C($sp)
    lh      t7, 0x0000(v1)             # 00000000
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFE0
    addiu   t6, $sp, 0x0040            # t6 = FFFFFFE0
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    cvt.s.w $f6, $f4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE8
    swc1    $f6, 0x0048($sp)
    lh      t8, 0x0002(v1)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x004C($sp)
    lh      t9, 0x0004(v1)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0050($sp)
    lwl     t3, 0x0006(v1)             # 00000006
    lwr     t3, 0x0009(v1)             # 00000009
    sw      t3, 0x0000(t1)             # FFFFFFE0
    lhu     t3, 0x000A(v1)             # 0000000A
    sh      t3, 0x0004(t1)             # FFFFFFE4
    lw      t0, 0x005C($sp)
    lw      t5, 0x006C($sp)
    lw      a0, 0x0060($sp)
    lw      t4, 0x0008(t0)             # 00000008
    beq     t5, $zero, lbl_80089A3C
    sw      t4, 0x0054($sp)
    lw      t7, 0x0074($sp)
    sw      t6, 0x0010($sp)
    jalr    $ra, t5
    sw      t7, 0x0014($sp)
    bne     v0, $zero, lbl_80089AA8
lbl_80089A3C:
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE0
    lw      t8, 0x0054($sp)
    lw      v0, 0x003C($sp)
    beql    t8, $zero, lbl_80089AAC
    lw      v0, 0x0070($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0060($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      a1, 0x0034($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t3, 0x003C($sp)
    lw      v1, 0x02C0(t3)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(t3)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t6, 0x0054($sp)
    sw      t6, 0x0004(v1)             # 00000004
lbl_80089AA8:
    lw      v0, 0x0070($sp)
lbl_80089AAC:
    lw      a0, 0x0060($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_80089AD0
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    lw      t7, 0x0074($sp)
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE0
    jalr    $ra, v0
    sw      t7, 0x0010($sp)
    lw      v0, 0x0070($sp)
lbl_80089AD0:
    lw      t5, 0x005C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0060($sp)
    lbu     a1, 0x0006(t5)             # 00000006
    lw      a2, 0x0064($sp)
    lw      a3, 0x0068($sp)
    beq     a1, $at, lbl_80089B04
    lw      t8, 0x006C($sp)
    lw      t9, 0x0074($sp)
    sw      t8, 0x0010($sp)
    sw      v0, 0x0014($sp)
    jal     func_8008971C
    sw      t9, 0x0018($sp)
lbl_80089B04:
    jal     func_800AA724
    nop
    lw      $ra, 0x0024($sp)
lbl_80089B10:
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80089B1C:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    lw      t6, 0x0068($sp)
    lw      t7, 0x0000(t6)             # 00000000
    jal     func_800AA6EC
    sw      t7, 0x0044($sp)
    lw      t9, 0x006C($sp)
    lw      t8, 0x0070($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t0, t9,  2
    addu    t1, t8, t0
    lw      v0, 0x0000(t1)             # 00000000
    addiu   t7, t9, 0x0001             # t7 = 00000001
    lw      t0, 0x0074($sp)
    sll     t1, t7,  2
    sll     t3, v0,  4
    srl     t4, t3, 28
    subu    t1, t1, t7
    sll     t5, t4,  2
    sll     t1, t1,  1
    addu    t6, t6, t5
    sw      t7, 0x006C($sp)
    addu    t3, t0, t1
    lwl     t5, 0x0000(t3)             # 00000000
    lwr     t5, 0x0003(t3)             # 00000003
    lw      t6, 0x0C38(t6)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t8, $sp, 0x0048            # t8 = FFFFFFE0
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t5, 0x0000(t8)             # FFFFFFE0
    lhu     t5, 0x0004(t3)             # 00000004
    and     t2, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s0, t2, t6
    addu    s0, s0, $at
    sh      t5, 0x0004(t8)             # FFFFFFE4
    lh      t2, 0x0000(s0)             # 00000000
    lw      t1, 0x0078($sp)
    lw      a1, 0x006C($sp)
    mtc1    t2, $f4                    # $f4 = 0.00
    lw      a0, 0x0068($sp)
    addiu   t8, $sp, 0x0048            # t8 = FFFFFFE0
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    swc1    $f6, 0x0050($sp)
    lh      t6, 0x0002(s0)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0054($sp)
    lh      t9, 0x0004(s0)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0058($sp)
    lw      t7, 0x0008(s0)             # 00000008
    sw      t7, 0x005C($sp)
    beq     t1, $zero, lbl_80089C34
    sw      t7, 0x0060($sp)
    lw      t3, 0x0080($sp)
    sw      t8, 0x0010($sp)
    jalr    $ra, t1
    sw      t3, 0x0014($sp)
    bne     v0, $zero, lbl_80089CD4
lbl_80089C34:
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE0
    lw      t4, 0x0060($sp)
    lw      t5, 0x0084($sp)
    lw      t2, 0x005C($sp)
    beq     t4, $zero, lbl_80089CB4
    nop
    jal     func_800AB8D8
    lw      a0, 0x0000(t5)             # 00000000
    lw      a2, 0x0044($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a2)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t9, 0x0084($sp)
    lw      t7, 0x0000(t9)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t3, 0x0060($sp)
    sw      t3, 0x0004(v1)             # 00000004
    lw      t1, 0x0084($sp)
    lw      t4, 0x0000(t1)             # 00000000
    addiu   t5, t4, 0x0040             # t5 = 00000040
    b       lbl_80089CD4
    sw      t5, 0x0000(t1)             # 00000000
lbl_80089CB4:
    beq     t2, $zero, lbl_80089CD4
    lw      t6, 0x0084($sp)
    jal     func_800AB8D8
    lw      a0, 0x0000(t6)             # DA380003
    lw      t9, 0x0084($sp)
    lw      t7, 0x0000(t9)             # 00000000
    addiu   t0, t7, 0x0040             # t0 = 00000040
    sw      t0, 0x0000(t9)             # 00000000
lbl_80089CD4:
    lw      t8, 0x007C($sp)
    lw      a0, 0x0068($sp)
    lw      a1, 0x006C($sp)
    beq     t8, $zero, lbl_80089CF8
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFF4
    lw      t3, 0x0080($sp)
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE0
    jalr    $ra, t8
    sw      t3, 0x0010($sp)
lbl_80089CF8:
    lbu     a1, 0x0006(s0)             # 00000006
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0068($sp)
    beq     a1, $at, lbl_80089D34
    lw      a2, 0x0070($sp)
    lw      t4, 0x0078($sp)
    lw      t5, 0x007C($sp)
    lw      t1, 0x0080($sp)
    lw      t2, 0x0084($sp)
    lw      a3, 0x0074($sp)
    sw      t4, 0x0010($sp)
    sw      t5, 0x0014($sp)
    sw      t1, 0x0018($sp)
    jal     func_80089B1C
    sw      t2, 0x001C($sp)
lbl_80089D34:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s0)             # 00000007
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0068($sp)
    beq     a1, $at, lbl_80089D78
    lw      a2, 0x0070($sp)
    lw      t6, 0x0078($sp)
    lw      t7, 0x007C($sp)
    lw      t0, 0x0080($sp)
    lw      t9, 0x0084($sp)
    lw      a3, 0x0074($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t0, 0x0018($sp)
    jal     func_80089B1C
    sw      t9, 0x001C($sp)
lbl_80089D78:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80089D8C:
# Draw Matrix-Enabled Object
# A0 = Global Context
# A1 = Limb Index
# A2 = Pointer to Actor Drawing Table
# A3 = Number of Limbs that use display lists
# SP+0x10 = ?
# SP+0x14 = ?
# SP+0x18 = Actor*
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    lw      v1, 0x0000(a0)             # 00000000
    sll     t7, a3,  6
    addiu   t8, t7, 0x000F             # t8 = 0000000F
    lw      t6, 0x02C4(v1)             # 000002C4
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t9, t8, $at
    subu    v0, t6, t9
    sw      v0, 0x02C4(v1)             # 000002C4
    lw      t1, 0x0074($sp)
    sw      v0, 0x0048($sp)
    beql    t1, $zero, lbl_80089FE4
    lw      $ra, 0x0024($sp)
    lw      t0, 0x0000(a0)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0034             # t3 = DB060034
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0048($sp)
    sw      t4, 0x0004(v1)             # 00000004
    sw      a0, 0x0070($sp)
    jal     func_800AA6EC
    sw      t0, 0x0044($sp)
    lw      t5, 0x0074($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t5)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0078($sp)
    sll     t8, v0,  4
    srl     t6, t8, 28
    sll     t9, t6,  2
    addu    t1, t1, t9
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t7, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t7, t1
    addu    t3, t2, $at
    sw      t3, 0x006C($sp)
    lh      t4, 0x0000(v1)             # 00000000
    lw      t0, 0x0044($sp)
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFDC
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   t4, $sp, 0x004C            # t4 = FFFFFFDC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFE4
    swc1    $f6, 0x0054($sp)
    lh      t5, 0x0002(v1)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0058($sp)
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x005C($sp)
    lwl     t7, 0x0006(v1)             # 00000006
    lwr     t7, 0x0009(v1)             # 00000009
    sw      t7, 0x0000(t6)             # FFFFFFDC
    lhu     t7, 0x000A(v1)             # 0000000A
    sh      t7, 0x0004(t6)             # FFFFFFE0
    lw      t1, 0x006C($sp)
    lw      t3, 0x0080($sp)
    lw      a0, 0x0070($sp)
    lw      t2, 0x0008(t1)             # 80120008
    sw      t2, 0x0060($sp)
    beq     t3, $zero, lbl_80089ED8
    sw      t2, 0x0064($sp)
    lw      t5, 0x0088($sp)
    sw      t4, 0x0010($sp)
    sw      t0, 0x0044($sp)
    jalr    $ra, t3
    sw      t5, 0x0014($sp)
    bne     v0, $zero, lbl_80089F74
    lw      t0, 0x0044($sp)
lbl_80089ED8:
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    jal     func_800AB1BC
    sw      t0, 0x0044($sp)
    lw      t8, 0x0064($sp)
    lw      t0, 0x0044($sp)
    lw      a0, 0x0048($sp)
    beql    t8, $zero, lbl_80089F58
    lw      t8, 0x0060($sp)
    jal     func_800AB8D8
    sw      t0, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0048($sp)
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t4, 0x0064($sp)
    sw      t4, 0x0004(v1)             # 00000004
    lw      t5, 0x0048($sp)
    addiu   t3, t5, 0x0040             # t3 = 00000040
    b       lbl_80089F74
    sw      t3, 0x0048($sp)
    lw      t8, 0x0060($sp)
lbl_80089F58:
    beql    t8, $zero, lbl_80089F78
    lw      v0, 0x0084($sp)
    jal     func_800AB8D8
    lw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    addiu   t9, t6, 0x0040             # t9 = 00000040
    sw      t9, 0x0048($sp)
lbl_80089F74:
    lw      v0, 0x0084($sp)
lbl_80089F78:
    lw      a0, 0x0070($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_80089F9C
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF0
    lw      t7, 0x0088($sp)
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFDC
    jalr    $ra, v0
    sw      t7, 0x0010($sp)
    lw      v0, 0x0084($sp)
lbl_80089F9C:
    lw      t1, 0x006C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0070($sp)
    lbu     a1, 0x0006(t1)             # 00000006
    lw      a2, 0x0074($sp)
    lw      a3, 0x0078($sp)
    beq     a1, $at, lbl_80089FD8
    lw      t2, 0x0080($sp)
    lw      t4, 0x0088($sp)
    addiu   t5, $sp, 0x0048            # t5 = FFFFFFD8
    sw      t5, 0x001C($sp)
    sw      t2, 0x0010($sp)
    sw      v0, 0x0014($sp)
    jal     func_80089B1C
    sw      t4, 0x0018($sp)
lbl_80089FD8:
    jal     func_800AA724
    nop
    lw      $ra, 0x0024($sp)
lbl_80089FE4:
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80089FF0:
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t5, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0000(t9)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, t6, t7
    addu    v0, v0, $at
    lw      t0, 0x0008(v0)             # 00000008
    lw      t2, 0x0004(v0)             # 00000004
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t8, t0,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    addu    t7, t5, t6
    lw      t8, 0x0000(t7)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, t0, $at
    sll     t6, t2,  4
    addu    v1, t8, t9
    lui     $at, 0x8000                # $at = 80000000
    srl     t7, t6, 28
    addu    v1, v1, $at
    sll     t8, t7,  2
    addu    t9, t5, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0000(t9)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t7
    addu    t1, t1, $at
    lhu     t3, 0x000C(v0)             # 0000000C
    blez    a2, lbl_8008A150
    or      t4, $zero, $zero           # t4 = 00000000
    or      a0, t3, $zero              # a0 = 00000000
lbl_8008A094:
    beq     a3, $zero, lbl_8008A09C
    addiu   t4, t4, 0x0001             # t4 = 00000001
lbl_8008A09C:
    lhu     v0, 0x0000(v1)             # 00000000
    sll     t8, a1,  1
    slt     $at, v0, a0
    bne     $at, $zero, lbl_8008A0C8
    sll     t9, v0,  1
    addu    t9, t8, t1
    sll     t6, v0,  1
    addu    t7, t9, t6
    lh      t8, 0x0000(t7)             # 00000000
    b       lbl_8008A0D4
    sh      t8, 0x0000(a3)             # 00000000
lbl_8008A0C8:
    addu    t6, t1, t9
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0000(a3)             # 00000000
lbl_8008A0D4:
    lhu     v0, 0x0002(v1)             # 00000002
    sll     t8, a1,  1
    slt     $at, v0, a0
    bne     $at, $zero, lbl_8008A100
    sll     t9, v0,  1
    addu    t9, t8, t1
    sll     t6, v0,  1
    addu    t7, t9, t6
    lh      t8, 0x0000(t7)             # 00000000
    b       lbl_8008A10C
    sh      t8, 0x0002(a3)             # 00000002
lbl_8008A100:
    addu    t6, t1, t9
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0002(a3)             # 00000002
lbl_8008A10C:
    lhu     v0, 0x0004(v1)             # 00000004
    sll     t8, a1,  1
    addiu   v1, v1, 0x0006             # v1 = 00000006
    slt     $at, v0, a0
    bne     $at, $zero, lbl_8008A13C
    sll     t9, v0,  1
    addu    t9, t8, t1
    sll     t6, v0,  1
    addu    t7, t9, t6
    lh      t8, 0x0000(t7)             # 00000000
    b       lbl_8008A148
    sh      t8, 0x0004(a3)             # 00000004
lbl_8008A13C:
    addu    t6, t1, t9
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0004(a3)             # 00000004
lbl_8008A148:
    bne     t4, a2, lbl_8008A094
    addiu   a3, a3, 0x0006             # a3 = 00000006
lbl_8008A150:
    jr      $ra
    nop


func_8008A158:
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t9, t0
    addu    v1, v1, $at
    lh      v0, 0x0000(v1)             # 00000000
    jr      $ra
    nop


func_8008A194:
# Gets some value from Gameplay Keep (animation frame count?)
# A0 = Segment Offset
# V0 = u16 value referenced by Segment Offset (decremented?)
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t9, t0
    addu    v1, v1, $at
    lhu     v0, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_8008A1DC:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_800AA6EC
    nop
    lw      t6, 0x0060($sp)
    sll     t7, s0,  2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addu    t8, t6, t7
    lw      v0, 0x0000(t8)             # 00000000
    lw      t5, 0x0064($sp)
    sll     t6, s0,  2
    subu    t6, t6, s0
    sll     t6, t6,  1
    sll     t0, v0,  4
    srl     t1, t0, 28
    addu    t7, t5, t6
    lwl     t0, 0x0000(t7)             # 00000000
    lwr     t0, 0x0003(t7)             # 00000003
    sll     t2, t1,  2
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t4, $sp, 0x003C            # t4 = FFFFFFE4
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t0, 0x0000(t4)             # FFFFFFE4
    lhu     t0, 0x0004(t7)             # 00000004
    and     t9, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s1, t9, t3
    addu    s1, s1, $at
    sh      t0, 0x0004(t4)             # FFFFFFE8
    lh      t1, 0x0000(s1)             # 00000000
    lw      t5, 0x0068($sp)
    lw      a0, 0x0058($sp)
    mtc1    t1, $f4                    # $f4 = 0.00
    addiu   t7, $sp, 0x0074            # t7 = 0000001C
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFE4
    cvt.s.w $f6, $f4
    or      a1, s0, $zero              # a1 = 00000001
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFEC
    swc1    $f6, 0x0044($sp)
    lh      t2, 0x0002(s1)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0048($sp)
    lh      t9, 0x0004(s1)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x004C($sp)
    lw      t3, 0x0008(s1)             # 00000008
    beq     t5, $zero, lbl_8008A2EC
    sw      t3, 0x0050($sp)
    lw      t4, 0x0070($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0018($sp)
    jalr    $ra, t5
    sw      t4, 0x0014($sp)
    bne     v0, $zero, lbl_8008A34C
lbl_8008A2EC:
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFEC
    jal     func_800AB1BC
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFE4
    lw      t8, 0x0050($sp)
    lw      t0, 0x0074($sp)
    lui     t2, 0xDA38                 # t2 = DA380000
    beq     t8, $zero, lbl_8008A34C
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x0074($sp)
    ori     t2, t2, 0x0003             # t2 = DA380003
    sw      t2, 0x0000(t0)             # 00000000
    lw      t9, 0x0058($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      t0, 0x0038($sp)
    lw      a1, 0x0038($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      t3, 0x0074($sp)
    addiu   t6, t3, 0x0008             # t6 = 00000008
    sw      t6, 0x0074($sp)
    sw      t4, 0x0000(t3)             # 00000000
    lw      t7, 0x0050($sp)
    sw      t7, 0x0004(t3)             # 00000004
lbl_8008A34C:
    lw      t5, 0x006C($sp)
    lw      a0, 0x0058($sp)
    or      a1, s0, $zero              # a1 = 00000001
    beq     t5, $zero, lbl_8008A378
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF8
    lw      t8, 0x0070($sp)
    addiu   t0, $sp, 0x0074            # t0 = 0000001C
    sw      t0, 0x0014($sp)
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFE4
    jalr    $ra, t5
    sw      t8, 0x0010($sp)
lbl_8008A378:
    lbu     a1, 0x0006(s1)             # 00000006
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
    lw      a0, 0x0058($sp)
    beq     s0, a1, lbl_8008A3B8
    lw      a2, 0x0060($sp)
    lw      t1, 0x0068($sp)
    lw      t2, 0x006C($sp)
    lw      t9, 0x0070($sp)
    lw      t3, 0x0074($sp)
    lw      a3, 0x0064($sp)
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0018($sp)
    jal     func_8008A1DC
    sw      t3, 0x001C($sp)
    sw      v0, 0x0074($sp)
lbl_8008A3B8:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s1)             # 00000007
    lw      a0, 0x0058($sp)
    lw      a2, 0x0060($sp)
    beq     s0, a1, lbl_8008A3FC
    lw      a3, 0x0064($sp)
    lw      t6, 0x0068($sp)
    lw      t4, 0x006C($sp)
    lw      t7, 0x0070($sp)
    lw      t8, 0x0074($sp)
    sw      t6, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      t7, 0x0018($sp)
    jal     func_8008A1DC
    sw      t8, 0x001C($sp)
    sw      v0, 0x0074($sp)
lbl_8008A3FC:
    lw      v0, 0x0074($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_8008A414:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0028($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0064($sp)
    bne     t6, $zero, lbl_8008A444
    nop
    b       lbl_8008A5F4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008A444:
    jal     func_800AA6EC
    nop
    lw      t7, 0x0064($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t7)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t9, v0,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    addu    t2, t2, t1
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t8, t2
    addu    t4, t3, $at
    sw      t4, 0x005C($sp)
    lh      t5, 0x0000(s0)             # 00000000
    addiu   t9, $sp, 0x0040            # t9 = FFFFFFE0
    addiu   t4, $sp, 0x0040            # t4 = FFFFFFE0
    mtc1    t5, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE8
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0048($sp)
    lh      t6, 0x0002(s0)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    addiu   t6, $sp, 0x0078            # t6 = 00000018
    cvt.s.w $f10, $f8
    swc1    $f10, 0x004C($sp)
    lh      t7, 0x0004(s0)             # 00000004
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0050($sp)
    lwl     t1, 0x0006(s0)             # 00000006
    lwr     t1, 0x0009(s0)             # 00000009
    sw      t1, 0x0000(t9)             # FFFFFFE0
    lhu     t1, 0x000A(s0)             # 0000000A
    sh      t1, 0x0004(t9)             # FFFFFFE4
    lw      t8, 0x005C($sp)
    lw      t3, 0x006C($sp)
    lw      a0, 0x0060($sp)
    lw      t2, 0x0008(t8)             # 00000008
    beq     t3, $zero, lbl_8008A518
    sw      t2, 0x0054($sp)
    lw      t5, 0x0074($sp)
    sw      t4, 0x0010($sp)
    sw      t6, 0x0018($sp)
    jalr    $ra, t3
    sw      t5, 0x0014($sp)
    bne     v0, $zero, lbl_8008A578
lbl_8008A518:
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    jal     func_800AB1BC
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE0
    lw      t7, 0x0054($sp)
    lw      t9, 0x0078($sp)
    lui     t1, 0xDA38                 # t1 = DA380000
    beq     t7, $zero, lbl_8008A578
    addiu   t0, t9, 0x0008             # t0 = 00000008
    sw      t0, 0x0078($sp)
    ori     t1, t1, 0x0003             # t1 = DA380003
    sw      t1, 0x0000(t9)             # 00000000
    lw      t8, 0x0060($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      t9, 0x003C($sp)
    lw      a1, 0x003C($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      t2, 0x0078($sp)
    addiu   t4, t2, 0x0008             # t4 = 00000008
    sw      t4, 0x0078($sp)
    sw      t5, 0x0000(t2)             # 00000000
    lw      t6, 0x0054($sp)
    sw      t6, 0x0004(t2)             # 00000004
lbl_8008A578:
    lw      v0, 0x0070($sp)
    lw      a0, 0x0060($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_8008A5A8
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    lw      t3, 0x0074($sp)
    addiu   t7, $sp, 0x0078            # t7 = 00000018
    sw      t7, 0x0014($sp)
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE0
    jalr    $ra, v0
    sw      t3, 0x0010($sp)
    lw      v0, 0x0070($sp)
lbl_8008A5A8:
    lw      t9, 0x005C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0060($sp)
    lbu     a1, 0x0006(t9)             # 00000006
    lw      a2, 0x0064($sp)
    or      a3, s0, $zero              # a3 = 00000000
    beq     a1, $at, lbl_8008A5E8
    lw      t0, 0x006C($sp)
    lw      t1, 0x0074($sp)
    lw      t8, 0x0078($sp)
    sw      t0, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      t1, 0x0018($sp)
    jal     func_8008A1DC
    sw      t8, 0x001C($sp)
    sw      v0, 0x0078($sp)
lbl_8008A5E8:
    jal     func_800AA724
    nop
    lw      v0, 0x0078($sp)
lbl_8008A5F4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_8008A608:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    jal     func_800AA6EC
    nop
    lw      t7, 0x006C($sp)
    lw      t6, 0x0070($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v0, 0x0000(t9)             # 00000000
    addiu   t5, t7, 0x0001             # t5 = 00000001
    lw      t6, 0x0074($sp)
    sll     t8, t5,  2
    subu    t8, t8, t5
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t8, t8,  1
    sll     t3, t2,  2
    sw      t5, 0x006C($sp)
    addu    t9, t6, t8
    lwl     t2, 0x0000(t9)             # 00000000
    lwr     t2, 0x0003(t9)             # 00000003
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    addiu   s0, $sp, 0x0048            # s0 = FFFFFFE0
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t2, 0x0000(s0)             # FFFFFFE0
    lhu     t2, 0x0004(t9)             # 00000004
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s1, t0, t4
    addu    s1, s1, $at
    sh      t2, 0x0004(s0)             # FFFFFFE4
    lh      t3, 0x0000(s1)             # 00000000
    lw      t6, 0x0078($sp)
    lw      a1, 0x006C($sp)
    mtc1    t3, $f4                    # $f4 = 0.00
    lw      a0, 0x0068($sp)
    addiu   t9, $sp, 0x0088            # t9 = 00000020
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    swc1    $f6, 0x0050($sp)
    lh      t0, 0x0002(s1)             # 00000002
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0054($sp)
    lh      t4, 0x0004(s1)             # 00000004
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0058($sp)
    lw      t7, 0x0008(s1)             # 00000008
    sw      t7, 0x005C($sp)
    beq     t6, $zero, lbl_8008A724
    sw      t7, 0x0060($sp)
    lw      t8, 0x0080($sp)
    sw      s0, 0x0010($sp)
    sw      t9, 0x0018($sp)
    jalr    $ra, t6
    sw      t8, 0x0014($sp)
    bne     v0, $zero, lbl_8008A7B4
    addiu   s0, $sp, 0x0048            # s0 = FFFFFFE0
lbl_8008A724:
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    jal     func_800AB1BC
    or      a1, s0, $zero              # a1 = FFFFFFE0
    lw      t1, 0x0060($sp)
    lw      s0, 0x0084($sp)
    lw      t2, 0x005C($sp)
    beq     t1, $zero, lbl_8008A798
    nop
    jal     func_800AB8D8
    lw      a0, 0x0000(s0)             # FFFFFFE0
    lw      t2, 0x0088($sp)
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t3, t2, 0x0008             # t3 = 00000008
    sw      t3, 0x0088($sp)
    sw      t0, 0x0000(t2)             # 00000000
    lw      t4, 0x0000(s0)             # FFFFFFE0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t4, 0x0004(t2)             # 00000004
    lw      t7, 0x0088($sp)
    addiu   t5, t7, 0x0008             # t5 = 00000008
    sw      t5, 0x0088($sp)
    sw      t8, 0x0000(t7)             # 00000000
    lw      t9, 0x0060($sp)
    sw      t9, 0x0004(t7)             # 00000004
    lw      t6, 0x0000(s0)             # FFFFFFE0
    addiu   t1, t6, 0x0040             # t1 = 00000040
    b       lbl_8008A7B4
    sw      t1, 0x0000(s0)             # FFFFFFE0
lbl_8008A798:
    beq     t2, $zero, lbl_8008A7B4
    lw      s0, 0x0084($sp)
    jal     func_800AB8D8
    lw      a0, 0x0000(s0)             # FFFFFFE0
    lw      t3, 0x0000(s0)             # FFFFFFE0
    addiu   t0, t3, 0x0040             # t0 = 00000040
    sw      t0, 0x0000(s0)             # FFFFFFE0
lbl_8008A7B4:
    lw      t4, 0x007C($sp)
    lw      s0, 0x0084($sp)
    lw      a0, 0x0068($sp)
    beq     t4, $zero, lbl_8008A7E4
    lw      a1, 0x006C($sp)
    lw      t7, 0x0080($sp)
    addiu   t5, $sp, 0x0088            # t5 = 00000020
    sw      t5, 0x0014($sp)
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE0
    jalr    $ra, t4
    sw      t7, 0x0010($sp)
lbl_8008A7E4:
    lbu     a1, 0x0006(s1)             # 00000006
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0068($sp)
    beq     a1, $at, lbl_8008A828
    lw      a2, 0x0070($sp)
    lw      t8, 0x0078($sp)
    lw      t9, 0x007C($sp)
    lw      t6, 0x0080($sp)
    lw      t1, 0x0088($sp)
    lw      a3, 0x0074($sp)
    sw      s0, 0x001C($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      t6, 0x0018($sp)
    jal     func_8008A608
    sw      t1, 0x0020($sp)
    sw      v0, 0x0088($sp)
lbl_8008A828:
    jal     func_800AA724
    nop
    lbu     a1, 0x0007(s1)             # 00000007
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0068($sp)
    beq     a1, $at, lbl_8008A874
    lw      a2, 0x0070($sp)
    lw      t2, 0x0078($sp)
    lw      t3, 0x007C($sp)
    lw      t0, 0x0080($sp)
    lw      t7, 0x0088($sp)
    lw      a3, 0x0074($sp)
    sw      s0, 0x001C($sp)
    sw      t2, 0x0010($sp)
    sw      t3, 0x0014($sp)
    sw      t0, 0x0018($sp)
    jal     func_8008A608
    sw      t7, 0x0020($sp)
    sw      v0, 0x0088($sp)
lbl_8008A874:
    lw      v0, 0x0088($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8008A88C:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    lw      t6, 0x0070($sp)
    sll     t8, a3,  6
    addiu   t9, t8, 0x000F             # t9 = 0000000F
    lw      v1, 0x0000(t6)             # 00000000
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t0, t9, $at
    lw      t7, 0x02C4(v1)             # 000002C4
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0034             # t4 = DB060034
    subu    v0, t7, t0
    sw      v0, 0x02C4(v1)             # 000002C4
    lw      t1, 0x0074($sp)
    lw      t2, 0x008C($sp)
    sw      v0, 0x0048($sp)
    bne     t1, $zero, lbl_8008A8E8
    addiu   t3, t2, 0x0008             # t3 = 00000008
    b       lbl_8008AAE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008A8E8:
    sw      t3, 0x008C($sp)
    sw      t4, 0x0000(t2)             # 00000000
    lw      t5, 0x0048($sp)
    sw      t5, 0x0004(t2)             # 00000004
    jal     func_800AA6EC
    nop
    lw      t6, 0x0074($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(t6)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0078($sp)
    sll     t9, v0,  4
    srl     t7, t9, 28
    sll     t0, t7,  2
    addu    t1, t1, t0
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t8, t1
    addu    t3, t2, $at
    sw      t3, 0x006C($sp)
    lh      t4, 0x0000(v1)             # 00000000
    addiu   t9, $sp, 0x004C            # t9 = FFFFFFDC
    addiu   t3, $sp, 0x004C            # t3 = FFFFFFDC
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    cvt.s.w $f6, $f4
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFE4
    swc1    $f6, 0x0054($sp)
    lh      t5, 0x0002(v1)             # 00000002
    mtc1    t5, $f8                    # $f8 = 0.00
    addiu   t5, $sp, 0x008C            # t5 = 0000001C
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0058($sp)
    lh      t6, 0x0004(v1)             # 00000004
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x005C($sp)
    lwl     t0, 0x0006(v1)             # 00000006
    lwr     t0, 0x0009(v1)             # 00000009
    sw      t0, 0x0000(t9)             # FFFFFFDC
    lhu     t0, 0x000A(v1)             # 0000000A
    sh      t0, 0x0004(t9)             # FFFFFFE0
    lw      t8, 0x006C($sp)
    lw      t2, 0x0080($sp)
    lw      a0, 0x0070($sp)
    lw      t1, 0x0008(t8)             # 00000008
    sw      t1, 0x0060($sp)
    beq     t2, $zero, lbl_8008A9D4
    sw      t1, 0x0064($sp)
    lw      t4, 0x0088($sp)
    sw      t3, 0x0010($sp)
    sw      t5, 0x0018($sp)
    jalr    $ra, t2
    sw      t4, 0x0014($sp)
    bne     v0, $zero, lbl_8008AA60
lbl_8008A9D4:
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    jal     func_800AB1BC
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    lw      t6, 0x0064($sp)
    lw      t9, 0x0060($sp)
    beq     t6, $zero, lbl_8008AA44
    nop
    jal     func_800AB8D8
    lw      a0, 0x0048($sp)
    lw      t9, 0x008C($sp)
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t7, t9, 0x0008             # t7 = 00000008
    sw      t7, 0x008C($sp)
    sw      t0, 0x0000(t9)             # 00000000
    lw      t8, 0x0048($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t8, 0x0004(t9)             # 00000004
    lw      t1, 0x008C($sp)
    addiu   t3, t1, 0x0008             # t3 = 00000008
    sw      t3, 0x008C($sp)
    sw      t4, 0x0000(t1)             # 00000000
    lw      t5, 0x0064($sp)
    sw      t5, 0x0004(t1)             # 00000004
    lw      t2, 0x0048($sp)
    addiu   t6, t2, 0x0040             # t6 = 00000040
    b       lbl_8008AA60
    sw      t6, 0x0048($sp)
lbl_8008AA44:
    beql    t9, $zero, lbl_8008AA64
    lw      v0, 0x0084($sp)
    jal     func_800AB8D8
    lw      a0, 0x0048($sp)
    lw      t7, 0x0048($sp)
    addiu   t0, t7, 0x0040             # t0 = 00000040
    sw      t0, 0x0048($sp)
lbl_8008AA60:
    lw      v0, 0x0084($sp)
lbl_8008AA64:
    lw      a0, 0x0070($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v0, $zero, lbl_8008AA90
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF0
    lw      t8, 0x0088($sp)
    addiu   t1, $sp, 0x008C            # t1 = 0000001C
    sw      t1, 0x0014($sp)
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFDC
    jalr    $ra, v0
    sw      t8, 0x0010($sp)
    lw      v0, 0x0084($sp)
lbl_8008AA90:
    lw      t3, 0x006C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0070($sp)
    lbu     a1, 0x0006(t3)             # 00000006
    lw      a2, 0x0074($sp)
    lw      a3, 0x0078($sp)
    beq     a1, $at, lbl_8008AAD8
    lw      t4, 0x0080($sp)
    lw      t5, 0x0088($sp)
    lw      t6, 0x008C($sp)
    addiu   t2, $sp, 0x0048            # t2 = FFFFFFD8
    sw      t2, 0x001C($sp)
    sw      t4, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      t5, 0x0018($sp)
    jal     func_8008A608
    sw      t6, 0x0020($sp)
    sw      v0, 0x008C($sp)
lbl_8008AAD8:
    jal     func_800AA724
    nop
    lw      v0, 0x008C($sp)
lbl_8008AAE4:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_8008AAF4:
    lui     t3, 0x8012                 # t3 = 80120000
    lui     t4, 0x00FF                 # t4 = 00FF0000
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    lui     t5, 0x8000                 # t5 = 80000000
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t3, t8
    lw      t6, 0x0000(t9)             # 00000000
    and     t7, a0, t4
    addu    t8, t6, t7
    addu    v0, t8, t5
    lw      t0, 0x0008(v0)             # 00000008
    lw      t2, 0x0004(v0)             # 00000004
    lh      v1, 0x0002(v0)             # 00000002
    sll     t9, t0,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    addu    t8, t3, t7
    lw      t9, 0x0000(t8)             # 00000000
    and     t6, t0, t4
    sll     t8, t2,  4
    addu    t7, t9, t6
    srl     t9, t8, 28
    addu    a3, t7, t5
    sll     t6, t9,  2
    addu    t7, t3, t6
    lw      t8, 0x0000(t7)             # 00000000
    lh      t7, 0x0000(a3)             # 00000000
    and     t9, t2, t4
    addu    t6, t8, t9
    slt     $at, a1, t7
    beq     $at, $zero, lbl_8008ABA0
    addu    t1, t6, t5
    lh      t6, 0x0002(a3)             # 00000002
    sll     t8, a1,  1
    addu    t9, t8, t1
    sll     t7, t6,  1
    addu    t8, t9, t7
    lh      t6, 0x0000(t8)             # 00000000
    b       lbl_8008ABB4
    sh      t6, 0x0000(a2)             # 00000000
lbl_8008ABA0:
    lh      t9, 0x0002(a3)             # 00000002
    sll     t7, t9,  1
    addu    t8, t1, t7
    lh      t6, 0x0000(t8)             # 00000000
    sh      t6, 0x0000(a2)             # 00000000
lbl_8008ABB4:
    lh      t9, 0x0004(a3)             # 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    a0, v1, 0x0001             # a0 = 00000000
    slt     $at, a1, t9
    beql    $at, $zero, lbl_8008ABF0
    lh      t8, 0x0006(a3)             # 00000006
    lh      t6, 0x0006(a3)             # 00000006
    sll     t7, a1,  1
    addu    t8, t7, t1
    sll     t9, t6,  1
    addu    t7, t8, t9
    lh      t6, 0x0000(t7)             # 00000000
    b       lbl_8008AC00
    sh      t6, 0x0002(a2)             # 00000002
    lh      t8, 0x0006(a3)             # 00000006
lbl_8008ABF0:
    sll     t9, t8,  1
    addu    t7, t1, t9
    lh      t6, 0x0000(t7)             # 00000000
    sh      t6, 0x0002(a2)             # 00000002
lbl_8008AC00:
    lh      t8, 0x0008(a3)             # 00000008
    slt     $at, a1, t8
    beql    $at, $zero, lbl_8008AC34
    lh      t7, 0x000A(a3)             # 0000000A
    lh      t6, 0x000A(a3)             # 0000000A
    sll     t9, a1,  1
    addu    t7, t9, t1
    sll     t8, t6,  1
    addu    t9, t7, t8
    lh      t6, 0x0000(t9)             # 00000000
    b       lbl_8008AC44
    sh      t6, 0x0004(a2)             # 00000004
    lh      t7, 0x000A(a3)             # 0000000A
lbl_8008AC34:
    sll     t8, t7,  1
    addu    t9, t1, t8
    lh      t6, 0x0000(t9)             # 00000000
    sh      t6, 0x0004(a2)             # 00000004
lbl_8008AC44:
    addiu   a2, a2, 0x0006             # a2 = 00000006
    blez    v1, lbl_8008AEEC
    addiu   a3, a3, 0x000C             # a3 = 0000000C
    beql    a0, $zero, lbl_8008AD3C
    lh      t8, 0x0000(a3)             # 0000000C
    lh      t7, 0x0000(a3)             # 0000000C
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    slt     $at, a1, t7
    beql    $at, $zero, lbl_8008AC90
    lh      t9, 0x0002(a3)             # 0000000E
    lh      t6, 0x0002(a3)             # 0000000E
    sll     t8, a1,  1
    addu    t9, t8, t1
    sll     t7, t6,  1
    addu    t8, t9, t7
    lh      t6, 0x0000(t8)             # 00000000
    b       lbl_8008ACA0
    sh      t6, 0x0000(a2)             # 00000006
    lh      t9, 0x0002(a3)             # 0000000E
lbl_8008AC90:
    sll     t7, t9,  1
    addu    t8, t1, t7
    lh      t6, 0x0000(t8)             # 00000000
    sh      t6, 0x0000(a2)             # 00000006
lbl_8008ACA0:
    lh      t9, 0x0004(a3)             # 00000010
    slt     $at, a1, t9
    beql    $at, $zero, lbl_8008ACD4
    lh      t8, 0x0006(a3)             # 00000012
    lh      t6, 0x0006(a3)             # 00000012
    sll     t7, a1,  1
    addu    t8, t7, t1
    sll     t9, t6,  1
    addu    t7, t8, t9
    lh      t6, 0x0000(t7)             # 00000000
    b       lbl_8008ACE4
    sh      t6, 0x0002(a2)             # 00000008
    lh      t8, 0x0006(a3)             # 00000012
lbl_8008ACD4:
    sll     t9, t8,  1
    addu    t7, t1, t9
    lh      t6, 0x0000(t7)             # 00000000
    sh      t6, 0x0002(a2)             # 00000008
lbl_8008ACE4:
    lh      t8, 0x0008(a3)             # 00000014
    slt     $at, a1, t8
    beql    $at, $zero, lbl_8008AD18
    lh      t7, 0x000A(a3)             # 00000016
    lh      t6, 0x000A(a3)             # 00000016
    sll     t9, a1,  1
    addu    t7, t9, t1
    sll     t8, t6,  1
    addu    t9, t7, t8
    lh      t6, 0x0000(t9)             # 00000000
    b       lbl_8008AD28
    sh      t6, 0x0004(a2)             # 0000000A
    lh      t7, 0x000A(a3)             # 00000016
lbl_8008AD18:
    sll     t8, t7,  1
    addu    t9, t1, t8
    lh      t6, 0x0000(t9)             # 00000000
    sh      t6, 0x0004(a2)             # 0000000A
lbl_8008AD28:
    addiu   t7, v1, 0x0001             # t7 = 00000001
    addiu   a3, a3, 0x000C             # a3 = 00000018
    beq     t7, v0, lbl_8008AEEC
    addiu   a2, a2, 0x0006             # a2 = 0000000C
lbl_8008AD38:
    lh      t8, 0x0000(a3)             # 00000018
lbl_8008AD3C:
    addiu   v0, v0, 0x0002             # v0 = 00000004
    slt     $at, a1, t8
    beql    $at, $zero, lbl_8008AD70
    lh      t6, 0x0002(a3)             # 0000001A
    lh      t7, 0x0002(a3)             # 0000001A
    sll     t9, a1,  1
    addu    t6, t9, t1
    sll     t8, t7,  1
    addu    t9, t6, t8
    lh      t7, 0x0000(t9)             # 00000000
    b       lbl_8008AD80
    sh      t7, 0x0000(a2)             # 0000000C
    lh      t6, 0x0002(a3)             # 0000001A
lbl_8008AD70:
    sll     t8, t6,  1
    addu    t9, t1, t8
    lh      t7, 0x0000(t9)             # 00000000
    sh      t7, 0x0000(a2)             # 0000000C
lbl_8008AD80:
    lh      t6, 0x0004(a3)             # 0000001C
    slt     $at, a1, t6
    beql    $at, $zero, lbl_8008ADB4
    lh      t9, 0x0006(a3)             # 0000001E
    lh      t7, 0x0006(a3)             # 0000001E
    sll     t8, a1,  1
    addu    t9, t8, t1
    sll     t6, t7,  1
    addu    t8, t9, t6
    lh      t7, 0x0000(t8)             # 00000000
    b       lbl_8008ADC4
    sh      t7, 0x0002(a2)             # 0000000E
    lh      t9, 0x0006(a3)             # 0000001E
lbl_8008ADB4:
    sll     t6, t9,  1
    addu    t8, t1, t6
    lh      t7, 0x0000(t8)             # 00000000
    sh      t7, 0x0002(a2)             # 0000000E
lbl_8008ADC4:
    lh      t9, 0x0008(a3)             # 00000020
    slt     $at, a1, t9
    beql    $at, $zero, lbl_8008ADF8
    lh      t8, 0x000A(a3)             # 00000022
    lh      t7, 0x000A(a3)             # 00000022
    sll     t6, a1,  1
    addu    t8, t6, t1
    sll     t9, t7,  1
    addu    t6, t8, t9
    lh      t7, 0x0000(t6)             # 00000000
    b       lbl_8008AE08
    sh      t7, 0x0004(a2)             # 00000010
    lh      t8, 0x000A(a3)             # 00000022
lbl_8008ADF8:
    sll     t9, t8,  1
    addu    t6, t1, t9
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0004(a2)             # 00000010
lbl_8008AE08:
    lh      t8, 0x000C(a3)             # 00000024
    addiu   a3, a3, 0x000C             # a3 = 00000024
    addiu   a2, a2, 0x0006             # a2 = 00000012
    slt     $at, a1, t8
    beql    $at, $zero, lbl_8008AE44
    lh      t6, 0x0002(a3)             # 00000026
    lh      t7, 0x0002(a3)             # 00000026
    sll     t9, a1,  1
    addu    t6, t9, t1
    sll     t8, t7,  1
    addu    t9, t6, t8
    lh      t7, 0x0000(t9)             # 00000000
    b       lbl_8008AE54
    sh      t7, 0x0000(a2)             # 00000012
    lh      t6, 0x0002(a3)             # 00000026
lbl_8008AE44:
    sll     t8, t6,  1
    addu    t9, t1, t8
    lh      t7, 0x0000(t9)             # 00000000
    sh      t7, 0x0000(a2)             # 00000012
lbl_8008AE54:
    lh      t6, 0x0004(a3)             # 00000028
    slt     $at, a1, t6
    beql    $at, $zero, lbl_8008AE88
    lh      t9, 0x0006(a3)             # 0000002A
    lh      t7, 0x0006(a3)             # 0000002A
    sll     t8, a1,  1
    addu    t9, t8, t1
    sll     t6, t7,  1
    addu    t8, t9, t6
    lh      t7, 0x0000(t8)             # 00000000
    b       lbl_8008AE98
    sh      t7, 0x0002(a2)             # 00000014
    lh      t9, 0x0006(a3)             # 0000002A
lbl_8008AE88:
    sll     t6, t9,  1
    addu    t8, t1, t6
    lh      t7, 0x0000(t8)             # 00000000
    sh      t7, 0x0002(a2)             # 00000014
lbl_8008AE98:
    lh      t9, 0x0008(a3)             # 0000002C
    slt     $at, a1, t9
    beql    $at, $zero, lbl_8008AECC
    lh      t8, 0x000A(a3)             # 0000002E
    lh      t7, 0x000A(a3)             # 0000002E
    sll     t6, a1,  1
    addu    t8, t6, t1
    sll     t9, t7,  1
    addu    t6, t8, t9
    lh      t7, 0x0000(t6)             # 00000000
    b       lbl_8008AEDC
    sh      t7, 0x0004(a2)             # 00000016
    lh      t8, 0x000A(a3)             # 0000002E
lbl_8008AECC:
    sll     t9, t8,  1
    addu    t6, t1, t9
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0004(a2)             # 00000016
lbl_8008AEDC:
    addiu   t8, v1, 0x0001             # t8 = 00000001
    addiu   a3, a3, 0x000C             # a3 = 00000030
    bne     t8, v0, lbl_8008AD38
    addiu   a2, a2, 0x0006             # a2 = 00000018
lbl_8008AEEC:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_8008AEF8:
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t9, t0
    addu    v1, v1, $at
    lh      v0, 0x0002(v1)             # 00000002
    jr      $ra
    nop


func_8008AF34:
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t9, t0
    addu    v1, v1, $at
    lh      v0, 0x0000(v1)             # 00000000
    jr      $ra
    nop


func_8008AF70:
    sll     t6, a0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, t9, t0
    addu    v1, v1, $at
    lh      v0, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_8008AFB8:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    or      s0, a1, $zero              # s0 = 00000000
    lwc1    $f12, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    nop
    c.lt.s  $f12, $f4
    nop
    bc1f    lbl_8008B378
    nop
    blez    a0, lbl_8008B42C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    v1, a0, 0x0001             # v1 = 00000000
    beql    v1, $zero, lbl_8008B0B4
    addiu   v0, v0, 0x0002             # v0 = 00000002
    lh      v1, 0x0000(a2)             # 00000000
    lh      t6, 0x0000(a3)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   s0, s0, 0x0006             # s0 = 00000006
    subu    a1, t6, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f6                    # $f6 = 0.00
    addiu   a2, a2, 0x0006             # a2 = 00000006
    addiu   a3, a3, 0x0006             # a3 = 00000006
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f12
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    addu    t1, t0, v1
    sh      t1, -0x0006(s0)            # 00000000
    lh      t2, -0x0004(a3)            # 00000002
    lh      v1, -0x0004(a2)            # 00000002
    subu    a1, t2, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f12
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    addu    t7, t6, v1
    sh      t7, -0x0004(s0)            # 00000002
    lh      t8, -0x0002(a3)            # 00000004
    lh      v1, -0x0002(a2)            # 00000004
    subu    a1, t8, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f12
    trunc.w.s $f4, $f18
    mfc1    t2, $f4
    nop
    addu    t3, t2, v1
    beq     v0, a0, lbl_8008B42C
    sh      t3, -0x0002(s0)            # 00000004
    addiu   v0, v0, 0x0002             # v0 = 00000003
lbl_8008B0B4:
    lh      v1, 0x0000(a2)             # 00000006
    beq     v0, a0, lbl_8008B220
    lh      t4, 0x0000(a3)             # 00000006
lbl_8008B0C0:
    subu    a1, t4, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    addiu   v0, v0, 0x0002             # v0 = 00000005
    addiu   s0, s0, 0x000C             # s0 = 00000012
    cvt.s.w $f18, $f18
    addiu   a2, a2, 0x000C             # a2 = 00000012
    addiu   a3, a3, 0x000C             # a3 = 00000012
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t8, $f18
    nop
    addu    t9, t8, v1
    sh      t9, -0x000C(s0)            # 00000006
    lh      v1, -0x000A(a2)            # 00000008
    lh      t0, -0x000A(a3)            # 00000008
    subu    a1, t0, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t4, $f18
    nop
    addu    t5, t4, v1
    sh      t5, -0x000A(s0)            # 00000008
    lh      v1, -0x0008(a2)            # 0000000A
    lh      t6, -0x0008(a3)            # 0000000A
    subu    a1, t6, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t0, $f18
    nop
    addu    t1, t0, v1
    sh      t1, -0x0008(s0)            # 0000000A
    lh      v1, -0x0006(a2)            # 0000000C
    lh      t2, -0x0006(a3)            # 0000000C
    subu    a1, t2, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t6, $f18
    nop
    addu    t7, t6, v1
    sh      t7, -0x0006(s0)            # 0000000C
    lh      v1, -0x0004(a2)            # 0000000E
    lh      t8, -0x0004(a3)            # 0000000E
    subu    a1, t8, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t2, $f18
    nop
    addu    t3, t2, v1
    sh      t3, -0x0004(s0)            # 0000000E
    lh      v1, -0x0002(a2)            # 00000010
    lh      t4, -0x0002(a3)            # 00000010
    subu    a1, t4, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t8, $f18
    nop
    addu    t9, t8, v1
    sh      t9, -0x0002(s0)            # 00000010
    lh      v1, 0x0000(a2)             # 00000012
    bne     v0, a0, lbl_8008B0C0
    lh      t4, 0x0000(a3)             # 00000012
lbl_8008B220:
    subu    a1, t4, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    addiu   s0, s0, 0x000C             # s0 = 0000001E
    addiu   a2, a2, 0x000C             # a2 = 0000001E
    cvt.s.w $f18, $f18
    addiu   a3, a3, 0x000C             # a3 = 0000001E
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t8, $f18
    nop
    addu    t9, t8, v1
    sh      t9, -0x000C(s0)            # 00000012
    lh      v1, -0x000A(a2)            # 00000014
    lh      t0, -0x000A(a3)            # 00000014
    subu    a1, t0, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t4, $f18
    nop
    addu    t5, t4, v1
    sh      t5, -0x000A(s0)            # 00000014
    lh      v1, -0x0008(a2)            # 00000016
    lh      t6, -0x0008(a3)            # 00000016
    subu    a1, t6, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t0, $f18
    nop
    addu    t1, t0, v1
    sh      t1, -0x0008(s0)            # 00000016
    lh      t2, -0x0006(a3)            # 00000018
    lh      v1, -0x0006(a2)            # 00000018
    subu    a1, t2, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t6, $f18
    nop
    addu    t7, t6, v1
    sh      t7, -0x0006(s0)            # 00000018
    lh      t8, -0x0004(a3)            # 0000001A
    lh      v1, -0x0004(a2)            # 0000001A
    subu    a1, t8, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t2, $f18
    nop
    addu    t3, t2, v1
    sh      t3, -0x0004(s0)            # 0000001A
    lh      t4, -0x0002(a3)            # 0000001C
    lh      v1, -0x0002(a2)            # 0000001C
    subu    a1, t4, v1
    sll     a1, a1, 16
    sra     a1, a1, 16
    mtc1    a1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f18, $f18
    mul.s   $f18, $f18, $f12
    trunc.w.s $f18, $f18
    mfc1    t8, $f18
    nop
    addu    t9, t8, v1
    sh      t9, -0x0002(s0)            # 0000001C
    b       lbl_8008B430
    lw      s0, 0x0004($sp)
lbl_8008B378:
    blez    a0, lbl_8008B42C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    a1, a0, 0x0003             # a1 = 00000000
    beq     a1, $zero, lbl_8008B3BC
    or      v1, a1, $zero              # v1 = 00000000
lbl_8008B38C:
    lh      t0, 0x0000(a3)             # 0000001E
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   s0, s0, 0x0006             # s0 = 00000024
    sh      t0, -0x0006(s0)            # 0000001E
    lh      t1, 0x0002(a3)             # 00000020
    addiu   a3, a3, 0x0006             # a3 = 00000024
    sh      t1, -0x0004(s0)            # 00000020
    lh      t2, -0x0002(a3)            # 00000022
    bne     v1, v0, lbl_8008B38C
    sh      t2, -0x0002(s0)            # 00000022
    beql    v0, a0, lbl_8008B430
    lw      s0, 0x0004($sp)
lbl_8008B3BC:
    lh      t3, 0x0000(a3)             # 00000024
    addiu   v0, v0, 0x0004             # v0 = 00000005
    addiu   s0, s0, 0x0018             # s0 = 0000003C
    sh      t3, -0x0018(s0)            # 00000024
    lh      t4, 0x0002(a3)             # 00000026
    addiu   a3, a3, 0x0018             # a3 = 0000003C
    sh      t4, -0x0016(s0)            # 00000026
    lh      t5, -0x0014(a3)            # 00000028
    sh      t5, -0x0014(s0)            # 00000028
    lh      t6, -0x0012(a3)            # 0000002A
    sh      t6, -0x0012(s0)            # 0000002A
    lh      t7, -0x0010(a3)            # 0000002C
    sh      t7, -0x0010(s0)            # 0000002C
    lh      t8, -0x000E(a3)            # 0000002E
    sh      t8, -0x000E(s0)            # 0000002E
    lh      t9, -0x000C(a3)            # 00000030
    sh      t9, -0x000C(s0)            # 00000030
    lh      t0, -0x000A(a3)            # 00000032
    sh      t0, -0x000A(s0)            # 00000032
    lh      t1, -0x0008(a3)            # 00000034
    sh      t1, -0x0008(s0)            # 00000034
    lh      t2, -0x0006(a3)            # 00000036
    sh      t2, -0x0006(s0)            # 00000036
    lh      t3, -0x0004(a3)            # 00000038
    sh      t3, -0x0004(s0)            # 00000038
    lh      t4, -0x0002(a3)            # 0000003A
    bne     v0, a0, lbl_8008B3BC
    sh      t4, -0x0002(s0)            # 0000003A
lbl_8008B42C:
    lw      s0, 0x0004($sp)
lbl_8008B430:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8008B438:
    sh      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_8008B444:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBFF0             # v0 = 8011BFF0
    sw      a0, 0x0000($sp)
    lw      t6, 0x0000(v0)             # 8011BFF0
    sll     t7, t6,  1
    sw      t7, 0x0000(v0)             # 8011BFF0
    jr      $ra
    nop


func_8008B464:
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xBEA0             # v0 = 800FBEA0
    sw      a0, 0x0000($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4010(t7)            # 8011BFF0
    lw      t6, 0x0000(v0)             # 800FBEA0
    or      t8, t6, t7                 # t8 = 80120000
    sw      t8, 0x0000(v0)             # 800FBEA0
    jr      $ra
    nop


func_8008B48C:
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x0000(a0)             # 00000000
    slti    $at, v1, 0x0032
    bne     $at, $zero, lbl_8008B4A8
    addiu   t6, v1, 0x0001             # t6 = 00000001
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008B4A8:
    sll     t7, v1,  6
    addu    a1, a0, t7
    sh      t6, 0x0000(a0)             # 00000000
    sb      a2, 0x0004(a1)             # 00000004
    addiu   v0, a1, 0x0004             # v0 = 00000004
    jr      $ra
    nop


func_8008B4C4:
# Fetch Link Animation from ROM
# ROM st: link_animetion
# A0 = Global Context
# A1 = Segment offset to animation
# A2 = ?
# A3 = ?, possibly limbs?
# SP+0x10 = Link Instance + 0x1F0 (animation store pointer)
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a0, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8008B48C
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8008B5B0
    lw      a3, 0x003C($sp)
    sll     t6, a3,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    addiu   a0, v0, 0x0024             # a0 = 00000024
    sw      t2, 0x0030($sp)
    sw      a0, 0x0028($sp)
    addiu   a1, v0, 0x003C             # a1 = 0000003C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80004220              # osCreateMesgQueue
    sw      v0, 0x0034($sp)
    lw      a3, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lw      t3, 0x0030($sp)
    addu    $at, a3, $zero
    sll     a3, a3,  2
    subu    a3, a3, $at
    sll     a3, a3,  1
    addiu   a3, a3, 0x0002             # a3 = 00000002
    multu   a3, t6
    lw      t4, 0x0004(t3)             # 00000004
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      v1, 0x0034($sp)
    lw      t0, 0x0028($sp)
    lui     t9, 0x0055                 # t9 = 00550000
    and     t5, t4, $at
    addiu   t9, t9, 0x7000             # t9 = 00557000
    sw      $zero, 0x0018($sp)
    mflo    t7
    addu    t8, t5, t7
    addu    a2, t8, t9
    sw      $zero, 0x0010($sp)
    lw      a1, 0x0048($sp)
    addiu   a0, v1, 0x0004             # a0 = 00000004
    jal     func_80000D28
    sw      t0, 0x0014($sp)
lbl_8008B5B0:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8008B5C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8008B48C
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8008B618
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4010(t6)            # 8011BFF0
    sb      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x001C($sp)
    sb      t7, 0x0005(v0)             # 00000005
    lw      t8, 0x0020($sp)
    sw      t8, 0x0008(v0)             # 00000008
    lw      t9, 0x0024($sp)
    sw      t9, 0x000C(v0)             # 0000000C
lbl_8008B618:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B628:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8008B48C
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8008B688
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4010(t6)            # 8011BFF0
    sb      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x001C($sp)
    sb      t7, 0x0005(v0)             # 00000005
    lw      t8, 0x0020($sp)
    sw      t8, 0x0008(v0)             # 00000008
    lw      t9, 0x0024($sp)
    sw      t9, 0x000C(v0)             # 0000000C
    lwc1    $f4, 0x0028($sp)
    swc1    $f4, 0x0010(v0)            # 00000010
lbl_8008B688:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B698:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_8008B48C
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8008B6F8
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4010(t6)            # 8011BFF0
    sb      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x001C($sp)
    sb      t7, 0x0005(v0)             # 00000005
    lw      t8, 0x0020($sp)
    sw      t8, 0x0008(v0)             # 00000008
    lw      t9, 0x0024($sp)
    sw      t9, 0x000C(v0)             # 0000000C
    lw      t0, 0x0028($sp)
    sw      t0, 0x0010(v0)             # 00000010
lbl_8008B6F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B708:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_8008B48C
    addu    a0, a0, $at
    beq     v0, $zero, lbl_8008B768
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4010(t6)            # 8011BFF0
    sb      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x001C($sp)
    sb      t7, 0x0005(v0)             # 00000005
    lw      t8, 0x0020($sp)
    sw      t8, 0x0008(v0)             # 00000008
    lw      t9, 0x0024($sp)
    sw      t9, 0x000C(v0)             # 0000000C
    lw      t0, 0x0028($sp)
    sw      t0, 0x0010(v0)             # 00000010
lbl_8008B768:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B778:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a3, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addu    a0, a3, $at
    jal     func_8008B48C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_8008B7C4
    lw      t6, 0x001C($sp)
    sw      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x0020($sp)
    sw      t7, 0x0008(v0)             # 00000008
    lwc1    $f4, 0x0024($sp)
    swc1    $f4, 0x000C(v0)            # 0000000C
lbl_8008B7C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B7D4:
# OSReceiveMesg, Get ? Message
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0020             # a0 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008B804:
    sw      a0, 0x0000($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x4160(t7)            # 800FBEA0
    lbu     t6, 0x0000(a1)             # 00000000
    or      v0, a1, $zero              # v0 = 00000000
    and     t8, t6, t7
    bne     t8, $zero, lbl_8008B86C
    nop
    lbu     t9, 0x0001(a1)             # 00000001
    lw      v1, 0x0004(a1)             # 00000004
    lw      a0, 0x0008(a1)             # 00000008
    blez    t9, lbl_8008B86C
    or      a2, $zero, $zero           # a2 = 00000000
    lwl     t1, 0x0000(a0)             # 00000000
lbl_8008B83C:
    lwr     t1, 0x0003(a0)             # 00000003
    addiu   a2, a2, 0x0001             # a2 = 00000001
    addiu   v1, v1, 0x0006             # v1 = 00000006
    swl     t1, -0x0006(v1)            # 00000000
    swr     t1, -0x0003(v1)            # 00000003
    lhu     t1, 0x0004(a0)             # 00000004
    addiu   a0, a0, 0x0006             # a0 = 00000006
    sh      t1, -0x0002(v1)            # 00000004
    lbu     t2, 0x0001(v0)             # 00000001
    slt     $at, a2, t2
    bnel    $at, $zero, lbl_8008B83C
    lwl     t1, 0x0000(a0)             # 00000006
lbl_8008B86C:
    jr      $ra
    nop


func_8008B874:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x4160(t7)            # 800FBEA0
    lbu     t6, 0x0000(s0)             # 00000000
    and     t8, t6, t7
    bnel    t8, $zero, lbl_8008B8C0
    lw      $ra, 0x0024($sp)
    lw      a1, 0x0004(s0)             # 00000004
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lbu     a0, 0x0001(s0)             # 00000001
    lw      a3, 0x0008(s0)             # 00000008
    or      a2, a1, $zero              # a2 = 00000000
    jal     func_8008AFB8
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_8008B8C0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008B8D0:
    sw      a0, 0x0000($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x4160(t7)            # 800FBEA0
    lbu     t6, 0x0000(a1)             # 00000000
    or      v0, a1, $zero              # v0 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    and     t8, t6, t7
    bne     t8, $zero, lbl_8008B948
    nop
    lbu     t9, 0x0001(a1)             # 00000001
    lw      v1, 0x0004(a1)             # 00000004
    lw      a0, 0x0008(a1)             # 00000008
    blez    t9, lbl_8008B948
    lw      a2, 0x000C(a1)             # 0000000C
lbl_8008B908:
    lbu     a1, 0x0000(a2)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
    beql    a1, $zero, lbl_8008B934
    lbu     t2, 0x0001(v0)             # 00000001
    lwl     t1, 0x0000(a0)             # 00000000
    lwr     t1, 0x0003(a0)             # 00000003
    swl     t1, 0x0000(v1)             # 00000000
    swr     t1, 0x0003(v1)             # 00000003
    lhu     t1, 0x0004(a0)             # 00000004
    sh      t1, 0x0004(v1)             # 00000004
    lbu     t2, 0x0001(v0)             # 00000001
lbl_8008B934:
    addiu   a3, a3, 0x0001             # a3 = 00000001
    addiu   v1, v1, 0x0006             # v1 = 00000006
    slt     $at, a3, t2
    bne     $at, $zero, lbl_8008B908
    addiu   a0, a0, 0x0006             # a0 = 00000006
lbl_8008B948:
    jr      $ra
    nop


func_8008B950:
    sw      a0, 0x0000($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x4160(t7)            # 800FBEA0
    lbu     t6, 0x0000(a1)             # 00000000
    or      v0, a1, $zero              # v0 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    and     t8, t6, t7
    bne     t8, $zero, lbl_8008B9CC
    nop
    lbu     t9, 0x0001(a1)             # 00000001
    lw      v1, 0x0004(a1)             # 00000004
    lw      a0, 0x0008(a1)             # 00000008
    blez    t9, lbl_8008B9CC
    lw      a2, 0x000C(a1)             # 0000000C
lbl_8008B988:
    lbu     a1, 0x0000(a2)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
    sltiu   a1, a1, 0x0001
    beql    a1, $zero, lbl_8008B9B8
    lbu     t2, 0x0001(v0)             # 00000001
    lwl     t1, 0x0000(a0)             # 00000000
    lwr     t1, 0x0003(a0)             # 00000003
    swl     t1, 0x0000(v1)             # 00000000
    swr     t1, 0x0003(v1)             # 00000003
    lhu     t1, 0x0004(a0)             # 00000004
    sh      t1, 0x0004(v1)             # 00000004
    lbu     t2, 0x0001(v0)             # 00000001
lbl_8008B9B8:
    addiu   a3, a3, 0x0001             # a3 = 00000001
    addiu   v1, v1, 0x0006             # v1 = 00000006
    slt     $at, a3, t2
    bne     $at, $zero, lbl_8008B988
    addiu   a0, a0, 0x0006             # a0 = 00000006
lbl_8008B9CC:
    jr      $ra
    nop


func_8008B9D4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0000(a3)             # 00000000
    lw      a0, 0x0004(a3)             # 00000004
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    lh      a2, 0x00B6(v0)             # 000000B6
    sw      a3, 0x0034($sp)
    jal     func_8008D4DC
    sw      v0, 0x0028($sp)
    lw      v0, 0x0028($sp)
    lwc1    $f4, 0x001C($sp)
    lw      a3, 0x0034($sp)
    lwc1    $f6, 0x0050(v0)            # 00000050
    lwc1    $f10, 0x0024(v0)           # 00000024
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0054(v0)            # 00000054
    add.s   $f16, $f10, $f8
    swc1    $f16, 0x0024(v0)           # 00000024
    lwc1    $f18, 0x0020($sp)
    lwc1    $f10, 0x0008(a3)           # 00000008
    lwc1    $f16, 0x0028(v0)           # 00000028
    mul.s   $f6, $f18, $f4
    nop
    mul.s   $f8, $f6, $f10
    lwc1    $f6, 0x0058(v0)            # 00000058
    add.s   $f18, $f16, $f8
    lwc1    $f16, 0x002C(v0)           # 0000002C
    swc1    $f18, 0x0028(v0)           # 00000028
    lwc1    $f4, 0x0024($sp)
    mul.s   $f10, $f4, $f6
    add.s   $f8, $f16, $f10
    swc1    $f8, 0x002C(v0)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8008BA68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s0, 0x0014($sp)
    lh      t6, 0x0000(s1)             # 00000000
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s0, s1, 0x0004             # s0 = 00000004
    beq     t6, $zero, lbl_8008BAD8
    addiu   s3, s3, 0xBEA4             # s3 = 800FBEA4
    lbu     t7, 0x0000(s0)             # 00000004
lbl_8008BAA0:
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0004             # a1 = 00000008
    sll     t8, t7,  2
    addu    t9, s3, t8
    lw      t9, 0x0000(t9)             # 00000000
    jalr    $ra, t9
    nop
    lh      t0, 0x0000(s1)             # 00000000
    addiu   s0, s0, 0x0040             # s0 = 00000044
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0000(s1)             # 00000000
    lh      t2, 0x0000(s1)             # 00000000
    bnel    t2, $zero, lbl_8008BAA0
    lbu     t7, 0x0000(s0)             # 00000044
lbl_8008BAD8:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, -0x4010($at)           # 8011BFF0
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x4160($at)        # 800FBEA0
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8008BB08:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      a3, 0x0044($sp)
    lui     t3, 0x8000                 # t3 = 80000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t1, t8
    lw      t4, 0x0000(t9)             # 00000000
    and     t5, a2, t2
    lw      t7, 0x0048($sp)
    addu    t6, t4, t5
    addu    t0, t6, t3
    lbu     v0, 0x0004(t0)             # 00000004
    sb      t7, 0x0034(a1)             # 00000034
    lw      t8, 0x0048($sp)
    lw      t4, 0x0048($sp)
    lw      t6, 0x0048($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_8008BB78
    andi    t5, t4, 0x0001             # t5 = 00000000
    b       lbl_8008BB7C
    or      v1, v0, $zero              # v1 = 00000000
lbl_8008BB78:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8008BB7C:
    beq     t5, $zero, lbl_8008BB88
    andi    t7, t6, 0x0004             # t7 = 00000000
    addu    v1, v1, v0
lbl_8008BB88:
    beql    t7, $zero, lbl_8008BB98
    sb      v1, 0x0000(a1)             # 00000000
    addu    v1, v1, v0
    sb      v1, 0x0000(a1)             # 00000000
lbl_8008BB98:
    lbu     t8, 0x0008(t0)             # 00000008
    sll     a2, v1,  2
    subu    a2, a2, v1
    sb      t8, 0x0002(a1)             # 00000002
    lw      v0, 0x0000(t0)             # 00000000
    sll     a2, a2,  1
    or      a0, a2, $zero              # a0 = 00000000
    sll     t9, v0,  4
    srl     t4, t9, 28
    sll     t5, t4,  2
    addu    t6, t1, t5
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, v0, t2
    addiu   v0, $zero, 0xFFF0          # v0 = FFFFFFF0
    addu    t9, t7, t8
    addu    t4, t9, t3
    sw      t4, 0x0004(a1)             # 00000004
    lw      t5, 0x0048($sp)
    lw      v1, 0x004C($sp)
    andi    t6, t5, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_8008BBF4
    addiu   t7, v1, 0x000F             # t7 = 00000010
    addiu   a0, a2, 0x0002             # a0 = 00000002
lbl_8008BBF4:
    bne     v1, $zero, lbl_8008BC24
    and     t8, t7, v0
    sw      a0, 0x0028($sp)
    jal     func_80066C10              # zelda_malloc?
    sw      a1, 0x003C($sp)
    lw      a1, 0x003C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80066C10              # zelda_malloc?
    sw      v0, 0x0020(a1)             # 00000020
    lw      a1, 0x003C($sp)
    b       lbl_8008BC38
    sw      v0, 0x0024(a1)             # 00000024
lbl_8008BC24:
    sw      t8, 0x0020(a1)             # 00000020
    lw      t9, 0x0050($sp)
    addiu   t4, t9, 0x000F             # t4 = 0000000F
    and     t5, t4, v0
    sw      t5, 0x0024(a1)             # 00000024
lbl_8008BC38:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0038($sp)
    lw      a2, 0x0044($sp)
    lui     a3, 0x3F80                 # a3 = 3F800000
    sw      $zero, 0x0018($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    jal     func_8008C000
    swc1    $f0, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8008BC6C:
    lbu     t6, 0x0001(a0)             # 00000001
    lui     t8, 0x8009                 # t8 = 80090000
    mtc1    $zero, $f4                 # $f4 = 0.00
    slti    $at, t6, 0x0002
    beq     $at, $zero, lbl_8008BC94
    addiu   t8, t8, 0xBF00             # t8 = 8008BF00
    lui     t7, 0x8009                 # t7 = 80090000
    addiu   t7, t7, 0xBE60             # t7 = 8008BE60
    b       lbl_8008BC98
    sw      t7, 0x0030(a0)             # 00000030
lbl_8008BC94:
    sw      t8, 0x0030(a0)             # 00000030
lbl_8008BC98:
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_8008BCA4:
# Link related, Executes function pointer at 0x0030(A1)
# Called by ovl_player_actor
# A0 = Global Context
# A1 = Link Instance + 0x1A4 (animations)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0030(a1)             # 00000030
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008BCC8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f0, 0x0028(s0)            # 00000028
    mtc1    t7, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    mov.s   $f12, $f0
    cvt.s.w $f6, $f4
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f2, $f6, $f8
    nop
    mul.s   $f16, $f10, $f2
    sub.s   $f18, $f0, $f16
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    c.le.s  $f0, $f4
    nop
    bc1f    lbl_8008BD44
    nop
    jal     func_8008BC6C
    swc1    $f12, 0x002C($sp)
    lwc1    $f12, 0x002C($sp)
    lwc1    $f0, 0x0028(s0)            # 00000028
lbl_8008BD44:
    div.s   $f8, $f0, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lbu     a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0020(s0)             # 00000020
    lw      a3, 0x0024(s0)             # 00000024
    lw      a0, 0x0030($sp)
    sub.s   $f10, $f6, $f8
    jal     func_8008B628
    swc1    $f10, 0x0010($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8008BD84:
# Link Animation Related?
# A0 = Global Context
# A1 = Link Instance + 0x1A4 (animations)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lwc1    $f4, 0x0018(s0)            # 00000018
    lw      t7, 0x0020(s0)             # 00000020
    lw      a1, 0x0008(s0)             # 00000008
    trunc.w.s $f6, $f4
    lbu     a3, 0x0000(s0)             # 00000000
    lw      a0, 0x0028($sp)
    sw      t7, 0x0010($sp)
    mfc1    a2, $f6
    jal     func_8008B4C4
    nop
    lwc1    $f0, 0x0028(s0)            # 00000028
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     t8, 0x8012                 # t8 = 80120000
    c.eq.s  $f8, $f0
    nop
    bc1tl   lbl_8008BE50
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lh      t9, 0x0110(t8)             # 80120110
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f2, $f16, $f18
    nop
    mul.s   $f6, $f4, $f2
    sub.s   $f8, $f0, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    lw      a0, 0x0028($sp)
    c.le.s  $f0, $f12
    nop
    bc1f    lbl_8008BE38
    nop
    b       lbl_8008BE4C
    swc1    $f12, 0x0028(s0)           # 00000028
lbl_8008BE38:
    lbu     a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0020(s0)             # 00000020
    lw      a3, 0x0024(s0)             # 00000024
    jal     func_8008B628
    swc1    $f0, 0x0010($sp)
lbl_8008BE4C:
    lw      $ra, 0x0024($sp)
lbl_8008BE50:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008BE60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f16, 0x001C(a1)           # 0000001C
    lwc1    $f10, 0x0018(a1)           # 00000018
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f2, $f6, $f8
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f18, $f16, $f2
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0018(a1)            # 00000018
    lwc1    $f0, 0x0018(a1)            # 00000018
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8008BECC
    lwc1    $f2, 0x0014(a1)            # 00000014
    lwc1    $f8, 0x0014(a1)            # 00000014
    add.s   $f16, $f0, $f8
    b       lbl_8008BEE4
    swc1    $f16, 0x0018(a1)           # 00000018
    lwc1    $f2, 0x0014(a1)            # 00000014
lbl_8008BECC:
    c.le.s  $f2, $f0
    nop
    bc1f    lbl_8008BEE4
    nop
    sub.s   $f10, $f0, $f2
    swc1    $f10, 0x0018(a1)           # 00000018
lbl_8008BEE4:
    jal     func_8008BD84
    nop
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008BF00:
# Link related, called by 8008BCA4
# A0 = Global Context
# A1 = Link Instance + 0x1A4 (animations)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f12, 0x0010(a1)           # 00000010
    lwc1    $f0, 0x0018(a1)            # 00000018
    lh      t7, 0x0110(t6)             # 80120110
    lui     $at, 0x3F00                # $at = 3F000000
    c.eq.s  $f12, $f0
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    $at, $f8                   # $f8 = 0.50
    cvt.s.w $f6, $f4
    mul.s   $f14, $f6, $f8
    bc1fl   lbl_8008BF50
    lwc1    $f2, 0x001C(a1)            # 0000001C
    jal     func_8008BD84
    nop
    b       lbl_8008BFCC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f2, 0x001C(a1)            # 0000001C
lbl_8008BF50:
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f10, $f2, $f14
    add.s   $f18, $f0, $f10
    swc1    $f18, 0x0018(a1)           # 00000018
    lwc1    $f0, 0x0018(a1)            # 00000018
    sub.s   $f4, $f0, $f12
    mul.s   $f6, $f4, $f2
    c.lt.s  $f16, $f6
    nop
    bc1fl   lbl_8008BF88
    c.lt.s  $f0, $f16
    b       lbl_8008BFC0
    swc1    $f12, 0x0018(a1)           # 00000018
    c.lt.s  $f0, $f16
lbl_8008BF88:
    nop
    bc1fl   lbl_8008BFA8
    lwc1    $f2, 0x0014(a1)            # 00000014
    lwc1    $f8, 0x0014(a1)            # 00000014
    add.s   $f10, $f0, $f8
    b       lbl_8008BFC0
    swc1    $f10, 0x0018(a1)           # 00000018
    lwc1    $f2, 0x0014(a1)            # 00000014
lbl_8008BFA8:
    c.le.s  $f2, $f0
    nop
    bc1f    lbl_8008BFC0
    nop
    sub.s   $f18, $f0, $f2
    swc1    $f18, 0x0018(a1)           # 00000018
lbl_8008BFC0:
    jal     func_8008BD84
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008BFCC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008BFDC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      a0, 0x0000($sp)
    div.s   $f4, $f0, $f12
    swc1    $f0, 0x0028(a1)            # 00000028
    swc1    $f4, 0x002C(a1)            # 0000002C
    jr      $ra
    nop


func_8008C000:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f12, 0x0044($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lbu     t6, 0x0043($sp)
    c.eq.s  $f12, $f4
    sb      t6, 0x0001(s0)             # 00000001
    bc1t    lbl_8008C0EC
    nop
    lw      t7, 0x0008(s0)             # 00000008
    lwc1    $f6, 0x0038($sp)
    bnel    s1, t7, lbl_8008C064
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x0018(s0)            # 00000018
    c.eq.s  $f6, $f8
    nop
    bc1t    lbl_8008C0EC
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_8008C064:
    lui     t8, 0x8009                 # t8 = 80090000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f12, $f10
    addiu   t8, t8, 0xBCC8             # t8 = 8008BCC8
    bc1fl   lbl_8008C0A4
    sw      t8, 0x0030(s0)             # 00000030
    jal     func_8008BC6C
    swc1    $f12, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024(s0)             # 00000024
    jal     func_8008D71C
    lw      a2, 0x0020(s0)             # 00000020
    lwc1    $f12, 0x0044($sp)
    b       lbl_8008C0D0
    neg.s   $f12, $f12
    sw      t8, 0x0030(s0)             # 00000030
lbl_8008C0A4:
    lwc1    $f16, 0x0038($sp)
    lw      t0, 0x0024(s0)             # 00000024
    lbu     a3, 0x0000(s0)             # 00000000
    trunc.w.s $f18, $f16
    swc1    $f12, 0x0044($sp)
    lw      a0, 0x0028($sp)
    or      a1, s1, $zero              # a1 = 00000000
    mfc1    a2, $f18
    jal     func_8008B4C4
    sw      t0, 0x0010($sp)
    lwc1    $f12, 0x0044($sp)
lbl_8008C0D0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    div.s   $f4, $f0, $f12
    swc1    $f0, 0x0028(s0)            # 00000028
    b       lbl_8008C128
    swc1    $f4, 0x002C(s0)            # 0000002C
lbl_8008C0EC:
    jal     func_8008BC6C
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, 0x0038($sp)
    lw      t2, 0x0020(s0)             # 00000020
    lbu     a3, 0x0000(s0)             # 00000000
    trunc.w.s $f8, $f6
    lw      a0, 0x0028($sp)
    or      a1, s1, $zero              # a1 = 00000000
    sw      t2, 0x0010($sp)
    mfc1    a2, $f8
    jal     func_8008B4C4
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_8008C128:
    sw      s1, 0x0008(s0)             # 00000008
    lwc1    $f16, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0038($sp)
    swc1    $f18, 0x0018(s0)           # 00000018
    lwc1    $f4, 0x003C($sp)
    jal     func_8008A158
    swc1    $f4, 0x0010(s0)            # 00000010
    mtc1    v0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0014(s0)            # 00000014
    lwc1    $f10, 0x0034($sp)
    swc1    $f10, 0x001C(s0)           # 0000001C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8008C178:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8008A194
    lw      a0, 0x0030($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4
    sw      t6, 0x0018($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_8008C000
    swc1    $f0, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008C1D8:
# Jumping/Animation related?
# A0 = Global Context
# A1 = Link Instance + 0x1A4? (animations)
# A2 = Link Animation reference in Gameplay Keep?
# A3 = New Y Velocity
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_8008A194
    lw      a0, 0x0030($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4
    sw      t6, 0x0018($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_8008C000
    swc1    $f0, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008C23C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8008A194
    lw      a0, 0x0030($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lui     a3, 0x3F80                 # a3 = 3F800000
    sw      $zero, 0x0018($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_8008C000
    swc1    $f0, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008C298:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_8008A194
    lw      a0, 0x0030($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_8008C000
    swc1    $f0, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008C2F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lbu     a1, 0x0000(t6)             # 00000000
    lw      a2, 0x0024(t6)             # 00000024
    jal     func_8008B5C0
    lw      a3, 0x0020(t6)             # 00000020
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008C328:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lbu     a1, 0x0000(t6)             # 00000000
    lw      a2, 0x0020(t6)             # 00000020
    jal     func_8008B5C0
    lw      a3, 0x0024(t6)             # 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008C358:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    trunc.w.s $f4, $f12
    lw      t7, 0x0024($sp)
    lw      a1, 0x0028($sp)
    lw      t8, 0x0024(t7)             # 00000024
    mfc1    a2, $f4
    lbu     a3, 0x0000(t7)             # 00000000
    jal     func_8008B4C4
    sw      t8, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C39C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    trunc.w.s $f4, $f12
    lw      t7, 0x0024($sp)
    lw      a1, 0x0028($sp)
    lw      t8, 0x0020(t7)             # 00000020
    mfc1    a2, $f4
    lbu     a3, 0x0000(t7)             # 00000000
    jal     func_8008B4C4
    sw      t8, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C3E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lbu     a1, 0x0000(t6)             # 00000000
    lw      a2, 0x0020(t6)             # 00000020
    lw      a3, 0x0024(t6)             # 00000024
    jal     func_8008B628
    swc1    $f12, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C418:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    trunc.w.s $f4, $f12
    lw      t7, 0x0020(s0)             # 00000020
    lbu     a3, 0x0000(s0)             # 00000000
    lw      a0, 0x0030($sp)
    mfc1    a2, $f4
    lw      a1, 0x0038($sp)
    jal     func_8008B4C4
    sw      t7, 0x0010($sp)
    lwc1    $f6, 0x0044($sp)
    lw      v0, 0x004C($sp)
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    trunc.w.s $f8, $f6
    addiu   v0, v0, 0x000F             # v0 = 0000000F
    and     v0, v0, $at
    lbu     a3, 0x0000(s0)             # 00000000
    mfc1    a2, $f8
    sw      v0, 0x0028($sp)
    sw      v0, 0x0010($sp)
    lw      a0, 0x0030($sp)
    jal     func_8008B4C4
    lw      a1, 0x0040($sp)
    lwc1    $f10, 0x0048($sp)
    lbu     a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0020(s0)             # 00000020
    lw      a0, 0x0030($sp)
    lw      a3, 0x0028($sp)
    jal     func_8008B628
    swc1    $f10, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8008C4B8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    trunc.w.s $f4, $f12
    lw      t7, 0x0024(s0)             # 00000024
    lbu     a3, 0x0000(s0)             # 00000000
    lw      a0, 0x0030($sp)
    mfc1    a2, $f4
    lw      a1, 0x0038($sp)
    jal     func_8008B4C4
    sw      t7, 0x0010($sp)
    lwc1    $f6, 0x0044($sp)
    lw      v0, 0x004C($sp)
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    trunc.w.s $f8, $f6
    addiu   v0, v0, 0x000F             # v0 = 0000000F
    and     v0, v0, $at
    lbu     a3, 0x0000(s0)             # 00000000
    mfc1    a2, $f8
    sw      v0, 0x0028($sp)
    sw      v0, 0x0010($sp)
    lw      a0, 0x0030($sp)
    jal     func_8008B4C4
    lw      a1, 0x0040($sp)
    lwc1    $f10, 0x0048($sp)
    lbu     a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0024(s0)             # 00000024
    lw      a0, 0x0030($sp)
    lw      a3, 0x0028($sp)
    jal     func_8008B628
    swc1    $f10, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8008C558:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    jal     func_8008BC6C
    sb      t6, 0x0001(a0)             # 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008C57C:
    mtc1    a1, $f14                   # $f14 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x001C(a0)            # 0000001C
    lwc1    $f6, 0x0018(a0)            # 00000018
    mul.s   $f0, $f4, $f12
    sub.s   $f2, $f6, $f0
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_8008C5BC
    lwc1    $f12, 0x0014(a0)           # 00000014
    lwc1    $f12, 0x0014(a0)           # 00000014
    b       lbl_8008C5D0
    add.s   $f2, $f2, $f12
    lwc1    $f12, 0x0014(a0)           # 00000014
lbl_8008C5BC:
    c.le.s  $f12, $f2
    nop
    bc1fl   lbl_8008C5D4
    c.eq.s  $f14, $f16
    sub.s   $f2, $f2, $f12
lbl_8008C5D0:
    c.eq.s  $f14, $f16
lbl_8008C5D4:
    add.s   $f8, $f2, $f0
    bc1fl   lbl_8008C5F8
    sub.s   $f12, $f8, $f14
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_8008C5F8
    sub.s   $f12, $f8, $f14
    mov.s   $f14, $f12
    sub.s   $f12, $f8, $f14
lbl_8008C5F8:
    mul.s   $f10, $f12, $f0
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_8008C62C
    nop
    sub.s   $f18, $f12, $f0
    mul.s   $f4, $f18, $f0
    c.lt.s  $f4, $f16
    nop
    bc1f    lbl_8008C62C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8008C62C:
    jr      $ra
    nop


func_8008C634:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lh      t7, 0x0110(t6)             # 80120110
    mfc1    a1, $f12
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    mfc1    a2, $f0
    jal     func_8008C57C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008C684:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    sw      s0, 0x0018($sp)
    lui     t0, 0x00FF                 # t0 = 00FF0000
    ori     t0, t0, 0xFFFF             # t0 = 00FFFFFF
    or      s0, a1, $zero              # s0 = 00000000
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    sw      $ra, 0x001C($sp)
    sw      a3, 0x002C($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, a0, t8
    lw      t2, 0x0000(t9)             # 00000000
    and     t3, a2, t0
    addu    t4, t2, t3
    addu    v0, t4, t1
    lbu     t5, 0x0004(v0)             # 00000004
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(s0)             # 00000000
    lw      v1, 0x0000(v0)             # 00000000
    sll     t7, v1,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t2, a0, t9
    lw      t3, 0x0000(t2)             # 00000000
    and     t4, v1, t0
    addu    t5, t3, t4
    addu    t6, t5, t1
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0030($sp)
    lw      t8, 0x0030($sp)
    bnel    t7, $zero, lbl_8008C754
    sw      t8, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    lbu     a0, 0x0000(s0)             # 00000000
    sw      v0, 0x0020(s0)             # 00000020
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    b       lbl_8008C75C
    sw      v0, 0x0024(s0)             # 00000024
    sw      t8, 0x0020(s0)             # 00000020
lbl_8008C754:
    lw      t9, 0x0034($sp)
    sw      t9, 0x0024(s0)             # 00000024
lbl_8008C75C:
    lw      t2, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    beql    t2, $zero, lbl_8008C778
    lw      $ra, 0x001C($sp)
    jal     func_8008D2D4
    or      a1, t2, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_8008C778:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C788:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    sw      s0, 0x0018($sp)
    lui     t0, 0x00FF                 # t0 = 00FF0000
    ori     t0, t0, 0xFFFF             # t0 = 00FFFFFF
    or      s0, a1, $zero              # s0 = 00000000
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    sw      $ra, 0x001C($sp)
    sw      a3, 0x002C($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, a0, t8
    lw      t2, 0x0000(t9)             # 00000000
    and     t3, a2, t0
    addu    t4, t2, t3
    addu    v0, t4, t1
    lbu     t5, 0x0004(v0)             # 00000004
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0000(s0)             # 00000000
    lbu     t7, 0x0008(v0)             # 00000008
    sb      t7, 0x0002(s0)             # 00000002
    lw      v1, 0x0000(v0)             # 00000000
    sll     t8, v1,  4
    srl     t9, t8, 28
    sll     t2, t9,  2
    addu    t3, a0, t2
    lw      t4, 0x0000(t3)             # 00000000
    and     t5, v1, t0
    addu    t6, t4, t5
    addu    t7, t6, t1
    sw      t7, 0x0004(s0)             # 00000004
    lw      t8, 0x0030($sp)
    lw      t9, 0x0030($sp)
    bnel    t8, $zero, lbl_8008C860
    sw      t9, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    lbu     a0, 0x0000(s0)             # 00000000
    sw      v0, 0x0020(s0)             # 00000020
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    b       lbl_8008C868
    sw      v0, 0x0024(s0)             # 00000024
    sw      t9, 0x0020(s0)             # 00000020
lbl_8008C860:
    lw      t2, 0x0034($sp)
    sw      t2, 0x0024(s0)             # 00000024
lbl_8008C868:
    lw      t3, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    beql    t3, $zero, lbl_8008C884
    lw      $ra, 0x001C($sp)
    jal     func_8008D2D4
    or      a1, t3, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_8008C884:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C894:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a3, 0x002C($sp)
    lui     t2, 0x8000                 # t2 = 80000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t0, t8
    lw      t3, 0x0000(t9)             # 00000000
    and     t4, a2, t1
    addu    t5, t3, t4
    addu    v0, t5, t2
    lbu     t6, 0x0004(v0)             # 00000004
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(s0)             # 00000000
    lw      v1, 0x0000(v0)             # 00000000
    lbu     a0, 0x0000(s0)             # 00000000
    sll     t8, v1,  4
    srl     t9, t8, 28
    sll     t3, t9,  2
    addu    t4, t0, t3
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, v1, t1
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    t7, t5, t6
    addu    t8, t7, t2
    subu    a0, a0, $at
    sw      t8, 0x0004(s0)             # 00000004
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    lbu     a0, 0x0000(s0)             # 00000000
    sw      v0, 0x0020(s0)             # 00000020
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  1
    sw      v0, 0x0024(s0)             # 00000024
    lw      a1, 0x002C($sp)
    beql    a1, $zero, lbl_8008C964
    lw      $ra, 0x001C($sp)
    jal     func_8008D2D4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_8008C964:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008C974:
    lbu     v0, 0x0001(a0)             # 00000001
    lui     t6, 0x8009                 # t6 = 80090000
    addiu   t6, t6, 0xCD74             # t6 = 8008CD74
    slti    $at, v0, 0x0002
    beql    $at, $zero, lbl_8008C998
    slti    $at, v0, 0x0004
    jr      $ra
    sw      t6, 0x0030(a0)             # 00000030
lbl_8008C994:
    slti    $at, v0, 0x0004
lbl_8008C998:
    beq     $at, $zero, lbl_8008C9B0
    lui     t8, 0x8009                 # t8 = 80090000
    lui     t7, 0x8009                 # t7 = 80090000
    addiu   t7, t7, 0xCEBC             # t7 = 8008CEBC
    jr      $ra
    sw      t7, 0x0030(a0)             # 00000030
lbl_8008C9B0:
    addiu   t8, t8, 0xCE14             # t8 = 8008CE14
    sw      t8, 0x0030(a0)             # 00000030
    jr      $ra
    nop


func_8008C9C0:
# Animation related, Executes Func Ptr at A0 + 0x30, passing in A0
# A0 = Animation struct? (Anju + 0x13C/ Archery Gerudo + 0x188)
# V0 = 1 if ?, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0030(a0)             # 00000030
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008C9E4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7560($at)          # 80108AA0
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f0, 0x0028(s0)            # 00000028
    mtc1    t7, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    mov.s   $f12, $f0
    cvt.s.w $f6, $f4
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f2, $f6, $f8
    nop
    mul.s   $f16, $f10, $f2
    sub.s   $f18, $f0, $f16
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    c.le.s  $f0, $f4
    nop
    bc1f    lbl_8008CA64
    nop
    jal     func_8008C974
    swc1    $f12, 0x002C($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f12, 0x002C($sp)
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
lbl_8008CA64:
    div.s   $f10, $f0, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      a1, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    lw      a3, 0x0024(s0)             # 00000024
    or      a2, a1, $zero              # a2 = 00000000
    sub.s   $f16, $f8, $f10
    jal     func_8008AFB8
    swc1    $f16, 0x0010($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8008CAA4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    lh      t8, 0x0110(t7)             # 80120110
    lwc1    $f0, 0x0028(s0)            # 00000028
    lui     $at, 0x8011                # $at = 80110000
    mtc1    t8, $f10                   # $f10 = 0.00
    mul.s   $f6, $f0, $f4
    lwc1    $f18, -0x755C($at)         # 80108AA4
    lwc1    $f4, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f16, $f10
    mtc1    $zero, $f10                # $f10 = 0.00
    trunc.w.s $f8, $f6
    mul.s   $f2, $f16, $f18
    mfc1    a2, $f8
    nop
    sll     a2, a2, 16
    mul.s   $f6, $f4, $f2
    sra     a2, a2, 16
    sub.s   $f8, $f0, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_8008CB40
    lui     $at, 0x4680                # $at = 46800000
    jal     func_8008C974
    sh      a2, 0x002E($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lh      a2, 0x002E($sp)
    swc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    lui     $at, 0x4680                # $at = 46800000
lbl_8008CB40:
    mtc1    $at, $f18                  # $f18 = 16384.00
    lb      t0, 0x0003(s0)             # 00000003
    sll     a0, a2, 16
    mul.s   $f4, $f0, $f18
    sra     a0, a0, 16
    trunc.w.s $f6, $f4
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    bgez    t0, lbl_8008CBAC
    sra     a1, a1, 16
    sll     a0, a2, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    sh      a1, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lh      a1, 0x002C($sp)
    sub.s   $f10, $f8, $f0
    sll     a0, a1, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f10, 0x0028($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    b       lbl_8008CBCC
    sub.s   $f2, $f16, $f0
lbl_8008CBAC:
    jal     func_800636C4              # sins?
    sh      a1, 0x002C($sp)
    lh      a1, 0x002C($sp)
    swc1    $f0, 0x0028($sp)
    sll     a0, a1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mov.s   $f2, $f0
lbl_8008CBCC:
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    c.eq.s  $f2, $f18
    lwc1    $f4, 0x0028($sp)
    bc1tl   lbl_8008CBF4
    mtc1    $zero, $f2                 # $f2 = 0.00
    b       lbl_8008CBF8
    div.s   $f2, $f2, $f4
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8008CBF4:
    nop
lbl_8008CBF8:
    sub.s   $f8, $f6, $f2
    lw      a1, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    lw      a3, 0x0024(s0)             # 00000024
    swc1    $f8, 0x0010($sp)
    jal     func_8008AFB8
    or      a2, a1, $zero              # a2 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8008CC2C:
    addiu   $sp, $sp, 0xFD70           # $sp -= 0x290
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0018(s0)            # 00000018
    lw      a0, 0x0008(s0)             # 00000008
    lbu     a2, 0x0000(s0)             # 00000000
    trunc.w.s $f6, $f4
    lw      a3, 0x0020(s0)             # 00000020
    mfc1    a1, $f6
    jal     func_80089FF0
    nop
    lbu     t7, 0x0001(s0)             # 00000001
    addiu   a3, $sp, 0x0038            # a3 = FFFFFDA8
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_8008CCD8
    lwc1    $f0, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0018(s0)            # 00000018
    lwc1    $f18, 0x0014(s0)           # 00000014
    trunc.w.s $f8, $f0
    trunc.w.s $f4, $f18
    mfc1    a1, $f8
    nop
    mtc1    a1, $f10                   # $f10 = 0.00
    mfc1    t1, $f4
    addiu   a1, a1, 0x0001             # a1 = 00000001
    cvt.s.w $f16, $f10
    slt     $at, a1, t1
    bne     $at, $zero, lbl_8008CCA8
    sub.s   $f2, $f0, $f16
    or      a1, $zero, $zero           # a1 = 00000000
lbl_8008CCA8:
    lw      a0, 0x0008(s0)             # 00000008
    lbu     a2, 0x0000(s0)             # 00000000
    jal     func_80089FF0
    swc1    $f2, 0x0030($sp)
    lwc1    $f2, 0x0030($sp)
    lw      a1, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    addiu   a3, $sp, 0x0038            # a3 = FFFFFDA8
    swc1    $f2, 0x0010($sp)
    jal     func_8008AFB8
    or      a2, a1, $zero              # a2 = 00000000
    lwc1    $f0, 0x0028(s0)            # 00000028
lbl_8008CCD8:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     t2, 0x8012                 # t2 = 80120000
    c.eq.s  $f6, $f0
    nop
    bc1tl   lbl_8008CD64
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    lw      t2, -0x4600(t2)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x7558($at)         # 80108AA8
    lh      t3, 0x0110(t2)             # 80120110
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f2, $f10, $f16
    nop
    mul.s   $f4, $f18, $f2
    sub.s   $f6, $f0, $f4
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0028(s0)            # 00000028
    c.le.s  $f0, $f12
    nop
    bc1f    lbl_8008CD48
    nop
    b       lbl_8008CD60
    swc1    $f12, 0x0028(s0)           # 00000028
lbl_8008CD48:
    lw      a1, 0x0020(s0)             # 00000020
    lbu     a0, 0x0000(s0)             # 00000000
    lw      a3, 0x0024(s0)             # 00000024
    swc1    $f0, 0x0010($sp)
    jal     func_8008AFB8
    or      a2, a1, $zero              # a2 = 00000000
lbl_8008CD60:
    lw      $ra, 0x0024($sp)
lbl_8008CD64:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0290           # $sp += 0x290
    jr      $ra
    nop


func_8008CD74:
# Animation related, called through 8008C9C0
# A0 = Animation Struct?
# V0 = 1 if ?, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7554($at)          # 80108AAC
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f16, 0x001C(a0)           # 0000001C
    lwc1    $f10, 0x0018(a0)           # 00000018
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f2, $f6, $f8
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f18, $f16, $f2
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0018(a0)            # 00000018
    lwc1    $f0, 0x0018(a0)            # 00000018
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_8008CDE0
    lwc1    $f2, 0x0014(a0)            # 00000014
    lwc1    $f8, 0x0014(a0)            # 00000014
    add.s   $f16, $f0, $f8
    b       lbl_8008CDF8
    swc1    $f16, 0x0018(a0)           # 00000018
    lwc1    $f2, 0x0014(a0)            # 00000014
lbl_8008CDE0:
    c.le.s  $f2, $f0
    nop
    bc1f    lbl_8008CDF8
    nop
    sub.s   $f10, $f0, $f2
    swc1    $f10, 0x0018(a0)           # 00000018
lbl_8008CDF8:
    jal     func_8008CC2C
    nop
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008CE14:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7550($at)          # 80108AB0
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f16, 0x001C(a0)           # 0000001C
    lwc1    $f10, 0x0018(a0)           # 00000018
    mtc1    t7, $f4                    # $f4 = 0.00
    lwc1    $f12, 0x000C(a0)           # 0000000C
    cvt.s.w $f6, $f4
    mul.s   $f2, $f6, $f8
    nop
    mul.s   $f18, $f16, $f2
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0018(a0)            # 00000018
    lwc1    $f0, 0x0018(a0)            # 00000018
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_8008CE80
    nop
    sub.s   $f6, $f0, $f12
    lwc1    $f8, 0x0010(a0)            # 00000010
    add.s   $f16, $f6, $f8
    b       lbl_8008CEA0
    swc1    $f16, 0x0018(a0)           # 00000018
lbl_8008CE80:
    lwc1    $f2, 0x0010(a0)            # 00000010
    c.le.s  $f2, $f0
    nop
    bc1f    lbl_8008CEA0
    nop
    sub.s   $f10, $f0, $f2
    add.s   $f18, $f10, $f12
    swc1    $f18, 0x0018(a0)           # 00000018
lbl_8008CEA0:
    jal     func_8008CC2C
    nop
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008CEBC:
# Animation related, called through 8008C9C0
# A0 = Animation Struct?
# V0 = 1 if ?, else 0
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f12, 0x0010(s0)           # 00000010
    lwc1    $f0, 0x0018(s0)            # 00000018
    lh      t7, 0x0110(t6)             # 80120110
    lui     $at, 0x8011                # $at = 80110000
    c.eq.s  $f12, $f0
    mtc1    t7, $f4                    # $f4 = 0.00
    lwc1    $f8, -0x754C($at)          # 80108AB4
    cvt.s.w $f6, $f4
    mul.s   $f14, $f6, $f8
    bc1fl   lbl_8008CF30
    lwc1    $f2, 0x001C(s0)            # 0000001C
    trunc.w.s $f10, $f0
    lw      a0, 0x0008(s0)             # 00000008
    lbu     a2, 0x0000(s0)             # 00000000
    lw      a3, 0x0020(s0)             # 00000020
    mfc1    a1, $f10
    jal     func_80089FF0
    nop
    jal     func_8008CC2C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8008CFAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f2, 0x001C(s0)            # 0000001C
lbl_8008CF30:
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f18, $f2, $f14
    add.s   $f4, $f0, $f18
    swc1    $f4, 0x0018(s0)            # 00000018
    lwc1    $f0, 0x0018(s0)            # 00000018
    sub.s   $f6, $f0, $f12
    mul.s   $f8, $f6, $f2
    c.lt.s  $f16, $f8
    nop
    bc1fl   lbl_8008CF68
    c.lt.s  $f0, $f16
    b       lbl_8008CFA0
    swc1    $f12, 0x0018(s0)           # 00000018
    c.lt.s  $f0, $f16
lbl_8008CF68:
    nop
    bc1fl   lbl_8008CF88
    lwc1    $f2, 0x0014(s0)            # 00000014
    lwc1    $f10, 0x0014(s0)           # 00000014
    add.s   $f18, $f0, $f10
    b       lbl_8008CFA0
    swc1    $f18, 0x0018(s0)           # 00000018
    lwc1    $f2, 0x0014(s0)            # 00000014
lbl_8008CF88:
    c.le.s  $f2, $f0
    nop
    bc1f    lbl_8008CFA0
    nop
    sub.s   $f4, $f0, $f2
    swc1    $f4, 0x0018(s0)            # 00000018
lbl_8008CFA0:
    jal     func_8008CC2C
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008CFAC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008CFC0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lwc1    $f12, 0x0038($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lbu     t6, 0x0037($sp)
    c.eq.s  $f12, $f4
    sb      t6, 0x0001(s0)             # 00000001
    lw      t7, 0x0024($sp)
    bc1t    lbl_8008D0C8
    nop
    lw      t8, 0x0008(s0)             # 00000008
    lwc1    $f6, 0x002C($sp)
    bnel    t7, t8, lbl_8008D024
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x0018(s0)            # 00000018
    c.eq.s  $f6, $f8
    nop
    bc1t    lbl_8008D0C8
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_8008D024:
    or      a0, s0, $zero              # a0 = 00000000
    lb      v0, 0x003F($sp)
    c.lt.s  $f12, $f10
    nop
    bc1f    lbl_8008D060
    nop
    jal     func_8008C974
    swc1    $f12, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024(s0)             # 00000024
    jal     func_8008D71C
    lw      a2, 0x0020(s0)             # 00000020
    lwc1    $f12, 0x0038($sp)
    b       lbl_8008D0AC
    neg.s   $f12, $f12
lbl_8008D060:
    beq     v0, $zero, lbl_8008D07C
    lui     t0, 0x8009                 # t0 = 80090000
    lui     t9, 0x8009                 # t9 = 80090000
    addiu   t9, t9, 0xCAA4             # t9 = 8008CAA4
    sw      t9, 0x0030(s0)             # 00000030
    b       lbl_8008D084
    sb      v0, 0x0003(s0)             # 00000003
lbl_8008D07C:
    addiu   t0, t0, 0xC9E4             # t0 = 8008C9E4
    sw      t0, 0x0030(s0)             # 00000030
lbl_8008D084:
    lwc1    $f16, 0x002C($sp)
    lbu     a2, 0x0000(s0)             # 00000000
    lw      a3, 0x0024(s0)             # 00000024
    trunc.w.s $f18, $f16
    swc1    $f12, 0x0038($sp)
    lw      a0, 0x0024($sp)
    mfc1    a1, $f18
    jal     func_80089FF0
    nop
    lwc1    $f12, 0x0038($sp)
lbl_8008D0AC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    $at, $f4                   # $f4 = 1.00
    div.s   $f8, $f6, $f12
    swc1    $f4, 0x0028(s0)            # 00000028
    b       lbl_8008D0FC
    swc1    $f8, 0x002C(s0)            # 0000002C
lbl_8008D0C8:
    jal     func_8008C974
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x002C($sp)
    lw      a0, 0x0024($sp)
    lbu     a2, 0x0000(s0)             # 00000000
    trunc.w.s $f16, $f10
    lw      a3, 0x0020(s0)             # 00000020
    mfc1    a1, $f16
    jal     func_80089FF0
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_8008D0FC:
    lw      t3, 0x0024($sp)
    sw      t3, 0x0008(s0)             # 00000008
    lwc1    $f4, 0x002C($sp)
    swc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0030($sp)
    swc1    $f6, 0x0010(s0)            # 00000010
    jal     func_8008A158
    lw      a0, 0x0024($sp)
    mtc1    v0, $f8                    # $f8 = 0.00
    lbu     v1, 0x0001(s0)             # 00000001
    cvt.s.w $f10, $f8
    slti    $at, v1, 0x0004
    bne     $at, $zero, lbl_8008D140
    swc1    $f10, 0x0014(s0)           # 00000014
    mtc1    $zero, $f16                # $f16 = 0.00
    b       lbl_8008D164
    swc1    $f16, 0x0018(s0)           # 00000018
lbl_8008D140:
    lwc1    $f18, 0x002C($sp)
    slti    $at, v1, 0x0002
    beq     $at, $zero, lbl_8008D164
    swc1    $f18, 0x0018(s0)           # 00000018
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0014(s0)            # 00000014
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0010(s0)            # 00000010
lbl_8008D164:
    lwc1    $f10, 0x0028($sp)
    swc1    $f10, 0x001C(s0)           # 0000001C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8008D17C:
# Change Animation
# A0 = out* Actor Instance + 0x014C (Drawing Table)
# A1 = ptr New Animation Pointer
# A2 = float Animation Speed
# A3 = ?
# SP+0x10 = float number of frames
# SP+0x14 = some counter related to how long the animation should be played?
# SP+0x18 = float transition rate (between 0.0 and 1.0)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0038($sp)
    lbu     t6, 0x003F($sp)
    lwc1    $f6, 0x0040($sp)
    mfc1    a2, $f12
    mfc1    a3, $f14
    sw      $zero, 0x001C($sp)
    swc1    $f4, 0x0010($sp)
    sw      t6, 0x0014($sp)
    jal     func_8008CFC0
    swc1    $f6, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D1C4:
# Animation related, called by Volvagia (Hole) actor
# A0 = Animation Struct
# A1 = Animation segment offsets
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D21C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lwc1    $f8, 0x0030($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4
    sw      t6, 0x0014($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D278:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D2D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    lw      a1, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f0, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D328:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0024($sp)
    mfc1    a3, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f12, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D360:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f0, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008D3B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0014(a0)            # 00000014
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x0001(a0)             # 00000001
    jal     func_8008C974
    swc1    $f4, 0x0010(a0)            # 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008D3E4:
    lwc1    $f6, 0x001C(a0)            # 0000001C
    lwc1    $f0, 0x000C(a0)            # 0000000C
    lwc1    $f4, 0x0010(a0)            # 00000010
    neg.s   $f8, $f6
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f8, 0x001C(a0)            # 0000001C
    swc1    $f4, 0x000C(a0)            # 0000000C
    jr      $ra
    nop


func_8008D408:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    or      s0, a1, $zero              # s0 = 00000000
    lbu     v1, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    blezl   v1, lbl_8008D468
    lw      s0, 0x0004($sp)
lbl_8008D424:
    lbu     a1, 0x0000(a3)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   a3, a3, 0x0001             # a3 = 00000001
    beql    a1, $zero, lbl_8008D458
    slt     $at, v0, v1
    lwl     t7, 0x0000(a2)             # 00000000
    lwr     t7, 0x0003(a2)             # 00000003
    swl     t7, 0x0000(s0)             # 00000000
    swr     t7, 0x0003(s0)             # 00000003
    lhu     t7, 0x0004(a2)             # 00000004
    sh      t7, 0x0004(s0)             # 00000004
    lbu     v1, 0x0000(a0)             # 00000000
    slt     $at, v0, v1
lbl_8008D458:
    addiu   s0, s0, 0x0006             # s0 = 00000006
    bne     $at, $zero, lbl_8008D424
    addiu   a2, a2, 0x0006             # a2 = 00000006
    lw      s0, 0x0004($sp)
lbl_8008D468:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8008D470:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    or      s0, a1, $zero              # s0 = 00000000
    lbu     v1, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    blezl   v1, lbl_8008D4D4
    lw      s0, 0x0004($sp)
lbl_8008D48C:
    lbu     a1, 0x0000(a3)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   a3, a3, 0x0001             # a3 = 00000001
    sltiu   a1, a1, 0x0001
    beql    a1, $zero, lbl_8008D4C4
    slt     $at, v0, v1
    lwl     t7, 0x0000(a2)             # 00000000
    lwr     t7, 0x0003(a2)             # 00000003
    swl     t7, 0x0000(s0)             # 00000000
    swr     t7, 0x0003(s0)             # 00000003
    lhu     t7, 0x0004(a2)             # 00000004
    sh      t7, 0x0004(s0)             # 00000004
    lbu     v1, 0x0000(a0)             # 00000000
    slt     $at, v0, v1
lbl_8008D4C4:
    addiu   s0, s0, 0x0006             # s0 = 00000006
    bne     $at, $zero, lbl_8008D48C
    addiu   a2, a2, 0x0006             # a2 = 00000006
    lw      s0, 0x0004($sp)
lbl_8008D4D4:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8008D4DC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x0040($sp)
    lbu     t6, 0x0035(s0)             # 00000035
    andi    t7, t6, 0x0010             # t7 = 00000000
    beql    t7, $zero, lbl_8008D52C
    lw      v0, 0x0020(s0)             # 00000020
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0008(s1)            # 00000008
    b       lbl_8008D5E4
    swc1    $f0, 0x0000(s1)            # 00000000
    lw      v0, 0x0020(s0)             # 00000020
lbl_8008D52C:
    lh      a0, 0x0042($sp)
    lh      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x0004(v0)             # 00000004
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f6                    # $f6 = 0.00
    cvt.s.w $f20, $f4
    jal     func_800636C4              # sins?
    cvt.s.w $f22, $f6
    mov.s   $f24, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0042($sp)
    mul.s   $f8, $f20, $f0
    nop
    mul.s   $f10, $f22, $f24
    nop
    mul.s   $f18, $f22, $f0
    nop
    mul.s   $f4, $f20, $f24
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0000(s1)           # 00000000
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0008(s1)            # 00000008
    lh      t0, 0x0038(s0)             # 00000038
    lh      t1, 0x003C(s0)             # 0000003C
    lh      a0, 0x0036(s0)             # 00000036
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t1, $f10                   # $f10 = 0.00
    cvt.s.w $f20, $f8
    jal     func_800636C4              # sins?
    cvt.s.w $f22, $f10
    mov.s   $f24, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0036(s0)             # 00000036
    mul.s   $f16, $f20, $f0
    lwc1    $f6, 0x0000(s1)            # 00000000
    mul.s   $f18, $f22, $f24
    add.s   $f4, $f16, $f18
    mul.s   $f10, $f22, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    mul.s   $f16, $f20, $f24
    sub.s   $f8, $f6, $f4
    lwc1    $f6, 0x0008(s1)            # 00000008
    swc1    $f8, 0x0000(s1)            # 00000000
    sub.s   $f18, $f10, $f16
    sub.s   $f4, $f6, $f18
    swc1    $f4, 0x0008(s1)            # 00000008
lbl_8008D5E4:
    lh      t2, 0x0042($sp)
    lw      v0, 0x0020(s0)             # 00000020
    lh      t4, 0x003E(s0)             # 0000003E
    sh      t2, 0x0036(s0)             # 00000036
    lh      t3, 0x0000(v0)             # 00000000
    sh      t3, 0x0038(s0)             # 00000038
    sh      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x0020(s0)             # 00000020
    lh      t6, 0x0042(s0)             # 00000042
    lh      t5, 0x0004(v0)             # 00000004
    sh      t5, 0x003C(s0)             # 0000003C
    sh      t6, 0x0004(v0)             # 00000004
    lbu     v1, 0x0035(s0)             # 00000035
    andi    t7, v1, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8008D66C
    andi    t8, v1, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_8008D638
    lw      t9, 0x0020(s0)             # 00000020
    b       lbl_8008D654
    swc1    $f0, 0x0004(s1)            # 00000004
    lw      t9, 0x0020(s0)             # 00000020
lbl_8008D638:
    lh      t1, 0x003A(s0)             # 0000003A
    lh      t0, 0x0002(t9)             # 00000002
    subu    t2, t0, t1
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(s1)           # 00000004
lbl_8008D654:
    lw      v0, 0x0020(s0)             # 00000020
    lh      t4, 0x0040(s0)             # 00000040
    lh      t3, 0x0002(v0)             # 00000002
    sh      t3, 0x003A(s0)             # 0000003A
    b       lbl_8008D67C
    sh      t4, 0x0002(v0)             # 00000002
lbl_8008D66C:
    swc1    $f0, 0x0004(s1)            # 00000004
    lw      t5, 0x0020(s0)             # 00000020
    lh      t6, 0x0002(t5)             # 00000002
    sh      t6, 0x003A(s0)             # 0000003A
lbl_8008D67C:
    lbu     t7, 0x0035(s0)             # 00000035
    andi    t8, t7, 0xFFEF             # t8 = 00000000
    sb      t8, 0x0035(s0)             # 00000035
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_8008D6A8:
# Checks if the current animation is at specific frame
# A0 = Animation Struct
# A1 = float frame
# V0 = 1 if at specific frame, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    mfc1    a1, $f12
    jal     func_8008C57C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008D6D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a1, 0x0020(a2)             # 00000020
    beq     a1, $zero, lbl_8008D6F8
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80066C90
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_8008D6F8:
    lw      a0, 0x0024(a2)             # 00000024
    beql    a0, $zero, lbl_8008D710
    lw      $ra, 0x0014($sp)
    jal     func_80066C90
    nop
    lw      $ra, 0x0014($sp)
lbl_8008D710:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8008D71C:
    lbu     t6, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    blez    t6, lbl_8008D760
    nop
    lwl     t8, 0x0000(a2)             # 00000000
lbl_8008D730:
    lwr     t8, 0x0003(a2)             # 00000003
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   a1, a1, 0x0006             # a1 = 00000006
    swl     t8, -0x0006(a1)            # 00000000
    swr     t8, -0x0003(a1)            # 00000003
    lhu     t8, 0x0004(a2)             # 00000004
    addiu   a2, a2, 0x0006             # a2 = 00000006
    sh      t8, -0x0002(a1)            # 00000004
    lbu     t9, 0x0000(a0)             # 00000000
    slt     $at, v0, t9
    bnel    $at, $zero, lbl_8008D730
    lwl     t8, 0x0000(a2)             # 00000006
lbl_8008D760:
    jr      $ra
    nop
    nop
    nop
