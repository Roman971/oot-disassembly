# "Vector Util" part of the code file
#
# Generic functions to manipulate vectors.
#
# Starts at VRAM: 80067580 / VROM: ADD4E0
#

.section .text
func_80067580:
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f16, 0x0008(a0)           # 00000008
    lwc1    $f18, 0x0008(a1)           # 00000008
    sub.s   $f12, $f8, $f10
    mul.s   $f4, $f2, $f2
    sub.s   $f14, $f16, $f18
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f14
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_800675C4:
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0004(a1)           # 00000004
    lwc1    $f10, 0x0004(a0)           # 00000004
    lwc1    $f2, 0x0000(a2)            # 00000000
    sub.s   $f18, $f10, $f16
    mul.s   $f10, $f2, $f2
    swc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f12, 0x0004(a2)           # 00000004
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f12, $f12
    swc1    $f8, 0x0008(a2)            # 00000008
    lwc1    $f14, 0x0008(a2)           # 00000008
    mul.s   $f4, $f14, $f14
    add.s   $f18, $f10, $f16
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_80067620:
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x0008(a1)           # 00000008
    sub.s   $f2, $f4, $f6
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f2
    nop
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    jr      $ra
    nop


func_80067654:
    abs.s   $f0, $f12
    c.le.s  $f14, $f0
    nop
    bc1fl   lbl_80067674
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_80067698
    mov.s   $f2, $f12
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80067674:
    nop
    c.le.s  $f4, $f12
    nop
    bc1fl   lbl_80067694
    neg.s   $f0, $f14
    beq     $zero, $zero, lbl_80067694
    mov.s   $f0, $f14
    neg.s   $f0, $f14
lbl_80067694:
    mov.s   $f2, $f0
lbl_80067698:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_800676A4:
    abs.s   $f0, $f12
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_800676C4
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_800676E8
    mov.s   $f2, $f12
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_800676C4:
    nop
    c.le.s  $f4, $f12
    nop
    bc1fl   lbl_800676E4
    neg.s   $f0, $f14
    beq     $zero, $zero, lbl_800676E4
    mov.s   $f0, $f14
    neg.s   $f0, $f14
lbl_800676E4:
    mov.s   $f2, $f0
