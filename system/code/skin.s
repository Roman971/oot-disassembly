# "Skin" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles actor textures.
#
# General Documentation about Textures:
# https://wiki.cloudmodding.com/oot/Textures
#
# Starts at VRAM: 8008D770 / VROM: B036D0
#

.section .text
func_8008D770:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    or      s6, a3, $zero              # s6 = 00000000
    addiu   s7, $zero, 0x000A          # s7 = 0000000A
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lhu     t6, 0x0000(s5)             # 00000000
    or      s1, s4, $zero              # s1 = 00000000
    addiu   s8, $sp, 0x0064            # s8 = FFFFFFD4
    multu   t6, s7
    mflo    t7
    addu    t8, t7, s4
    sltu    $at, s4, t8
    beql    $at, $zero, lbl_8008D900
    lw      $ra, 0x005C($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    lw      s3, 0x00A0($sp)
    lwc1    $f4, 0x0000(s3)            # 00000000
lbl_8008D7F0:
    lhu     t9, 0x0000(s1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4
    sll     t0, t9,  4
    addu    s2, t0, s6
    or      a1, s8, $zero              # a1 = FFFFFFD4
    mfc1    t2, $f6
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFE0
    sh      t2, 0x0000(s2)             # 00000000
    lwc1    $f8, 0x0004(s3)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    nop
    sh      t4, 0x0002(s2)             # 00000002
    lwc1    $f16, 0x0008(s3)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sh      t6, 0x0004(s2)             # 00000004
    lwc1    $f22, 0x0030(s0)           # 00000030
    lwc1    $f24, 0x0034(s0)           # 00000034
    lwc1    $f26, 0x0038(s0)           # 00000038
    swc1    $f20, 0x0038(s0)           # 00000038
    swc1    $f20, 0x0034(s0)           # 00000034
    swc1    $f20, 0x0030(s0)           # 00000030
    lb      t7, 0x0006(s1)             # 00000006
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0064($sp)
    lb      t8, 0x0007(s1)             # 00000007
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0068($sp)
    lb      t9, 0x0008(s1)             # 00000008
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_8008ED08
    swc1    $f18, 0x006C($sp)
    lwc1    $f4, 0x0070($sp)
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    sb      t1, 0x000C(s2)             # 0000000C
    lwc1    $f8, 0x0074($sp)
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sb      t3, 0x000D(s2)             # 0000000D
    lwc1    $f16, 0x0078($sp)
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sb      t5, 0x000E(s2)             # 0000000E
    swc1    $f22, 0x0030(s0)           # 00000030
    swc1    $f24, 0x0034(s0)           # 00000034
    swc1    $f26, 0x0038(s0)           # 00000038
    lhu     t6, 0x0000(s5)             # 00000000
    addiu   s1, s1, 0x000A             # s1 = 0000000A
    multu   t6, s7
    mflo    t7
    addu    t8, t7, s4
    sltu    $at, s1, t8
    bnel    $at, $zero, lbl_8008D7F0
    lwc1    $f4, 0x0000(s3)            # 00000000
    lw      $ra, 0x005C($sp)
lbl_8008D900:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_8008D93C:
    addiu   $sp, $sp, 0xFEF8           # $sp -= 0x108
    sw      $ra, 0x0074($sp)
    sw      s0, 0x0050($sp)
    lui     s0, 0x00FF                 # s0 = 00FF0000
    lui     $ra, 0x8012                # $ra = 80120000
    sw      s1, 0x0054($sp)
    lui     s1, 0x8000                 # s1 = 80000000
    addiu   $ra, $ra, 0x0C38           # $ra = 80120C38
    ori     s0, s0, 0xFFFF             # s0 = 00FFFFFF
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s2, 0x0058($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a0, 0x0108($sp)
    sw      a3, 0x0114($sp)
    lw      t6, 0x0000(a1)             # 00000000
    addiu   s7, $sp, 0x00CC            # s7 = FFFFFFC4
    addiu   s5, $sp, 0x00C0            # s5 = FFFFFFB8
    lw      v1, 0x0000(t6)             # 00000000
    addiu   s4, $sp, 0x0084            # s4 = FFFFFF7C
    sll     t7, v1,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t6, $ra, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, v1, s0
    sll     t6, a2,  2
    addu    t9, t7, t8
    addu    t4, t9, s1
    addu    t7, t4, t6
    lw      t1, 0x0000(t7)             # 00000000
    sll     t9, t1,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    addu    t9, $ra, t7
    lw      t6, 0x0000(t9)             # 00000000
    and     t8, t1, s0
    addu    t7, t8, t6
    addu    t9, t7, s1
    lw      t2, 0x000C(t9)             # 0000000C
    sll     t6, t2,  4
    srl     t7, t6, 28
    sll     t9, t7,  2
    addu    t6, $ra, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, t2, s0
    addu    t9, t8, t7
    addu    t0, t9, s1
    lw      t3, 0x0004(t0)             # 00000004
    sll     t6, t3,  4
    srl     t8, t6, 28
    sll     t7, t8,  2
    addu    t9, $ra, t7
    lw      t6, 0x0000(t9)             # 00000000
    and     t8, t3, s0
    lw      t9, 0x0048(a1)             # 00000048
    addu    t7, t6, t8
    sll     t6, a2,  2
    subu    t6, t6, a2
    sll     t6, t6,  2
    addu    s2, t9, t6
    lbu     t8, 0x0000(s2)             # 00000000
    addu    s6, t7, s1
    sll     t7, t8,  2
    addu    t9, s2, t7
    lw      t6, 0x0004(t9)             # 00000004
    sw      t6, 0x00DC($sp)
    lhu     t5, 0x0002(t0)             # 00000002
    sw      s2, 0x00F0($sp)
    sll     t8, t5,  4
    addu    s3, t8, s6
    sltu    $at, s6, s3
    beql    $at, $zero, lbl_8008DD18
    lw      a0, 0x00F0($sp)
    sw      s2, 0x00F0($sp)
    lui     s2, 0x8012                 # s2 = 80120000
    lui     $at, 0x8011                # $at = 80110000
    mtc1    $zero, $f30                # $f30 = 0.00
    lwc1    $f28, -0x7540($at)         # 80108AC0
    addiu   s2, s2, 0xC000             # s2 = 8011C000
    sw      s3, 0x007C($sp)
    lw      v0, 0x0008(s6)             # 00000008
lbl_8008DAA8:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x0C38             # a2 = 80120C38
    sll     t7, v0,  4
    srl     t9, t7, 28
    sll     t6, t9,  2
    addu    t8, a2, t6
    lw      t7, 0x0000(t8)             # 00000000
    lui     a3, 0x00FF                 # a3 = 00FF0000
    lw      v1, 0x000C(s6)             # 0000000C
    ori     a3, a3, 0xFFFF             # a3 = 00FFFFFF
    and     t9, v0, a3
    addu    t6, t7, t9
    sll     t8, v1,  4
    lui     t0, 0x8000                 # t0 = 80000000
    srl     t7, t8, 28
    addu    s8, t6, t0
    sll     t9, t7,  2
    addu    t6, a2, t9
    lw      t8, 0x0000(t6)             # 00000000
    lhu     a0, 0x0002(s6)             # 00000002
    and     t7, v1, a3
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    t9, t8, t7
    bne     a0, a1, lbl_8008DB68
    addu    s3, t9, t0
    lh      t6, 0x0002(s3)             # 00000002
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFA0
    or      a2, s7, $zero              # a2 = FFFFFFC4
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00A8($sp)
    lh      t8, 0x0004(s3)             # 00000004
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x00AC($sp)
    lh      t7, 0x0006(s3)             # 00000006
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x00B0($sp)
    lbu     t9, 0x0000(s3)             # 00000000
    sll     t6, t9,  6
    jal     func_8008ED08
    addu    a0, s2, t6
    beq     $zero, $zero, lbl_8008DCD0
    lhu     t6, 0x0004(s6)             # 00000004
lbl_8008DB68:
    lw      t8, 0x0114($sp)
    or      s0, s3, $zero              # s0 = 00000000
    bnel    t8, a1, lbl_8008DBEC
    sll     t8, a0,  2
    lhu     t7, 0x0004(s6)             # 00000004
    addiu   a1, $sp, 0x009C            # a1 = FFFFFF94
    or      a2, s7, $zero              # a2 = FFFFFFC4
    sll     t9, t7,  2
    addu    t9, t9, t7
    sll     t9, t9,  1
    addu    s0, t9, s3
    lh      t6, 0x0002(s0)             # 00000002
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x009C($sp)
    lh      t8, 0x0004(s0)             # 00000004
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x00A0($sp)
    lh      t7, 0x0006(s0)             # 00000006
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x00A4($sp)
    lbu     t9, 0x0000(s0)             # 00000000
    sll     t6, t9,  6
    jal     func_8008ED08
    addu    a0, s2, t6
    beq     $zero, $zero, lbl_8008DCD0
    lhu     t6, 0x0004(s6)             # 00000004
    sll     t8, a0,  2
lbl_8008DBEC:
    addu    t8, t8, a0
    sll     t8, t8,  1
    addu    s1, t8, s3
    sltu    $at, s3, s1
    mov.s   $f22, $f30
    mov.s   $f24, $f30
    beq     $at, $zero, lbl_8008DCC0
    mov.s   $f26, $f30
lbl_8008DC0C:
    lbu     t7, 0x0008(s0)             # 00000008
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    bgez    t7, lbl_8008DC2C
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8008DC2C:
    lh      t9, 0x0002(s0)             # 00000002
    mul.s   $f20, $f6, $f28
    or      a1, s4, $zero              # a1 = FFFFFF7C
    mtc1    t9, $f10                   # $f10 = 0.00
    or      a2, s5, $zero              # a2 = FFFFFFB8
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0084($sp)
    lh      t6, 0x0004(s0)             # 00000004
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0088($sp)
    lh      t8, 0x0006(s0)             # 00000006
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    swc1    $f6, 0x008C($sp)
    lbu     t7, 0x0000(s0)             # 00000000
    sll     t9, t7,  6
    jal     func_8008ED08
    addu    a0, s2, t9
    lwc1    $f0, 0x00C0($sp)
    lwc1    $f2, 0x00C4($sp)
    lwc1    $f12, 0x00C8($sp)
    mul.s   $f0, $f0, $f20
    addiu   s0, s0, 0x000A             # s0 = 0000000A
    sltu    $at, s0, s1
    mul.s   $f2, $f2, $f20
    nop
    mul.s   $f12, $f12, $f20
    add.s   $f26, $f26, $f0
    add.s   $f24, $f24, $f2
    add.s   $f22, $f22, $f12
    swc1    $f0, 0x00C0($sp)
    swc1    $f2, 0x00C4($sp)
    bne     $at, $zero, lbl_8008DC0C
    swc1    $f12, 0x00C8($sp)
lbl_8008DCC0:
    swc1    $f26, 0x00CC($sp)
    swc1    $f24, 0x00D0($sp)
    swc1    $f22, 0x00D4($sp)
    lhu     t6, 0x0004(s6)             # 00000004
lbl_8008DCD0:
    or      a1, s8, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    sll     t8, t6,  2
    addu    t8, t8, t6
    sll     t8, t8,  1
    addu    t7, s3, t8
    lbu     t9, 0x0000(t7)             # 00000000
    sw      s7, 0x0010($sp)
    lw      a3, 0x00DC($sp)
    sll     t6, t9,  6
    jal     func_8008D770
    addu    a0, s2, t6
    lw      t8, 0x007C($sp)
    addiu   s6, s6, 0x0010             # s6 = 00000010
    sltu    $at, s6, t8
    bnel    $at, $zero, lbl_8008DAA8
    lw      v0, 0x0008(s6)             # 00000018
    lw      a0, 0x00F0($sp)
lbl_8008DD18:
    lw      t7, 0x0108($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    lw      v1, 0x02C0(t7)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t7)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t8, 0x0000(a0)             # 00000000
    sll     t9, t8,  2
    addu    t7, a0, t9
    lw      t6, 0x0004(t7)             # 00000004
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t6, 0x0004(v1)             # 00000004
    lbu     t8, 0x0000(a0)             # 00000000
    bnel    t8, $zero, lbl_8008DD64
    sb      $zero, 0x0000(a0)          # 00000000
    beq     $zero, $zero, lbl_8008DD64
    sb      t9, 0x0000(a0)             # 00000000
    sb      $zero, 0x0000(a0)          # 00000000
lbl_8008DD64:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    lw      s7, 0x006C($sp)
    lw      s8, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0108           # $sp += 0x108


func_8008DDAC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    sw      $ra, 0x0014($sp)
    lui     t4, 0x8000                 # t4 = 80000000
    lw      t6, 0x0000(a1)             # 00000000
    lw      v0, 0x0000(t6)             # 00000000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t6, t2, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, v0, t3
    sll     t6, a2,  2
    addu    t9, t7, t8
    addu    t1, t9, t4
    addu    t7, t1, t6
    lw      v1, 0x0000(t7)             # 00000000
    sll     t9, v1,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    addu    t9, t2, t7
    lw      t6, 0x0000(t9)             # 00000000
    and     t8, v1, t3
    addu    t7, t8, t6
    addu    t9, t7, t4
    lw      t0, 0x000C(t9)             # 0000000C
    sll     t6, t0,  4
    srl     t7, t6, 28
    sll     t9, t7,  2
    addu    t6, t2, t9
    lw      t7, 0x0000(t6)             # 00000000
    lw      t6, 0x0030($sp)
    and     t8, t0, t3
    addu    t9, t8, t7
    andi    t8, t6, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_8008DE60
    addu    t5, t9, t4
    sw      a0, 0x0020($sp)
    jal     func_8008D93C
    sw      t5, 0x0018($sp)
    lw      a0, 0x0020($sp)
    lw      t5, 0x0018($sp)
lbl_8008DE60:
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x0008(t5)             # 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8008DE88:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    sw      $ra, 0x0014($sp)
    lui     t3, 0x8000                 # t3 = 80000000
    or      t1, a3, $zero              # t1 = 00000000
    lw      t6, 0x0000(a1)             # 00000000
    lw      v0, 0x0000(t6)             # 00000000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t4, t0, t9
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, v0, t2
    sll     t8, a2,  2
    addu    t7, t5, t6
    bne     a3, $zero, lbl_8008DF04
    addu    v1, t7, t3
    addu    t9, v1, t8
    lw      v0, 0x0000(t9)             # 00000000
    sll     t5, v0,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, t0, t7
    lw      t9, 0x0000(t8)             # 00000000
    and     t4, v0, t2
    addu    t5, t4, t9
    addu    t6, t5, t3
    lw      t1, 0x000C(t6)             # 0000000C
lbl_8008DF04:
    beq     t1, $zero, lbl_8008DF98
    sll     t7, a2,  6
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xC000             # t8 = 8011C000
    addu    a1, t7, t8
    sw      a0, 0x0020($sp)
    jal     func_8008FC98
    sw      t1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_8008DF98
    lw      t1, 0x001C($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    lui     t8, 0xD838                 # t8 = D8380000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(a0)             # 000002C0
    sw      v0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    ori     t8, t8, 0x0002             # t8 = D8380002
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
lbl_8008DF98:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008DFA8:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s6, 0x0038($sp)
    sw      s2, 0x0028($sp)
    or      s2, a2, $zero              # s2 = 00000000
    lw      s6, 0x0064($sp)
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x004C($sp)
    andi    t7, s6, 0x0001             # t7 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    lw      s5, 0x0000(t6)             # 00000000
    bne     t7, $zero, lbl_8008E010
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xC000             # a1 = 8011C000
    lw      a2, 0x0048($sp)
    jal     func_8008E8CC
    lw      a3, 0x005C($sp)
lbl_8008E010:
    lw      a0, 0x0000(s2)             # 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v0, 0x0000(a0)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    andi    t3, s6, 0x0002             # t3 = 00000000
    sll     t8, v0,  4
    srl     t9, t8, 28
    sll     t0, t9,  2
    addu    t1, t1, t0
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t2, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    s3, t1, t2
    bne     t3, $zero, lbl_8008E0A0
    addu    s3, s3, $at
    lui     s0, 0xDA38                 # s0 = DA380000
    ori     s0, s0, 0x0003             # s0 = DA380003
    lw      a2, 0x02C0(s5)             # 000002C0
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0xEDB0             # t5 = 800FEDB0
    addiu   t4, a2, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s5)             # 000002C0
    sw      t5, 0x0004(a2)             # 00000004
    sw      s0, 0x0000(a2)             # 00000000
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, s2, 0x0004             # a1 = 00000004
    beql    v0, $zero, lbl_8008E1A8
    lw      $ra, 0x0044($sp)
    lw      a2, 0x02C0(s5)             # 000002C0
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s5)             # 000002C0
    sw      v0, 0x0004(a2)             # 00000004
    sw      s0, 0x0000(a2)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
lbl_8008E0A0:
    lbu     t7, 0x0004(a0)             # 00000004
    or      s0, $zero, $zero           # s0 = 00000000
    or      s1, s3, $zero              # s1 = 00000000
    blez    t7, lbl_8008E188
    lw      s7, 0x0060($sp)
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    lw      s3, 0x0058($sp)
lbl_8008E0C0:
    beq     s3, $zero, lbl_8008E0E0
    or      a0, s4, $zero              # a0 = 00000001
    lw      a0, 0x0048($sp)
    lw      a1, 0x004C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jalr    $ra, s3
    or      a3, s2, $zero              # a3 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
lbl_8008E0E0:
    lw      v0, 0x0000(s1)             # 00000000
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, v0,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    addu    t2, t2, t1
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, v0, $at
    lui     v1, 0x8000                 # v1 = 80000000
    addu    t3, t8, t2
    addu    v1, v1, t3
    lw      v1, 0x0008(v1)             # 80000008
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v1, s8, lbl_8008E148
    nop
    bne     a0, s4, lbl_8008E148
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s5, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    or      a3, s7, $zero              # a3 = 00000000
    jal     func_8008DDAC
    sw      s6, 0x0010($sp)
    beq     $zero, $zero, lbl_8008E170
    lw      t4, 0x0000(s2)             # 00000000
lbl_8008E148:
    bnel    v1, $at, lbl_8008E170
    lw      t4, 0x0000(s2)             # 00000000
    bne     a0, s4, lbl_8008E16C
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s5, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8008DE88
    sw      s6, 0x0010($sp)
lbl_8008E16C:
    lw      t4, 0x0000(s2)             # 00000000
lbl_8008E170:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x0004             # s1 = 00000004
    lbu     t5, 0x0004(t4)             # 00000004
    slt     $at, s0, t5
    bne     $at, $zero, lbl_8008E0C0
    nop
lbl_8008E188:
    lw      t6, 0x0054($sp)
    lw      a0, 0x0048($sp)
    lw      a1, 0x004C($sp)
    beql    t6, $zero, lbl_8008E1A8
    lw      $ra, 0x0044($sp)
    jalr    $ra, t6
    or      a2, s2, $zero              # a2 = 00000000
    lw      $ra, 0x0044($sp)
lbl_8008E1A8:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8008E1D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8008DFA8
    sw      t6, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008E204:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0010($sp)
    jal     func_8008DFA8
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008E238:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lw      t8, 0x0040($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8008DFA8
    sw      t8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008E270:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lw      t8, 0x0040($sp)
    lw      t9, 0x0044($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_8008DFA8
    sw      t9, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8008E2AC:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    lw      t6, 0x005C($sp)
    lw      a0, 0x0058($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xC000             # t8 = 8011C000
    sll     t7, t6,  6
    addu    a1, t7, t8
    addiu   a2, $sp, 0x0018            # a2 = FFFFFFC0
    jal     func_8008EDB8
    addiu   a0, a0, 0x0004             # a0 = 00000004
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    lw      a1, 0x0060($sp)
    jal     func_8008ED08
    lw      a2, 0x0064($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop
    nop


func_8008E310:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      a0, 0x0048($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a3, 0x00FF                 # a3 = 00FF0000
    ori     a3, a3, 0xFFFF             # a3 = 00FFFFFF
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t6, 0x0000(a1)             # 00000000
    or      t1, $zero, $zero           # t1 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    lw      t3, 0x0000(t6)             # 00000000
    addiu   s2, $zero, 0x000A          # s2 = 0000000A
    sll     t7, t3,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t6, a0, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, t3, a3
    sll     t6, a2,  2
    addu    t9, t7, t8
    addu    t2, t9, t0
    addu    t7, t2, t6
    lw      t4, 0x0000(t7)             # 00000000
    sll     t9, t4,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    addu    t9, a0, t7
    lw      t6, 0x0000(t9)             # 00000000
    and     t8, t4, a3
    addu    t7, t8, t6
    addu    t9, t7, t0
    lw      t5, 0x000C(t9)             # 0000000C
    sll     t6, t5,  4
    srl     t7, t6, 28
    sll     t9, t7,  2
    addu    t6, a0, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, t5, a3
    addu    t9, t8, t7
    addu    v1, t9, t0
    lw      t8, 0x0004(v1)             # 00000004
    sll     t7, t8,  4
    srl     t9, t7, 28
    sll     t6, t9,  2
    addu    t7, a0, t6
    lw      t9, 0x0000(t7)             # 00000000
    sw      $zero, 0x0044($sp)
    and     t6, t8, a3
    sw      t8, 0x0018($sp)
    lhu     t8, 0x0002(v1)             # 00000002
    addu    t7, t9, t6
    addu    v0, t7, t0
    sll     t9, t8,  4
    addu    s0, t9, v0
    lw      t6, 0x0048(a1)             # 00000048
lbl_8008E3FC:
    sll     t7, a2,  2
    subu    t7, t7, a2
    sll     t7, t7,  2
    addu    t8, t6, t7
    addu    t9, t8, t1
    sltu    $at, v0, s0
    lw      t2, 0x0004(t9)             # 00000004
    beq     $at, $zero, lbl_8008E4C8
    or      t3, v0, $zero              # t3 = 00000000
    lw      t5, 0x0008(t3)             # 00000008
lbl_8008E424:
    sll     t6, t5,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, a0, t8
    lw      t6, 0x0000(t9)             # 00000000
    lhu     t9, 0x0000(t3)             # 00000000
    and     t7, t5, a3
    addu    t8, t6, t7
    multu   t9, s2
    addu    t4, t8, t0
    or      s1, t4, $zero              # s1 = 00000000
    mflo    t6
    addu    t7, t6, t4
    sltu    $at, t4, t7
    beql    $at, $zero, lbl_8008E4BC
    addiu   t3, t3, 0x0010             # t3 = 00000010
    lhu     t8, 0x0000(s1)             # 00000000
lbl_8008E468:
    addiu   s1, s1, 0x000A             # s1 = 0000000A
    sll     t9, t8,  4
    addu    t5, t9, t2
    sh      $zero, 0x0006(t5)          # 00000006
    lh      t6, -0x0008(s1)            # 00000002
    sh      t6, 0x0008(t5)             # 00000008
    lh      t7, -0x0006(s1)            # 00000004
    sh      t7, 0x000A(t5)             # 0000000A
    lbu     t8, -0x0001(s1)            # 00000009
    sb      t8, 0x000F(t5)             # 0000000F
    lhu     t9, 0x0000(t3)             # 00000010
    multu   t9, s2
    mflo    t6
    addu    t7, t6, t4
    sltu    $at, s1, t7
    bnel    $at, $zero, lbl_8008E468
    lhu     t8, 0x0000(s1)             # 0000000A
    lhu     t8, 0x0002(v1)             # 00000002
    sll     t9, t8,  4
    addu    s0, t9, v0
    addiu   t3, t3, 0x0010             # t3 = 00000020
lbl_8008E4BC:
    sltu    $at, t3, s0
    bnel    $at, $zero, lbl_8008E424
    lw      t5, 0x0008(t3)             # 00000028
lbl_8008E4C8:
    addiu   t1, t1, 0x0004             # t1 = 00000004
    bnel    t1, s3, lbl_8008E3FC
    lw      t6, 0x0048(a1)             # 00000048
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8008E4EC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    lui     s5, 0x8012                 # s5 = 80120000
    lui     s6, 0x00FF                 # s6 = 00FF0000
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    lui     s7, 0x8000                 # s7 = 80000000
    or      s8, a1, $zero              # s8 = 00000000
    ori     s6, s6, 0xFFFF             # s6 = 00FFFFFF
    addiu   s5, s5, 0x0C38             # s5 = 80120C38
    sw      $ra, 0x003C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a3, 0x0054($sp)
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, s5, t8
    lw      t1, 0x0000(t9)             # 00000000
    and     t2, a2, s6
    addu    t3, t1, t2
    addu    v0, t3, s7
    lbu     t4, 0x0004(v0)             # 00000004
    sw      v0, 0x0000(s8)             # 00000000
    sw      t4, 0x0044(s8)             # 00000044
    lw      v1, 0x0000(v0)             # 00000000
    lbu     t0, 0x0004(v0)             # 00000004
    sll     t5, v1,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, s5, t7
    lw      t9, 0x0000(t8)             # 00000000
    and     t1, v1, s6
    sll     a0, t0,  2
    subu    a0, a0, t0
    addu    t2, t9, t1
    addu    s0, t2, s7
    sll     a0, a0,  2
    sw      a2, 0x0050($sp)
    jal     func_80066C10              # zelda_malloc?
    sw      t0, 0x0044($sp)
    sw      v0, 0x0048(s8)             # 00000048
    lw      t3, 0x0044($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    blez    t3, lbl_8008E678
    or      s4, s0, $zero              # s4 = 00000000
lbl_8008E5BC:
    lw      v0, 0x0000(s4)             # 00000000
    lw      t4, 0x0048(s8)             # 00000048
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, s5, t8
    lw      t1, 0x0000(t9)             # 00000000
    and     t5, v0, s6
    addu    s0, t4, s3
    addu    t2, t5, t1
    addu    v1, t2, s7
    lw      t3, 0x0008(v1)             # 00000008
    bnel    t3, $at, lbl_8008E608
    sb      $zero, 0x0000(s0)          # 00000000
    lw      a1, 0x000C(v1)             # 0000000C
    bne     a1, $zero, lbl_8008E614
    sll     t6, a1,  4
    sb      $zero, 0x0000(s0)          # 00000000
lbl_8008E608:
    sw      $zero, 0x0004(s0)          # 00000004
    beq     $zero, $zero, lbl_8008E664
    sw      $zero, 0x0008(s0)          # 00000008
lbl_8008E614:
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, s5, t8
    lw      t5, 0x0000(t9)             # 00000000
    and     t4, a1, s6
    sb      $zero, 0x0000(s0)          # 00000000
    addu    t1, t4, t5
    addu    s1, t1, s7
    lhu     a0, 0x0000(s1)             # 00000000
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  4
    sw      v0, 0x0004(s0)             # 00000004
    lhu     a0, 0x0000(s1)             # 00000000
    jal     func_80066C10              # zelda_malloc?
    sll     a0, a0,  4
    sw      v0, 0x0008(s0)             # 00000008
    lw      a0, 0x0048($sp)
    or      a1, s8, $zero              # a1 = 00000000
    jal     func_8008E310
    or      a2, s2, $zero              # a2 = 00000000
lbl_8008E664:
    lw      t2, 0x0044($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s3, s3, 0x000C             # s3 = 0000000C
    bne     s2, t2, lbl_8008E5BC
    addiu   s4, s4, 0x0004             # s4 = 00000004
lbl_8008E678:
    lw      a0, 0x0048($sp)
    addiu   a1, s8, 0x004C             # a1 = 0000004C
    lw      a2, 0x0050($sp)
    jal     func_8008C894
    lw      a3, 0x0054($sp)
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8008E6BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    lw      a2, 0x0048(s1)             # 00000048
    beql    a2, $zero, lbl_8008E77C
    lw      $ra, 0x0024($sp)
    lw      t6, 0x0044(s1)             # 00000044
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_8008E75C
    addu    v0, a2, s0
lbl_8008E6F8:
    lw      a0, 0x0004(v0)             # 00000004
    beql    a0, $zero, lbl_8008E724
    lw      a0, 0x0008(v0)             # 00000008
    jal     func_80066C90
    nop
    lw      t7, 0x0048(s1)             # 00000048
    addu    t8, t7, s0
    sw      $zero, 0x0004(t8)          # 00000004
    lw      a2, 0x0048(s1)             # 00000048
    addu    v0, a2, s0
    lw      a0, 0x0008(v0)             # 00000008
lbl_8008E724:
    beql    a0, $zero, lbl_8008E748
    lw      t1, 0x0044(s1)             # 00000044
    jal     func_80066C90
    nop
    lw      t9, 0x0048(s1)             # 00000048
    addu    t0, t9, s0
    sw      $zero, 0x0008(t0)          # 00000008
    lw      a2, 0x0048(s1)             # 00000048
    lw      t1, 0x0044(s1)             # 00000044
lbl_8008E748:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    slt     $at, s2, t1
    bnel    $at, $zero, lbl_8008E6F8
    addu    v0, a2, s0
lbl_8008E75C:
    beql    a2, $zero, lbl_8008E770
    addiu   a0, s1, 0x004C             # a0 = 0000004C
    jal     func_80066C90
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a0, s1, 0x004C             # a0 = 0000004C
lbl_8008E770:
    jal     func_8008D6D0
    lw      a1, 0x0028($sp)
    lw      $ra, 0x0024($sp)
lbl_8008E77C:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8008E790:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    sw      a2, 0x0080($sp)
    sw      a3, 0x0084($sp)
    lbu     t7, 0x008B($sp)
    lw      t6, 0x007C($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v0, 0x0000(t9)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, v0, $at
    lbu     v1, 0x0087($sp)
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t7, t5, $at
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     v1, $at, lbl_8008E80C
    sw      t7, 0x0070($sp)
    jal     func_8008F114
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFF4
    beq     $zero, $zero, lbl_8008E820
    lbu     t1, 0x008B($sp)
lbl_8008E80C:
    lw      t8, 0x0080($sp)
    sll     t6, v1,  6
    addu    t9, t6, t8
    sw      t9, 0x006C($sp)
    lbu     t1, 0x008B($sp)
lbl_8008E820:
    lw      t3, 0x0080($sp)
    lw      a0, 0x006C($sp)
    sll     t2, t1,  6
    addu    a1, t2, t3
    sw      a1, 0x0024($sp)
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFB0
    lw      a1, 0x0024($sp)
    jal     func_8008F180
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFB0
    lw      t0, 0x0070($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0078($sp)
    lbu     v0, 0x0006(t0)             # 00000006
    lw      a1, 0x007C($sp)
    lw      a2, 0x0080($sp)
    beq     v0, $at, lbl_8008E880
    lbu     a3, 0x008B($sp)
    jal     func_8008E790
    sw      v0, 0x0010($sp)
    beql    v0, $zero, lbl_8008E884
    lw      t4, 0x0070($sp)
    beq     $zero, $zero, lbl_8008E8C0
    lw      $ra, 0x001C($sp)
lbl_8008E880:
    lw      t4, 0x0070($sp)
lbl_8008E884:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0078($sp)
    lbu     v0, 0x0007(t4)             # 00000007
    lw      a1, 0x007C($sp)
    lw      a2, 0x0080($sp)
    beq     v0, $at, lbl_8008E8B8
    lbu     a3, 0x0087($sp)
    jal     func_8008E790
    sw      v0, 0x0010($sp)
    beql    v0, $zero, lbl_8008E8BC
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_8008E8C0
    lw      $ra, 0x001C($sp)
lbl_8008E8B8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008E8BC:
    lw      $ra, 0x001C($sp)
lbl_8008E8C0:
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_8008E8CC:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    lui     s6, 0x8012                 # s6 = 80120000
    lui     s7, 0x00FF                 # s7 = 00FF0000
    sw      s8, 0x0050($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    lui     s8, 0x8000                 # s8 = 80000000
    ori     s7, s7, 0xFFFF             # s7 = 00FFFFFF
    addiu   s6, s6, 0x0C38             # s6 = 80120C38
    sw      $ra, 0x0054($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0000(s4)             # 00000000
    addiu   $at, $zero, 0x0023         # $at = 00000023
    lw      a0, 0x0084($sp)
    lw      v0, 0x0000(t6)             # 00000000
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, s6, t9
    lw      t1, 0x0000(t0)             # 00000000
    and     t2, v0, s7
    addu    t3, t1, t2
    addu    t4, t3, s8
    sw      t4, 0x0058($sp)
    lw      s0, 0x006C(s4)             # 0000006C
    lh      t5, 0x0006(s0)             # 00000006
    lh      t6, 0x0008(s0)             # 00000008
    lh      t7, 0x000A(s0)             # 0000000A
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   s0, s0, 0x0006             # s0 = 00000006
    cvt.s.w $f16, $f4
    cvt.s.w $f14, $f6
    beq     a3, $zero, lbl_8008EA04
    cvt.s.w $f18, $f8
    lh      t8, -0x0006(s0)            # 00000000
    lh      t9, -0x0004(s0)            # 00000002
    lh      t0, -0x0002(s0)            # 00000004
    mtc1    t8, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    mtc1    t0, $f6                    # $f6 = 0.00
    addiu   s0, s0, 0x0000             # s0 = 00000006
    cvt.s.w $f0, $f10
    cvt.s.w $f2, $f4
    bne     a3, $at, lbl_8008E9BC
    cvt.s.w $f12, $f6
    lh      t1, 0x01D0(s5)             # 000001D0
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f14, $f14, $f10
lbl_8008E9BC:
    trunc.w.s $f4, $f16
    swc1    $f0, 0x0010($sp)
    swc1    $f2, 0x0014($sp)
    trunc.w.s $f6, $f14
    mfc1    a1, $f4
    swc1    $f12, 0x0018($sp)
    trunc.w.s $f8, $f18
    mfc1    a2, $f6
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f8
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    jal     func_8008F998
    sra     a3, a3, 16
    beq     $zero, $zero, lbl_8008EA50
    lw      t8, 0x0000(s4)             # 00000000
lbl_8008EA04:
    trunc.w.s $f10, $f16
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0084($sp)
    trunc.w.s $f4, $f14
    mfc1    a1, $f10
    swc1    $f0, 0x0010($sp)
    trunc.w.s $f6, $f18
    mfc1    a2, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    swc1    $f0, 0x0014($sp)
    jal     func_8008F998
    swc1    $f0, 0x0018($sp)
    lw      t8, 0x0000(s4)             # 00000000
lbl_8008EA50:
    lw      s3, 0x0084($sp)
    addiu   s0, s0, 0x0006             # s0 = 0000000C
    lbu     t9, 0x0004(t8)             # 00000004
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lw      s2, 0x0058($sp)
    slti    $at, t9, 0x0002
    bne     $at, $zero, lbl_8008EB48
    addiu   s3, s3, 0x0040             # s3 = 00000040
    addiu   s2, s2, 0x0004             # s2 = 00000004
    lw      v1, 0x0000(s2)             # 00000004
lbl_8008EA78:
    addiu   s0, s0, 0x0006             # s0 = 00000012
    or      a0, s3, $zero              # a0 = 00000040
    sll     t1, v1,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, s6, t3
    lw      t5, 0x0000(t4)             # 00000000
    and     t0, v1, s7
    lh      t1, -0x0006(s0)            # 0000000C
    addu    t6, t0, t5
    addu    v0, t6, s8
    lh      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0002(v0)             # 00000002
    lh      t2, -0x0004(s0)            # 0000000E
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lh      t3, -0x0002(s0)            # 00000010
    cvt.s.w $f0, $f8
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t2, $f8                    # $f8 = 0.00
    lh      t9, 0x0004(v0)             # 00000004
    cvt.s.w $f2, $f10
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    swc1    $f0, 0x0010($sp)
    cvt.s.w $f16, $f6
    swc1    $f2, 0x0014($sp)
    cvt.s.w $f14, $f8
    cvt.s.w $f18, $f10
    cvt.s.w $f12, $f4
    trunc.w.s $f4, $f16
    swc1    $f12, 0x0018($sp)
    trunc.w.s $f8, $f18
    mfc1    a1, $f4
    trunc.w.s $f6, $f14
    mfc1    a3, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a2, $f6
    sll     a3, a3, 16
    sra     a3, a3, 16
    sll     a2, a2, 16
    jal     func_8008F998
    sra     a2, a2, 16
    lw      t6, 0x0000(s4)             # 00000000
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addiu   s2, s2, 0x0004             # s2 = 00000008
    lbu     t7, 0x0004(t6)             # 00000004
    addiu   s3, s3, 0x0040             # s3 = 00000080
    slt     $at, s1, t7
    bnel    $at, $zero, lbl_8008EA78
    lw      v1, 0x0000(s2)             # 00000008
lbl_8008EB48:
    lh      t8, 0x00B4(s5)             # 000000B4
    lwc1    $f0, 0x0054(s5)            # 00000054
    lw      a1, 0x0050(s5)             # 00000050
    lw      a3, 0x0058(s5)             # 00000058
    sw      t8, 0x0010($sp)
    lh      t9, 0x00B6(s5)             # 000000B6
    mfc1    a2, $f0
    addiu   a0, s4, 0x0004             # a0 = 00000004
    sw      t9, 0x0014($sp)
    lh      t1, 0x00B8(s5)             # 000000B8
    sw      t1, 0x0018($sp)
    lwc1    $f10, 0x0024(s5)           # 00000024
    swc1    $f10, 0x001C($sp)
    lwc1    $f6, 0x00BC(s5)            # 000000BC
    lwc1    $f4, 0x0028(s5)            # 00000028
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0020($sp)
    lwc1    $f6, 0x002C(s5)            # 0000002C
    jal     func_8008F914
    swc1    $f6, 0x0024($sp)
    lw      t2, 0x0000(s4)             # 00000000
    or      a0, s4, $zero              # a0 = 00000000
    lw      a2, 0x0084($sp)
    lw      v0, 0x0000(t2)             # 00000000
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t0, t4,  2
    addu    t5, s6, t0
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, v0, s7
    sw      $zero, 0x0010($sp)
    addu    t8, t6, t7
    jal     func_8008E790
    addu    a1, t8, s8
    bne     v0, $zero, lbl_8008EBE8
    lw      s0, 0x0030($sp)
    beq     $zero, $zero, lbl_8008EBF0
    lw      $ra, 0x0054($sp)
lbl_8008EBE8:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0054($sp)
lbl_8008EBF0:
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    nop
    nop


func_8008EC20:
# Matrix transformation?
# Performs some sort of transformation on actor's xyz coord vector
# Possibly setting up vector? for testing if actor is in "draw" range
# A0 = Global Context + 0x11D60
# A1 = Actor Instance + 0x24 (xyz coords)
# A2 = Actor Instance + 0xE4
# A3 = Actor Instance + 0xF0
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0004(a1)           # 00000004
    lwc1    $f16, 0x0010(a0)           # 00000010
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x0008(a1)            # 00000008
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0020(a0)           # 00000020
    mul.s   $f16, $f6, $f10
    add.s   $f4, $f8, $f18
    lwc1    $f18, 0x0030(a0)           # 00000030
    add.s   $f8, $f4, $f16
    add.s   $f6, $f18, $f8
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f18, 0x0004(a1)           # 00000004
    lwc1    $f8, 0x0014(a0)            # 00000014
    mul.s   $f16, $f10, $f4
    lwc1    $f4, 0x0008(a1)            # 00000008
    mul.s   $f6, $f18, $f8
    lwc1    $f18, 0x0024(a0)           # 00000024
    mul.s   $f8, $f4, $f18
    add.s   $f10, $f16, $f6
    lwc1    $f6, 0x0034(a0)            # 00000034
    add.s   $f16, $f10, $f8
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0004(a2)            # 00000004
    lwc1    $f18, 0x0000(a1)           # 00000000
    lwc1    $f10, 0x0008(a0)           # 00000008
    lwc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f16, 0x0018(a0)           # 00000018
    mul.s   $f8, $f18, $f10
    lwc1    $f10, 0x0008(a1)           # 00000008
    mul.s   $f4, $f6, $f16
    lwc1    $f6, 0x0028(a0)            # 00000028
    mul.s   $f16, $f10, $f6
    add.s   $f18, $f8, $f4
    lwc1    $f4, 0x0038(a0)            # 00000038
    add.s   $f8, $f18, $f16
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0008(a2)           # 00000008
    lwc1    $f18, 0x000C(a0)           # 0000000C
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x001C(a0)            # 0000001C
    lwc1    $f4, 0x0004(a1)            # 00000004
    mul.s   $f16, $f6, $f18
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f10, $f4, $f8
    lwc1    $f4, 0x002C(a0)            # 0000002C
    mul.s   $f8, $f18, $f4
    add.s   $f6, $f16, $f10
    lwc1    $f10, 0x003C(a0)           # 0000003C
    add.s   $f16, $f6, $f8
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0000(a3)           # 00000000
    jr      $ra
    nop


func_8008ED08:
# Translate Vertex
# A0 = Translation Matrix
# A1 = Vertice XYZ ptr (f32)
# A2 = Result Vector ptr (xyz f32)
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f2, 0x0010(a0)            # 00000010
    lwc1    $f8, 0x0004(a1)            # 00000004
    mul.s   $f6, $f4, $f0
    lwc1    $f12, 0x0020(a0)           # 00000020
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f10, $f8, $f2
    lwc1    $f14, 0x0030(a0)           # 00000030
    mul.s   $f4, $f18, $f12
    add.s   $f16, $f6, $f10
    add.s   $f8, $f16, $f4
    add.s   $f6, $f8, $f14
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f0, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x0014(a0)            # 00000014
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f18, $f10, $f0
    lwc1    $f12, 0x0024(a0)           # 00000024
    lwc1    $f6, 0x0008(a1)            # 00000008
    mul.s   $f4, $f16, $f2
    lwc1    $f14, 0x0034(a0)           # 00000034
    mul.s   $f10, $f6, $f12
    add.s   $f8, $f18, $f4
    add.s   $f16, $f8, $f10
    add.s   $f18, $f16, $f14
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f0, 0x0008(a0)            # 00000008
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f2, 0x0018(a0)            # 00000018
    lwc1    $f8, 0x0004(a1)            # 00000004
    mul.s   $f6, $f4, $f0
    lwc1    $f12, 0x0028(a0)           # 00000028
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f10, $f8, $f2
    lwc1    $f14, 0x0038(a0)           # 00000038
    mul.s   $f4, $f18, $f12
    add.s   $f16, $f6, $f10
    add.s   $f8, $f16, $f4
    add.s   $f6, $f8, $f14
    swc1    $f6, 0x0008(a2)            # 00000008
    jr      $ra
    nop


func_8008EDB8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sdc1    $f22, 0x0010($sp)
    sdc1    $f20, 0x0008($sp)
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f16, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x0010(a0)            # 00000010
    lwc1    $f18, 0x0004(a1)           # 00000004
    mul.s   $f4, $f0, $f16
    lwc1    $f12, 0x0020(a0)           # 00000020
    lwc1    $f20, 0x0008(a1)           # 00000008
    mul.s   $f6, $f2, $f18
    lwc1    $f14, 0x0030(a0)           # 00000030
    lwc1    $f22, 0x000C(a1)           # 0000000C
    mul.s   $f10, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f14, $f22
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0010(a1)           # 00000010
    lwc1    $f18, 0x0014(a1)           # 00000014
    lwc1    $f20, 0x0018(a1)           # 00000018
    mul.s   $f10, $f0, $f16
    lwc1    $f22, 0x001C(a1)           # 0000001C
    mul.s   $f4, $f2, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f22
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0010(a2)            # 00000010
    lwc1    $f16, 0x0020(a1)           # 00000020
    lwc1    $f18, 0x0024(a1)           # 00000024
    lwc1    $f20, 0x0028(a1)           # 00000028
    mul.s   $f8, $f0, $f16
    lwc1    $f22, 0x002C(a1)           # 0000002C
    mul.s   $f10, $f2, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f22
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0020(a2)            # 00000020
    lwc1    $f16, 0x0030(a1)           # 00000030
    lwc1    $f18, 0x0034(a1)           # 00000034
    lwc1    $f20, 0x0038(a1)           # 00000038
    mul.s   $f6, $f0, $f16
    lwc1    $f22, 0x003C(a1)           # 0000003C
    mul.s   $f8, $f2, $f18
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f20
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f14, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0030(a2)           # 00000030
    lwc1    $f0, 0x0004(a0)            # 00000004
    lwc1    $f16, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x0014(a0)            # 00000014
    lwc1    $f18, 0x0004(a1)           # 00000004
    mul.s   $f4, $f0, $f16
    lwc1    $f12, 0x0024(a0)           # 00000024
    lwc1    $f20, 0x0008(a1)           # 00000008
    mul.s   $f6, $f2, $f18
    lwc1    $f14, 0x0034(a0)           # 00000034
    lwc1    $f22, 0x000C(a1)           # 0000000C
    mul.s   $f10, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f14, $f22
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f16, 0x0010(a1)           # 00000010
    lwc1    $f18, 0x0014(a1)           # 00000014
    lwc1    $f20, 0x0018(a1)           # 00000018
    mul.s   $f10, $f0, $f16
    lwc1    $f22, 0x001C(a1)           # 0000001C
    mul.s   $f4, $f2, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f22
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0014(a2)            # 00000014
    lwc1    $f16, 0x0020(a1)           # 00000020
    lwc1    $f18, 0x0024(a1)           # 00000024
    lwc1    $f20, 0x0028(a1)           # 00000028
    mul.s   $f8, $f0, $f16
    lwc1    $f22, 0x002C(a1)           # 0000002C
    mul.s   $f10, $f2, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f22
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0024(a2)            # 00000024
    lwc1    $f16, 0x0030(a1)           # 00000030
    lwc1    $f18, 0x0034(a1)           # 00000034
    lwc1    $f20, 0x0038(a1)           # 00000038
    mul.s   $f6, $f0, $f16
    lwc1    $f22, 0x003C(a1)           # 0000003C
    mul.s   $f8, $f2, $f18
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f20
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f14, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0034(a2)           # 00000034
    lwc1    $f0, 0x0008(a0)            # 00000008
    lwc1    $f16, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x0018(a0)            # 00000018
    lwc1    $f18, 0x0004(a1)           # 00000004
    mul.s   $f4, $f0, $f16
    lwc1    $f12, 0x0028(a0)           # 00000028
    lwc1    $f20, 0x0008(a1)           # 00000008
    mul.s   $f6, $f2, $f18
    lwc1    $f14, 0x0038(a0)           # 00000038
    lwc1    $f22, 0x000C(a1)           # 0000000C
    mul.s   $f10, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f14, $f22
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    lwc1    $f16, 0x0010(a1)           # 00000010
    lwc1    $f18, 0x0014(a1)           # 00000014
    lwc1    $f20, 0x0018(a1)           # 00000018
    mul.s   $f10, $f0, $f16
    lwc1    $f22, 0x001C(a1)           # 0000001C
    mul.s   $f4, $f2, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f22
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0018(a2)            # 00000018
    lwc1    $f16, 0x0020(a1)           # 00000020
    lwc1    $f18, 0x0024(a1)           # 00000024
    lwc1    $f20, 0x0028(a1)           # 00000028
    mul.s   $f8, $f0, $f16
    lwc1    $f22, 0x002C(a1)           # 0000002C
    mul.s   $f10, $f2, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f22
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0028(a2)            # 00000028
    lwc1    $f16, 0x0030(a1)           # 00000030
    lwc1    $f18, 0x0034(a1)           # 00000034
    lwc1    $f20, 0x0038(a1)           # 00000038
    mul.s   $f6, $f0, $f16
    lwc1    $f22, 0x003C(a1)           # 0000003C
    mul.s   $f8, $f2, $f18
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f20
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f14, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0038(a2)           # 00000038
    lwc1    $f0, 0x000C(a0)            # 0000000C
    lwc1    $f16, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x001C(a0)            # 0000001C
    lwc1    $f18, 0x0004(a1)           # 00000004
    mul.s   $f4, $f0, $f16
    lwc1    $f12, 0x002C(a0)           # 0000002C
    lwc1    $f20, 0x0008(a1)           # 00000008
    mul.s   $f6, $f2, $f18
    lwc1    $f14, 0x003C(a0)           # 0000003C
    lwc1    $f22, 0x000C(a1)           # 0000000C
    mul.s   $f10, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f14, $f22
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(a2)            # 0000000C
    lwc1    $f16, 0x0010(a1)           # 00000010
    lwc1    $f18, 0x0014(a1)           # 00000014
    lwc1    $f20, 0x0018(a1)           # 00000018
    mul.s   $f10, $f0, $f16
    lwc1    $f22, 0x001C(a1)           # 0000001C
    mul.s   $f4, $f2, $f18
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f22
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x001C(a2)            # 0000001C
    lwc1    $f16, 0x0020(a1)           # 00000020
    lwc1    $f18, 0x0024(a1)           # 00000024
    lwc1    $f20, 0x0028(a1)           # 00000028
    mul.s   $f8, $f0, $f16
    lwc1    $f22, 0x002C(a1)           # 0000002C
    mul.s   $f10, $f2, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f12, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f22
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x002C(a2)            # 0000002C
    lwc1    $f16, 0x0030(a1)           # 00000030
    lwc1    $f18, 0x0034(a1)           # 00000034
    lwc1    $f20, 0x0038(a1)           # 00000038
    mul.s   $f6, $f0, $f16
    lwc1    $f22, 0x003C(a1)           # 0000003C
    mul.s   $f8, $f2, $f18
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f20
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f14, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x003C(a2)           # 0000003C
    ldc1    $f20, 0x0008($sp)
    ldc1    $f22, 0x0010($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8008F114:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xBEC0             # t6 = 800FBEC0
    sw      t6, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_8008F128:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    swc1    $f0, 0x0000(a0)            # 00000000
    swc1    $f2, 0x0004(a0)            # 00000004
    swc1    $f2, 0x0008(a0)            # 00000008
    swc1    $f2, 0x000C(a0)            # 0000000C
    swc1    $f2, 0x0010(a0)            # 00000010
    swc1    $f0, 0x0014(a0)            # 00000014
    swc1    $f2, 0x0018(a0)            # 00000018
    swc1    $f2, 0x001C(a0)            # 0000001C
    swc1    $f2, 0x0020(a0)            # 00000020
    swc1    $f2, 0x0024(a0)            # 00000024
    swc1    $f0, 0x0028(a0)            # 00000028
    swc1    $f2, 0x002C(a0)            # 0000002C
    swc1    $f2, 0x0030(a0)            # 00000030
    swc1    $f2, 0x0034(a0)            # 00000034
    swc1    $f2, 0x0038(a0)            # 00000038
    swc1    $f0, 0x003C(a0)            # 0000003C
    jr      $ra
    nop


func_8008F180:
    lwc1    $f4, 0x0000(a0)            # 00000000
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    swc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f8, 0x0008(a0)            # 00000008
    swc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x000C(a0)           # 0000000C
    swc1    $f10, 0x000C(a1)           # 0000000C
    lwc1    $f16, 0x0010(a0)           # 00000010
    swc1    $f16, 0x0010(a1)           # 00000010
    lwc1    $f18, 0x0014(a0)           # 00000014
    swc1    $f18, 0x0014(a1)           # 00000014
    lwc1    $f4, 0x0018(a0)            # 00000018
    swc1    $f4, 0x0018(a1)            # 00000018
    lwc1    $f6, 0x001C(a0)            # 0000001C
    swc1    $f6, 0x001C(a1)            # 0000001C
    lwc1    $f8, 0x0020(a0)            # 00000020
    swc1    $f8, 0x0020(a1)            # 00000020
    lwc1    $f10, 0x0024(a0)           # 00000024
    swc1    $f10, 0x0024(a1)           # 00000024
    lwc1    $f16, 0x0028(a0)           # 00000028
    swc1    $f16, 0x0028(a1)           # 00000028
    lwc1    $f18, 0x002C(a0)           # 0000002C
    swc1    $f18, 0x002C(a1)           # 0000002C
    lwc1    $f4, 0x0030(a0)            # 00000030
    swc1    $f4, 0x0030(a1)            # 00000030
    lwc1    $f6, 0x0034(a0)            # 00000034
    swc1    $f6, 0x0034(a1)            # 00000034
    lwc1    $f8, 0x0038(a0)            # 00000038
    swc1    $f8, 0x0038(a1)            # 00000038
    lwc1    $f10, 0x003C(a0)           # 0000003C
    swc1    $f10, 0x003C(a1)           # 0000003C
    jr      $ra
    nop


func_8008F208:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFC0
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    jal     func_8008F180
    or      a1, s4, $zero              # a1 = FFFFFFC0
    jal     func_8008F128
    or      a0, s3, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x7530($at)         # 80108AD0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    slti    $at, s0, 0x0004
lbl_8008F250:
    beq     $at, $zero, lbl_8008F2AC
    or      t1, s0, $zero              # t1 = 00000000
    sll     t6, s0,  4
    addu    t3, s4, t6
    sll     t7, s0,  2
    addu    t8, t3, t7
    lwc1    $f0, 0x0000(t8)            # 00000000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_8008F2AC
    nop
    addiu   t1, t1, 0x0001             # t1 = 00000001
lbl_8008F284:
    slti    $at, t1, 0x0004
    beq     $at, $zero, lbl_8008F2AC
    sll     t9, t1,  2
    addu    t6, t3, t9
    lwc1    $f0, 0x0000(t6)            # 00000000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_8008F284
    addiu   t1, t1, 0x0001             # t1 = 00000002
lbl_8008F2AC:
    bne     t1, t4, lbl_8008F2BC
    sll     t7, s0,  4
    beq     $zero, $zero, lbl_8008F488
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_8008F2BC:
    sll     t5, s0,  2
    addu    t3, s4, t7
    addu    s2, t3, t5
    addu    a0, s4, t5
    addu    a1, s3, t5
    beq     t1, s0, lbl_8008F34C
    or      $ra, s3, $zero             # $ra = 00000000
    sll     t0, t1,  2
    addiu   t8, $sp, 0x0078            # t8 = FFFFFFC0
    addu    v0, t0, t8
    addu    v1, t5, t8
    addu    a2, s3, t0
    or      t2, $zero, $zero           # t2 = 00000000
    addu    a3, s3, t5
lbl_8008F2F4:
    lwc1    $f4, 0x0000(v1)            # 00000000
    lwc1    $f0, 0x0000(v0)            # 00000002
    addiu   t2, t2, 0x0002             # t2 = 00000002
    swc1    $f4, 0x0000(v0)            # 00000002
    swc1    $f0, 0x0000(v1)            # 00000000
    lwc1    $f6, 0x0000(a3)            # 00000000
    lwc1    $f2, 0x0000(a2)            # 00000000
    swc1    $f6, 0x0000(a2)            # 00000000
    swc1    $f2, 0x0000(a3)            # 00000000
    lwc1    $f8, 0x0010(v1)            # 00000010
    lwc1    $f0, 0x0010(v0)            # 00000012
    addiu   v0, v0, 0x0020             # v0 = 00000022
    swc1    $f8, -0x0010(v0)           # 00000012
    swc1    $f0, 0x0010(v1)            # 00000010
    lwc1    $f10, 0x0010(a3)           # 00000010
    lwc1    $f2, 0x0010(a2)            # 00000010
    addiu   v1, v1, 0x0020             # v1 = 00000020
    swc1    $f10, 0x0010(a2)           # 00000010
    addiu   a2, a2, 0x0020             # a2 = 00000020
    addiu   a3, a3, 0x0020             # a3 = 00000020
    bne     t2, t4, lbl_8008F2F4
    swc1    $f2, -0x0010(a3)           # 00000010
lbl_8008F34C:
    lwc1    $f0, 0x0000(s2)            # 00000000
    lwc1    $f16, 0x0000(a0)           # 00000000
    or      t1, $zero, $zero           # t1 = 00000000
    div.s   $f18, $f16, $f0
    swc1    $f18, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    div.s   $f6, $f4, $f0
    swc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0010(a0)            # 00000010
    div.s   $f10, $f8, $f0
    swc1    $f10, 0x0010(a0)           # 00000010
    lwc1    $f16, 0x0010(a1)           # 00000010
    div.s   $f18, $f16, $f0
    swc1    $f18, 0x0010(a1)           # 00000010
    lwc1    $f4, 0x0020(a0)            # 00000020
    div.s   $f6, $f4, $f0
    swc1    $f6, 0x0020(a0)            # 00000020
    lwc1    $f8, 0x0020(a1)            # 00000020
    div.s   $f10, $f8, $f0
    swc1    $f10, 0x0020(a1)           # 00000020
    lwc1    $f16, 0x0030(a0)           # 00000030
    div.s   $f18, $f16, $f0
    swc1    $f18, 0x0030(a0)           # 00000030
    lwc1    $f4, 0x0030(a1)            # 00000030
    div.s   $f6, $f4, $f0
    swc1    $f6, 0x0030(a1)            # 00000030
lbl_8008F3B4:
    beq     t1, s0, lbl_8008F46C
    sll     t0, t1,  2
    addu    t9, t3, t0
    lwc1    $f0, 0x0000(t9)            # 00000000
    lwc1    $f10, 0x0000(a0)           # 00000000
    addu    v0, s4, t0
    lwc1    $f8, 0x0000(v0)            # 00000022
    mul.s   $f16, $f10, $f0
    addu    v1, $ra, t0
    sub.s   $f18, $f8, $f16
    swc1    $f18, 0x0000(v0)           # 00000022
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f4, 0x0000(v1)            # 00000020
    mul.s   $f10, $f6, $f0
    sub.s   $f8, $f4, $f10
    swc1    $f8, 0x0000(v1)            # 00000020
    lwc1    $f18, 0x0010(a0)           # 00000010
    lwc1    $f16, 0x0010(v0)           # 00000032
    mul.s   $f6, $f18, $f0
    sub.s   $f4, $f16, $f6
    swc1    $f4, 0x0010(v0)            # 00000032
    lwc1    $f8, 0x0010(a1)            # 00000010
    lwc1    $f10, 0x0010(v1)           # 00000030
    mul.s   $f18, $f8, $f0
    sub.s   $f16, $f10, $f18
    swc1    $f16, 0x0010(v1)           # 00000030
    lwc1    $f4, 0x0020(a0)            # 00000020
    lwc1    $f6, 0x0020(v0)            # 00000042
    mul.s   $f8, $f4, $f0
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0020(v0)           # 00000042
    lwc1    $f16, 0x0020(a1)           # 00000020
    lwc1    $f18, 0x0020(v1)           # 00000040
    mul.s   $f4, $f16, $f0
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0020(v1)            # 00000040
    lwc1    $f10, 0x0030(a0)           # 00000030
    lwc1    $f8, 0x0030(v0)            # 00000052
    mul.s   $f16, $f10, $f0
    sub.s   $f18, $f8, $f16
    swc1    $f18, 0x0030(v0)           # 00000052
    lwc1    $f6, 0x0030(a1)            # 00000030
    lwc1    $f4, 0x0030(v1)            # 00000050
    mul.s   $f10, $f6, $f0
    sub.s   $f8, $f4, $f10
    swc1    $f8, 0x0030(v1)            # 00000050
lbl_8008F46C:
    addiu   t1, t1, 0x0001             # t1 = 00000001
    bne     t1, t4, lbl_8008F3B4
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, t4, lbl_8008F250
    slti    $at, s0, 0x0004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008F488:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_8008F4A8:
# guScaleF
# Initialize Scalar Float Matrix
# A0 = Float Matrix ptr
# A1 = float x scale
# A2 = float y scale
# A3 = float z scale
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a3, 0x000C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f0, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x000C(a0)            # 0000000C
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f0, 0x001C(a0)            # 0000001C
    swc1    $f0, 0x0020(a0)            # 00000020
    swc1    $f0, 0x0024(a0)            # 00000024
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f0, 0x0030(a0)            # 00000030
    swc1    $f0, 0x0034(a0)            # 00000034
    swc1    $f0, 0x0038(a0)            # 00000038
    swc1    $f12, 0x0000(a0)           # 00000000
    swc1    $f14, 0x0014(a0)           # 00000014
    swc1    $f4, 0x003C(a0)            # 0000003C
    lwc1    $f6, 0x000C($sp)
    swc1    $f6, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_8008F50C:
# Initialize Rotation Float Matrix
# A0 = Float Matrix ptr
# A1 = u16 x rotation
# A2 = u16 y rotation
# A3 = u16 z rotation
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0046($sp)
    lh      a0, 0x0046($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0030($sp)
    lh      a0, 0x0042($sp)
    lwc1    $f14, 0x0030($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    neg.s   $f4, $f14
    mov.s   $f12, $f0
    swc1    $f0, 0x0014(s0)            # 00000014
    swc1    $f4, 0x0010(s0)            # 00000010
    swc1    $f16, 0x002C(s0)           # 0000002C
    swc1    $f16, 0x001C(s0)           # 0000001C
    swc1    $f16, 0x000C(s0)           # 0000000C
    swc1    $f16, 0x0038(s0)           # 00000038
    swc1    $f16, 0x0034(s0)           # 00000034
    swc1    $f16, 0x0030(s0)           # 00000030
    beq     a0, $zero, lbl_8008F5D8
    swc1    $f2, 0x003C(s0)            # 0000003C
    swc1    $f12, 0x002C($sp)
    jal     func_800636C4              # sins?
    swc1    $f14, 0x0030($sp)
    lh      a0, 0x0042($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f12, 0x002C($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f14, 0x0030($sp)
    mul.s   $f6, $f12, $f0
    neg.s   $f4, $f2
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f8, $f12, $f2
    swc1    $f4, 0x0008(s0)            # 00000008
    swc1    $f0, 0x0028(s0)            # 00000028
    mul.s   $f10, $f14, $f0
    swc1    $f6, 0x0000(s0)            # 00000000
    mul.s   $f18, $f14, $f2
    swc1    $f8, 0x0020(s0)            # 00000020
    swc1    $f10, 0x0004(s0)           # 00000004
    beq     $zero, $zero, lbl_8008F5F0
    swc1    $f18, 0x0024(s0)           # 00000024
lbl_8008F5D8:
    swc1    $f0, 0x0000(s0)            # 00000000
    swc1    $f14, 0x0004(s0)           # 00000004
    swc1    $f16, 0x0024(s0)           # 00000024
    swc1    $f16, 0x0020(s0)           # 00000020
    swc1    $f16, 0x0008(s0)           # 00000008
    swc1    $f2, 0x0028(s0)            # 00000028
lbl_8008F5F0:
    lh      a0, 0x003E($sp)
    beql    a0, $zero, lbl_8008F688
    swc1    $f16, 0x0018(s0)           # 00000018
    jal     func_800636C4              # sins?
    nop
    lh      a0, 0x003E($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f14, 0x0010(s0)           # 00000010
    lwc1    $f2, 0x0024($sp)
    lwc1    $f12, 0x0020(s0)           # 00000020
    mul.s   $f6, $f14, $f0
    nop
    mul.s   $f8, $f12, $f2
    nop
    mul.s   $f18, $f12, $f0
    lwc1    $f12, 0x0024(s0)           # 00000024
    mul.s   $f4, $f14, $f2
    lwc1    $f14, 0x0014(s0)           # 00000014
    add.s   $f10, $f6, $f8
    mul.s   $f8, $f14, $f0
    swc1    $f10, 0x0010(s0)           # 00000010
    mul.s   $f10, $f12, $f2
    sub.s   $f6, $f18, $f4
    mul.s   $f4, $f12, $f0
    lwc1    $f12, 0x0028(s0)           # 00000028
    swc1    $f6, 0x0020(s0)            # 00000020
    mul.s   $f6, $f14, $f2
    add.s   $f18, $f8, $f10
    mul.s   $f10, $f12, $f2
    swc1    $f18, 0x0014(s0)           # 00000014
    mul.s   $f18, $f12, $f0
    sub.s   $f8, $f4, $f6
    swc1    $f10, 0x0018(s0)           # 00000018
    swc1    $f8, 0x0024(s0)            # 00000024
    beq     $zero, $zero, lbl_8008F688
    swc1    $f18, 0x0028(s0)           # 00000028
    swc1    $f16, 0x0018(s0)           # 00000018
lbl_8008F688:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8008F69C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0042($sp)
    lh      a0, 0x0042($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0030($sp)
    lh      a0, 0x003E($sp)
    lwc1    $f14, 0x0030($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    neg.s   $f4, $f14
    mov.s   $f12, $f0
    swc1    $f0, 0x0000(s0)            # 00000000
    swc1    $f4, 0x0008(s0)            # 00000008
    swc1    $f16, 0x002C(s0)           # 0000002C
    swc1    $f16, 0x001C(s0)           # 0000001C
    swc1    $f16, 0x000C(s0)           # 0000000C
    swc1    $f16, 0x0038(s0)           # 00000038
    swc1    $f16, 0x0034(s0)           # 00000034
    swc1    $f16, 0x0030(s0)           # 00000030
    beq     a0, $zero, lbl_8008F768
    swc1    $f2, 0x003C(s0)            # 0000003C
    swc1    $f12, 0x002C($sp)
    jal     func_800636C4              # sins?
    swc1    $f14, 0x0030($sp)
    lh      a0, 0x003E($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f12, 0x002C($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f14, 0x0030($sp)
    mul.s   $f6, $f12, $f0
    neg.s   $f4, $f2
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f8, $f12, $f2
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f0, 0x0014(s0)            # 00000014
    mul.s   $f10, $f14, $f0
    swc1    $f6, 0x0028(s0)            # 00000028
    mul.s   $f18, $f14, $f2
    swc1    $f8, 0x0018(s0)            # 00000018
    swc1    $f10, 0x0020(s0)           # 00000020
    beq     $zero, $zero, lbl_8008F780
    swc1    $f18, 0x0010(s0)           # 00000010
lbl_8008F768:
    swc1    $f0, 0x0028(s0)            # 00000028
    swc1    $f14, 0x0020(s0)           # 00000020
    swc1    $f16, 0x0024(s0)           # 00000024
    swc1    $f16, 0x0018(s0)           # 00000018
    swc1    $f16, 0x0010(s0)           # 00000010
    swc1    $f2, 0x0014(s0)            # 00000014
lbl_8008F780:
    lh      a0, 0x0046($sp)
    beql    a0, $zero, lbl_8008F818
    swc1    $f16, 0x0004(s0)           # 00000004
    jal     func_800636C4              # sins?
    nop
    lh      a0, 0x0046($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lwc1    $f14, 0x0000(s0)           # 00000000
    lwc1    $f2, 0x0024($sp)
    lwc1    $f12, 0x0010(s0)           # 00000010
    mul.s   $f6, $f14, $f0
    nop
    mul.s   $f8, $f12, $f2
    nop
    mul.s   $f18, $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 00000018
    mul.s   $f4, $f14, $f2
    lwc1    $f14, 0x0008(s0)           # 00000008
    add.s   $f10, $f6, $f8
    mul.s   $f8, $f14, $f0
    swc1    $f10, 0x0000(s0)           # 00000000
    mul.s   $f10, $f12, $f2
    sub.s   $f6, $f18, $f4
    mul.s   $f4, $f12, $f0
    lwc1    $f12, 0x0014(s0)           # 00000014
    swc1    $f6, 0x0010(s0)            # 00000010
    mul.s   $f6, $f14, $f2
    add.s   $f18, $f8, $f10
    mul.s   $f10, $f12, $f2
    swc1    $f18, 0x0008(s0)           # 00000008
    mul.s   $f18, $f12, $f0
    sub.s   $f8, $f4, $f6
    swc1    $f10, 0x0004(s0)           # 00000004
    swc1    $f8, 0x0018(s0)            # 00000018
    beq     $zero, $zero, lbl_8008F818
    swc1    $f18, 0x0014(s0)           # 00000014
    swc1    $f16, 0x0004(s0)           # 00000004
lbl_8008F818:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8008F82C:
# guTranslateF
# Initialize Translation Float Matrix
# A0 = Float Matrix ptr
# A1 = float x
# A2 = float y
# A3 = float z
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a3, 0x000C($sp)
    swc1    $f0, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x000C(a0)            # 0000000C
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f0, 0x001C(a0)            # 0000001C
    swc1    $f0, 0x0020(a0)            # 00000020
    swc1    $f0, 0x0024(a0)            # 00000024
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f2, 0x0000(a0)            # 00000000
    swc1    $f2, 0x0014(a0)            # 00000014
    swc1    $f2, 0x0028(a0)            # 00000028
    swc1    $f2, 0x003C(a0)            # 0000003C
    swc1    $f12, 0x0030(a0)           # 00000030
    swc1    $f14, 0x0034(a0)           # 00000034
    lwc1    $f4, 0x000C($sp)
    swc1    $f4, 0x0038(a0)            # 00000038
    jr      $ra
    nop


func_8008F890:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0098($sp)
    sw      a1, 0x009C($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    lw      a0, 0x0098($sp)
    lw      a1, 0x00B4($sp)
    lw      a2, 0x00B8($sp)
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x00BC($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    lh      a1, 0x00AA($sp)
    lh      a2, 0x00AE($sp)
    jal     func_8008F50C
    lh      a3, 0x00B2($sp)
    lw      a0, 0x0098($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0018            # a2 = FFFFFF80
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    lw      a1, 0x009C($sp)
    lw      a2, 0x00A0($sp)
    jal     func_8008F4A8              # guScaleF
    lw      a3, 0x00A4($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF80
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8008EDB8
    lw      a2, 0x0098($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_8008F914:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0098($sp)
    sw      a1, 0x009C($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    lw      a0, 0x0098($sp)
    lw      a1, 0x00B4($sp)
    lw      a2, 0x00B8($sp)
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x00BC($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    lh      a1, 0x00AA($sp)
    lh      a2, 0x00AE($sp)
    jal     func_8008F69C
    lh      a3, 0x00B2($sp)
    lw      a0, 0x0098($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0018            # a2 = FFFFFF80
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    lw      a1, 0x009C($sp)
    lw      a2, 0x00A0($sp)
    jal     func_8008F4A8              # guScaleF
    lw      a3, 0x00A4($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF80
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8008EDB8
    lw      a2, 0x0098($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_8008F998:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0098($sp)
    sw      a1, 0x009C($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF80
    lw      a1, 0x00A8($sp)
    lw      a2, 0x00AC($sp)
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x00B0($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    lh      a1, 0x009E($sp)
    lh      a2, 0x00A2($sp)
    jal     func_8008F50C
    lh      a3, 0x00A6($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFF80
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8008EDB8
    lw      a2, 0x0098($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_8008F9F8:
    lwc1    $f4, 0x0000(a0)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0000(a1)             # 00000000
    lwc1    $f8, 0x0004(a0)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0002(a1)             # 00000002
    lwc1    $f16, 0x0008(a0)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_8008FA3C:
    lh      t6, 0x0000(a0)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a1)            # 00000000
    lh      t7, 0x0002(a0)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t8, 0x0004(a0)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_8008FA80:
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    nop
    lwc1    $f4, 0x0000(a0)            # 00000000
    addiu   v0, a1, 0x0020             # v0 = 00000020
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sra     t7, t8, 16
    sh      t7, 0x0000(a1)             # 00000000
    sh      t8, 0x0020(a1)             # 00000020
    lwc1    $f10, 0x0004(a0)           # 00000004
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sra     t0, t1, 16
    sh      t0, 0x0002(a1)             # 00000002
    sh      t1, 0x0022(a1)             # 00000022
    lwc1    $f4, 0x0008(a0)            # 00000008
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    sra     t3, t4, 16
    sh      t3, 0x0004(a1)             # 00000004
    sh      t4, 0x0024(a1)             # 00000024
    lwc1    $f10, 0x000C(a0)           # 0000000C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sra     t6, t7, 16
    sh      t6, 0x0006(a1)             # 00000006
    sh      t7, 0x0026(a1)             # 00000026
    lwc1    $f4, 0x0010(a0)            # 00000010
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sra     t9, t0, 16
    sh      t9, 0x0008(a1)             # 00000008
    sh      t0, 0x0028(a1)             # 00000028
    lwc1    $f10, 0x0014(a0)           # 00000014
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sra     t2, t3, 16
    sh      t2, 0x000A(a1)             # 0000000A
    sh      t3, 0x002A(a1)             # 0000002A
    lwc1    $f4, 0x0018(a0)            # 00000018
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sra     t5, t6, 16
    sh      t5, 0x000C(a1)             # 0000000C
    sh      t6, 0x002C(a1)             # 0000002C
    lwc1    $f10, 0x001C(a0)           # 0000001C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sra     t8, t9, 16
    sh      t8, 0x000E(a1)             # 0000000E
    sh      t9, 0x002E(a1)             # 0000002E
    lwc1    $f4, 0x0020(a0)            # 00000020
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    sra     t1, t2, 16
    sh      t1, 0x0010(a1)             # 00000010
    sh      t2, 0x0030(a1)             # 00000030
    lwc1    $f10, 0x0024(a0)           # 00000024
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sra     t4, t5, 16
    sh      t4, 0x0012(a1)             # 00000012
    sh      t5, 0x0012(v0)             # 00000032
    lwc1    $f4, 0x0028(a0)            # 00000028
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sra     t7, t8, 16
    sh      t7, 0x0014(a1)             # 00000014
    sh      t8, 0x0014(v0)             # 00000034
    lwc1    $f10, 0x002C(a0)           # 0000002C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sra     t0, t1, 16
    sh      t0, 0x0016(a1)             # 00000016
    sh      t1, 0x0016(v0)             # 00000036
    lwc1    $f4, 0x0030(a0)            # 00000030
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    sra     t3, t4, 16
    sh      t3, 0x0018(a1)             # 00000018
    sh      t4, 0x0018(v0)             # 00000038
    lwc1    $f10, 0x0034(a0)           # 00000034
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sra     t6, t7, 16
    sh      t6, 0x001A(a1)             # 0000001A
    sh      t7, 0x001A(v0)             # 0000003A
    lwc1    $f4, 0x0038(a0)            # 00000038
    mul.s   $f6, $f4, $f0
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sra     t9, t0, 16
    sh      t9, 0x001C(a1)             # 0000001C
    sh      t0, 0x001C(v0)             # 0000003C
    lwc1    $f10, 0x003C(a0)           # 0000003C
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sra     t2, t3, 16
    sh      t2, 0x001E(a1)             # 0000001E
    sh      t3, 0x001E(v0)             # 0000003E
    jr      $ra
    nop


func_8008FC98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a2, 0x02C4(a0)             # 000002C4
    addiu   a2, a2, 0xFFC0             # a2 = FFFFFFC0
    bne     a2, $zero, lbl_8008FCBC
    sw      a2, 0x02C4(a0)             # 000002C4
    beq     $zero, $zero, lbl_8008FCD0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8008FCBC:
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, a2, $zero              # a1 = FFFFFFC0
    jal     func_8008FA80
    sw      a2, 0x0018($sp)
    lw      v0, 0x0018($sp)
lbl_8008FCD0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8008FCE0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    mtc1    a3, $f22                   # $f22 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    lh      a0, 0x006E($sp)
    jal     func_800636C4              # sins?
    sw      a2, 0x0068($sp)
    lh      a0, 0x006E($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x0064($sp)
    mul.s   $f12, $f20, $f22
    lwc1    $f4, 0x0078($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f6, $f22, $f4
    lw      a2, 0x0068($sp)
    lwc1    $f18, 0x0064($sp)
    mul.s   $f14, $f20, $f4
    swc1    $f12, 0x0050($sp)
    mul.s   $f2, $f20, $f20
    swc1    $f6, 0x004C($sp)
    swc1    $f14, 0x0048($sp)
    sub.s   $f10, $f8, $f2
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f6, $f10, $f0
    sub.s   $f16, $f8, $f0
    add.s   $f4, $f6, $f2
    swc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0078($sp)
    mul.s   $f6, $f10, $f18
    nop
    mul.s   $f4, $f16, $f12
    mtc1    $zero, $f12                # $f12 = 0.00
    mul.s   $f10, $f22, $f18
    swc1    $f6, 0x0038($sp)
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f16, $f14
    swc1    $f8, 0x0004(a2)            # 00000004
    swc1    $f10, 0x0034($sp)
    lwc1    $f6, 0x0034($sp)
    swc1    $f12, 0x000C(a2)           # 0000000C
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    lwc1    $f10, 0x0050($sp)
    lwc1    $f6, 0x0038($sp)
    mul.s   $f4, $f16, $f10
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f2, $f22, $f22
    sub.s   $f8, $f4, $f6
    sub.s   $f4, $f10, $f2
    swc1    $f8, 0x0010(a2)            # 00000010
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f6, $f2
    swc1    $f8, 0x0014(a2)            # 00000014
    lwc1    $f10, 0x004C($sp)
    mul.s   $f4, $f16, $f10
    swc1    $f4, 0x002C($sp)
    mul.s   $f14, $f20, $f18
    lwc1    $f6, 0x002C($sp)
    swc1    $f12, 0x001C(a2)           # 0000001C
    add.s   $f8, $f6, $f14
    swc1    $f8, 0x0018(a2)            # 00000018
    lwc1    $f10, 0x0048($sp)
    lwc1    $f6, 0x0034($sp)
    mul.s   $f4, $f16, $f10
    mtc1    $at, $f16                  # $f16 = 1.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0020(a2)            # 00000020
    lwc1    $f18, 0x0078($sp)
    lwc1    $f10, 0x002C($sp)
    swc1    $f12, 0x002C(a2)           # 0000002C
    mul.s   $f2, $f18, $f18
    sub.s   $f4, $f10, $f14
    swc1    $f12, 0x0030(a2)           # 00000030
    swc1    $f12, 0x0034(a2)           # 00000034
    swc1    $f12, 0x0038(a2)           # 00000038
    swc1    $f4, 0x0024(a2)            # 00000024
    swc1    $f16, 0x003C(a2)           # 0000003C
    sub.s   $f6, $f16, $f2
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f8, $f2
    swc1    $f10, 0x0028(a2)           # 00000028
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8008FE50:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sdc1    $f20, 0x0008($sp)
    lwc1    $f0, 0x0000(a1)            # 00000000
    lwc1    $f2, 0x0004(a1)            # 00000004
    lwc1    $f12, 0x0008(a1)           # 00000008
    mul.s   $f4, $f0, $f0
    lwc1    $f20, 0x000C(a1)           # 0000000C
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f12, $f12
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f20, $f20
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f8, $f4, $f6
    div.s   $f18, $f10, $f8
    mul.s   $f4, $f0, $f18
    swc1    $f4, 0x0040($sp)
    mul.s   $f16, $f2, $f18
    lwc1    $f6, 0x0040($sp)
    mul.s   $f14, $f12, $f18
    nop
    mul.s   $f10, $f20, $f6
    nop
    mul.s   $f8, $f20, $f16
    nop
    mul.s   $f4, $f20, $f14
    swc1    $f10, 0x0034($sp)
    mul.s   $f10, $f0, $f6
    swc1    $f8, 0x0030($sp)
    mul.s   $f8, $f0, $f16
    swc1    $f4, 0x002C($sp)
    mul.s   $f18, $f0, $f14
    swc1    $f10, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    mul.s   $f4, $f2, $f16
    swc1    $f8, 0x0024($sp)
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f6, $f2, $f14
    nop
    mul.s   $f10, $f12, $f14
    swc1    $f4, 0x001C($sp)
    lwc1    $f8, 0x001C($sp)
    swc1    $f6, 0x0018($sp)
    swc1    $f10, 0x0014($sp)
    lwc1    $f4, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = 1.00
    add.s   $f6, $f8, $f4
    sub.s   $f8, $f10, $f6
    swc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x002C($sp)
    lwc1    $f4, 0x0024($sp)
    add.s   $f6, $f4, $f10
    swc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0030($sp)
    sub.s   $f4, $f18, $f8
    swc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f14, 0x0028($sp)
    lwc1    $f12, 0x0034($sp)
    lwc1    $f2, 0x0018($sp)
    swc1    $f0, 0x000C(a0)            # 0000000C
    lwc1    $f6, 0x002C($sp)
    lwc1    $f10, 0x0024($sp)
    sub.s   $f8, $f10, $f6
    swc1    $f8, 0x0010(a0)            # 00000010
    lwc1    $f4, 0x0014($sp)
    add.s   $f8, $f2, $f12
    swc1    $f0, 0x001C(a0)            # 0000001C
    add.s   $f10, $f14, $f4
    swc1    $f8, 0x0018(a0)            # 00000018
    sub.s   $f6, $f16, $f10
    swc1    $f6, 0x0014(a0)            # 00000014
    lwc1    $f4, 0x0030($sp)
    sub.s   $f6, $f2, $f12
    add.s   $f10, $f2, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    swc1    $f10, 0x0020(a0)           # 00000020
    lwc1    $f8, 0x001C($sp)
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f0, 0x0030(a0)            # 00000030
    add.s   $f4, $f14, $f8
    swc1    $f0, 0x0034(a0)            # 00000034
    swc1    $f0, 0x0038(a0)            # 00000038
    swc1    $f16, 0x003C(a0)           # 0000003C
    sub.s   $f10, $f16, $f4
    swc1    $f10, 0x0028(a0)           # 00000028
    ldc1    $f20, 0x0008($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    nop
    nop
