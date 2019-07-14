# "System Math" part of the code file
#
# The purpose of this file's content is unclear but it supposedly provides system math functions.
#
# Starts at VRAM: 800A46B0 / VROM: B1A610
#

.section .text
func_800A46B0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lwc1    $f4, 0x0050($sp)
    lwc1    $f6, 0x0054($sp)
    lwc1    $f8, 0x0058($sp)
    lwc1    $f10, 0x005C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1090             # t6 = 80121090
    sw      t6, 0x0020($sp)
    lw      a2, 0x0048($sp)
    lw      a3, 0x004C($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800A4BC8
    swc1    $f10, 0x001C($sp)
    bne     v0, $zero, lbl_800A4708
    lui     a0, 0x8012                 # a0 = 80120000
    beq     $zero, $zero, lbl_800A47C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A4708:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1090             # a1 = 80121090
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x10A8             # a0 = 801210A8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f16, 0x109C($at)          # 8012109C
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x1090($at)           # 80121090
    mul.s   $f18, $f16, $f0
    lui     $at, 0x8012                # $at = 80120000
    lw      t7, 0x0068($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   t8, $sp, 0x0034            # t8 = FFFFFFF4
    sw      t8, 0x0014($sp)
    add.s   $f6, $f18, $f4
    addiu   a1, a1, 0x10B4             # a1 = 801210B4
    addiu   a0, a0, 0x10A8             # a0 = 801210A8
    lw      a2, 0x0060($sp)
    swc1    $f6, 0x10B4($at)           # 801210B4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x10A0($at)           # 801210A0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f16, 0x1094($at)          # 80121094
    mul.s   $f10, $f8, $f0
    lui     $at, 0x8012                # $at = 80120000
    lw      a3, 0x0064($sp)
    sw      t7, 0x0010($sp)
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x10B8($at)          # 801210B8
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x10A4($at)           # 801210A4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x1098($at)           # 80121098
    mul.s   $f6, $f4, $f0
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f10, $f6, $f8
    jal     func_800A47D0
    swc1    $f10, 0x10BC($at)          # 801210BC
    bnel    v0, $zero, lbl_800A47C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_800A47C0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A47C0:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_800A47D0:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    lwc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lui     $at, 0x8011                # $at = 80110000
    sub.s   $f8, $f4, $f16
    swc1    $f8, 0x0074($sp)
    lwc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f18, 0x0004(a0)           # 00000004
    sub.s   $f10, $f6, $f18
    swc1    $f10, 0x0070($sp)
    lwc1    $f4, 0x0008(a0)            # 00000008
    swc1    $f4, 0x002C($sp)
    lwc1    $f6, 0x002C($sp)
    lwc1    $f8, 0x0008(a1)            # 00000008
    sub.s   $f10, $f8, $f6
    swc1    $f10, 0x006C($sp)
    lwc1    $f4, 0x0000(a2)            # 00000000
    swc1    $f4, 0x0028($sp)
    lwc1    $f10, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0000(a3)            # 00000000
    swc1    $f10, 0x0024($sp)
    lwc1    $f4, 0x0004(a3)            # 00000004
    sub.s   $f2, $f8, $f6
    lwc1    $f8, 0x0024($sp)
    lwc1    $f6, 0x0008(a2)            # 00000008
    sub.s   $f12, $f4, $f8
    swc1    $f6, 0x0020($sp)
    mul.s   $f8, $f2, $f2
    lwc1    $f4, 0x0020($sp)
    lwc1    $f10, 0x0008(a3)           # 00000008
    mul.s   $f6, $f12, $f12
    swc1    $f16, 0x0034($sp)
    sub.s   $f14, $f10, $f4
    swc1    $f18, 0x0030($sp)
    mul.s   $f4, $f14, $f14
    add.s   $f10, $f8, $f6
    lwc1    $f6, -0x71B0($at)          # 80108E50
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f8, $f10, $f4
    abs.s   $f0, $f8
    swc1    $f8, 0x001C($sp)
    c.lt.s  $f0, $f6
    lwc1    $f4, 0x001C($sp)
    bc1fl   lbl_800A4894
    mtc1    $at, $f10                  # $f10 = 1.00
    beq     $zero, $zero, lbl_800A4A74
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f10                  # $f10 = 1.00
lbl_800A4894:
    lwc1    $f8, 0x0074($sp)
    lui     $at, 0x8011                # $at = 80110000
    div.s   $f16, $f10, $f4
    lwc1    $f10, 0x0070($sp)
    swc1    $f8, 0x0000($sp)
    mul.s   $f6, $f8, $f2
    swc1    $f10, 0x0004($sp)
    mul.s   $f4, $f10, $f12
    lwc1    $f10, 0x0024($sp)
    add.s   $f6, $f6, $f4
    lwc1    $f4, 0x006C($sp)
    mul.s   $f8, $f4, $f14
    swc1    $f4, 0x0008($sp)
    lwc1    $f4, 0x0020($sp)
    add.s   $f6, $f6, $f8
    lwc1    $f8, 0x0034($sp)
    mul.s   $f0, $f6, $f16
    lwc1    $f6, 0x0028($sp)
    sub.s   $f8, $f8, $f6
    lwc1    $f6, 0x0030($sp)
    swc1    $f0, 0x005C($sp)
    sub.s   $f6, $f6, $f10
    lwc1    $f10, 0x002C($sp)
    swc1    $f8, 0x0018($sp)
    sub.s   $f10, $f10, $f4
    mul.s   $f4, $f8, $f2
    swc1    $f6, 0x0014($sp)
    swc1    $f10, 0x0010($sp)
    mul.s   $f10, $f12, $f6
    lwc1    $f6, 0x0010($sp)
    add.s   $f8, $f4, $f10
    mul.s   $f4, $f14, $f6
    lwc1    $f6, 0x0000($sp)
    add.s   $f10, $f8, $f4
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0004($sp)
    mul.s   $f8, $f2, $f0
    sub.s   $f4, $f6, $f8
    mul.s   $f6, $f12, $f0
    swc1    $f4, 0x004C($sp)
    lwc1    $f4, 0x0008($sp)
    sub.s   $f8, $f10, $f6
    lwc1    $f10, 0x005C($sp)
    mul.s   $f6, $f14, $f10
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x004C($sp)
    sub.s   $f8, $f4, $f6
    lwc1    $f4, 0x004C($sp)
    mul.s   $f6, $f10, $f4
    lwc1    $f4, 0x0050($sp)
    lwc1    $f10, 0x0050($sp)
    swc1    $f8, 0x0030($sp)
    mul.s   $f10, $f10, $f4
    add.s   $f4, $f6, $f10
    mul.s   $f6, $f8, $f8
    lwc1    $f10, -0x71AC($at)         # 80108E54
    add.s   $f16, $f4, $f6
    abs.s   $f0, $f16
    swc1    $f16, 0x007C($sp)
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_800A4998
    nop
    beq     $zero, $zero, lbl_800A4A74
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A4998:
    mul.s   $f4, $f2, $f18
    lwc1    $f8, 0x0018($sp)
    lwc1    $f6, 0x0014($sp)
    mul.s   $f10, $f12, $f18
    lw      v0, 0x0090($sp)
    sub.s   $f16, $f8, $f4
    lwc1    $f4, 0x0010($sp)
    sub.s   $f8, $f6, $f10
    mul.s   $f6, $f14, $f18
    swc1    $f8, 0x0044($sp)
    sub.s   $f10, $f4, $f6
    lwc1    $f4, 0x0050($sp)
    mul.s   $f6, $f4, $f8
    lwc1    $f4, 0x004C($sp)
    swc1    $f10, 0x0048($sp)
    mul.s   $f8, $f4, $f16
    add.s   $f4, $f8, $f6
    lwc1    $f8, 0x0030($sp)
    mul.s   $f6, $f8, $f10
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x007C($sp)
    lwc1    $f6, 0x0074($sp)
    neg.s   $f10, $f8
    div.s   $f0, $f10, $f4
    lwc1    $f10, 0x0034($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x0070($sp)
    lwc1    $f10, 0x0004(a0)           # 00000004
    lw      v1, 0x0094($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0004(v0)            # 00000004
    lwc1    $f6, 0x006C($sp)
    lwc1    $f10, 0x0008(a0)           # 00000008
    mul.s   $f8, $f6, $f0
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0008(v0)            # 00000008
    lwc1    $f6, 0x005C($sp)
    lwc1    $f4, 0x0000(a2)            # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f18
    mul.s   $f10, $f2, $f16
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f12, $f16
    swc1    $f6, 0x0000(v1)            # 00000000
    lwc1    $f10, 0x0004(a2)           # 00000004
    mul.s   $f6, $f14, $f16
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0004(v1)            # 00000004
    lwc1    $f8, 0x0008(a2)            # 00000008
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(v1)           # 00000008
lbl_800A4A74:
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_800A4A7C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    jal     func_800A54E4
    sw      a3, 0x0020($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x71A8($at)          # 80108E58
    mov.s   $f14, $f0
    abs.s   $f0, $f0
    lw      a0, 0x0028($sp)
    c.lt.s  $f0, $f4
    lw      a1, 0x0024($sp)
    lw      a3, 0x0020($sp)
    bc1fl   lbl_800A4AE4
    lwc1    $f6, 0x0004(a1)            # 00000004
    sw      a3, 0x0020($sp)
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f14, 0x001C($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x0024($sp)
    lw      a3, 0x0020($sp)
    lwc1    $f14, 0x001C($sp)
    lwc1    $f6, 0x0004(a1)            # 00000004
lbl_800A4AE4:
    lwc1    $f8, 0x0004(a3)            # 00000004
    lwc1    $f2, 0x0000(a3)            # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    sub.s   $f10, $f6, $f8
    lwc1    $f16, 0x0010(a3)           # 00000010
    lwc1    $f12, 0x000C(a3)           # 0000000C
    sub.s   $f6, $f4, $f2
    mul.s   $f18, $f10, $f16
    lwc1    $f16, 0x0008(a1)           # 00000008
    lwc1    $f4, 0x0008(a3)            # 00000008
    mul.s   $f8, $f6, $f12
    sub.s   $f6, $f16, $f4
    add.s   $f10, $f8, $f18
    lwc1    $f8, 0x0014(a3)            # 00000014
    mul.s   $f18, $f6, $f8
    add.s   $f16, $f10, $f18
    div.s   $f0, $f16, $f14
    mul.s   $f4, $f12, $f0
    add.s   $f6, $f4, $f2
    swc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0010(a3)            # 00000010
    lwc1    $f18, 0x0004(a3)           # 00000004
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f18
    swc1    $f16, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0014(a3)            # 00000014
    lwc1    $f8, 0x0008(a3)            # 00000008
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(a0)           # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_800A4B68:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lwc1    $f4, 0x000C($sp)
    lwc1    $f6, 0x0014($sp)
    lwc1    $f10, 0x0018($sp)
    lw      t6, 0x001C($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0010($sp)
    mul.s   $f16, $f14, $f10
    sub.s   $f18, $f16, $f8
    div.s   $f6, $f18, $f4
    swc1    $f6, 0x0000(t6)            # 00000000
    lwc1    $f16, 0x0014($sp)
    lwc1    $f10, 0x0008($sp)
    lwc1    $f18, 0x0018($sp)
    lw      t7, 0x0020($sp)
    mul.s   $f8, $f10, $f16
    lwc1    $f10, 0x0010($sp)
    mul.s   $f4, $f12, $f18
    sub.s   $f6, $f8, $f4
    div.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(t7)           # 00000000
    jr      $ra
    nop


func_800A4BC8:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0030($sp)
    lw      s0, 0x0090($sp)
    sw      $ra, 0x0034($sp)
    swc1    $f12, 0x0070($sp)
    swc1    $f14, 0x0074($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    lwc1    $f4, 0x0070($sp)
    lwc1    $f6, 0x0074($sp)
    lwc1    $f8, 0x0078($sp)
    swc1    $f4, 0x0060($sp)
    swc1    $f6, 0x0064($sp)
    lwc1    $f6, 0x0088($sp)
    lwc1    $f4, 0x0084($sp)
    lwc1    $f10, 0x0080($sp)
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFE4
    addiu   a2, s0, 0x000C             # a2 = 0000000C
    swc1    $f8, 0x0068($sp)
    swc1    $f6, 0x005C($sp)
    swc1    $f4, 0x0058($sp)
    jal     func_800A56B8
    swc1    $f10, 0x0054($sp)
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f2, -0x71A4($at)          # 80108E5C
    swc1    $f8, 0x0044($sp)
    lwc1    $f14, 0x0044($sp)
    abs.s   $f14, $f14
    c.lt.s  $f14, $f2
    nop
    bc1fl   lbl_800A4C8C
    lwc1    $f16, 0x0010(s0)           # 00000010
    lwc1    $f0, 0x0010(s0)            # 00000010
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800A4C8C
    lwc1    $f16, 0x0010(s0)           # 00000010
    lwc1    $f0, 0x0014(s0)            # 00000014
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800A4C8C
    lwc1    $f16, 0x0010(s0)           # 00000010
    beq     $zero, $zero, lbl_800A4D94
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f16, 0x0010(s0)           # 00000010
lbl_800A4C8C:
    lwc1    $f18, 0x0014(s0)           # 00000014
    mov.s   $f2, $f14
    abs.s   $f12, $f16
    abs.s   $f0, $f18
    c.le.s  $f12, $f14
    nop
    bc1fl   lbl_800A4D00
    c.le.s  $f2, $f12
    c.le.s  $f0, $f14
    lwc1    $f14, 0x0078($sp)
    lw      a2, 0x0084($sp)
    lw      a3, 0x0088($sp)
    bc1f    lbl_800A4CFC
    lwc1    $f10, 0x0044($sp)
    lwc1    $f4, 0x007C($sp)
    lwc1    $f6, 0x008C($sp)
    addiu   t6, s0, 0x0004             # t6 = 00000004
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x0020($sp)
    sw      t6, 0x001C($sp)
    lwc1    $f12, 0x0074($sp)
    swc1    $f10, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    jal     func_800A4B68
    swc1    $f6, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_800A4D90
    swc1    $f8, 0x0000(s0)            # 00000000
lbl_800A4CFC:
    c.le.s  $f2, $f12
lbl_800A4D00:
    lwc1    $f14, 0x0074($sp)
    lw      a2, 0x0080($sp)
    lw      a3, 0x0084($sp)
    bc1f    lbl_800A4D60
    addiu   t9, s0, 0x0004             # t9 = 00000004
    c.le.s  $f0, $f12
    lwc1    $f12, 0x0078($sp)
    addiu   t8, s0, 0x0008             # t8 = 00000008
    bc1fl   lbl_800A4D64
    lwc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x007C($sp)
    lwc1    $f4, 0x008C($sp)
    lwc1    $f14, 0x0070($sp)
    lw      a2, 0x0088($sp)
    lw      a3, 0x0080($sp)
    swc1    $f16, 0x0010($sp)
    sw      t8, 0x001C($sp)
    sw      s0, 0x0020($sp)
    swc1    $f10, 0x0014($sp)
    jal     func_800A4B68
    swc1    $f4, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    beq     $zero, $zero, lbl_800A4D90
    swc1    $f6, 0x0004(s0)            # 00000004
lbl_800A4D60:
    lwc1    $f8, 0x007C($sp)
lbl_800A4D64:
    lwc1    $f10, 0x008C($sp)
    lwc1    $f12, 0x0070($sp)
    swc1    $f18, 0x0010($sp)
    sw      s0, 0x001C($sp)
    sw      t9, 0x0020($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A4B68
    swc1    $f10, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_800A4D90:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A4D94:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_800A4DA8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lwc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0044($sp)
    lwc1    $f8, 0x0048($sp)
    lwc1    $f10, 0x004C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x10D0             # t6 = 801210D0
    sw      t6, 0x0020($sp)
    lw      a2, 0x0038($sp)
    lw      a3, 0x003C($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800A4BC8
    swc1    $f10, 0x001C($sp)
    bne     v0, $zero, lbl_800A4E00
    lui     a0, 0x8012                 # a0 = 80120000
    beq     $zero, $zero, lbl_800A4E14
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A4E00:
    addiu   a0, a0, 0x10D0             # a0 = 801210D0
    lw      a1, 0x0050($sp)
    jal     func_800A4A7C
    lw      a2, 0x0054($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A4E14:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800A4E24:
    mtc1    a2, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0000(a0)            # 00000000
    mul.s   $f6, $f4, $f12
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(a3)           # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    lwc1    $f4, 0x0004(a0)            # 00000004
    mul.s   $f18, $f16, $f12
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0004(a3)            # 00000004
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f16, 0x0008(a0)           # 00000008
    mul.s   $f10, $f8, $f12
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0008(a3)           # 00000008
    jr      $ra
    nop


func_800A4E70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      a0, 0x002C($sp)
    lw      a1, 0x0028($sp)
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    lw      a0, 0x0028($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a2, 0x0030($sp)
    jal     func_800A4E24
    lw      a3, 0x0034($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A4EBC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    jal     func_800A4EE0
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFFC
    lwc1    $f0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A4EE0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800A5510
    sw      a3, 0x0020($sp)
    lw      a0, 0x0024($sp)
    jal     func_800A5510
    swc1    $f0, 0x0018($sp)
    lwc1    $f4, 0x0018($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x71A0($at)          # 80108E60
    mul.s   $f12, $f0, $f4
    lw      a0, 0x0024($sp)
    lw      a3, 0x0020($sp)
    lw      t6, 0x0028($sp)
    abs.s   $f0, $f12
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_800A4F50
    lwc1    $f10, 0x0000(a3)           # 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_800A4F88
    swc1    $f8, 0x0000(t6)            # 00000000
    lwc1    $f10, 0x0000(a3)           # 00000000
lbl_800A4F50:
    lwc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0004(a3)            # 00000004
    lwc1    $f6, 0x0004(a0)            # 00000004
    mul.s   $f18, $f10, $f16
    lwc1    $f16, 0x0008(a3)           # 00000008
    lw      t7, 0x0028($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(a0)            # 00000008
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f6, $f16, $f4
    add.s   $f10, $f18, $f8
    add.s   $f18, $f10, $f6
    div.s   $f8, $f18, $f12
    swc1    $f8, 0x0000(t7)            # 00000000
lbl_800A4F88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A4F98:
    lui     $at, 0xBF80                # $at = BF800000
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    mtc1    $at, $f0                   # $f0 = -1.00
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0004(a3)            # 00000004
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x002C($sp)
    lwc1    $f4, 0x0008(a3)            # 00000008
    sw      a3, 0x0038($sp)
    sw      a2, 0x0040($sp)
    mul.s   $f6, $f4, $f0
    sw      a1, 0x003C($sp)
    jal     func_800A4EBC
    swc1    $f6, 0x0030($sp)
    lw      a1, 0x003C($sp)
    lw      a3, 0x0038($sp)
    lw      a2, 0x0040($sp)
    lwc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0004(a1)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    mul.s   $f16, $f8, $f0
    nop
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f6, $f4, $f0
    lwc1    $f4, 0x0028($sp)
    swc1    $f6, 0x0024($sp)
    lwc1    $f8, 0x0000(a3)            # 00000000
    add.s   $f2, $f8, $f16
    add.s   $f10, $f2, $f2
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a3)            # 00000004
    lwc1    $f4, 0x002C($sp)
    add.s   $f12, $f8, $f18
    add.s   $f10, $f12, $f12
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0024($sp)
    lwc1    $f8, 0x0008(a3)            # 00000008
    lwc1    $f6, 0x0030($sp)
    add.s   $f14, $f8, $f10
    add.s   $f4, $f14, $f14
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_800A506C:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lwc1    $f4, 0x0010($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f12, $f4
    nop
    bc1f    lbl_800A50C8
    nop
    c.le.s  $f4, $f14
    lwc1    $f0, 0x0014($sp)
    lwc1    $f6, 0x0008($sp)
    bc1f    lbl_800A50C8
    nop
    c.le.s  $f6, $f0
    lwc1    $f8, 0x000C($sp)
    bc1f    lbl_800A50C8
    nop
    c.le.s  $f0, $f8
    nop
    bc1f    lbl_800A50C8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A50C8:
    jr      $ra
    nop


func_800A50D0:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lwc1    $f4, 0x0008($sp)
    mov.s   $f16, $f12
    mov.s   $f18, $f12
    c.lt.s  $f4, $f12
    mov.s   $f0, $f14
    mov.s   $f2, $f14
    lwc1    $f6, 0x0008($sp)
    bc1f    lbl_800A5104
    lwc1    $f8, 0x000C($sp)
    beq     $zero, $zero, lbl_800A5118
    mov.s   $f18, $f4
lbl_800A5104:
    c.lt.s  $f12, $f6
    nop
    bc1fl   lbl_800A511C
    c.lt.s  $f8, $f14
    mov.s   $f16, $f6
lbl_800A5118:
    c.lt.s  $f8, $f14
lbl_800A511C:
    lwc1    $f10, 0x000C($sp)
    lwc1    $f12, 0x0010($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    bc1fl   lbl_800A513C
    c.lt.s  $f14, $f10
    beq     $zero, $zero, lbl_800A514C
    mov.s   $f2, $f8
    c.lt.s  $f14, $f10
lbl_800A513C:
    nop
    bc1fl   lbl_800A5150
    c.lt.s  $f12, $f18
    mov.s   $f0, $f10
lbl_800A514C:
    c.lt.s  $f12, $f18
lbl_800A5150:
    lwc1    $f14, 0x0020($sp)
    bc1fl   lbl_800A5168
    c.lt.s  $f16, $f12
    beq     $zero, $zero, lbl_800A5178
    mov.s   $f18, $f12
    c.lt.s  $f16, $f12
lbl_800A5168:
    nop
    bc1fl   lbl_800A517C
    lwc1    $f12, 0x0014($sp)
    mov.s   $f16, $f12
lbl_800A5178:
    lwc1    $f12, 0x0014($sp)
lbl_800A517C:
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800A5198
    c.lt.s  $f0, $f12
    beq     $zero, $zero, lbl_800A51A8
    mov.s   $f2, $f12
    c.lt.s  $f0, $f12
lbl_800A5198:
    nop
    bc1fl   lbl_800A51AC
    sub.s   $f4, $f18, $f14
    mov.s   $f0, $f12
lbl_800A51A8:
    sub.s   $f4, $f18, $f14
lbl_800A51AC:
    lwc1    $f12, 0x0018($sp)
    c.le.s  $f4, $f12
    nop
    bc1f    lbl_800A5208
    nop
    add.s   $f6, $f16, $f14
    c.le.s  $f12, $f6
    nop
    bc1f    lbl_800A5208
    nop
    sub.s   $f8, $f2, $f14
    lwc1    $f12, 0x001C($sp)
    c.le.s  $f8, $f12
    nop
    bc1f    lbl_800A5208
    nop
    add.s   $f10, $f0, $f14
    c.le.s  $f12, $f10
    nop
    bc1f    lbl_800A5208
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A5208:
    jr      $ra
    nop


func_800A5210:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f2, 0x0004(a0)            # 00000004
    lwc1    $f12, 0x0008(a0)           # 00000008
    swc1    $f4, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    lwc1    $f8, 0x0004($sp)
    mov.s   $f14, $f0
    c.lt.s  $f6, $f0
    mov.s   $f16, $f2
    mov.s   $f18, $f12
    bc1fl   lbl_800A5254
    c.lt.s  $f0, $f8
    beq     $zero, $zero, lbl_800A5264
    mov.s   $f14, $f6
    c.lt.s  $f0, $f8
lbl_800A5254:
    nop
    bc1fl   lbl_800A5268
    lwc1    $f10, 0x0004(a1)           # 00000004
    mov.s   $f0, $f8
lbl_800A5264:
    lwc1    $f10, 0x0004(a1)           # 00000004
lbl_800A5268:
    swc1    $f10, 0x0004($sp)
    lwc1    $f4, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    c.lt.s  $f4, $f2
    nop
    bc1fl   lbl_800A5290
    c.lt.s  $f2, $f6
    beq     $zero, $zero, lbl_800A52A0
    mov.s   $f16, $f4
    c.lt.s  $f2, $f6
lbl_800A5290:
    nop
    bc1fl   lbl_800A52A4
    lwc1    $f8, 0x0008(a1)            # 00000008
    mov.s   $f2, $f6
lbl_800A52A0:
    lwc1    $f8, 0x0008(a1)            # 00000008
lbl_800A52A4:
    swc1    $f8, 0x0004($sp)
    lwc1    $f10, 0x0004($sp)
    lwc1    $f4, 0x0004($sp)
    c.lt.s  $f10, $f12
    nop
    bc1fl   lbl_800A52CC
    c.lt.s  $f12, $f4
    beq     $zero, $zero, lbl_800A52DC
    mov.s   $f18, $f10
    c.lt.s  $f12, $f4
lbl_800A52CC:
    nop
    bc1fl   lbl_800A52E0
    lwc1    $f6, 0x0000(a2)            # 00000000
    mov.s   $f12, $f4
lbl_800A52DC:
    lwc1    $f6, 0x0000(a2)            # 00000000
lbl_800A52E0:
    swc1    $f6, 0x0004($sp)
    lwc1    $f8, 0x0004($sp)
    lwc1    $f10, 0x0004($sp)
    c.lt.s  $f8, $f14
    nop
    bc1fl   lbl_800A5308
    c.lt.s  $f0, $f10
    beq     $zero, $zero, lbl_800A5318
    mov.s   $f14, $f8
    c.lt.s  $f0, $f10
lbl_800A5308:
    nop
    bc1fl   lbl_800A531C
    lwc1    $f4, 0x0004(a2)            # 00000004
    mov.s   $f0, $f10
lbl_800A5318:
    lwc1    $f4, 0x0004(a2)            # 00000004
lbl_800A531C:
    or      v0, $zero, $zero           # v0 = 00000000
    swc1    $f4, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    lwc1    $f8, 0x0004($sp)
    c.lt.s  $f6, $f16
    nop
    bc1fl   lbl_800A5348
    c.lt.s  $f2, $f8
    beq     $zero, $zero, lbl_800A5358
    mov.s   $f16, $f6
    c.lt.s  $f2, $f8
lbl_800A5348:
    nop
    bc1fl   lbl_800A535C
    lwc1    $f10, 0x0008(a2)           # 00000008
    mov.s   $f2, $f8
lbl_800A5358:
    lwc1    $f10, 0x0008(a2)           # 00000008
lbl_800A535C:
    swc1    $f10, 0x0004($sp)
    lwc1    $f4, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    c.lt.s  $f4, $f18
    nop
    bc1fl   lbl_800A5384
    c.lt.s  $f12, $f6
    beq     $zero, $zero, lbl_800A5394
    mov.s   $f18, $f4
    c.lt.s  $f12, $f6
lbl_800A5384:
    nop
    bc1fl   lbl_800A5398
    lwc1    $f8, 0x0000(a3)            # 00000000
    mov.s   $f12, $f6
lbl_800A5394:
    lwc1    $f8, 0x0000(a3)            # 00000000
lbl_800A5398:
    lwc1    $f4, 0x0030($sp)
    swc1    $f8, 0x0004($sp)
    sub.s   $f6, $f14, $f4
    lwc1    $f10, 0x0004($sp)
    c.le.s  $f6, $f10
    nop
    bc1f    lbl_800A542C
    nop
    add.s   $f8, $f0, $f4
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_800A542C
    nop
    sub.s   $f6, $f16, $f4
    lwc1    $f0, 0x0004(a3)            # 00000004
    c.le.s  $f6, $f0
    nop
    bc1f    lbl_800A542C
    nop
    add.s   $f8, $f2, $f4
    c.le.s  $f0, $f8
    nop
    bc1f    lbl_800A542C
    nop
    sub.s   $f10, $f18, $f4
    lwc1    $f0, 0x0008(a3)            # 00000008
    c.le.s  $f10, $f0
    nop
    bc1f    lbl_800A542C
    nop
    add.s   $f6, $f12, $f4
    c.le.s  $f0, $f6
    nop
    bc1f    lbl_800A542C
    nop
    beq     $zero, $zero, lbl_800A542C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A542C:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_800A5434:
    mul.s   $f4, $f12, $f12
    nop
    mul.s   $f6, $f14, $f14
    add.s   $f0, $f4, $f6
    jr      $ra
    nop


func_800A544C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_800A5434
    nop
    sqrt.s  $f0, $f0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A5470:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    swc1    $f12, 0x0018($sp)
    swc1    $f14, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lwc1    $f4, 0x0018($sp)
    lwc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0024($sp)
    sub.s   $f12, $f4, $f6
    jal     func_800A5434
    sub.s   $f14, $f8, $f10
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A54B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a2, 0x0020($sp)
    jal     func_800A5470
    lw      a3, 0x0024($sp)
    sqrt.s  $f0, $f0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A54E4:
# Compute a^2 + b^2 + c^2
# A0 = vector3_f32* input
# F0 = Result
    lwc1    $f2, 0x0000(a0)            # 00000000
    lwc1    $f12, 0x0004(a0)           # 00000004
    lwc1    $f14, 0x0008(a0)           # 00000008
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f14
    add.s   $f0, $f8, $f10
    jr      $ra
    nop


func_800A5510:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_800A54E4
    nop
    cvt.d.s $f0, $f0
    lw      $ra, 0x0014($sp)
    sqrt.d  $f0, $f0
    cvt.s.d $f0, $f0
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800A5538:
# Compute Distance Squared
# Defines A2 = (A0 - A1), returns (A2.a)^2 + (A2.b)^2 + (A2.c)^2
# A0 = vector3_f32* (xyz)
# A1 = vector3_f32*
# F0 = Result
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    jal     func_800A54E4
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A5560:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80063E18
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A5580:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0000(a2)             # 00000000
    lwc1    $f8, 0x0000(a1)            # 00000000
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x001C($sp)
    lh      t7, 0x0002(a2)             # 00000002
    lwc1    $f4, 0x0004(a1)            # 00000004
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0020($sp)
    lh      t8, 0x0004(a2)             # 00000004
    lwc1    $f16, 0x0008(a1)           # 00000008
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    sub.s   $f18, $f10, $f16
    jal     func_800A5510
    swc1    $f18, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A55F8:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f18, 0x0004(a0)           # 00000004
    sub.s   $f6, $f4, $f12
    sub.s   $f10, $f8, $f14
    lwc1    $f8, 0x0000(a1)            # 00000000
    sub.s   $f4, $f18, $f14
    mul.s   $f16, $f6, $f10
    sub.s   $f6, $f8, $f12
    mul.s   $f10, $f4, $f6
    sub.s   $f0, $f16, $f10
    jr      $ra
    nop


func_800A5638:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f18, 0x0008(a0)           # 00000008
    sub.s   $f6, $f4, $f12
    sub.s   $f10, $f8, $f14
    lwc1    $f8, 0x0004(a1)            # 00000004
    sub.s   $f4, $f18, $f14
    mul.s   $f16, $f6, $f10
    sub.s   $f6, $f8, $f12
    mul.s   $f10, $f4, $f6
    sub.s   $f0, $f16, $f10
    jr      $ra
    nop


func_800A5678:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f18, 0x0000(a0)           # 00000000
    sub.s   $f6, $f4, $f12
    sub.s   $f10, $f8, $f14
    lwc1    $f8, 0x0008(a1)            # 00000008
    sub.s   $f4, $f18, $f14
    mul.s   $f16, $f6, $f10
    sub.s   $f6, $f8, $f12
    mul.s   $f10, $f4, $f6
    sub.s   $f0, $f16, $f10
    jr      $ra
    nop


func_800A56B8:
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f18, $f10, $f16
    sub.s   $f4, $f8, $f18
    swc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f18, 0x0008(a1)           # 00000008
    mul.s   $f16, $f6, $f10
    nop
    mul.s   $f4, $f8, $f18
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f18, $f10, $f8
    nop
    mul.s   $f6, $f16, $f4
    sub.s   $f10, $f18, $f6
    swc1    $f10, 0x0008(a2)           # 00000008
    jr      $ra
    nop


func_800A572C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x11D8             # a2 = 801211D8
    lw      a0, 0x001C($sp)
    jal     func_80063D48              # Vec3f_Sub
    lw      a1, 0x0018($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x11E8             # a2 = 801211E8
    lw      a0, 0x0020($sp)
    jal     func_80063D48              # Vec3f_Sub
    lw      a1, 0x0018($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x11E8             # a1 = 801211E8
    addiu   a0, a0, 0x11D8             # a0 = 801211D8
    jal     func_800A56B8
    lw      a2, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A5794:
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_800A57B8
    lwc1    $f6, 0x0000(a1)            # 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lwc1    $f6, 0x0000(a1)            # 00000000
lbl_800A57B8:
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_800A57D0
    lwc1    $f0, 0x0004(a0)            # 00000004
    ori     v1, v1, 0x0002             # v1 = 00000003
    lwc1    $f0, 0x0004(a0)            # 00000004
lbl_800A57D0:
    lwc1    $f8, 0x0004(a2)            # 00000004
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_800A57EC
    lwc1    $f10, 0x0004(a1)           # 00000004
    ori     v1, v1, 0x0004             # v1 = 00000007
    lwc1    $f10, 0x0004(a1)           # 00000004
lbl_800A57EC:
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800A5804
    lwc1    $f0, 0x0008(a0)            # 00000008
    ori     v1, v1, 0x0008             # v1 = 0000000F
    lwc1    $f0, 0x0008(a0)            # 00000008
lbl_800A5804:
    lwc1    $f16, 0x0008(a2)           # 00000008
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_800A5820
    lwc1    $f18, 0x0008(a1)           # 00000008
    ori     v1, v1, 0x0010             # v1 = 0000001F
    lwc1    $f18, 0x0008(a1)           # 00000008
lbl_800A5820:
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_800A5838
    or      v0, v1, $zero              # v0 = 0000001F
    ori     v1, v1, 0x0020             # v1 = 0000003F
    or      v0, v1, $zero              # v0 = 0000003F
lbl_800A5838:
    jr      $ra
    nop


func_800A5840:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    lwc1    $f4, 0x0000(a1)            # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    swc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f2, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0030($sp)
    swc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0028($sp)
    lwc1    $f12, 0x0004(a0)           # 00000004
    sub.s   $f4, $f2, $f10
    sub.s   $f0, $f12, $f8
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_800A5888
    lwc1    $f6, 0x0000(a2)            # 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lwc1    $f6, 0x0000(a2)            # 00000000
lbl_800A5888:
    lwc1    $f4, 0x0028($sp)
    swc1    $f6, 0x001C($sp)
    lwc1    $f8, 0x001C($sp)
    lwc1    $f14, 0x0004(a1)           # 00000004
    lwc1    $f6, 0x001C($sp)
    sub.s   $f10, $f14, $f8
    add.s   $f8, $f6, $f2
    c.lt.s  $f0, $f10
    lwc1    $f10, 0x0030($sp)
    add.s   $f0, $f4, $f12
    bc1f    lbl_800A58BC
    add.s   $f4, $f10, $f14
    ori     v1, v1, 0x0002             # v1 = 00000003
lbl_800A58BC:
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_800A58D4
    c.lt.s  $f0, $f4
    ori     v1, v1, 0x0004             # v1 = 00000007
    c.lt.s  $f0, $f4
lbl_800A58D4:
    nop
    bc1fl   lbl_800A58E8
    lwc1    $f6, 0x0008(a1)            # 00000008
    ori     v1, v1, 0x0008             # v1 = 0000000F
    lwc1    $f6, 0x0008(a1)            # 00000008
lbl_800A58E8:
    swc1    $f6, 0x0020($sp)
    lwc1    $f18, 0x0008(a0)           # 00000008
    lwc1    $f16, 0x0020($sp)
    neg.s   $f8, $f18
    neg.s   $f16, $f16
    swc1    $f8, 0x000C($sp)
    lwc1    $f10, 0x000C($sp)
    add.s   $f4, $f16, $f2
    add.s   $f0, $f10, $f12
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_800A5924
    lwc1    $f6, 0x0008(a2)            # 00000008
    ori     v1, v1, 0x0010             # v1 = 0000001F
    lwc1    $f6, 0x0008(a2)            # 00000008
lbl_800A5924:
    swc1    $f6, 0x0004($sp)
    lwc1    $f8, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    sub.s   $f4, $f14, $f8
    neg.s   $f10, $f8
    c.lt.s  $f0, $f4
    swc1    $f10, 0x0000($sp)
    add.s   $f10, $f6, $f2
    lwc1    $f2, 0x0020($sp)
    lwc1    $f4, 0x000C($sp)
    add.s   $f0, $f18, $f12
    lwc1    $f12, 0x0028($sp)
    bc1f    lbl_800A5960
    add.s   $f8, $f2, $f14
    ori     v1, v1, 0x0020             # v1 = 0000003F
lbl_800A5960:
    c.lt.s  $f10, $f0
    lwc1    $f14, 0x001C($sp)
    lwc1    $f10, 0x0000($sp)
    bc1f    lbl_800A5978
    add.s   $f6, $f16, $f14
    ori     v1, v1, 0x0040             # v1 = 0000007F
lbl_800A5978:
    c.lt.s  $f0, $f8
    lwc1    $f16, 0x0030($sp)
    add.s   $f0, $f4, $f12
    lwc1    $f4, 0x0004($sp)
    bc1f    lbl_800A5994
    add.s   $f8, $f10, $f16
    ori     v1, v1, 0x0080             # v1 = 000000FF
lbl_800A5994:
    c.lt.s  $f6, $f0
    add.s   $f6, $f4, $f14
    bc1f    lbl_800A59A8
    add.s   $f10, $f2, $f16
    ori     v1, v1, 0x0100             # v1 = 000001FF
lbl_800A59A8:
    c.lt.s  $f0, $f8
    add.s   $f0, $f18, $f12
    bc1fl   lbl_800A59C0
    c.lt.s  $f6, $f0
    ori     v1, v1, 0x0200             # v1 = 000003FF
    c.lt.s  $f6, $f0
lbl_800A59C0:
    nop
    bc1fl   lbl_800A59D4
    c.lt.s  $f0, $f10
    ori     v1, v1, 0x0400             # v1 = 000007FF
    c.lt.s  $f0, $f10
lbl_800A59D4:
    nop
    bc1fl   lbl_800A59E8
    or      v0, v1, $zero              # v0 = 000007FF
    ori     v1, v1, 0x0800             # v1 = 00000FFF
    or      v0, v1, $zero              # v0 = 00000FFF
lbl_800A59E8:
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_800A59F0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lwc1    $f4, 0x0000(a2)            # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f8, 0x0028($sp)
    swc1    $f6, 0x0024($sp)
    lwc1    $f10, 0x0024($sp)
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0020($sp)
    lwc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f14, 0x0000(a0)           # 00000000
    lwc1    $f16, 0x0008(a2)           # 00000008
    add.s   $f6, $f14, $f18
    add.s   $f8, $f4, $f16
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0010($sp)
    lwc1    $f0, 0x0008(a0)            # 00000008
    add.s   $f6, $f10, $f0
    c.lt.s  $f8, $f6
    nop
    bc1fl   lbl_800A5A54
    lwc1    $f4, 0x0000(a1)            # 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lwc1    $f4, 0x0000(a1)            # 00000000
lbl_800A5A54:
    lwc1    $f6, 0x0024($sp)
    neg.s   $f10, $f4
    neg.s   $f4, $f14
    swc1    $f10, 0x0008($sp)
    swc1    $f4, 0x0000($sp)
    lwc1    $f10, 0x0000($sp)
    lwc1    $f8, 0x0008($sp)
    add.s   $f12, $f10, $f18
    add.s   $f2, $f8, $f6
    add.s   $f6, $f12, $f0
    add.s   $f8, $f2, $f16
    c.lt.s  $f8, $f6
    nop
    bc1fl   lbl_800A5A98
    lwc1    $f4, 0x0008(a1)            # 00000008
    ori     v1, v1, 0x0002             # v1 = 00000003
    lwc1    $f4, 0x0008(a1)            # 00000008
lbl_800A5A98:
    sub.s   $f6, $f12, $f0
    swc1    $f4, 0x0024($sp)
    lwc1    $f10, 0x0024($sp)
    lwc1    $f4, 0x0020($sp)
    sub.s   $f8, $f2, $f10
    lwc1    $f10, 0x0024($sp)
    c.lt.s  $f8, $f6
    lwc1    $f6, 0x0010($sp)
    sub.s   $f8, $f4, $f10
    lwc1    $f10, 0x0028($sp)
    bc1f    lbl_800A5ACC
    sub.s   $f4, $f6, $f0
    ori     v1, v1, 0x0004             # v1 = 00000007
lbl_800A5ACC:
    c.lt.s  $f8, $f4
    sub.s   $f4, $f14, $f18
    bc1fl   lbl_800A5AE4
    lwc1    $f2, 0x0004(a1)            # 00000004
    ori     v1, v1, 0x0008             # v1 = 0000000F
    lwc1    $f2, 0x0004(a1)            # 00000004
lbl_800A5AE4:
    sub.s   $f6, $f10, $f2
    add.s   $f10, $f4, $f0
    lwc1    $f4, 0x0000($sp)
    add.s   $f8, $f6, $f16
    lwc1    $f6, 0x0008($sp)
    c.lt.s  $f8, $f10
    sub.s   $f8, $f4, $f18
    bc1f    lbl_800A5B0C
    sub.s   $f12, $f6, $f2
    ori     v1, v1, 0x0010             # v1 = 0000001F
lbl_800A5B0C:
    add.s   $f14, $f12, $f16
    swc1    $f8, 0x0010($sp)
    lwc1    $f4, 0x0024($sp)
    add.s   $f10, $f8, $f0
    c.lt.s  $f14, $f10
    swc1    $f10, 0x0004($sp)
    lwc1    $f6, 0x0004($sp)
    lwc1    $f10, 0x0010($sp)
    bc1fl   lbl_800A5B3C
    c.lt.s  $f14, $f6
    ori     v1, v1, 0x0020             # v1 = 0000003F
    c.lt.s  $f14, $f6
lbl_800A5B3C:
    sub.s   $f6, $f10, $f0
    bc1f    lbl_800A5B4C
    sub.s   $f8, $f12, $f4
    ori     v1, v1, 0x0040             # v1 = 0000007F
lbl_800A5B4C:
    c.lt.s  $f8, $f6
    nop
    bc1fl   lbl_800A5B64
    or      v0, v1, $zero              # v0 = 0000007F
    ori     v1, v1, 0x0080             # v1 = 000000FF
    or      v0, v1, $zero              # v0 = 000000FF
lbl_800A5B64:
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_800A5B6C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    or      s3, a3, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sdc1    $f20, 0x0030($sp)
    sw      $zero, 0x0050($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_800A5794
    sw      $zero, 0x0054($sp)
    bne     v0, $zero, lbl_800A5BC0
    sw      v0, 0x0050($sp)
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A5BC0:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5794
    or      a2, s1, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_800A5BE0
    sw      v0, 0x0054($sp)
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A5BE0:
    lw      a3, 0x0050($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    and     t6, v0, a3
    beq     t6, $zero, lbl_800A5C00
    nop
    beq     $zero, $zero, lbl_800A65C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A5C00:
    jal     func_800A5840
    or      a2, s1, $zero              # a2 = 00000000
    lw      a3, 0x0050($sp)
    sll     t7, v0,  8
    or      a0, s3, $zero              # a0 = 00000000
    or      a3, a3, t7                 # a3 = 00000000
    sw      a3, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5840
    or      a2, s1, $zero              # a2 = 00000000
    lw      v1, 0x0054($sp)
    lw      a3, 0x0050($sp)
    sll     t8, v0,  8
    or      v1, v1, t8                 # v1 = 00000000
    and     t9, v1, a3
    beq     t9, $zero, lbl_800A5C4C
    sw      v1, 0x0054($sp)
    beq     $zero, $zero, lbl_800A65C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A5C4C:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A59F0
    or      a2, s1, $zero              # a2 = 00000000
    lw      a3, 0x0050($sp)
    sll     t0, v0, 24
    or      a0, s3, $zero              # a0 = 00000000
    or      a3, a3, t0                 # a3 = 00000000
    sw      a3, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A59F0
    or      a2, s1, $zero              # a2 = 00000000
    lw      v1, 0x0054($sp)
    lw      a3, 0x0050($sp)
    sll     t1, v0, 24
    or      v1, v1, t1                 # v1 = 00000000
    and     t2, v1, a3
    beq     t2, $zero, lbl_800A5CA0
    sw      v1, 0x0054($sp)
    beq     $zero, $zero, lbl_800A65C4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A5CA0:
    lwc1    $f4, 0x0000(s0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    mtc1    $zero, $f20                # $f20 = 0.00
    swc1    $f4, 0x0FE0($at)           # 80120FE0
    lwc1    $f6, 0x0004(s0)            # 00000004
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x1010             # t3 = 80121010
    swc1    $f6, 0x0FE4($at)           # 80120FE4
    lwc1    $f8, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f8, 0x0FE8($at)           # 80120FE8
    lwc1    $f10, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f10, 0x0FF0($at)          # 80120FF0
    lwc1    $f16, 0x0004(s0)           # 00000004
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f16, 0x0FF4($at)          # 80120FF4
    lwc1    $f18, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f18, 0x0FF8($at)          # 80120FF8
    lwc1    $f4, 0x0000(s0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f4, 0x1000($at)           # 80121000
    lwc1    $f6, 0x0004(s1)            # 00000004
    lui     a3, 0xBF80                 # a3 = BF800000
    swc1    $f6, 0x1004($at)           # 80121004
    lwc1    $f8, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    swc1    $f8, 0x1008($at)           # 80121008
    lwc1    $f10, 0x0000(s0)           # 00000000
    sw      $zero, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f10, 0x0018($sp)
    beql    v0, $zero, lbl_800A5D60
    lwc1    $f16, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f16, 0x0000(s0)           # 00000000
lbl_800A5D60:
    lui     $at, 0x8012                # $at = 80120000
    lui     t4, 0x8012                 # t4 = 80120000
    swc1    $f16, 0x0FE0($at)          # 80120FE0
    lwc1    $f18, 0x0004(s0)           # 00000004
    addiu   t4, t4, 0x1010             # t4 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f18, 0x0FE4($at)          # 80120FE4
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f4, 0x0FE8($at)           # 80120FE8
    lwc1    $f6, 0x0000(s0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f6, 0x0FF0($at)           # 80120FF0
    lwc1    $f8, 0x0004(s1)            # 00000004
    addiu   a2, a2, 0x1000             # a2 = 80121000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f8, 0x0FF4($at)           # 80120FF4
    lwc1    $f10, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f10, 0x0FF8($at)          # 80120FF8
    lwc1    $f16, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a3, 0xBF80                 # a3 = BF800000
    swc1    $f16, 0x1000($at)          # 80121000
    lwc1    $f18, 0x0004(s1)           # 00000004
    swc1    $f18, 0x1004($at)          # 80121004
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    swc1    $f4, 0x1008($at)           # 80121008
    lwc1    $f6, 0x0000(s0)            # 00000000
    sw      $zero, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f6, 0x0018($sp)
    beql    v0, $zero, lbl_800A5E18
    lwc1    $f8, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f8, 0x0000(s0)            # 00000000
lbl_800A5E18:
    lui     $at, 0x8012                # $at = 80120000
    lui     t5, 0x8012                 # t5 = 80120000
    swc1    $f8, 0x0FE0($at)           # 80120FE0
    lwc1    $f10, 0x0004(s1)           # 00000004
    addiu   t5, t5, 0x1010             # t5 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f10, 0x0FE4($at)          # 80120FE4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f16, 0x0FE8($at)          # 80120FE8
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f18, 0x0FF0($at)          # 80120FF0
    lwc1    $f4, 0x0004(s0)            # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f4, 0x0FF4($at)           # 80120FF4
    lwc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF8($at)           # 80120FF8
    lwc1    $f8, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x1000($at)           # 80121000
    lwc1    $f10, 0x0004(s1)           # 00000004
    swc1    $f10, 0x1004($at)          # 80121004
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0010($sp)
    swc1    $f16, 0x1008($at)          # 80121008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x0008(s1)            # 00000008
    sw      $zero, 0x0028($sp)
    sw      t5, 0x0024($sp)
    neg.s   $f6, $f4
    sw      s3, 0x0020($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A5EE0
    lwc1    $f8, 0x0000(s1)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f8, 0x0000(s1)            # 00000000
lbl_800A5EE0:
    lui     $at, 0x8012                # $at = 80120000
    lui     t6, 0x8012                 # t6 = 80120000
    swc1    $f8, 0x0FE0($at)           # 80120FE0
    lwc1    $f10, 0x0004(s1)           # 00000004
    addiu   t6, t6, 0x1010             # t6 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f10, 0x0FE4($at)          # 80120FE4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f16, 0x0FE8($at)          # 80120FE8
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f18, 0x0FF0($at)          # 80120FF0
    lwc1    $f4, 0x0004(s0)            # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f4, 0x0FF4($at)           # 80120FF4
    lwc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF8($at)           # 80120FF8
    lwc1    $f8, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x1000($at)           # 80121000
    lwc1    $f10, 0x0004(s0)           # 00000004
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f10, 0x0FF4($at)          # 80120FF4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0010($sp)
    swc1    $f16, 0x1008($at)          # 80121008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x0008(s1)            # 00000008
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0024($sp)
    neg.s   $f6, $f4
    sw      s3, 0x0020($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A5FAC
    lwc1    $f8, 0x0000(s1)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f8, 0x0000(s1)            # 00000000
lbl_800A5FAC:
    lui     $at, 0x8012                # $at = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    swc1    $f8, 0x0FE0($at)           # 80120FE0
    lwc1    $f10, 0x0004(s1)           # 00000004
    addiu   t7, t7, 0x1010             # t7 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f10, 0x0FE4($at)          # 80120FE4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f16, 0x0FE8($at)          # 80120FE8
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f18, 0x0FF0($at)          # 80120FF0
    lwc1    $f4, 0x0004(s1)            # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f4, 0x0FF4($at)           # 80120FF4
    lwc1    $f6, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF8($at)           # 80120FF8
    lwc1    $f8, 0x0000(s0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x1000($at)           # 80121000
    lwc1    $f10, 0x0004(s1)           # 00000004
    swc1    $f10, 0x1004($at)          # 80121004
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f16, 0x1008($at)          # 80121008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0004(s1)            # 00000004
    sw      $zero, 0x0028($sp)
    sw      t7, 0x0024($sp)
    neg.s   $f6, $f4
    sw      s3, 0x0020($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A6074
    lwc1    $f8, 0x0000(s1)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f8, 0x0000(s1)            # 00000000
lbl_800A6074:
    lui     $at, 0x8012                # $at = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    swc1    $f8, 0x0FE0($at)           # 80120FE0
    lwc1    $f10, 0x0004(s1)           # 00000004
    addiu   t8, t8, 0x1010             # t8 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f10, 0x0FE4($at)          # 80120FE4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f16, 0x0FE8($at)          # 80120FE8
    lwc1    $f18, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f18, 0x0FF0($at)          # 80120FF0
    lwc1    $f4, 0x0004(s1)            # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f4, 0x0FF4($at)           # 80120FF4
    lwc1    $f6, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF8($at)           # 80120FF8
    lwc1    $f8, 0x0000(s0)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x1000($at)           # 80121000
    lwc1    $f10, 0x0004(s1)           # 00000004
    swc1    $f10, 0x1004($at)          # 80121004
    lwc1    $f16, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f16, 0x1008($at)          # 80121008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0004(s1)            # 00000004
    sw      $zero, 0x0028($sp)
    sw      t8, 0x0024($sp)
    neg.s   $f6, $f4
    sw      s3, 0x0020($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A613C
    lwc1    $f8, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f8, 0x0000(s0)            # 00000000
lbl_800A613C:
    lui     $at, 0x8012                # $at = 80120000
    lui     t9, 0x8012                 # t9 = 80120000
    swc1    $f8, 0x0FE0($at)           # 80120FE0
    lwc1    $f10, 0x0004(s0)           # 00000004
    addiu   t9, t9, 0x1010             # t9 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f10, 0x0FE4($at)          # 80120FE4
    lwc1    $f16, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f16, 0x0FE8($at)          # 80120FE8
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f18, 0x0FF0($at)          # 80120FF0
    lwc1    $f4, 0x0004(s1)            # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f4, 0x0FF4($at)           # 80120FF4
    lwc1    $f6, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF8($at)           # 80120FF8
    lwc1    $f8, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x1000($at)           # 80121000
    lwc1    $f10, 0x0004(s1)           # 00000004
    swc1    $f10, 0x1004($at)          # 80121004
    lwc1    $f16, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0010($sp)
    swc1    $f16, 0x1008($at)          # 80121008
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    nop
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    sw      $zero, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f4, 0x0018($sp)
    beql    v0, $zero, lbl_800A6200
    lwc1    $f6, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f6, 0x0000(s0)            # 00000000
lbl_800A6200:
    lui     $at, 0x8012                # $at = 80120000
    lui     t0, 0x8012                 # t0 = 80120000
    swc1    $f6, 0x0FE0($at)           # 80120FE0
    lwc1    $f8, 0x0004(s0)            # 00000004
    addiu   t0, t0, 0x1010             # t0 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f8, 0x0FE4($at)           # 80120FE4
    lwc1    $f10, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f10, 0x0FE8($at)          # 80120FE8
    lwc1    $f16, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f16, 0x0FF0($at)          # 80120FF0
    lwc1    $f18, 0x0004(s1)           # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f18, 0x0FF4($at)          # 80120FF4
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f4, 0x0FF8($at)           # 80120FF8
    lwc1    $f6, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f6, 0x1000($at)           # 80121000
    lwc1    $f8, 0x0004(s0)            # 00000004
    swc1    $f8, 0x1004($at)           # 80121004
    lwc1    $f10, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0010($sp)
    swc1    $f10, 0x1008($at)          # 80121008
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    nop
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x0008(s0)           # 00000008
    sw      $zero, 0x0028($sp)
    sw      t0, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f18, 0x0018($sp)
    beql    v0, $zero, lbl_800A62C4
    lwc1    $f4, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f4, 0x0000(s0)            # 00000000
lbl_800A62C4:
    lui     $at, 0x8012                # $at = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    swc1    $f4, 0x0FE0($at)           # 80120FE0
    lwc1    $f6, 0x0004(s0)            # 00000004
    addiu   t1, t1, 0x1010             # t1 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f6, 0x0FE4($at)           # 80120FE4
    lwc1    $f8, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f8, 0x0FE8($at)           # 80120FE8
    lwc1    $f10, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f10, 0x0FF0($at)          # 80120FF0
    lwc1    $f16, 0x0004(s0)           # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f16, 0x0FF4($at)          # 80120FF4
    lwc1    $f18, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f18, 0x0FF8($at)          # 80120FF8
    lwc1    $f4, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f4, 0x1000($at)           # 80121000
    lwc1    $f6, 0x0004(s0)            # 00000004
    swc1    $f6, 0x1004($at)           # 80121004
    lwc1    $f8, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f8, 0x1008($at)           # 80121008
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    nop
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0004(s0)           # 00000004
    sw      $zero, 0x0028($sp)
    sw      t1, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f16, 0x0018($sp)
    beql    v0, $zero, lbl_800A6388
    lwc1    $f18, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f18, 0x0000(s0)           # 00000000
lbl_800A6388:
    lui     $at, 0x8012                # $at = 80120000
    lui     t2, 0x8012                 # t2 = 80120000
    swc1    $f18, 0x0FE0($at)          # 80120FE0
    lwc1    $f4, 0x0004(s0)            # 00000004
    addiu   t2, t2, 0x1010             # t2 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f4, 0x0FE4($at)           # 80120FE4
    lwc1    $f6, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f6, 0x0FE8($at)           # 80120FE8
    lwc1    $f8, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f8, 0x0FF0($at)           # 80120FF0
    lwc1    $f10, 0x0004(s0)           # 00000004
    mfc1    a3, $f20
    addiu   a2, a2, 0x1000             # a2 = 80121000
    swc1    $f10, 0x0FF4($at)          # 80120FF4
    lwc1    $f16, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f16, 0x0FF8($at)          # 80120FF8
    lwc1    $f18, 0x0000(s0)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f18, 0x1000($at)          # 80121000
    lwc1    $f4, 0x0004(s0)            # 00000004
    swc1    $f4, 0x1004($at)           # 80121004
    lwc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f6, 0x1008($at)           # 80121008
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    nop
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0004(s0)           # 00000004
    sw      $zero, 0x0028($sp)
    sw      t2, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    jal     func_800A80D0
    swc1    $f10, 0x0018($sp)
    beql    v0, $zero, lbl_800A644C
    lwc1    $f16, 0x0000(s1)           # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f16, 0x0000(s1)           # 00000000
lbl_800A644C:
    lui     $at, 0x8012                # $at = 80120000
    lui     t3, 0x8012                 # t3 = 80120000
    swc1    $f16, 0x0FE0($at)          # 80120FE0
    lwc1    $f18, 0x0004(s1)           # 00000004
    addiu   t3, t3, 0x1010             # t3 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f18, 0x0FE4($at)          # 80120FE4
    lwc1    $f4, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f4, 0x0FE8($at)           # 80120FE8
    lwc1    $f6, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f6, 0x0FF0($at)           # 80120FF0
    lwc1    $f8, 0x0004(s0)            # 00000004
    addiu   a2, a2, 0x1000             # a2 = 80121000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f8, 0x0FF4($at)           # 80120FF4
    lwc1    $f10, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f10, 0x0FF8($at)          # 80120FF8
    lwc1    $f16, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f16, 0x1000($at)          # 80121000
    lwc1    $f18, 0x0004(s1)           # 00000004
    swc1    $f18, 0x1004($at)          # 80121004
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    swc1    $f4, 0x1008($at)           # 80121008
    lwc1    $f6, 0x0000(s1)            # 00000000
    sw      $zero, 0x0028($sp)
    sw      t3, 0x0024($sp)
    neg.s   $f8, $f6
    sw      s3, 0x0020($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A6508
    lwc1    $f10, 0x0000(s1)           # 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f10, 0x0000(s1)           # 00000000
lbl_800A6508:
    lui     $at, 0x8012                # $at = 80120000
    lui     t4, 0x8012                 # t4 = 80120000
    swc1    $f10, 0x0FE0($at)          # 80120FE0
    lwc1    $f16, 0x0004(s1)           # 00000004
    addiu   t4, t4, 0x1010             # t4 = 80121010
    lui     a0, 0x8012                 # a0 = 80120000
    swc1    $f16, 0x0FE4($at)          # 80120FE4
    lwc1    $f18, 0x0008(s1)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f18, 0x0FE8($at)          # 80120FE8
    lwc1    $f4, 0x0000(s1)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f4, 0x0FF0($at)           # 80120FF0
    lwc1    $f6, 0x0004(s0)            # 00000004
    addiu   a2, a2, 0x1000             # a2 = 80121000
    addiu   a1, a1, 0x0FF0             # a1 = 80120FF0
    swc1    $f6, 0x0FF4($at)           # 80120FF4
    lwc1    $f8, 0x0008(s1)            # 00000008
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x0FE0             # a0 = 80120FE0
    swc1    $f8, 0x0FF8($at)           # 80120FF8
    lwc1    $f10, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f10, 0x1000($at)          # 80121000
    lwc1    $f16, 0x0004(s0)           # 00000004
    swc1    $f16, 0x1004($at)          # 80121004
    lwc1    $f18, 0x0008(s0)           # 00000008
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    swc1    $f18, 0x1008($at)          # 80121008
    lwc1    $f4, 0x0000(s1)            # 00000000
    sw      $zero, 0x0028($sp)
    sw      t4, 0x0024($sp)
    neg.s   $f6, $f4
    sw      s3, 0x0020($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A80D0
    sw      s2, 0x001C($sp)
    beql    v0, $zero, lbl_800A65C4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A65C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A65C4:
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_800A65E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      t6, 0x0018($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      t0, 0x001C($sp)
    lh      t7, 0x0000(t6)             # 00000000
    lw      t4, 0x0020($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    cvt.s.w $f6, $f4
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x1050             # a3 = 80121050
    addiu   a2, a2, 0x1040             # a2 = 80121040
    addiu   a1, a1, 0x1030             # a1 = 80121030
    addiu   a0, a0, 0x1020             # a0 = 80121020
    swc1    $f6, 0x1020($at)           # 80121020
    lh      t8, 0x0002(t6)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1024($at)          # 80121024
    lh      t9, 0x0004(t6)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    lw      t6, 0x0024($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x1028($at)          # 80121028
    lh      t1, 0x0000(t0)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t1, $f4                    # $f4 = 0.00
    lw      t1, 0x0024($sp)
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1030($at)           # 80121030
    lh      t2, 0x0002(t0)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1034($at)          # 80121034
    lh      t3, 0x0004(t0)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    lw      t0, 0x0024($sp)
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x1038($at)          # 80121038
    lh      t5, 0x0000(t4)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1040($at)           # 80121040
    lh      t7, 0x0002(t4)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1044($at)          # 80121044
    lh      t8, 0x0004(t4)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x1048($at)          # 80121048
    lh      t9, 0x0000(t6)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1050($at)           # 80121050
    lh      t2, 0x0002(t1)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1054($at)          # 80121054
    lh      t3, 0x0004(t0)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_800A5B6C
    swc1    $f18, 0x1058($at)          # 80121058
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A6750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x001E($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x719C($at)          # 80108E64
    lw      t6, 0x0020($sp)
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0000(t6)            # 00000000
    jal     func_80063684              # coss?
    lh      a0, 0x001E($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7198($at)          # 80108E68
    lw      t7, 0x0024($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f2, $f0, $f8
    swc1    $f2, 0x0000(t7)            # 00000000
    lw      t8, 0x0020($sp)
    lwc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f4, 0x0008(v0)            # 00000008
    lwc1    $f10, 0x0000(t8)           # 00000000
    lw      t9, 0x0028($sp)
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f6, $f2, $f4
    add.s   $f8, $f6, $f18
    neg.s   $f10, $f8
    swc1    $f10, 0x0000(t9)           # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800A67DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a3, 0x0024($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x1060             # a3 = 80121060
    jal     func_800A572C
    sw      a0, 0x0018($sp)
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x1060($at)           # 80121060
    lwc1    $f12, 0x1064($at)          # 80121064
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f6, $f4, $f4
    lwc1    $f14, 0x1068($at)          # 80121068
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f8, $f12, $f12
    lw      v0, 0x0024($sp)
    lw      a0, 0x0018($sp)
    mul.s   $f18, $f14, $f14
    lw      v1, 0x0028($sp)
    lw      t7, 0x0030($sp)
    add.s   $f10, $f6, $f8
    lwc1    $f6, -0x7194($at)          # 80108E6C
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f0, $f10, $f18
    sqrt.s  $f16, $f0
    abs.s   $f0, $f16
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_800A68CC
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      v1, 0x0028($sp)
    lw      a1, 0x002C($sp)
    div.s   $f0, $f8, $f16
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f10, $f4, $f0
    swc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x1064($at)          # 80121064
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f6, $f18, $f0
    swc1    $f6, 0x0000(v1)            # 00000000
    lwc1    $f8, 0x1068($at)           # 80121068
    mul.s   $f4, $f8, $f0
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f18, 0x0000(a0)           # 00000000
    lwc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f4, 0x0004(a0)            # 00000004
    lwc1    $f8, 0x0000(v1)            # 00000000
    mul.s   $f6, $f10, $f18
    lw      t6, 0x0030($sp)
    mul.s   $f10, $f8, $f4
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    add.s   $f18, $f6, $f10
    mul.s   $f6, $f8, $f4
    add.s   $f10, $f6, $f18
    neg.s   $f8, $f10
    beq     $zero, $zero, lbl_800A68E0
    swc1    $f8, 0x0000(t6)            # 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800A68CC:
    lw      a1, 0x002C($sp)
    swc1    $f0, 0x0000(t7)            # 00000000
    swc1    $f0, 0x0000(a1)            # 00000000
    swc1    $f0, 0x0000(v1)            # 00000000
    swc1    $f0, 0x0000(v0)            # 00000000
lbl_800A68E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A68F0:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lw      a0, 0x0010($sp)
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f18, 0x0008($sp)
    mul.s   $f6, $f4, $f12
    lwc1    $f4, 0x0008(a0)            # 00000008
    mul.s   $f10, $f14, $f8
    add.s   $f16, $f6, $f10
    mul.s   $f8, $f18, $f4
    lwc1    $f10, 0x000C($sp)
    add.s   $f6, $f16, $f8
    add.s   $f0, $f6, $f10
    jr      $ra
    nop


func_800A6930:
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0004(a0)           # 00000004
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x0008(a0)            # 00000008
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0008(a1)           # 00000008
    mul.s   $f16, $f6, $f10
    add.s   $f4, $f8, $f18
    lwc1    $f18, 0x000C(a0)           # 0000000C
    add.s   $f8, $f4, $f16
    add.s   $f0, $f8, $f18
    jr      $ra
    nop


func_800A696C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0030($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x002C($sp)
    jal     func_800A69A4
    sw      t6, 0x0010($sp)
    abs.s   $f0, $f0
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A69A4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    mul.s   $f4, $f12, $f12
    lwc1    $f10, 0x0030($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f6, $f14, $f14
    lwc1    $f18, -0x7190($at)         # 80108E70
    lw      a2, 0x0030($sp)
    mul.s   $f16, $f10, $f10
    lw      a3, 0x0034($sp)
    lw      t6, 0x0038($sp)
    add.s   $f8, $f4, $f6
    add.s   $f0, $f8, $f16
    sqrt.s  $f2, $f0
    abs.s   $f0, $f2
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_800A6A08
    sw      t6, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_800A6A1C
    lw      $ra, 0x001C($sp)
    sw      t6, 0x0010($sp)
lbl_800A6A08:
    jal     func_800A68F0
    swc1    $f2, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    div.s   $f0, $f0, $f2
    lw      $ra, 0x001C($sp)
lbl_800A6A1C:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6A28:
# A0 = vector3_f32* vertexA
# A1 = vector3_f32* vertexB
# A2 = vector3_f32* vertexC
# A3 = f32 checkCoords z
# SP+0x10 = f32 checkCoords x
# SP+0x14 = f32 ?
# SP+0x18 = Arg SP+0x28
# SP+0x1C = NormY
# V0 = 1 if success, else 0
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    lw      t6, 0x0078($sp)
    lwc1    $f12, 0x0008(a0)           # 00000008
    lwc1    $f14, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0008(t6)            # 00000008
    lw      a2, 0x0008(a1)             # 00000008
    lw      a3, 0x0000(a1)             # 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0000(t6)            # 00000000
    lwc1    $f4, 0x0088($sp)
    lwc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x0080($sp)
    sw      a1, 0x0074($sp)
    sw      a0, 0x0070($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f4, 0x0020($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800A50D0
    swc1    $f10, 0x001C($sp)
    lw      v1, 0x0078($sp)
    lw      a0, 0x0070($sp)
    lw      a1, 0x0074($sp)
    bne     v0, $zero, lbl_800A6A9C
    lwc1    $f12, 0x0088($sp)
    beq     $zero, $zero, lbl_800A6D34
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A6A9C:
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x007C($sp)
    mul.s   $f16, $f12, $f12
    swc1    $f6, 0x0058($sp)
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0058($sp)
    swc1    $f4, 0x0054($sp)
    sub.s   $f0, $f8, $f10
    lwc1    $f8, 0x0080($sp)
    lwc1    $f6, 0x0054($sp)
    mul.s   $f4, $f0, $f0
    sub.s   $f2, $f6, $f8
    mul.s   $f6, $f2, $f2
    add.s   $f4, $f4, $f6
    c.lt.s  $f4, $f16
    nop
    bc1t    lbl_800A6B54
    nop
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f18, 0x0008(a1)           # 00000008
    swc1    $f16, 0x0048($sp)
    swc1    $f6, 0x004C($sp)
    sub.s   $f12, $f18, $f10
    lwc1    $f4, 0x004C($sp)
    swc1    $f18, 0x0050($sp)
    sub.s   $f14, $f4, $f8
    mul.s   $f6, $f12, $f12
    nop
    mul.s   $f4, $f14, $f14
    add.s   $f6, $f6, $f4
    c.lt.s  $f6, $f16
    nop
    bc1t    lbl_800A6B54
    nop
    lwc1    $f4, 0x0008(v1)            # 00000008
    lwc1    $f6, 0x0000(v1)            # 00000000
    sub.s   $f16, $f4, $f10
    sub.s   $f18, $f6, $f8
    mul.s   $f4, $f16, $f16
    lwc1    $f8, 0x0048($sp)
    mul.s   $f10, $f18, $f18
    add.s   $f6, $f4, $f10
    c.lt.s  $f6, $f8
    nop
    bc1f    lbl_800A6B5C
    nop
lbl_800A6B54:
    beq     $zero, $zero, lbl_800A6D34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A6B5C:
    mul.s   $f4, $f0, $f14
    nop
    mul.s   $f10, $f2, $f12
    sub.s   $f6, $f4, $f10
    mul.s   $f8, $f12, $f18
    nop
    mul.s   $f4, $f14, $f16
    swc1    $f6, 0x006C($sp)
    mov.s   $f12, $f6
    sub.s   $f10, $f8, $f4
    mul.s   $f8, $f16, $f2
    lwc1    $f2, 0x0084($sp)
    mul.s   $f4, $f18, $f0
    swc1    $f10, 0x0068($sp)
    c.le.s  $f6, $f2
    mov.s   $f14, $f10
    sub.s   $f8, $f8, $f4
    swc1    $f8, 0x0064($sp)
    bc1f    lbl_800A6BCC
    mov.s   $f16, $f8
    c.le.s  $f10, $f2
    nop
    bc1fl   lbl_800A6BD0
    neg.s   $f0, $f2
    c.le.s  $f8, $f2
    nop
    bc1t    lbl_800A6C00
    nop
lbl_800A6BCC:
    neg.s   $f0, $f2
lbl_800A6BD0:
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_800A6C0C
    lwc1    $f0, 0x008C($sp)
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_800A6C0C
    lwc1    $f0, 0x008C($sp)
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_800A6C0C
    lwc1    $f0, 0x008C($sp)
lbl_800A6C00:
    beq     $zero, $zero, lbl_800A6D34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f0, 0x008C($sp)
lbl_800A6C0C:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    lwc1    $f12, 0x007C($sp)
    c.lt.s  $f4, $f0
    lwc1    $f14, 0x0080($sp)
    lw      a2, 0x0058($sp)
    lw      a3, 0x0054($sp)
    bc1f    lbl_800A6D30
    lwc1    $f6, 0x0050($sp)
    lwc1    $f10, 0x004C($sp)
    addiu   t7, $sp, 0x0060            # t7 = FFFFFFF0
    sw      t7, 0x0018($sp)
    swc1    $f6, 0x0010($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    lw      v1, 0x0078($sp)
    lw      a0, 0x0070($sp)
    beq     v0, $zero, lbl_800A6C84
    lw      a1, 0x0074($sp)
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A6C88
    lwc1    $f6, 0x0008(v1)            # 00000008
    beq     $zero, $zero, lbl_800A6D34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A6C84:
    lwc1    $f6, 0x0008(v1)            # 00000008
lbl_800A6C88:
    lw      a2, 0x0008(a1)             # 00000008
    lw      a3, 0x0000(a1)             # 00000000
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0000(v1)           # 00000000
    addiu   t8, $sp, 0x0060            # t8 = FFFFFFF0
    sw      t8, 0x0018($sp)
    sw      a0, 0x0070($sp)
    lwc1    $f12, 0x007C($sp)
    lwc1    $f14, 0x0080($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    lw      v1, 0x0078($sp)
    beq     v0, $zero, lbl_800A6CE0
    lw      a0, 0x0070($sp)
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A6CE4
    lwc1    $f6, 0x0008(a0)            # 00000008
    beq     $zero, $zero, lbl_800A6D34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A6CE0:
    lwc1    $f6, 0x0008(a0)            # 00000008
lbl_800A6CE4:
    lw      a2, 0x0008(v1)             # 00000008
    lw      a3, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0000(a0)           # 00000000
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFF0
    sw      t9, 0x0018($sp)
    lwc1    $f12, 0x007C($sp)
    lwc1    $f14, 0x0080($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_800A6D30
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A6D34
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A6D34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A6D30:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A6D34:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_800A6D44:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    lwc1    $f10, 0x0040($sp)
    mfc1    a3, $f12
    swc1    $f4, 0x0010($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800A6A28
    swc1    $f10, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6D8C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x718C($at)         # 80108E74
    lwc1    $f4, 0x0038($sp)
    mfc1    a3, $f12
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f10, 0x001C($sp)
    jal     func_800A6A28
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6DDC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f12, 0x0038($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7188($at)          # 80108E78
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0044($sp)
    lwc1    $f6, 0x0048($sp)
    bc1fl   lbl_800A6E1C
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A6E7C
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A6E1C:
    lwc1    $f10, 0x0050($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_800A6A28
    swc1    $f8, 0x0014($sp)
    beq     v0, $zero, lbl_800A6E78
    lwc1    $f16, 0x0034($sp)
    lwc1    $f4, 0x0048($sp)
    neg.s   $f18, $f16
    lwc1    $f8, 0x003C($sp)
    mul.s   $f6, $f18, $f4
    lwc1    $f10, 0x0044($sp)
    lwc1    $f4, 0x0040($sp)
    lw      t6, 0x004C($sp)
    mul.s   $f16, $f8, $f10
    lwc1    $f10, 0x0038($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f6, $f16
    sub.s   $f8, $f18, $f4
    div.s   $f6, $f8, $f10
    beq     $zero, $zero, lbl_800A6E7C
    swc1    $f6, 0x0000(t6)            # 00000000
lbl_800A6E78:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A6E7C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6E8C:
# A0 = vector3_f32* vertexA
# A1 = vector3_f32* vertexB
# A2 = vector3_f32* vertexC
# A3 = f32 NormX
# SP+0x10 = f32 NormY
# SP+0x14 = f32 NormZ
# SP+0x18 = f32 CollisionPoly Plane Distance
# SP+0x1C = f32 checkCoords z
# SP+0x20 = f32 checkCoords x
# SP+0x24 = ptr ?
# SP+0x28 = f32 ?
# V0 = 1 if success, else 0
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f12, 0x0038($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7184($at)          # 80108E7C
    abs.s   $f0, $f12
    lw      a3, 0x0044($sp)
    c.lt.s  $f0, $f4
    lwc1    $f6, 0x0048($sp)
    bc1fl   lbl_800A6EC8
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_800A6F28
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_800A6EC8:
    lwc1    $f10, 0x0050($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_800A6A28
    swc1    $f8, 0x0014($sp)
    beq     v0, $zero, lbl_800A6F24
    lwc1    $f16, 0x0034($sp)
    lwc1    $f4, 0x0048($sp)
    neg.s   $f18, $f16
    lwc1    $f8, 0x003C($sp)
    mul.s   $f6, $f18, $f4
    lwc1    $f10, 0x0044($sp)
    lwc1    $f4, 0x0040($sp)
    lw      t6, 0x004C($sp)
    mul.s   $f16, $f8, $f10
    lwc1    $f10, 0x0038($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f6, $f16
    sub.s   $f8, $f18, $f4
    div.s   $f6, $f8, $f10
    beq     $zero, $zero, lbl_800A6F28
    swc1    $f6, 0x0000(t6)            # 00000000
lbl_800A6F24:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A6F28:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6F38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7180($at)          # 80108E80
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A6F74
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A6FA4
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A6F74:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A6A28
    swc1    $f10, 0x0018($sp)
    beql    v0, $zero, lbl_800A6FA4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A6FA4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A6FA4:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A6FB4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lwc1    $f14, 0x0050($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x717C($at)          # 80108E84
    abs.s   $f0, $f14
    lwc1    $f6, 0x0060($sp)
    c.lt.s  $f0, $f4
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFEC
    bc1fl   lbl_800A6FFC
    lwc1    $f8, 0x0068($sp)
    beq     $zero, $zero, lbl_800A7118
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0068($sp)
lbl_800A6FFC:
    lwc1    $f10, 0x005C($sp)
    swc1    $f6, 0x002C($sp)
    lwc1    $f12, 0x004C($sp)
    lw      a2, 0x0054($sp)
    lw      a3, 0x0058($sp)
    sw      t6, 0x0010($sp)
    swc1    $f8, 0x0030($sp)
    jal     func_800A68F0
    swc1    $f10, 0x0034($sp)
    lwc1    $f16, 0x006C($sp)
    addiu   t7, $sp, 0x002C            # t7 = FFFFFFEC
    sw      t7, 0x0010($sp)
    lwc1    $f12, 0x004C($sp)
    lwc1    $f14, 0x0050($sp)
    lw      a2, 0x0054($sp)
    lw      a3, 0x0058($sp)
    swc1    $f0, 0x003C($sp)
    jal     func_800A68F0
    swc1    $f16, 0x0030($sp)
    lwc1    $f2, 0x003C($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800A7078
    c.lt.s  $f2, $f12
    c.lt.s  $f12, $f0
    nop
    bc1t    lbl_800A709C
    nop
    c.lt.s  $f2, $f12
lbl_800A7078:
    lw      a0, 0x0040($sp)
    lw      a1, 0x0044($sp)
    lw      a2, 0x0048($sp)
    bc1f    lbl_800A70A4
    lw      a3, 0x005C($sp)
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_800A70A8
    lui     $at, 0x4396                # $at = 43960000
lbl_800A709C:
    beq     $zero, $zero, lbl_800A7118
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A70A4:
    lui     $at, 0x4396                # $at = 43960000
lbl_800A70A8:
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x0060($sp)
    lwc1    $f8, 0x0050($sp)
    swc1    $f4, 0x0014($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A6A28
    swc1    $f8, 0x001C($sp)
    beq     v0, $zero, lbl_800A7114
    lwc1    $f10, 0x004C($sp)
    lwc1    $f18, 0x0060($sp)
    neg.s   $f16, $f10
    lwc1    $f6, 0x0054($sp)
    mul.s   $f4, $f16, $f18
    lwc1    $f8, 0x005C($sp)
    lwc1    $f18, 0x0058($sp)
    lw      t8, 0x0064($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f8, 0x0050($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f16, $f4, $f10
    sub.s   $f6, $f16, $f18
    div.s   $f4, $f6, $f8
    beq     $zero, $zero, lbl_800A7118
    swc1    $f4, 0x0000(t8)            # 00000000
lbl_800A7114:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7118:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_800A7128:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lwc1    $f2, 0x0004(a3)            # 00000004
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7178($at)          # 80108E88
    abs.s   $f0, $f2
    lw      a3, 0x0038($sp)
    c.lt.s  $f0, $f4
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A7160
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_800A718C
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_800A7160:
    lwc1    $f10, 0x0040($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f2, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_800A6A28
    swc1    $f8, 0x0014($sp)
    beql    v0, $zero, lbl_800A718C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A718C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A718C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A719C:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    lw      t6, 0x0078($sp)
    lwc1    $f12, 0x0004(a0)           # 00000004
    lwc1    $f14, 0x0008(a0)           # 00000008
    lwc1    $f4, 0x0004(t6)            # 00000004
    lw      a2, 0x0004(a1)             # 00000004
    lw      a3, 0x0008(a1)             # 00000008
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0008(t6)            # 00000008
    lwc1    $f4, 0x0088($sp)
    lwc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x0080($sp)
    sw      a1, 0x0074($sp)
    sw      a0, 0x0070($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f4, 0x0020($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800A50D0
    swc1    $f10, 0x001C($sp)
    lw      v1, 0x0078($sp)
    lw      a0, 0x0070($sp)
    lw      a1, 0x0074($sp)
    bne     v0, $zero, lbl_800A7210
    lwc1    $f12, 0x0088($sp)
    beq     $zero, $zero, lbl_800A74A8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7210:
    lwc1    $f6, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x007C($sp)
    mul.s   $f16, $f12, $f12
    swc1    $f6, 0x0058($sp)
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0058($sp)
    swc1    $f4, 0x0054($sp)
    sub.s   $f0, $f8, $f10
    lwc1    $f8, 0x0080($sp)
    lwc1    $f6, 0x0054($sp)
    mul.s   $f4, $f0, $f0
    sub.s   $f2, $f6, $f8
    mul.s   $f6, $f2, $f2
    add.s   $f4, $f4, $f6
    c.lt.s  $f4, $f16
    nop
    bc1t    lbl_800A72C8
    nop
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f16, 0x0048($sp)
    swc1    $f6, 0x004C($sp)
    sub.s   $f12, $f18, $f10
    lwc1    $f4, 0x004C($sp)
    swc1    $f18, 0x0050($sp)
    sub.s   $f14, $f4, $f8
    mul.s   $f6, $f12, $f12
    nop
    mul.s   $f4, $f14, $f14
    add.s   $f6, $f6, $f4
    c.lt.s  $f6, $f16
    nop
    bc1t    lbl_800A72C8
    nop
    lwc1    $f4, 0x0004(v1)            # 00000004
    lwc1    $f6, 0x0008(v1)            # 00000008
    sub.s   $f16, $f4, $f10
    sub.s   $f18, $f6, $f8
    mul.s   $f4, $f16, $f16
    lwc1    $f8, 0x0048($sp)
    mul.s   $f10, $f18, $f18
    add.s   $f6, $f4, $f10
    c.lt.s  $f6, $f8
    nop
    bc1f    lbl_800A72D0
    nop
lbl_800A72C8:
    beq     $zero, $zero, lbl_800A74A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A72D0:
    mul.s   $f4, $f0, $f14
    nop
    mul.s   $f10, $f2, $f12
    sub.s   $f6, $f4, $f10
    mul.s   $f8, $f12, $f18
    nop
    mul.s   $f4, $f14, $f16
    swc1    $f6, 0x006C($sp)
    mov.s   $f12, $f6
    sub.s   $f10, $f8, $f4
    mul.s   $f8, $f16, $f2
    lwc1    $f2, 0x0084($sp)
    mul.s   $f4, $f18, $f0
    swc1    $f10, 0x0068($sp)
    c.le.s  $f6, $f2
    mov.s   $f14, $f10
    sub.s   $f8, $f8, $f4
    swc1    $f8, 0x0064($sp)
    bc1f    lbl_800A7340
    mov.s   $f16, $f8
    c.le.s  $f10, $f2
    nop
    bc1fl   lbl_800A7344
    neg.s   $f0, $f2
    c.le.s  $f8, $f2
    nop
    bc1t    lbl_800A7374
    nop
lbl_800A7340:
    neg.s   $f0, $f2
lbl_800A7344:
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_800A7380
    lwc1    $f0, 0x008C($sp)
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_800A7380
    lwc1    $f0, 0x008C($sp)
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_800A7380
    lwc1    $f0, 0x008C($sp)
lbl_800A7374:
    beq     $zero, $zero, lbl_800A74A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f0, 0x008C($sp)
lbl_800A7380:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    lwc1    $f12, 0x007C($sp)
    c.lt.s  $f4, $f0
    lwc1    $f14, 0x0080($sp)
    lw      a2, 0x0058($sp)
    lw      a3, 0x0054($sp)
    bc1f    lbl_800A74A4
    lwc1    $f6, 0x0050($sp)
    lwc1    $f10, 0x004C($sp)
    addiu   t7, $sp, 0x0060            # t7 = FFFFFFF0
    sw      t7, 0x0018($sp)
    swc1    $f6, 0x0010($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    lw      v1, 0x0078($sp)
    lw      a0, 0x0070($sp)
    beq     v0, $zero, lbl_800A73F8
    lw      a1, 0x0074($sp)
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A73FC
    lwc1    $f6, 0x0004(v1)            # 00000004
    beq     $zero, $zero, lbl_800A74A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A73F8:
    lwc1    $f6, 0x0004(v1)            # 00000004
lbl_800A73FC:
    lw      a2, 0x0004(a1)             # 00000004
    lw      a3, 0x0008(a1)             # 00000008
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0008(v1)           # 00000008
    addiu   t8, $sp, 0x0060            # t8 = FFFFFFF0
    sw      t8, 0x0018($sp)
    sw      a0, 0x0070($sp)
    lwc1    $f12, 0x007C($sp)
    lwc1    $f14, 0x0080($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    lw      v1, 0x0078($sp)
    beq     v0, $zero, lbl_800A7454
    lw      a0, 0x0070($sp)
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A7458
    lwc1    $f6, 0x0004(a0)            # 00000004
    beq     $zero, $zero, lbl_800A74A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A7454:
    lwc1    $f6, 0x0004(a0)            # 00000004
lbl_800A7458:
    lw      a2, 0x0004(v1)             # 00000004
    lw      a3, 0x0008(v1)             # 00000008
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x0008(a0)           # 00000008
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFF0
    sw      t9, 0x0018($sp)
    lwc1    $f12, 0x007C($sp)
    lwc1    $f14, 0x0080($sp)
    jal     func_800A8334
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_800A74A4
    lwc1    $f8, 0x0060($sp)
    lwc1    $f4, 0x0048($sp)
    c.lt.s  $f8, $f4
    nop
    bc1fl   lbl_800A74A8
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A74A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A74A4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A74A8:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_800A74B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    lwc1    $f10, 0x0040($sp)
    mfc1    a3, $f12
    swc1    $f4, 0x0010($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800A719C
    swc1    $f10, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7500:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7174($at)          # 80108E8C
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0044($sp)
    lwc1    $f6, 0x0048($sp)
    bc1fl   lbl_800A753C
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A75A4
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A753C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f12, 0x0034($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A719C
    swc1    $f10, 0x0018($sp)
    beq     v0, $zero, lbl_800A75A0
    lwc1    $f12, 0x0034($sp)
    lwc1    $f16, 0x0038($sp)
    lwc1    $f4, 0x0044($sp)
    lwc1    $f8, 0x003C($sp)
    neg.s   $f18, $f16
    lwc1    $f10, 0x0048($sp)
    mul.s   $f6, $f18, $f4
    lwc1    $f4, 0x0040($sp)
    lw      t6, 0x004C($sp)
    mul.s   $f16, $f8, $f10
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f6, $f16
    sub.s   $f8, $f18, $f4
    div.s   $f10, $f8, $f12
    beq     $zero, $zero, lbl_800A75A4
    swc1    $f10, 0x0000(t6)           # 00000000
lbl_800A75A0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A75A4:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A75B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7170($at)          # 80108E90
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A75F0
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A7620
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A75F0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A719C
    swc1    $f10, 0x0018($sp)
    beql    v0, $zero, lbl_800A7620
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A7620
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7620:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7630:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sdc1    $f20, 0x0020($sp)
    mtc1    a3, $f20                   # $f20 = 0.00
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x716C($at)          # 80108E94
    abs.s   $f0, $f20
    lui     t6, 0x8012                 # t6 = 80120000
    c.lt.s  $f0, $f4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x0060($sp)
    addiu   t6, t6, 0x1070             # t6 = 80121070
    bc1fl   lbl_800A7680
    lwc1    $f8, 0x0054($sp)
    beq     $zero, $zero, lbl_800A77A4
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0054($sp)
lbl_800A7680:
    lwc1    $f10, 0x0058($sp)
    swc1    $f6, 0x1070($at)           # 80121070
    swc1    $f8, 0x1074($at)           # 80121074
    lui     $at, 0x8012                # $at = 80120000
    mov.s   $f12, $f20
    lwc1    $f14, 0x0048($sp)
    lw      a2, 0x004C($sp)
    lw      a3, 0x0050($sp)
    sw      t6, 0x0010($sp)
    jal     func_800A68F0
    swc1    $f10, 0x1078($at)          # 80121078
    lwc1    $f16, 0x0064($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    addiu   t7, t7, 0x1070             # t7 = 80121070
    sw      t7, 0x0010($sp)
    mov.s   $f12, $f20
    lwc1    $f14, 0x0048($sp)
    lw      a2, 0x004C($sp)
    lw      a3, 0x0050($sp)
    swc1    $f0, 0x0034($sp)
    jal     func_800A68F0
    swc1    $f16, 0x1070($at)          # 80121070
    lwc1    $f2, 0x0034($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800A770C
    c.lt.s  $f2, $f12
    c.lt.s  $f12, $f0
    nop
    bc1t    lbl_800A7730
    nop
    c.lt.s  $f2, $f12
lbl_800A770C:
    lw      a0, 0x0038($sp)
    lw      a1, 0x003C($sp)
    lw      a2, 0x0040($sp)
    bc1f    lbl_800A7738
    lw      a3, 0x0054($sp)
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_800A773C
    lui     $at, 0x4396                # $at = 43960000
lbl_800A7730:
    beq     $zero, $zero, lbl_800A77A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7738:
    lui     $at, 0x4396                # $at = 43960000
lbl_800A773C:
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x0058($sp)
    swc1    $f20, 0x001C($sp)
    swc1    $f4, 0x0014($sp)
    swc1    $f18, 0x0010($sp)
    jal     func_800A719C
    swc1    $f6, 0x0018($sp)
    beq     v0, $zero, lbl_800A77A0
    lwc1    $f8, 0x0048($sp)
    lwc1    $f16, 0x0054($sp)
    neg.s   $f10, $f8
    lwc1    $f4, 0x004C($sp)
    mul.s   $f18, $f10, $f16
    lwc1    $f6, 0x0058($sp)
    lwc1    $f16, 0x0050($sp)
    lw      t8, 0x005C($sp)
    mul.s   $f8, $f4, $f6
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f10, $f18, $f8
    sub.s   $f4, $f10, $f16
    div.s   $f6, $f4, $f20
    beq     $zero, $zero, lbl_800A77A4
    swc1    $f6, 0x0000(t8)            # 00000000
lbl_800A77A0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A77A4:
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_800A77B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lwc1    $f2, 0x0000(a3)            # 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7168($at)          # 80108E98
    abs.s   $f0, $f2
    lw      a3, 0x0038($sp)
    c.lt.s  $f0, $f4
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A77F0
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_800A781C
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_800A77F0:
    lwc1    $f10, 0x0040($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f2, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_800A719C
    swc1    $f8, 0x0014($sp)
    beql    v0, $zero, lbl_800A781C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A781C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A781C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A782C:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sdc1    $f20, 0x0028($sp)
    sdc1    $f22, 0x0030($sp)
    mtc1    a3, $f20                   # $f20 = 0.00
    lwc1    $f22, 0x0098($sp)
    sw      $ra, 0x003C($sp)
    sw      a2, 0x0090($sp)
    lw      t6, 0x0090($sp)
    lwc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f14, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0000(t6)            # 00000000
    lw      a2, 0x0000(a1)             # 00000000
    lw      a3, 0x0004(a1)             # 00000004
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0004(t6)            # 00000004
    lwc1    $f8, 0x00A0($sp)
    sw      a1, 0x008C($sp)
    sw      a0, 0x0088($sp)
    swc1    $f22, 0x001C($sp)
    swc1    $f20, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800A50D0
    swc1    $f8, 0x0020($sp)
    lw      v1, 0x0090($sp)
    lw      a0, 0x0088($sp)
    lw      a1, 0x008C($sp)
    bne     v0, $zero, lbl_800A78A4
    lwc1    $f18, 0x00A0($sp)
    beq     $zero, $zero, lbl_800A7B60
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A78A4:
    lwc1    $f14, 0x0000(a0)           # 00000000
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f12, $f18, $f18
    sub.s   $f0, $f20, $f14
    sub.s   $f2, $f22, $f16
    mul.s   $f10, $f0, $f0
    nop
    mul.s   $f4, $f2, $f2
    add.s   $f6, $f10, $f4
    c.lt.s  $f6, $f12
    nop
    bc1t    lbl_800A795C
    nop
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f18, 0x0000(a1)           # 00000000
    swc1    $f16, 0x006C($sp)
    swc1    $f8, 0x0064($sp)
    sub.s   $f0, $f20, $f18
    lwc1    $f10, 0x0064($sp)
    swc1    $f14, 0x0070($sp)
    sub.s   $f2, $f22, $f10
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    c.lt.s  $f8, $f12
    nop
    bc1t    lbl_800A795C
    nop
    lwc1    $f14, 0x0000(v1)           # 00000000
    lwc1    $f16, 0x0004(v1)           # 00000004
    swc1    $f18, 0x0068($sp)
    sub.s   $f0, $f20, $f14
    swc1    $f12, 0x0058($sp)
    lwc1    $f8, 0x0070($sp)
    sub.s   $f2, $f22, $f16
    mul.s   $f10, $f0, $f0
    swc1    $f14, 0x0060($sp)
    swc1    $f16, 0x005C($sp)
    mul.s   $f4, $f2, $f2
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x0064($sp)
    c.lt.s  $f6, $f12
    nop
    bc1fl   lbl_800A7968
    sub.s   $f0, $f8, $f20
lbl_800A795C:
    beq     $zero, $zero, lbl_800A7B60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f0, $f8, $f20
lbl_800A7968:
    lwc1    $f4, 0x006C($sp)
    lwc1    $f6, 0x0068($sp)
    sub.s   $f2, $f10, $f22
    sub.s   $f12, $f4, $f22
    mul.s   $f8, $f0, $f2
    sub.s   $f14, $f6, $f20
    lwc1    $f6, 0x005C($sp)
    mul.s   $f10, $f12, $f14
    sub.s   $f16, $f6, $f22
    sub.s   $f4, $f8, $f10
    lwc1    $f8, 0x0060($sp)
    mul.s   $f10, $f14, $f16
    sub.s   $f18, $f8, $f20
    swc1    $f4, 0x0084($sp)
    mul.s   $f6, $f2, $f18
    lwc1    $f2, 0x009C($sp)
    c.le.s  $f4, $f2
    sub.s   $f8, $f10, $f6
    mul.s   $f10, $f18, $f12
    mov.s   $f12, $f4
    mul.s   $f6, $f16, $f0
    swc1    $f8, 0x0080($sp)
    mov.s   $f14, $f8
    sub.s   $f10, $f10, $f6
    swc1    $f10, 0x007C($sp)
    bc1f    lbl_800A79F4
    mov.s   $f16, $f10
    c.le.s  $f8, $f2
    nop
    bc1fl   lbl_800A79F8
    neg.s   $f0, $f2
    c.le.s  $f10, $f2
    nop
    bc1t    lbl_800A7A28
    nop
lbl_800A79F4:
    neg.s   $f0, $f2
lbl_800A79F8:
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_800A7A34
    lwc1    $f0, 0x00A4($sp)
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_800A7A34
    lwc1    $f0, 0x00A4($sp)
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_800A7A34
    lwc1    $f0, 0x00A4($sp)
lbl_800A7A28:
    beq     $zero, $zero, lbl_800A7B60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f0, 0x00A4($sp)
lbl_800A7A34:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    abs.s   $f0, $f0
    lw      a2, 0x0070($sp)
    c.lt.s  $f6, $f0
    lw      a3, 0x006C($sp)
    lwc1    $f4, 0x0068($sp)
    addiu   t7, $sp, 0x0078            # t7 = FFFFFFF0
    bc1fl   lbl_800A7B60
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0064($sp)
    mov.s   $f12, $f20
    mov.s   $f14, $f22
    swc1    $f4, 0x0010($sp)
    sw      t7, 0x0018($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    jal     func_800A8334
    swc1    $f8, 0x0014($sp)
    lw      v1, 0x0090($sp)
    lw      a0, 0x0088($sp)
    beq     v0, $zero, lbl_800A7AB0
    lw      a1, 0x008C($sp)
    lwc1    $f10, 0x0078($sp)
    lwc1    $f6, 0x0058($sp)
    c.lt.s  $f10, $f6
    nop
    bc1fl   lbl_800A7AB4
    lwc1    $f4, 0x0000(v1)            # 00000000
    beq     $zero, $zero, lbl_800A7B60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A7AB0:
    lwc1    $f4, 0x0000(v1)            # 00000000
lbl_800A7AB4:
    lw      a2, 0x0000(a1)             # 00000000
    lw      a3, 0x0004(a1)             # 00000004
    swc1    $f4, 0x0010($sp)
    lwc1    $f8, 0x0004(v1)            # 00000004
    addiu   t8, $sp, 0x0078            # t8 = FFFFFFF0
    sw      t8, 0x0018($sp)
    sw      a0, 0x0088($sp)
    mov.s   $f12, $f20
    mov.s   $f14, $f22
    jal     func_800A8334
    swc1    $f8, 0x0014($sp)
    lw      v1, 0x0090($sp)
    beq     v0, $zero, lbl_800A7B0C
    lw      a0, 0x0088($sp)
    lwc1    $f10, 0x0078($sp)
    lwc1    $f6, 0x0058($sp)
    c.lt.s  $f10, $f6
    nop
    bc1fl   lbl_800A7B10
    lwc1    $f4, 0x0000(a0)            # 00000000
    beq     $zero, $zero, lbl_800A7B60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A7B0C:
    lwc1    $f4, 0x0000(a0)            # 00000000
lbl_800A7B10:
    lw      a2, 0x0000(v1)             # 00000000
    lw      a3, 0x0004(v1)             # 00000004
    swc1    $f4, 0x0010($sp)
    lwc1    $f8, 0x0004(a0)            # 00000004
    addiu   t9, $sp, 0x0078            # t9 = FFFFFFF0
    sw      t9, 0x0018($sp)
    mov.s   $f12, $f20
    mov.s   $f14, $f22
    jal     func_800A8334
    swc1    $f8, 0x0014($sp)
    beq     v0, $zero, lbl_800A7B5C
    lwc1    $f10, 0x0078($sp)
    lwc1    $f6, 0x0058($sp)
    c.lt.s  $f10, $f6
    nop
    bc1fl   lbl_800A7B60
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A7B60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A7B5C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7B60:
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_800A7B74:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    lwc1    $f10, 0x0040($sp)
    mfc1    a3, $f12
    swc1    $f4, 0x0010($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800A782C
    swc1    $f10, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7BBC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f12, 0x003C($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7164($at)          # 80108E9C
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0044($sp)
    lwc1    $f6, 0x0048($sp)
    bc1fl   lbl_800A7BFC
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A7C60
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A7BFC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A782C
    swc1    $f10, 0x0018($sp)
    beq     v0, $zero, lbl_800A7C5C
    lwc1    $f16, 0x0034($sp)
    lwc1    $f4, 0x0044($sp)
    neg.s   $f18, $f16
    lwc1    $f8, 0x0038($sp)
    mul.s   $f6, $f18, $f4
    lwc1    $f10, 0x0048($sp)
    lwc1    $f4, 0x0040($sp)
    lw      t6, 0x004C($sp)
    mul.s   $f16, $f8, $f10
    lwc1    $f10, 0x003C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f6, $f16
    sub.s   $f8, $f18, $f4
    div.s   $f6, $f8, $f10
    beq     $zero, $zero, lbl_800A7C60
    swc1    $f6, 0x0000(t6)            # 00000000
lbl_800A7C5C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7C60:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7C70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7160($at)          # 80108EA0
    abs.s   $f0, $f12
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f0, $f4
    lw      a3, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A7CAC
    mtc1    $at, $f8                   # $f8 = 300.00
    beq     $zero, $zero, lbl_800A7CDC
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 300.00
lbl_800A7CAC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f6, 0x0010($sp)
    swc1    $f12, 0x001C($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800A782C
    swc1    $f10, 0x0018($sp)
    beql    v0, $zero, lbl_800A7CDC
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A7CDC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7CDC:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7CEC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lwc1    $f0, 0x0044($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x715C($at)          # 80108EA4
    abs.s   $f0, $f0
    lui     t6, 0x8012                 # t6 = 80120000
    c.lt.s  $f0, $f4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x004C($sp)
    addiu   t6, t6, 0x1080             # t6 = 80121080
    bc1fl   lbl_800A7D3C
    lwc1    $f8, 0x0050($sp)
    beq     $zero, $zero, lbl_800A7E68
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0050($sp)
lbl_800A7D3C:
    lwc1    $f10, 0x0058($sp)
    swc1    $f6, 0x1080($at)           # 80121080
    swc1    $f8, 0x1084($at)           # 80121084
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f12, 0x003C($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x0044($sp)
    lw      a3, 0x0048($sp)
    sw      t6, 0x0010($sp)
    jal     func_800A68F0
    swc1    $f10, 0x1088($at)          # 80121088
    lwc1    $f16, 0x005C($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    addiu   t7, t7, 0x1080             # t7 = 80121080
    sw      t7, 0x0010($sp)
    lwc1    $f12, 0x003C($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x0044($sp)
    lw      a3, 0x0048($sp)
    swc1    $f0, 0x002C($sp)
    jal     func_800A68F0
    swc1    $f16, 0x1088($at)          # 80121088
    lwc1    $f2, 0x002C($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800A7DC8
    c.lt.s  $f2, $f12
    c.lt.s  $f12, $f0
    nop
    bc1t    lbl_800A7DEC
    nop
    c.lt.s  $f2, $f12
lbl_800A7DC8:
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x0038($sp)
    bc1f    lbl_800A7DF4
    lw      a3, 0x004C($sp)
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_800A7DF8
    lui     $at, 0x4396                # $at = 43960000
lbl_800A7DEC:
    beq     $zero, $zero, lbl_800A7E68
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7DF4:
    lui     $at, 0x4396                # $at = 43960000
lbl_800A7DF8:
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x0050($sp)
    lwc1    $f8, 0x0044($sp)
    swc1    $f4, 0x0014($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800A782C
    swc1    $f8, 0x001C($sp)
    beq     v0, $zero, lbl_800A7E64
    lwc1    $f10, 0x003C($sp)
    lwc1    $f18, 0x004C($sp)
    neg.s   $f16, $f10
    lwc1    $f6, 0x0040($sp)
    mul.s   $f4, $f16, $f18
    lwc1    $f8, 0x0050($sp)
    lwc1    $f18, 0x0048($sp)
    lw      t8, 0x0054($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f8, 0x0044($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f16, $f4, $f10
    sub.s   $f6, $f16, $f18
    div.s   $f4, $f6, $f8
    beq     $zero, $zero, lbl_800A7E68
    swc1    $f4, 0x0000(t8)            # 00000000
lbl_800A7E64:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7E68:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800A7E78:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lwc1    $f2, 0x0008(a3)            # 00000008
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7158($at)          # 80108EA8
    abs.s   $f0, $f2
    lw      a3, 0x0038($sp)
    c.lt.s  $f0, $f4
    lwc1    $f6, 0x003C($sp)
    bc1fl   lbl_800A7EB0
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_800A7EDC
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_800A7EB0:
    lwc1    $f10, 0x0040($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f2, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_800A782C
    swc1    $f8, 0x0014($sp)
    beql    v0, $zero, lbl_800A7EDC
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A7EDC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A7EDC:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A7EEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    sub.s   $f2, $f12, $f14
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7154($at)          # 80108EAC
    lw      t6, 0x0028($sp)
    abs.s   $f0, $f2
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_800A7F44
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t8, 0x0000(a1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(a1)             # 00000004
    sw      t7, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(a1)             # 00000008
    beq     $zero, $zero, lbl_800A7FB8
    sw      t8, 0x0008(t6)             # 00000008
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800A7F44:
    lw      t9, 0x0028($sp)
    c.eq.s  $f12, $f0
    nop
    bc1fl   lbl_800A7F78
    c.eq.s  $f14, $f0
    lw      t1, 0x0000(a0)             # 00000000
    sw      t1, 0x0000(t9)             # 00000000
    lw      t0, 0x0004(a0)             # 00000004
    sw      t0, 0x0004(t9)             # 00000004
    lw      t1, 0x0008(a0)             # 00000008
    beq     $zero, $zero, lbl_800A7FB4
    sw      t1, 0x0008(t9)             # 00000008
    c.eq.s  $f14, $f0
lbl_800A7F78:
    lw      t2, 0x0028($sp)
    bc1fl   lbl_800A7FA4
    div.s   $f6, $f12, $f2
    lw      t4, 0x0000(a1)             # 00000000
    sw      t4, 0x0000(t2)             # 00000000
    lw      t3, 0x0004(a1)             # 00000004
    sw      t3, 0x0004(t2)             # 00000004
    lw      t4, 0x0008(a1)             # 00000008
    beq     $zero, $zero, lbl_800A7FB4
    sw      t4, 0x0008(t2)             # 00000008
    div.s   $f6, $f12, $f2
lbl_800A7FA4:
    lw      a3, 0x0028($sp)
    mfc1    a2, $f6
    jal     func_800A4E70
    nop
lbl_800A7FB4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A7FB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A7FC8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    swc1    $f12, 0x0028($sp)
    swc1    $f14, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t6, 0x0038($sp)
    lwc1    $f12, 0x0028($sp)
    lwc1    $f14, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    jal     func_800A68F0
    sw      t6, 0x0010($sp)
    lw      a0, 0x003C($sp)
    swc1    $f0, 0x0024($sp)
    lwc1    $f12, 0x0028($sp)
    lwc1    $f14, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    jal     func_800A68F0
    sw      a0, 0x0010($sp)
    lwc1    $f12, 0x0024($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      a0, 0x003C($sp)
    mul.s   $f4, $f12, $f0
    mov.s   $f14, $f0
    lw      t7, 0x0040($sp)
    lw      t0, 0x0044($sp)
    c.lt.s  $f2, $f4
    nop
    bc1f    lbl_800A8068
    nop
    lw      t9, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t9, 0x0000(t7)             # 00000000
    lw      t8, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(t7)             # 00000004
    lw      t9, 0x0008(a0)             # 00000008
    beq     $zero, $zero, lbl_800A80C0
    sw      t9, 0x0008(t7)             # 00000008
lbl_800A8068:
    beq     t0, $zero, lbl_800A80B0
    lw      a2, 0x0038($sp)
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800A80B4
    lw      t4, 0x0040($sp)
    c.lt.s  $f2, $f0
    lw      t1, 0x0040($sp)
    bc1fl   lbl_800A80B4
    lw      t4, 0x0040($sp)
    lw      t3, 0x0000(a0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t3, 0x0000(t1)             # 00000000
    lw      t2, 0x0004(a0)             # 00000004
    sw      t2, 0x0004(t1)             # 00000004
    lw      t3, 0x0008(a0)             # 00000008
    beq     $zero, $zero, lbl_800A80C0
    sw      t3, 0x0008(t1)             # 00000008
lbl_800A80B0:
    lw      t4, 0x0040($sp)
lbl_800A80B4:
    or      a3, a0, $zero              # a3 = 00000000
    jal     func_800A7EEC
    sw      t4, 0x0010($sp)
lbl_800A80C0:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A80D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    lw      s0, 0x0054($sp)
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x004C($sp)
    lw      t7, 0x0050($sp)
    lw      t8, 0x0058($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x0044($sp)
    lw      a3, 0x0048($sp)
    sw      s0, 0x0018($sp)
    swc1    $f12, 0x003C($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_800A7FC8
    sw      t8, 0x001C($sp)
    bne     v0, $zero, lbl_800A8130
    lwc1    $f12, 0x003C($sp)
    beq     $zero, $zero, lbl_800A8220
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A8130:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a0, 0x0030($sp)
    c.eq.s  $f12, $f4
    nop
    bc1tl   lbl_800A8174
    lwc1    $f0, 0x0040($sp)
    lwc1    $f6, 0x0004(s0)            # 00000004
    mfc1    a3, $f12
    lw      a1, 0x0034($sp)
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0008(s0)            # 00000008
    lw      a2, 0x0038($sp)
    jal     func_800A75B4
    swc1    $f8, 0x0014($sp)
    beql    v0, $zero, lbl_800A8204
    lw      t9, 0x0050($sp)
    lwc1    $f0, 0x0040($sp)
lbl_800A8174:
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a0, 0x0030($sp)
    c.eq.s  $f0, $f10
    nop
    bc1tl   lbl_800A81B8
    lwc1    $f0, 0x0044($sp)
    lwc1    $f16, 0x0008(s0)           # 00000008
    mfc1    a3, $f0
    lw      a1, 0x0034($sp)
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0000(s0)           # 00000000
    lw      a2, 0x0038($sp)
    jal     func_800A6F38
    swc1    $f18, 0x0014($sp)
    beql    v0, $zero, lbl_800A8204
    lw      t9, 0x0050($sp)
    lwc1    $f0, 0x0044($sp)
lbl_800A81B8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a0, 0x0030($sp)
    c.eq.s  $f0, $f4
    nop
    bc1t    lbl_800A81F8
    nop
    lwc1    $f6, 0x0000(s0)            # 00000000
    mfc1    a3, $f0
    lw      a1, 0x0034($sp)
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0004(s0)            # 00000004
    lw      a2, 0x0038($sp)
    jal     func_800A7C70
    swc1    $f8, 0x0014($sp)
    beql    v0, $zero, lbl_800A8204
    lw      t9, 0x0050($sp)
lbl_800A81F8:
    beq     $zero, $zero, lbl_800A8220
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t9, 0x0050($sp)
lbl_800A8204:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0000(s0)             # 00000000
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0004(s0)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(s0)             # 00000008
lbl_800A8220:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800A8234:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      t6, 0x0034($sp)
    addiu   t5, s0, 0x0028             # t5 = 00000028
    addiu   a3, s0, 0x0024             # a3 = 00000024
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(s0)             # 00000000
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(s0)             # 00000004
    lw      t8, 0x0008(t6)             # 00000008
    addiu   t6, s0, 0x002C             # t6 = 0000002C
    addiu   t7, s0, 0x0030             # t7 = 00000030
    sw      t8, 0x0008(s0)             # 00000008
    lw      t9, 0x0038($sp)
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x000C(s0)             # 0000000C
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0010(s0)             # 00000010
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0014(s0)             # 00000014
    lw      t2, 0x003C($sp)
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0018(s0)             # 00000018
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x001C(s0)             # 0000001C
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0020(s0)             # 00000020
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      a2, 0x003C($sp)
    lw      a1, 0x0038($sp)
    jal     func_800A67DC
    lw      a0, 0x0034($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_800A82E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800A5580
    lw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x0006(t6)             # 00000006
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_800A832C
    nop
    beq     $zero, $zero, lbl_800A832C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A832C:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800A8334:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    swc1    $f12, 0x0028($sp)
    swc1    $f14, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f8, 0x003C($sp)
    lwc1    $f10, 0x0034($sp)
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x0030($sp)
    sub.s   $f18, $f8, $f10
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7150($at)         # 80108EB0
    sub.s   $f2, $f4, $f6
    mul.s   $f6, $f18, $f18
    or      v1, $zero, $zero           # v1 = 00000000
    swc1    $f18, 0x0008($sp)
    mul.s   $f8, $f2, $f2
    swc1    $f2, 0x0020($sp)
    lw      t6, 0x0040($sp)
    add.s   $f16, $f8, $f6
    lwc1    $f6, 0x0030($sp)
    lwc1    $f8, 0x0028($sp)
    abs.s   $f0, $f16
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800A83B4
    sub.s   $f10, $f8, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800A8474
    swc1    $f4, 0x0000(t6)            # 00000000
    sub.s   $f10, $f8, $f6
lbl_800A83B4:
    lwc1    $f8, 0x0034($sp)
    lwc1    $f4, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f10, 0x0008($sp)
    sub.s   $f6, $f4, $f8
    lwc1    $f8, 0x0020($sp)
    mul.s   $f4, $f6, $f18
    nop
    mul.s   $f6, $f10, $f8
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f4, 0x0004($sp)
    add.s   $f10, $f6, $f4
    lwc1    $f4, 0x0008($sp)
    div.s   $f0, $f10, $f16
    mul.s   $f10, $f4, $f2
    c.le.s  $f8, $f0
    lwc1    $f8, 0x0004($sp)
    bc1f    lbl_800A841C
    nop
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_800A8420
    add.s   $f6, $f10, $f8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800A841C:
    add.s   $f6, $f10, $f8
lbl_800A8420:
    lwc1    $f10, 0x0030($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      t7, 0x0040($sp)
    div.s   $f14, $f6, $f16
    or      v0, v1, $zero              # v0 = 00000001
    mul.s   $f4, $f2, $f14
    add.s   $f8, $f4, $f10
    mul.s   $f6, $f18, $f14
    lwc1    $f4, 0x0034($sp)
    swc1    $f8, 0x10C0($at)           # 801210C0
    add.s   $f10, $f6, $f4
    lwc1    $f6, 0x0028($sp)
    lwc1    $f4, 0x002C($sp)
    sub.s   $f0, $f8, $f6
    swc1    $f10, 0x10C4($at)          # 801210C4
    sub.s   $f12, $f10, $f4
    mul.s   $f8, $f0, $f0
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f10, $f8, $f6
    swc1    $f10, 0x0000(t7)           # 00000000
lbl_800A8474:
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800A847C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    sw      a0, 0x0058($sp)
    jal     func_800A82E4
    sw      a2, 0x005C($sp)
    lw      a0, 0x0058($sp)
    bne     v0, $zero, lbl_800A84C8
    lw      a2, 0x005C($sp)
    addiu   a1, a2, 0x000C             # a1 = 0000000C
    sw      a0, 0x0058($sp)
    jal     func_800A82E4
    sw      a2, 0x005C($sp)
    lw      a0, 0x0058($sp)
    beq     v0, $zero, lbl_800A84D0
    lw      a2, 0x005C($sp)
lbl_800A84C8:
    beq     $zero, $zero, lbl_800A8670
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A84D0:
    lwc1    $f12, 0x0000(a2)           # 00000000
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lwc1    $f14, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0010(a2)            # 00000010
    sub.s   $f18, $f4, $f12
    lwc1    $f16, 0x0008(a2)           # 00000008
    lwc1    $f8, 0x0014(a2)            # 00000014
    sub.s   $f20, $f6, $f14
    mul.s   $f10, $f18, $f18
    lui     $at, 0x8011                # $at = 80110000
    sub.s   $f22, $f8, $f16
    mul.s   $f4, $f20, $f20
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f8, $f22, $f22
    add.s   $f6, $f10, $f4
    lwc1    $f10, -0x714C($at)         # 80108EB4
    add.s   $f2, $f6, $f8
    abs.s   $f0, $f2
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800A8534
    lh      t6, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800A8674
    lw      $ra, 0x0024($sp)
    lh      t6, 0x0000(a0)             # 00000000
lbl_800A8534:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0030($sp)
    lh      t7, 0x0002(a0)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    lwc1    $f8, 0x0030($sp)
    swc1    $f10, 0x002C($sp)
    lh      t8, 0x0004(a0)             # 00000004
    sub.s   $f10, $f8, $f12
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f4, $f10, $f18
    swc1    $f6, 0x0028($sp)
    lwc1    $f6, 0x002C($sp)
    sub.s   $f8, $f6, $f14
    mul.s   $f10, $f8, $f20
    lwc1    $f8, 0x0028($sp)
    add.s   $f6, $f4, $f10
    sub.s   $f4, $f8, $f16
    mul.s   $f10, $f4, $f22
    mtc1    $zero, $f4                 # $f4 = 0.00
    add.s   $f8, $f6, $f10
    div.s   $f0, $f8, $f2
    c.lt.s  $f0, $f4
    nop
    bc1t    lbl_800A85D0
    nop
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f12, 0x0040($sp)
    swc1    $f14, 0x003C($sp)
    c.lt.s  $f6, $f0
    swc1    $f16, 0x0038($sp)
    bc1f    lbl_800A85D8
    nop
lbl_800A85D0:
    beq     $zero, $zero, lbl_800A8670
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A85D8:
    mul.s   $f10, $f18, $f0
    lwc1    $f8, 0x0040($sp)
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f6, $f20, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f4, $f10, $f8
    lwc1    $f10, 0x003C($sp)
    add.s   $f8, $f6, $f10
    mul.s   $f6, $f22, $f0
    lwc1    $f10, 0x0038($sp)
    swc1    $f4, 0x10E8($at)           # 801210E8
    swc1    $f8, 0x10EC($at)           # 801210EC
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f6, $f10
    swc1    $f6, 0x10F0($at)           # 801210F0
    lh      t9, 0x0006(a0)             # 00000006
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f2, $f10
    lwc1    $f10, 0x0030($sp)
    sub.s   $f12, $f4, $f10
    lwc1    $f4, 0x002C($sp)
    lwc1    $f10, 0x0028($sp)
    sub.s   $f14, $f8, $f4
    mul.s   $f8, $f2, $f2
    sub.s   $f16, $f6, $f10
    mul.s   $f4, $f12, $f12
    nop
    mul.s   $f6, $f14, $f14
    add.s   $f10, $f4, $f6
    mul.s   $f4, $f16, $f16
    add.s   $f6, $f10, $f4
    c.le.s  $f6, $f8
    nop
    bc1f    lbl_800A8670
    nop
    beq     $zero, $zero, lbl_800A8670
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8670:
    lw      $ra, 0x0024($sp)
lbl_800A8674:
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_800A8684:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lwc1    $f6, 0x0000(a3)            # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lw      t6, 0x0018($sp)
    add.s   $f8, $f4, $f6
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1108             # a1 = 80121108
    mul.s   $f10, $f8, $f0
    addiu   a0, a0, 0x10F8             # a0 = 801210F8
    swc1    $f10, 0x10F8($at)          # 801210F8
    lwc1    $f18, 0x0004(a3)           # 00000004
    lwc1    $f16, 0x0010(a3)           # 00000010
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x10FC($at)           # 801210FC
    lwc1    $f10, 0x0008(a3)           # 00000008
    lwc1    $f8, 0x0014(a3)            # 00000014
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x1100($at)          # 80121100
    lh      t7, 0x0000(t6)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1108($at)           # 80121108
    lh      t8, 0x0002(t6)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x110C($at)          # 8012110C
    lh      t9, 0x0004(t6)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_800A5560
    swc1    $f18, 0x1110($at)          # 80121110
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7148($at)          # 80108EB8
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    lw      a3, 0x0020($sp)
    c.lt.s  $f0, $f4
    lui     $at, 0x8012                # $at = 80120000
    lw      t0, 0x0018($sp)
    bc1fl   lbl_800A878C
    lh      t1, 0x0006(t0)             # 00000006
    lwc1    $f6, 0x1108($at)           # 80121108
    swc1    $f6, 0x0000(a3)            # 00000000
    lwc1    $f8, 0x110C($at)           # 8012110C
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f8, 0x0004(a3)            # 00000004
    lwc1    $f10, 0x1110($at)          # 80121110
    beq     $zero, $zero, lbl_800A87B4
    swc1    $f10, 0x0008(a3)           # 00000008
    lh      t1, 0x0006(t0)             # 00000006
lbl_800A878C:
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    mtc1    t1, $f16                   # $f16 = 0.00
    addiu   a1, a1, 0x10F8             # a1 = 801210F8
    addiu   a0, a0, 0x1108             # a0 = 80121108
    cvt.s.w $f18, $f16
    div.s   $f0, $f18, $f2
    mfc1    a2, $f0
    jal     func_800A4E70
    nop
lbl_800A87B4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A87C4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0058($sp)
    lh      t6, 0x0000(s1)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, s0, 0x000C             # a1 = 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a2, s0, 0x0018             # a2 = 00000018
    lui     a3, 0x8012                 # a3 = 80120000
    cvt.s.w $f6, $f4
    addiu   a3, a3, 0x1130             # a3 = 80121130
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x1130($at)           # 80121130
    lh      t7, 0x0002(s1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1134($at)          # 80121134
    lh      t8, 0x0004(s1)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1138($at)           # 80121138
    lh      t9, 0x0006(s1)             # 00000006
    sw      a2, 0x0034($sp)
    sw      a1, 0x0038($sp)
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8
    swc1    $f0, 0x0010($sp)
    jal     func_800A5210
    swc1    $f0, 0x004C($sp)
    bne     v0, $zero, lbl_800A8868
    lui     t0, 0x8012                 # t0 = 80120000
    beq     $zero, $zero, lbl_800A8BD0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A8868:
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0028(s0)           # 00000028
    lw      a2, 0x002C(s0)             # 0000002C
    lw      a3, 0x0030(s0)             # 00000030
    addiu   t0, t0, 0x1130             # t0 = 80121130
    jal     func_800A696C
    sw      t0, 0x0010($sp)
    lwc1    $f10, 0x004C($sp)
    swc1    $f0, 0x003C($sp)
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_800A88A8
    lw      t2, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800A8BD0
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t2, 0x0000(s0)             # 00000000
lbl_800A88A8:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x1118             # a1 = 80121118
    sw      t2, 0x0000(a1)             # 80121118
    lw      t1, 0x0004(s0)             # 00000004
    lw      t4, 0x0038($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    sw      t1, 0x0004(a1)             # 8012111C
    lw      t2, 0x0008(s0)             # 00000008
    addiu   t3, t3, 0x1124             # t3 = 80121124
    or      a0, s1, $zero              # a0 = 00000000
    sw      t2, 0x0008(a1)             # 80121120
    lw      t6, 0x0000(t4)             # 00000000
    sw      t6, 0x0000(t3)             # 80121124
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(t3)             # 80121128
    lw      t6, 0x0008(t4)             # 00000008
    jal     func_800A847C
    sw      t6, 0x0008(t3)             # 8012112C
    lui     a1, 0x8012                 # a1 = 80120000
    beq     v0, $zero, lbl_800A8914
    addiu   a1, a1, 0x1118             # a1 = 80121118
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8914:
    lw      t7, 0x0038($sp)
    lw      t1, 0x0034($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t9, 0x0000(t7)             # 00000000
    addiu   t0, t0, 0x1124             # t0 = 80121124
    or      a0, s1, $zero              # a0 = 00000000
    sw      t9, 0x0000(a1)             # 00000000
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(a1)             # 00000004
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(a1)             # 00000008
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0000(t0)             # 80121124
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0004(t0)             # 80121128
    lw      t3, 0x0008(t1)             # 00000008
    jal     func_800A847C
    sw      t3, 0x0008(t0)             # 8012112C
    lui     a1, 0x8012                 # a1 = 80120000
    beq     v0, $zero, lbl_800A8980
    addiu   a1, a1, 0x1118             # a1 = 80121118
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8980:
    lw      t4, 0x0034($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0x1124             # t7 = 80121124
    lw      t6, 0x0000(t4)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    sw      t6, 0x0000(a1)             # 00000000
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(a1)             # 00000004
    lw      t6, 0x0008(t4)             # 00000008
    sw      t6, 0x0008(a1)             # 00000008
    lw      t9, 0x0000(s0)             # 00000000
    sw      t9, 0x0000(t7)             # 80121124
    lw      t8, 0x0004(s0)             # 00000004
    sw      t8, 0x0004(t7)             # 80121128
    lw      t9, 0x0008(s0)             # 00000008
    jal     func_800A847C
    sw      t9, 0x0008(t7)             # 8012112C
    beq     v0, $zero, lbl_800A89E4
    lwc1    $f4, 0x003C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A89E4:
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x002C(s0)            # 0000002C
    mul.s   $f2, $f12, $f4
    lw      a3, 0x0030(s0)             # 00000030
    lui     t0, 0x8012                 # t0 = 80120000
    mul.s   $f16, $f14, $f4
    addiu   t0, t0, 0x1130             # t0 = 80121130
    mfc1    a2, $f0
    mul.s   $f18, $f0, $f4
    sw      t0, 0x0010($sp)
    swc1    $f2, 0x0048($sp)
    swc1    $f16, 0x0044($sp)
    jal     func_800A68F0
    swc1    $f18, 0x0040($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f2, 0x0048($sp)
    lwc1    $f16, 0x0044($sp)
    c.lt.s  $f6, $f0
    lwc1    $f18, 0x0040($sp)
    lui     $at, 0x8012                # $at = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_800A8A84
    lui     a3, 0x8012                 # a3 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x1130($at)           # 80121130
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f10, $f8, $f2
    swc1    $f10, 0x1140($at)          # 80121140
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x1134($at)           # 80121134
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f6, $f4, $f16
    swc1    $f6, 0x1144($at)           # 80121144
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x1138($at)           # 80121138
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f10, $f8, $f18
    beq     $zero, $zero, lbl_800A8ABC
    swc1    $f10, 0x1148($at)          # 80121148
lbl_800A8A84:
    lwc1    $f4, 0x1130($at)           # 80121130
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f4, $f2
    swc1    $f6, 0x1140($at)           # 80121140
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x1134($at)           # 80121134
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f10, $f8, $f16
    swc1    $f10, 0x1144($at)          # 80121144
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x1138($at)           # 80121138
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f4, $f18
    swc1    $f6, 0x1148($at)           # 80121148
lbl_800A8ABC:
    lwc1    $f14, 0x0028(s0)           # 00000028
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    abs.s   $f0, $f14
    lui     $at, 0x8012                # $at = 80120000
    c.lt.s  $f2, $f0
    lw      a1, 0x0038($sp)
    lw      a2, 0x0034($sp)
    bc1fl   lbl_800A8B20
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f8, 0x1140($at)           # 80121140
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a3, 0x1148(a3)             # 80121148
    swc1    $f14, 0x0018($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_800A6D44
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_800A8BCC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f12, 0x0024(s0)           # 00000024
lbl_800A8B20:
    lui     a3, 0x8012                 # a3 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    abs.s   $f0, $f12
    lw      a1, 0x0038($sp)
    c.lt.s  $f2, $f0
    lw      a2, 0x0034($sp)
    lui     $at, 0x8012                # $at = 80120000
    bc1f    lbl_800A8B8C
    nop
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x1148($at)           # 80121148
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0038($sp)
    lw      a2, 0x0034($sp)
    lw      a3, 0x1144(a3)             # 80121144
    swc1    $f12, 0x0018($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_800A74B8
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_800A8BCC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8B8C:
    lwc1    $f8, 0x1144($at)           # 00001144
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a3, 0x8012                 # a3 = 80120000
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lw      a3, 0x1140(a3)             # 80121140
    jal     func_800A7B74
    swc1    $f4, 0x0018($sp)
    beq     v0, $zero, lbl_800A8BCC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A8684
    lw      a2, 0x0058($sp)
    beq     $zero, $zero, lbl_800A8BD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8BCC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A8BD0:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_800A8BE4:
    lh      t6, 0x0006(a0)             # 00000006
    lh      t7, 0x000A(a0)             # 0000000A
    lwc1    $f8, 0x0000(a1)            # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lh      v0, 0x0000(a0)             # 00000000
    cvt.s.w $f6, $f4
    lh      t8, 0x0008(a0)             # 00000008
    lh      t9, 0x0004(a0)             # 00000004
    multu   v0, v0
    mtc1    t8, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    lwc1    $f18, 0x0008(a1)           # 00000008
    lh      t0, 0x0002(a0)             # 00000002
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f0, $f6, $f8
    mtc1    t9, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    mul.s   $f4, $f0, $f0
    mflo    t1
    sub.s   $f2, $f16, $f18
    mtc1    t0, $f16                   # $f16 = 0.00
    cvt.s.w $f10, $f8
    mul.s   $f8, $f2, $f2
    add.s   $f12, $f6, $f10
    mtc1    t1, $f10                   # $f10 = 0.00
    cvt.s.w $f18, $f16
    cvt.s.w $f16, $f10
    add.s   $f6, $f4, $f8
    add.s   $f14, $f18, $f12
    c.lt.s  $f6, $f16
    nop
    bc1f    lbl_800A8C98
    nop
    lwc1    $f0, 0x0004(a1)            # 00000004
    c.lt.s  $f12, $f0
    nop
    bc1f    lbl_800A8C98
    nop
    c.lt.s  $f0, $f14
    nop
    bc1f    lbl_800A8C98
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A8C98:
    jr      $ra
    nop


func_800A8CA0:
    addiu   $sp, $sp, 0xFF08           # $sp = FFFFFF08
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x00FC($sp)
    sw      a2, 0x0100($sp)
    sw      a3, 0x0104($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x00FC($sp)
    jal     func_800A8BE4
    sw      $zero, 0x009C($sp)
    lw      a3, 0x0100($sp)
    beq     v0, $zero, lbl_800A8D38
    lw      t0, 0x009C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_800A8BE4
    sw      t0, 0x009C($sp)
    lw      a3, 0x0100($sp)
    beq     v0, $zero, lbl_800A8D38
    lw      t0, 0x009C($sp)
    lw      t9, 0x00FC($sp)
    lw      t7, 0x0104($sp)
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0000(t7)             # 00000000
    lw      t8, 0x0004(t9)             # 00000004
    sw      t8, 0x0004(t7)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(t7)             # 00000008
    lw      t4, 0x0000(a3)             # 00000000
    lw      t2, 0x0108($sp)
    sw      t4, 0x0000(t2)             # 00000000
    lw      t3, 0x0004(a3)             # 00000004
    sw      t3, 0x0004(t2)             # 00000004
    lw      t4, 0x0008(a3)             # 00000008
    beq     $zero, $zero, lbl_800A9654
    sw      t4, 0x0008(t2)             # 00000008
lbl_800A8D38:
    lh      t5, 0x0006(s0)             # 00000006
    lw      v0, 0x00FC($sp)
    addiu   a0, $sp, 0x00E0            # a0 = FFFFFFE8
    mtc1    t5, $f8                    # $f8 = 0.00
    lwc1    $f6, 0x0000(v0)            # 00000002
    addiu   a1, $sp, 0x00EC            # a1 = FFFFFFF4
    cvt.s.w $f4, $f8
    addiu   a2, $sp, 0x00D4            # a2 = FFFFFFDC
    sub.s   $f10, $f6, $f4
    swc1    $f10, 0x00EC($sp)
    lh      t6, 0x0008(s0)             # 00000008
    lh      t7, 0x0004(s0)             # 00000004
    lwc1    $f8, 0x0004(v0)            # 00000006
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    mtc1    t7, $f6                    # $f6 = 0.00
    sub.s   $f10, $f8, $f4
    cvt.s.w $f8, $f6
    sub.s   $f4, $f10, $f8
    swc1    $f4, 0x00F0($sp)
    lh      t9, 0x000A(s0)             # 0000000A
    lwc1    $f6, 0x0008(v0)            # 0000000A
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    sub.s   $f4, $f6, $f8
    swc1    $f4, 0x00F4($sp)
    lh      t8, 0x0006(s0)             # 00000006
    lwc1    $f10, 0x0000(a3)           # 00000000
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f4, $f10, $f8
    swc1    $f4, 0x00E0($sp)
    lh      t1, 0x0008(s0)             # 00000008
    lh      t2, 0x0004(s0)             # 00000004
    lwc1    $f6, 0x0004(a3)            # 00000004
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mtc1    t2, $f10                   # $f10 = 0.00
    sub.s   $f4, $f6, $f8
    cvt.s.w $f6, $f10
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x00E4($sp)
    lh      t3, 0x000A(s0)             # 0000000A
    lwc1    $f10, 0x0008(a3)           # 00000008
    sw      t0, 0x009C($sp)
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f8, $f10, $f6
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f8, 0x00E8($sp)
    lh      v0, 0x0000(s0)             # 00000000
    lwc1    $f10, 0x00D8($sp)
    lui     $at, 0x8011                # $at = 80110000
    multu   v0, v0
    lwc1    $f6, -0x7144($at)          # 80108EBC
    abs.s   $f0, $f10
    lw      t0, 0x009C($sp)
    c.lt.s  $f0, $f6
    lwc1    $f8, 0x00F0($sp)
    mflo    t4
    mtc1    t4, $f4                    # $f4 = 0.00
    bc1t    lbl_800A8FF4
    cvt.s.w $f14, $f4
    neg.s   $f4, $f8
    mtc1    $zero, $f16                # $f16 = 0.00
    div.s   $f0, $f4, $f10
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_800A8F10
    lh      t8, 0x0002(s0)             # 00000002
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f8, 0x00D4($sp)
    c.le.s  $f0, $f6
    lwc1    $f6, 0x00DC($sp)
    bc1fl   lbl_800A8F10
    lh      t8, 0x0002(s0)             # 00000002
    mul.s   $f4, $f8, $f0
    lwc1    $f10, 0x00EC($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f2, $f4, $f10
    lwc1    $f4, 0x00F4($sp)
    add.s   $f12, $f8, $f4
    mul.s   $f10, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f10, $f6
    c.lt.s  $f8, $f14
    nop
    bc1f    lbl_800A8F0C
    nop
    lh      t5, 0x0006(s0)             # 00000006
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    add.s   $f6, $f10, $f2
    swc1    $f6, 0x006C($sp)
    lh      t7, 0x0004(s0)             # 00000004
    lh      t6, 0x0008(s0)             # 00000008
    mtc1    t7, $f10                   # $f10 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f10
    cvt.s.w $f4, $f8
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0070($sp)
    lh      t9, 0x000A(s0)             # 0000000A
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0074($sp)
lbl_800A8F0C:
    lh      t8, 0x0002(s0)             # 00000002
lbl_800A8F10:
    lwc1    $f4, 0x00F0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    lwc1    $f8, 0x00D8($sp)
    sub.s   $f6, $f10, $f4
    div.s   $f10, $f6, $f8
    c.le.s  $f16, $f10
    swc1    $f10, 0x00D0($sp)
    bc1fl   lbl_800A8FF8
    lwc1    $f10, 0x00EC($sp)
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f6, 0x00D4($sp)
    c.le.s  $f10, $f4
    nop
    bc1fl   lbl_800A8FF8
    lwc1    $f10, 0x00EC($sp)
    mul.s   $f8, $f6, $f10
    lwc1    $f4, 0x00EC($sp)
    lwc1    $f6, 0x00DC($sp)
    add.s   $f0, $f8, $f4
    mul.s   $f8, $f6, $f10
    lwc1    $f4, 0x00F4($sp)
    mul.s   $f6, $f0, $f0
    add.s   $f2, $f8, $f4
    mul.s   $f10, $f2, $f2
    add.s   $f8, $f6, $f10
    c.lt.s  $f8, $f14
    nop
    bc1fl   lbl_800A8FF8
    lwc1    $f10, 0x00EC($sp)
    lh      t1, 0x0006(s0)             # 00000006
    ori     t0, t0, 0x0002             # t0 = 00000003
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f0
    swc1    $f10, 0x0078($sp)
    lh      t3, 0x0004(s0)             # 00000004
    lh      t2, 0x0008(s0)             # 00000008
    lh      t4, 0x0002(s0)             # 00000002
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t2, $f8                    # $f8 = 0.00
    cvt.s.w $f10, $f6
    mtc1    t4, $f6                    # $f6 = 0.00
    cvt.s.w $f4, $f8
    add.s   $f8, $f4, $f10
    cvt.s.w $f4, $f6
    add.s   $f10, $f8, $f4
    swc1    $f10, 0x007C($sp)
    lh      t5, 0x000A(s0)             # 0000000A
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    add.s   $f4, $f8, $f2
    swc1    $f4, 0x0080($sp)
lbl_800A8FF4:
    lwc1    $f10, 0x00EC($sp)
lbl_800A8FF8:
    lwc1    $f8, 0x00F4($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f6, $f10, $f10
    swc1    $f10, 0x0020($sp)
    lwc1    $f10, 0x00DC($sp)
    mul.s   $f4, $f8, $f8
    swc1    $f8, 0x0024($sp)
    add.s   $f6, $f6, $f4
    lwc1    $f4, 0x00D4($sp)
    sub.s   $f16, $f6, $f14
    mul.s   $f6, $f4, $f4
    nop
    mul.s   $f8, $f10, $f10
    swc1    $f16, 0x00B8($sp)
    add.s   $f12, $f6, $f8
    lwc1    $f6, -0x7140($at)          # 80108EC0
    lwc1    $f8, 0x00D4($sp)
    add.s   $f18, $f12, $f12
    abs.s   $f0, $f18
    c.lt.s  $f0, $f6
    nop
    bc1t    lbl_800A9100
    nop
    lwc1    $f8, 0x0020($sp)
    lui     $at, 0x4080                # $at = 40800000
    mul.s   $f6, $f4, $f8
    lwc1    $f4, 0x0024($sp)
    mul.s   $f8, $f10, $f4
    mtc1    $at, $f10                  # $f10 = 4.00
    add.s   $f2, $f6, $f8
    lwc1    $f6, 0x00B8($sp)
    add.s   $f14, $f2, $f2
    mul.s   $f0, $f14, $f14
    nop
    mul.s   $f4, $f10, $f12
    nop
    mul.s   $f16, $f4, $f6
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_800A90A4
    nop
    beq     $zero, $zero, lbl_800A9654
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A90A4:
    sub.s   $f2, $f0, $f16
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a1, $zero, $zero           # a1 = 00000000
    c.lt.s  $f8, $f2
    sqrt.s  $f0, $f2
    bc1f    lbl_800A90D0
    nop
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_800A90D0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800A90D0:
    sub.s   $f10, $f0, $f14
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f2, $f10, $f18
    swc1    $f2, 0x00D0($sp)
    bne     a1, a3, lbl_800A90F8
    lwc1    $f2, 0x00D0($sp)
    neg.s   $f4, $f14
    sub.s   $f6, $f4, $f0
    div.s   $f12, $f6, $f18
    swc1    $f12, 0x00CC($sp)
lbl_800A90F8:
    beq     $zero, $zero, lbl_800A9160
    lwc1    $f12, 0x00CC($sp)
lbl_800A9100:
    lwc1    $f10, 0x00EC($sp)
    lwc1    $f6, 0x00DC($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f4, $f8, $f10
    lwc1    $f8, 0x00F4($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f6, -0x713C($at)          # 80108EC4
    add.s   $f2, $f4, $f10
    add.s   $f14, $f2, $f2
    abs.s   $f0, $f14
    c.lt.s  $f0, $f6
    nop
    bc1t    lbl_800A9158
    nop
    neg.s   $f8, $f16
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    div.s   $f2, $f8, $f14
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f12, 0x00CC($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_800A9160
    swc1    $f2, 0x00D0($sp)
lbl_800A9158:
    beq     $zero, $zero, lbl_800A9654
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9160:
    bnel    a1, $zero, lbl_800A91A4
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f2, $f10
    nop
    bc1t    lbl_800A9198
    nop
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.lt.s  $f6, $f2
    nop
    bc1f    lbl_800A9254
    nop
lbl_800A9198:
    beq     $zero, $zero, lbl_800A9654
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_800A91A4:
    mtc1    $zero, $f10                # $f10 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f2, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    bc1f    lbl_800A91C0
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A91C0:
    bne     v0, $zero, lbl_800A91E4
    or      v1, v0, $zero              # v1 = 00000001
    mtc1    $at, $f4                   # $f4 = 1.00
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f4, $f2
    nop
    bc1fl   lbl_800A91E8
    c.lt.s  $f12, $f10
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800A91E4:
    c.lt.s  $f12, $f10
lbl_800A91E8:
    or      a0, v1, $zero              # a0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    bc1f    lbl_800A9200
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A9200:
    bne     v0, $zero, lbl_800A9224
    or      v1, v0, $zero              # v1 = 00000001
    mtc1    $at, $f6                   # $f6 = 1.00
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f6, $f12
    nop
    bc1f    lbl_800A9224
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800A9224:
    beq     a0, $zero, lbl_800A923C
    nop
    beq     v1, $zero, lbl_800A923C
    nop
    beq     $zero, $zero, lbl_800A9654
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A923C:
    beq     a0, $zero, lbl_800A9248
    nop
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800A9248:
    beq     v1, $zero, lbl_800A9254
    nop
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800A9254:
    bne     a2, a3, lbl_800A92A0
    lwc1    $f8, 0x00D8($sp)
    mul.s   $f4, $f2, $f8
    lwc1    $f10, 0x00F0($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f0, $f4, $f10
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_800A92A0
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t6, 0x0002(s0)             # 00000002
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_800A92A0
    nop
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800A92A0:
    bne     a1, a3, lbl_800A92EC
    lwc1    $f10, 0x00D8($sp)
    mul.s   $f6, $f12, $f10
    lwc1    $f8, 0x00F0($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    add.s   $f0, $f6, $f8
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_800A92EC
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t7, 0x0002(s0)             # 00000002
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_800A92EC
    nop
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800A92EC:
    bne     a2, $zero, lbl_800A9304
    or      v1, $zero, $zero           # v1 = 00000000
    bne     a1, $zero, lbl_800A9304
    nop
    beq     $zero, $zero, lbl_800A9654
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9304:
    bne     a2, a3, lbl_800A9434
    or      v0, $zero, $zero           # v0 = 00000000
    bne     a1, a3, lbl_800A9434
    lwc1    $f8, 0x00D4($sp)
    mul.s   $f4, $f2, $f8
    lwc1    $f10, 0x00EC($sp)
    lh      t9, 0x0006(s0)             # 00000006
    swc1    $f8, 0x0024($sp)
    lwc1    $f8, 0x00F0($sp)
    ori     t0, t0, 0x0004             # t0 = 00000007
    ori     t0, t0, 0x0008             # t0 = 0000000F
    add.s   $f6, $f4, $f10
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f4, $f4
    add.s   $f6, $f6, $f4
    lwc1    $f4, 0x00D8($sp)
    swc1    $f6, 0x0084($sp)
    lh      t8, 0x0008(s0)             # 00000008
    mul.s   $f6, $f2, $f4
    swc1    $f10, 0x0020($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    lh      t1, 0x0004(s0)             # 00000004
    swc1    $f4, 0x0028($sp)
    lwc1    $f4, 0x00F4($sp)
    cvt.s.w $f10, $f10
    add.s   $f6, $f6, $f8
    add.s   $f6, $f6, $f10
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f10, $f10
    add.s   $f6, $f6, $f10
    lwc1    $f10, 0x00DC($sp)
    swc1    $f6, 0x0088($sp)
    lh      t2, 0x000A(s0)             # 0000000A
    mul.s   $f6, $f2, $f10
    swc1    $f8, 0x002C($sp)
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8
    add.s   $f6, $f6, $f4
    add.s   $f6, $f6, $f8
    lwc1    $f8, 0x0024($sp)
    swc1    $f6, 0x008C($sp)
    mul.s   $f6, $f12, $f8
    lwc1    $f8, 0x0020($sp)
    lh      t3, 0x0006(s0)             # 00000006
    add.s   $f6, $f6, $f8
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8
    add.s   $f6, $f6, $f8
    lwc1    $f8, 0x0028($sp)
    swc1    $f6, 0x0090($sp)
    mul.s   $f6, $f12, $f8
    lwc1    $f8, 0x002C($sp)
    lh      t4, 0x0008(s0)             # 00000008
    lh      t5, 0x0004(s0)             # 00000004
    add.s   $f6, $f6, $f8
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8
    add.s   $f6, $f6, $f8
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8
    add.s   $f6, $f6, $f8
    mul.s   $f8, $f12, $f10
    swc1    $f6, 0x0094($sp)
    lh      t6, 0x000A(s0)             # 0000000A
    mtc1    t6, $f10                   # $f10 = 0.00
    add.s   $f6, $f8, $f4
    cvt.s.w $f8, $f10
    add.s   $f4, $f6, $f8
    beq     $zero, $zero, lbl_800A9540
    swc1    $f4, 0x0098($sp)
lbl_800A9434:
    bne     a2, a3, lbl_800A94BC
    lwc1    $f10, 0x00D4($sp)
    mul.s   $f6, $f2, $f10
    lh      t7, 0x0006(s0)             # 00000006
    lwc1    $f8, 0x00EC($sp)
    ori     t0, t0, 0x0004             # t0 = 0000000F
    mtc1    t7, $f10                   # $f10 = 0.00
    add.s   $f4, $f6, $f8
    cvt.s.w $f6, $f10
    lwc1    $f10, 0x00D8($sp)
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f2, $f10
    lwc1    $f6, 0x00F0($sp)
    swc1    $f8, 0x0084($sp)
    lh      t9, 0x0008(s0)             # 00000008
    lh      t8, 0x0004(s0)             # 00000004
    mtc1    t9, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6
    cvt.s.w $f4, $f10
    mtc1    t8, $f10                   # $f10 = 0.00
    add.s   $f6, $f8, $f4
    cvt.s.w $f8, $f10
    lwc1    $f10, 0x00DC($sp)
    add.s   $f4, $f6, $f8
    mul.s   $f6, $f2, $f10
    lwc1    $f8, 0x00F4($sp)
    swc1    $f4, 0x0088($sp)
    lh      t1, 0x000A(s0)             # 0000000A
    mtc1    t1, $f10                   # $f10 = 0.00
    add.s   $f4, $f6, $f8
    cvt.s.w $f6, $f10
    add.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_800A9540
    swc1    $f8, 0x008C($sp)
lbl_800A94BC:
    bne     a1, a3, lbl_800A9540
    lwc1    $f10, 0x00D4($sp)
    mul.s   $f4, $f12, $f10
    lh      t2, 0x0006(s0)             # 00000006
    lwc1    $f6, 0x00EC($sp)
    ori     t0, t0, 0x0004             # t0 = 0000000F
    mtc1    t2, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6
    cvt.s.w $f4, $f10
    lwc1    $f10, 0x00D8($sp)
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f12, $f10
    lwc1    $f4, 0x00F0($sp)
    swc1    $f6, 0x0084($sp)
    lh      t3, 0x0008(s0)             # 00000008
    lh      t4, 0x0004(s0)             # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    add.s   $f6, $f8, $f4
    cvt.s.w $f8, $f10
    mtc1    t4, $f10                   # $f10 = 0.00
    add.s   $f4, $f6, $f8
    cvt.s.w $f6, $f10
    lwc1    $f10, 0x00DC($sp)
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f12, $f10
    lwc1    $f6, 0x00F4($sp)
    swc1    $f8, 0x0088($sp)
    lh      t5, 0x000A(s0)             # 0000000A
    mtc1    t5, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6
    cvt.s.w $f4, $f10
    add.s   $f6, $f8, $f4
    swc1    $f6, 0x008C($sp)
lbl_800A9540:
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    addiu   a0, $sp, 0x006C            # a0 = FFFFFF74
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_800A9550:
    sllv    t7, t6, v0
    and     t9, t7, t0
    beql    t9, $zero, lbl_800A9648
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     v1, $zero, lbl_800A9594
    nop
    multu   v0, a1
    lw      t8, 0x0104($sp)
    mflo    t1
    addu    t2, a0, t1
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(t8)             # 00000000
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(t8)             # 00000004
    lw      t4, 0x0008(t2)             # 00000008
    beq     $zero, $zero, lbl_800A9640
    sw      t4, 0x0008(t8)             # 00000008
lbl_800A9594:
    bne     v1, a3, lbl_800A9640
    sll     t5, v0,  2
    subu    t5, t5, v0
    sll     t5, t5,  2
    addiu   t6, $sp, 0x006C            # t6 = FFFFFF74
    addu    s0, t5, t6
    lw      a0, 0x0104($sp)
    lw      a1, 0x00FC($sp)
    jal     func_800A5538
    sw      v1, 0x0068($sp)
    swc1    $f0, 0x004C($sp)
    lw      a0, 0x0104($sp)
    jal     func_800A5538
    or      a1, s0, $zero              # a1 = 00000000
    lwc1    $f10, 0x004C($sp)
    lw      v1, 0x0068($sp)
    lw      t7, 0x0108($sp)
    c.lt.s  $f10, $f0
    lw      t2, 0x0104($sp)
    bc1fl   lbl_800A9608
    lw      t8, 0x0108($sp)
    lw      t1, 0x0000(s0)             # 00000000
    sw      t1, 0x0000(t7)             # 00000000
    lw      t9, 0x0004(s0)             # 00000004
    sw      t9, 0x0004(t7)             # 00000004
    lw      t1, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800A9650
    sw      t1, 0x0008(t7)             # 00000008
    lw      t8, 0x0108($sp)
lbl_800A9608:
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(t8)             # 00000000
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(t8)             # 00000004
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(t8)             # 00000008
    lw      t7, 0x0000(s0)             # 00000000
    lw      t5, 0x0104($sp)
    sw      t7, 0x0000(t5)             # 00000000
    lw      t6, 0x0004(s0)             # 00000004
    sw      t6, 0x0004(t5)             # 00000004
    lw      t7, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800A9650
    sw      t7, 0x0008(t5)             # 00000008
lbl_800A9640:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_800A9648:
    bnel    v0, a2, lbl_800A9550
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_800A9650:
    or      v0, v1, $zero              # v0 = 00000001
lbl_800A9654:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x00F8           # $sp = 00000000
    jr      $ra
    nop


func_800A9668:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a2, 0x0098($sp)
    lh      t6, 0x0008(s1)             # 00000008
    lh      t7, 0x0004(s1)             # 00000004
    lh      t8, 0x0002(s1)             # 00000002
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4
    lwc1    $f0, 0x0004(s0)            # 00000004
    cvt.s.w $f10, $f8
    cvt.s.w $f18, $f16
    add.s   $f12, $f6, $f10
    c.lt.s  $f0, $f12
    add.s   $f14, $f18, $f12
    bc1fl   lbl_800A96EC
    c.lt.s  $f14, $f0
    lwc1    $f4, 0x0010(s0)            # 00000010
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_800A96EC
    c.lt.s  $f14, $f0
    lwc1    $f8, 0x001C(s0)            # 0000001C
    c.lt.s  $f8, $f12
    nop
    bc1t    lbl_800A9728
    nop
    c.lt.s  $f14, $f0
lbl_800A96EC:
    lui     $at, 0x8011                # $at = 80110000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bc1f    lbl_800A9730
    addiu   a2, s0, 0x000C             # a2 = 0000000C
    lwc1    $f6, 0x0010(s0)            # 00000010
    c.lt.s  $f14, $f6
    nop
    bc1f    lbl_800A9730
    nop
    lwc1    $f10, 0x001C(s0)           # 0000001C
    c.lt.s  $f14, $f10
    nop
    bc1f    lbl_800A9730
    nop
lbl_800A9728:
    beq     $zero, $zero, lbl_800A9AD4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9730:
    lwc1    $f2, -0x7138($at)          # 80108EC8
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x1170             # t9 = 80121170
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x1160             # a3 = 80121160
    sw      t9, 0x0010($sp)
    sw      a2, 0x0048($sp)
    swc1    $f12, 0x0084($sp)
    swc1    $f14, 0x0088($sp)
    jal     func_800A8CA0
    swc1    $f2, 0x0080($sp)
    beq     v0, $zero, lbl_800A979C
    lwc1    $f2, 0x0080($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x1160             # a0 = 80121160
    jal     func_800A5538
    or      a1, s0, $zero              # a1 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x1160             # t1 = 80121160
    lw      t3, 0x0000(t1)             # 80121160
    lw      t0, 0x0098($sp)
    mov.s   $f2, $f0
    sw      t3, 0x0000(t0)             # 00000000
    lw      t2, 0x0004(t1)             # 80121164
    sw      t2, 0x0004(t0)             # 00000004
    lw      t3, 0x0008(t1)             # 80121168
    sw      t3, 0x0008(t0)             # 00000008
lbl_800A979C:
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x1170             # t4 = 80121170
    addiu   a1, s0, 0x0018             # a1 = 00000018
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x1160             # a3 = 80121160
    sw      a1, 0x0044($sp)
    sw      t4, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0048($sp)
    jal     func_800A8CA0
    swc1    $f2, 0x0080($sp)
    beq     v0, $zero, lbl_800A981C
    lwc1    $f2, 0x0080($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x1160             # a0 = 80121160
    lw      a1, 0x0044($sp)
    jal     func_800A5538
    swc1    $f2, 0x0080($sp)
    lwc1    $f2, 0x0080($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1160             # t6 = 80121160
    c.lt.s  $f0, $f2
    lw      t5, 0x0098($sp)
    bc1f    lbl_800A981C
    nop
    lw      t8, 0x0000(t6)             # 80121160
    mov.s   $f2, $f0
    sw      t8, 0x0000(t5)             # 00000000
    lw      t7, 0x0004(t6)             # 80121164
    sw      t7, 0x0004(t5)             # 00000004
    lw      t8, 0x0008(t6)             # 80121168
    sw      t8, 0x0008(t5)             # 00000008
lbl_800A981C:
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x1170             # t9 = 80121170
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x1160             # a3 = 80121160
    sw      t9, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0044($sp)
    jal     func_800A8CA0
    swc1    $f2, 0x0080($sp)
    beq     v0, $zero, lbl_800A9898
    lwc1    $f2, 0x0080($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x1160             # a0 = 80121160
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5538
    swc1    $f2, 0x0080($sp)
    lwc1    $f2, 0x0080($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x1160             # t1 = 80121160
    c.lt.s  $f0, $f2
    lw      t0, 0x0098($sp)
    bc1f    lbl_800A9898
    nop
    lw      t3, 0x0000(t1)             # 80121160
    mov.s   $f2, $f0
    sw      t3, 0x0000(t0)             # 00000000
    lw      t2, 0x0004(t1)             # 80121164
    sw      t2, 0x0004(t0)             # 00000004
    lw      t3, 0x0008(t1)             # 80121168
    sw      t3, 0x0008(t0)             # 00000008
lbl_800A9898:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x7134($at)         # 80108ECC
    c.eq.s  $f2, $f16
    nop
    bc1tl   lbl_800A98BC
    lwc1    $f18, 0x0028(s0)           # 00000028
    beq     $zero, $zero, lbl_800A9AD4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f18, 0x0028(s0)           # 00000028
lbl_800A98BC:
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t6, $sp, 0x008C            # t6 = FFFFFFFC
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0048($sp)
    swc1    $f4, 0x0014($sp)
    lwc1    $f8, 0x0030(s0)            # 00000030
    lwc1    $f4, 0x0084($sp)
    lw      a2, 0x0044($sp)
    swc1    $f8, 0x0018($sp)
    lh      t4, 0x000A(s1)             # 0000000A
    lwc1    $f8, 0x0088($sp)
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    swc1    $f10, 0x001C($sp)
    lh      t5, 0x0006(s1)             # 00000006
    sw      t6, 0x0024($sp)
    swc1    $f4, 0x0028($sp)
    mtc1    t5, $f16                   # $f16 = 0.00
    swc1    $f8, 0x002C($sp)
    cvt.s.w $f18, $f16
    jal     func_800A6FB4
    swc1    $f18, 0x0020($sp)
    beq     v0, $zero, lbl_800A9A20
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    nop
    lh      t7, 0x0006(s1)             # 00000006
    lwc1    $f16, 0x008C($sp)
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFD0
    mtc1    t7, $f6                    # $f6 = 0.00
    swc1    $f16, 0x0070($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFDC
    cvt.s.w $f10, $f6
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFC4
    swc1    $f10, 0x006C($sp)
    lh      t8, 0x000A(s1)             # 0000000A
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0074($sp)
    lwc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f8, 0x000C(s0)            # 0000000C
    add.s   $f10, $f8, $f6
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x0060($sp)
    lwc1    $f4, 0x0004(s0)            # 00000004
    lwc1    $f18, 0x0010(s0)           # 00000010
    add.s   $f8, $f18, $f4
    mul.s   $f6, $f8, $f0
    swc1    $f6, 0x0064($sp)
    lwc1    $f16, 0x0008(s0)           # 00000008
    lwc1    $f10, 0x0014(s0)           # 00000014
    add.s   $f18, $f10, $f16
    mul.s   $f4, $f18, $f0
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f4, 0x0068($sp)
    lwc1    $f2, 0x0054($sp)
    lwc1    $f12, 0x005C($sp)
    lui     $at, 0x8011                # $at = 80110000
    mul.s   $f8, $f2, $f2
    lwc1    $f10, -0x7130($at)         # 80108ED0
    lw      a0, 0x0098($sp)
    mul.s   $f6, $f12, $f12
    add.s   $f0, $f8, $f6
    sqrt.s  $f14, $f0
    abs.s   $f0, $f14
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_800A99F4
    lh      t9, 0x0000(s1)             # 00000000
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD0
    beq     $zero, $zero, lbl_800A9AD4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t9, 0x0000(s1)             # 00000000
lbl_800A99F4:
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFDC
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFC4
    mtc1    t9, $f16                   # $f16 = 0.00
    lw      a3, 0x0098($sp)
    cvt.s.w $f18, $f16
    div.s   $f0, $f18, $f14
    mfc1    a2, $f0
    jal     func_800A4E24
    nop
    beq     $zero, $zero, lbl_800A9AD4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A9A20:
    lh      t0, 0x0006(s1)             # 00000006
    lui     $at, 0x8012                # $at = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    sh      t0, 0x1158($at)            # 80121158
    lh      t1, 0x1158(t1)             # 80121158
    lwc1    $f4, 0x0088($sp)
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x0084($sp)
    sh      t1, 0x1150($at)            # 80121150
    trunc.w.s $f8, $f4
    lh      t2, 0x000A(s1)             # 0000000A
    lui     $at, 0x8012                # $at = 80120000
    trunc.w.s $f10, $f6
    lui     t3, 0x8012                 # t3 = 80120000
    sh      t2, 0x115C($at)            # 8012115C
    lh      t3, 0x115C(t3)             # 8012115C
    mfc1    t5, $f8
    lui     $at, 0x8012                # $at = 80120000
    mfc1    t7, $f10
    sh      t3, 0x1154($at)            # 80121154
    sh      t5, 0x1152($at)            # 80121152
    lui     $at, 0x8012                # $at = 80120000
    sh      t7, 0x115A($at)            # 8012115A
    lh      t8, 0x0000(s1)             # 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lui     a0, 0x8012                 # a0 = 80120000
    sh      t8, 0x115E($at)            # 8012115E
    lh      t9, 0x115E(t9)             # 8012115E
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x1150             # a0 = 80121150
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0098($sp)
    jal     func_800A87C4
    sh      t9, 0x1156($at)            # 80121156
    bne     v0, $zero, lbl_800A9AC8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x1158             # a0 = 80121158
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A87C4
    lw      a2, 0x0098($sp)
    beql    v0, $zero, lbl_800A9AD4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9AC8:
    beq     $zero, $zero, lbl_800A9AD4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9AD4:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_800A9AE8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    jal     func_800A9668
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_800A9B08:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    jal     func_800A9B28
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFFC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A9B28:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    jal     func_800A9B48
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A9B48:
    lh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0000(a1)             # 00000000
    lh      t8, 0x0002(a0)             # 00000002
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      t9, 0x0002(a1)             # 00000002
    cvt.s.w $f6, $f4
    mtc1    t8, $f18                   # $f18 = 0.00
    lh      t0, 0x0004(a0)             # 00000004
    lh      t1, 0x0004(a1)             # 00000004
    lui     $at, 0x8011                # $at = 80110000
    cvt.s.w $f10, $f8
    mtc1    t9, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f18
    sub.s   $f2, $f6, $f10
    mtc1    t0, $f10                   # $f10 = 0.00
    cvt.s.w $f6, $f8
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f10
    sub.s   $f12, $f4, $f6
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f10, $f12, $f12
    cvt.s.w $f4, $f8
    add.s   $f8, $f6, $f10
    sub.s   $f14, $f18, $f4
    mul.s   $f18, $f14, $f14
    add.s   $f4, $f8, $f18
    cvt.d.s $f0, $f4
    sqrt.d  $f0, $f0
    cvt.s.d $f16, $f0
    swc1    $f16, 0x0000(a3)           # 00000000
    lh      t3, 0x0006(a1)             # 00000006
    lh      t2, 0x0006(a0)             # 00000006
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f18, $f8
    cvt.s.w $f10, $f6
    add.s   $f4, $f10, $f18
    sub.s   $f6, $f4, $f16
    swc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f10, 0x0000(a2)           # 00000000
    lwc1    $f8, -0x712C($at)          # 80108ED4
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_800A9C0C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A9C0C:
    mtc1    $zero, $f18                # $f18 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    swc1    $f18, 0x0000(a2)           # 00000000
    jr      $ra
    nop


func_800A9C20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    jal     func_800A9C40
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A9C40:
# Collision?
# A0 = Collision Body A xyz
# A1 = Collision Body B cylinder height, radius
    lh      v0, 0x0006(a0)             # 00000006
    blez    v0, lbl_800A9C58
    nop
    lh      v1, 0x0000(a1)             # 00000000
    bgtzl   v1, lbl_800A9C64
    lh      t6, 0x0002(a0)             # 00000002
lbl_800A9C58:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9C60:
    lh      t6, 0x0002(a0)             # 00000002
lbl_800A9C64:
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f2, $f8
    cvt.s.w $f6, $f4
    swc1    $f6, 0x119C($at)           # 8012119C
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f2, 0x11A4($at)           # 801211A4
    lh      t7, 0x0008(a1)             # 00000008
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x1190($at)          # 80121190
    lh      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x1188($at)           # 80121188
    lh      t9, 0x0002(a1)             # 00000002
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x1184($at)          # 80121184
    lh      t1, 0x0006(a1)             # 00000006
    lh      t0, 0x0000(a0)             # 00000000
    lh      t3, 0x000A(a1)             # 0000000A
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t0, $f18                   # $f18 = 0.00
    lh      t2, 0x0004(a0)             # 00000004
    cvt.s.w $f8, $f6
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t2, $f10                   # $f10 = 0.00
    lui     $at, 0x8012                # $at = 80120000
    cvt.s.w $f4, $f18
    cvt.s.w $f18, $f10
    sub.s   $f12, $f4, $f8
    mtc1    v1, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f6
    mul.s   $f6, $f12, $f12
    sub.s   $f14, $f18, $f4
    cvt.s.w $f10, $f8
    mul.s   $f18, $f14, $f14
    add.s   $f16, $f2, $f10
    add.s   $f0, $f6, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f16, $f0
    swc1    $f0, 0x0000(a3)            # 00000000
    bc1f    lbl_800A9D3C
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9D3C:
    lwc1    $f4, 0x1190($at)           # 80121190
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x1188($at)           # 80121188
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, 0x119C($at)          # 8012119C
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x11A4($at)           # 801211A4
    add.s   $f0, $f4, $f8
    lui     $at, 0x8012                # $at = 80120000
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f18, $f10, $f6
    c.le.s  $f0, $f18
    nop
    bc1f    lbl_800A9DA8
    nop
    lwc1    $f4, 0x1184($at)           # 80121184
    sub.s   $f18, $f10, $f6
    add.s   $f8, $f0, $f4
    c.le.s  $f18, $f8
    nop
    bc1f    lbl_800A9DA8
    nop
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f10, $f16, $f4
    jr      $ra
    swc1    $f10, 0x0000(a2)           # 00000000
lbl_800A9DA8:
    jr      $ra
    nop


func_800A9DB0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    jal     func_800A9DD0
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800A9DD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a1, 0x0018($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x11B4             # a0 = 801211B4
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, a1, 0x0006             # a1 = 00000006
    lw      v0, 0x0018($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      v1, 0x001C($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x11CC             # a0 = 801211CC
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, v1, 0x0006             # a1 = 00000006
    cvt.s.w $f6, $f4
    swc1    $f6, 0x11A8($at)           # 801211A8
    lh      t7, 0x0004(v0)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x11B0($at)          # 801211B0
    lh      t8, 0x0002(v0)             # 00000002
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_80063CCC              # Vec3f_CopyVec3s
    swc1    $f18, 0x11AC($at)          # 801211AC
    lw      v1, 0x001C($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      a0, 0x0024($sp)
    lh      t9, 0x0000(v1)             # 00000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x11C0($at)           # 801211C0
    lh      t0, 0x0004(v1)             # 00000004
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x11C8($at)          # 801211C8
    lh      t1, 0x0002(v1)             # 00000002
    lui     $at, 0x8012                # $at = 80120000
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x11C4($at)          # 801211C4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x11B4($at)           # 801211B4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x11CC($at)           # 801211CC
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, 0x11BC($at)           # 801211BC
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f2, $f4, $f6
    lwc1    $f10, 0x11D4($at)          # 801211D4
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f2
    nop
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    swc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f4, 0x11A8($at)           # 801211A8
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, 0x11C0($at)           # 801211C0
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f14, $f4, $f6
    c.lt.s  $f14, $f0
    nop
    bc1f    lbl_800A9F18
    nop
    beq     $zero, $zero, lbl_800A9F90
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A9F18:
    lwc1    $f8, 0x11B8($at)           # 801211B8
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, 0x11B0($at)          # 801211B0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f16, 0x11D0($at)          # 801211D0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f18, 0x11C8($at)          # 801211C8
    add.s   $f0, $f8, $f10
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, 0x11AC($at)           # 801211AC
    add.s   $f2, $f16, $f18
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f0, $f4
    c.lt.s  $f6, $f2
    nop
    bc1t    lbl_800A9F74
    nop
    lwc1    $f8, 0x11C4($at)           # 801211C4
    add.s   $f10, $f2, $f8
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_800A9F80
    lwc1    $f16, 0x0000(a0)           # 00000000
lbl_800A9F74:
    beq     $zero, $zero, lbl_800A9F90
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f16, 0x0000(a0)           # 00000000
lbl_800A9F80:
    lw      t2, 0x0020($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f14, $f16
    swc1    $f18, 0x0000(t2)           # 00000000
lbl_800A9F90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800A9FA0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a2, 0x0068($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sw      a0, 0x0050($sp)
    jal     func_800A6930
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a1, s1, 0x000C             # a1 = 0000000C
    swc1    $f0, 0x005C($sp)
    sw      a1, 0x004C($sp)
    jal     func_800A6930
    lw      a0, 0x0050($sp)
    addiu   a1, s1, 0x0018             # a1 = 00000018
    sw      a1, 0x0048($sp)
    lw      a0, 0x0050($sp)
    jal     func_800A6930
    swc1    $f0, 0x0058($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f14, 0x005C($sp)
    lwc1    $f12, 0x0058($sp)
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_800AA034
    c.lt.s  $f14, $f2
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_800AA034
    c.lt.s  $f14, $f2
    c.lt.s  $f2, $f0
    nop
    bc1t    lbl_800AA064
    nop
    c.lt.s  $f14, $f2
lbl_800AA034:
    addiu   a0, s1, 0x0024             # a0 = 00000024
    or      a1, s0, $zero              # a1 = 00000000
    bc1f    lbl_800AA06C
    nop
    c.lt.s  $f12, $f2
    nop
    bc1f    lbl_800AA06C
    nop
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_800AA06C
    nop
lbl_800AA064:
    beq     $zero, $zero, lbl_800AA30C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800AA06C:
    jal     func_800A6930
    sw      a0, 0x0050($sp)
    addiu   a1, s0, 0x000C             # a1 = 0000000C
    swc1    $f0, 0x005C($sp)
    sw      a1, 0x0044($sp)
    jal     func_800A6930
    lw      a0, 0x0050($sp)
    addiu   a1, s0, 0x0018             # a1 = 00000018
    sw      a1, 0x0040($sp)
    lw      a0, 0x0050($sp)
    jal     func_800A6930
    swc1    $f0, 0x0058($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f4, 0x005C($sp)
    lwc1    $f12, 0x0058($sp)
    lwc1    $f6, 0x005C($sp)
    c.lt.s  $f2, $f4
    nop
    bc1fl   lbl_800AA0E0
    c.lt.s  $f6, $f2
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_800AA0E0
    c.lt.s  $f6, $f2
    c.lt.s  $f2, $f0
    nop
    bc1t    lbl_800AA110
    nop
    c.lt.s  $f6, $f2
lbl_800AA0E0:
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    bc1fl   lbl_800AA11C
    lwc1    $f8, 0x0028(s1)            # 00000028
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800AA11C
    lwc1    $f8, 0x0028(s1)            # 00000028
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800AA11C
    lwc1    $f8, 0x0028(s1)            # 00000028
lbl_800AA110:
    beq     $zero, $zero, lbl_800AA30C
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x0028(s1)            # 00000028
lbl_800AA11C:
    lw      a3, 0x0024(s1)             # 00000024
    lw      t6, 0x0044($sp)
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lw      t7, 0x0068($sp)
    lw      a2, 0x0048($sp)
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x0030(s1)           # 00000030
    sw      $zero, 0x0028($sp)
    sw      s0, 0x001C($sp)
    sw      t6, 0x0020($sp)
    sw      t7, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f16, 0x0018($sp)
    beq     v0, $zero, lbl_800AA164
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA164:
    lwc1    $f18, 0x0028(s1)           # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    lw      t8, 0x0044($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    lw      t9, 0x0040($sp)
    lw      t0, 0x0068($sp)
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0030(s1)            # 00000030
    sw      $zero, 0x0028($sp)
    lw      a1, 0x004C($sp)
    lw      a2, 0x0048($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0020($sp)
    sw      t0, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f6, 0x0018($sp)
    beq     v0, $zero, lbl_800AA1B8
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA1B8:
    lwc1    $f8, 0x0028(s1)            # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    lw      t1, 0x0040($sp)
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lw      t2, 0x0068($sp)
    lw      a1, 0x004C($sp)
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x0030(s1)           # 00000030
    sw      $zero, 0x0028($sp)
    sw      s0, 0x0020($sp)
    lw      a2, 0x0048($sp)
    sw      t1, 0x001C($sp)
    sw      t2, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f16, 0x0018($sp)
    beq     v0, $zero, lbl_800AA208
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA208:
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      t3, 0x004C($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lw      t4, 0x0068($sp)
    lw      a1, 0x0044($sp)
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0030(s0)            # 00000030
    sw      $zero, 0x0028($sp)
    sw      s1, 0x001C($sp)
    lw      a2, 0x0040($sp)
    sw      t3, 0x0020($sp)
    sw      t4, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f6, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800AA25C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA25C:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      t5, 0x004C($sp)
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      t6, 0x0048($sp)
    lw      t7, 0x0068($sp)
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x0030(s0)           # 00000030
    sw      $zero, 0x0028($sp)
    lw      a1, 0x0044($sp)
    lw      a2, 0x0040($sp)
    sw      t5, 0x001C($sp)
    sw      t6, 0x0020($sp)
    sw      t7, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f16, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800AA2B4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA2B4:
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      t8, 0x0048($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lw      t9, 0x0068($sp)
    lw      a1, 0x0044($sp)
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0030(s0)            # 00000030
    sw      $zero, 0x0028($sp)
    sw      s1, 0x0020($sp)
    lw      a2, 0x0040($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0024($sp)
    jal     func_800A80D0
    swc1    $f6, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_800AA30C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800AA30C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800AA30C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_800AA320:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    nop
    lh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0004(a0)             # 00000004
    lh      v0, 0x0006(a0)             # 00000006
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    multu   v0, v0
    cvt.s.w $f6, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    cvt.s.w $f10, $f8
    mflo    t8
    sub.s   $f0, $f6, $f12
    mtc1    t8, $f16                   # $f16 = 0.00
    sub.s   $f2, $f10, $f14
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    cvt.s.w $f18, $f16
    add.s   $f8, $f4, $f6
    c.le.s  $f8, $f18
    nop
    bc1f    lbl_800AA38C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA38C:
    jr      $ra
    nop


func_800AA394:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    nop
    lh      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0002(a0)             # 00000002
    lh      v0, 0x0006(a0)             # 00000006
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    multu   v0, v0
    cvt.s.w $f6, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    cvt.s.w $f10, $f8
    mflo    t8
    sub.s   $f0, $f6, $f12
    mtc1    t8, $f16                   # $f16 = 0.00
    sub.s   $f2, $f10, $f14
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    cvt.s.w $f18, $f16
    add.s   $f8, $f4, $f6
    c.le.s  $f8, $f18
    nop
    bc1f    lbl_800AA400
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA400:
    jr      $ra
    nop


func_800AA408:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    nop
    lh      t6, 0x0002(a0)             # 00000002
    lh      t7, 0x0004(a0)             # 00000004
    lh      v0, 0x0006(a0)             # 00000006
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    multu   v0, v0
    cvt.s.w $f6, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    cvt.s.w $f10, $f8
    mflo    t8
    sub.s   $f0, $f6, $f12
    mtc1    t8, $f16                   # $f16 = 0.00
    sub.s   $f2, $f10, $f14
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    cvt.s.w $f18, $f16
    add.s   $f8, $f4, $f6
    c.le.s  $f8, $f18
    nop
    bc1f    lbl_800AA474
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800AA474:
    jr      $ra
    nop
    nop


func_800AA480:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     v1, 0x8010                 # v1 = 80100000
    c.eq.s  $f14, $f4
    nop
    bc1fl   lbl_800AA4A4
    div.s   $f6, $f12, $f14
    beq     $zero, $zero, lbl_800AA4EC
    lhu     v1, -0x1A60(v1)            # 800FE5A0
    div.s   $f6, $f12, $f14
lbl_800AA4A4:
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f8                   # $f8 = 1024.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     v1, 0x8010                 # v1 = 80100000
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    slti    $at, v0, 0x0401
    bne     $at, $zero, lbl_800AA4E4
    sll     t7, v0,  1
    lui     v1, 0x8010                 # v1 = 80100000
    beq     $zero, $zero, lbl_800AA4EC
    lhu     v1, -0x1A60(v1)            # 800FE5A0
lbl_800AA4E4:
    addu    v1, v1, t7
    lhu     v1, -0x1A60(v1)            # 800FE5A0
lbl_800AA4EC:
    or      v0, v1, $zero              # v0 = 80100000
    jr      $ra
    nop


func_800AA4F8:
# Arctan2
# F12 = x
# F14 = y
# V0 = s16 Rotation
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    mov.s   $f24, $f12
    mov.s   $f26, $f14
    sw      $ra, 0x0034($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    c.le.s  $f0, $f26
    nop
    bc1fl   lbl_800AA5BC
    c.lt.s  $f24, $f0
    c.le.s  $f0, $f24
    nop
    bc1fl   lbl_800AA57C
    neg.s   $f20, $f24
    c.le.s  $f26, $f24
    nop
    bc1fl   lbl_800AA564
    mov.s   $f12, $f24
    mov.s   $f12, $f26
    jal     func_800AA480
    mov.s   $f14, $f24
    beq     $zero, $zero, lbl_800AA64C
    or      v1, v0, $zero              # v1 = 00000000
    mov.s   $f12, $f24
lbl_800AA564:
    jal     func_800AA480
    mov.s   $f14, $f26
    addiu   t6, $zero, 0x4000          # t6 = 00004000
    beq     $zero, $zero, lbl_800AA64C
    subu    v1, t6, v0
    neg.s   $f20, $f24
lbl_800AA57C:
    c.lt.s  $f20, $f26
    nop
    bc1fl   lbl_800AA5A4
    mov.s   $f12, $f26
    mov.s   $f12, $f20
    jal     func_800AA480
    mov.s   $f14, $f26
    beq     $zero, $zero, lbl_800AA64C
    addiu   v1, v0, 0x4000             # v1 = 00004000
    mov.s   $f12, $f26
lbl_800AA5A4:
    jal     func_800AA480
    mov.s   $f14, $f20
    ori     t7, $zero, 0x8000          # t7 = 00008000
    beq     $zero, $zero, lbl_800AA64C
    subu    v1, t7, v0
    c.lt.s  $f24, $f0
lbl_800AA5BC:
    nop
    bc1fl   lbl_800AA614
    neg.s   $f22, $f26
    neg.s   $f20, $f24
    neg.s   $f22, $f26
    c.le.s  $f22, $f20
    nop
    bc1fl   lbl_800AA5FC
    mov.s   $f12, $f20
    mov.s   $f12, $f22
    jal     func_800AA480
    mov.s   $f14, $f20
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     $zero, $zero, lbl_800AA64C
    addu    v1, v0, $at
    mov.s   $f12, $f20
lbl_800AA5FC:
    jal     func_800AA480
    mov.s   $f14, $f22
    ori     t8, $zero, 0xC000          # t8 = 0000C000
    beq     $zero, $zero, lbl_800AA64C
    subu    v1, t8, v0
    neg.s   $f22, $f26
lbl_800AA614:
    c.lt.s  $f24, $f22
    nop
    bc1fl   lbl_800AA640
    mov.s   $f12, $f22
    mov.s   $f12, $f24
    jal     func_800AA480
    mov.s   $f14, $f22
    ori     $at, $zero, 0xC000         # $at = 0000C000
    beq     $zero, $zero, lbl_800AA64C
    addu    v1, v0, $at
    mov.s   $f12, $f22
lbl_800AA640:
    jal     func_800AA480
    mov.s   $f14, $f24
    subu    v1, $zero, v0
lbl_800AA64C:
    sll     v0, v1, 16
    sra     v0, v0, 16
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_800AA670:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_800AA4F8
    nop
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7120($at)          # 80108EE0
    cvt.s.w $f6, $f4
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f6, $f8
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    nop
    nop
    nop