lbl_800676E8:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_800676F4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f4, 0x0008(a2)            # 00000008
    sub.s   $f16, $f8, $f10
    mul.s   $f8, $f2, $f2
    lui     $at, 0x8010                # $at = 80100000
    sub.s   $f18, $f4, $f6
    mul.s   $f10, $f16, $f16
    lwc1    $f14, 0x7B00($at)          # 80107B00
    swc1    $f16, 0x0030($sp)
    mul.s   $f6, $f18, $f18
    swc1    $f18, 0x0034($sp)
    swc1    $f2, 0x002C($sp)
    add.s   $f4, $f8, $f10
    add.s   $f0, $f4, $f6
    jal     func_80067654
    sqrt.s  $f12, $f0
    lwc1    $f2, 0x002C($sp)
    lwc1    $f16, 0x0030($sp)
    lwc1    $f18, 0x0034($sp)
    div.s   $f8, $f2, $f0
    addiu   t6, $sp, 0x0020            # t6 = FFFFFFE8
    lw      v0, 0x0038($sp)
    div.s   $f10, $f16, $f0
    swc1    $f8, 0x0020($sp)
    div.s   $f4, $f18, $f0
    swc1    $f10, 0x0024($sp)
    swc1    $f4, 0x0028($sp)
    lw      t8, 0x0000(t6)             # FFFFFFE8
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFEC
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFF0
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_800677A4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0004(s0)             # 00000004
    swc1    $f0, 0x002C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0006(s0)             # 00000006
    swc1    $f0, 0x0024($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0004(s0)             # 00000004
    lh      a0, 0x0006(s0)             # 00000006
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0030($sp)
    lwc1    $f2, 0x0030($sp)
    lwc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f16, 0x002C($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFF4
    mul.s   $f6, $f4, $f2
    lw      v0, 0x0040($sp)
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0034($sp)
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f8, 0x0024($sp)
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0038($sp)
    lwc1    $f4, 0x0000(s0)            # 00000000
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x003C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80067850:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    addiu   t7, $zero, 0x3FFF          # t7 = 00003FFF
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    swc1    $f4, 0x0018($sp)
    lh      t6, 0x0004(a2)             # 00000004
    subu    t8, t7, t6
    sh      t8, 0x001C($sp)
    lh      t9, 0x0006(a2)             # 00000006
    jal     func_800677A4
    sh      t9, 0x001E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80067894:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    mtc1    $zero, $f18                # $f18 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    lwc1    $f12, 0x0000(a1)           # 00000000
    lwc1    $f2, 0x0008(a1)            # 00000008
    mul.s   $f4, $f12, $f12
    nop
    mul.s   $f6, $f2, $f2
    add.s   $f16, $f4, $f6
    sqrt.s  $f0, $f16
    c.eq.s  $f0, $f18
    swc1    $f0, 0x0020($sp)
    lwc1    $f12, 0x0020($sp)
    bc1f    lbl_800678F0
    nop
    lwc1    $f8, 0x0004(a1)            # 00000004
    c.eq.s  $f18, $f8
    nop
    bc1fl   lbl_800678F4
    lwc1    $f14, 0x0004(a1)           # 00000004
    beq     $zero, $zero, lbl_80067940
    sh      $zero, 0x002C($sp)
lbl_800678F0:
    lwc1    $f14, 0x0004(a1)           # 00000004
lbl_800678F4:
    swc1    $f16, 0x0024($sp)
    jal     func_800CD76C
    sw      a1, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7B04($at)          # 80107B04
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7B08($at)           # 80107B08
    mul.s   $f4, $f0, $f10
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a1, 0x0034($sp)
    lwc1    $f16, 0x0024($sp)
    mul.s   $f8, $f4, $f6
    add.s   $f4, $f8, $f10
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x002C($sp)
lbl_80067940:
    lwc1    $f2, 0x0004(a1)            # 00000004
    mul.s   $f8, $f2, $f2
    add.s   $f0, $f8, $f16
    sqrt.s  $f0, $f0
    swc1    $f0, 0x0028($sp)
    lwc1    $f12, 0x0000(a1)           # 00000000
    c.eq.s  $f18, $f12
    nop
    bc1f    lbl_80067984
    nop
    lwc1    $f10, 0x0008(a1)           # 00000008
    c.eq.s  $f18, $f10
    nop
    bc1f    lbl_80067984
    nop
    beq     $zero, $zero, lbl_800679C0
    sh      $zero, 0x002E($sp)
lbl_80067984:
    jal     func_800CD76C
    lwc1    $f14, 0x0008(a1)           # 00000008
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7B0C($at)           # 80107B0C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7B10($at)           # 80107B10
    mul.s   $f6, $f0, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f10, $f6, $f8
    add.s   $f6, $f10, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x002E($sp)
lbl_800679C0:
    addiu   t1, $sp, 0x0028            # t1 = FFFFFFF8
    lw      t3, 0x0000(t1)             # FFFFFFF8
    lw      t0, 0x0030($sp)
    sw      t3, 0x0000(t0)             # 00000000
    lw      t2, 0x0004(t1)             # FFFFFFFC
    sw      t2, 0x0004(t0)             # 00000004
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_800679E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80067894
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF8
    lh      t6, 0x001C($sp)
    addiu   t7, $zero, 0x3FFF          # t7 = 00003FFF
    addiu   t9, $sp, 0x0018            # t9 = FFFFFFF8
    subu    t8, t7, t6
    sh      t8, 0x001C($sp)
    lw      v0, 0x0020($sp)
    lw      t1, 0x0000(t9)             # FFFFFFF8
    sw      t1, 0x0000(v0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFFC
    sw      t0, 0x0004(v0)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80067A30:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f6, 0x0000(a3)            # 00000000
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x001C($sp)
    lwc1    $f16, 0x0004(a3)           # 00000004
    lwc1    $f10, 0x0004(a2)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f6, 0x0008(a3)            # 00000008
    lwc1    $f4, 0x0008(a2)            # 00000008
    sub.s   $f8, $f4, $f6
    jal     func_80067894
    swc1    $f8, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80067A84:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f6, 0x0000(a3)            # 00000000
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x001C($sp)
    lwc1    $f16, 0x0004(a3)           # 00000004
    lwc1    $f10, 0x0004(a2)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f6, 0x0008(a3)            # 00000008
    lwc1    $f4, 0x0008(a2)            # 00000008
    sub.s   $f8, $f4, $f6
    jal     func_800679E8
    swc1    $f8, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80067AD8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lwc1    $f4, 0x0008(a2)            # 00000008
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    sw      a2, 0x0030($sp)
    sw      a1, 0x002C($sp)
    sub.s   $f12, $f4, $f6
    jal     func_800CD76C
    sub.s   $f14, $f8, $f10
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    swc1    $f0, 0x001C($sp)
    lwc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f18, 0x0000(a1)           # 00000000
    lwc1    $f4, 0x0008(a2)            # 00000008
    lwc1    $f16, 0x0000(a2)           # 00000000
    sub.s   $f14, $f4, $f6
    jal     func_800CD76C
    sub.s   $f12, $f16, $f18
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x0020($sp)
    addiu   t6, $sp, 0x001C            # t6 = FFFFFFF4
    swc1    $f8, 0x0024($sp)
    lw      v0, 0x0028($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80067B68:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    jal     func_80067AD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7B14($at)           # 80107B14
    lwc1    $f4, 0x0024($sp)
    lwc1    $f8, 0x0028($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f6, $f4, $f0
    addiu   t6, $sp, 0x0018            # t6 = FFFFFFE8
    swc1    $f16, 0x0020($sp)
    mul.s   $f10, $f8, $f0
    lw      v0, 0x0030($sp)
    swc1    $f6, 0x0018($sp)
    swc1    $f10, 0x001C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFE8
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFEC
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFF0
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80067BD0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    jal     func_80067AD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7B18($at)           # 80107B18
    lwc1    $f4, 0x0024($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x7B1C($at)           # 80107B1C
    mul.s   $f6, $f4, $f0
    lwc1    $f18, 0x0028($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    sh      $zero, 0x0020($sp)
    addiu   t0, $sp, 0x001C            # t0 = FFFFFFEC
    lw      v0, 0x0030($sp)
    mul.s   $f8, $f6, $f2
    nop
    mul.s   $f4, $f18, $f0
    add.s   $f10, $f8, $f12
    mul.s   $f6, $f4, $f2
    trunc.w.s $f16, $f10
    add.s   $f8, $f6, $f12
    mfc1    t7, $f16
    trunc.w.s $f10, $f8
    sh      t7, 0x001C($sp)
    mfc1    t9, $f10
    nop
    sh      t9, 0x001E($sp)
    lw      t2, 0x0000(t0)             # FFFFFFEC
    swl     t2, 0x0000(v0)             # 00000000
    swr     t2, 0x0003(v0)             # 00000003
    lhu     t2, 0x0004(t0)             # FFFFFFF0
    sh      t2, 0x0004(v0)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop
