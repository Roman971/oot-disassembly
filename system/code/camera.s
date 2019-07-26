# "Camera" part of the code file
#
# Handles and monitors the player camera.
#
# General Documentation about the camera:
# https://wiki.cloudmodding.com/oot/Cameras
#
# Starts at VRAM: 800355F0 / VROM: AAB550
#

.section .text
func_800355F0:
    abs.s   $f0, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8003561C
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    b       lbl_80035694
    mov.s   $f0, $f2
    mtc1    $at, $f4                   # $f4 = 1.00
lbl_8003561C:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6B00($at)           # 80106B00
    lui     $at, 0x8010                # $at = 80100000
    sub.s   $f16, $f4, $f6
    mul.s   $f18, $f12, $f16
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_8003565C
    nop
    mul.s   $f8, $f14, $f14
    nop
    mul.s   $f10, $f8, $f16
    nop
    mul.s   $f4, $f18, $f18
    b       lbl_80035690
    div.s   $f2, $f10, $f4
lbl_8003565C:
    lwc1    $f6, 0x6B04($at)           # 80106B04
    sub.s   $f16, $f12, $f0
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f14, $f6, $f12
    lwc1    $f10, 0x6B08($at)          # 80106B08
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f16, $f16
    nop
    mul.s   $f4, $f8, $f10
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f6, $f14, $f14
    div.s   $f8, $f4, $f6
    sub.s   $f2, $f10, $f8
lbl_80035690:
    mov.s   $f0, $f2
lbl_80035694:
    jr      $ra
    nop


func_8003569C:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    sub.s   $f2, $f12, $f14
    lwc1    $f4, 0x000C($sp)
    lwc1    $f6, 0x0008($sp)
    abs.s   $f0, $f2
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_800356D4
    mov.s   $f16, $f12
    mul.s   $f8, $f2, $f6
    b       lbl_800356D4
    add.s   $f16, $f14, $f8
    mov.s   $f16, $f12
lbl_800356D4:
    mov.s   $f0, $f16
    jr      $ra
    nop


func_800356E0:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    sub.s   $f2, $f12, $f14
    lwc1    $f4, 0x000C($sp)
    lwc1    $f6, 0x0008($sp)
    abs.s   $f0, $f2
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80035718
    mov.s   $f12, $f14
    mul.s   $f8, $f2, $f6
    b       lbl_80035718
    add.s   $f12, $f14, $f8
    mov.s   $f12, $f14
lbl_80035718:
    mov.s   $f0, $f12
    jr      $ra
    nop


func_80035724:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a0, a0, 16
    sra     a1, a1, 16
    sra     a3, a3, 16
    subu    v0, a0, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80035768
    subu    v1, $zero, v0
    b       lbl_80035768
    or      v1, v0, $zero              # v1 = 00000000
lbl_80035768:
    slt     $at, v1, a3
    bne     $at, $zero, lbl_800357A8
    or      v1, a0, $zero              # v1 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f12
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    b       lbl_800357A8
    addu    v1, a1, t9
lbl_800357A8:
    sll     v0, v1, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_800357B8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a0, a0, 16
    sra     a1, a1, 16
    sra     a3, a3, 16
    subu    v0, a0, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_800357FC
    subu    v1, $zero, v0
    b       lbl_800357FC
    or      v1, v0, $zero              # v1 = 00000000
lbl_800357FC:
    slt     $at, v1, a3
    bne     $at, $zero, lbl_8003583C
    or      v1, a1, $zero              # v1 = 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f12
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    b       lbl_8003583C
    addu    v1, a1, t9
lbl_8003583C:
    sll     v0, v1, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_8003584C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0020($sp)
    lwc1    $f14, 0x0000(s0)           # 00000000
    lw      a2, 0x002C($sp)
    lw      a3, 0x0030($sp)
    jal     func_8003569C
    lwc1    $f12, 0x0000(t6)           # 00000000
    swc1    $f0, 0x0000(s0)            # 00000000
    lw      t7, 0x0020($sp)
    lw      a3, 0x0030($sp)
    lw      a2, 0x0028($sp)
    lwc1    $f14, 0x0004(s0)           # 00000004
    jal     func_8003569C
    lwc1    $f12, 0x0004(t7)           # 00000004
    swc1    $f0, 0x0004(s0)            # 00000004
    lw      t8, 0x0020($sp)
    lw      a3, 0x0030($sp)
    lw      a2, 0x002C($sp)
    lwc1    $f14, 0x0008(s0)           # 00000008
    jal     func_8003569C
    lwc1    $f12, 0x0008(t8)           # 00000008
    swc1    $f0, 0x0008(s0)            # 00000008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800358D0:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6B0C($at)           # 80106B0C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f0, 0x00CC(a0)            # 000000CC
    swc1    $f0, 0x00D0(a0)            # 000000D0
    swc1    $f0, 0x00D4(a0)            # 000000D4
    swc1    $f4, 0x00C8(a0)            # 000000C8
    swc1    $f6, 0x00C4(a0)            # 000000C4
    swc1    $f8, 0x00C0(a0)            # 000000C0
    jr      $ra
    nop


func_80035910:
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f0                   # $f0 = 1800.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x6B10($at)           # 80106B10
    swc1    $f0, 0x00C0(a0)            # 000000C0
    swc1    $f0, 0x00C8(a0)            # 000000C8
    swc1    $f0, 0x00C4(a0)            # 000000C4
    swc1    $f2, 0x00CC(a0)            # 000000CC
    swc1    $f2, 0x00D0(a0)            # 000000D0
    swc1    $f2, 0x00D4(a0)            # 000000D4
    jr      $ra
    nop


func_80035940:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    lh      t6, 0x0000(a1)             # 00000000
    addiu   t9, $sp, 0x0004            # t9 = FFFFFFF4
    or      v0, a0, $zero              # v0 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0004($sp)
    lh      t7, 0x0002(a1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0008($sp)
    lh      t8, 0x0004(a1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x000C($sp)
    lw      t1, 0x0000(t9)             # FFFFFFF4
    sw      t1, 0x0000(a0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFF8
    sw      t0, 0x0004(a0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFFC
    sw      t1, 0x0008(a0)             # 00000008
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_800359A8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFE8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80067850
    sw      a3, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lwc1    $f6, 0x0018($sp)
    lwc1    $f16, 0x001C($sp)
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    lw      v0, 0x0030($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020($sp)
    swc1    $f8, 0x0024($sp)
    lwc1    $f10, 0x0004(a3)           # 00000004
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80035A28:
    mtc1    a3, $f12                   # $f12 = 0.00
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    lwc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f4, 0x0000(a1)            # 00000000
    addiu   t6, $sp, 0x0004            # t6 = FFFFFFF4
    mul.s   $f8, $f6, $f12
    or      v0, a0, $zero              # v0 = 00000000
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0004($sp)
    lwc1    $f18, 0x0004(a2)           # 00000004
    lwc1    $f16, 0x0004(a1)           # 00000004
    mul.s   $f6, $f18, $f12
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x0008($sp)
    lwc1    $f10, 0x0008(a2)           # 00000008
    lwc1    $f8, 0x0008(a1)            # 00000008
    mul.s   $f18, $f10, $f12
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x000C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(a0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(a0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(a0)             # 00000008
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_80035A94:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0030($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x007C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x008C(a3)             # 0000008C
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFC4
    lw      a1, 0x007C($sp)
    addiu   t7, t6, 0x07C0             # t7 = 000007C0
    sw      t7, 0x0074($sp)
    jal     func_80067A84
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lwc1    $f4, 0x003C($sp)
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFE4
    lw      a1, 0x007C($sp)
    add.s   $f8, $f4, $f6
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFC4
    jal     func_800359A8
    swc1    $f8, 0x003C($sp)
    addiu   t8, s0, 0x0018             # t8 = 00000018
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, s0, 0x0024             # t3 = 00000024
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0074($sp)
    lw      a1, 0x007C($sp)
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFE4
    jal     func_8003079C
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    bne     v0, $zero, lbl_80035C1C
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFD8
    lw      a1, 0x007C($sp)
    jal     func_800676F4
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f10, 0x0050($sp)
    lw      t5, 0x0000(s0)             # 00000000
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    neg.s   $f16, $f10
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0054($sp)
    mtc1    $at, $f16                  # $f16 = 5.00
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFD0
    neg.s   $f4, $f18
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFCC
    swc1    $f4, 0x0010(s0)            # 00000010
    lwc1    $f6, 0x0058($sp)
    neg.s   $f8, $f6
    swc1    $f8, 0x0014(s0)            # 00000014
    sw      t5, 0x0000(a3)             # FFFFFFF0
    lw      t4, 0x0004(s0)             # 00000004
    sw      t4, 0x0004(a3)             # FFFFFFF4
    lw      t5, 0x0008(s0)             # 00000008
    sw      t5, 0x0008(a3)             # FFFFFFF8
    lwc1    $f10, 0x006C($sp)
    lw      a0, 0x0074($sp)
    add.s   $f18, $f10, $f16
    jal     func_8002F7B0
    swc1    $f18, 0x006C($sp)
    lwc1    $f2, 0x0004(s0)            # 00000004
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    sub.s   $f6, $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80035C04
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0010(s0)           # 00000010
    lwc1    $f6, 0x0008(s0)            # 00000008
    add.s   $f16, $f8, $f10
    lwc1    $f8, 0x0014(s0)            # 00000014
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f4, $f2, $f18
    swc1    $f16, 0x0000(s0)           # 00000000
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0004(s0)            # 00000004
    b       lbl_80035CA8
    swc1    $f10, 0x0008(s0)           # 00000008
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_80035C04:
    lw      t6, 0x0048($sp)
    add.s   $f18, $f0, $f16
    sw      t6, 0x0018(s0)             # 00000018
    lw      t7, 0x0044($sp)
    swc1    $f18, 0x006C($sp)
    sw      t7, 0x0024(s0)             # 00000024
lbl_80035C1C:
    lw      v1, 0x0018(s0)             # 00000018
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6B14($at)           # 80106B14
    lh      t8, 0x0008(v1)             # 00000008
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x000C(s0)            # 0000000C
    lh      t9, 0x000A(v1)             # 0000000A
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    lwc1    $f10, 0x000C(s0)           # 0000000C
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0010(s0)           # 00000010
    lh      t0, 0x000C(v1)             # 0000000C
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0010(s0)            # 00000010
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0014(s0)            # 00000014
    lwc1    $f16, 0x0068($sp)
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x0014(s0)           # 00000014
    swc1    $f18, 0x0000(s0)           # 00000000
    lwc1    $f6, 0x006C($sp)
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(s0)            # 00000004
    lwc1    $f16, 0x0070($sp)
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0008(s0)           # 00000008
    lw      v0, 0x0044($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_80035CA8:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80035CBC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      a2, 0x0050($sp)
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFD8
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0050($sp)
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(a2)             # FFFFFFD8
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a2)             # FFFFFFDC
    lw      t8, 0x0008(t6)             # 00000008
    jal     func_80035A94
    sw      t8, 0x0008(a2)             # FFFFFFE0
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFD8
    lw      t2, 0x0000(t0)             # FFFFFFD8
    lw      t9, 0x0050($sp)
    sw      t2, 0x0000(t9)             # 00000000
    lw      t1, 0x0004(t0)             # FFFFFFDC
    sw      t1, 0x0004(t9)             # 00000004
    lw      t2, 0x0008(t0)             # FFFFFFE0
    sw      t2, 0x0008(t9)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80035D18:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0088($sp)
    lw      t6, 0x0088($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFB8
    or      a1, s1, $zero              # a1 = 00000000
    lw      t7, 0x008C(t6)             # 0000008C
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t8, t7, 0x07C0             # t8 = 000007C0
    jal     func_80067A84
    sw      t8, 0x0084($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lwc1    $f4, 0x0040($sp)
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFE4
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f8, $f4, $f6
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFB8
    jal     func_800359A8
    swc1    $f8, 0x0040($sp)
    addiu   t9, s0, 0x0018             # t9 = 00000018
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, s0, 0x0024             # t4 = 00000024
    sw      t4, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x0084($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFE4
    jal     func_8003079C
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFF0
    bne     v0, $zero, lbl_80035EA8
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFD8
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800676F4
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f10, 0x0060($sp)
    lw      t6, 0x0000(s0)             # 00000000
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFF0
    neg.s   $f16, $f10
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0064($sp)
    mtc1    $at, $f16                  # $f16 = 5.00
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFC4
    neg.s   $f4, $f18
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFC0
    swc1    $f4, 0x0010(s0)            # 00000010
    lwc1    $f6, 0x0068($sp)
    neg.s   $f8, $f6
    swc1    $f8, 0x0014(s0)            # 00000014
    sw      t6, 0x0000(a3)             # FFFFFFF0
    lw      t5, 0x0004(s0)             # 00000004
    sw      t5, 0x0004(a3)             # FFFFFFF4
    lw      t6, 0x0008(s0)             # 00000008
    sw      t6, 0x0008(a3)             # FFFFFFF8
    lwc1    $f10, 0x007C($sp)
    lw      a0, 0x0084($sp)
    add.s   $f18, $f10, $f16
    jal     func_8002F7B0
    swc1    $f18, 0x007C($sp)
    lwc1    $f2, 0x0004(s0)            # 00000004
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    sub.s   $f6, $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80035E90
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0010(s0)           # 00000010
    lwc1    $f6, 0x0008(s0)            # 00000008
    add.s   $f16, $f8, $f10
    lwc1    $f8, 0x0014(s0)            # 00000014
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f4, $f2, $f18
    swc1    $f16, 0x0000(s0)           # 00000000
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0004(s0)            # 00000004
    b       lbl_800360BC
    swc1    $f10, 0x0008(s0)           # 00000008
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_80035E90:
    lw      t7, 0x004C($sp)
    add.s   $f18, $f0, $f16
    sw      t7, 0x0018(s0)             # 00000018
    lw      t8, 0x0048($sp)
    swc1    $f18, 0x007C($sp)
    sw      t8, 0x0024(s0)             # 00000024
lbl_80035EA8:
    lw      v0, 0x0018(s0)             # 00000018
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6B18($at)           # 80106B18
    lh      t9, 0x0008(v0)             # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x000C(s0)            # 0000000C
    lh      t0, 0x000A(v0)             # 0000000A
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0010(s0)           # 00000010
    lh      t1, 0x000C(v0)             # 0000000C
    lwc1    $f2, 0x0010(s0)            # 00000010
    mtc1    t1, $f4                    # $f4 = 0.00
    c.lt.s  $f10, $f2
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    bc1t    lbl_80035F28
    swc1    $f8, 0x0014(s0)            # 00000014
    lwc1    $f16, 0x6B1C($at)          # 80106B1C
    lui     v0, 0x8012                 # v0 = 80120000
    c.lt.s  $f2, $f16
    nop
    bc1f    lbl_80035F58
    nop
lbl_80035F28:
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lwc1    $f4, 0x0078($sp)
    lwc1    $f16, 0x0014(s0)           # 00000014
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f8, 0x007C($sp)
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0004(s0)           # 00000004
    lwc1    $f18, 0x0080($sp)
    add.s   $f4, $f16, $f18
    b       lbl_800360B8
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_80035F58:
    lw      v0, -0x71E4(v0)            # 80118E1C
    beql    v0, $zero, lbl_800360BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t2, 0x0008(v0)             # 00000009
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFE4
    addiu   t7, $sp, 0x0078            # t7 = FFFFFFF0
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f0
    swc1    $f12, 0x0054($sp)
    lh      t3, 0x000A(v0)             # 0000000B
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f14, $f18, $f0
    swc1    $f14, 0x0058($sp)
    lh      t4, 0x000C(v0)             # 0000000D
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f0
    swc1    $f16, 0x005C($sp)
    lh      t5, 0x000E(v0)             # 0000000F
    mfc1    a2, $f16
    sw      t8, 0x001C($sp)
    mtc1    t5, $f18                   # $f18 = 0.00
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    cvt.s.w $f18, $f18
    sw      s1, 0x0010($sp)
    mfc1    a3, $f18
    jal     func_800A7FC8
    nop
    beq     v0, $zero, lbl_80036050
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFD8
    addiu   t9, $sp, 0x0054            # t9 = FFFFFFCC
    lw      t1, 0x0000(t9)             # FFFFFFCC
    lui     t2, 0x8012                 # t2 = 80120000
    sw      t1, 0x000C(s0)             # 0000000C
    lw      t0, 0x0004(t9)             # FFFFFFD0
    lwc1    $f6, 0x000C(s0)            # 0000000C
    sw      t0, 0x0010(s0)             # 00000010
    lw      t1, 0x0008(t9)             # FFFFFFD4
    lwc1    $f4, 0x0010(s0)            # 00000010
    sw      t1, 0x0014(s0)             # 00000014
    lw      t2, -0x71E4(t2)            # 80118E1C
    sw      t2, 0x0018(s0)             # 00000018
    lw      t3, 0x0088($sp)
    lh      t4, 0x0146(t3)             # 00000146
    sw      t4, 0x0024(s0)             # 00000024
    lwc1    $f8, 0x0078($sp)
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x0014(s0)            # 00000014
    swc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f16, 0x007C($sp)
    add.s   $f18, $f4, $f16
    swc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f8, 0x0080($sp)
    add.s   $f10, $f6, $f8
    b       lbl_800360B8
    swc1    $f10, 0x0008(s0)           # 00000008
lbl_80036050:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800676F4
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0060($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    neg.s   $f16, $f4
    lwc1    $f4, 0x0000(s0)            # 00000000
    swc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f18, 0x0064($sp)
    lwc1    $f16, 0x000C(s0)           # 0000000C
    neg.s   $f6, $f18
    add.s   $f18, $f4, $f16
    swc1    $f6, 0x0010(s0)            # 00000010
    lwc1    $f8, 0x0068($sp)
    lwc1    $f6, 0x0004(s0)            # 00000004
    lwc1    $f4, 0x0008(s0)            # 00000008
    neg.s   $f10, $f8
    lwc1    $f8, 0x0010(s0)            # 00000010
    swc1    $f10, 0x0014(s0)           # 00000014
    lwc1    $f16, 0x0014(s0)           # 00000014
    swc1    $f18, 0x0000(s0)           # 00000000
    add.s   $f10, $f6, $f8
    add.s   $f18, $f4, $f16
    swc1    $f10, 0x0004(s0)           # 00000004
    b       lbl_800360BC
    swc1    $f18, 0x0008(s0)           # 00000008
lbl_800360B8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800360BC:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_800360D0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      a2, 0x0050($sp)
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFD8
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0050($sp)
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(a2)             # FFFFFFD8
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a2)             # FFFFFFDC
    lw      t8, 0x0008(t6)             # 00000008
    jal     func_80035D18
    sw      t8, 0x0008(a2)             # FFFFFFE0
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFD8
    lw      t2, 0x0000(t0)             # FFFFFFD8
    lw      t9, 0x0050($sp)
    sw      t2, 0x0000(t9)             # 00000000
    lw      t1, 0x0004(t0)             # FFFFFFDC
    sw      t1, 0x0004(t9)             # 00000004
    lw      t2, 0x0008(t0)             # FFFFFFE0
    sw      t2, 0x0008(t9)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8003612C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0050($sp)
    addiu   t7, $sp, 0x0034            # t7 = FFFFFFE4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      a0, 0x008C(t6)             # 0000008C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $sp, 0x0038            # t1 = FFFFFFE8
    sw      $zero, 0x0034($sp)
    sw      t1, 0x0024($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a1, 0x0054($sp)
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFF0
    jal     func_8003079C
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_800361B4
    lw      a0, 0x0034($sp)
    jal     func_8002B7BC
    lw      a1, 0x0054($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_800361B8
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_800361B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800361B4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800361B8:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800361C8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    sw      a3, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x0030($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF8
    lw      a2, 0x003C($sp)
    lw      a0, 0x008C(t6)             # 0000008C
    jal     func_8002F454
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    mov.s   $f2, $f0
    lw      t7, 0x0028($sp)
    c.eq.s  $f0, $f4
    nop
    bc1fl   lbl_80036240
    lh      t8, 0x0008(t7)             # 00000008
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f0, 0x0000(s0)            # 00000000
    swc1    $f0, 0x0008(s0)            # 00000008
    b       lbl_80036294
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t8, 0x0008(t7)             # 00000008
lbl_80036240:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6B20($at)           # 80106B20
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x0000(s0)           # 00000000
    lw      t9, 0x0028($sp)
    lh      t0, 0x000A(t9)             # 0000000A
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0004(s0)            # 00000004
    lw      t1, 0x0028($sp)
    lh      t2, 0x000C(t1)             # 0000000C
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x0008(s0)           # 00000008
lbl_80036294:
    mov.s   $f0, $f2
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800362AC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFF4
    lw      t6, 0x003C($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lw      t8, 0x0000(t6)             # 00000000
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFE4
    sw      t8, 0x0000(a2)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a2)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(a2)             # FFFFFFFC
    lwc1    $f4, 0x0030($sp)
    add.s   $f8, $f4, $f6
    jal     func_800361C8
    swc1    $f8, 0x0030($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80036308:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s7, 0x0058($sp)
    sw      s4, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    or      s2, a3, $zero              # s2 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s6, 0x0054($sp)
    sw      s5, 0x0050($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f28                  # $f28 = -32000.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    lw      s1, 0x008C(s4)             # 0000008C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f22, 0x6B24($at)          # 80106B24
    addiu   s0, $zero, 0x0003          # s0 = 00000003
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    addiu   s5, $sp, 0x006C            # s5 = FFFFFFFC
    addiu   s1, s1, 0x07C0             # s1 = 000007C0
    or      a0, s1, $zero              # a0 = 000007C0
lbl_8003638C:
    or      a1, s5, $zero              # a1 = FFFFFFFC
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_8002F7B0
    or      a3, s3, $zero              # a3 = 00000000
    c.eq.s  $f0, $f28
    mov.s   $f20, $f0
    lw      t6, 0x006C($sp)
    or      a0, s1, $zero              # a0 = 000007C0
    bc1t    lbl_800363EC
    lw      a1, 0x006C($sp)
    lwc1    $f4, 0x0104(s4)            # 00000104
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_8003640C
    nop
    lh      t7, 0x000A(t6)             # 0000000A
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f22
    c.lt.s  $f24, $f10
    nop
    bc1t    lbl_8003640C
    nop
lbl_800363EC:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mov.s   $f20, $f28
    swc1    $f0, 0x0000(s7)            # 00000000
    swc1    $f0, 0x0008(s7)            # 00000008
    b       lbl_80036488
    swc1    $f16, 0x0004(s7)           # 00000004
lbl_8003640C:
    jal     func_800343D4
    lw      a2, 0x0000(s2)             # 00000000
    bne     v0, s6, lbl_80036428
    addiu   s0, s0, 0xFFFF             # s0 = 00000002
    sub.s   $f18, $f20, $f26
    b       lbl_80036480
    swc1    $f18, 0x0004(s3)           # 00000004
lbl_80036428:
    lw      t8, 0x006C($sp)
    lh      t9, 0x0008(t8)             # 00000008
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f22
    swc1    $f8, 0x0000(s7)            # 00000000
    lw      t0, 0x006C($sp)
    lh      t1, 0x000A(t0)             # 0000000A
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f22
    swc1    $f18, 0x0004(s7)           # 00000004
    lw      t2, 0x006C($sp)
    lh      t3, 0x000C(t2)             # 0000000C
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f22
    b       lbl_80036488
    swc1    $f8, 0x0008(s7)            # 00000008
lbl_80036480:
    bnel    s0, $zero, lbl_8003638C
    or      a0, s1, $zero              # a0 = 000007C0
lbl_80036488:
    mov.s   $f0, $f20
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    lw      s4, 0x004C($sp)
    lw      s5, 0x0050($sp)
    lw      s6, 0x0054($sp)
    lw      s7, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_800364CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x008C(a3)             # 0000008C
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_800340C4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sll     v0, v0, 16
    sra     v0, v0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80036500:
# Get Custom position data from Scene Mesh
# A0 = Camera Struct Pointer
# V0 = Ptr to Collision Mesh Camera Data
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x008C(a3)             # 0000008C
    lh      a1, 0x0148(a3)             # 00000148
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_80034290
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80036530:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lw      t6, 0x0038($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFE8
    jal     func_800226D8
    lw      a1, 0x0090(t6)             # 00000090
    lw      t7, 0x0038($sp)
    lw      t8, 0x003C($sp)
    lw      a1, 0x0040($sp)
    lw      a0, 0x008C(t7)             # 0000008C
    lw      a2, 0x0000(t8)             # 00000000
    jal     func_800340A0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      t9, 0x0038($sp)
    sw      v0, 0x0034($sp)
    lw      t0, 0x003C($sp)
    lw      a0, 0x008C(t9)             # 0000008C
    or      a1, v0, $zero              # a1 = 00000000
    lw      a2, 0x0000(t0)             # 00000000
    jal     func_800340C4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    bne     v0, $zero, lbl_800365A0
    lw      $ra, 0x0014($sp)
    b       lbl_800365A4
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_800365A0:
    lw      v1, 0x0034($sp)
lbl_800365A4:
    or      v0, v1, $zero              # v0 = FFFFFFFF
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800365B0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE0
    jal     func_800226D8
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f4, 0x002C($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    add.s   $f6, $f4, $f0
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE0
    swc1    $f6, 0x002C($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_8002F454
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    lw      a1, 0x0044($sp)
    c.eq.s  $f0, $f8
    nop
    bc1fl   lbl_80036624
    lw      a0, 0x008C(s0)             # 0000008C
    b       lbl_8003664C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a0, 0x008C(s0)             # 0000008C
lbl_80036624:
    lw      a2, 0x003C($sp)
    jal     func_800341FC
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      t6, 0x004C($sp)
    sh      v0, 0x0000(t6)             # 00000000
    lw      a0, 0x008C(s0)             # 0000008C
    lw      a2, 0x003C($sp)
    lw      a1, 0x0044($sp)
    jal     func_80034318
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
lbl_8003664C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80036660:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    jal     func_800226D8
    lw      a1, 0x0090(s0)             # 00000090
    lw      v1, 0x004C($sp)
    lwc1    $f4, 0x0038($sp)
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFE8
    swc1    $f4, 0x0000(v1)            # 00000000
    lw      a0, 0x008C(s0)             # 0000008C
    sw      t6, 0x0014($sp)
    lw      a3, 0x003C($sp)
    lw      a2, 0x0034($sp)
    sw      v1, 0x0010($sp)
    jal     func_800347FC
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    bne     v0, $zero, lbl_800366C8
    lw      v1, 0x004C($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f6                   # $f6 = -32000.00
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    b       lbl_8003672C
    swc1    $f6, 0x0000(v1)            # 00000000
lbl_800366C8:
    lw      t7, 0x0090(s0)             # 00000090
    lui     $at, 0xC6FA                # $at = C6FA0000
    lw      t8, 0x066C(t7)             # 0000066C
    sll     t9, t8,  4
    bltzl   t9, lbl_800366F4
    lw      a0, 0x008C(s0)             # 0000008C
    mtc1    $at, $f8                   # $f8 = -32000.00
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    b       lbl_8003672C
    swc1    $f8, 0x0000(v1)            # 00000000
    lw      a0, 0x008C(s0)             # 0000008C
lbl_800366F4:
    lw      a1, 0x0030($sp)
    jal     func_80034BFC
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    blez    v0, lbl_80036720
    lw      a1, 0x0030($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    sw      v0, 0x002C($sp)
    jal     func_80034C10
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    bgtz    v0, lbl_80036728
    lw      v1, 0x002C($sp)
lbl_80036720:
    b       lbl_8003672C
    addiu   v0, $zero, 0xFFFE          # v0 = FFFFFFFE
lbl_80036728:
    or      v0, v1, $zero              # v0 = 00000000
lbl_8003672C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80036740:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    lw      t6, 0x0040($sp)
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    jal     func_800226D8
    lw      a1, 0x0090(t6)             # 00000090
    lwc1    $f4, 0x0030($sp)
    lw      v1, 0x0044($sp)
    lw      t7, 0x0040($sp)
    swc1    $f4, 0x0028($sp)
    addiu   t8, $sp, 0x0028            # t8 = FFFFFFE8
    lw      a0, 0x008C(t7)             # 0000008C
    addiu   t9, $sp, 0x0024            # t9 = FFFFFFE4
    lw      a3, 0x0008(v1)             # 00000008
    lw      a2, 0x0000(v1)             # 00000000
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    jal     func_800347FC
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    bne     v0, $zero, lbl_800367B0
    lw      t0, 0x0044($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f0                   # $f0 = -32000.00
    b       lbl_800367FC
    lw      $ra, 0x001C($sp)
lbl_800367B0:
    lwc1    $f6, 0x0028($sp)
    lwc1    $f8, 0x0004(t0)            # 00000004
    lui     $at, 0xC6FA                # $at = C6FA0000
    lw      t1, 0x0040($sp)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_800367E0
    lw      a0, 0x008C(t1)             # 0000008C
    mtc1    $at, $f0                   # $f0 = -32000.00
    b       lbl_800367FC
    lw      $ra, 0x001C($sp)
    lw      a0, 0x008C(t1)             # 0000008C
lbl_800367E0:
    lw      a1, 0x0024($sp)
    jal     func_80034C68
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      t2, 0x0048($sp)
    sw      v0, 0x0000(t2)             # 00000000
    lwc1    $f0, 0x0028($sp)
    lw      $ra, 0x001C($sp)
lbl_800367FC:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80036808:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f12, $f4, $f6
    jal     func_800CD76C
    sub.s   $f14, $f8, $f10
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6B28($at)          # 80106B28
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6B2C($at)           # 80106B2C
    mul.s   $f18, $f0, $f16
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      $ra, 0x0014($sp)
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80036870:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0076($sp)
    swc1    $f0, 0x003C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0076($sp)
    lw      a0, 0x0090(s0)             # 00000090
    jal     func_80021600
    swc1    $f0, 0x0038($sp)
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f4                   # $f4 = 2.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6B30($at)          # 80106B30
    mul.s   $f12, $f0, $f4
    swc1    $f0, 0x0030($sp)
    lwc1    $f6, 0x0094(s0)            # 00000094
    mul.s   $f4, $f0, $f10
    lwc1    $f14, 0x003C($sp)
    swc1    $f6, 0x0064($sp)
    lwc1    $f8, 0x0104(s0)            # 00000104
    lwc1    $f2, 0x0038($sp)
    lh      t6, 0x007A($sp)
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f0, $f14
    lwc1    $f4, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0068($sp)
    lwc1    $f10, 0x009C(s0)           # 0000009C
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f0, $f2
    swc1    $f10, 0x006C($sp)
    lwc1    $f4, 0x006C($sp)
    swc1    $f6, 0x0058($sp)
    lwc1    $f10, 0x0068($sp)
    add.s   $f6, $f8, $f4
    swc1    $f10, 0x005C($sp)
    bne     t6, $zero, lbl_8003693C
    swc1    $f6, 0x0060($sp)
    lw      t7, 0x008C(s0)             # 0000008C
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x8E28             # a1 = 80118E28
    lw      t8, 0x009C(t7)             # 0000009C
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_800369B4
    nop
lbl_8003693C:
    mul.s   $f18, $f12, $f14
    lwc1    $f16, 0x0064($sp)
    lwc1    $f10, 0x006C($sp)
    mul.s   $f8, $f12, $f2
    lwc1    $f6, 0x0068($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFF4
    swc1    $f6, -0x71D4($at)          # 80118E2C
    add.s   $f16, $f18, $f16
    addiu   a2, a2, 0x8E28             # a2 = 80118E28
    swc1    $f12, 0x002C($sp)
    add.s   $f10, $f8, $f10
    swc1    $f16, -0x71D8($at)         # 80118E28
    lui     $at, 0x8012                # $at = 80120000
    jal     func_80035A94
    swc1    $f10, -0x71D0($at)         # 80118E30
    lh      t0, 0x007A($sp)
    beq     t0, $zero, lbl_8003699C
    nop
    lwc1    $f18, 0x0104(s0)           # 00000104
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f18, -0x71DC($at)         # 80118E24
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f18, -0x71E0($at)         # 80118E20
lbl_8003699C:
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f16, -0x71DC($at)         # 80118E24
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f18, -0x71E0($at)         # 80118E20
    b       lbl_80036AD0
    lwc1    $f2, 0x0104(s0)            # 00000104
lbl_800369B4:
    jal     func_80067620
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x71D8($at)          # 80118E28
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, -0x71CC($at)         # 80118E34
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f0, 0x002C($sp)
    mul.s   $f8, $f10, $f2
    lwc1    $f10, -0x71D4($at)         # 80118E2C
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFC4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFE8
    add.s   $f4, $f6, $f8
    swc1    $f4, -0x71D8($at)          # 80118E28
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x71C8($at)          # 80118E38
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f8, $f6, $f2
    add.s   $f4, $f10, $f8
    swc1    $f4, -0x71D4($at)          # 80118E2C
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x71D0($at)          # 80118E30
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, -0x71C4($at)         # 80118E3C
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f8, $f10, $f2
    lwc1    $f10, 0x0030($sp)
    c.lt.s  $f0, $f10
    add.s   $f4, $f6, $f8
    lwc1    $f6, 0x002C($sp)
    bc1f    lbl_80036A68
    swc1    $f4, -0x71D0($at)          # 80118E30
    lui     a2, 0x8012                 # a2 = 80120000
    swc1    $f6, 0x0030($sp)
    addiu   a2, a2, 0x8E28             # a2 = 80118E28
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036308
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    mov.s   $f16, $f0
    b       lbl_80036A9C
    mov.s   $f18, $f0
lbl_80036A68:
    jal     func_80036308
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFC4
    lui     a2, 0x8012                 # a2 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f0, -0x71E0($at)          # 80118E20
    addiu   a2, a2, 0x8E28             # a2 = 80118E28
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    jal     func_80036308
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFC4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f18, -0x71E0($at)         # 80118E20
    mov.s   $f16, $f0
lbl_80036A9C:
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f12                  # $f12 = -32000.00
    nop
    c.eq.s  $f18, $f12
    nop
    bc1fl   lbl_80036AC0
    c.eq.s  $f0, $f12
    lwc1    $f18, 0x0104(s0)           # 00000104
    c.eq.s  $f0, $f12
lbl_80036AC0:
    lwc1    $f2, 0x0104(s0)            # 00000104
    bc1fl   lbl_80036AD4
    sub.s   $f8, $f18, $f2
    mov.s   $f16, $f18
lbl_80036AD0:
    sub.s   $f8, $f18, $f2
lbl_80036AD4:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6B34($at)           # 80106B34
    sub.s   $f10, $f16, $f2
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6B38($at)           # 80106B38
    mul.s   $f12, $f8, $f4
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f16, -0x71DC($at)         # 80118E24
    mul.s   $f8, $f10, $f6
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f18, -0x71E0($at)         # 80118E20
    lwc1    $f14, 0x0030($sp)
    jal     func_800CD76C
    swc1    $f8, 0x0040($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6B3C($at)           # 80106B3C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6B40($at)           # 80106B40
    mul.s   $f10, $f0, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f12, 0x0040($sp)
    lwc1    $f14, 0x002C($sp)
    mul.s   $f8, $f10, $f6
    add.s   $f10, $f8, $f4
    trunc.w.s $f6, $f10
    mfc1    s0, $f6
    nop
    sll     s0, s0, 16
    jal     func_800CD76C
    sra     s0, s0, 16
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6B44($at)           # 80106B44
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6B48($at)          # 80106B48
    mul.s   $f4, $f0, $f8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      $ra, 0x001C($sp)
    mul.s   $f6, $f4, $f10
    add.s   $f4, $f6, $f8
    trunc.w.s $f10, $f4
    mfc1    t5, $f10
    nop
    addu    v0, s0, t5
    sll     v0, v0, 16
    sra     v0, v0, 16
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80036B9C:
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      $ra, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a0, 0x00C8($sp)
    sw      a1, 0x00CC($sp)
    sw      a2, 0x00D0($sp)
    sw      a3, 0x00D4($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00CE($sp)
    mov.s   $f22, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00CE($sp)
    mov.s   $f20, $f0
    jal     func_800636C4              # sins?
    lh      a0, 0x00D2($sp)
    swc1    $f0, 0x00BC($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00D2($sp)
    lh      a0, 0x00D6($sp)
    swc1    $f0, 0x00B8($sp)
    subu    a0, $zero, a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sw      a0, 0x0060($sp)
    lw      a0, 0x0060($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x00B4($sp)
    neg.s   $f4, $f22
    lwc1    $f6, 0x00BC($sp)
    swc1    $f4, 0x0060($sp)
    lwc1    $f10, 0x0060($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f16, $f10, $f6
    swc1    $f10, 0x0028($sp)
    sub.s   $f14, $f4, $f0
    mul.s   $f2, $f20, $f6
    lwc1    $f4, 0x00B8($sp)
    addiu   t9, $sp, 0x00A4            # t9 = FFFFFFDC
    lw      v0, 0x00C8($sp)
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f6, $f2, $f22
    swc1    $f8, 0x0054($sp)
    mul.s   $f8, $f6, $f14
    lwc1    $f6, 0x00B4($sp)
    mul.s   $f12, $f20, $f4
    swc1    $f6, 0x002C($sp)
    swc1    $f8, 0x004C($sp)
    mul.s   $f10, $f12, $f6
    swc1    $f10, 0x0044($sp)
    lwc1    $f10, 0x0028($sp)
    swc1    $f8, 0x0028($sp)
    lwc1    $f8, 0x0054($sp)
    mul.s   $f18, $f10, $f4
    nop
    mul.s   $f10, $f12, $f2
    nop
    mul.s   $f4, $f10, $f14
    nop
    mul.s   $f10, $f22, $f6
    swc1    $f4, 0x0040($sp)
    swc1    $f10, 0x003C($sp)
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    sub.s   $f10, $f10, $f8
    mul.s   $f10, $f10, $f0
    add.s   $f10, $f10, $f8
    mul.s   $f8, $f16, $f10
    lwc1    $f10, 0x0028($sp)
    swc1    $f4, 0x0028($sp)
    lwc1    $f4, 0x0044($sp)
    sub.s   $f6, $f10, $f4
    swc1    $f4, 0x0030($sp)
    mul.s   $f6, $f20, $f6
    add.s   $f8, $f8, $f6
    lwc1    $f6, 0x0028($sp)
    swc1    $f10, 0x0028($sp)
    lwc1    $f10, 0x003C($sp)
    add.s   $f4, $f6, $f10
    mul.s   $f4, $f18, $f4
    add.s   $f8, $f8, $f4
    mul.s   $f4, $f22, $f22
    swc1    $f8, 0x00A4($sp)
    mul.s   $f8, $f22, $f12
    swc1    $f4, 0x0054($sp)
    mul.s   $f4, $f8, $f14
    lwc1    $f8, 0x002C($sp)
    swc1    $f6, 0x002C($sp)
    lwc1    $f6, 0x0030($sp)
    mul.s   $f8, $f2, $f8
    swc1    $f10, 0x0030($sp)
    lwc1    $f10, 0x0054($sp)
    swc1    $f4, 0x0050($sp)
    swc1    $f8, 0x0058($sp)
    lwc1    $f8, 0x0028($sp)
    add.s   $f8, $f8, $f6
    mul.s   $f6, $f16, $f8
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    sub.s   $f8, $f8, $f10
    mul.s   $f10, $f8, $f0
    lwc1    $f8, 0x0054($sp)
    add.s   $f10, $f10, $f8
    mul.s   $f8, $f20, $f10
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x0058($sp)
    sub.s   $f8, $f4, $f6
    mul.s   $f6, $f18, $f8
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f12, $f12
    lwc1    $f6, 0x002C($sp)
    swc1    $f8, 0x00A8($sp)
    lwc1    $f8, 0x0030($sp)
    swc1    $f10, 0x0054($sp)
    sub.s   $f10, $f6, $f8
    lwc1    $f8, 0x0058($sp)
    mul.s   $f6, $f16, $f10
    add.s   $f10, $f4, $f8
    mul.s   $f4, $f20, $f10
    mtc1    $at, $f10                  # $f10 = 1.00
    add.s   $f8, $f6, $f4
    lwc1    $f6, 0x0054($sp)
    sub.s   $f4, $f10, $f6
    lwc1    $f6, 0x0054($sp)
    mul.s   $f10, $f4, $f0
    add.s   $f4, $f10, $f6
    mul.s   $f10, $f18, $f4
    add.s   $f6, $f8, $f10
    swc1    $f6, 0x00AC($sp)
    lw      t1, 0x0000(t9)             # FFFFFFDC
    sw      t1, 0x0000(v0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFE0
    sw      t0, 0x0004(v0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFE4
    sw      t1, 0x0008(v0)             # 00000008
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8


func_80036DD8:
    lui     $at, 0x8010                # $at = 80100000
    mtc1    a1, $f12                   # $f12 = 0.00
    lwc1    $f14, 0x6B4C($at)          # 80106B4C
    lwc1    $f0, 0x0100(a0)            # 00000100
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_80036E04
    c.le.s  $f12, $f0
    b       lbl_80036E24
    mov.s   $f2, $f14
    c.le.s  $f12, $f0
lbl_80036E04:
    lui     $at, 0x8010                # $at = 80100000
    bc1f    lbl_80036E18
    nop
    b       lbl_80036E24
    mov.s   $f2, $f12
lbl_80036E18:
    lwc1    $f4, 0x6B50($at)           # 80106B50
    mul.s   $f2, $f0, $f4
    nop
lbl_80036E24:
    mov.s   $f0, $f2
    jr      $ra
    nop


func_80036E30:
    sw      a1, 0x0004($sp)
    sh      $zero, 0x015E(a0)          # 0000015E
    jr      $ra
    nop


func_80036E40:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sll     a1, a0, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    andi    t6, a1, 0xF000             # t6 = 00000000
    ori     $at, $zero, 0xF000         # $at = 0000F000
    beq     t6, $at, lbl_80036EF4
    andi    v0, a1, 0x7000             # v0 = 00000000
    addiu   $at, $zero, 0x1000         # $at = 00001000
    beq     v0, $at, lbl_80036E98
    andi    t0, a1, 0x8000             # t0 = 00000000
    addiu   $at, $zero, 0x2000         # $at = 00002000
    beq     v0, $at, lbl_80036EAC
    addiu   t8, $zero, 0x001B          # t8 = 0000001B
    addiu   $at, $zero, 0x3000         # $at = 00003000
    beq     v0, $at, lbl_80036EBC
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1B0             # v0 = 800EF1B0
    b       lbl_80036EC8
    sw      $zero, 0x0000(v0)          # 800EF1B0
lbl_80036E98:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1B0             # v0 = 800EF1B0
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    b       lbl_80036EC8
    sw      t7, 0x0000(v0)             # 800EF1B0
lbl_80036EAC:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1B0             # v0 = 800EF1B0
    b       lbl_80036EC8
    sw      t8, 0x0000(v0)             # 800EF1B0
lbl_80036EBC:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1B0             # v0 = 800EF1B0
    sw      t9, 0x0000(v0)             # 800EF1B0
lbl_80036EC8:
    beql    t0, $zero, lbl_80036EE8
    lw      a0, 0x0000(v0)             # 800EF1B0
    lw      a0, 0x0000(v0)             # 800EF1B0
    jal     func_80099640
    sh      a1, 0x001A($sp)
    b       lbl_80036EF4
    lh      a1, 0x001A($sp)
    lw      a0, 0x0000(v0)             # 00000000
lbl_80036EE8:
    jal     func_80099620
    sh      a1, 0x001A($sp)
    lh      a1, 0x001A($sp)
lbl_80036EF4:
    andi    a0, a1, 0x0F00             # a0 = 00000000
    addiu   $at, $zero, 0x0F00         # $at = 00000F00
    beq     a0, $at, lbl_80036F3C
    sra     v0, a0,  8
    sll     t1, v0, 16
    sll     v1, v0, 16
    sra     t2, t1, 16
    bne     t2, $zero, lbl_80036F1C
    sra     v1, v1, 16
    addiu   v1, $zero, 0x0032          # v1 = 00000032
lbl_80036F1C:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1AC             # v0 = 800EF1AC
    lw      t3, 0x0000(v0)             # 800EF1AC
    beql    v1, t3, lbl_80036F40
    lw      $ra, 0x0014($sp)
    sw      v1, 0x0000(v0)             # 800EF1AC
    jal     func_8006D8E0
    lhu     a0, 0x0002(v0)             # 800EF1AE
lbl_80036F3C:
    lw      $ra, 0x0014($sp)
lbl_80036F40:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80036F4C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      a3, 0x0038($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x003C($sp)
    lw      t7, 0x0040($sp)
    addiu   t8, $sp, 0x0024            # t8 = FFFFFFF4
    lw      a0, 0x0018(t6)             # 00000018
    lw      a1, 0x0018(t7)             # 00000018
    jal     func_80034E88
    sw      t8, 0x0010($sp)
    addiu   t9, $sp, 0x0024            # t9 = FFFFFFF4
    lw      v0, 0x0030($sp)
    lw      t1, 0x0000(t9)             # FFFFFFF4
    sw      t1, 0x0000(v0)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFF8
    sw      t0, 0x0004(v0)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFFC
    sw      t1, 0x0008(v0)             # 00000008
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80036FB4:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x005C($sp)
    addiu   v0, a0, 0x0074             # v0 = 00000074
    lw      t7, 0x0000(v0)             # 00000074
    addiu   a1, a0, 0x0050             # a1 = 00000050
    or      a2, s0, $zero              # a2 = 00000000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t6, 0x0004(v0)             # 00000078
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0008(v0)             # 0000007C
    sw      t7, 0x0008(s0)             # 00000008
    sw      a1, 0x002C($sp)
    sw      a0, 0x0058($sp)
    sw      $zero, 0x0034($sp)
    jal     func_80035A94
    sw      v0, 0x0028($sp)
    lw      v1, 0x0034($sp)
    beq     v0, $zero, lbl_800371AC
    sw      v0, 0x003C($sp)
    lw      t8, 0x002C($sp)
    addiu   a1, s0, 0x000C             # a1 = 0000000C
    addiu   a0, s0, 0x001C             # a0 = 0000001C
    lw      t0, 0x0000(t8)             # 00000000
    sw      t0, 0x0000(s1)             # 00000000
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0004(s1)             # 00000004
    lw      t0, 0x0008(t8)             # 00000008
    sw      t0, 0x0008(s1)             # 00000008
    jal     func_800679E8
    sw      a1, 0x0024($sp)
    lh      t1, 0x0020(s0)             # 00000020
    lw      t2, 0x005C($sp)
    or      a2, s1, $zero              # a2 = 00000000
    slti    $at, t1, 0x2EE1
    bnel    $at, $zero, lbl_80037064
    lw      a0, 0x0058($sp)
    lh      t3, 0x0006(t2)             # 00000006
    sh      t3, 0x0022(s0)             # 00000022
    lw      a0, 0x0058($sp)
lbl_80037064:
    jal     func_80035A94
    lw      a1, 0x0028($sp)
    bne     v0, $zero, lbl_800370FC
    sw      v0, 0x0038($sp)
    lh      t4, 0x006A($sp)
    lw      t6, 0x002C($sp)
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_800370F4
    nop
    lw      t8, 0x0000(t6)             # 00000000
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE8
    or      a2, s1, $zero              # a2 = 00000000
    sw      t8, 0x0000(s1)             # 00000000
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(s1)             # 00000004
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(s1)             # 00000008
    lw      t9, 0x0058($sp)
    lw      t1, 0x005C(t9)             # 0000005C
    sw      t1, 0x0000(a1)             # FFFFFFE8
    lw      t0, 0x0060(t9)             # 00000060
    sw      t0, 0x0004(a1)             # FFFFFFEC
    lw      t1, 0x0064(t9)             # 00000064
    sw      t1, 0x0008(a1)             # FFFFFFF0
    jal     func_80035A94
    lw      a0, 0x0058($sp)
    bnel    v0, $zero, lbl_800370E0
    lw      t2, 0x0018(s1)             # 00000018
    b       lbl_800371B0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    lw      t2, 0x0018(s1)             # 00000018
lbl_800370E0:
    lw      t3, 0x0018(s0)             # 00000018
    bnel    t2, t3, lbl_80037118
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    b       lbl_800371B0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_800370F4:
    b       lbl_800371B0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_800370FC:
    lw      t4, 0x0018(s1)             # 00000018
    lw      t5, 0x0018(s0)             # 00000024
    bnel    t4, t5, lbl_80037118
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    b       lbl_800371B0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    addiu   s0, s1, 0x000C             # s0 = 0000000C
lbl_80037118:
    or      a1, s0, $zero              # a1 = 0000000C
    jal     func_800679E8
    addiu   a0, s1, 0x001C             # a0 = 0000001C
    lh      t6, 0x0020(s1)             # 00000020
    lw      t7, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 0000000C
    slti    $at, t6, 0x2EE1
    bnel    $at, $zero, lbl_8003714C
    lw      t0, 0x003C($sp)
    lh      t8, 0x0006(t7)             # 00000006
    addiu   t9, t8, 0x8001             # t9 = FFFF8001
    sh      t9, 0x0022(s1)             # 00000022
    lw      t0, 0x003C($sp)
lbl_8003714C:
    lw      t1, 0x0038($sp)
    beq     t0, t1, lbl_80037160
    nop
    b       lbl_800371AC
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_80037160:
    jal     func_800A4EBC
    lw      a0, 0x0024($sp)
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f4                   # $f4 = -0.50
    lui     $at, 0x3F00                # $at = 3F000000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80037190
    mtc1    $at, $f6                   # $f6 = 0.50
    b       lbl_800371AC
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    mtc1    $at, $f6                   # $f6 = 0.50
lbl_80037190:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_800371AC
    nop
    b       lbl_800371AC
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_800371AC:
    or      v0, v1, $zero              # v0 = 00000003
lbl_800371B0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_800371C4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_800679E8
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    jal     func_80063684              # coss?
    lh      a0, 0x0020($sp)
    lh      t6, 0x002E($sp)
    lh      t7, 0x0022($sp)
    swc1    $f0, 0x0018($sp)
    subu    a0, t6, t7
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f4, 0x0018($sp)
    lh      t8, 0x002E($sp)
    lh      t9, 0x0032($sp)
    mul.s   $f0, $f0, $f4
    subu    a0, t8, t9
    sll     a0, a0, 16
    sra     a0, a0, 16
    abs.s   $f0, $f0
    jal     func_80063684              # coss?
    swc1    $f0, 0x0018($sp)
    lwc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0034($sp)
    lw      $ra, 0x0014($sp)
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f0, $f0, $f10
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80037258:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f4, 0x0068($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t6, 0x006E($sp)
    add.s   $f6, $f0, $f4
    mov.s   $f14, $f0
    swc1    $f2, 0x0050($sp)
    swc1    $f2, 0x0058($sp)
    beq     t6, $zero, lbl_800372D4
    swc1    $f6, 0x0054($sp)
    lw      t7, 0x0064($sp)
    lh      a1, 0x00A2(s0)             # 000000A2
    addiu   a0, s0, 0x0108             # a0 = 00000108
    lh      a2, 0x0006(t7)             # 00000006
    swc1    $f14, 0x0038($sp)
    jal     func_800371C4
    lui     a3, 0x41C8                 # a3 = 41C80000
    lwc1    $f14, 0x0038($sp)
    jal     func_800676A4
    mov.s   $f12, $f0
    lwc1    $f8, 0x0054($sp)
    sub.s   $f10, $f8, $f0
    swc1    $f10, 0x0054($sp)
lbl_800372D4:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6B54($at)          # 80106B54
    lw      a2, 0x00D0(s0)             # 000000D0
    lw      a3, 0x00CC(s0)             # 000000CC
    addiu   v0, s0, 0x0094             # v0 = 00000094
    sw      v0, 0x002C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFF0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_8003584C
    swc1    $f16, 0x0010($sp)
    lw      v0, 0x002C($sp)
    lwc1    $f4, 0x00E4(s0)            # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x0000(v0)           # 00000000
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFE4
    addiu   a1, s0, 0x0050             # a1 = 00000050
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0044($sp)
    lwc1    $f10, 0x00E8(s0)           # 000000E8
    lwc1    $f8, 0x0004(v0)            # 00000004
    add.s   $f16, $f8, $f10
    lwc1    $f8, 0x6B58($at)           # 80106B58
    swc1    $f16, 0x0048($sp)
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    lwc1    $f18, 0x0008(v0)           # 00000008
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x004C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f8, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80037370:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f4, 0x0078($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t6, 0x0082($sp)
    add.s   $f6, $f0, $f4
    swc1    $f2, 0x0060($sp)
    swc1    $f2, 0x0068($sp)
    beq     t6, $zero, lbl_800373D8
    swc1    $f6, 0x0064($sp)
    addiu   a0, s0, 0x0108             # a0 = 00000108
    lh      a1, 0x00A2(s0)             # 000000A2
    lh      a2, 0x0006(s1)             # 00000006
    jal     func_800371C4
    lui     a3, 0x41C8                 # a3 = 41C80000
    lwc1    $f8, 0x0064($sp)
    sub.s   $f10, $f8, $f0
    swc1    $f10, 0x0064($sp)
lbl_800373D8:
    lw      t7, 0x007C($sp)
    addiu   s1, s0, 0x0094             # s1 = 00000094
    lwc1    $f16, 0x0004(s1)           # 00000098
    lwc1    $f18, 0x0000(t7)           # 00000000
    addiu   a0, s0, 0x0050             # a0 = 00000050
    sw      a0, 0x0030($sp)
    sub.s   $f4, $f16, $f18
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_80067620
    swc1    $f4, 0x0048($sp)
    lwc1    $f12, 0x0048($sp)
    jal     func_800CD76C
    mov.s   $f14, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f14, 0x6B5C($at)          # 80106B5C
    mov.s   $f2, $f0
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f14, $f0
    nop
    bc1f    lbl_80037444
    nop
    jal     func_800CF470
    sub.s   $f12, $f2, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    b       lbl_8003747C
    sub.s   $f2, $f6, $f0
lbl_80037444:
    lwc1    $f14, 0x6B60($at)          # 3F806B60
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_80037478
    mtc1    $at, $f2                   # $f2 = 1.00
    jal     func_800CF470
    sub.s   $f12, $f14, $f2
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    b       lbl_8003747C
    sub.s   $f2, $f8, $f0
    mtc1    $at, $f2                   # $f2 = 1.00
lbl_80037478:
    nop
lbl_8003747C:
    lwc1    $f16, 0x0048($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    mul.s   $f18, $f16, $f2
    lwc1    $f10, 0x0064($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6B64($at)           # 80106B64
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    sub.s   $f4, $f10, $f18
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    swc1    $f6, 0x0010($sp)
    jal     func_8003584C
    swc1    $f4, 0x0064($sp)
    lwc1    $f8, 0x0000(s1)            # 00000094
    lwc1    $f16, 0x00E4(s0)           # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    add.s   $f10, $f8, $f16
    lw      a1, 0x0030($sp)
    swc1    $f10, 0x0054($sp)
    lwc1    $f4, 0x00E8(s0)            # 000000E8
    lwc1    $f18, 0x0004(s1)           # 00000098
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x6B68($at)          # 80106B68
    swc1    $f6, 0x0058($sp)
    lwc1    $f16, 0x00EC(s0)           # 000000EC
    lwc1    $f8, 0x0008(s1)            # 0000009C
    add.s   $f10, $f8, $f16
    swc1    $f10, 0x005C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f18, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80037528:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0020($sp)
    sll     s1, a3, 16
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     s1, s1, 16
    sw      $ra, 0x0024($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f4, 0x0060($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    sll     a0, s1, 16
    add.s   $f6, $f0, $f4
    sra     a0, a0, 16
    swc1    $f2, 0x0048($sp)
    swc1    $f2, 0x0050($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x004C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x0034($sp)
    lw      t7, 0x005C($sp)
    c.lt.s  $f0, $f8
    lw      t0, 0x005C($sp)
    bc1f    lbl_800375B8
    addiu   s1, s0, 0x0094             # s1 = 00000094
    lh      t6, 0x000E(s1)             # 000000A2
    lh      t8, 0x0006(t7)             # 00000006
    subu    a0, t6, t8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    b       lbl_800375D8
    mov.s   $f2, $f0
lbl_800375B8:
    addiu   s1, s0, 0x0094             # s1 = 00000094
    lh      t9, 0x000E(s1)             # 000000A2
    lh      t1, 0x0006(t0)             # 00000006
    subu    a0, t9, t1
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    neg.s   $f2, $f0
lbl_800375D8:
    lwc1    $f10, 0x0034($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f18                  # $f18 = 25.00
    mul.s   $f16, $f10, $f2
    lwc1    $f6, 0x004C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6B6C($at)          # 80106B6C
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFF0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    mul.s   $f4, $f16, $f18
    sub.s   $f8, $f6, $f4
    swc1    $f8, 0x004C($sp)
    lw      a3, 0x00CC(s0)             # 000000CC
    lw      a2, 0x00D0(s0)             # 000000D0
    jal     func_8003584C
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0000(s1)           # 00000094
    lwc1    $f18, 0x00E4(s0)           # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFE4
    add.s   $f6, $f16, $f18
    addiu   a1, s0, 0x0050             # a1 = 00000050
    swc1    $f6, 0x003C($sp)
    lwc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f4, 0x0004(s1)            # 00000098
    add.s   $f10, $f4, $f8
    lwc1    $f4, 0x6B70($at)           # 80106B70
    swc1    $f10, 0x0040($sp)
    lwc1    $f18, 0x00EC(s0)           # 000000EC
    lwc1    $f16, 0x0008(s1)           # 0000009C
    add.s   $f6, $f16, $f18
    swc1    $f6, 0x0044($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f4, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80037688:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sdc1    $f20, 0x0020($sp)
    sw      s0, 0x0028($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0084($sp)
    sw      a3, 0x008C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    add.s   $f4, $f0, $f20
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    swc1    $f4, 0x0074($sp)
    swc1    $f2, 0x0070($sp)
    swc1    $f2, 0x0078($sp)
    lh      t7, 0x02EC(t6)             # 801202EC
    lh      t8, 0x0092($sp)
    beql    t7, $zero, lbl_80037708
    lwc1    $f10, 0x0098(s0)           # 00000098
    beq     t8, $zero, lbl_80037704
    addiu   a0, s0, 0x0108             # a0 = 00000108
    lw      t9, 0x0084($sp)
    lh      a1, 0x00A2(s0)             # 000000A2
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_800371C4
    lh      a2, 0x0006(t9)             # 00000006
    lwc1    $f6, 0x0074($sp)
    sub.s   $f8, $f6, $f0
    swc1    $f8, 0x0074($sp)
lbl_80037704:
    lwc1    $f10, 0x0098(s0)           # 00000098
lbl_80037708:
    lwc1    $f18, 0x0104(s0)           # 00000104
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    c.eq.s  $f10, $f18
    addiu   v1, s0, 0x0094             # v1 = 00000094
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    bc1t    lbl_80037760
    lw      t2, 0x008C($sp)
    lw      v0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6B74($at)           # 80106B74
    lwc1    $f6, 0x006C(v0)            # 0000006C
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_80037764
    lwc1    $f12, 0x0004(v1)           # 00000098
    lw      t0, 0x066C(v0)             # 0000066C
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t1, t0, 10
    bgez    t1, lbl_800377BC
    nop
lbl_80037760:
    lwc1    $f12, 0x0004(v1)           # 00000098
lbl_80037764:
    lwc1    $f14, 0x0000(t2)           # 00000000
    jal     func_8003569C
    sw      v1, 0x003C($sp)
    lw      t3, 0x008C($sp)
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    swc1    $f0, 0x0000(t3)            # 00000000
    lw      t4, 0x003C($sp)
    lwc1    $f10, 0x0074($sp)
    lwc1    $f4, 0x6B78($at)           # 80106B78
    lwc1    $f8, 0x0004(t4)            # 00000004
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    sub.s   $f20, $f8, $f0
    sub.s   $f18, $f10, $f20
    swc1    $f18, 0x0074($sp)
    lw      a3, 0x00CC(s0)             # 000000CC
    lw      a2, 0x00D0(s0)             # 000000D0
    jal     func_8003584C
    swc1    $f4, 0x0010($sp)
    addiu   t5, s0, 0x0050             # t5 = 00000050
    b       lbl_80037978
    sw      t5, 0x0040($sp)
lbl_800377BC:
    lw      t6, -0x4600(t6)            # FFFFBA00
    lw      t8, 0x008C($sp)
    lw      t9, 0x008C($sp)
    lh      t7, 0x02EA(t6)             # 000002EA
    addiu   a0, s0, 0x0050             # a0 = 00000050
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    bnel    t7, $zero, lbl_800378A8
    lwc1    $f4, 0x0004(v1)            # 00000004
    lwc1    $f6, 0x0004(v1)            # 00000004
    lwc1    $f8, 0x0000(t8)            # 00000000
    addiu   a0, s0, 0x0050             # a0 = 00000050
    sw      a0, 0x0040($sp)
    sw      v1, 0x003C($sp)
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_80067620
    sub.s   $f20, $f6, $f8
    mov.s   $f12, $f20
    mov.s   $f14, $f0
    jal     func_800CD76C
    swc1    $f0, 0x0054($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6B7C($at)          # 80106B7C
    lwc1    $f10, 0x00FC(s0)           # 000000FC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6B80($at)           # 80106B80
    mul.s   $f4, $f10, $f18
    nop
    mul.s   $f12, $f4, $f6
    jal     func_800CD510
    nop
    lwc1    $f16, 0x0054($sp)
    lw      v0, 0x008C($sp)
    mul.s   $f2, $f0, $f16
    c.lt.s  $f2, $f20
    nop
    bc1fl   lbl_8003786C
    neg.s   $f0, $f2
    sub.s   $f10, $f20, $f2
    lwc1    $f8, 0x0000(v0)            # 00000000
    mov.s   $f20, $f2
    add.s   $f18, $f8, $f10
    b       lbl_80037894
    swc1    $f18, 0x0000(v0)           # 00000000
    neg.s   $f0, $f2
lbl_8003786C:
    lw      v0, 0x008C($sp)
    c.lt.s  $f20, $f0
    nop
    bc1fl   lbl_80037898
    lwc1    $f10, 0x0074($sp)
    add.s   $f6, $f20, $f2
    lwc1    $f4, 0x0000(v0)            # 00000000
    mov.s   $f20, $f0
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0000(v0)            # 00000000
lbl_80037894:
    lwc1    $f10, 0x0074($sp)
lbl_80037898:
    sub.s   $f18, $f10, $f20
    b       lbl_80037948
    swc1    $f18, 0x0074($sp)
    lwc1    $f4, 0x0004(v1)            # 00000004
lbl_800378A8:
    lwc1    $f6, 0x0000(t9)            # 00000000
    sw      v1, 0x003C($sp)
    sw      a0, 0x0040($sp)
    jal     func_80067620
    sub.s   $f20, $f4, $f6
    mov.s   $f12, $f20
    jal     func_800CD76C
    mov.s   $f14, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f14, 0x6B84($at)          # 80106B84
    mov.s   $f2, $f0
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f14, $f0
    nop
    bc1f    lbl_80037900
    nop
    jal     func_800CF470
    sub.s   $f12, $f2, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    b       lbl_80037938
    sub.s   $f16, $f8, $f0
lbl_80037900:
    lwc1    $f14, 0x6B88($at)          # 3F806B88
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_80037934
    mtc1    $at, $f16                  # $f16 = 1.00
    jal     func_800CF470
    sub.s   $f12, $f14, $f2
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    b       lbl_80037938
    sub.s   $f16, $f10, $f0
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_80037934:
    nop
lbl_80037938:
    mul.s   $f4, $f20, $f16
    lwc1    $f18, 0x0074($sp)
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0074($sp)
lbl_80037948:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6B8C($at)           # 80106B8C
    mfc1    a2, $f20
    mfc1    a3, $f20
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFF0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    swc1    $f20, 0x00D0(s0)           # 000000D0
    swc1    $f20, 0x00CC(s0)           # 000000CC
lbl_80037978:
    lw      t1, 0x003C($sp)
    lwc1    $f18, 0x00E4(s0)           # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x0000(t1)           # 00000000
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFE4
    lw      a1, 0x0040($sp)
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0064($sp)
    lwc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f6, 0x0004(t1)            # 00000004
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x6B90($at)           # 80106B90
    swc1    $f10, 0x0068($sp)
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    lwc1    $f18, 0x0008(t1)           # 00000008
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x006C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f8, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_800379EC:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x0094($sp)
    sw      a2, 0x0098($sp)
    sw      a3, 0x009C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f4, 0x009C($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     t6, 0x8012                 # t6 = 80120000
    add.s   $f6, $f0, $f4
    lw      t6, -0x4600(t6)            # 8011BA00
    swc1    $f2, 0x0080($sp)
    swc1    $f2, 0x0088($sp)
    swc1    $f6, 0x0084($sp)
    lh      t7, 0x02EC(t6)             # 801202EC
    lh      t8, 0x00AE($sp)
    mov.s   $f20, $f0
    beq     t7, $zero, lbl_80037A70
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80037A70
    addiu   a0, s0, 0x0108             # a0 = 00000108
    lw      t0, 0x0094($sp)
    lh      a1, 0x00A2(s0)             # 000000A2
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_800371C4
    lh      a2, 0x0006(t0)             # 00000006
    lwc1    $f8, 0x0084($sp)
    sub.s   $f10, $f8, $f0
    swc1    $f10, 0x0084($sp)
lbl_80037A70:
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lw      t2, 0x0000(v0)             # 00000094
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFE4
    sw      t2, 0x0000(a1)             # FFFFFFE4
    lw      t1, 0x0004(v0)             # 00000098
    sw      t1, 0x0004(a1)             # FFFFFFE8
    lw      t2, 0x0008(v0)             # 0000009C
    sw      t2, 0x0008(a1)             # FFFFFFEC
    lwc1    $f18, 0x0078($sp)
    sw      v0, 0x0038($sp)
    lw      a2, 0x0098($sp)
    add.s   $f4, $f18, $f20
    lw      a0, 0x00A8($sp)
    jal     func_80067A84
    swc1    $f4, 0x0078($sp)
    lw      t4, 0x00A8($sp)
    addiu   t3, $sp, 0x005C            # t3 = FFFFFFCC
    lui     $at, 0x8010                # $at = 80100000
    lw      t6, 0x0000(t4)             # 00000000
    sw      t6, 0x0000(t3)             # FFFFFFCC
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(t3)             # FFFFFFD0
    lwc1    $f8, 0x005C($sp)
    lwc1    $f6, 0x00A0($sp)
    lw      t7, 0x0038($sp)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80037AF8
    lwc1    $f18, 0x0004(t7)           # 00000004
    lwc1    $f10, 0x6B94($at)          # 80106B94
    mul.s   $f2, $f8, $f10
    b       lbl_80037B54
    swc1    $f2, 0x005C($sp)
    lwc1    $f18, 0x0004(t7)           # 00000004
lbl_80037AF8:
    lwc1    $f4, 0x0104(s0)            # 00000104
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    sub.s   $f6, $f18, $f4
    jal     func_800676A4
    div.s   $f12, $f6, $f20
    lwc1    $f2, 0x005C($sp)
    lwc1    $f18, 0x00A0($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6B98($at)           # 80106B98
    div.s   $f4, $f2, $f18
    lui     $at, 0x3F40                # $at = 3F400000
    mul.s   $f10, $f2, $f8
    mtc1    $at, $f8                   # $f8 = 0.75
    mul.s   $f6, $f10, $f4
    nop
    mul.s   $f18, $f2, $f8
    sub.s   $f2, $f18, $f6
    mul.s   $f10, $f2, $f0
    nop
    mul.s   $f4, $f10, $f0
    sub.s   $f2, $f2, $f4
    swc1    $f2, 0x005C($sp)
lbl_80037B54:
    lh      v1, 0x00AE($sp)
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD8
    andi    v1, v1, 0x0080             # v1 = 00000000
    beq     v1, $zero, lbl_80037B8C
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFCC
    lwc1    $f0, 0x6B9C($at)           # 80106B9C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6BA0($at)          # 80106BA0
    lwc1    $f8, 0x005C($sp)
    mul.s   $f6, $f8, $f18
    swc1    $f6, 0x005C($sp)
    swc1    $f0, 0x00CC(s0)            # 000000CC
    swc1    $f0, 0x00D0(s0)            # 000000D0
lbl_80037B8C:
    jal     func_80067850
    sw      v1, 0x0034($sp)
    lwc1    $f10, 0x0080($sp)
    lwc1    $f4, 0x0068($sp)
    lwc1    $f18, 0x0084($sp)
    lwc1    $f6, 0x006C($sp)
    add.s   $f8, $f10, $f4
    lwc1    $f4, 0x0088($sp)
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    add.s   $f10, $f18, $f6
    swc1    $f8, 0x0080($sp)
    lwc1    $f8, 0x0070($sp)
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f10, 0x0084($sp)
    add.s   $f18, $f4, $f8
    lw      v1, 0x0034($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    swc1    $f18, 0x0088($sp)
    lwc1    $f10, 0x0104(s0)           # 00000104
    lwc1    $f6, 0x0098(s0)            # 00000098
    lw      t0, 0x0038($sp)
    lw      t1, 0x00A4($sp)
    c.eq.s  $f6, $f10
    nop
    bc1tl   lbl_80037C2C
    lwc1    $f12, 0x0004(t0)           # 00000004
    lw      v0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6BA4($at)           # 80106BA4
    lwc1    $f8, 0x006C(v0)            # 0000006C
    c.lt.s  $f4, $f8
    nop
    bc1tl   lbl_80037C2C
    lwc1    $f12, 0x0004(t0)           # 00000004
    lw      t8, 0x066C(v0)             # 0000066C
    sll     t9, t8, 10
    bgez    t9, lbl_80037C80
    nop
    lwc1    $f12, 0x0004(t0)           # 00000004
lbl_80037C2C:
    jal     func_8003569C
    lwc1    $f14, 0x0000(t1)           # 00000000
    lw      t2, 0x00A4($sp)
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFF0
    swc1    $f0, 0x0000(t2)            # 00000000
    lw      t3, 0x0038($sp)
    lwc1    $f6, 0x0084($sp)
    lwc1    $f4, 0x6BA8($at)           # 80106BA8
    lwc1    $f18, 0x0004(t3)           # 00000004
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    sub.s   $f20, $f18, $f0
    sub.s   $f10, $f6, $f20
    swc1    $f10, 0x0084($sp)
    lw      a3, 0x00CC(s0)             # 000000CC
    lw      a2, 0x00D0(s0)             # 000000D0
    jal     func_8003584C
    swc1    $f4, 0x0010($sp)
    addiu   t4, s0, 0x0050             # t4 = 00000050
    b       lbl_80037E30
    sw      t4, 0x003C($sp)
lbl_80037C80:
    bne     v1, $zero, lbl_80037D54
    lw      t7, 0x0038($sp)
    lw      t5, 0x0038($sp)
    lw      t6, 0x00A4($sp)
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lwc1    $f8, 0x0004(t5)            # 00000004
    lwc1    $f18, 0x0000(t6)           # 00000000
    sw      a0, 0x003C($sp)
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_80067620
    sub.s   $f20, $f8, $f18
    mov.s   $f12, $f20
    mov.s   $f14, $f0
    jal     func_800CD76C
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6BAC($at)          # 80106BAC
    lwc1    $f6, 0x00FC(s0)            # 000000FC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6BB0($at)           # 80106BB0
    mul.s   $f4, $f6, $f10
    nop
    mul.s   $f12, $f4, $f8
    jal     func_800CD510
    nop
    lwc1    $f16, 0x0050($sp)
    lw      v0, 0x00A4($sp)
    mul.s   $f2, $f0, $f16
    c.lt.s  $f2, $f20
    nop
    bc1fl   lbl_80037D1C
    neg.s   $f0, $f2
    sub.s   $f6, $f20, $f2
    lwc1    $f18, 0x0000(v0)           # 00000000
    mov.s   $f20, $f2
    add.s   $f10, $f18, $f6
    b       lbl_80037D44
    swc1    $f10, 0x0000(v0)           # 00000000
    neg.s   $f0, $f2
lbl_80037D1C:
    lw      v0, 0x00A4($sp)
    c.lt.s  $f20, $f0
    nop
    bc1fl   lbl_80037D48
    lwc1    $f6, 0x0084($sp)
    add.s   $f8, $f20, $f2
    lwc1    $f4, 0x0000(v0)            # 00000000
    mov.s   $f20, $f0
    add.s   $f18, $f4, $f8
    swc1    $f18, 0x0000(v0)           # 00000000
lbl_80037D44:
    lwc1    $f6, 0x0084($sp)
lbl_80037D48:
    sub.s   $f10, $f6, $f20
    b       lbl_80037E00
    swc1    $f10, 0x0084($sp)
lbl_80037D54:
    lw      t8, 0x00A4($sp)
    lwc1    $f4, 0x0004(t7)            # 00000004
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lwc1    $f8, 0x0000(t8)            # 00000000
    sw      a0, 0x003C($sp)
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_80067620
    sub.s   $f20, $f4, $f8
    mov.s   $f12, $f20
    jal     func_800CD76C
    mov.s   $f14, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f14, 0x6BB4($at)          # 80106BB4
    mov.s   $f2, $f0
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f14, $f0
    nop
    bc1f    lbl_80037DB8
    nop
    jal     func_800CF470
    sub.s   $f12, $f2, $f14
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    b       lbl_80037DF0
    sub.s   $f16, $f18, $f0
lbl_80037DB8:
    lwc1    $f14, 0x6BB8($at)          # 3F806BB8
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_80037DEC
    mtc1    $at, $f16                  # $f16 = 1.00
    jal     func_800CF470
    sub.s   $f12, $f14, $f2
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    b       lbl_80037DF0
    sub.s   $f16, $f6, $f0
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_80037DEC:
    nop
lbl_80037DF0:
    mul.s   $f4, $f20, $f16
    lwc1    $f10, 0x0084($sp)
    sub.s   $f8, $f10, $f4
    swc1    $f8, 0x0084($sp)
lbl_80037E00:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6BBC($at)          # 80106BBC
    mfc1    a2, $f20
    mfc1    a3, $f20
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFF0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_8003584C
    swc1    $f18, 0x0010($sp)
    swc1    $f20, 0x00D0(s0)           # 000000D0
    swc1    $f20, 0x00CC(s0)           # 000000CC
lbl_80037E30:
    lw      v0, 0x0038($sp)
    lwc1    $f10, 0x00E4(s0)           # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x0000(v0)            # 00000000
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFE4
    lw      a1, 0x003C($sp)
    add.s   $f4, $f6, $f10
    swc1    $f4, 0x0074($sp)
    lwc1    $f18, 0x00E8(s0)           # 000000E8
    lwc1    $f8, 0x0004(v0)            # 00000004
    add.s   $f6, $f8, $f18
    lwc1    $f18, 0x6BC0($at)          # 80106BC0
    swc1    $f6, 0x0078($sp)
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    lwc1    $f10, 0x0008(v0)           # 00000008
    add.s   $f8, $f10, $f4
    swc1    $f8, 0x007C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f18, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_80037EA4:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x0048($sp)
    lw      v0, 0x0090(s0)             # 00000090
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC0
    lw      a1, 0x0430(v0)             # 00000430
    jal     func_800226D8
    sw      v0, 0x0044($sp)
    lw      v0, 0x0044($sp)
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    lwc1    $f4, 0x0034($sp)
    lw      t6, 0x0430(v0)             # 00000430
    or      v0, $zero, $zero           # v0 = 00000000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lw      t7, 0x01E0(t6)             # 000001E0
    lwc1    $f12, 0x0034($sp)
    lw      t1, 0x007C($sp)
    andi    t8, t7, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_80037F18
    lui     a2, 0x3F00                 # a2 = 3F000000
    b       lbl_80037F18
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80037F18:
    beq     v0, $zero, lbl_80037F78
    lui     $at, 0x4244                # $at = 42440000
    mtc1    $at, $f6                   # $f6 = 49.00
    lw      t9, 0x007C($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    sub.s   $f12, $f4, $f6
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    swc1    $f12, 0x0034($sp)
    jal     func_8003569C
    lwc1    $f14, 0x0000(t9)           # 00000000
    lw      t0, 0x007C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    swc1    $f0, 0x0000(t0)            # 00000000
    lwc1    $f14, 0x0100(s0)           # 00000100
    lwc1    $f12, 0x6BC4($at)          # 80106BC4
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    jal     func_8003569C
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    b       lbl_80037F88
    swc1    $f0, 0x0100(s0)            # 00000100
lbl_80037F78:
    jal     func_8003569C
    lwc1    $f14, 0x0000(t1)           # 00000000
    lw      t2, 0x007C($sp)
    swc1    $f0, 0x0000(t2)            # 00000000
lbl_80037F88:
    lwc1    $f10, 0x0048($sp)
    lwc1    $f16, 0x0078($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t3, 0x0082($sp)
    add.s   $f18, $f10, $f16
    swc1    $f0, 0x0060($sp)
    swc1    $f0, 0x0068($sp)
    beq     t3, $zero, lbl_80037FD0
    swc1    $f18, 0x0064($sp)
    lw      t4, 0x0074($sp)
    addiu   a0, s0, 0x0108             # a0 = 00000108
    lh      a1, 0x00A2(s0)             # 000000A2
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_800371C4
    lh      a2, 0x0006(t4)             # 00000006
    lwc1    $f4, 0x0064($sp)
    sub.s   $f6, $f4, $f0
    swc1    $f6, 0x0064($sp)
lbl_80037FD0:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6BC8($at)           # 80106BC8
    lw      a2, 0x00D0(s0)             # 000000D0
    lw      a3, 0x00CC(s0)             # 000000CC
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x00E4(s0)           # 000000E4
    lwc1    $f16, 0x0030($sp)
    lwc1    $f6, 0x0034($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f18, $f10, $f16
    lwc1    $f16, 0x0038($sp)
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    addiu   a1, s0, 0x0050             # a1 = 00000050
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x00E8(s0)            # 000000E8
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x6BCC($at)           # 80106BCC
    swc1    $f8, 0x0058($sp)
    lwc1    $f10, 0x00EC(s0)           # 000000EC
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x005C($sp)
    lwc1    $f0, 0x0100(s0)            # 00000100
    swc1    $f4, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80038060:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a1, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lwc1    $f4, 0x0028($sp)
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f14, $f4
    lwc1    $f6, 0x002C($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1fl   lbl_800380A8
    c.lt.s  $f6, $f14
    mtc1    $at, $f12                  # $f12 = 20.00
    b       lbl_800380CC
    swc1    $f4, 0x001C($sp)
    c.lt.s  $f6, $f14
lbl_800380A8:
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_800380C8
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    b       lbl_800380CC
    swc1    $f6, 0x001C($sp)
    mtc1    $at, $f12                  # $f12 = 20.00
lbl_800380C8:
    swc1    $f14, 0x001C($sp)
lbl_800380CC:
    lwc1    $f14, 0x00C0(a0)           # 000000C0
    jal     func_8003569C
    sw      a0, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      a0, 0x0020($sp)
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    div.s   $f10, $f8, $f0
    swc1    $f0, 0x00C0(a0)            # 000000C0
    lwc1    $f12, 0x001C($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lwc1    $f14, 0x00DC(a0)           # 000000DC
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80038118:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    c.lt.s  $f12, $f14
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    lwc1    $f4, 0x002C($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    bc1f    lbl_80038174
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      t6, 0x0032($sp)
    swc1    $f14, 0x001C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    beql    t6, $zero, lbl_8003816C
    mtc1    $at, $f12                  # $f12 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    b       lbl_800381E4
    lwc1    $f14, 0x00C0(a0)           # 000000C0
    mtc1    $at, $f12                  # $f12 = 10.00
lbl_8003816C:
    b       lbl_800381E4
    lwc1    $f14, 0x00C0(a0)           # 000000C0
lbl_80038174:
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_800381B8
    lh      t8, 0x0032($sp)
    lh      t7, 0x0032($sp)
    swc1    $f4, 0x001C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    beql    t7, $zero, lbl_800381AC
    mtc1    $at, $f12                  # $f12 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    b       lbl_800381E4
    lwc1    $f14, 0x00C0(a0)           # 000000C0
    mtc1    $at, $f12                  # $f12 = 10.00
lbl_800381AC:
    b       lbl_800381E4
    lwc1    $f14, 0x00C0(a0)           # 000000C0
    lh      t8, 0x0032($sp)
lbl_800381B8:
    swc1    $f12, 0x001C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    beql    t8, $zero, lbl_800381DC
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    b       lbl_800381E4
    lwc1    $f14, 0x00C0(a0)           # 000000C0
    mtc1    $at, $f12                  # $f12 = 20.00
lbl_800381DC:
    nop
    lwc1    $f14, 0x00C0(a0)           # 000000C0
lbl_800381E4:
    jal     func_8003569C
    sw      a0, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      a0, 0x0020($sp)
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    div.s   $f8, $f6, $f0
    swc1    $f0, 0x00C0(a0)            # 000000C0
    lwc1    $f12, 0x001C($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lwc1    $f14, 0x00DC(a0)           # 000000DC
    mfc1    a2, $f8
    jal     func_8003569C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8003822C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    sw      a3, 0x0044($sp)
    sll     a3, a3, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    bltz    a1, lbl_80038268
    subu    v1, $zero, a1
    sll     v1, a1, 16
    b       lbl_80038270
    sra     v1, v1, 16
lbl_80038268:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80038270:
    blez    a3, lbl_800382C4
    sll     v0, a3, 16
    sll     a0, a3, 16
    sra     a0, a0, 16
    sh      v1, 0x0028($sp)
    sh      a1, 0x003E($sp)
    jal     func_80063684              # coss?
    sh      a3, 0x0046($sp)
    lh      a3, 0x0046($sp)
    lh      v1, 0x0028($sp)
    lh      a1, 0x003E($sp)
    mtc1    a3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    nop
    sll     v0, v0, 16
    b       lbl_800382C8
    sra     v0, v0, 16
lbl_800382C4:
    sra     v0, v0, 16
lbl_800382C8:
    lh      t7, 0x0042($sp)
    lw      t8, 0x0038($sp)
    subu    a0, t7, v0
    sll     a0, a0, 16
    sra     a0, a0, 16
    bltz    a0, lbl_800382EC
    subu    v0, $zero, a0
    b       lbl_800382EC
    or      v0, a0, $zero              # v0 = 00000000
lbl_800382EC:
    slt     $at, v0, v1
    beq     $at, $zero, lbl_80038318
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f18, 0x00C4(t8)           # 000000C4
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    div.s   $f4, $f16, $f18
    mul.s   $f2, $f4, $f6
    b       lbl_80038374
    mfc1    a2, $f2
lbl_80038318:
    mtc1    v1, $f8                    # $f8 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6BD0($at)          # 80106BD0
    cvt.s.w $f10, $f8
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6BD4($at)          # 80106BD4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sw      a0, 0x001C($sp)
    mul.s   $f18, $f10, $f16
    sh      a1, 0x003E($sp)
    jal     func_800355F0
    sub.s   $f14, $f4, $f18
    lw      t9, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f8, 0x00C4(t9)            # 000000C4
    lw      a0, 0x001C($sp)
    lh      a1, 0x003E($sp)
    div.s   $f10, $f6, $f8
    mul.s   $f2, $f10, $f0
    nop
    mfc1    a2, $f2
lbl_80038374:
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8003838C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    mtc1    a3, $f12                   # $f12 = 0.00
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6BD8($at)           # 80106BD8
    lwc1    $f6, 0x00D8(t6)            # 000000D8
    addiu   t5, a1, 0x8001             # t5 = FFFF8001
    subu    v1, a2, t5
    c.lt.s  $f4, $f6
    sll     v1, v1, 16
    addiu   t9, a1, 0x8001             # t9 = FFFF8001
    sra     v1, v1, 16
    bc1f    lbl_80038418
    lui     $at, 0x8010                # $at = 80100000
    subu    v1, a2, t9
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   t0, v1, 0x8001             # t0 = FFFF8001
    sll     t1, t0, 16
    sra     t2, t1, 16
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6BDC($at)          # 80106BDC
    cvt.s.w $f10, $f8
    mul.s   $f14, $f10, $f18
    b       lbl_80038420
    sw      v1, 0x001C($sp)
lbl_80038418:
    lwc1    $f14, 0x6BE0($at)          # 80106BE0
    sw      v1, 0x001C($sp)
lbl_80038420:
    jal     func_800355F0
    sh      a1, 0x003E($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f8, 0x0048($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    sub.s   $f6, $f4, $f0
    lw      v1, 0x001C($sp)
    lh      a1, 0x003E($sp)
    lw      t6, 0x0038($sp)
    mul.s   $f10, $f6, $f8
    add.s   $f16, $f10, $f0
    c.lt.s  $f16, $f12
    nop
    bc1fl   lbl_80038468
    lui     $at, 0x3F00                # $at = 3F000000
    mov.s   $f16, $f12
    lui     $at, 0x3F00                # $at = 3F000000
lbl_80038468:
    lwc1    $f14, 0x00E0(t6)           # 000000E0
    mtc1    $at, $f12                  # $f12 = 0.50
    swc1    $f16, 0x0034($sp)
    sh      a1, 0x003E($sp)
    jal     func_800355F0
    sw      v1, 0x001C($sp)
    lw      t7, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lw      v1, 0x001C($sp)
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f4, 0x00C8(t7)            # 000000C8
    mtc1    v1, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x0034($sp)
    div.s   $f2, $f18, $f4
    lh      a1, 0x003E($sp)
    lw      $ra, 0x0014($sp)
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f16
    nop
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f4, $f18, $f2
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    addu    v0, a1, t1
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800384E0:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0020($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    lw      s1, 0x0084($sp)
    or      s2, a0, $zero              # s2 = 00000000
    addiu   s0, s0, 0x8DC8             # s0 = 80118DC8
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    lh      v0, 0x0018(s1)             # 00000018
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8DA0             # a2 = 80118DA0
    sltiu   v0, v0, 0x0001
    sw      v0, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x0074($sp)
    jal     func_80036FB4
    or      a3, s0, $zero              # a3 = 80118DC8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80038564
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80038564
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80038828
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v0, $at, lbl_8003882C
    lh      t3, 0x0018(s1)             # 00000018
    b       lbl_80038968
    addiu   t1, $zero, 0x0014          # t1 = 00000014
lbl_80038564:
    addiu   a1, s2, 0x0050             # a1 = 00000050
    addiu   a2, s2, 0x0074             # a2 = 00000074
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x8DA0             # a3 = 80118DA0
    sw      a2, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_80036F4C
    sw      s0, 0x0010($sp)
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7254($at)          # 80118DAC
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x722C($at)          # 80118DD4
    lwc1    $f10, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f8, $f4, $f6
    lwc1    $f18, -0x7250($at)         # 80118DB0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7228($at)          # 80118DD8
    add.s   $f16, $f10, $f8
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    add.s   $f6, $f18, $f4
    swc1    $f16, 0x0058($sp)
    lwc1    $f10, 0x0004(s1)           # 00000004
    lwc1    $f16, -0x724C($at)         # 80118DB4
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f8, $f10, $f6
    lwc1    $f18, -0x7224($at)         # 80118DDC
    addiu   a1, a1, 0x8DA0             # a1 = 80118DA0
    lw      a0, 0x0034($sp)
    add.s   $f4, $f16, $f18
    swc1    $f8, 0x005C($sp)
    lwc1    $f10, 0x0008(s1)           # 00000008
    add.s   $f6, $f10, $f4
    jal     func_80067580
    swc1    $f6, 0x0060($sp)
    lwc1    $f2, 0x0078($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t6, 0x0080($sp)
    c.lt.s  $f2, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bc1fl   lbl_80038620
    div.s   $f16, $f0, $f2
    mtc1    $at, $f8                   # $f8 = 1.00
    b       lbl_80038628
    swc1    $f8, 0x0000(t6)            # 00000000
    div.s   $f16, $f0, $f2
lbl_80038620:
    lw      t7, 0x0080($sp)
    swc1    $f16, 0x0000(t7)           # 00000000
lbl_80038628:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f18                  # $f18 = 1.50
    sh      t8, 0x0018(s1)             # 00000018
    lui     t9, 0x8012                 # t9 = 80120000
    swc1    $f18, 0x0010(s1)           # 00000010
    lw      t9, -0x7220(t9)            # 80118DE0
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD8
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFE8
    sw      t9, 0x000C(s1)             # 0000000C
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    lw      t0, 0x0074($sp)
    addiu   s0, s2, 0x005C             # s0 = 0000005C
    or      a0, s0, $zero              # a0 = 0000005C
    lwc1    $f10, 0x0000(t0)           # 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD8
    jal     func_800359A8
    swc1    $f10, 0x0048($sp)
    lw      t2, 0x0000(s0)             # 0000005C
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8DF0             # a2 = 80118DF0
    sw      t2, 0x0000(a2)             # 80118DF0
    lw      t1, 0x0004(s0)             # 00000060
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    sw      t1, 0x0004(a2)             # 80118DF4
    lw      t2, 0x0008(s0)             # 00000064
    jal     func_80035A94
    sw      t2, 0x0008(a2)             # 80118DF8
    lui     a2, 0x8012                 # a2 = 80120000
    bne     v0, $zero, lbl_800387D4
    addiu   a2, a2, 0x8DF0             # a2 = 80118DF0
    lw      v0, 0x0074($sp)
    lh      t4, 0x004E($sp)
    lh      t1, 0x004C($sp)
    lh      t3, 0x0006(v0)             # 00000006
    or      a0, s0, $zero              # a0 = 0000005C
    lw      a1, 0x0034($sp)
    subu    t5, t3, t4
    sll     t6, t5, 16
    sra     t7, t6, 16
    sra     t8, t7,  1
    addu    t9, t4, t8
    sh      t9, 0x004E($sp)
    lh      t0, 0x0004(v0)             # 00000004
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD8
    subu    t2, t0, t1
    sll     t3, t2, 16
    sra     t5, t3, 16
    sra     t6, t5,  1
    addu    t7, t1, t6
    jal     func_800359A8
    sh      t7, 0x004C($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    lh      t4, -0x7240(t4)            # 80118DC0
    lh      t8, 0x004E($sp)
    lw      t0, 0x0074($sp)
    slti    $at, t4, 0x2AA8
    beql    $at, $zero, lbl_80038730
    lh      t2, 0x0006(t0)             # 00000006
    sh      t8, 0x0016(s1)             # 00000016
    lh      t9, 0x004C($sp)
    b       lbl_80038740
    sh      t9, 0x0014(s1)             # 00000014
    lh      t2, 0x0006(t0)             # 00000006
lbl_80038730:
    sh      t2, 0x0016(s1)             # 00000016
    lw      t3, 0x0074($sp)
    lh      t5, 0x0004(t3)             # 00000004
    sh      t5, 0x0014(s1)             # 00000014
lbl_80038740:
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7254($at)          # 80118DAC
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x722C($at)          # 80118DD4
    lwc1    $f16, 0x0000(s1)           # 00000000
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f8, $f4, $f6
    lwc1    $f10, -0x7250($at)         # 80118DB0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7228($at)          # 80118DD8
    sub.s   $f18, $f16, $f8
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD8
    add.s   $f6, $f10, $f4
    swc1    $f18, 0x0058($sp)
    lwc1    $f16, 0x0004(s1)           # 00000004
    lwc1    $f18, -0x724C($at)         # 80118DB4
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f8, $f16, $f6
    lwc1    $f10, -0x7224($at)         # 80118DDC
    lw      a1, 0x0034($sp)
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFE8
    add.s   $f4, $f18, $f10
    swc1    $f8, 0x005C($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    sub.s   $f6, $f16, $f4
    jal     func_80067A84
    swc1    $f6, 0x0060($sp)
    lw      t1, 0x0074($sp)
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    lwc1    $f8, 0x0000(t1)            # 00000000
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD8
    jal     func_800359A8
    swc1    $f8, 0x0048($sp)
    b       lbl_800389F0
    lw      $ra, 0x002C($sp)
lbl_800387D4:
    lw      t7, 0x0000(a2)             # 00000000
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x8DA0             # t4 = 80118DA0
    sw      t7, 0x0000(s0)             # 0000005C
    lw      t6, 0x0004(a2)             # 00000004
    or      t0, a2, $zero              # t0 = 00000000
    addiu   t2, a2, 0x0024             # t2 = 00000024
    sw      t6, 0x0004(s0)             # 00000060
    lw      t7, 0x0008(a2)             # 00000008
    sw      t7, 0x0008(s0)             # 00000064
lbl_800387FC:
    lw      t9, 0x0000(t0)             # 00000000
    addiu   t0, t0, 0x000C             # t0 = 0000000C
    addiu   t4, t4, 0x000C             # t4 = 80118DAC
    sw      t9, -0x000C(t4)            # 80118DA0
    lw      t8, -0x0008(t0)            # 00000004
    sw      t8, -0x0008(t4)            # 80118DA4
    lw      t9, -0x0004(t0)            # 00000008
    bne     t0, t2, lbl_800387FC
    sw      t9, -0x0004(t4)            # 80118DA8
    lw      t9, 0x0000(t0)             # 0000000C
    sw      t9, 0x0000(t4)             # 80118DAC
lbl_80038828:
    lh      t3, 0x0018(s1)             # 00000018
lbl_8003882C:
    addiu   s0, s2, 0x005C             # s0 = 0000005C
    addiu   a0, s2, 0x0050             # a0 = 00000050
    beq     t3, $zero, lbl_80038860
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sh      t5, 0x001A(s1)             # 0000001A
    sh      $zero, 0x0018(s1)          # 00000018
    lw      t6, 0x0000(s0)             # 0000005C
    sw      t6, 0x0074(s2)             # 00000074
    lw      t1, 0x0004(s0)             # 00000060
    sw      t1, 0x0078(s2)             # 00000078
    lw      t6, 0x0008(s0)             # 00000064
    sw      t6, 0x007C(s2)             # 0000007C
lbl_80038860:
    jal     func_80067580
    addiu   a1, a1, 0x8DA0             # a1 = 80118DA0
    lwc1    $f12, 0x0078($sp)
    mov.s   $f2, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f12, $f0
    lw      t7, 0x0080($sp)
    bc1fl   lbl_80038894
    div.s   $f10, $f0, $f12
    mtc1    $at, $f18                  # $f18 = 1.00
    b       lbl_8003889C
    swc1    $f18, 0x0000(t7)           # 00000000
    div.s   $f10, $f0, $f12
lbl_80038894:
    lw      t2, 0x0080($sp)
    swc1    $f10, 0x0000(t2)           # 00000000
lbl_8003889C:
    lw      t0, 0x0080($sp)
    lwc1    $f4, 0x007C($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lwc1    $f16, 0x0000(t0)           # 00000000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8DAC             # a2 = 80118DAC
    mul.s   $f6, $f16, $f4
    addiu   a1, a1, 0x8DA0             # a1 = 80118DA0
    or      a0, s0, $zero              # a0 = 0000005C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f6, 0x0010(s1)            # 00000010
    jal     func_80035A28
    swc1    $f2, 0x0050($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f2, 0x0050($sp)
    mtc1    $at, $f8                   # $f8 = 30.00
    sw      $zero, 0x000C(s1)          # 0000000C
    lw      t4, 0x0074($sp)
    c.lt.s  $f2, $f8
    lui     a0, 0x8012                 # a0 = 80120000
    bc1fl   lbl_800389F0
    lw      $ra, 0x002C($sp)
    lh      a0, -0x7240(a0)            # 80118DC0
    lh      t8, 0x0006(t4)             # 00000006
    swc1    $f2, 0x0050($sp)
    addiu   a0, a0, 0x3FFF             # a0 = 80123FFF
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      t8, 0x0046($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6BE4($at)          # 80106BE4
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f2, 0x0050($sp)
    mul.s   $f10, $f0, $f18
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6BE8($at)           # 80106BE8
    or      a0, s0, $zero              # a0 = 0000005C
    sub.s   $f6, $f4, $f2
    or      a1, s0, $zero              # a1 = 0000005C
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFD0
    trunc.w.s $f16, $f10
    mul.s   $f18, $f6, $f8
    mfc1    t3, $f16
    nop
    sh      t3, 0x0044($sp)
    jal     func_800359A8
    swc1    $f18, 0x0040($sp)
    b       lbl_800389F0
    lw      $ra, 0x002C($sp)
lbl_80038968:
    lh      t5, 0x0018(s1)             # 00000018
    beql    t5, $zero, lbl_80038998
    lwc1    $f10, 0x007C($sp)
    sh      t1, 0x001A(s1)             # 0000001A
    lw      t7, 0x005C(s2)             # 0000005C
    lw      t6, 0x0060(s2)             # 00000060
    sw      t7, 0x0074(s2)             # 00000074
    lw      t7, 0x0064(s2)             # 00000064
    sw      t6, 0x0078(s2)             # 00000078
    sw      t7, 0x007C(s2)             # 0000007C
    sh      $zero, 0x0018(s1)          # 00000018
    lwc1    $f10, 0x007C($sp)
lbl_80038998:
    sw      $zero, 0x000C(s1)          # 0000000C
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f10, 0x0010(s1)           # 00000010
    lwc1    $f16, -0x7260($at)         # 80118DA0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x7254($at)          # 80118DAC
    addiu   s0, s2, 0x005C             # s0 = 0000005C
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f16, $f4
    swc1    $f6, 0x0000(s0)            # 0000005C
    lwc1    $f8, -0x725C($at)          # 80118DA4
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f18, -0x7250($at)         # 80118DB0
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f10, $f8, $f18
    swc1    $f10, 0x0004(s0)           # 00000060
    lwc1    $f16, -0x7258($at)         # 80118DA8
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x724C($at)          # 80118DB4
    add.s   $f6, $f16, $f4
    swc1    $f6, 0x0008(s0)            # 00000064
    lw      $ra, 0x002C($sp)
lbl_800389F0:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80038A04:
    sw      a0, 0x0000($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_80038A14:
# NORM1()
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6BEC($at)          # 80106BEC
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f6, $f4, $f0
    lwc1    $f8, 0x6BF0($at)           # 80106BF0
    lui     t8, 0x800F                 # t8 = 800F0000
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f4, 0x6BF4($at)           # 80106BF4
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFC4
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    addiu   v0, v0, 0x0024             # v0 = 00000024
    mul.s   $f10, $f6, $f8
    sub.s   $f6, $f4, $f10
    mul.s   $f8, $f0, $f12
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f2, $f8, $f6
    nop
    mul.s   $f8, $f10, $f2
    swc1    $f8, 0x0000(s0)            # 00000000
    lh      t3, -0x0020(v0)            # 00000004
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    mul.s   $f10, $f4, $f2
    swc1    $f10, 0x0004(s0)           # 00000004
    lh      t4, -0x001C(v0)            # 00000008
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    mul.s   $f4, $f6, $f2
    swc1    $f4, 0x0008(s0)            # 00000008
    lh      t5, -0x0018(v0)            # 0000000C
    lwc1    $f6, 0x6BF8($at)           # 80106BF8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x800F                # $at = 800F0000
    mul.s   $f4, $f8, $f6
    add.s   $f8, $f4, $f10
    trunc.w.s $f6, $f8
    mfc1    t7, $f6
    nop
    sh      t7, 0x0020(s0)             # 00000020
    lh      t9, -0x0014(v0)            # 00000010
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    swc1    $f10, 0x000C(s0)           # 0000000C
    lh      t8, -0x0010(v0)            # 00000014
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t0, -0x000C(v0)            # 00000018
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f8, $f10, $f12
    swc1    $f8, 0x0014(s0)            # 00000014
    lh      t1, -0x0008(v0)            # 0000001C
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    swc1    $f4, 0x0018(s0)            # 00000018
    lh      t2, -0x0004(v0)            # 00000020
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f6, $f8, $f12
    swc1    $f6, 0x001C(s0)            # 0000001C
    lh      t3, 0x0000(v0)             # 00000024
    sh      t3, 0x0022(s0)             # 00000022
    lh      t4, 0x0022(s0)             # 00000022
    sw      a2, 0x0040($sp)
    sw      a1, 0x003C($sp)
    jal     func_80067A84
    sw      t4, -0x0E58($at)           # 800EF1A8
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0038($sp)
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFBC
    jal     func_80067A84
    lw      a1, 0x003C($sp)
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_80038BFC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_80038BFC
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v1, $at, lbl_80038BE8
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beql    v1, $at, lbl_80038C00
    addiu   s1, s0, 0x0024             # s1 = 00000024
    b       lbl_80038C54
    addiu   s1, s0, 0x0024             # s1 = 00000024
lbl_80038BE8:
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f0                   # $f0 = 1800.00
    nop
    swc1    $f0, 0x00C8(s0)            # 000000C8
    swc1    $f0, 0x00C4(s0)            # 000000C4
lbl_80038BFC:
    addiu   s1, s0, 0x0024             # s1 = 00000024
lbl_80038C00:
    sh      $zero, 0x0018(s1)          # 0000003C
    lh      v0, 0x0018(s1)             # 0000003C
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    sw      $zero, 0x000C(s1)          # 00000030
    sh      $zero, 0x0024(s1)          # 00000048
    sh      t5, 0x0028(s1)             # 0000004C
    sh      v0, 0x0014(s1)             # 00000038
    sh      v0, 0x0016(s1)             # 0000003A
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    swc1    $f4, 0x0010(s1)            # 00000034
    lwc1    $f10, 0x0098(s0)           # 00000098
    swc1    $f10, 0x001C(s1)           # 00000040
    lwc1    $f8, 0x00D8(s0)            # 000000D8
    sh      $zero, 0x001A(s1)          # 0000003E
    swc1    $f8, 0x0020(s1)            # 00000044
    lh      t6, 0x007A($sp)
    sh      t6, 0x0026(s1)             # 0000004A
    sw      $zero, -0x0E10($at)        # 800EF1F0
    sh      t7, 0x002A(s1)             # 0000004E
lbl_80038C54:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      v1, 0x015E(s0)             # 0000015E
    lui     $at, 0x800F                # $at = 800F0000
    sw      v1, -0x0E10($at)           # 800EF1F0
    lh      v0, 0x0028(s1)             # 0000004C
    lui     $at, 0x8010                # $at = 80100000
    beq     v0, $zero, lbl_80038C7C
    nop
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0028(s1)             # 0000004C
lbl_80038C7C:
    lwc1    $f6, 0x6BFC($at)           # 80106BFC
    lwc1    $f4, 0x00D8(s0)            # 000000D8
    c.lt.s  $f6, $f4
    nop
    bc1fl   lbl_80038CA4
    lh      v0, 0x002A(s1)             # 0000004E
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    b       lbl_80038D10
    sh      t8, 0x002A(s1)             # 0000004E
    lh      v0, 0x002A(s1)             # 0000004E
lbl_80038CA4:
    blez    v0, lbl_80038D10
    slti    $at, v0, 0x0015
    bnel    $at, $zero, lbl_80038D0C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    lh      t0, 0x00A2(s0)             # 000000A2
    lh      t4, 0x007A($sp)
    addiu   t1, t0, 0x8001             # t1 = FFFF8000
    sll     t2, t1, 16
    sra     t3, t2, 16
    subu    t5, t3, t4
    sll     t6, t5, 16
    sra     t7, t6, 16
    div     $zero, t7, v0
    mflo    t9
    addu    t8, t4, t9
    sh      t8, 0x0026(s1)             # 0000004A
    bne     v0, $zero, lbl_80038CF0
    nop
    break   # 0x01C00
lbl_80038CF0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80038D08
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80038D08
    nop
    break   # 0x01800
lbl_80038D08:
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
lbl_80038D0C:
    sh      t0, 0x002A(s1)             # 0000004E
lbl_80038D10:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lwc1    $f0, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6C00($at)          # 80106C00
    mul.s   $f2, $f0, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f0, $f10
    swc1    $f8, 0x009C($sp)
    lh      t1, 0x0018(s1)             # 0000003C
    beql    t1, $zero, lbl_80038D4C
    swc1    $f2, 0x0098($sp)
    b       lbl_80038D4C
    swc1    $f12, 0x0098($sp)
    swc1    $f2, 0x0098($sp)
lbl_80038D4C:
    lwc1    $f0, 0x00D8(s0)            # 000000D8
    lwc1    $f6, 0x0020(s1)            # 00000044
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    sub.s   $f4, $f0, $f6
    lwc1    $f10, 0x6C04($at)          # 80106C04
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f12                  # $f12 = -1.00
    mul.s   $f16, $f4, $f10
    c.lt.s  $f18, $f16
    nop
    bc1fl   lbl_80038D88
    c.lt.s  $f12, $f16
    mov.s   $f16, $f18
    c.lt.s  $f12, $f16
lbl_80038D88:
    nop
    bc1fl   lbl_80038D9C
    lh      v0, 0x001A(s1)             # 0000003E
    mov.s   $f16, $f12
    lh      v0, 0x001A(s1)             # 0000003E
lbl_80038D9C:
    swc1    $f0, 0x0020(s1)            # 00000044
    beq     v0, $zero, lbl_80038E20
    sll     t2, v0,  1
    mtc1    t2, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x0010(s1)            # 00000034
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    cvt.s.w $f4, $f6
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f16, 0x0094($sp)
    swc1    $f2, 0x00A0($sp)
    lw      a2, 0x0098($sp)
    jal     func_8003569C
    add.s   $f12, $f8, $f4
    swc1    $f0, 0x00C8(s0)            # 000000C8
    lh      t3, 0x001A(s1)             # 0000003E
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    sll     t5, t3,  1
    mtc1    t5, $f10                   # $f10 = 0.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    cvt.s.w $f6, $f10
    lw      a2, 0x009C($sp)
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    jal     func_8003569C
    add.s   $f12, $f6, $f8
    lwc1    $f2, 0x00A0($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lh      t6, 0x001A(s1)             # 0000003E
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_80038E7C
    sh      t7, 0x001A(s1)             # 0000003E
lbl_80038E20:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6C08($at)           # 80106C08
    lwc1    $f0, 0x0010(s1)            # 00000034
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mul.s   $f10, $f0, $f4
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f16, 0x0094($sp)
    swc1    $f2, 0x00A0($sp)
    lw      a2, 0x0098($sp)
    mul.s   $f6, $f10, $f16
    jal     func_8003569C
    sub.s   $f12, $f0, $f6
    lui     $at, 0x4180                # $at = 41800000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mtc1    $at, $f12                  # $f12 = 16.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a2, 0x009C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lwc1    $f2, 0x00A0($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
lbl_80038E7C:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f12                  # $f12 = 16.00
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f2, 0x00A0($sp)
    jal     func_8003569C
    lw      a2, 0x009C($sp)
    lwc1    $f2, 0x00A0($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mfc1    a2, $f2
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C0C($at)          # 80106C0C
    jal     func_8003569C
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C10($at)          # 80106C10
    lw      a2, 0x009C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C14($at)          # 80106C14
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6C18($at)           # 80106C18
    lwc1    $f8, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f10, $f8, $f4
    mov.s   $f14, $f0
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    lh      t4, 0x0022(s0)             # 00000022
    swc1    $f0, 0x00D4(s0)            # 000000D4
    andi    t9, t4, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80038F9C
    sh      $zero, 0x0024(s1)          # 00000048
    lh      a1, 0x007A($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a1, a1, 0x8001             # a1 = FFFF8001
    sll     a1, a1, 16
    jal     func_80036870
    sra     a1, a1, 16
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f6, 0x0010(s0)            # 00000010
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    div.s   $f8, $f12, $f6
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    sll     a0, v0, 16
    sra     a0, a0, 16
    sub.s   $f6, $f12, $f10
    lh      a1, 0x0024(s1)             # 00000048
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    mul.s   $f0, $f8, $f4
    nop
    mul.s   $f2, $f0, $f6
    add.s   $f8, $f0, $f2
    mfc1    a2, $f8
    jal     func_80035724
    nop
    b       lbl_80038FB8
    sh      v0, 0x0024(s1)             # 00000048
    sh      $zero, 0x0024(s1)          # 00000048
lbl_80038F9C:
    lwc1    $f4, 0x0104(s0)            # 00000104
    lwc1    $f0, 0x0098(s0)            # 00000098
    c.eq.s  $f0, $f4
    nop
    bc1fl   lbl_80038FBC
    lh      t8, 0x0018(s1)             # 0000003C
    swc1    $f0, 0x001C(s1)            # 00000040
lbl_80038FB8:
    lh      t8, 0x0018(s1)             # 0000003C
lbl_80038FBC:
    beq     t8, $zero, lbl_80039010
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f10                  # $f10 = -40.00
    lwc1    $f6, 0x0000(s0)            # 00000000
    c.lt.s  $f10, $f6
    nop
    bc1fl   lbl_80039014
    lwc1    $f2, 0x0000(s0)            # 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x0014(s1)             # 00000038
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f8, 0x0000(s0)            # 00000000
    lui     $at, 0xC220                # $at = C2200000
    sub.s   $f10, $f4, $f0
    mtc1    $at, $f4                   # $f4 = -40.00
    mul.s   $f6, $f8, $f10
    nop
    mul.s   $f8, $f4, $f0
    b       lbl_80039014
    add.s   $f2, $f8, $f6
lbl_80039010:
    lwc1    $f2, 0x0000(s0)            # 00000000
lbl_80039014:
    lh      v0, 0x0022(s0)             # 00000022
    andi    t0, v0, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_8003904C
    andi    t2, v0, 0x0020             # t2 = 00000000
    mfc1    a2, $f2
    andi    t1, v0, 0x0001             # t1 = 00000000
    sw      t1, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFBC
    jal     func_80037370
    addiu   a3, s1, 0x001C             # a3 = 00000040
    b       lbl_8003908C
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFCC
    andi    t2, v0, 0x0020             # t2 = 00000000
lbl_8003904C:
    beq     t2, $zero, lbl_80039070
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f2
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFBC
    jal     func_80037528
    lh      a3, 0x0024(s1)             # 00000048
    b       lbl_8003908C
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFCC
lbl_80039070:
    andi    a3, v0, 0x0001             # a3 = 00000000
    sll     a3, a3, 16
    mfc1    a2, $f2
    sra     a3, a3, 16
    jal     func_80037258
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFBC
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFCC
lbl_8003908C:
    lw      a1, 0x003C($sp)
    jal     func_80067A84
    lw      a2, 0x0038($sp)
    lh      t3, 0x0028(s1)             # 0000004C
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x007C($sp)
    jal     func_80038118
    sw      t3, 0x0010($sp)
    swc1    $f0, 0x007C($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lh      t5, 0x002A(s1)             # 0000004E
    bgtzl   t5, lbl_80039108
    lh      t7, 0x0018(s1)             # 0000003C
    lh      t6, 0x0070($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sh      t6, 0x0080($sp)
    lwc1    $f4, 0x00C8(s0)            # 000000C8
    lh      a0, 0x0026(s1)             # 0000004A
    lh      a1, 0x0072($sp)
    div.s   $f8, $f10, $f4
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sh      v0, 0x0082($sp)
    b       lbl_800391A8
    lh      v1, 0x0080($sp)
    lh      t7, 0x0018(s1)             # 0000003C
lbl_80039108:
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0072($sp)
    beq     t7, $zero, lbl_80039178
    lwc1    $f4, 0x0094($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f10, 0x00C8(s0)           # 000000C8
    lh      a0, 0x0016(s1)             # 0000003A
    lh      a1, 0x0072($sp)
    div.s   $f4, $f6, $f10
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f4
    jal     func_80035724
    nop
    sh      v0, 0x0082($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f6, 0x00C8(s0)            # 000000C8
    lh      a0, 0x0014(s1)             # 00000038
    lh      a1, 0x0070($sp)
    div.s   $f10, $f8, $f6
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f10
    jal     func_80035724
    nop
    sll     v1, v0, 16
    b       lbl_800391A8
    sra     v1, v1, 16
lbl_80039178:
    lh      a2, 0x00A2(s0)             # 000000A2
    lw      a3, 0x0014(s0)             # 00000014
    jal     func_8003838C
    swc1    $f4, 0x0010($sp)
    sh      v0, 0x0082($sp)
    lh      a3, 0x0024(s1)             # 00000048
    lh      a2, 0x0020(s0)             # 00000020
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8003822C
    lh      a1, 0x0070($sp)
    sll     v1, v0, 16
    sra     v1, v1, 16
lbl_800391A8:
    slti    $at, v1, 0x38A5
    bne     $at, $zero, lbl_800391B8
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFCC
    addiu   v1, $zero, 0x38A4          # v1 = 000038A4
lbl_800391B8:
    slti    $at, v1, 0xC374
    beq     $at, $zero, lbl_800391CC
    sh      v1, 0x0080($sp)
    addiu   v1, $zero, 0xC374          # v1 = FFFFC374
    sh      v1, 0x0080($sp)
lbl_800391CC:
    lw      a0, 0x0038($sp)
    jal     func_800359A8
    lw      a1, 0x003C($sp)
    lh      t4, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    t4, $at, lbl_800393B8
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      t9, 0x0022(s0)             # 00000022
    andi    t8, t9, 0x0010             # t8 = 00000000
    bnel    t8, $zero, lbl_800393B8
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      t0, 0x00A2(s0)             # 000000A2
    lh      t2, 0x002A(s1)             # 0000004E
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, t0, 0x8001             # t1 = FFFF8001
    blez    t2, lbl_80039234
    sh      t1, 0x0026(s1)             # 0000004A
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x000C(s0)             # 0000000C
    addiu   t3, $sp, 0x0098            # t3 = FFFFFFE8
    sw      t3, 0x0010($sp)
    sw      s1, 0x0014($sp)
    jal     func_800384E0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFCC
    b       lbl_800392B0
    lh      t3, 0x0018(s1)             # 0000003C
lbl_80039234:
    lw      t5, 0x0038($sp)
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFD8
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0000(t5)             # 00000000
    sw      t7, 0x0000(a2)             # FFFFFFD8
    lw      t6, 0x0004(t5)             # 00000004
    sw      t6, 0x0004(a2)             # FFFFFFDC
    lw      t7, 0x0008(t5)             # 00000008
    sw      t7, 0x0008(a2)             # FFFFFFE0
    lwc1    $f2, 0x000C(s0)            # 0000000C
    add.s   $f0, $f2, $f2
    swc1    $f0, 0x00C8(s0)            # 000000C8
    swc1    $f0, 0x0010(s1)            # 00000034
    jal     func_80035CBC
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_8003928C
    lw      t0, 0x0038($sp)
    lh      t4, 0x0072($sp)
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      t9, 0x002A(s1)             # 0000004E
    b       lbl_800392A8
    sh      t4, 0x0026(s1)             # 0000004A
lbl_8003928C:
    lw      t8, 0x0040($sp)
    lw      t2, 0x0000(t0)             # 00000000
    sw      t2, 0x0000(t8)             # 00000000
    lw      t1, 0x0004(t0)             # 00000004
    sw      t1, 0x0004(t8)             # 00000004
    lw      t2, 0x0008(t0)             # 00000008
    sw      t2, 0x0008(t8)             # 00000008
lbl_800392A8:
    sh      $zero, 0x0018(s1)          # 0000003C
    lh      t3, 0x0018(s1)             # 0000003C
lbl_800392B0:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x0098($sp)
    beql    t3, $zero, lbl_80039308
    lh      t1, 0x0022(s0)             # 00000022
    lwc1    $f8, 0x6C1C($at)           # 80106C1C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f10, $f8, $f6
    lh      t5, 0x0016(s1)             # 0000003A
    lh      a1, 0x0136(s0)             # 00000136
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t4, t5, 0x8001             # t4 = FFFF8001
    subu    t0, t4, a1
    addu    a0, a1, t0
    sub.s   $f8, $f4, $f10
    sll     a0, a0, 16
    sra     a0, a0, 16
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sh      v0, 0x0136(s0)             # 00000136
    lh      t1, 0x0022(s0)             # 00000022
lbl_80039308:
    lh      t3, 0x0078($sp)
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFCC
    andi    t2, t1, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_80039338
    lw      a1, 0x0040($sp)
    subu    t5, $zero, t3
    sh      t5, 0x0134(s0)             # 00000134
    lh      t6, 0x007A($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    addiu   t7, t6, 0x8001             # t7 = FFFF8001
    b       lbl_80039354
    sh      t7, 0x0136(s0)             # 00000136
lbl_80039338:
    jal     func_80067A84
    lw      a2, 0x003C($sp)
    lh      t4, 0x0080($sp)
    sh      t4, 0x0134(s0)             # 00000134
    lh      t9, 0x0082($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t9, 0x0136(s0)             # 00000136
lbl_80039354:
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x5A00(v0)            # 8011A600
    slti    $at, v0, 0x0011
    beql    $at, $zero, lbl_800393F4
    slti    $at, v0, 0x0011
    lw      t8, 0x008C(s0)             # 0000008C
    lw      t0, 0x009C(t8)             # 0000009C
    andi    t1, t0, 0x00FF             # t1 = 00000000
    bnel    t1, $zero, lbl_800393F4
    slti    $at, v0, 0x0011
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6C20($at)           # 80106C20
    lh      t7, 0x0136(s0)             # 00000136
    lui     v0, 0x8012                 # v0 = 80120000
    mul.s   $f4, $f0, $f6
    trunc.w.s $f10, $f4
    mfc1    t6, $f10
    nop
    addu    t4, t6, t7
    sh      t4, 0x0136(s0)             # 00000136
    b       lbl_800393F0
    lh      v0, -0x5A00(v0)            # 8011A600
    lwc1    $f8, 0x000C(s0)            # 0000000C
lbl_800393B8:
    sh      $zero, 0x0018(s1)          # 0000003C
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f8, 0x0010(s1)            # 00000034
    lw      t8, 0x0038($sp)
    sw      $zero, -0x0E10($at)        # 800EF1F0
    lw      t9, 0x0040($sp)
    lw      t1, 0x0000(t8)             # 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    sw      t1, 0x0000(t9)             # 00000000
    lw      t0, 0x0004(t8)             # 00000004
    sw      t0, 0x0004(t9)             # 00000004
    lw      t1, 0x0008(t8)             # 00000008
    sw      t1, 0x0008(t9)             # 00000008
    lh      v0, -0x5A00(v0)            # 8011A600
lbl_800393F0:
    slti    $at, v0, 0x0011
lbl_800393F4:
    beq     $at, $zero, lbl_80039404
    lui     $at, 0x8010                # $at = 80100000
    b       lbl_80039410
    lwc1    $f2, 0x6C24($at)           # 80106C24
lbl_80039404:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
lbl_80039410:
    lwc1    $f6, 0x0018(s0)            # 00000018
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    mul.s   $f12, $f6, $f2
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x001C(s0)             # 0000001C
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_8003946C:
# NORM2()
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6C28($at)           # 80106C28
    div.s   $f6, $f4, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6C2C($at)          # 80106C2C
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f10, $f6, $f8
    sub.s   $f2, $f16, $f10
    lwc1    $f12, 0x6C30($at)          # 80106C30
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lh      t2, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0020             # v0 = 00000020
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0000(s0)           # 00000000
    lh      t3, -0x001C(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0018(v0)            # 00000008
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f12
    nop
    mul.s   $f4, $f18, $f0
    nop
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0008(s0)            # 00000008
    lh      t5, -0x0014(v0)            # 0000000C
    lwc1    $f10, 0x6C34($at)          # 80106C34
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    $at, $f4                   # $f4 = 0.50
    cvt.s.w $f16, $f8
    mul.s   $f18, $f16, $f10
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x001C(s0)             # 0000001C
    lh      t9, -0x0010(v0)            # 00000010
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    swc1    $f10, 0x000C(s0)           # 0000000C
    lh      t8, -0x000C(v0)            # 00000014
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f12
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t0, -0x0008(v0)            # 00000018
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    swc1    $f16, 0x0014(s0)           # 00000014
    lh      t1, -0x0004(v0)            # 0000001C
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    swc1    $f4, 0x0018(s0)            # 00000018
    lh      t2, 0x0000(v0)             # 00000020
    sh      t2, 0x001E(s0)             # 0000001E
    lh      t3, 0x001E(s0)             # 0000001E
    lui     $at, 0x800F                # $at = 800F0000
    sw      t3, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    beq     v0, $zero, lbl_80039618
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80039618
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_80039618
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v0, $at, lbl_80039720
    addiu   t4, s0, 0x0094             # t4 = 00000094
lbl_80039618:
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   s1, s0, 0x0020             # s1 = 00000020
    or      a0, s1, $zero              # a0 = 00000020
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x005C($sp)
    lw      a2, 0x005C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C3C($at)          # 80106C3C
    lh      t4, 0x0006(a2)             # 00000006
    addiu   t6, s0, 0x0094             # t6 = 00000094
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    sh      t4, 0x0020(s1)             # 00000040
    lh      t5, 0x0008(a2)             # 00000008
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFA8
    sh      t5, 0x0022(s1)             # 00000042
    sw      t6, 0x0034($sp)
    lwc1    $f6, 0x0004(t6)            # 00000098
    swc1    $f6, 0x0024(s1)            # 00000044
    lh      v1, 0x000C(a2)             # 0000000C
    bne     a0, v1, lbl_80039684
    slti    $at, v1, 0x0169
    lwc1    $f8, 0x0014(s0)            # 00000014
    b       lbl_800396B4
    swc1    $f8, 0x001C(s1)            # 0000003C
lbl_80039684:
    bnel    $at, $zero, lbl_800396A8
    mtc1    v1, $f18                   # $f18 = 0.00
    mtc1    v1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f0, $f10, $f12
    b       lbl_800396B4
    swc1    $f0, 0x001C(s1)            # 0000003C
    mtc1    v1, $f18                   # $f18 = 0.00
lbl_800396A8:
    nop
    cvt.s.w $f0, $f18
    swc1    $f0, 0x001C(s1)            # 0000003C
lbl_800396B4:
    lh      v0, 0x000E(a2)             # 0000000E
    bnel    a0, v0, lbl_800396CC
    sh      v0, 0x0028(s1)             # 00000048
    b       lbl_800396CC
    sh      $zero, 0x0028(s1)          # 00000048
    sh      v0, 0x0028(s1)             # 00000048
lbl_800396CC:
    swc1    $f4, 0x0018(s1)            # 00000038
    lh      t9, 0x001E(s0)             # 0000001E
    andi    t8, t9, 0x0004             # t8 = 00000000
    beql    t8, $zero, lbl_8003970C
    lui     $at, 0x4248                # $at = 42480000
    lh      t0, 0x0020(s1)             # 00000040
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    sh      t0, 0x0084($sp)
    lh      t1, 0x0022(s1)             # 00000042
    addiu   a0, s1, 0x000C             # a0 = 0000002C
    swc1    $f6, 0x0080($sp)
    addiu   t2, t1, 0x3FFF             # t2 = 00003FFF
    jal     func_80067850
    sh      t2, 0x0086($sp)
    lui     $at, 0x4248                # $at = 42480000
lbl_8003970C:
    mtc1    $at, $f8                   # $f8 = 50.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
    b       lbl_80039744
    swc1    $f8, 0x00C8(s0)            # 000000C8
lbl_80039720:
    sw      t4, 0x0034($sp)
    lwc1    $f16, 0x0104(s0)           # 00000104
    lwc1    $f0, 0x0004(t4)            # 00000004
    addiu   s1, s0, 0x0020             # s1 = 00000020
    c.eq.s  $f0, $f16
    nop
    bc1f    lbl_80039744
    nop
    swc1    $f0, 0x0044(s0)            # 00000044
lbl_80039744:
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    sw      a2, 0x0040($sp)
    sw      a1, 0x003C($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFA0
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0038($sp)
    addiu   a0, $sp, 0x0070            # a0 = FFFFFF98
    jal     func_80067A84
    lw      a1, 0x003C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f4, $f10, $f18
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mfc1    a2, $f2
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f4, 0x00E0(s0)            # 000000E0
    lwc1    $f0, 0x00E0(s0)            # 000000E0
    lwc1    $f8, 0x6C40($at)           # 80106C40
    mul.s   $f6, $f0, $f2
    nop
    mul.s   $f16, $f0, $f8
    swc1    $f6, 0x009C($sp)
    swc1    $f16, 0x0098($sp)
    lwc1    $f10, 0x00C8(s0)           # 000000C8
    lwc1    $f12, 0x000C(s0)           # 0000000C
    mul.s   $f14, $f10, $f0
    jal     func_8003569C
    nop
    lui     $at, 0x4180                # $at = 41800000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mtc1    $at, $f12                  # $f12 = 16.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a2, 0x0098($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C44($at)          # 80106C44
    lw      a2, 0x009C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C48($at)          # 80106C48
    lw      a2, 0x0098($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C4C($at)          # 80106C4C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6C50($at)           # 80106C50
    lwc1    $f18, 0x00E0(s0)           # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f6, $f18, $f4
    mov.s   $f14, $f0
    mfc1    a2, $f6
    jal     func_8003569C
    nop
    lh      v0, 0x001E(s0)             # 0000001E
    swc1    $f0, 0x00D4(s0)            # 000000D4
    andi    t6, v0, 0x0080             # t6 = 00000000
    bne     t6, $zero, lbl_80039890
    andi    a3, v0, 0x0001             # a3 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFF98
    jal     func_80037258
    lw      a2, 0x0000(s0)             # 00000000
    b       lbl_800398B0
    lh      t9, 0x001E(s0)             # 0000001E
lbl_80039890:
    lw      a2, 0x0000(s0)             # 00000000
    andi    t7, v0, 0x0001             # t7 = 00000000
    sw      t7, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFF98
    jal     func_80037370
    addiu   a3, s1, 0x0024             # a3 = 00000044
    lh      t9, 0x001E(s0)             # 0000001E
lbl_800398B0:
    andi    t8, t9, 0x0004             # t8 = 00000000
    beql    t8, $zero, lbl_800398E4
    lw      v0, 0x0034($sp)
    lw      v0, 0x0034($sp)
    lwc1    $f16, 0x000C(s1)           # 0000002C
    lwc1    $f4, 0x0014(s1)            # 00000034
    lwc1    $f8, 0x0000(v0)            # 00000000
    add.s   $f10, $f8, $f16
    swc1    $f10, 0x0000(s1)           # 00000020
    lwc1    $f18, 0x0008(v0)           # 00000008
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0008(s1)            # 00000028
    lw      v0, 0x0034($sp)
lbl_800398E4:
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFA8
    or      a1, s1, $zero              # a1 = 00000020
    lwc1    $f8, 0x0004(v0)            # 00000004
    swc1    $f8, 0x0004(s1)            # 00000024
    jal     func_80067A84
    lw      a2, 0x003C($sp)
    addiu   a0, $sp, 0x0088            # a0 = FFFFFFB0
    lw      a1, 0x003C($sp)
    jal     func_80067A84
    lw      a2, 0x0038($sp)
    lh      t0, 0x0028(s1)             # 00000048
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_80039928
    lh      a1, 0x001C(s0)             # 0000001C
    b       lbl_80039928
    lh      a1, 0x0022(s1)             # 00000042
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80039928:
    slti    $at, a1, 0x4000
    beq     $at, $zero, lbl_8003995C
    lh      t2, 0x008E($sp)
    lh      t3, 0x0086($sp)
    subu    v1, t2, t3
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80039954
    subu    v0, $zero, v1
    b       lbl_80039954
    or      v0, v1, $zero              # v0 = 00000000
lbl_80039954:
    slt     $at, a1, v0
    bne     $at, $zero, lbl_80039994
lbl_8003995C:
    slti    $at, a1, 0x4000
    bne     $at, $zero, lbl_80039A24
    lh      t4, 0x008E($sp)
    lh      t5, 0x0086($sp)
    subu    v1, t4, t5
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80039988
    subu    v0, $zero, v1
    b       lbl_80039988
    or      v0, v1, $zero              # v0 = 00000000
lbl_80039988:
    slt     $at, v0, a1
    beql    $at, $zero, lbl_80039A28
    addiu   t0, $sp, 0x0088            # t0 = FFFFFFB0
lbl_80039994:
    bgez    v1, lbl_800399AC
    lui     $at, 0x3F80                # $at = 3F800000
    subu    a0, $zero, a1
    sll     a0, a0, 16
    b       lbl_800399B4
    sra     a0, a0, 16
lbl_800399AC:
    sll     a0, a1, 16
    sra     a0, a0, 16
lbl_800399B4:
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x00C8(s0)           # 000000C8
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    lh      t6, 0x0086($sp)
    div.s   $f18, $f16, $f10
    lh      a1, 0x007E($sp)
    addu    a0, a0, t6
    sll     a0, a0, 16
    sra     a0, a0, 16
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mul.s   $f6, $f18, $f4
    mfc1    a2, $f6
    jal     func_80035724
    nop
    sh      v0, 0x0096($sp)
    lh      t7, 0x0028(s1)             # 00000048
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0074($sp)
    andi    t9, t7, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80039A1C
    lh      v1, 0x007C($sp)
    lh      a2, 0x0020(s1)             # 00000040
    jal     func_8003822C
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_80039A3C
    sh      v0, 0x0094($sp)
lbl_80039A1C:
    b       lbl_80039A3C
    sh      v1, 0x0094($sp)
lbl_80039A24:
    addiu   t0, $sp, 0x0088            # t0 = FFFFFFB0
lbl_80039A28:
    lw      t2, 0x0000(t0)             # FFFFFFB0
    addiu   t8, $sp, 0x0090            # t8 = FFFFFFB8
    sw      t2, 0x0000(t8)             # FFFFFFB8
    lw      t1, 0x0004(t0)             # FFFFFFB4
    sw      t1, 0x0004(t8)             # FFFFFFBC
lbl_80039A3C:
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80038118
    lw      a1, 0x0088($sp)
    swc1    $f0, 0x0090($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lh      t3, 0x0028(s1)             # 00000048
    lh      v1, 0x0094($sp)
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFB8
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80039AC4
    slti    $at, v1, 0x0E39
    bne     $at, $zero, lbl_80039A98
    addiu   t5, $zero, 0x0E38          # t5 = 00000E38
    subu    t6, t5, v1
    sll     t7, t6, 16
    sra     t9, t7, 16
    sra     t8, t9,  2
    addu    v1, v1, t8
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80039A98:
    bgez    v1, lbl_80039AC4
    sh      v1, 0x0094($sp)
    addiu   t0, $zero, 0xFC72          # t0 = FFFFFC72
    subu    t1, t0, v1
    sll     t2, t1, 16
    sra     t3, t2, 16
    sra     t4, t3,  2
    addu    v1, v1, t4
    sll     v1, v1, 16
    sra     v1, v1, 16
    sh      v1, 0x0094($sp)
lbl_80039AC4:
    lw      a0, 0x0038($sp)
    jal     func_800359A8
    lw      a1, 0x003C($sp)
    lh      t5, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      t6, 0x0038($sp)
    bnel    t5, $at, lbl_80039BA8
    lwc1    $f12, 0x001C(s1)           # 0000003C
    lw      t9, 0x0000(t6)             # 00000000
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFCC
    lui     t0, 0x0001                 # t0 = 00010000
    sw      t9, 0x0000(a2)             # FFFFFFCC
    lw      t7, 0x0004(t6)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x0004(a2)             # FFFFFFD0
    lw      t9, 0x0008(t6)             # 00000008
    sw      t9, 0x0008(a2)             # FFFFFFD4
    lw      t8, 0x008C(s0)             # 0000008C
    addu    t0, t0, t8
    lbu     t0, 0x0A39(t0)             # 00010A39
    beq     t0, $zero, lbl_80039B30
    nop
    lh      t1, 0x001E(s0)             # 0000001E
    lw      a1, 0x003C($sp)
    andi    t2, t1, 0x0010             # t2 = 00000000
    beq     t2, $zero, lbl_80039B5C
    nop
lbl_80039B30:
    jal     func_80035A94
    lw      a1, 0x003C($sp)
    addiu   t4, $sp, 0x00A4            # t4 = FFFFFFCC
    lw      t6, 0x0000(t4)             # FFFFFFCC
    lw      t3, 0x0040($sp)
    sw      t6, 0x0000(t3)             # 00000000
    lw      t5, 0x0004(t4)             # FFFFFFD0
    sw      t5, 0x0004(t3)             # 00000004
    lw      t6, 0x0008(t4)             # FFFFFFD4
    b       lbl_80039BA4
    sw      t6, 0x0008(t3)             # 00000008
lbl_80039B5C:
    jal     func_80035D18
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $sp, 0x00A4            # t7 = FFFFFFCC
    lw      a1, 0x0040($sp)
    lw      t8, 0x0000(t7)             # FFFFFFCC
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFB8
    sw      t8, 0x0000(a1)             # 00000000
    lw      t9, 0x0004(t7)             # FFFFFFD0
    sw      t9, 0x0004(a1)             # 00000004
    lw      t8, 0x0008(t7)             # FFFFFFD4
    sw      t8, 0x0008(a1)             # 00000008
    jal     func_80067A84
    lw      a2, 0x003C($sp)
    lh      t0, 0x0094($sp)
    sh      t0, 0x0134(s0)             # 00000134
    lh      t1, 0x0096($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t1, 0x0136(s0)             # 00000136
lbl_80039BA4:
    lwc1    $f12, 0x001C(s1)           # 0000003C
lbl_80039BA8:
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8


func_80039BFC:
# NORM3()
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C54($at)          # 80106C54
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    mul.s   $f2, $f0, $f12
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lui     $at, 0x8010                # $at = 80100000
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFD4
    lh      t2, 0x0000(v0)             # 00000000
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   v0, v0, 0x0020             # v0 = 00000020
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0000(s0)            # 00000000
    lh      t3, -0x001C(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f2
    swc1    $f4, 0x0004(s0)            # 00000004
    lh      t4, -0x0018(v0)            # 00000008
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f2
    swc1    $f10, 0x0008(s0)           # 00000008
    lh      t5, -0x0014(v0)            # 0000000C
    lwc1    $f6, 0x6C58($at)           # 80106C58
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t5, $f18                   # $f18 = 0.00
    mtc1    $at, $f10                  # $f10 = 0.50
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    add.s   $f18, $f8, $f10
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x001C(s0)             # 0000001C
    lh      t9, -0x0010(v0)            # 00000010
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x000C(s0)            # 0000000C
    lh      t8, -0x000C(v0)            # 00000014
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x0010(s0)           # 00000010
    lh      t0, -0x0008(v0)            # 00000018
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0014(s0)            # 00000014
    lh      t1, -0x0004(v0)            # 0000001C
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f18, $f10, $f12
    swc1    $f18, 0x0018(s0)           # 00000018
    lh      t2, 0x0000(v0)             # 00000020
    sh      t2, 0x001E(s0)             # 0000001E
    sw      a1, 0x003C($sp)
    jal     func_80067A84
    sw      a2, 0x0040($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0038($sp)
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFCC
    jal     func_80067A84
    lw      a1, 0x003C($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sw      a0, -0x0E10($at)           # 800EF1F0
    lh      t3, 0x001E(s0)             # 0000001E
    lui     $at, 0x800F                # $at = 800F0000
    sw      t3, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_80039D94
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_80039D94
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v1, $at, lbl_80039D94
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     v1, $at, lbl_80039D94
    addiu   t4, s0, 0x0094             # t4 = 00000094
    sw      t4, 0x0034($sp)
    b       lbl_80039E24
    addiu   s1, s0, 0x0020             # s1 = 00000020
lbl_80039D94:
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   s1, s0, 0x0020             # s1 = 00000020
    sw      $zero, 0x000C(s1)          # 0000002C
    sh      $zero, 0x0024(s1)          # 00000044
    swc1    $f4, 0x001C(s1)            # 0000003C
    lwc1    $f6, 0x0104(s0)            # 00000104
    sh      $zero, 0x0018(s1)          # 00000038
    lh      v0, 0x0018(s1)             # 00000038
    swc1    $f6, 0x0020(s1)            # 00000040
    addiu   t5, s0, 0x0094             # t5 = 00000094
    sh      v0, 0x0014(s1)             # 00000034
    sh      v0, 0x0016(s1)             # 00000036
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    swc1    $f8, 0x0010(s1)            # 00000030
    sw      t5, 0x0034($sp)
    lh      t7, 0x000E(t5)             # 000000A2
    lh      t1, 0x007A($sp)
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t0, t7, 0x8001             # t0 = FFFF8001
    subu    t2, t0, t1
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f10                   # $f10 = 0.00
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x002A(s1)             # 0000004A
    cvt.s.w $f18, $f10
    sh      t9, 0x0028(s1)             # 00000048
    mul.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sh      t6, 0x0026(s1)             # 00000046
    sh      a0, 0x015E(s0)             # 0000015E
    sh      $zero, 0x001A(s1)          # 0000003A
lbl_80039E24:
    lh      v0, 0x002A(s1)             # 0000004A
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    beq     v0, $zero, lbl_80039E3C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x002A(s1)             # 0000004A
lbl_80039E3C:
    lwc1    $f2, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6C5C($at)          # 80106C5C
    mul.s   $f16, $f2, $f10
    nop
    mul.s   $f4, $f2, $f18
    swc1    $f4, 0x008C($sp)
    lh      v0, 0x001A(s1)             # 0000003A
    beq     v0, $zero, lbl_80039EDC
    nop
    sll     t0, v0,  1
    mtc1    t0, $f8                    # $f8 = NaN
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    cvt.s.w $f10, $f8
    mfc1    a2, $f16
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f16, 0x0090($sp)
    jal     func_8003569C
    add.s   $f12, $f6, $f10
    swc1    $f0, 0x00C8(s0)            # 000000C8
    lh      t1, 0x001A(s1)             # 0000003A
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    sll     t2, t1,  1
    mtc1    t2, $f18                   # $f18 = 0.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    cvt.s.w $f4, $f18
    lw      a2, 0x008C($sp)
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    jal     func_8003569C
    add.s   $f12, $f4, $f8
    lwc1    $f16, 0x0090($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lh      t3, 0x001A(s1)             # 0000003A
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    b       lbl_80039F20
    sh      t4, 0x001A(s1)             # 0000003A
lbl_80039EDC:
    lwc1    $f12, 0x000C(s0)           # 0000000C
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    mfc1    a2, $f16
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_8003569C
    swc1    $f16, 0x0090($sp)
    lui     $at, 0x4180                # $at = 41800000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mtc1    $at, $f12                  # $f12 = 16.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a2, 0x008C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lwc1    $f16, 0x0090($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
lbl_80039F20:
    lui     $at, 0x8010                # $at = 80100000
    mfc1    a2, $f16
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C60($at)          # 80106C60
    jal     func_8003569C
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C64($at)          # 80106C64
    lw      a2, 0x008C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C68($at)          # 80106C68
    lw      a2, 0x008C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D4(s0)           # 000000D4
    swc1    $f0, 0x00D4(s0)            # 000000D4
    lh      a1, 0x007A($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a1, a1, 0x8001             # a1 = FFFF8001
    sll     a1, a1, 16
    jal     func_80036870
    sra     a1, a1, 16
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f6, 0x0010(s0)            # 00000010
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    div.s   $f10, $f12, $f6
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    sll     a0, v0, 16
    sra     a0, a0, 16
    sub.s   $f8, $f12, $f4
    lh      a1, 0x0024(s1)             # 00000044
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    mul.s   $f0, $f10, $f18
    nop
    mul.s   $f2, $f0, $f8
    add.s   $f6, $f0, $f2
    mfc1    a2, $f6
    jal     func_80035724
    nop
    sh      v0, 0x0024(s1)             # 00000044
    lw      a2, 0x0000(s0)             # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFCC
    jal     func_80037EA4
    addiu   a3, s1, 0x0020             # a3 = 00000040
    lwc1    $f10, 0x0008(s0)           # 00000008
    lwc1    $f18, 0x0004(s0)           # 00000004
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    add.s   $f4, $f10, $f18
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFDC
    lw      a1, 0x003C($sp)
    lw      a2, 0x0038($sp)
    mul.s   $f6, $f4, $f8
    jal     func_80067A84
    swc1    $f6, 0x0088($sp)
    lh      t6, 0x002A(s1)             # 0000004A
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x007C($sp)
    jal     func_80038118
    sw      t6, 0x0010($sp)
    swc1    $f0, 0x007C($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6C6C($at)          # 80106C6C
    lwc1    $f18, 0x00D8(s0)           # 000000D8
    c.lt.s  $f10, $f18
    nop
    bc1fl   lbl_8003A098
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f0, 0x007C($sp)
    lwc1    $f4, 0x0088($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6C70($at)           # 80106C70
    sub.s   $f8, $f4, $f0
    mul.s   $f10, $f8, $f6
    add.s   $f0, $f0, $f10
    swc1    $f0, 0x007C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8003A098:
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f4, 0x00C4(s0)            # 000000C4
    lh      t7, 0x001C(s0)             # 0000001C
    lh      t9, 0x0024(s1)             # 00000044
    div.s   $f8, $f18, $f4
    lh      a1, 0x0070($sp)
    subu    a0, t7, t9
    sll     a0, a0, 16
    sra     a0, a0, 16
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sll     v1, v0, 16
    slti    $at, v0, 0x38A5
    bne     $at, $zero, lbl_8003A0E0
    sra     v1, v1, 16
    addiu   v1, $zero, 0x38A4          # v1 = 000038A4
lbl_8003A0E0:
    slti    $at, v1, 0xEAAC
    beq     $at, $zero, lbl_8003A0F4
    sh      v1, 0x0080($sp)
    addiu   v1, $zero, 0xEAAC          # v1 = FFFFEAAC
    sh      v1, 0x0080($sp)
lbl_8003A0F4:
    lw      t8, 0x0034($sp)
    lh      t1, 0x0072($sp)
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFDC
    lh      t0, 0x000E(t8)             # 0000000E
    addiu   t4, t1, 0x8001             # t4 = FFFF8001
    subu    a0, t0, t4
    sll     a0, a0, 16
    sra     a0, a0, 16
    bltz    a0, lbl_8003A124
    subu    v1, $zero, a0
    b       lbl_8003A124
    or      v1, a0, $zero              # v1 = 00000000
lbl_8003A124:
    slti    $at, v1, 0x2AF9
    bne     $at, $zero, lbl_8003A144
    lh      t9, 0x0072($sp)
    blezl   a0, lbl_8003A144
    addiu   a0, $zero, 0xD508          # a0 = FFFFD508
    b       lbl_8003A144
    addiu   a0, $zero, 0x2AF8          # a0 = 00002AF8
    addiu   a0, $zero, 0xD508          # a0 = FFFFD508
lbl_8003A144:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lwc1    $f2, 0x00E0(s0)            # 000000E0
    mtc1    a0, $f6                    # $f6 = NaN
    sub.s   $f18, $f14, $f12
    lui     $at, 0x4316                # $at = 43160000
    lh      t5, 0x0072($sp)
    cvt.s.w $f10, $f6
    mul.s   $f4, $f2, $f18
    lwc1    $f18, 0x00C8(s0)           # 000000C8
    add.s   $f8, $f4, $f12
    mtc1    $at, $f4                   # $f4 = 150.00
    mul.s   $f6, $f10, $f8
    sub.s   $f10, $f14, $f2
    mul.s   $f8, $f4, $f10
    div.s   $f16, $f6, $f18
    abs.s   $f0, $f16
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_8003A1C4
    sh      t9, 0x0082($sp)
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f18, $f6
    add.s   $f4, $f18, $f16
    trunc.w.s $f10, $f4
    mfc1    t7, $f10
    b       lbl_8003A1C4
    sh      t7, 0x0082($sp)
    sh      t9, 0x0082($sp)
lbl_8003A1C4:
    lh      t8, 0x0028(s1)             # 00000048
    lh      t1, 0x0082($sp)
    blezl   t8, lbl_8003A1F0
    lw      a0, 0x0038($sp)
    lh      t2, 0x0026(s1)             # 00000046
    addu    t3, t1, t2
    sh      t3, 0x0082($sp)
    lh      t0, 0x0028(s1)             # 00000048
    addiu   t4, t0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0028(s1)             # 00000048
    lw      a0, 0x0038($sp)
lbl_8003A1F0:
    jal     func_800359A8
    lw      a1, 0x003C($sp)
    lh      t5, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $at, lbl_8003A230
    lw      t9, 0x0038($sp)
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x000C(s0)             # 0000000C
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFE4
    sw      t6, 0x0010($sp)
    sw      s1, 0x0014($sp)
    jal     func_800384E0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFDC
    b       lbl_8003A250
    lwc1    $f12, 0x0014(s0)           # 00000014
lbl_8003A230:
    lw      t7, 0x0040($sp)
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0000(t7)             # 00000000
    lw      t8, 0x0004(t9)             # 00000004
    sw      t8, 0x0004(t7)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(t7)             # 00000008
    lwc1    $f12, 0x0014(s0)           # 00000014
lbl_8003A250:
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_8003A2A4:
# NORM4()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003A2C4:
# NORM0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003A2E4:
# PARA1()
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C74($at)          # 80106C74
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6C78($at)          # 80106C78
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6C7C($at)           # 80106C7C
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x6C80($at)           # 80106C80
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFD8
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    addiu   v0, v0, 0x0028             # v0 = 00000028
    mul.s   $f10, $f6, $f8
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f2, $f4, $f10
    mul.s   $f4, $f8, $f12
    nop
    mul.s   $f10, $f4, $f0
    nop
    mul.s   $f6, $f10, $f2
    swc1    $f6, 0x0000(s0)            # 00000000
    lh      t3, -0x0024(v0)            # 00000004
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f12
    nop
    mul.s   $f6, $f10, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0020(v0)            # 00000008
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f6, $f10, $f16
    add.s   $f8, $f6, $f18
    trunc.w.s $f4, $f8
    mfc1    t6, $f4
    nop
    sh      t6, 0x0020(s0)             # 00000020
    lh      t7, -0x001C(v0)            # 0000000C
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    mul.s   $f8, $f6, $f16
    add.s   $f4, $f8, $f18
    trunc.w.s $f10, $f4
    mfc1    t8, $f10
    nop
    sh      t8, 0x0022(s0)             # 00000022
    lh      t0, -0x0018(v0)            # 00000010
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0008(s0)            # 00000008
    lh      t1, -0x0014(v0)            # 00000014
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    swc1    $f10, 0x000C(s0)           # 0000000C
    lh      t2, -0x0010(v0)            # 00000018
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0010(s0)            # 00000010
    lh      t3, -0x000C(v0)            # 0000001C
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f6, $f10, $f12
    swc1    $f6, 0x0014(s0)            # 00000014
    lh      t4, -0x0008(v0)            # 00000020
    sh      t4, 0x0024(s0)             # 00000024
    lh      t5, -0x0004(v0)            # 00000024
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f12
    nop
    mul.s   $f6, $f10, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0018(s0)            # 00000018
    lh      t6, 0x0000(v0)             # 00000028
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f6, $f10, $f12
    swc1    $f6, 0x001C(s0)            # 0000001C
    sw      a1, 0x0034($sp)
    jal     func_80067A84
    sw      a2, 0x0038($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0030($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFD0
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_8003A4F4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8003A4F4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v1, $at, lbl_8003A4F4
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beql    v1, $at, lbl_8003A4F8
    addiu   v1, s0, 0x0028             # v1 = 00000028
    b       lbl_8003A544
    addiu   v1, s0, 0x0028             # v1 = 00000028
lbl_8003A4F4:
    addiu   v1, s0, 0x0028             # v1 = 00000028
lbl_8003A4F8:
    sh      $zero, 0x0016(v1)          # 0000003E
    sh      $zero, 0x0010(v1)          # 00000038
    lh      t7, 0x0024(s0)             # 00000024
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    andi    t9, t7, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_8003A520
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    b       lbl_8003A524
    sh      t8, 0x0018(v1)             # 00000040
lbl_8003A520:
    sh      t0, 0x0018(v1)             # 00000040
lbl_8003A524:
    swc1    $f8, 0x0000(v1)            # 00000028
    lwc1    $f10, 0x00F4(s0)           # 000000F4
    lwc1    $f4, 0x0098(s0)            # 00000098
    sub.s   $f6, $f4, $f10
    swc1    $f6, 0x000C(v1)            # 00000034
    lh      t1, 0x015E(s0)             # 0000015E
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x015E(s0)             # 0000015E
lbl_8003A544:
    lh      t3, 0x0018(v1)             # 00000040
    beql    t3, $zero, lbl_8003A598
    lh      v0, 0x0024(s0)             # 00000024
    lh      v0, 0x0024(s0)             # 00000024
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_8003A578
    andi    t1, v0, 0x0004             # t1 = 00000000
    lh      t5, 0x00A2(s0)             # 000000A2
    lh      t8, 0x0022(s0)             # 00000022
    addiu   t9, t5, 0x8001             # t9 = FFFF8001
    addu    t0, t9, t8
    b       lbl_8003A5C4
    sh      t0, 0x0012(v1)             # 0000003A
lbl_8003A578:
    beq     t1, $zero, lbl_8003A58C
    lh      t3, 0x0096($sp)
    lh      t2, 0x0022(s0)             # 00000022
    b       lbl_8003A5C4
    sh      t2, 0x0012(v1)             # 0000003A
lbl_8003A58C:
    b       lbl_8003A5C4
    sh      t3, 0x0012(v1)             # 0000003A
    lh      v0, 0x0024(s0)             # 00000024
lbl_8003A598:
    lui     $at, 0x800F                # $at = 800F0000
    andi    t4, v0, 0x0020             # t4 = 00000000
    beq     t4, $zero, lbl_8003A5C0
    nop
    lh      t5, 0x00A2(s0)             # 000000A2
    lh      t8, 0x0022(s0)             # 00000022
    addiu   t9, t5, 0x8001             # t9 = FFFF8001
    addu    t0, t9, t8
    sh      t0, 0x0012(v1)             # 0000003A
    lh      v0, 0x0024(s0)             # 00000024
lbl_8003A5C0:
    sw      v0, -0x0E58($at)           # 800EF1A8
lbl_8003A5C4:
    lh      t1, 0x0020(s0)             # 00000020
    addiu   $at, $zero, 0x0015         # $at = 00000015
    sh      t1, 0x0014(v1)             # 0000003C
    lh      v0, 0x015E(s0)             # 0000015E
    bnel    v0, $at, lbl_8003A5F0
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      v0, 0x0016(v1)             # 0000003E
    b       lbl_8003A5FC
    sh      v0, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_8003A5F0:
    bne     v0, $at, lbl_8003A5FC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      v0, 0x015E(s0)             # 0000015E
lbl_8003A5FC:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f0, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6C84($at)           # 80106C84
    mul.s   $f2, $f0, $f8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    mul.s   $f10, $f0, $f4
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a2, $f2
    swc1    $f10, 0x00AC($sp)
    lwc1    $f14, 0x00C0(s0)           # 000000C0
    swc1    $f2, 0x00B0($sp)
    jal     func_8003569C
    sw      v1, 0x002C($sp)
    lwc1    $f2, 0x00B0($sp)
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C0(s0)            # 000000C0
    mfc1    a2, $f2
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x0008(s0)           # 00000008
    jal     func_8003569C
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    lui     $at, 0x4000                # $at = 40000000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mtc1    $at, $f12                  # $f12 = 2.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a2, 0x00AC($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lwc1    $f2, 0x00B0($sp)
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mfc1    a2, $f2
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C88($at)          # 80106C88
    jal     func_8003569C
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6C8C($at)          # 80106C8C
    lw      a2, 0x00AC($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6C90($at)          # 80106C90
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6C94($at)           # 80106C94
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f4, $f6, $f8
    lwc1    $f14, 0x00D4(s0)           # 000000D4
    mfc1    a2, $f4
    jal     func_8003569C
    nop
    lh      t2, 0x0024(s0)             # 00000024
    lw      v1, 0x002C($sp)
    swc1    $f0, 0x00D4(s0)            # 000000D4
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_8003A79C
    sh      $zero, 0x0010(v1)          # 00000010
    lh      a1, 0x009E($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a1, a1, 0x8001             # a1 = FFFF8001
    sll     a1, a1, 16
    sra     a1, a1, 16
    jal     func_80036870
    sw      v1, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6C98($at)           # 80106C98
    div.s   $f0, $f14, $f10
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6C9C($at)           # 80106C9C
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    lw      v1, 0x002C($sp)
    sll     a0, v0, 16
    sra     a0, a0, 16
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    lh      a1, 0x0010(v1)             # 00000010
    mul.s   $f2, $f0, $f6
    sub.s   $f6, $f14, $f10
    mul.s   $f4, $f0, $f8
    nop
    mul.s   $f12, $f4, $f6
    add.s   $f8, $f2, $f12
    mfc1    a2, $f8
    jal     func_80035724
    nop
    lw      v1, 0x002C($sp)
    b       lbl_8003A79C
    sh      v0, 0x0010(v1)             # 00000010
    sh      $zero, 0x0010(v1)          # 00000010
lbl_8003A79C:
    lwc1    $f10, 0x0098(s0)           # 00000098
    lwc1    $f4, 0x0104(s0)            # 00000104
    c.eq.s  $f10, $f4
    nop
    bc1tl   lbl_8003A7EC
    lwc1    $f10, 0x0098(s0)           # 00000098
    lw      v0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6CA0($at)           # 80106CA0
    lwc1    $f8, 0x006C(v0)            # 0000006C
    c.lt.s  $f6, $f8
    nop
    bc1tl   lbl_8003A7EC
    lwc1    $f10, 0x0098(s0)           # 00000098
    lw      t4, 0x066C(v0)             # 0000066C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t5, t4, 10
    bgezl   t5, lbl_8003A7FC
    sh      t6, 0x0062($sp)
    lwc1    $f10, 0x0098(s0)           # 00000098
lbl_8003A7EC:
    swc1    $f10, 0x000C(v1)           # 0000000C
    b       lbl_8003A7FC
    sh      $zero, 0x0062($sp)
    sh      t6, 0x0062($sp)
lbl_8003A7FC:
    lh      v0, 0x0024(s0)             # 00000024
    lh      t9, 0x0062($sp)
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, v0, 0x0080             # t7 = 00000000
    bne     t7, $zero, lbl_8003A840
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD0
    bne     t9, $zero, lbl_8003A840
    addiu   a3, v1, 0x000C             # a3 = 0000000C
    lw      a2, 0x0000(s0)             # 00000000
    andi    t8, v0, 0x0001             # t8 = 00000000
    sw      t8, 0x0010($sp)
    sw      v1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80037688
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD0
    b       lbl_8003A85C
    lw      v1, 0x002C($sp)
lbl_8003A840:
    lw      a2, 0x0018(s0)             # 00000018
    andi    t0, v0, 0x0001             # t0 = 00000000
    sw      t0, 0x0010($sp)
    sw      v1, 0x002C($sp)
    jal     func_80037370
    addiu   a3, v1, 0x000C             # a3 = 0000000C
    lw      v1, 0x002C($sp)
lbl_8003A85C:
    lh      t1, 0x0018(v1)             # 00000018
    beql    t1, $zero, lbl_8003A904
    sh      $zero, 0x0016(v1)          # 00000016
    lh      t2, 0x014C(s0)             # 0000014C
    ori     t3, t2, 0x0020             # t3 = 00000020
    sh      t3, 0x014C(s0)             # 0000014C
    lh      v0, 0x0018(v1)             # 00000018
    lh      t6, 0x009E($sp)
    lh      t5, 0x0012(v1)             # 00000012
    addiu   t4, v0, 0x0001             # t4 = 00000001
    multu   t4, v0
    subu    t7, t5, t6
    sll     t9, t7, 16
    sra     t8, t9, 16
    lh      t3, 0x009C($sp)
    lwc1    $f4, 0x0098($sp)
    sh      t3, 0x00A4($sp)
    swc1    $f4, 0x00A0($sp)
    mflo    a0
    sra     a0, a0,  1
    sll     a0, a0, 16
    sra     a0, a0, 16
    div     $zero, t8, a0
    mflo    t0
    bne     a0, $zero, lbl_8003A8C8
    nop
    break   # 0x01C00
lbl_8003A8C8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a0, $at, lbl_8003A8E0
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_8003A8E0
    nop
    break   # 0x01800
lbl_8003A8E0:
    multu   t0, v0
    mflo    t1
    addu    t2, t6, t1
    sh      t2, 0x00A6($sp)
    lh      t4, 0x0018(v1)             # 00000018
    addiu   t5, t4, 0xFFFF             # t5 = 00000000
    b       lbl_8003AA20
    sh      t5, 0x0018(v1)             # 00000018
    sh      $zero, 0x0016(v1)          # 00000016
lbl_8003A904:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f8, 0x00C0(s0)            # 000000C0
    lwc1    $f14, 0x00DC(s0)           # 000000DC
    lwc1    $f12, 0x0004(s0)           # 00000004
    div.s   $f10, $f6, $f8
    sw      v1, 0x002C($sp)
    lui     a3, 0x4000                 # a3 = 40000000
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lw      a2, 0x0030($sp)
    lw      a1, 0x0034($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFE0
    lwc1    $f4, 0x00DC(s0)            # 000000DC
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lw      v1, 0x002C($sp)
    swc1    $f4, 0x00A0($sp)
    lh      t7, 0x0024(s0)             # 00000024
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lh      a1, 0x0096($sp)
    andi    t9, t7, 0x0040             # t9 = 00000000
    beq     t9, $zero, lbl_8003A994
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lh      a0, 0x0012(v1)             # 00000012
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    sw      v1, 0x002C($sp)
    lh      a1, 0x0096($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      v1, 0x002C($sp)
    b       lbl_8003A9A8
    sh      v0, 0x00A6($sp)
lbl_8003A994:
    lh      a0, 0x0012(v1)             # 00000012
    jal     func_80035724
    sw      v1, 0x002C($sp)
    lw      v1, 0x002C($sp)
    sh      v0, 0x00A6($sp)
lbl_8003A9A8:
    lh      t8, 0x0024(s0)             # 00000024
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    andi    t0, t8, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_8003A9DC
    lh      a0, 0x0014(v1)             # 00000014
    lh      t6, 0x0014(v1)             # 00000014
    lh      t1, 0x0010(v1)             # 00000010
    subu    a0, t6, t1
    sll     a0, a0, 16
    b       lbl_8003A9DC
    sra     a0, a0, 16
    lh      a0, 0x0014(v1)             # 00000014
lbl_8003A9DC:
    lwc1    $f8, 0x00C4(s0)            # 000000C4
    lh      a1, 0x0094($sp)
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    div.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_80035724
    nop
    sll     v1, v0, 16
    slti    $at, v0, 0x38A5
    bne     $at, $zero, lbl_8003AA0C
    sra     v1, v1, 16
    addiu   v1, $zero, 0x38A4          # v1 = 000038A4
lbl_8003AA0C:
    slti    $at, v1, 0xEAAC
    beq     $at, $zero, lbl_8003AA20
    sh      v1, 0x00A4($sp)
    addiu   v1, $zero, 0xEAAC          # v1 = FFFFEAAC
    sh      v1, 0x00A4($sp)
lbl_8003AA20:
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFFE0
    lh      t2, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      t3, 0x0030($sp)
    bnel    t2, $at, lbl_8003AB08
    lwc1    $f12, 0x0010(s0)           # 00000010
    lw      t5, 0x0000(t3)             # 00000000
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFA4
    lui     t9, 0x0001                 # t9 = 00010000
    sw      t5, 0x0000(a2)             # FFFFFFA4
    lw      t4, 0x0004(t3)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    sw      t4, 0x0004(a2)             # FFFFFFA8
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0008(a2)             # FFFFFFAC
    lw      t7, 0x008C(s0)             # 0000008C
    addu    t9, t9, t7
    lbu     t9, 0x0A39(t9)             # 00010A39
    beq     t9, $zero, lbl_8003AA90
    nop
    lh      t8, 0x0024(s0)             # 00000024
    lw      a1, 0x0034($sp)
    andi    t0, t8, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_8003AABC
    nop
lbl_8003AA90:
    jal     func_80035A94
    lw      a1, 0x0034($sp)
    addiu   t1, $sp, 0x0064            # t1 = FFFFFFA4
    lw      t3, 0x0000(t1)             # FFFFFFA4
    lw      t6, 0x0038($sp)
    sw      t3, 0x0000(t6)             # 00000000
    lw      t2, 0x0004(t1)             # FFFFFFA8
    sw      t2, 0x0004(t6)             # 00000004
    lw      t3, 0x0008(t1)             # FFFFFFAC
    b       lbl_8003AB04
    sw      t3, 0x0008(t6)             # 00000008
lbl_8003AABC:
    jal     func_80035D18
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, $sp, 0x0064            # t4 = FFFFFFA4
    lw      a1, 0x0038($sp)
    lw      t7, 0x0000(t4)             # FFFFFFA4
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFE0
    sw      t7, 0x0000(a1)             # 00000000
    lw      t5, 0x0004(t4)             # FFFFFFA8
    sw      t5, 0x0004(a1)             # 00000004
    lw      t7, 0x0008(t4)             # FFFFFFAC
    sw      t7, 0x0008(a1)             # 00000008
    jal     func_80067A84
    lw      a2, 0x0034($sp)
    lh      t9, 0x00A4($sp)
    sh      t9, 0x0134(s0)             # 00000134
    lh      t8, 0x00A6($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t8, 0x0136(s0)             # 00000136
lbl_8003AB04:
    lwc1    $f12, 0x0010(s0)           # 00000010
lbl_8003AB08:
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    lh      t0, 0x0062($sp)
    beql    t0, $zero, lbl_8003AB4C
    lwc1    $f0, 0x0014(s0)            # 00000014
    b       lbl_8003AB4C
    lwc1    $f0, 0x001C(s0)            # 0000001C
    lwc1    $f0, 0x0014(s0)            # 00000014
lbl_8003AB4C:
    mfc1    a1, $f0
    jal     func_80036DD8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0100(s0)            # 00000100
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0
    jr      $ra
    nop


func_8003AB70:
# PARA2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003AB90:
# PARA3()
    lh      t6, 0x0142(a0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(a0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x800F                # $at = 800F0000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lh      v1, 0x0000(v0)             # 00000000
    andi    t2, v1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8003ABD4
    sw      v1, -0x0E58($at)           # 800EF1A8
    lh      t3, 0x014C(a0)             # 0000014C
    ori     t4, t3, 0x0400             # t4 = 00000400
    sh      t4, 0x014C(a0)             # 0000014C
lbl_8003ABD4:
    andi    t5, v1, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_8003ABEC
    nop
    lh      t6, 0x014C(a0)             # 0000014C
    ori     t7, t6, 0x0010             # t7 = 00000010
    sh      t7, 0x014C(a0)             # 0000014C
lbl_8003ABEC:
    jr      $ra
    nop


func_8003ABF4:
# PARA4()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003AC14:
# PARA0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003AC34:
# JUMP1()
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6CA4($at)          # 80106CA4
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6CA8($at)           # 80106CA8
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x6CAC($at)          # 80106CAC
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFA8
    mtc1    t2, $f18                   # $f18 = 0.00
    addiu   v0, v0, 0x001C             # v0 = 0000001C
    cvt.s.w $f4, $f18
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f6, $f4, $f12
    sub.s   $f2, $f16, $f10
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0000(s0)           # 00000000
    lh      t3, -0x0018(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0014(v0)            # 00000008
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f12
    nop
    mul.s   $f4, $f18, $f0
    nop
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0008(s0)            # 00000008
    lh      t5, -0x0010(v0)            # 0000000C
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    swc1    $f16, 0x000C(s0)           # 0000000C
    lh      t6, -0x000C(v0)            # 00000010
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    swc1    $f4, 0x0010(s0)            # 00000010
    lh      t7, -0x0008(v0)            # 00000014
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0014(s0)            # 00000014
    lh      t9, -0x0004(v0)            # 00000018
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f12
    swc1    $f18, 0x0018(s0)           # 00000018
    lh      t8, 0x0000(v0)             # 0000001C
    sh      t8, 0x001C(s0)             # 0000001C
    jal     func_80022670
    lw      a1, 0x0090(s0)             # 00000090
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    sw      a2, 0x0038($sp)
    sw      a1, 0x0034($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x0088            # a0 = FFFFFFD8
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0030($sp)
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFD0
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    lui     $at, 0x800F                # $at = 800F0000
    sw      t0, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_8003ADD4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8003ADD4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_8003AE40
lbl_8003ADD4:
    addiu   s1, s0, 0x0020             # s1 = 00000020
    sh      $zero, 0x0018(s1)          # 00000038
    lh      t1, 0x0018(s1)             # 00000038
    addiu   t2, $zero, 0x00C8          # t2 = 000000C8
    sw      $zero, 0x000C(s1)          # 0000002C
    sh      $zero, 0x0024(s1)          # 00000044
    sh      t2, 0x0026(s1)             # 00000046
    sh      $zero, 0x001A(s1)          # 0000003A
    sh      t1, 0x0016(s1)             # 00000036
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f4, 0x0010(s1)            # 00000030
    lwc1    $f8, 0x00F4(s0)            # 000000F4
    lwc1    $f6, 0x0098(s0)            # 00000098
    sub.s   $f16, $f6, $f8
    swc1    $f16, 0x001C(s1)           # 0000003C
    lwc1    $f10, 0x0088($sp)
    swc1    $f10, 0x0020(s1)           # 00000040
    lwc1    $f18, 0x00E8(s0)           # 000000E8
    lwc1    $f4, 0x00F4(s0)            # 000000F4
    lh      t3, 0x015E(s0)             # 0000015E
    sub.s   $f6, $f18, $f4
    addiu   t4, t3, 0x0001             # t4 = 00000001
    swc1    $f6, 0x00E8(s0)            # 000000E8
    lwc1    $f8, 0x6CB0($at)           # 80106CB0
    sh      t4, 0x015E(s0)             # 0000015E
    swc1    $f8, 0x00CC(s0)            # 000000CC
lbl_8003AE40:
    addiu   s1, s0, 0x0020             # s1 = 00000020
    lh      v0, 0x001A(s1)             # 0000003A
    beql    v0, $zero, lbl_8003AEC4
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mtc1    v0, $f10                   # $f10 = 0.00
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    cvt.s.w $f18, $f10
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    jal     func_8003569C
    add.s   $f12, $f16, $f18
    swc1    $f0, 0x00C8(s0)            # 000000C8
    lh      t5, 0x001A(s1)             # 0000003A
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    cvt.s.w $f6, $f4
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    jal     func_8003569C
    add.s   $f12, $f6, $f8
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lh      t6, 0x001A(s1)             # 0000003A
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_8003AF04
    sh      t7, 0x001A(s1)             # 0000003A
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_8003AEC4:
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f12, 0x000C(s0)           # 0000000C
    jal     func_8003569C
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f12                  # $f12 = 16.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    swc1    $f0, 0x00C4(s0)            # 000000C4
lbl_8003AF04:
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6CB4($at)          # 80106CB4
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f12, 0x6CB8($at)          # 80106CB8
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lwc1    $f12, 0x6CBC($at)          # 80106CBC
    jal     func_8003569C
    mov.s   $f14, $f0
    swc1    $f0, 0x00D4(s0)            # 000000D4
    lw      a2, 0x0000(s0)             # 00000000
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFD0
    jal     func_80037370
    addiu   a3, s1, 0x001C             # a3 = 0000003C
    addiu   t8, $sp, 0x0088            # t8 = FFFFFFD8
    lw      t1, 0x0000(t8)             # FFFFFFD8
    addiu   t9, $sp, 0x0078            # t9 = FFFFFFC8
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC0
    sw      t1, 0x0000(t9)             # FFFFFFC8
    lw      t0, 0x0004(t8)             # FFFFFFDC
    sw      t0, 0x0004(t9)             # FFFFFFCC
    lw      a2, 0x0038($sp)
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    lwc1    $f12, 0x0070($sp)
    lwc1    $f14, 0x0088($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x0078($sp)
    lh      a0, 0x0074($sp)
    lh      a1, 0x008C($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x007C($sp)
    lh      t2, 0x0018(s1)             # 00000038
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0086($sp)
    beq     t2, $zero, lbl_8003B048
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f16, 0x00C8(s0)           # 000000C8
    lh      a0, 0x0016(s1)             # 00000036
    lh      a1, 0x0086($sp)
    div.s   $f18, $f10, $f16
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f18
    jal     func_80035724
    nop
    sh      v0, 0x007E($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f6, 0x00C8(s0)            # 000000C8
    lh      a0, 0x0014(s1)             # 00000034
    lh      a1, 0x0084($sp)
    div.s   $f8, $f4, $f6
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f8
    jal     func_80035724
    nop
    b       lbl_8003B060
    sh      v0, 0x007C($sp)
lbl_8003B048:
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      a2, 0x00A2(s0)             # 000000A2
    lw      a3, 0x0010(s0)             # 00000010
    jal     func_8003838C
    swc1    $f10, 0x0010($sp)
    sh      v0, 0x007E($sp)
lbl_8003B060:
    lwc1    $f0, 0x0004(s0)            # 00000004
    lwc1    $f16, 0x0078($sp)
    lwc1    $f18, 0x0078($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE0
    c.lt.s  $f16, $f0
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFC8
    bc1fl   lbl_8003B08C
    lwc1    $f0, 0x0008(s0)            # 00000008
    b       lbl_8003B0A0
    swc1    $f0, 0x0078($sp)
    lwc1    $f0, 0x0008(s0)            # 00000008
lbl_8003B08C:
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_8003B0A4
    lh      t3, 0x007C($sp)
    swc1    $f0, 0x0078($sp)
lbl_8003B0A0:
    lh      t3, 0x007C($sp)
lbl_8003B0A4:
    addiu   t4, $zero, 0x38A4          # t4 = 000038A4
    lh      t5, 0x007C($sp)
    slti    $at, t3, 0x38A5
    bnel    $at, $zero, lbl_8003B0C4
    slti    $at, t5, 0xDC74
    b       lbl_8003B0D0
    sh      t4, 0x007C($sp)
    slti    $at, t5, 0xDC74
lbl_8003B0C4:
    beq     $at, $zero, lbl_8003B0D0
    addiu   t6, $zero, 0xDC74          # t6 = FFFFDC74
    sh      t6, 0x007C($sp)
lbl_8003B0D0:
    jal     func_800359A8
    lw      a1, 0x0034($sp)
    lw      v1, 0x0030($sp)
    lwc1    $f4, 0x0090($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x0004(v1)            # 00000004
    swc1    $f4, 0x0000(v1)            # 00000000
    lwc1    $f6, 0x0098($sp)
    swc1    $f6, 0x0008(v1)            # 00000008
    lwc1    $f8, 0x0094($sp)
    lwc1    $f16, 0x6CC0($at)          # 80106CC0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    sub.s   $f10, $f8, $f0
    mul.s   $f18, $f10, $f16
    add.s   $f4, $f0, $f18
    swc1    $f4, 0x0004(v1)            # 00000004
    lh      t7, 0x0140(s0)             # 00000140
    bnel    t7, $at, lbl_8003B1F8
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFC8
    andi    t8, t9, 0x0010             # t8 = 00000000
    bne     t8, $zero, lbl_8003B1F4
    addiu   t0, $sp, 0x009C            # t0 = FFFFFFEC
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x000C(s0)             # 0000000C
    sw      s1, 0x0014($sp)
    jal     func_800384E0
    sw      t0, 0x0010($sp)
    lh      t1, 0x001C(s0)             # 0000001C
    lh      t3, 0x008C($sp)
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC8
    andi    t2, t1, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_8003B17C
    lw      a1, 0x0038($sp)
    subu    t4, $zero, t3
    sh      t4, 0x0134(s0)             # 00000134
    lh      t5, 0x008E($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    addiu   t6, t5, 0x8001             # t6 = FFFF8001
    b       lbl_8003B198
    sh      t6, 0x0136(s0)             # 00000136
lbl_8003B17C:
    jal     func_80067A84
    lw      a2, 0x0034($sp)
    lh      t7, 0x007C($sp)
    sh      t7, 0x0134(s0)             # 00000134
    lh      t9, 0x007E($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t9, 0x0136(s0)             # 00000136
lbl_8003B198:
    lh      t8, 0x0018(s1)             # 00000038
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x009C($sp)
    beql    t8, $zero, lbl_8003B228
    lw      a0, 0x0034($sp)
    lwc1    $f6, 0x6CC4($at)           # 80106CC4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f10, $f6, $f8
    lh      t0, 0x0016(s1)             # 00000036
    lh      a1, 0x0136(s0)             # 00000136
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t3, t0, 0x8001             # t3 = FFFF8001
    subu    t6, t3, a1
    addu    a0, a1, t6
    sub.s   $f18, $f16, $f10
    sll     a0, a0, 16
    sra     a0, a0, 16
    mfc1    a2, $f18
    jal     func_80035724
    nop
    b       lbl_8003B224
    sh      v0, 0x0136(s0)             # 00000136
lbl_8003B1F4:
    lwc1    $f4, 0x000C(s0)            # 0000000C
lbl_8003B1F8:
    sh      $zero, 0x0018(s1)          # 00000038
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f4, 0x0010(s1)            # 00000030
    sw      $zero, -0x0E10($at)        # 800EF1F0
    lw      t8, 0x0000(v1)             # 00000000
    lw      t7, 0x0038($sp)
    sw      t8, 0x0000(t7)             # 00000000
    lw      t9, 0x0004(v1)             # 00000004
    sw      t9, 0x0004(t7)             # 00000004
    lw      t8, 0x0008(v1)             # 00000008
    sw      t8, 0x0008(t7)             # 00000008
lbl_8003B224:
    lw      a0, 0x0034($sp)
lbl_8003B228:
    jal     func_80067580
    lw      a1, 0x0038($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0018(s0)             # 00000018
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_8003B274:
# JUMP2()
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x0048($sp)
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6CC8($at)           # 80106CC8
    div.s   $f6, $f4, $f0
    lh      t6, 0x0142(s0)             # 00000142
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t8, 0x800F                 # t8 = 800F0000
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6CCC($at)          # 80106CCC
    sll     t3, t9,  3
    addu    t4, t8, t3
    lw      v0, 0x0004(t4)             # 00000004
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFBC
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x00F4(s0)            # 000000F4
    c.lt.s  $f4, $f6
    sub.s   $f14, $f18, $f10
    bc1f    lbl_8003B304
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f2                   # $f2 = -10.00
    b       lbl_8003B314
    lh      t5, 0x0000(v0)             # 00000000
lbl_8003B304:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    nop
    lh      t5, 0x0000(v0)             # 00000000
lbl_8003B314:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6CD0($at)          # 80106CD0
    mtc1    t5, $f8                    # $f8 = 0.00
    addiu   v0, v0, 0x0020             # v0 = 00000020
    cvt.s.w $f18, $f8
    add.s   $f10, $f18, $f2
    mul.s   $f4, $f10, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f14
    swc1    $f8, 0x0000(s0)            # 00000000
    lh      t6, -0x001C(v0)            # 00000004
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f4, $f10, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f14
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t7, -0x0018(v0)            # 00000008
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f4, $f10, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f14
    swc1    $f8, 0x0008(s0)            # 00000008
    lh      t9, -0x0014(v0)            # 0000000C
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f4, $f10, $f12
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t8, -0x0010(v0)            # 00000010
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0010(s0)            # 00000010
    lh      t3, -0x000C(v0)            # 00000014
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f4, $f10, $f12
    swc1    $f4, 0x0014(s0)            # 00000014
    lh      t4, -0x0008(v0)            # 00000018
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0018(s0)            # 00000018
    lh      t5, -0x0004(v0)            # 0000001C
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f4, $f10, $f12
    swc1    $f4, 0x001C(s0)            # 0000001C
    lh      t6, 0x0000(v0)             # 00000020
    sh      t6, 0x0020(s0)             # 00000020
    sw      a1, 0x0034($sp)
    jal     func_80067A84
    sw      a2, 0x0038($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0030($sp)
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFC4
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    lh      t7, 0x0020(s0)             # 00000020
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_8003B450
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8003B450
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_8003B5B4
lbl_8003B450:
    addiu   t0, s0, 0x0094             # t0 = 00000094
    lw      t8, 0x0000(t0)             # 00000094
    addiu   a1, $sp, 0x00C8            # a1 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0000(a1)             # FFFFFFE8
    lw      t9, 0x0004(t0)             # 00000098
    sw      t9, 0x0004(a1)             # FFFFFFEC
    lw      t8, 0x0008(t0)             # 0000009C
    sw      t8, 0x0008(a1)             # FFFFFFF0
    jal     func_800362AC
    sw      t0, 0x002C($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f6                   # $f6 = -32000.00
    lw      t0, 0x002C($sp)
    addiu   t1, s0, 0x0024             # t1 = 00000024
    c.eq.s  $f0, $f6
    swc1    $f0, 0x0000(t1)            # 00000024
    lh      t3, 0x00AA($sp)
    sh      $zero, 0x0006(t1)          # 0000002A
    bc1f    lbl_8003B4C4
    sh      t3, 0x0004(t1)             # 00000028
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sh      t4, 0x000A(t1)             # 0000002E
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    lwc1    $f8, 0x0004(t0)            # 00000004
    sub.s   $f10, $f8, $f18
    b       lbl_8003B4F8
    swc1    $f10, 0x0000(t1)           # 00000024
lbl_8003B4C4:
    lwc1    $f4, 0x0004(t0)            # 00000004
    lwc1    $f6, 0x0000(t1)            # 00000024
    lwc1    $f18, 0x0048($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f8, $f4, $f6
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    c.lt.s  $f8, $f18
    nop
    bc1fl   lbl_8003B4F8
    sh      t6, 0x000A(t1)             # 0000002E
    b       lbl_8003B4F8
    sh      t5, 0x000A(t1)             # 0000002E
    sh      t6, 0x000A(t1)             # 0000002E
lbl_8003B4F8:
    lh      t7, 0x000E(t0)             # 0000000E
    lh      t4, 0x00AA($sp)
    addiu   t9, t7, 0x8001             # t9 = FFFF8001
    sll     t8, t9, 16
    sra     t3, t8, 16
    subu    v0, t3, t4
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgez    v0, lbl_8003B528
    sra     t5, v0,  2
    addiu   $at, v0, 0x0003            # $at = 00000003
    sra     t5, $at,  2
lbl_8003B528:
    bgez    t5, lbl_8003B538
    sra     t6, t5,  2
    addiu   $at, t5, 0x0003            # $at = 00000004
    sra     t6, $at,  2
lbl_8003B538:
    sll     t7, t6,  2
    subu    t7, t7, t6
    sh      t7, 0x0006(t1)             # 0000002A
    lh      t9, 0x0020(s0)             # 00000020
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    addiu   t4, $zero, 0x2710          # t4 = 00002710
    andi    t8, t9, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_8003B568
    sh      t4, 0x0008(t1)             # 0000002C
    b       lbl_8003B568
    sh      t3, 0x0008(t1)             # 0000002C
    sh      t4, 0x0008(t1)             # 0000002C
lbl_8003B568:
    lwc1    $f10, 0x0000(t0)           # 00000000
    lwc1    $f4, 0x00F0(s0)            # 000000F0
    lwc1    $f8, 0x0004(t0)            # 00000004
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sub.s   $f6, $f10, $f4
    lwc1    $f4, 0x0008(t0)            # 00000008
    swc1    $f6, 0x0000(t0)            # 00000000
    lwc1    $f18, 0x00F4(s0)           # 000000F4
    sub.s   $f10, $f8, $f18
    swc1    $f10, 0x0004(t0)           # 00000004
    lwc1    $f6, 0x00F8(s0)            # 000000F8
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(t0)            # 00000008
    sh      t5, 0x000C(t1)             # 00000030
    lh      t6, 0x015E(s0)             # 0000015E
    lwc1    $f18, 0x001C(s0)           # 0000001C
    addiu   t7, t6, 0x0001             # t7 = 00000000
    sh      t7, 0x015E(s0)             # 0000015E
    swc1    $f18, 0x0100(s0)           # 00000100
lbl_8003B5B4:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f0, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6CD4($at)           # 80106CD4
    mul.s   $f2, $f0, $f10
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t0, s0, 0x0094             # t0 = 00000094
    mul.s   $f6, $f0, $f4
    addiu   t1, s0, 0x0024             # t1 = 00000024
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a2, $f2
    swc1    $f6, 0x008C($sp)
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    lwc1    $f12, 0x0010(s0)           # 00000010
    swc1    $f2, 0x0090($sp)
    sw      t1, 0x0028($sp)
    jal     func_8003569C
    sw      t0, 0x002C($sp)
    lwc1    $f2, 0x0090($sp)
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mfc1    a2, $f2
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x0014(s0)           # 00000014
    jal     func_8003569C
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6CD8($at)          # 80106CD8
    lw      a2, 0x008C($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6CDC($at)          # 80106CDC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6CE0($at)          # 80106CE0
    lwc1    $f8, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f10, $f8, $f18
    mov.s   $f14, $f0
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f4                   # $f4 = 1800.00
    swc1    $f0, 0x00D4(s0)            # 000000D4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00A4            # a1 = FFFFFFC4
    lw      a2, 0x0000(s0)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80037258
    swc1    $f4, 0x00C0(s0)            # 000000C0
    addiu   a0, $sp, 0x00B4            # a0 = FFFFFFD4
    lw      a1, 0x0034($sp)
    jal     func_80067A84
    lw      a2, 0x0038($sp)
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x000C(s0)           # 0000000C
    lwc1    $f0, 0x0004(s0)            # 00000004
    lwc1    $f18, 0x00B4($sp)
    mul.s   $f6, $f12, $f14
    lw      t0, 0x002C($sp)
    lw      t1, 0x0028($sp)
    mul.s   $f8, $f0, $f14
    add.s   $f2, $f12, $f6
    sub.s   $f16, $f0, $f8
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_8003B6EC
    lwc1    $f10, 0x00B4($sp)
    b       lbl_8003B700
    swc1    $f2, 0x00B4($sp)
    lwc1    $f10, 0x00B4($sp)
lbl_8003B6EC:
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_8003B704
    lh      t2, 0x000E(t0)             # 0000000E
    swc1    $f16, 0x00B4($sp)
lbl_8003B700:
    lh      t2, 0x000E(t0)             # 0000000E
lbl_8003B704:
    lh      t3, 0x00BA($sp)
    lh      v1, 0x000C(t1)             # 0000000C
    addiu   t2, t2, 0x8001             # t2 = FFFF8001
    subu    v0, t2, t3
    sll     v0, v0, 16
    beq     v1, $zero, lbl_8003B758
    sra     v0, v0, 16
    sh      t2, 0x0004(t1)             # 00000004
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x000C(t1)             # 0000000C
    lh      a0, 0x0004(t1)             # 00000004
    sw      t1, 0x0028($sp)
    sw      t0, 0x002C($sp)
    lh      a1, 0x00AA($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      t0, 0x002C($sp)
    lw      t1, 0x0028($sp)
    b       lbl_8003B7F8
    sh      v0, 0x00BA($sp)
lbl_8003B758:
    bltz    v0, lbl_8003B768
    subu    v1, $zero, v0
    b       lbl_8003B768
    or      v1, v0, $zero              # v1 = 00000000
lbl_8003B768:
    lh      a0, 0x0008(t1)             # 00000008
    lh      a1, 0x00AA($sp)
    lui     a2, 0x3E80                 # a2 = 3E800000
    slt     $at, a0, v1
    beq     $at, $zero, lbl_8003B7DC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sll     a1, t2, 16
    bgez    v0, lbl_8003B79C
    sra     a1, a1, 16
    addu    v1, a1, a0
    sll     v1, v1, 16
    b       lbl_8003B7A8
    sra     v1, v1, 16
lbl_8003B79C:
    subu    v1, a1, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8003B7A8:
    sll     a0, v1, 16
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sra     a0, a0, 16
    lh      a1, 0x00AA($sp)
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sw      t0, 0x002C($sp)
    jal     func_800357B8
    sw      t1, 0x0028($sp)
    lw      t0, 0x002C($sp)
    lw      t1, 0x0028($sp)
    b       lbl_8003B7F8
    sh      v0, 0x00BA($sp)
lbl_8003B7DC:
    lh      a0, 0x00BA($sp)
    sw      t0, 0x002C($sp)
    jal     func_80035724
    sw      t1, 0x0028($sp)
    lw      t0, 0x002C($sp)
    lw      t1, 0x0028($sp)
    sh      v0, 0x00BA($sp)
lbl_8003B7F8:
    lh      a0, 0x000E(t0)             # 0000000E
    sw      t1, 0x0028($sp)
    jal     func_800636C4              # sins?
    sw      t0, 0x002C($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lw      t0, 0x002C($sp)
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f6, $f0, $f4
    lwc1    $f8, 0x0000(t0)            # 00000000
    lwc1    $f4, 0x6CE4($at)           # 80106CE4
    lwc1    $f10, 0x0048($sp)
    add.s   $f18, $f6, $f8
    mul.s   $f6, $f10, $f4
    swc1    $f18, 0x00C8($sp)
    lwc1    $f8, 0x0004(t0)            # 00000004
    add.s   $f18, $f8, $f6
    swc1    $f18, 0x00CC($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x000E(t0)             # 0000000E
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lw      t0, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f0, $f10
    lwc1    $f8, 0x0008(t0)            # 00000008
    addiu   a1, $sp, 0x00BC            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x00C8            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0088            # a3 = FFFFFFA8
    add.s   $f6, $f4, $f8
    jal     func_800361C8
    swc1    $f6, 0x00D0($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    lw      t0, 0x002C($sp)
    lw      t1, 0x0028($sp)
    c.eq.s  $f0, $f18
    nop
    bc1tl   lbl_8003B928
    lwc1    $f18, 0x0004(t0)           # 00000004
    lwc1    $f10, 0x0004(t0)           # 00000004
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    c.lt.s  $f10, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lui     $at, 0x41A0                # $at = 41A00000
    bc1fl   lbl_8003B928
    lwc1    $f18, 0x0004(t0)           # 00000004
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C4(s0)            # 000000C4
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_8003569C
    lwc1    $f14, 0x00C0(s0)           # 000000C0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f8, 0x00C4(s0)            # 000000C4
    swc1    $f0, 0x00C0(s0)            # 000000C0
    lh      a1, 0x00A8($sp)
    div.s   $f6, $f4, $f8
    addiu   a0, $zero, 0x01F4          # a0 = 000001F4
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f6
    jal     func_80035724
    nop
    sll     v1, v0, 16
    b       lbl_8003B9D4
    sra     v1, v1, 16
    lwc1    $f18, 0x0004(t0)           # 00000004
lbl_8003B928:
    lwc1    $f10, 0x0000(t1)           # 00000000
    lwc1    $f8, 0x0048($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sub.s   $f4, $f18, $f10
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    c.lt.s  $f4, $f8
    lui     $at, 0x42C8                # $at = 42C80000
    bc1fl   lbl_8003B9C4
    mtc1    $at, $f0                   # $f0 = 100.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C4(s0)            # 000000C4
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_8003569C
    lwc1    $f14, 0x00C0(s0)           # 000000C0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x00C4(s0)           # 000000C4
    swc1    $f0, 0x00C0(s0)            # 000000C0
    lh      a1, 0x00A8($sp)
    div.s   $f10, $f6, $f18
    addiu   a0, $zero, 0x01F4          # a0 = 000001F4
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f10
    jal     func_80035724
    nop
    sh      v0, 0x00B8($sp)
    b       lbl_8003B9D4
    lh      v1, 0x00B8($sp)
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_8003B9C4:
    nop
    swc1    $f0, 0x00C4(s0)            # 000000C4
    swc1    $f0, 0x00C0(s0)            # 000000C0
    lh      v1, 0x00B8($sp)
lbl_8003B9D4:
    slti    $at, v1, 0x2AF9
    bne     $at, $zero, lbl_8003B9E4
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFD4
    addiu   v1, $zero, 0x2AF8          # v1 = 00002AF8
lbl_8003B9E4:
    slti    $at, v1, 0xD508
    beq     $at, $zero, lbl_8003B9F8
    sh      v1, 0x00B8($sp)
    addiu   v1, $zero, 0xD508          # v1 = FFFFD508
    sh      v1, 0x00B8($sp)
lbl_8003B9F8:
    lw      a0, 0x0030($sp)
    jal     func_800359A8
    lw      a1, 0x0034($sp)
    lw      t5, 0x0030($sp)
    addiu   a2, $sp, 0x0060            # a2 = FFFFFF80
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0000(t5)             # 00000000
    sw      t7, 0x0000(a2)             # FFFFFF80
    lw      t6, 0x0004(t5)             # 00000004
    sw      t6, 0x0004(a2)             # FFFFFF84
    lw      t7, 0x0008(t5)             # 00000008
    sw      t7, 0x0008(a2)             # FFFFFF88
    jal     func_80035A94
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_8003BAF4
    lw      t3, 0x0030($sp)
    addiu   a0, $sp, 0x0060            # a0 = FFFFFF80
    lw      t3, 0x0000(a0)             # FFFFFF80
    addiu   t9, $sp, 0x00C8            # t9 = FFFFFFE8
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFFCC
    sw      t3, 0x0000(t9)             # FFFFFFE8
    lw      t8, 0x0004(a0)             # FFFFFF84
    sw      t8, 0x0004(t9)             # FFFFFFEC
    lw      t3, 0x0008(a0)             # FFFFFF88
    sw      t3, 0x0008(t9)             # FFFFFFF0
    lwc1    $f4, 0x00B4($sp)
    lh      t4, 0x00BA($sp)
    sh      $zero, 0x00B0($sp)
    lw      a1, 0x0034($sp)
    swc1    $f4, 0x00AC($sp)
    jal     func_800359A8
    sh      t4, 0x00B2($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80035A94
    addiu   a2, $sp, 0x0060            # a2 = FFFFFF80
    beq     v0, $zero, lbl_8003BAB4
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   t6, $sp, 0x00C8            # t6 = FFFFFFE8
    lw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t5, 0x0038($sp)
    sw      t9, 0x0000(t5)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFEC
    sw      t7, 0x0004(t5)             # 00000004
    lw      t9, 0x0008(t6)             # FFFFFFF0
    b       lbl_8003BB10
    sw      t9, 0x0008(t5)             # 00000008
lbl_8003BAB4:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lh      a1, 0x00B8($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x00B8($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x0034($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFD4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80035CBC
    lw      a2, 0x0038($sp)
    b       lbl_8003BB14
    lwc1    $f8, 0x00B4($sp)
lbl_8003BAF4:
    lw      t8, 0x0038($sp)
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0000(t8)             # 00000000
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0004(t8)             # 00000004
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0008(t8)             # 00000008
lbl_8003BB10:
    lwc1    $f8, 0x00B4($sp)
lbl_8003BB14:
    lwc1    $f12, 0x0018(s0)           # 00000018
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    swc1    $f8, 0x00DC(s0)            # 000000DC
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0
    jr      $ra
    nop


func_8003BB60:
# JUMP3()
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x0074($sp)
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_80022670
    addiu   a0, $sp, 0x0060            # a0 = FFFFFF88
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    lwc1    $f6, 0x0004(a2)            # 00000060
    lwc1    $f4, 0x0114(s0)            # 00000114
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    sub.s   $f0, $f4, $f6
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFC0
    addiu   a1, s0, 0x0050             # a1 = 00000050
    c.lt.s  $f0, $f8
    nop
    bc1tl   lbl_8003BBD0
    addiu   s1, s0, 0x0024             # s1 = 00000024
    lh      t6, 0x015E(s0)             # 0000015E
    lui     $at, 0x437A                # $at = 437A0000
    bne     t6, $zero, lbl_8003BBE8
    addiu   s1, s0, 0x0024             # s1 = 00000024
lbl_8003BBD0:
    lh      t7, 0x0022(s1)             # 00000046
    beql    t7, $zero, lbl_8003BC20
    addiu   s1, s0, 0x0024             # s1 = 00000024
    sh      $zero, 0x0022(s1)          # 00000046
    b       lbl_8003BC1C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8003BBE8:
    mtc1    $at, $f10                  # $f10 = 250.00
    addiu   s1, s0, 0x0024             # s1 = 00000024
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_8003BC20
    addiu   s1, s0, 0x0024             # s1 = 00000024
    lh      t8, 0x0022(s1)             # 00000046
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    beql    t8, $at, lbl_8003BC20
    addiu   s1, s0, 0x0024             # s1 = 00000024
    sh      t9, 0x0022(s1)             # 00000046
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8003BC1C:
    addiu   s1, s0, 0x0024             # s1 = 00000024
lbl_8003BC20:
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    jal     func_80067A84
    sw      a3, 0x0054($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0038($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFB8
    jal     func_80067A84
    lw      a1, 0x003C($sp)
    lh      v1, 0x015E(s0)             # 0000015E
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x0074($sp)
    beq     v1, $zero, lbl_8003BC58
    nop
lbl_8003BC58:
    lwc1    $f2, 0x6CE8($at)           # 80106CE8
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f18                  # $f18 = 68.00
    lh      t0, 0x0142(s0)             # 00000142
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f4, $f18, $f12
    lwc1    $f6, 0x6CEC($at)           # 80106CEC
    lui     t2, 0x800F                 # t2 = 800F0000
    sll     t1, t0,  3
    lh      t3, 0x0022(s1)             # 00000046
    addu    t2, t2, t1
    lw      t2, -0x118C(t2)            # 800EEE74
    sll     t4, t3,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t5, t2, t4
    lw      v0, 0x0004(t5)             # 00000004
    lwc1    $f10, 0x6CF0($at)          # 80106CF0
    lui     $at, 0x8010                # $at = 80100000
    lh      t6, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0024             # v0 = 00000024
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    mul.s   $f8, $f4, $f6
    mtc1    t6, $f6                    # $f6 = 0.00
    mul.s   $f4, $f12, $f2
    sub.s   $f18, $f10, $f8
    cvt.s.w $f10, $f6
    mul.s   $f0, $f4, $f18
    nop
    mul.s   $f8, $f10, $f0
    swc1    $f8, 0x0000(s0)            # 00000000
    lh      t7, -0x0020(v0)            # 00000004
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4
    mul.s   $f6, $f18, $f0
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t8, -0x001C(v0)            # 00000008
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f4, $f8, $f0
    swc1    $f4, 0x0008(s0)            # 00000008
    lh      t9, -0x0018(v0)            # 0000000C
    lwc1    $f10, 0x6CF4($at)          # 80106CF4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t9, $f18                   # $f18 = 0.00
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x800F                # $at = 800F0000
    cvt.s.w $f6, $f18
    mul.s   $f8, $f6, $f10
    add.s   $f18, $f8, $f4
    trunc.w.s $f6, $f18
    mfc1    t1, $f6
    nop
    sh      t1, 0x0020(s0)             # 00000020
    lh      t3, -0x0014(v0)            # 00000010
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    swc1    $f8, 0x000C(s0)            # 0000000C
    lh      t2, -0x0010(v0)            # 00000014
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4
    swc1    $f18, 0x0010(s0)           # 00000010
    lh      t4, -0x000C(v0)            # 00000018
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f8, $f10, $f2
    swc1    $f8, 0x0014(s0)            # 00000014
    lh      t5, -0x0008(v0)            # 0000001C
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4
    swc1    $f18, 0x0018(s0)           # 00000018
    lh      t6, -0x0004(v0)            # 00000020
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f8, $f10, $f2
    swc1    $f8, 0x001C(s0)            # 0000001C
    lh      t7, 0x0000(v0)             # 00000024
    sh      t7, 0x0022(s0)             # 00000022
    lh      t8, 0x0022(s0)             # 00000022
    sw      t8, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    beq     v0, $zero, lbl_8003BDD4
    nop
    beq     v0, a0, lbl_8003BDD4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8003BDD4
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bnel    v0, $at, lbl_8003BE14
    lh      v0, 0x0020(s1)             # 00000044
lbl_8003BDD4:
    sw      $zero, 0x000C(s1)          # 00000030
    lwc1    $f4, 0x0104(s0)            # 00000104
    sh      $zero, 0x0018(s1)          # 0000003C
    lh      v0, 0x0018(s1)             # 0000003C
    sh      a0, 0x0020(s1)             # 00000044
    swc1    $f4, 0x001C(s1)            # 00000040
    sh      v0, 0x0014(s1)             # 00000038
    sh      v0, 0x0016(s1)             # 0000003A
    lwc1    $f18, 0x000C(s0)           # 0000000C
    swc1    $f18, 0x0010(s1)           # 00000034
    lh      t9, 0x015E(s0)             # 0000015E
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x015E(s0)             # 0000015E
    b       lbl_8003BE20
    sh      $zero, 0x001A(s1)          # 0000003E
    lh      v0, 0x0020(s1)             # 00000044
lbl_8003BE14:
    beq     v0, $zero, lbl_8003BE20
    addiu   t1, v0, 0xFFFF             # t1 = 00000023
    sh      t1, 0x0020(s1)             # 00000044
lbl_8003BE20:
    lw      t2, 0x0040($sp)
    addiu   t3, $sp, 0x00B0            # t3 = FFFFFFD8
    lui     $at, 0x3F00                # $at = 3F000000
    lw      t5, 0x0000(t2)             # 800F0000
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    sw      t5, 0x0000(t3)             # FFFFFFD8
    lw      t4, 0x0004(t2)             # 800F0004
    sw      t4, 0x0004(t3)             # FFFFFFDC
    lw      t5, 0x0008(t2)             # 800F0008
    sw      t5, 0x0008(t3)             # FFFFFFE0
    lwc1    $f0, 0x00E0(s0)            # 000000E0
    lwc1    $f6, 0x6CF8($at)           # 80106CF8
    mul.s   $f16, $f0, $f2
    nop
    mul.s   $f10, $f0, $f6
    swc1    $f10, 0x00C0($sp)
    lh      t6, 0x0018(s1)             # 0000003C
    beq     t6, $zero, lbl_8003BE78
    nop
    b       lbl_8003BE7C
    swc1    $f2, 0x00BC($sp)
lbl_8003BE78:
    swc1    $f16, 0x00BC($sp)
lbl_8003BE7C:
    lh      v0, 0x001A(s1)             # 0000003E
    beq     v0, $zero, lbl_8003BEF8
    sll     t7, v0,  1
    mtc1    t7, $f4                    # $f4 = 0.00
    lwc1    $f8, 0x0010(s1)            # 00000034
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    cvt.s.w $f18, $f4
    mfc1    a2, $f16
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f16, 0x00C4($sp)
    jal     func_8003569C
    add.s   $f12, $f8, $f18
    swc1    $f0, 0x00C8(s0)            # 000000C8
    lh      t8, 0x001A(s1)             # 0000003E
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    sll     t9, t8,  1
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    cvt.s.w $f10, $f6
    lw      a2, 0x00C0($sp)
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    jal     func_8003569C
    add.s   $f12, $f10, $f4
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lh      t0, 0x001A(s1)             # 0000003E
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_8003BF38
    sh      t1, 0x001A(s1)             # 0000003E
lbl_8003BEF8:
    lwc1    $f12, 0x0010(s1)           # 00000034
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f16, 0x00C4($sp)
    jal     func_8003569C
    lw      a2, 0x00BC($sp)
    lui     $at, 0x4220                # $at = 42200000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lw      a2, 0x00C0($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    swc1    $f0, 0x00C4(s0)            # 000000C4
lbl_8003BF38:
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6CFC($at)          # 80106CFC
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    jal     func_8003569C
    lw      a2, 0x00C4($sp)
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6D00($at)          # 80106D00
    lw      a2, 0x00C0($sp)
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D04($at)          # 80106D04
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6D08($at)          # 80106D08
    lwc1    $f8, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f6, $f8, $f18
    mov.s   $f14, $f0
    mfc1    a2, $f6
    jal     func_8003569C
    nop
    swc1    $f0, 0x00D4(s0)            # 000000D4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFB8
    lw      a2, 0x0000(s0)             # 00000000
    jal     func_80037258
    lh      a3, 0x0022(s0)             # 00000022
    addiu   a0, $sp, 0x00A8            # a0 = FFFFFFD0
    lw      a1, 0x003C($sp)
    jal     func_80067A84
    lw      a2, 0x0038($sp)
    lh      t3, 0x0020(s1)             # 00000044
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x00A8($sp)
    jal     func_80038118
    sw      t3, 0x0010($sp)
    swc1    $f0, 0x00A8($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lwc1    $f12, 0x0004(v0)           # 00000098
    lwc1    $f2, 0x0104(s0)            # 00000104
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    c.le.s  $f2, $f12
    nop
    bc1fl   lbl_8003C024
    sub.s   $f0, $f12, $f2
    b       lbl_8003C028
    sub.s   $f0, $f12, $f2
    sub.s   $f0, $f12, $f2
lbl_8003C024:
    neg.s   $f0, $f0
lbl_8003C028:
    c.lt.s  $f0, $f10
    lwc1    $f4, 0x0064($sp)
    bc1tl   lbl_8003C088
    lh      t2, 0x0018(s1)             # 0000003C
    lwc1    $f0, 0x0114(s0)            # 00000114
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    c.le.s  $f0, $f4
    lwc1    $f8, 0x0064($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    bc1fl   lbl_8003C064
    sub.s   $f2, $f8, $f0
    b       lbl_8003C068
    sub.s   $f2, $f4, $f0
    sub.s   $f2, $f8, $f0
lbl_8003C064:
    neg.s   $f2, $f2
lbl_8003C068:
    c.lt.s  $f2, $f18
    nop
    bc1tl   lbl_8003C088
    lh      t2, 0x0018(s1)             # 0000003C
    mtc1    $at, $f6                   # $f6 = 100.00
    nop
    swc1    $f6, 0x00C4(s0)            # 000000C4
    lh      t2, 0x0018(s1)             # 0000003C
lbl_8003C088:
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0096($sp)
    beq     t2, $zero, lbl_8003C0F4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f4, 0x00C8(s0)            # 000000C8
    lh      a0, 0x0016(s1)             # 0000003A
    lh      a1, 0x0096($sp)
    div.s   $f8, $f10, $f4
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sh      v0, 0x00AE($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f6, 0x00C8(s0)            # 000000C8
    lh      a0, 0x0014(s1)             # 00000038
    lh      a1, 0x0094($sp)
    div.s   $f10, $f18, $f6
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f10
    jal     func_80035724
    nop
    sll     v1, v0, 16
    b       lbl_8003C128
    sra     v1, v1, 16
lbl_8003C0F4:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      a2, 0x000E(v0)             # 0000000E
    lw      a3, 0x0014(s0)             # 00000014
    jal     func_8003838C
    swc1    $f4, 0x0010($sp)
    sh      v0, 0x00AE($sp)
    lh      a2, 0x0020(s0)             # 00000020
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0094($sp)
    jal     func_8003822C
    or      a3, $zero, $zero           # a3 = 00000000
    sll     v1, v0, 16
    sra     v1, v1, 16
lbl_8003C128:
    slti    $at, v0, 0x38A5
    bne     $at, $zero, lbl_8003C138
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFD0
    addiu   v1, $zero, 0x38A4          # v1 = 000038A4
lbl_8003C138:
    slti    $at, v1, 0xEAAC
    beq     $at, $zero, lbl_8003C14C
    sh      v1, 0x00AC($sp)
    addiu   v1, $zero, 0xEAAC          # v1 = FFFFEAAC
    sh      v1, 0x00AC($sp)
lbl_8003C14C:
    lw      a0, 0x0038($sp)
    jal     func_800359A8
    lw      a1, 0x003C($sp)
    lh      t4, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    t4, $at, lbl_8003C244
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      t5, 0x0022(s0)             # 00000022
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFD0
    andi    t6, t5, 0x0010             # t6 = 00000000
    bne     t6, $zero, lbl_8003C240
    addiu   t7, $sp, 0x00BC            # t7 = FFFFFFE4
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x000C(s0)             # 0000000C
    sw      s1, 0x0014($sp)
    jal     func_800384E0
    sw      t7, 0x0010($sp)
    lh      t8, 0x0022(s0)             # 00000022
    lh      t0, 0x009C($sp)
    addiu   a0, $sp, 0x00A8            # a0 = FFFFFFD0
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_8003C1C8
    lw      a1, 0x0040($sp)
    subu    t1, $zero, t0
    sh      t1, 0x0134(s0)             # 00000134
    lh      t3, 0x009E($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    addiu   t2, t3, 0x8001             # t2 = FFFF8001
    b       lbl_8003C1E4
    sh      t2, 0x0136(s0)             # 00000136
lbl_8003C1C8:
    jal     func_80067A84
    lw      a2, 0x003C($sp)
    lh      t4, 0x00AC($sp)
    sh      t4, 0x0134(s0)             # 00000134
    lh      t5, 0x00AE($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t5, 0x0136(s0)             # 00000136
lbl_8003C1E4:
    lh      t6, 0x0018(s1)             # 0000003C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x00BC($sp)
    beql    t6, $zero, lbl_8003C278
    lwc1    $f12, 0x0018(s0)           # 00000018
    lwc1    $f8, 0x6D0C($at)           # 80106D0C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f6, $f8, $f18
    lh      t7, 0x0016(s1)             # 0000003A
    lh      a1, 0x0136(s0)             # 00000136
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t0, t7, 0x8001             # t0 = FFFF8001
    subu    t2, t0, a1
    addu    a0, a1, t2
    sub.s   $f4, $f10, $f6
    sll     a0, a0, 16
    sra     a0, a0, 16
    mfc1    a2, $f4
    jal     func_80035724
    nop
    b       lbl_8003C274
    sh      v0, 0x0136(s0)             # 00000136
lbl_8003C240:
    lwc1    $f8, 0x000C(s0)            # 0000000C
lbl_8003C244:
    sh      $zero, 0x0018(s1)          # 0000003C
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f8, 0x0010(s1)            # 00000034
    lw      t5, 0x0038($sp)
    sw      $zero, -0x0E10($at)        # 800EF1F0
    lw      t4, 0x0040($sp)
    lw      t7, 0x0000(t5)             # 00000000
    sw      t7, 0x0000(t4)             # 00000000
    lw      t6, 0x0004(t5)             # 00000004
    sw      t6, 0x0004(t4)             # 00000004
    lw      t7, 0x0008(t5)             # 00000008
    sw      t7, 0x0008(t4)             # 00000008
lbl_8003C274:
    lwc1    $f12, 0x0018(s0)           # 00000018
lbl_8003C278:
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x001C(s0)             # 0000001C
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8


func_8003C2CC:
# JUMP4()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003C2EC:
# JUMP0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003C30C:
# BATT1()
    addiu   $sp, $sp, 0xFEC8           # $sp -= 0x138
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      $zero, 0x00E0($sp)
    lw      a0, 0x0090(s0)             # 00000090
    jal     func_80021600
    sw      a0, 0x0080($sp)
    swc1    $f0, 0x005C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D10($at)          # 80106D10
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t2, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t3, t8, t2
    lw      v0, 0x0004(t3)             # 00000004
    lwc1    $f8, 0x6D14($at)           # 80106D14
    lui     $at, 0x8010                # $at = 80100000
    lh      t4, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x6D18($at)           # 80106D18
    lui     $at, 0x8010                # $at = 80100000
    addiu   s1, s0, 0x0030             # s1 = 00000030
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   v0, v0, 0x002C             # v0 = 0000002C
    mul.s   $f10, $f6, $f8
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f2, $f4, $f10
    mul.s   $f4, $f8, $f12
    nop
    mul.s   $f10, $f4, $f0
    nop
    mul.s   $f6, $f10, $f2
    swc1    $f6, 0x0000(s0)            # 00000000
    lh      t5, -0x0028(v0)            # 00000004
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x0004(s0)            # 00000004
    lh      t6, -0x0024(v0)            # 00000008
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    swc1    $f6, 0x0008(s0)            # 00000008
    lh      t7, -0x0020(v0)            # 0000000C
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t9, -0x001C(v0)            # 00000010
    mtc1    t9, $f10                   # $f10 = 0.00
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    cvt.s.w $f6, $f10
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t8, -0x0018(v0)            # 00000014
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x0014(s0)            # 00000014
    lh      t2, -0x0014(v0)            # 00000018
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    mul.s   $f8, $f6, $f12
    swc1    $f8, 0x0018(s0)            # 00000018
    lh      t3, -0x0010(v0)            # 0000001C
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    swc1    $f10, 0x001C(s0)           # 0000001C
    lh      t4, -0x000C(v0)            # 00000020
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f4, $f8, $f12
    swc1    $f4, 0x0020(s0)            # 00000020
    lh      t5, -0x0008(v0)            # 00000024
    sh      t5, 0x002C(s0)             # 0000002C
    lh      t6, -0x0004(v0)            # 00000028
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    mul.s   $f8, $f6, $f12
    nop
    mul.s   $f4, $f8, $f0
    nop
    mul.s   $f10, $f4, $f2
    swc1    $f10, 0x0024(s0)           # 00000024
    lh      t7, 0x0000(v0)             # 0000002C
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f4, $f8, $f12
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f12, 0x6D1C($at)          # 80106D1C
    sh      t9, 0x001C(s1)             # 0000004C
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f12, 0x0010(s1)           # 00000040
    lwc1    $f10, 0x0004(s0)           # 00000004
    swc1    $f10, 0x0078($sp)
    lwc1    $f6, 0x0010(s0)            # 00000010
    swc1    $f6, 0x0074($sp)
    lwc1    $f8, 0x0014(s0)            # 00000014
    swc1    $f8, 0x0070($sp)
    lwc1    $f4, 0x001C(s0)            # 0000001C
    swc1    $f4, 0x006C($sp)
    lw      t8, 0x0090(s0)             # 00000090
    lw      t2, 0x066C(t8)             # 800F066C
    andi    t3, t2, 0x1000             # t3 = 00000000
    beql    t3, $zero, lbl_8003C598
    lh      v0, 0x001C(s1)             # 0000004C
    lwc1    $f12, 0x6D20($at)          # 80106D20
    jal     func_8003569C
    lwc1    $f14, 0x0010(s1)           # 00000040
    swc1    $f0, 0x0010(s1)            # 00000040
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6D24($at)          # 80106D24
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x6D28($at)          # 80106D28
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lh      v0, 0x001C(s1)             # 0000004C
    slti    $at, v0, 0xFFED
    bne     $at, $zero, lbl_8003C560
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    b       lbl_8003C658
    sh      t4, 0x001C(s1)             # 0000004C
lbl_8003C560:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    swc1    $f10, 0x0078($sp)
    swc1    $f6, 0x0074($sp)
    swc1    $f8, 0x0070($sp)
    b       lbl_8003C658
    swc1    $f4, 0x006C($sp)
    lh      v0, 0x001C(s1)             # 0000004C
lbl_8003C598:
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    bgez    v0, lbl_8003C5E4
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   t5, v0, 0x0001             # t5 = 00000001
    swc1    $f10, 0x0078($sp)
    swc1    $f6, 0x0074($sp)
    swc1    $f8, 0x0070($sp)
    swc1    $f4, 0x006C($sp)
    b       lbl_8003C658
    sh      t5, 0x001C(s1)             # 0000004C
lbl_8003C5E4:
    jal     func_8003569C
    lwc1    $f14, 0x0010(s1)           # 00000040
    swc1    $f0, 0x0010(s1)            # 00000040
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D2C($at)          # 80106D2C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f8, $f10, $f6
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    mfc1    a2, $f8
    jal     func_8003569C
    nop
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D30($at)          # 80106D30
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6D34($at)          # 80106D34
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f6, $f4, $f10
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    mfc1    a2, $f6
    jal     func_8003569C
    nop
    swc1    $f0, 0x00D0(s0)            # 000000D0
lbl_8003C658:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D38($at)          # 80106D38
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6D3C($at)           # 80106D3C
    lwc1    $f8, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f10, $f8, $f4
    lwc1    $f14, 0x00D4(s0)           # 000000D4
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    swc1    $f0, 0x00D4(s0)            # 000000D4
    lwc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0000(s0)            # 00000000
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    add.s   $f4, $f6, $f8
    sw      a2, 0x0044($sp)
    sw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x0094            # a0 = FFFFFF5C
    jal     func_80067A84
    swc1    $f4, 0x005C($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x003C($sp)
    addiu   a0, $sp, 0x008C            # a0 = FFFFFF54
    jal     func_80067A84
    lw      a1, 0x0040($sp)
    lw      v1, 0x00A8(s0)             # 000000A8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     v1, $zero, lbl_8003C6E8
    nop
    lw      t6, 0x0130(v1)             # 00000130
    bnel    t6, $zero, lbl_8003C6FC
    lh      t7, 0x002C(s0)             # 0000002C
lbl_8003C6E8:
    jal     func_80049330
    sw      $zero, 0x00A8(s0)          # 000000A8
    b       lbl_8003D034
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t7, 0x002C(s0)             # 0000002C
lbl_8003C6FC:
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beql    v0, $zero, lbl_8003C72C
    mtc1    $zero, $f10                # $f10 = 0.00
    beq     v0, $at, lbl_8003C728
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v0, $at, lbl_8003C77C
    lh      t6, 0x0140(s0)             # 00000140
lbl_8003C728:
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_8003C72C:
    sh      $zero, 0x0014(s1)          # 00000044
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    swc1    $f10, 0x0004(s1)           # 00000034
    lw      t9, 0x00A8(s0)             # 000000A8
    sw      t9, 0x000C(s1)             # 0000003C
    lh      t8, 0x015E(s0)             # 0000015E
    addiu   t2, t8, 0x0001             # t2 = 00000001
    sh      t2, 0x015E(s0)             # 0000015E
    sh      t3, 0x001A(s1)             # 0000004A
    lh      t4, 0x009A($sp)
    sh      t4, 0x0016(s1)             # 00000046
    lh      t5, 0x0098($sp)
    sh      t5, 0x0018(s1)             # 00000048
    lwc1    $f6, 0x0094($sp)
    swc1    $f6, 0x0000(s1)            # 00000030
    lwc1    $f4, 0x00F4(s0)            # 000000F4
    lwc1    $f8, 0x0098(s0)            # 00000098
    sub.s   $f10, $f8, $f4
    swc1    $f10, 0x0008(s1)           # 00000038
    lh      t6, 0x0140(s0)             # 00000140
lbl_8003C77C:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    t6, $at, lbl_8003C7B0
    lwc1    $f6, 0x0098(s0)            # 00000098
    lh      t9, 0x0098($sp)
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E10($at)           # 800EF1F0
    subu    t8, $zero, t9
    sh      t8, 0x0134(s0)             # 00000134
    lh      t2, 0x009A($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    addiu   t3, t2, 0x8001             # t3 = FFFF8002
    sh      t3, 0x0136(s0)             # 00000136
    lwc1    $f6, 0x0098(s0)            # 00000098
lbl_8003C7B0:
    lwc1    $f8, 0x0104(s0)            # 00000104
    c.eq.s  $f6, $f8
    nop
    bc1tl   lbl_8003C7FC
    lwc1    $f6, 0x0098(s0)            # 00000098
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6D40($at)           # 80106D40
    lwc1    $f10, 0x006C(a0)           # 0000006C
    c.lt.s  $f4, $f10
    nop
    bc1tl   lbl_8003C7FC
    lwc1    $f6, 0x0098(s0)            # 00000098
    lw      t4, 0x066C(a0)             # 0000066C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     t5, t4, 10
    bgez    t5, lbl_8003C808
    nop
    lwc1    $f6, 0x0098(s0)            # 00000098
lbl_8003C7FC:
    or      v1, $zero, $zero           # v1 = 00000000
    b       lbl_8003C808
    swc1    $f6, 0x0008(s1)            # 00000038
lbl_8003C808:
    lh      t6, 0x001A(s1)             # 0000004A
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_8003C844
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    beql    v1, $zero, lbl_8003C82C
    lwc1    $f2, 0x0020(s0)            # 00000020
    b       lbl_8003C82C
    lwc1    $f2, 0x0028(s0)            # 00000028
    lwc1    $f2, 0x0020(s0)            # 00000020
lbl_8003C82C:
    mfc1    a1, $f2
    jal     func_80036DD8
    sh      v1, 0x007C($sp)
    lh      v1, 0x007C($sp)
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
lbl_8003C844:
    lw      a1, 0x00A8(s0)             # 000000A8
    sw      a0, 0x0030($sp)
    jal     func_80022670
    sh      v1, 0x007C($sp)
    lw      t7, 0x00A8(s0)             # 000000A8
    lw      t9, 0x000C(s1)             # 0000003C
    lh      v1, 0x007C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, t9, lbl_8003C878
    addiu   a1, $sp, 0x008C            # a1 = FFFFFF54
    sh      $zero, 0x015E(s0)          # 0000015E
    b       lbl_8003D034
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003C878:
    beq     v1, $zero, lbl_8003C888
    addiu   t1, s0, 0x0094             # t1 = 00000094
    b       lbl_8003C88C
    lwc1    $f2, 0x0024(s0)            # 00000024
lbl_8003C888:
    lwc1    $f2, 0x0000(s0)            # 00000000
lbl_8003C88C:
    beq     v1, $zero, lbl_8003C89C
    lw      a2, 0x0030($sp)
    b       lbl_8003C8A0
    addiu   v0, $zero, 0x0081          # v0 = 00000081
lbl_8003C89C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003C8A0:
    lwc1    $f8, 0x0078($sp)
    addiu   t8, s1, 0x0008             # t8 = 00000038
    addiu   t2, $sp, 0x009C            # t2 = FFFFFF64
    sw      t2, 0x0018($sp)
    sw      t8, 0x0014($sp)
    swc1    $f8, 0x0010($sp)
    lh      t3, 0x002C(s0)             # 0000002C
    mfc1    a3, $f2
    sw      t1, 0x0038($sp)
    or      t4, v0, t3                 # t4 = 00000001
    jal     func_800379EC
    sw      t4, 0x001C($sp)
    lw      t1, 0x0038($sp)
    lh      t0, 0x00A2($sp)
    addiu   a1, $sp, 0x0114            # a1 = FFFFFFDC
    lw      t6, 0x0000(t1)             # 00000000
    addiu   a0, $sp, 0x009C            # a0 = FFFFFF64
    sw      t6, 0x0000(a1)             # FFFFFFDC
    lw      t5, 0x0004(t1)             # 00000004
    sw      t5, 0x0004(a1)             # FFFFFFE0
    lw      t6, 0x0008(t1)             # 00000008
    sw      t6, 0x0008(a1)             # FFFFFFE4
    lwc1    $f4, 0x0118($sp)
    lwc1    $f10, 0x005C($sp)
    lw      a2, 0x0030($sp)
    sh      t0, 0x0084($sp)
    add.s   $f6, $f4, $f10
    jal     func_80067A84
    swc1    $f6, 0x0118($sp)
    lwc1    $f0, 0x009C($sp)
    lwc1    $f2, 0x0078($sp)
    lh      t0, 0x0084($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8003C944
    div.s   $f4, $f0, $f2
    mtc1    $at, $f8                   # $f8 = 1.00
    b       lbl_8003C948
    swc1    $f8, 0x00DC($sp)
    div.s   $f4, $f0, $f2
lbl_8003C944:
    swc1    $f4, 0x00DC($sp)
lbl_8003C948:
    lw      t7, 0x0030($sp)
    addiu   a2, $sp, 0x0108            # a2 = FFFFFFD0
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFF6C
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0000(a2)             # FFFFFFD0
    lw      t9, 0x0004(t7)             # 00000004
    sw      t9, 0x0004(a2)             # FFFFFFD4
    lw      t8, 0x0008(t7)             # 00000008
    sw      t8, 0x0008(a2)             # FFFFFFD8
    sh      t0, 0x0084($sp)
    jal     func_80067A84
    lw      a1, 0x0040($sp)
    lwc1    $f12, 0x00A4($sp)
    lwc1    $f10, 0x0078($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    c.le.s  $f12, $f10
    lh      t0, 0x0084($sp)
    lwc1    $f2, 0x0078($sp)
    bc1f    lbl_8003C9A4
    nop
    b       lbl_8003C9A4
    mov.s   $f2, $f12
lbl_8003C9A4:
    mul.s   $f4, $f2, $f8
    lwc1    $f12, 0x0078($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6D44($at)           # 80106D44
    lui     a2, 0x3D75                 # a2 = 3D750000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    lui     a3, 0x4000                 # a3 = 40000000
    sub.s   $f10, $f12, $f4
    lwc1    $f4, 0x00DC($sp)
    swc1    $f10, 0x00A4($sp)
    sub.s   $f10, $f8, $f4
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0008(s0)            # 00000008
    lwc1    $f14, 0x00DC(s0)           # 000000DC
    sh      t0, 0x0084($sp)
    sub.s   $f4, $f8, $f0
    mul.s   $f8, $f4, $f10
    add.s   $f18, $f0, $f8
    jal     func_8003569C
    swc1    $f18, 0x00EC($sp)
    lh      t0, 0x0084($sp)
    lwc1    $f18, 0x00EC($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lh      t2, 0x0092($sp)
    lh      t3, 0x00AA($sp)
    swc1    $f0, 0x00AC($sp)
    addiu   t4, t2, 0x8001             # t4 = FFFF8001
    sll     t5, t4, 16
    sh      t2, 0x00B2($sp)
    lh      v1, 0x001A(s1)             # 0000004A
    sra     t6, t5, 16
    subu    v0, t3, t6
    sll     a1, v0, 16
    beq     v1, $zero, lbl_8003CB8C
    sra     a1, a1, 16
    blez    v1, lbl_8003CB7C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x007E($sp)
    addiu   a0, $sp, 0x009C            # a0 = FFFFFF64
    lw      a1, 0x0040($sp)
    lw      a2, 0x0044($sp)
    jal     func_80067A84
    sh      t0, 0x0084($sp)
    lh      t0, 0x0084($sp)
    lwc1    $f10, 0x009C($sp)
    lui     $at, 0x3E80                # $at = 3E800000
    addiu   t9, t0, 0x8001             # t9 = FFFF8001
    sh      t9, 0x00A2($sp)
    lh      t2, 0x00A2($sp)
    lh      t8, 0x0016(s1)             # 00000046
    lwc1    $f4, 0x0000(s1)            # 00000030
    mtc1    $at, $f2                   # $f2 = 0.25
    subu    t4, t8, t2
    sll     t5, t4, 16
    sra     t3, t5, 16
    mtc1    t3, $f6                    # $f6 = 0.00
    sub.s   $f8, $f4, $f10
    lh      t8, 0x00A0($sp)
    lh      t6, 0x007E($sp)
    cvt.s.w $f4, $f6
    mul.s   $f0, $f8, $f2
    lwc1    $f14, 0x0094($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    mul.s   $f8, $f4, $f2
    trunc.w.s $f6, $f8
    mfc1    t7, $f6
    nop
    sh      t7, 0x0086($sp)
    lh      t9, 0x0018(s1)             # 00000048
    subu    t2, t9, t8
    sll     t4, t2, 16
    sra     t5, t4, 16
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    mul.s   $f6, $f8, $f2
    mtc1    t6, $f8                    # $f8 = 0.00
    trunc.w.s $f4, $f6
    cvt.s.w $f6, $f8
    mfc1    t0, $f4
    nop
    sll     t0, t0, 16
    sra     t0, t0, 16
    mul.s   $f4, $f6, $f0
    sh      t0, 0x0084($sp)
    jal     func_8003569C
    add.s   $f12, $f4, $f10
    lh      t7, 0x0086($sp)
    lh      t9, 0x007E($sp)
    lh      t2, 0x00A2($sp)
    swc1    $f0, 0x00AC($sp)
    multu   t7, t9
    lh      a1, 0x009A($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t8
    addu    a0, t2, t8
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    lh      t0, 0x0084($sp)
    lh      t5, 0x007E($sp)
    lh      t4, 0x00A0($sp)
    sh      v0, 0x00B2($sp)
    multu   t0, t5
    lh      a1, 0x0098($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t3
    addu    a0, t4, t3
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    sh      v0, 0x00B0($sp)
    b       lbl_8003CB80
    lh      v1, 0x001A(s1)             # 0000004A
lbl_8003CB7C:
    sw      t6, 0x00E0($sp)
lbl_8003CB80:
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_8003CD64
    sh      t7, 0x001A(s1)             # 0000004A
lbl_8003CB8C:
    sll     a0, v0, 16
    sra     a0, a0, 16
    bltz    a0, lbl_8003CBA4
    lui     $at, 0x8010                # $at = 80100000
    b       lbl_8003CBA8
    or      v0, a0, $zero              # v0 = 00000000
lbl_8003CBA4:
    subu    v0, $zero, a0
lbl_8003CBA8:
    lwc1    $f8, 0x6D48($at)           # 80106D48
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f6, $f18, $f8
    add.s   $f10, $f6, $f4
    trunc.w.s $f8, $f10
    mfc1    v1, $f8
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, v0
    beql    $at, $zero, lbl_8003CD04
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    a1, $f6                    # $f6 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6D4C($at)          # 80106D4C
    cvt.s.w $f4, $f6
    lwc1    $f12, 0x00A4($sp)
    lwc1    $f14, 0x00AC($sp)
    sh      a1, 0x0086($sp)
    swc1    $f18, 0x00EC($sp)
    mul.s   $f16, $f4, $f10
    jal     func_800676A4
    swc1    $f16, 0x00F4($sp)
    lwc1    $f8, 0x00AC($sp)
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f18, 0x00EC($sp)
    div.s   $f6, $f0, $f8
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f16, 0x00F4($sp)
    add.s   $f10, $f18, $f4
    lh      t2, 0x0086($sp)
    lh      t4, 0x0092($sp)
    sub.s   $f8, $f10, $f18
    addiu   t7, t4, 0x8001             # t7 = FFFF8001
    mul.s   $f4, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x43B4                # $at = 43B40000
    add.s   $f2, $f4, $f18
    mtc1    $at, $f4                   # $f4 = 360.00
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f10, $f2, $f2
    sub.s   $f8, $f10, $f6
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x43B4                # $at = 43B40000
    sub.s   $f10, $f2, $f4
    mtc1    $at, $f4                   # $f4 = 360.00
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f12, $f8, $f10
    mul.s   $f8, $f4, $f12
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f12, $f16
    add.s   $f6, $f4, $f10
    mul.s   $f8, $f16, $f16
    bltz    t2, lbl_8003CCBC
    div.s   $f14, $f8, $f6
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6D50($at)           # 80106D50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mul.s   $f10, $f14, $f4
    add.s   $f6, $f10, $f8
    trunc.w.s $f4, $f6
    mfc1    t0, $f4
    nop
    sll     t0, t0, 16
    b       lbl_8003CCF0
    sra     t0, t0, 16
lbl_8003CCBC:
    lwc1    $f10, 0x6D54($at)          # 3F006D54
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    mul.s   $f8, $f14, $f10
    add.s   $f4, $f8, $f6
    trunc.w.s $f10, $f4
    mfc1    t0, $f10
    nop
    sll     t0, t0, 16
    sra     t0, t0, 16
    subu    t0, $zero, t0
    sll     t0, t0, 16
    sra     t0, t0, 16
lbl_8003CCF0:
    addu    t8, t7, t0
    addiu   t5, t8, 0x8001             # t5 = FFFF8001
    b       lbl_8003CD64
    sh      t5, 0x00B2($sp)
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8003CD04:
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6D58($at)          # 80106D58
    sub.s   $f4, $f8, $f6
    subu    t0, $zero, v1
    sll     t0, t0, 16
    sra     t0, t0, 16
    mul.s   $f16, $f4, $f10
    bltz    a0, lbl_8003CD3C
    nop
    sll     t0, v1, 16
    b       lbl_8003CD3C
    sra     t0, t0, 16
lbl_8003CD3C:
    subu    t3, t0, a0
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t4, 0x0092($sp)
    cvt.s.w $f6, $f8
    mul.s   $f4, $f6, $f16
    trunc.w.s $f10, $f4
    mfc1    t2, $f10
    nop
    subu    t8, t4, t2
    sh      t8, 0x00B2($sp)
lbl_8003CD64:
    lw      t5, 0x00E0($sp)
    lh      t3, 0x00A8($sp)
    lh      a1, 0x0090($sp)
    bne     t5, $zero, lbl_8003CF50
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mtc1    t3, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0018(s0)            # 00000018
    lwc1    $f10, 0x0070($sp)
    cvt.s.w $f6, $f8
    lwc1    $f8, 0x0074($sp)
    lwc1    $f12, 0x00DC($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f0, $f6, $f4
    sub.s   $f6, $f10, $f8
    lh      t2, 0x00A0($sp)
    mul.s   $f4, $f6, $f12
    lwc1    $f6, 0x6D5C($at)           # 80106D5C
    lui     $at, 0x3F00                # $at = 3F000000
    add.s   $f10, $f4, $f8
    mtc1    $at, $f8                   # $f8 = 0.50
    mul.s   $f4, $f10, $f6
    add.s   $f10, $f4, $f8
    mtc1    t2, $f4                    # $f4 = 0.00
    trunc.w.s $f6, $f10
    mul.s   $f10, $f12, $f2
    mfc1    t4, $f6
    cvt.s.w $f8, $f4
    add.s   $f6, $f2, $f10
    mul.s   $f4, $f8, $f6
    trunc.w.s $f8, $f0
    trunc.w.s $f10, $f4
    mfc1    t6, $f10
    nop
    subu    t2, t4, t6
    mfc1    t4, $f8
    nop
    addu    v0, t2, t4
    sll     v1, v0, 16
    sra     v1, v1, 16
    sll     a0, v0, 16
    slti    $at, v1, 0xD558
    beq     $at, $zero, lbl_8003CE20
    sra     a0, a0, 16
    b       lbl_8003CE30
    addiu   a0, $zero, 0xD558          # a0 = FFFFD558
lbl_8003CE20:
    slti    $at, v1, 0x2AA9
    bne     $at, $zero, lbl_8003CE30
    nop
    addiu   a0, $zero, 0x2AA8          # a0 = 00002AA8
lbl_8003CE30:
    jal     func_80035724
    lw      a2, 0x0010(s1)             # 00000040
    sh      v0, 0x00B0($sp)
    lw      a0, 0x003C($sp)
    lw      a1, 0x0040($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFF74
    lw      t6, 0x003C($sp)
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFF7C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      t9, 0x0000(t6)             # 00000000
    sw      t9, 0x0000(a2)             # FFFFFF7C
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a2)             # FFFFFF80
    lw      t9, 0x0008(t6)             # 00000008
    sw      t9, 0x0008(a2)             # FFFFFF84
    lh      t8, 0x0140(s0)             # 00000140
    lw      t3, 0x003C($sp)
    bnel    t8, $at, lbl_8003CF38
    lw      t5, 0x0044($sp)
    lw      t5, 0x008C(s0)             # 0000008C
    lui     t3, 0x0001                 # t3 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t3, t3, t5
    lbu     t3, 0x0A39(t3)             # 00010A39
    beq     t3, $zero, lbl_8003CEAC
    nop
    lh      v0, 0x002C(s0)             # 0000002C
    andi    t2, v0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8003CEBC
    andi    t4, v0, 0x0002             # t4 = 00000000
lbl_8003CEAC:
    jal     func_80035A94
    lw      a1, 0x0040($sp)
    b       lbl_8003CF14
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFF7C
lbl_8003CEBC:
    beq     t4, $zero, lbl_8003CED8
    addiu   a0, $sp, 0x0120            # a0 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035D18
    lw      a1, 0x0040($sp)
    b       lbl_8003CF14
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFF7C
lbl_8003CED8:
    jal     func_800676F4
    lw      a1, 0x0040($sp)
    lwc1    $f6, 0x00B4($sp)
    lwc1    $f4, 0x0120($sp)
    lwc1    $f8, 0x00B8($sp)
    sub.s   $f10, $f6, $f4
    lwc1    $f6, 0x0124($sp)
    sub.s   $f4, $f8, $f6
    swc1    $f10, 0x00B4($sp)
    lwc1    $f10, 0x00BC($sp)
    lwc1    $f8, 0x0128($sp)
    swc1    $f4, 0x00B8($sp)
    sub.s   $f6, $f10, $f8
    swc1    $f6, 0x00BC($sp)
    addiu   t7, $sp, 0x00B4            # t7 = FFFFFF7C
lbl_8003CF14:
    lw      t8, 0x0000(t7)             # FFFFFF7C
    lw      t6, 0x0044($sp)
    sw      t8, 0x0000(t6)             # 00000000
    lw      t9, 0x0004(t7)             # FFFFFF80
    sw      t9, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(t7)             # FFFFFF84
    b       lbl_8003CF50
    sw      t8, 0x0008(t6)             # 00000008
    lw      t5, 0x0044($sp)
lbl_8003CF38:
    lw      t4, 0x0000(t3)             # 00000000
    sw      t4, 0x0000(t5)             # 00000000
    lw      t2, 0x0004(t3)             # 00000004
    sw      t2, 0x0004(t5)             # 00000004
    lw      t4, 0x0008(t3)             # 00000008
    sw      t4, 0x0008(t5)             # 00000008
lbl_8003CF50:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f4                   # $f4 = -6.00
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    lwc1    $f6, 0x00DC($sp)
    lwc1    $f0, 0x0004(s1)            # 00000034
    mul.s   $f8, $f4, $f10
    sub.s   $f4, $f16, $f6
    lui     $at, 0x8010                # $at = 80100000
    lui     t5, 0x8012                 # t5 = 80120000
    mul.s   $f10, $f8, $f4
    lwc1    $f8, 0x6D60($at)           # 80106D60
    lui     $at, 0x8010                # $at = 80100000
    sub.s   $f6, $f10, $f0
    mul.s   $f4, $f6, $f8
    add.s   $f10, $f0, $f4
    swc1    $f10, 0x0004(s1)           # 00000034
    lwc1    $f8, 0x6D64($at)           # 80106D64
    lwc1    $f6, 0x0004(s1)            # 00000034
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f4, $f6, $f8
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f6, $f4, $f10
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x015A(s0)             # 0000015A
    lw      t9, 0x0080($sp)
    lwc1    $f4, 0x006C($sp)
    lb      t8, 0x0833(t9)             # 00000833
    beq     t8, $zero, lbl_8003CFE0
    nop
    b       lbl_8003D000
    lwc1    $f2, 0x6D68($at)           # 80106D68
lbl_8003CFE0:
    lh      t5, -0x5A00(t5)            # 8011A600
    slti    $at, t5, 0x0011
    beq     $at, $zero, lbl_8003CFF8
    lui     $at, 0x8010                # $at = 80100000
    b       lbl_8003CFFC
    lwc1    $f0, 0x6D6C($at)           # 80106D6C
lbl_8003CFF8:
    mov.s   $f0, $f16
lbl_8003CFFC:
    mov.s   $f2, $f0
lbl_8003D000:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6D70($at)          # 80106D70
    lwc1    $f8, 0x00DC($sp)
    mfc1    a3, $f16
    mul.s   $f6, $f4, $f10
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    mul.s   $f10, $f6, $f8
    sub.s   $f6, $f4, $f10
    mul.s   $f12, $f2, $f6
    jal     func_8003569C
    nop
    swc1    $f0, 0x00FC(s0)            # 000000FC
lbl_8003D034:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0138           # $sp += 0x138


func_8003D048:
# BATT2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003D068:
# BATT3()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003D088:
# BATT4()
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D74($at)          # 80106D74
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6D78($at)           # 80106D78
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x6D7C($at)          # 80106D7C
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t2, $f18                   # $f18 = 0.00
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    addiu   v0, v0, 0x0018             # v0 = 00000018
    cvt.s.w $f4, $f18
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f6, $f4, $f12
    sub.s   $f2, $f16, $f10
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0000(s0)           # 00000000
    lh      t3, -0x0014(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0010(v0)            # 00000008
    lwc1    $f18, 0x6D80($at)          # 80106D80
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    $at, $f6                   # $f6 = 0.50
    cvt.s.w $f10, $f16
    mul.s   $f4, $f10, $f18
    add.s   $f8, $f4, $f6
    trunc.w.s $f16, $f8
    mfc1    t6, $f16
    nop
    sh      t6, 0x0008(s0)             # 00000008
    lh      t7, -0x000C(v0)            # 0000000C
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t9, -0x0008(v0)            # 00000010
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0010(s0)            # 00000010
    lh      t8, -0x0004(v0)            # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f12
    swc1    $f18, 0x0014(s0)           # 00000014
    lh      t0, 0x0000(v0)             # 00000018
    sh      t0, 0x0018(s0)             # 00000018
    sw      a1, 0x0028($sp)
    jal     func_80067A84
    sw      a2, 0x002C($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0024($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFDC
    jal     func_80067A84
    lw      a1, 0x0028($sp)
    lh      t1, 0x0018(s0)             # 00000018
    lui     $at, 0x800F                # $at = 800F0000
    sw      t1, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v1, $zero, lbl_8003D224
    addiu   v1, s0, 0x001C             # v1 = 0000001C
    beq     v1, $at, lbl_8003D220
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beql    v1, $at, lbl_8003D224
    addiu   v1, s0, 0x001C             # v1 = 0000001C
    b       lbl_8003D238
    addiu   v1, s0, 0x001C             # v1 = 0000001C
lbl_8003D220:
    addiu   v1, s0, 0x001C             # v1 = 0000001C
lbl_8003D224:
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sh      t2, 0x0000(v1)             # 0000001C
    lh      t3, 0x015E(s0)             # 0000015E
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x015E(s0)             # 0000015E
lbl_8003D238:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    lwc1    $f12, 0x000C(s0)           # 0000000C
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    mul.s   $f8, $f4, $f6
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    sw      v1, 0x0020($sp)
    mfc1    a2, $f8
    jal     func_8003569C
    nop
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f2                   # $f2 = 1000.00
    swc1    $f0, 0x00C8(s0)            # 000000C8
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f2, 0x00C0(s0)            # 000000C0
    swc1    $f2, 0x00C4(s0)            # 000000C4
    lwc1    $f12, 0x6D84($at)          # 80106D84
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6D88($at)          # 80106D88
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6D8C($at)          # 80106D8C
    lwc1    $f16, 0x00E0(s0)           # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f18, $f16, $f10
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    mfc1    a2, $f18
    jal     func_8003569C
    nop
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6D90($at)           # 80106D90
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    lw      a2, 0x0000(s0)             # 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80037258
    swc1    $f4, 0x00D4(s0)            # 000000D4
    lw      v1, 0x0020($sp)
    lh      t6, 0x005A($sp)
    lh      t0, 0x005A($sp)
    lh      t5, 0x0000(v1)             # 00000000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    beql    t5, $zero, lbl_8003D334
    sh      t0, 0x0062($sp)
    lh      t7, 0x0058($sp)
    lwc1    $f6, 0x0054($sp)
    sh      t6, 0x0062($sp)
    sh      t7, 0x0060($sp)
    swc1    $f6, 0x005C($sp)
    lh      t9, 0x0000(v1)             # 00000000
    addiu   t8, t9, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_8003D364
    sh      t8, 0x0000(v1)             # 00000000
    sh      t0, 0x0062($sp)
lbl_8003D334:
    lw      a2, 0x000C(s0)             # 0000000C
    lh      a0, 0x0008(s0)             # 00000008
    jal     func_80035724
    lh      a1, 0x0058($sp)
    sh      v0, 0x0060($sp)
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    lw      a2, 0x000C(s0)             # 0000000C
    lwc1    $f12, 0x0004(s0)           # 00000004
    jal     func_8003569C
    lwc1    $f14, 0x0054($sp)
    swc1    $f0, 0x005C($sp)
lbl_8003D364:
    lw      a0, 0x0024($sp)
    lw      a1, 0x0028($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFEC
    lw      t2, 0x0024($sp)
    lw      t1, 0x002C($sp)
    lui     a3, 0x3F80                 # a3 = 3F800000
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(t1)             # 00000000
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(t1)             # 00000004
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(t1)             # 00000008
    lwc1    $f8, 0x005C($sp)
    lw      a2, 0x000C(s0)             # 0000000C
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lwc1    $f12, 0x0010(s0)           # 00000010
    jal     func_8003569C
    swc1    $f8, 0x00DC(s0)            # 000000DC
    swc1    $f0, 0x00FC(s0)            # 000000FC
    sh      $zero, 0x015A(s0)          # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0014(s0)             # 00000014
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_8003D3E0:
# BATT0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003D400:
# KEEP1()
    addiu   $sp, $sp, 0xFEC8           # $sp -= 0x138
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      $zero, 0x0088($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lw      v1, 0x00A8(s0)             # 000000A8
    mov.s   $f16, $f0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_8003D444
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t6, 0x0130(v1)             # 00000130
    lui     $at, 0x8010                # $at = 80100000
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    bne     t6, $zero, lbl_8003D454
    nop
lbl_8003D444:
    jal     func_80049330
    sw      $zero, 0x00A8(s0)          # 000000A8
    b       lbl_8003E13C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003D454:
    lwc1    $f12, 0x6D94($at)          # 00006D94
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t7, 0x0142(s0)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t8, t7,  3
    lh      t1, 0x0144(s0)             # 00000144
    addu    t9, t9, t8
    lw      t9, -0x118C(t9)            # 800EEE74
    sll     t2, t1,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t3, t9, t2
    lw      v0, 0x0004(t3)             # 00000004
    lwc1    $f8, 0x6D98($at)           # 80106D98
    lui     $at, 0x8010                # $at = 80100000
    lh      t4, 0x0000(v0)             # 00000001
    lwc1    $f4, 0x6D9C($at)           # 80106D9C
    addiu   v0, v0, 0x0030             # v0 = 00000031
    mul.s   $f10, $f6, $f8
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f2, $f4, $f10
    mul.s   $f4, $f8, $f12
    nop
    mul.s   $f10, $f4, $f0
    nop
    mul.s   $f6, $f10, $f2
    swc1    $f6, 0x0000(s0)            # 00000000
    lh      t5, -0x002C(v0)            # 00000005
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x0004(s0)            # 00000004
    lh      t6, -0x0028(v0)            # 00000009
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    swc1    $f6, 0x0008(s0)            # 00000008
    lh      t7, -0x0024(v0)            # 0000000D
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t8, -0x0020(v0)            # 00000011
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t1, -0x001C(v0)            # 00000015
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    swc1    $f4, 0x0014(s0)            # 00000014
    lh      t9, -0x0018(v0)            # 00000019
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    swc1    $f6, 0x0018(s0)            # 00000018
    lh      t2, -0x0014(v0)            # 0000001D
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f12
    swc1    $f10, 0x001C(s0)           # 0000001C
    lh      t3, -0x0010(v0)            # 00000021
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0020(s0)            # 00000020
    lh      t4, -0x000C(v0)            # 00000025
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f6, $f10, $f12
    swc1    $f6, 0x0024(s0)            # 00000024
    lh      t5, -0x0008(v0)            # 00000029
    sh      t5, 0x0030(s0)             # 00000030
    lh      t6, -0x0004(v0)            # 0000002D
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f12
    nop
    mul.s   $f6, $f10, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0028(s0)            # 00000028
    lh      t7, 0x0000(v0)             # 00000031
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f6, $f10, $f12
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0000(s0)            # 00000000
    addiu   a1, s0, 0x0050             # a1 = 00000050
    sw      a1, 0x0044($sp)
    add.s   $f16, $f16, $f8
    sw      a2, 0x0048($sp)
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFF88
    jal     func_80067A84
    swc1    $f16, 0x0070($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0040($sp)
    addiu   a0, $sp, 0x00B8            # a0 = FFFFFF80
    jal     func_80067A84
    lw      a1, 0x0044($sp)
    lh      t8, 0x0030(s0)             # 00000030
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t5, s0, 0x0094             # t5 = 00000094
    sw      t8, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_8003D630
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8003D630
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v1, $at, lbl_8003D684
    sw      t5, 0x003C($sp)
lbl_8003D630:
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t1, v1, 0x0001             # t1 = 00000001
    sh      t1, 0x015E(s0)             # 0000015E
    addiu   t0, s0, 0x0034             # t0 = 00000034
    sh      $zero, 0x0010(t0)          # 00000044
    swc1    $f4, 0x0004(t0)            # 00000038
    lw      t9, 0x00A8(s0)             # 000000A8
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    sh      t2, 0x0016(t0)             # 0000004A
    sw      t9, 0x000C(t0)             # 00000040
    lh      t3, 0x00C6($sp)
    sh      t3, 0x0012(t0)             # 00000046
    lh      t4, 0x00C4($sp)
    sh      t4, 0x0014(t0)             # 00000048
    lwc1    $f10, 0x00C0($sp)
    swc1    $f10, 0x0000(t0)           # 00000034
    lwc1    $f8, 0x00F4(s0)            # 000000F4
    lwc1    $f6, 0x0098(s0)            # 00000098
    sub.s   $f4, $f6, $f8
    swc1    $f4, 0x0008(t0)            # 0000003C
    sw      t5, 0x003C($sp)
lbl_8003D684:
    lh      t6, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t0, s0, 0x0034             # t0 = 00000034
    bnel    t6, $at, lbl_8003D6C4
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t8, 0x00C4($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E10($at)           # 800EF1F0
    subu    t1, $zero, t8
    sh      t1, 0x0134(s0)             # 00000134
    lh      t9, 0x00C6($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    addiu   t2, t9, 0x8001             # t2 = FFFF8001
    sh      t2, 0x0136(s0)             # 00000136
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8003D6C4:
    lwc1    $f10, 0x0004(s0)           # 00000004
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   $at, $zero, 0x0008         # $at = 00000008
    swc1    $f10, 0x0104($sp)
    swc1    $f6, 0x0084($sp)
    lh      v0, 0x015C(s0)             # 0000015C
    andi    v0, v0, 0x0018             # v0 = 00000000
    beq     v0, $at, lbl_8003D730
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_8003D88C
    addiu   t5, s0, 0x00AC             # t5 = 000000AC
    lw      t3, 0x003C($sp)
    lw      a1, 0x0044($sp)
    addiu   t6, s0, 0x00AC             # t6 = 000000AC
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0000(a1)             # 00000000
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0004(a1)             # 00000004
    lw      t5, 0x0008(t3)             # 00000008
    lwc1    $f8, 0x0004(a1)            # 00000004
    sw      t5, 0x0008(a1)             # 00000008
    lwc1    $f4, 0x0070($sp)
    add.s   $f10, $f8, $f4
    swc1    $f10, 0x0004(a1)           # 00000004
    sw      $zero, 0x000C(t0)          # 00000040
    b       lbl_8003D9CC
    sw      t6, 0x0030($sp)
lbl_8003D730:
    lw      a1, 0x0090(s0)             # 00000090
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    lbu     t7, 0x0002(a1)             # 00000002
    bnel    t7, $at, lbl_8003D7A4
    sw      a0, 0x0030($sp)
    lw      t8, 0x00A8(s0)             # 000000A8
    lw      t1, 0x0428(a1)             # 00000428
    bnel    t8, t1, lbl_8003D7A4
    sw      a0, 0x0030($sp)
    addiu   a0, $sp, 0x0054            # a0 = FFFFFF1C
    jal     func_80022670
    sw      t0, 0x0038($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    addiu   t2, $zero, 0x2EE0          # t2 = 00002EE0
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    swc1    $f6, 0x00C8($sp)
    lh      t9, 0x00A2(s0)             # 000000A2
    sh      t2, 0x00CC($sp)
    sw      a0, 0x0030($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFF1C
    addiu   a2, $sp, 0x00C8            # a2 = FFFFFF90
    jal     func_800359A8
    sh      t9, 0x00CE($sp)
    lw      t0, 0x0038($sp)
    b       lbl_8003D7B8
    lw      a1, 0x00A8(s0)             # 000000A8
    sw      a0, 0x0030($sp)
lbl_8003D7A4:
    lw      a1, 0x00A8(s0)             # 000000A8
    jal     func_80022670
    sw      t0, 0x0038($sp)
    lw      t0, 0x0038($sp)
    lw      a1, 0x00A8(s0)             # 000000A8
lbl_8003D7B8:
    sw      t0, 0x0038($sp)
    jal     func_80022670
    lw      a0, 0x0030($sp)
    lw      t0, 0x0038($sp)
    lw      v1, 0x00A8(s0)             # 000000A8
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t4, 0x000C(t0)             # 0000000C
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    beql    v1, t4, lbl_8003D7F4
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      v1, 0x000C(t0)             # 0000000C
    swc1    $f8, 0x0100(s0)            # 00000100
    lwc1    $f4, 0x00E0(s0)            # 000000E0
lbl_8003D7F4:
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mul.s   $f6, $f4, $f10
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    sw      t0, 0x0038($sp)
    mfc1    a2, $f6
    jal     func_8003569C
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6DA0($at)           # 80106DA0
    lwc1    $f8, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f10, $f8, $f4
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    mfc1    a2, $f10
    jal     func_8003569C
    nop
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6DA4($at)          # 80106DA4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DA8($at)           # 80106DA8
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mul.s   $f4, $f6, $f8
    lwc1    $f14, 0x00D4(s0)           # 000000D4
    mfc1    a2, $f4
    jal     func_8003569C
    nop
    lw      t0, 0x0038($sp)
    b       lbl_8003D894
    swc1    $f0, 0x00D4(s0)            # 000000D4
lbl_8003D88C:
    sw      $zero, 0x000C(t0)          # 0000000C
    sw      t5, 0x0030($sp)
lbl_8003D894:
    lwc1    $f10, 0x0098(s0)           # 00000098
    lwc1    $f6, 0x0104(s0)            # 00000104
    lw      t8, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f10, $f6
    addiu   t3, t0, 0x0008             # t3 = 00000008
    addiu   t4, $sp, 0x00C8            # t4 = FFFFFF90
    or      v0, $zero, $zero           # v0 = 00000000
    bc1tl   lbl_8003D8F4
    lwc1    $f10, 0x0004(t8)           # 00000004
    lw      a1, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DAC($at)           # 80106DAC
    lwc1    $f4, 0x006C(a1)            # 0000006C
    c.lt.s  $f8, $f4
    nop
    bc1tl   lbl_8003D8F4
    lwc1    $f10, 0x0004(t8)           # 00000004
    lw      t6, 0x066C(a1)             # 0000066C
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sll     t7, t6, 10
    bgezl   t7, lbl_8003D904
    sh      t1, 0x0080($sp)
    lwc1    $f10, 0x0004(t8)           # 00000004
lbl_8003D8F4:
    swc1    $f10, 0x0008(t0)           # 00000008
    b       lbl_8003D904
    sh      $zero, 0x0080($sp)
    sh      t1, 0x0080($sp)
lbl_8003D904:
    lh      t9, 0x0080($sp)
    lh      t2, 0x0080($sp)
    addiu   a1, $sp, 0x00B8            # a1 = FFFFFF80
    beq     t9, $zero, lbl_8003D920
    lw      a2, 0x0030($sp)
    b       lbl_8003D924
    lwc1    $f2, 0x0028(s0)            # 00000028
lbl_8003D920:
    lwc1    $f2, 0x0000(s0)            # 00000000
lbl_8003D924:
    beq     t2, $zero, lbl_8003D934
    lwc1    $f6, 0x0104($sp)
    b       lbl_8003D934
    addiu   v0, $zero, 0x0080          # v0 = 00000080
lbl_8003D934:
    swc1    $f6, 0x0010($sp)
    sw      t3, 0x0014($sp)
    sw      t4, 0x0018($sp)
    lh      t5, 0x0030(s0)             # 00000030
    mfc1    a3, $f2
    sw      t0, 0x0038($sp)
    or      t6, v0, t5                 # t6 = 00000080
    jal     func_800379EC
    sw      t6, 0x001C($sp)
    lw      t7, 0x003C($sp)
    addiu   a1, $sp, 0x0114            # a1 = FFFFFFDC
    addiu   a0, $sp, 0x00C8            # a0 = FFFFFF90
    lw      t1, 0x0000(t7)             # 00000000
    sw      t1, 0x0000(a1)             # FFFFFFDC
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(a1)             # FFFFFFE0
    lw      t1, 0x0008(t7)             # 00000008
    sw      t1, 0x0008(a1)             # FFFFFFE4
    lwc1    $f8, 0x0118($sp)
    lwc1    $f4, 0x0070($sp)
    lw      a2, 0x0030($sp)
    add.s   $f10, $f8, $f4
    jal     func_80067A84
    swc1    $f10, 0x0118($sp)
    lwc1    $f0, 0x00C8($sp)
    lwc1    $f6, 0x0104($sp)
    lw      t0, 0x0038($sp)
    lwc1    $f4, 0x0104($sp)
    c.lt.s  $f6, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_8003D9C4
    div.s   $f10, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 1.00
    b       lbl_8003D9C8
    swc1    $f8, 0x0084($sp)
    div.s   $f10, $f0, $f4
lbl_8003D9C4:
    swc1    $f10, 0x0084($sp)
lbl_8003D9C8:
    lw      a1, 0x0044($sp)
lbl_8003D9CC:
    addiu   a0, $sp, 0x00D8            # a0 = FFFFFFA0
    lw      a2, 0x0040($sp)
    jal     func_80067A84
    sw      t0, 0x0038($sp)
    lwc1    $f0, 0x0004(s0)            # 00000004
    lwc1    $f6, 0x00D8($sp)
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    lw      t0, 0x0038($sp)
    c.lt.s  $f6, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1f    lbl_8003DA10
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f0, 0x0104($sp)
    b       lbl_8003DA50
    swc1    $f8, 0x00E8($sp)
lbl_8003DA10:
    lwc1    $f0, 0x0008(s0)            # 00000008
    lwc1    $f4, 0x00D8($sp)
    lwc1    $f10, 0x00D8($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8003DA48
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    swc1    $f0, 0x0104($sp)
    b       lbl_8003DA50
    swc1    $f12, 0x00E8($sp)
    mtc1    $at, $f12                  # $f12 = 20.00
lbl_8003DA48:
    swc1    $f10, 0x0104($sp)
    swc1    $f12, 0x00E8($sp)
lbl_8003DA50:
    lwc1    $f14, 0x00C0(s0)           # 000000C0
    sw      t0, 0x0038($sp)
    jal     func_8003569C
    lwc1    $f12, 0x00E8($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f0, 0x00C0(s0)            # 000000C0
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    div.s   $f8, $f6, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lwc1    $f12, 0x0104($sp)
    lwc1    $f14, 0x00DC(s0)           # 000000DC
    mfc1    a2, $f8
    jal     func_8003569C
    nop
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lw      t9, 0x0030($sp)
    swc1    $f0, 0x00D8($sp)
    swc1    $f0, 0x00E8($sp)
    lw      t3, 0x0000(t9)             # 00000000
    addiu   a2, $sp, 0x0108            # a2 = FFFFFFD0
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFF98
    sw      t3, 0x0000(a2)             # FFFFFFD0
    lw      t2, 0x0004(t9)             # 00000004
    sw      t2, 0x0004(a2)             # FFFFFFD4
    lw      t3, 0x0008(t9)             # 00000008
    sw      t3, 0x0008(a2)             # FFFFFFD8
    jal     func_80067A84
    lw      a1, 0x0044($sp)
    lwc1    $f0, 0x00D0($sp)
    lwc1    $f12, 0x00E8($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    c.le.s  $f0, $f12
    lw      t0, 0x0038($sp)
    bc1fl   lbl_8003DAF0
    mov.s   $f2, $f12
    b       lbl_8003DAF0
    mov.s   $f2, $f0
    mov.s   $f2, $f12
lbl_8003DAF0:
    mul.s   $f10, $f2, $f4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DB0($at)           # 80106DB0
    lwc1    $f4, 0x0084($sp)
    lui     a2, 0x3D75                 # a2 = 3D750000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    lui     a3, 0x4000                 # a3 = 40000000
    sub.s   $f6, $f12, $f10
    sub.s   $f10, $f8, $f4
    swc1    $f6, 0x00D0($sp)
    lwc1    $f6, 0x0010(s0)            # 00000010
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f14, 0x00DC(s0)           # 000000DC
    sw      t0, 0x0038($sp)
    sub.s   $f8, $f6, $f0
    mul.s   $f4, $f8, $f10
    add.s   $f18, $f0, $f4
    jal     func_8003569C
    swc1    $f18, 0x00EC($sp)
    lw      t0, 0x0038($sp)
    lwc1    $f18, 0x00EC($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lh      t4, 0x00BE($sp)
    lh      t5, 0x00D6($sp)
    swc1    $f0, 0x00D8($sp)
    addiu   t6, t4, 0x8001             # t6 = FFFF8001
    sll     t7, t6, 16
    sh      t4, 0x00DE($sp)
    lh      v1, 0x0016(t0)             # 00000016
    sra     t8, t7, 16
    subu    v0, t5, t8
    sll     a2, v0, 16
    beq     v1, $zero, lbl_8003DCE0
    sra     a2, a2, 16
    blez    v1, lbl_8003DCD0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lh      t9, 0x00CE($sp)
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0082($sp)
    addiu   a0, $sp, 0x00C8            # a0 = FFFFFF90
    lw      a1, 0x0044($sp)
    lw      a2, 0x0048($sp)
    sw      t0, 0x0038($sp)
    jal     func_80067A84
    sh      t9, 0x00E2($sp)
    lh      t2, 0x00E2($sp)
    lw      t0, 0x0038($sp)
    lwc1    $f8, 0x00C8($sp)
    addiu   t7, t2, 0x8001             # t7 = FFFF8001
    sh      t7, 0x00CE($sp)
    lh      t4, 0x0012(t0)             # 00000012
    lwc1    $f6, 0x0000(t0)            # 00000000
    lui     $at, 0x3E80                # $at = 3E800000
    subu    t5, t4, t7
    sll     t8, t5, 16
    sra     t1, t8, 16
    mtc1    t1, $f4                    # $f4 = 0.00
    sub.s   $f10, $f6, $f8
    mtc1    $at, $f0                   # $f0 = 0.25
    lh      t6, 0x00CC($sp)
    cvt.s.w $f6, $f4
    mul.s   $f2, $f10, $f0
    lh      t1, 0x0082($sp)
    lwc1    $f14, 0x00C0($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    mul.s   $f10, $f6, $f0
    trunc.w.s $f4, $f10
    mfc1    t2, $f4
    nop
    sh      t2, 0x00E2($sp)
    lh      t3, 0x0014(t0)             # 00000014
    subu    t4, t3, t6
    sll     t7, t4, 16
    sra     t5, t7, 16
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f4, $f10, $f0
    mtc1    t1, $f10                   # $f10 = 0.00
    trunc.w.s $f6, $f4
    cvt.s.w $f4, $f10
    mfc1    v1, $f6
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    mul.s   $f6, $f4, $f2
    sh      v1, 0x00E0($sp)
    jal     func_8003569C
    add.s   $f12, $f6, $f8
    lh      t9, 0x00E2($sp)
    lh      t2, 0x0082($sp)
    lh      t6, 0x00CE($sp)
    swc1    $f0, 0x00D8($sp)
    multu   t9, t2
    lh      a1, 0x00C6($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t3
    addu    a0, t6, t3
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    lh      v1, 0x00E0($sp)
    lh      t7, 0x0082($sp)
    lh      t4, 0x00CC($sp)
    sh      v0, 0x00DE($sp)
    multu   v1, t7
    lh      a1, 0x00C4($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t5
    addu    a0, t4, t5
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    lw      t0, 0x0038($sp)
    sh      v0, 0x00DC($sp)
    b       lbl_8003DCD4
    lh      v1, 0x0016(t0)             # 00000016
lbl_8003DCD0:
    sw      t8, 0x0088($sp)
lbl_8003DCD4:
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_8003DEB8
    sh      t1, 0x0016(t0)             # 00000016
lbl_8003DCE0:
    sll     a1, v0, 16
    sra     a1, a1, 16
    bltz    a1, lbl_8003DCF8
    lui     $at, 0x8010                # $at = 80100000
    b       lbl_8003DCFC
    or      v0, a1, $zero              # v0 = 00000000
lbl_8003DCF8:
    subu    v0, $zero, a1
lbl_8003DCFC:
    lwc1    $f10, 0x6DB4($at)          # 80106DB4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    mul.s   $f4, $f18, $f10
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    a0, $f10
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    slt     $at, a0, v0
    beql    $at, $zero, lbl_8003DE58
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    a2, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DB8($at)           # 80106DB8
    cvt.s.w $f6, $f4
    lwc1    $f12, 0x00D0($sp)
    lwc1    $f14, 0x00D8($sp)
    sh      a2, 0x00E2($sp)
    swc1    $f18, 0x00EC($sp)
    mul.s   $f16, $f6, $f8
    jal     func_800676A4
    swc1    $f16, 0x00F4($sp)
    lwc1    $f10, 0x00D8($sp)
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f18, 0x00EC($sp)
    div.s   $f4, $f0, $f10
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f16, 0x00F4($sp)
    add.s   $f8, $f18, $f6
    lh      t2, 0x00E2($sp)
    lh      t7, 0x00BE($sp)
    sub.s   $f10, $f8, $f18
    addiu   t8, t7, 0x8001             # t8 = FFFF8001
    mul.s   $f6, $f4, $f10
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x43B4                # $at = 43B40000
    add.s   $f2, $f6, $f18
    mtc1    $at, $f6                   # $f6 = 360.00
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f8, $f2, $f2
    sub.s   $f10, $f8, $f4
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x43B4                # $at = 43B40000
    sub.s   $f8, $f2, $f6
    mtc1    $at, $f6                   # $f6 = 360.00
    lui     $at, 0x8010                # $at = 80100000
    div.s   $f12, $f10, $f8
    mul.s   $f10, $f6, $f12
    sub.s   $f8, $f4, $f10
    mul.s   $f6, $f12, $f16
    add.s   $f4, $f6, $f8
    mul.s   $f10, $f16, $f16
    bltz    t2, lbl_8003DE10
    div.s   $f14, $f10, $f4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6DBC($at)           # 80106DBC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f14, $f6
    add.s   $f4, $f8, $f10
    trunc.w.s $f6, $f4
    mfc1    v1, $f6
    nop
    sll     v1, v1, 16
    b       lbl_8003DE44
    sra     v1, v1, 16
lbl_8003DE10:
    lwc1    $f8, 0x6DC0($at)           # 3F006DC0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f10, $f14, $f8
    add.s   $f6, $f10, $f4
    trunc.w.s $f8, $f6
    mfc1    v1, $f8
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8003DE44:
    addu    t2, t8, v1
    addiu   t6, t2, 0x8001             # t6 = FFFF8001
    b       lbl_8003DEB8
    sh      t6, 0x00DE($sp)
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8003DE58:
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f4, 0x00E0(s0)            # 000000E0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DC4($at)           # 80106DC4
    sub.s   $f6, $f10, $f4
    subu    v1, $zero, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    mul.s   $f16, $f6, $f8
    bltz    a1, lbl_8003DE90
    nop
    sll     v1, a0, 16
    b       lbl_8003DE90
    sra     v1, v1, 16
lbl_8003DE90:
    subu    t7, v1, a1
    mtc1    t7, $f10                   # $f10 = 0.00
    lh      t3, 0x00BE($sp)
    cvt.s.w $f4, $f10
    mul.s   $f6, $f4, $f16
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    subu    t9, t3, t1
    sh      t9, 0x00DE($sp)
lbl_8003DEB8:
    lw      t2, 0x0088($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    bne     t2, $zero, lbl_8003E0E0
    lh      a1, 0x00BC($sp)
    lwc1    $f0, 0x0014(s0)            # 00000014
    lwc1    $f10, 0x0018(s0)           # 00000018
    lwc1    $f6, 0x0084($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    sub.s   $f4, $f10, $f0
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lh      t7, 0x00CC($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x6DC8($at)           # 80106DC8
    lui     $at, 0x3F00                # $at = 3F000000
    lh      t1, 0x00D4($sp)
    add.s   $f10, $f0, $f8
    mul.s   $f8, $f10, $f4
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    add.s   $f4, $f8, $f10
    mtc1    t7, $f10                   # $f10 = 0.00
    trunc.w.s $f8, $f4
    cvt.s.w $f4, $f10
    mfc1    a0, $f8
    mul.s   $f8, $f6, $f2
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f10, $f2, $f8
    mul.s   $f6, $f4, $f10
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    trunc.w.s $f8, $f6
    lwc1    $f6, 0x001C(s0)            # 0000001C
    mul.s   $f12, $f10, $f6
    mfc1    t3, $f8
    nop
    subu    a0, a0, t3
    sll     a0, a0, 16
    sra     a0, a0, 16
    trunc.w.s $f8, $f12
    mfc1    t7, $f8
    nop
    addu    a0, a0, t7
    sll     a0, a0, 16
    sra     a0, a0, 16
    slti    $at, a0, 0xCE00
    beql    $at, $zero, lbl_8003DF90
    slti    $at, a0, 0x3201
    b       lbl_8003DF9C
    addiu   a0, $zero, 0xCE00          # a0 = FFFFCE00
    slti    $at, a0, 0x3201
lbl_8003DF90:
    bne     $at, $zero, lbl_8003DF9C
    nop
    addiu   a0, $zero, 0x3200          # a0 = 00003200
lbl_8003DF9C:
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x00DC($sp)
    lw      a0, 0x0040($sp)
    lw      a1, 0x0044($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00D8            # a2 = FFFFFFA0
    lw      t4, 0x0040($sp)
    addiu   a2, $sp, 0x008C            # a2 = FFFFFF54
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      t8, 0x0000(t4)             # 00000000
    sw      t8, 0x0000(a2)             # FFFFFF54
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(a2)             # FFFFFF58
    lw      t8, 0x0008(t4)             # 00000008
    sw      t8, 0x0008(a2)             # FFFFFF5C
    lh      t3, 0x0140(s0)             # 00000140
    lw      t1, 0x0040($sp)
    bnel    t3, $at, lbl_8003E0A4
    lw      t3, 0x0048($sp)
    lw      t1, 0x008C(s0)             # 0000008C
    lui     t9, 0x0001                 # t9 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t9, t9, t1
    lbu     t9, 0x0A39(t9)             # 00010A39
    beq     t9, $zero, lbl_8003E018
    nop
    lh      v0, 0x0030(s0)             # 00000030
    andi    t2, v0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8003E028
    andi    t6, v0, 0x0002             # t6 = 00000000
lbl_8003E018:
    jal     func_80035A94
    lw      a1, 0x0044($sp)
    b       lbl_8003E080
    addiu   t4, $sp, 0x008C            # t4 = FFFFFF54
lbl_8003E028:
    beq     t6, $zero, lbl_8003E044
    addiu   a0, $sp, 0x0120            # a0 = FFFFFFE8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035D18
    lw      a1, 0x0044($sp)
    b       lbl_8003E080
    addiu   t4, $sp, 0x008C            # t4 = FFFFFF54
lbl_8003E044:
    jal     func_800676F4
    lw      a1, 0x0044($sp)
    lwc1    $f4, 0x008C($sp)
    lwc1    $f10, 0x0120($sp)
    lwc1    $f8, 0x0090($sp)
    sub.s   $f6, $f4, $f10
    lwc1    $f4, 0x0124($sp)
    sub.s   $f10, $f8, $f4
    swc1    $f6, 0x008C($sp)
    lwc1    $f6, 0x0094($sp)
    lwc1    $f8, 0x0128($sp)
    swc1    $f10, 0x0090($sp)
    sub.s   $f4, $f6, $f8
    swc1    $f4, 0x0094($sp)
    addiu   t4, $sp, 0x008C            # t4 = FFFFFF54
lbl_8003E080:
    lw      t8, 0x0000(t4)             # FFFFFF54
    lw      t7, 0x0048($sp)
    sw      t8, 0x0000(t7)             # 00000000
    lw      t5, 0x0004(t4)             # FFFFFF58
    sw      t5, 0x0004(t7)             # 00000004
    lw      t8, 0x0008(t4)             # FFFFFF5C
    b       lbl_8003E0BC
    sw      t8, 0x0008(t7)             # 00000008
    lw      t3, 0x0048($sp)
lbl_8003E0A4:
    lw      t2, 0x0000(t1)             # 00000000
    sw      t2, 0x0000(t3)             # 00000000
    lw      t9, 0x0004(t1)             # 00000004
    sw      t9, 0x0004(t3)             # 00000004
    lw      t2, 0x0008(t1)             # 00000008
    sw      t2, 0x0008(t3)             # 00000008
lbl_8003E0BC:
    addiu   a0, $sp, 0x0120            # a0 = FFFFFFE8
    lw      a1, 0x0048($sp)
    jal     func_800676F4
    lw      a2, 0x0044($sp)
    lw      a1, 0x0048($sp)
    addiu   a2, $sp, 0x0120            # a2 = FFFFFFE8
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80035A28
    or      a0, a1, $zero              # a0 = 00000000
lbl_8003E0E0:
    lwc1    $f12, 0x0020(s0)           # 00000020
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    lh      t7, 0x0080($sp)
    beql    t7, $zero, lbl_8003E128
    lwc1    $f2, 0x0024(s0)            # 00000024
    b       lbl_8003E128
    lwc1    $f2, 0x002C(s0)            # 0000002C
    lwc1    $f2, 0x0024(s0)            # 00000024
lbl_8003E128:
    mfc1    a1, $f2
    jal     func_80036DD8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003E13C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0138           # $sp += 0x138
    jr      $ra
    nop


func_8003E150:
# KEEP2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8003E170:
# KEEP3()
    addiu   $sp, $sp, 0xFF18           # $sp -= 0xE8
    sw      s3, 0x0028($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s3)             # 00000090
    lw      v0, 0x00A8(s3)             # 000000A8
    mov.s   $f12, $f0
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8003E1B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_8003E1C8
    lh      v1, 0x015E(s3)             # 0000015E
lbl_8003E1B4:
    jal     func_80049330
    sw      $zero, 0x00A8(s3)          # 000000A8
    b       lbl_8003EBA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v1, 0x015E(s3)             # 0000015E
lbl_8003E1C8:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   s0, s3, 0x0050             # s0 = 00000050
    beql    v1, $zero, lbl_8003E1EC
    lw      a0, 0x008C(s3)             # 0000008C
    beq     v1, $at, lbl_8003E1E8
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v1, $at, lbl_8003E228
    lh      t5, 0x014C(s3)             # 0000014C
lbl_8003E1E8:
    lw      a0, 0x008C(s3)             # 0000008C
lbl_8003E1EC:
    lw      t7, 0x01DC(a0)             # 000001DC
    bnel    t7, $zero, lbl_8003E21C
    lh      t3, 0x014C(s3)             # 0000014C
    lh      t8, 0x014C(s3)             # 0000014C
    lh      t1, 0x0164(s3)             # 00000164
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t9, t8, 0x0020             # t9 = 00000020
    sh      t9, 0x014C(s3)             # 0000014C
    ori     t2, t1, 0x0050             # t2 = 00000050
    b       lbl_8003EBA8
    sw      t2, 0x01DC(a0)             # 000001DC
    lh      t3, 0x014C(s3)             # 0000014C
lbl_8003E21C:
    andi    t4, t3, 0xFFDF             # t4 = 00000000
    sh      t4, 0x014C(s3)             # 0000014C
    lh      t5, 0x014C(s3)             # 0000014C
lbl_8003E228:
    lui     $at, 0x8010                # $at = 80100000
    andi    t6, t5, 0xFFEF             # t6 = 00000000
    sh      t6, 0x014C(s3)             # 0000014C
    lwc1    $f2, 0x6DCC($at)           # 80106DCC
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t7, 0x0142(s3)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t8, t7,  3
    lh      t1, 0x0144(s3)             # 00000144
    addu    t9, t9, t8
    lw      t9, -0x118C(t9)            # 800EEE74
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6DD0($at)           # 80106DD0
    sll     t2, t1,  3
    addu    t3, t9, t2
    lw      v0, 0x0004(t3)             # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6DD4($at)           # 80106DD4
    lh      t4, 0x0000(v0)             # 00000001
    addiu   v0, v0, 0x002C             # v0 = 0000002D
    mul.s   $f10, $f6, $f8
    mtc1    t4, $f8                    # $f8 = 0.00
    sub.s   $f6, $f4, $f10
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f2
    nop
    mul.s   $f8, $f10, $f0
    nop
    mul.s   $f4, $f8, $f6
    swc1    $f4, 0x0000(s3)            # 00000000
    lh      t5, -0x0028(v0)            # 00000005
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    swc1    $f8, 0x0004(s3)            # 00000004
    lh      t6, -0x0024(v0)            # 00000009
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    swc1    $f4, 0x0008(s3)            # 00000008
    lh      t7, -0x0020(v0)            # 0000000D
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    swc1    $f8, 0x000C(s3)            # 0000000C
    lh      t8, -0x001C(v0)            # 00000011
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    swc1    $f4, 0x0010(s3)            # 00000010
    lh      t1, -0x0018(v0)            # 00000015
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    swc1    $f8, 0x0014(s3)            # 00000014
    lh      t9, -0x0014(v0)            # 00000019
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    swc1    $f4, 0x0018(s3)            # 00000018
    lh      t2, -0x0010(v0)            # 0000001D
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f6, $f8, $f2
    swc1    $f6, 0x001C(s3)            # 0000001C
    lh      t3, -0x000C(v0)            # 00000021
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    swc1    $f10, 0x0020(s3)           # 00000020
    lh      t4, -0x0008(v0)            # 00000025
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    mul.s   $f4, $f6, $f2
    swc1    $f4, 0x0024(s3)            # 00000024
    lh      t5, -0x0004(v0)            # 00000029
    sh      t5, 0x0028(s3)             # 00000028
    lh      t6, 0x0000(v0)             # 0000002D
    sh      t6, 0x002A(s3)             # 0000002A
    lwc1    $f10, 0x0000(s3)           # 00000000
    addiu   a2, s3, 0x005C             # a2 = 0000005C
    sw      a2, 0x0048($sp)
    add.s   $f12, $f12, $f10
    addiu   a0, $sp, 0x0094            # a0 = FFFFFFAC
    or      a1, s0, $zero              # a1 = 00000050
    jal     func_80067A84
    swc1    $f12, 0x0058($sp)
    addiu   s2, s3, 0x0074             # s2 = 00000074
    or      a2, s2, $zero              # a2 = 00000074
    addiu   a0, $sp, 0x008C            # a0 = FFFFFFA4
    jal     func_80067A84
    or      a1, s0, $zero              # a1 = 00000050
    addiu   s1, s3, 0x00AC             # s1 = 000000AC
    or      a0, s1, $zero              # a0 = 000000AC
    jal     func_80022670
    lw      a1, 0x00A8(s3)             # 000000A8
    addiu   a0, $sp, 0x006C            # a0 = FFFFFF84
    jal     func_80022670
    lw      a1, 0x0090(s3)             # 00000090
    addiu   t0, s3, 0x0094             # t0 = 00000094
    lw      t8, 0x0000(t0)             # 00000094
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFFE8
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFBC
    sw      t8, 0x0000(a1)             # FFFFFFE8
    lw      t7, 0x0004(t0)             # 00000098
    or      a2, s1, $zero              # a2 = 000000AC
    sw      t7, 0x0004(a1)             # FFFFFFEC
    lw      t8, 0x0008(t0)             # 0000009C
    sw      t8, 0x0008(a1)             # FFFFFFF0
    lwc1    $f8, 0x00D4($sp)
    lwc1    $f6, 0x0058($sp)
    sw      t0, 0x003C($sp)
    add.s   $f4, $f8, $f6
    jal     func_80067A84
    swc1    $f4, 0x00D4($sp)
    lh      t1, 0x002A(s3)             # 0000002A
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFFE8
    sw      t1, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s3)             # 0000015E
    lw      t0, 0x003C($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v1, $zero, lbl_8003E43C
    lw      t9, 0x00A8(s3)             # 000000A8
    beq     v1, $at, lbl_8003E438
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_8003E8E0
    addiu   v0, s3, 0x002C             # v0 = 0000002C
lbl_8003E438:
    lw      t9, 0x00A8(s3)             # 000000A8
lbl_8003E43C:
    addiu   a3, s3, 0x002C             # a3 = 0000002C
    lui     $at, 0x3F80                # $at = 3F800000
    sw      t9, 0x00AC($sp)
    lw      t2, 0x0090(s3)             # 00000090
    sw      t2, 0x00B0($sp)
    lh      t3, 0x015E(s3)             # 0000015E
    lw      t5, 0x00A8(s3)             # 000000A8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x015E(s3)             # 0000015E
    sw      t5, 0x000C(a3)             # 00000038
    lwc1    $f10, 0x00A4($sp)
    lwc1    $f0, 0x0008(s3)            # 00000008
    lwc1    $f8, 0x00A4($sp)
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8003E490
    div.s   $f12, $f8, $f0
    mtc1    $at, $f12                  # $f12 = 1.00
    b       lbl_8003E490
    nop
    div.s   $f12, $f8, $f0
lbl_8003E490:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6DD8($at)          # 80106DD8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lh      t6, 0x0028(s3)             # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    sh      t6, 0x001C(a3)             # 00000048
    lh      t7, 0x001C(a3)             # 00000048
    sub.s   $f4, $f6, $f12
    lwc1    $f10, 0x00A4($sp)
    mtc1    t7, $f6                    # $f6 = 0.00
    lh      t8, 0x00A8($sp)
    mul.s   $f8, $f4, $f10
    lh      v1, 0x00AA($sp)
    lh      t9, 0x0092($sp)
    subu    t2, v1, t9
    cvt.s.w $f4, $f6
    sll     t4, t2, 16
    sra     t5, t4, 16
    div.s   $f10, $f8, $f4
    swc1    $f10, 0x00BC($sp)
    lwc1    $f6, 0x0018(s3)            # 00000018
    lwc1    $f0, 0x0014(s3)            # 00000014
    mtc1    t8, $f10                   # $f10 = 0.00
    sub.s   $f8, $f6, $f0
    cvt.s.w $f6, $f10
    mul.s   $f4, $f8, $f12
    lwc1    $f8, 0x001C(s3)            # 0000001C
    add.s   $f14, $f0, $f4
    mul.s   $f4, $f6, $f8
    nop
    mul.s   $f8, $f14, $f16
    neg.s   $f10, $f4
    trunc.w.s $f6, $f10
    add.s   $f4, $f8, $f18
    mfc1    t3, $f6
    trunc.w.s $f10, $f4
    mfc1    t7, $f10
    nop
    addu    t8, t7, t3
    sh      t8, 0x00A0($sp)
    lwc1    $f6, 0x0010(s3)            # 00000010
    lwc1    $f2, 0x000C(s3)            # 0000000C
    lh      v0, 0x002A(s3)             # 0000002A
    sub.s   $f8, $f6, $f2
    andi    t1, v0, 0x0010             # t1 = 00000000
    andi    t7, v0, 0x0020             # t7 = 00000020
    mul.s   $f4, $f8, $f12
    beq     t1, $zero, lbl_8003E5A4
    add.s   $f14, $f2, $f4
    bgez    t5, lbl_8003E584
    nop
    mul.s   $f10, $f14, $f16
    add.s   $f6, $f10, $f18
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    addu    t1, v1, t8
    b       lbl_8003E6D0
    sh      t1, 0x00A2($sp)
lbl_8003E584:
    mul.s   $f4, $f14, $f16
    add.s   $f10, $f4, $f18
    trunc.w.s $f6, $f10
    mfc1    t5, $f6
    nop
    subu    t6, v1, t5
    b       lbl_8003E6D0
    sh      t6, 0x00A2($sp)
lbl_8003E5A4:
    beq     t7, $zero, lbl_8003E610
    lh      v1, 0x00AA($sp)
    lh      v1, 0x00AA($sp)
    lh      t3, 0x0092($sp)
    subu    t8, v1, t3
    sll     t1, t8, 16
    sra     t9, t1, 16
    bgez    t9, lbl_8003E5EC
    nop
    mul.s   $f8, $f14, $f16
    addiu   t5, v1, 0x8001             # t5 = FFFF8001
    add.s   $f4, $f8, $f18
    trunc.w.s $f10, $f4
    mfc1    t8, $f10
    nop
    subu    t1, t5, t8
    b       lbl_8003E6D0
    sh      t1, 0x00A2($sp)
lbl_8003E5EC:
    mul.s   $f6, $f14, $f16
    addiu   t4, v1, 0x8001             # t4 = FFFF8001
    add.s   $f8, $f6, $f18
    trunc.w.s $f4, $f8
    mfc1    t5, $f4
    nop
    addu    t8, t4, t5
    b       lbl_8003E6D0
    sh      t8, 0x00A2($sp)
lbl_8003E610:
    lh      t1, 0x0092($sp)
    subu    v0, v1, t1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8003E630
    subu    a0, $zero, v0
    b       lbl_8003E630
    or      a0, v0, $zero              # a0 = 0000002C
lbl_8003E630:
    slti    $at, a0, 0x3FFF
    beq     $at, $zero, lbl_8003E684
    nop
    bgez    v0, lbl_8003E664
    nop
    mul.s   $f10, $f14, $f16
    add.s   $f6, $f10, $f18
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    addu    t3, v1, t7
    b       lbl_8003E6D0
    sh      t3, 0x00A2($sp)
lbl_8003E664:
    mul.s   $f4, $f14, $f16
    add.s   $f10, $f4, $f18
    trunc.w.s $f6, $f10
    mfc1    t1, $f6
    nop
    subu    t9, v1, t1
    b       lbl_8003E6D0
    sh      t9, 0x00A2($sp)
lbl_8003E684:
    bgez    v0, lbl_8003E6B0
    nop
    mul.s   $f8, $f14, $f16
    addiu   t7, v1, 0x8001             # t7 = FFFF8001
    add.s   $f4, $f8, $f18
    trunc.w.s $f10, $f4
    mfc1    t8, $f10
    nop
    subu    t1, t7, t8
    b       lbl_8003E6D0
    sh      t1, 0x00A2($sp)
lbl_8003E6B0:
    mul.s   $f6, $f14, $f16
    addiu   t6, v1, 0x8001             # t6 = FFFF8001
    add.s   $f8, $f6, $f18
    trunc.w.s $f4, $f8
    mfc1    t7, $f4
    nop
    addu    t8, t6, t7
    sh      t8, 0x00A2($sp)
lbl_8003E6D0:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6DDC($at)           # 80106DDC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f14, 0x00A4($sp)
    lh      t1, 0x00A2($sp)
    sub.s   $f8, $f6, $f0
    lwc1    $f6, 0x00BC($sp)
    lh      t9, 0x00A0($sp)
    sh      t1, 0x0080($sp)
    mul.s   $f4, $f14, $f8
    sh      t9, 0x0082($sp)
    addiu   s1, a3, 0x0010             # s1 = 0000003C
    mul.s   $f10, $f6, $f0
    or      a0, s1, $zero              # a0 = 0000003C
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFBC
    add.s   $f8, $f10, $f4
    swc1    $f8, 0x00A4($sp)
    lw      t3, 0x0000(t0)             # 00000000
    sw      t3, 0x0000(a1)             # FFFFFFE8
    lw      t2, 0x0004(t0)             # 00000004
    sw      t2, 0x0004(a1)             # FFFFFFEC
    lw      t3, 0x0008(t0)             # 00000008
    sw      t3, 0x0008(a1)             # FFFFFFF0
    lwc1    $f6, 0x00D4($sp)
    lwc1    $f10, 0x0058($sp)
    sw      a3, 0x0038($sp)
    swc1    $f14, 0x00B8($sp)
    add.s   $f4, $f6, $f10
    jal     func_800359A8
    swc1    $f4, 0x00D4($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    lwc1    $f14, 0x00B8($sp)
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   t4, $zero, 0x000E          # t4 = 0000000E
    sw      t4, 0x0084($sp)
    mul.s   $f10, $f14, $f6
    swc1    $f14, 0x00A4($sp)
    lwc1    $f8, 0x0004(s3)            # 00000004
    lwc1    $f6, 0x008C($sp)
    addiu   s2, $sp, 0x00C4            # s2 = FFFFFFDC
    or      s0, $zero, $zero           # s0 = 00000000
    or      a0, s2, $zero              # a0 = FFFFFFDC
    add.s   $f4, $f8, $f10
    or      a1, s1, $zero              # a1 = 0000003C
    addiu   a2, $sp, 0x009C            # a2 = FFFFFFB4
    sub.s   $f8, $f4, $f6
    add.s   $f10, $f8, $f6
    jal     func_800359A8
    swc1    $f10, 0x009C($sp)
    lh      t5, 0x002A(s3)             # 0000002A
    andi    t6, t5, 0x0080             # t6 = 00000000
    bnel    t6, $zero, lbl_8003E848
    lh      t7, 0x014C(s3)             # 0000014C
    lw      a0, 0x008C(s3)             # 0000008C
lbl_8003E7AC:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   t7, $sp, 0x00AC            # t7 = FFFFFFC4
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a2, s1, $zero              # a2 = 0000003C
    or      a3, s2, $zero              # a3 = FFFFFFDC
    jal     func_80050AD4
    addu    a1, a0, $at
    bne     v0, $zero, lbl_8003E7EC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 0000003C
    jal     func_80035CBC
    or      a2, s2, $zero              # a2 = FFFFFFDC
    beq     v0, $zero, lbl_8003E844
lbl_8003E7EC:
    sll     v0, s0,  1
    lui     t1, 0x800F                 # t1 = 800F0000
    lui     t3, 0x800F                 # t3 = 800F0000
    addu    t1, t1, v0
    addu    t3, t3, v0
    lh      t1, -0x0E48(t1)            # 800EF1B8
    lh      t9, 0x0080($sp)
    lh      t3, -0x0E2C(t3)            # 800EF1D4
    lh      t4, 0x0082($sp)
    addu    t2, t1, t9
    sh      t2, 0x00A2($sp)
    addu    t5, t3, t4
    sh      t5, 0x00A0($sp)
    or      a0, s2, $zero              # a0 = FFFFFFDC
    or      a1, s1, $zero              # a1 = 0000003C
    jal     func_800359A8
    addiu   a2, $sp, 0x009C            # a2 = FFFFFFB4
    lw      t6, 0x0084($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, s0, t6
    bnel    $at, $zero, lbl_8003E7AC
    lw      a0, 0x008C(s3)             # 0000008C
lbl_8003E844:
    lh      t7, 0x014C(s3)             # 0000014C
lbl_8003E848:
    lw      a1, 0x0038($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t8, t7, 0xFFF3             # t8 = 00000000
    sh      t8, 0x014C(s3)             # 0000014C
    lh      v1, 0x001C(a1)             # 0000001C
    lh      t2, 0x0092($sp)
    lh      t9, 0x00A2($sp)
    addiu   t1, v1, 0x0001             # t1 = 00000001
    multu   t1, v1
    subu    t3, t9, t2
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    mflo    a0
    sra     a0, a0,  1
    mtc1    a0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4
    div.s   $f10, $f6, $f0
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t7, 0x0090($sp)
    lh      t6, 0x00A0($sp)
    subu    t8, t6, t7
    sll     t1, t8, 16
    sra     t9, t1, 16
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    div.s   $f6, $f8, $f0
    swc1    $f6, 0x0008(a1)            # 00000008
    lwc1    $f4, 0x008C($sp)
    lwc1    $f10, 0x009C($sp)
    sub.s   $f8, $f10, $f4
    div.s   $f6, $f8, $f0
    b       lbl_8003EBA8
    swc1    $f6, 0x0000(a1)            # 00000000
lbl_8003E8E0:
    lh      v1, 0x001C(v0)             # 0000001D
    beql    v1, $zero, lbl_8003EA78
    lh      t8, 0x014C(s3)             # 0000014C
    mtc1    v1, $f8                    # $f8 = 0.00
    lwc1    $f0, 0x0000(s0)            # 00000001
    lwc1    $f10, 0x0010(v0)           # 00000011
    cvt.s.w $f6, $f8
    lwc1    $f2, 0x0004(s0)            # 00000005
    lwc1    $f12, 0x0008(s0)           # 00000009
    lui     $at, 0x3F80                # $at = 3F800000
    or      a0, s2, $zero              # a0 = FFFFFFDC
    sub.s   $f4, $f10, $f0
    or      a1, s0, $zero              # a1 = 00000001
    addiu   a2, $sp, 0x009C            # a2 = FFFFFFB4
    div.s   $f10, $f4, $f6
    add.s   $f8, $f0, $f10
    swc1    $f8, 0x0000(s0)            # 00000001
    lh      t2, 0x001C(v0)             # 0000001D
    lwc1    $f4, 0x0014(v0)            # 00000015
    mtc1    t2, $f10                   # $f10 = 0.00
    sub.s   $f6, $f4, $f2
    cvt.s.w $f8, $f10
    div.s   $f4, $f6, $f8
    add.s   $f10, $f2, $f4
    swc1    $f10, 0x0004(s0)           # 00000005
    lh      t3, 0x001C(v0)             # 0000001D
    lwc1    $f6, 0x0018(v0)            # 00000019
    mtc1    t3, $f4                    # $f4 = 0.00
    sub.s   $f8, $f6, $f12
    cvt.s.w $f10, $f4
    div.s   $f6, $f8, $f10
    add.s   $f4, $f12, $f6
    swc1    $f4, 0x0008(s0)            # 00000009
    lh      t4, 0x001C(v0)             # 0000001D
    lwc1    $f8, 0x0000(v0)            # 00000001
    lh      t9, 0x0092($sp)
    mtc1    t4, $f10                   # $f10 = 0.00
    lh      t8, 0x0090($sp)
    cvt.s.w $f6, $f10
    lwc1    $f10, 0x008C($sp)
    mul.s   $f4, $f8, $f6
    mtc1    $at, $f6                   # $f6 = 1.00
    add.s   $f8, $f4, $f10
    add.s   $f4, $f8, $f6
    swc1    $f4, 0x009C($sp)
    lh      t5, 0x001C(v0)             # 0000001D
    lwc1    $f10, 0x0004(v0)           # 00000005
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    mul.s   $f4, $f10, $f6
    trunc.w.s $f8, $f4
    mfc1    t1, $f8
    nop
    addu    t2, t9, t1
    sh      t2, 0x00A2($sp)
    lh      t3, 0x001C(v0)             # 0000001D
    lwc1    $f10, 0x0008(v0)           # 00000009
    sw      v0, 0x0038($sp)
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    mul.s   $f8, $f10, $f4
    trunc.w.s $f6, $f8
    mfc1    t7, $f6
    nop
    addu    t9, t8, t7
    jal     func_800359A8
    sh      t9, 0x00A0($sp)
    lw      t1, 0x0048($sp)
    lw      t3, 0x0000(s2)             # FFFFFFDC
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    sw      t3, 0x0000(t1)             # 00000000
    lw      t2, 0x0004(s2)             # FFFFFFE0
    sw      t2, 0x0004(t1)             # 00000004
    lw      t3, 0x0008(s2)             # FFFFFFE4
    sw      t3, 0x0008(t1)             # 00000008
    lwc1    $f14, 0x00FC(s3)           # 000000FC
    jal     func_8003569C
    lwc1    $f12, 0x0020(s3)           # 00000020
    swc1    $f0, 0x00FC(s3)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s3)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s3)             # 0000015A
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0024(s3)             # 00000024
    swc1    $f0, 0x0100(s3)            # 00000100
    lw      a2, 0x0048($sp)
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80035CBC
    or      a1, s0, $zero              # a1 = 00000001
    lw      t4, 0x0038($sp)
    lh      t5, 0x001C(t4)             # 0000001C
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_8003EA80
    sh      t6, 0x001C(t4)             # 0000001C
    lh      t8, 0x014C(s3)             # 0000014C
lbl_8003EA78:
    ori     t7, t8, 0x0410             # t7 = 00000410
    sh      t7, 0x014C(s3)             # 0000014C
lbl_8003EA80:
    lh      t9, 0x014C(s3)             # 0000014C
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s3, $zero              # a0 = 00000000
    andi    t1, t9, 0x0008             # t1 = 00000000
    beql    t1, $zero, lbl_8003EBA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_80035910
    sw      $zero, -0x0E58($at)        # 800EF1A8
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x00D8(s3)            # 000000D8
    swc1    $f10, 0x0100(s3)           # 00000100
    lwc1    $f4, 0x6DE0($at)           # 80106DE0
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x8E18             # s0 = 80118E18
    c.lt.s  $f4, $f8
    nop
    bc1tl   lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bnel    v0, $zero, lbl_8003EB90
    lh      t2, 0x014C(s3)             # 0000014C
    lw      a0, 0x0000(s0)             # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    beql    v0, $zero, lbl_8003EBA8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t2, 0x014C(s3)             # 0000014C
lbl_8003EB90:
    ori     t3, t2, 0x0004             # t3 = 00000004
    sh      t3, 0x014C(s3)             # 0000014C
    lh      t5, 0x014C(s3)             # 0000014C
    andi    t6, t5, 0xFFF7             # t6 = 00000000
    sh      t6, 0x014C(s3)             # 0000014C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003EBA8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E8           # $sp += 0xE8


func_8003EBC4:
# KEEP4()
    addiu   $sp, $sp, 0xFF18           # $sp -= 0xE8
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    lh      v0, 0x015E(s1)             # 0000015E
    lw      s0, 0x008C(s1)             # 0000008C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $zero, lbl_8003EC00
    lw      s2, 0x1C44(s0)             # 00001C44
    beq     v0, $at, lbl_8003EC00
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v0, $at, lbl_8003EC50
    addiu   v0, s1, 0x0020             # v0 = 00000020
lbl_8003EC00:
    lw      t6, 0x01DC(s0)             # 000001DC
    bnel    t6, $zero, lbl_8003EC3C
    lh      t4, 0x014C(s1)             # 0000014C
    lh      t7, 0x014C(s1)             # 0000014C
    lh      t1, 0x0164(s1)             # 00000164
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t8, t7, 0x0020             # t8 = 00000020
    sh      t8, 0x014C(s1)             # 0000014C
    lh      t9, 0x014C(s1)             # 0000014C
    ori     t2, t1, 0x0050             # t2 = 00000050
    andi    t0, t9, 0xFFF9             # t0 = 00000000
    sh      t0, 0x014C(s1)             # 0000014C
    b       lbl_8003F9C4
    sw      t2, 0x01DC(s0)             # 000001DC
    lh      t4, 0x014C(s1)             # 0000014C
lbl_8003EC3C:
    lh      t3, 0x012C(s1)             # 0000012C
    andi    t5, t4, 0xFFDF             # t5 = 00000000
    sh      t5, 0x014C(s1)             # 0000014C
    sh      t3, 0x0034(s1)             # 00000034
    addiu   v0, s1, 0x0020             # v0 = 00000020
lbl_8003EC50:
    addiu   s0, s1, 0x012C             # s0 = 0000012C
    lh      t7, 0x0000(s0)             # 0000012C
    lh      t6, 0x0014(v0)             # 00000034
    beql    t6, t7, lbl_8003ECA0
    lw      a0, 0x0090(s1)             # 00000090
    lh      t9, 0x014C(s1)             # 0000014C
    lh      t3, 0x0164(s1)             # 00000164
    lw      t5, 0x008C(s1)             # 0000008C
    ori     t0, t9, 0x0020             # t0 = 00000020
    sh      t0, 0x014C(s1)             # 0000014C
    lh      t1, 0x014C(s1)             # 0000014C
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t8, 0x015E(s1)             # 0000015E
    andi    t2, t1, 0xFFF9             # t2 = 00000000
    sh      t2, 0x014C(s1)             # 0000014C
    ori     t4, t3, 0x0050             # t4 = 00000050
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_8003F9C4
    sw      t4, 0x01DC(t5)             # 000001DC
    lw      a0, 0x0090(s1)             # 00000090
lbl_8003ECA0:
    jal     func_80021600
    sw      v0, 0x003C($sp)
    swc1    $f0, 0x0090($sp)
    lh      t6, 0x014C(s1)             # 0000014C
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f14                  # $f14 = -0.50
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    sh      t7, 0x014C(s1)             # 0000014C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6DE4($at)          # 80106DE4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f8                   # $f8 = 68.00
    lh      t8, 0x0142(s1)             # 00000142
    lui     t0, 0x800F                 # t0 = 800F0000
    div.s   $f10, $f8, $f0
    sll     t9, t8,  3
    lh      t1, 0x0144(s1)             # 00000144
    addu    t0, t0, t9
    lw      t0, -0x118C(t0)            # 800EEE74
    sll     t2, t1,  3
    add.s   $f6, $f4, $f14
    addu    t3, t0, t2
    lw      v0, 0x0004(t3)             # 00000004
    lh      t4, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0020             # v0 = 00000020
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    mul.s   $f18, $f10, $f14
    nop
    mul.s   $f10, $f8, $f16
    sub.s   $f12, $f6, $f18
    mul.s   $f6, $f10, $f0
    nop
    mul.s   $f18, $f6, $f12
    swc1    $f18, 0x0000(s1)           # 00000000
    lh      t5, -0x001C(v0)            # 00000004
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f16
    nop
    mul.s   $f6, $f10, $f0
    nop
    mul.s   $f18, $f6, $f12
    swc1    $f18, 0x0004(s1)           # 00000004
    lh      t6, -0x0018(v0)            # 00000008
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    swc1    $f8, 0x0008(s1)            # 00000008
    lh      t7, -0x0014(v0)            # 0000000C
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    swc1    $f6, 0x000C(s1)            # 0000000C
    lh      t8, -0x0010(v0)            # 00000010
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0010(s1)            # 00000010
    lh      t9, -0x000C(v0)            # 00000014
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0018(s1)           # 00000018
    lh      t1, -0x0008(v0)            # 00000018
    sh      t1, 0x001C(s1)             # 0000001C
    lh      t0, -0x0004(v0)            # 0000001C
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f18, $f6
    mul.s   $f4, $f18, $f16
    swc1    $f4, 0x0014(s1)            # 00000014
    lh      t2, 0x0000(v0)             # 00000020
    sh      t2, 0x001E(s1)             # 0000001E
    lh      v1, 0x0000(s0)             # 0000012C
    slti    $at, v1, 0x0052
    bne     $at, $zero, lbl_8003EE04
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    beq     v1, $at, lbl_8003F064
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    beq     v1, $at, lbl_8003F090
    nop
    b       lbl_8003F198
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_8003EE04:
    slti    $at, v1, 0x000D
    bne     $at, $zero, lbl_8003EE20
    addiu   $at, $zero, 0x0051         # $at = 00000051
    beq     v1, $at, lbl_8003F0E8
    addiu   t4, $zero, 0x2280          # t4 = 00002280
    b       lbl_8003F198
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_8003EE20:
    sltiu   $at, t3, 0x000C
    beq     $at, $zero, lbl_8003F194
    sll     t3, t3,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t3
    lw      t3, 0x6DE8($at)            # 80106DE8
    jr      t3
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6E18($at)           # 80106E18
    add.s   $f18, $f0, $f0
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f10, $f0, $f8
    mtc1    $at, $f8                   # $f8 = 10.00
    nop
    swc1    $f8, 0x0008(s1)            # 00000008
    mul.s   $f6, $f10, $f12
    nop
    mul.s   $f4, $f18, $f12
    swc1    $f6, 0x0000(s1)            # 00000000
    b       lbl_8003F194
    swc1    $f4, 0x0004(s1)            # 00000004
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f10                  # $f10 = -20.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    swc1    $f10, 0x0008(s1)           # 00000008
    b       lbl_8003F194
    swc1    $f6, 0x0018(s1)            # 00000018
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6E1C($at)          # 80106E1C
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f4, $f0, $f18
    swc1    $f10, 0x0008(s1)           # 00000008
    mul.s   $f8, $f4, $f12
    b       lbl_8003F194
    swc1    $f8, 0x0000(s1)            # 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6E20($at)           # 80106E20
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f18, $f0, $f6
    nop
    mul.s   $f4, $f18, $f12
    swc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f8, 0x6E24($at)           # 80106E24
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    swc1    $f18, 0x0008(s1)           # 00000008
    swc1    $f4, 0x0018(s1)            # 00000018
    mul.s   $f6, $f10, $f12
    b       lbl_8003F194
    swc1    $f6, 0x0004(s1)            # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6E28($at)           # 80106E28
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    mul.s   $f10, $f0, $f8
    lui     $at, 0xC1A0                # $at = C1A00000
    addiu   t4, $zero, 0x2540          # t4 = 00002540
    sh      t4, 0x001C(s1)             # 0000001C
    mul.s   $f6, $f10, $f12
    mtc1    $at, $f10                  # $f10 = -20.00
    mul.s   $f4, $f0, $f18
    swc1    $f10, 0x0008(s1)           # 00000008
    swc1    $f6, 0x0000(s1)            # 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f8, $f4, $f12
    swc1    $f6, 0x000C(s1)            # 0000000C
    b       lbl_8003F194
    swc1    $f8, 0x0004(s1)            # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6E2C($at)          # 80106E2C
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    mul.s   $f4, $f0, $f18
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    addiu   t5, $zero, 0x2002          # t5 = 00002002
    sh      t5, 0x001C(s1)             # 0000001C
    swc1    $f10, 0x0008(s1)           # 00000008
    swc1    $f6, 0x000C(s1)            # 0000000C
    mul.s   $f8, $f4, $f12
    b       lbl_8003F194
    swc1    $f8, 0x0000(s1)            # 00000000
    mul.s   $f18, $f0, $f14
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f10                  # $f10 = -15.00
    mul.s   $f16, $f0, $f16
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f8                   # $f8 = 175.00
    mul.s   $f18, $f18, $f12
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f6                   # $f6 = 70.00
    addiu   t6, $zero, 0x2202          # t6 = 00002202
    mul.s   $f16, $f16, $f12
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    swc1    $f10, 0x0008(s1)           # 00000008
    swc1    $f18, 0x0000(s1)           # 00000000
    swc1    $f8, 0x000C(s1)            # 0000000C
    swc1    $f6, 0x0018(s1)            # 00000018
    sh      t6, 0x001C(s1)             # 0000001C
    swc1    $f16, 0x0004(s1)           # 00000004
    b       lbl_8003F194
    sh      t7, 0x001E(s1)             # 0000001E
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6E30($at)          # 80106E30
    lui     $at, 0x8010                # $at = 80100000
    addiu   t1, $zero, 0x3212          # t1 = 00003212
    mul.s   $f6, $f0, $f10
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    mul.s   $f18, $f6, $f12
    swc1    $f18, 0x0000(s1)           # 00000000
    lwc1    $f4, 0x6E34($at)           # 80106E34
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    mul.s   $f8, $f0, $f4
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f18                  # $f18 = 120.00
    swc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x41A0                # $at = 41A00000
    swc1    $f18, 0x000C(s1)           # 0000000C
    mul.s   $f10, $f8, $f12
    swc1    $f10, 0x0004(s1)           # 00000004
    lw      t8, 0x066C(s2)             # 0000066C
    sll     t9, t8,  4
    bgezl   t9, lbl_8003F044
    mtc1    $at, $f2                   # $f2 = 20.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    b       lbl_8003F04C
    swc1    $f4, 0x0010(s1)            # 00000010
    mtc1    $at, $f2                   # $f2 = 20.00
lbl_8003F044:
    nop
    swc1    $f2, 0x0010(s1)            # 00000010
lbl_8003F04C:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    sh      t1, 0x001C(s1)             # 0000001C
    sh      t0, 0x001E(s1)             # 0000001E
    b       lbl_8003F194
    swc1    $f8, 0x0018(s1)            # 00000018
lbl_8003F064:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6E38($at)          # 80106E38
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    mul.s   $f6, $f0, $f10
    addiu   t2, $zero, 0x2F02          # t2 = 00002F02
    sh      t2, 0x001C(s1)             # 0000001C
    swc1    $f4, 0x0018(s1)            # 00000018
    mul.s   $f18, $f6, $f12
    b       lbl_8003F194
    swc1    $f18, 0x0000(s1)           # 00000000
lbl_8003F090:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6E3C($at)          # 80106E3C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    mul.s   $f18, $f0, $f18
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f14                  # $f14 = -3.00
    mul.s   $f16, $f0, $f16
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x425C                # $at = 425C0000
    mul.s   $f18, $f18, $f12
    mtc1    $at, $f8                   # $f8 = 55.00
    addiu   t3, $zero, 0x2F08          # t3 = 00002F08
    mul.s   $f16, $f16, $f12
    swc1    $f14, 0x0008(s1)           # 00000008
    swc1    $f10, 0x000C(s1)           # 0000000C
    swc1    $f8, 0x0018(s1)            # 00000018
    swc1    $f18, 0x0000(s1)           # 00000000
    sh      t3, 0x001C(s1)             # 0000001C
    b       lbl_8003F194
    swc1    $f16, 0x0004(s1)           # 00000004
lbl_8003F0E8:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x6E40($at)          # 80106E40
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f14                  # $f14 = 1.50
    mul.s   $f16, $f0, $f16
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    mul.s   $f14, $f0, $f14
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    mul.s   $f16, $f16, $f12
    swc1    $f10, 0x0008(s1)           # 00000008
    swc1    $f8, 0x0018(s1)            # 00000018
    mul.s   $f14, $f14, $f12
    swc1    $f18, 0x000C(s1)           # 0000000C
    swc1    $f18, 0x0010(s1)           # 00000010
    sh      t4, 0x001C(s1)             # 0000001C
    swc1    $f16, 0x0000(s1)           # 00000000
    sh      t5, 0x001E(s1)             # 0000001E
    b       lbl_8003F194
    swc1    $f14, 0x0004(s1)           # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6E44($at)           # 80106E44
    lui     $at, 0x8010                # $at = 80100000
    addiu   t6, $zero, 0x2522          # t6 = 00002522
    mul.s   $f18, $f0, $f6
    nop
    mul.s   $f4, $f18, $f12
    swc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f8, 0x6E48($at)           # 80106E48
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f18                  # $f18 = 130.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sh      t6, 0x001C(s1)             # 0000001C
    swc1    $f18, 0x000C(s1)           # 0000000C
    swc1    $f4, 0x0010(s1)            # 00000010
    mul.s   $f6, $f10, $f12
    swc1    $f6, 0x0004(s1)            # 00000004
lbl_8003F194:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_8003F198:
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E10($at)           # 800EF1F0
    lh      t8, 0x001C(s1)             # 0000001C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a1, s1, 0x0050             # a1 = 00000050
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    sw      a2, 0x004C($sp)
    sw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x00B8            # a0 = FFFFFFD0
    jal     func_80067A84
    sw      t8, -0x0E58($at)           # 800EF1A8
    addiu   a2, s1, 0x0074             # a2 = 00000074
    sw      a2, 0x0044($sp)
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC8
    jal     func_80067A84
    lw      a1, 0x0048($sp)
    addiu   v1, s1, 0x0094             # v1 = 00000094
    lw      t1, 0x0000(v1)             # 00000094
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   s2, s2, 0x8E50             # s2 = 80118E50
    sw      t1, 0x0000(s2)             # 80118E50
    lw      t9, 0x0004(v1)             # 00000098
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, 0x0090($sp)
    sw      t9, 0x0004(s2)             # 80118E54
    lw      t1, 0x0008(v1)             # 0000009C
    or      a3, s2, $zero              # a3 = 80118E50
    addiu   a1, $sp, 0x00C8            # a1 = FFFFFFE0
    sw      t1, 0x0008(s2)             # 80118E58
    lwc1    $f8, -0x71AC($at)          # 80118E54
    addiu   a2, $sp, 0x0084            # a2 = FFFFFF9C
    add.s   $f6, $f8, $f10
    swc1    $f6, -0x71AC($at)          # 80118E54
    lw      a0, 0x008C(s1)             # 0000008C
    sw      v1, 0x0040($sp)
    jal     func_8002F7B0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f4, -0x71AC($at)          # 80118E54
    lwc1    $f18, 0x0000(s1)           # 00000000
    add.s   $f2, $f18, $f4
    c.lt.s  $f2, $f0
    nop
    bc1f    lbl_8003F260
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f10, $f0, $f8
    b       lbl_8003F268
    swc1    $f10, -0x71AC($at)         # 80118E54
lbl_8003F260:
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f2, -0x71AC($at)          # 80118E54
lbl_8003F268:
    lh      v1, 0x015E(s1)             # 0000015E
    beq     v1, $zero, lbl_8003F288
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_8003F74C
    lw      t7, 0x0040($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_8003F760
    nop
lbl_8003F288:
    lw      t0, 0x0090(s1)             # 00000090
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x00A4($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800358D0
    sw      t0, 0x00D4($sp)
    lh      t3, 0x014C(s1)             # 0000014C
    lh      t5, 0x001E(s1)             # 0000001E
    lui     $at, 0x8010                # $at = 80100000
    andi    t4, t3, 0xFFF9             # t4 = 00000000
    sh      t4, 0x014C(s1)             # 0000014C
    lw      t6, 0x003C($sp)
    sh      t5, 0x0010(t6)             # 00000010
    lw      t7, 0x0040($sp)
    lwc1    $f18, 0x00F4(s1)           # 000000F4
    lw      t8, 0x003C($sp)
    lwc1    $f6, 0x0004(t7)            # 00000004
    sub.s   $f4, $f6, $f18
    swc1    $f4, 0x0008(t8)            # 00000008
    lh      v0, 0x001C(s1)             # 0000001C
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_8003F380
    andi    t7, v0, 0x0004             # t7 = 00000000
    lwc1    $f0, 0x6E4C($at)           # 80106E4C
    lwc1    $f8, 0x0008(s1)            # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    mul.s   $f10, $f8, $f0
    lw      t2, 0x0040($sp)
    lh      t3, 0x00B6($sp)
    add.s   $f6, $f10, $f2
    trunc.w.s $f18, $f6
    mfc1    t0, $f18
    nop
    sh      t0, 0x00AA($sp)
    lh      v0, 0x000E(t2)             # 0000000E
    addiu   v0, v0, 0x8001             # v0 = FFFF8001
    sll     v0, v0, 16
    sra     v0, v0, 16
    subu    t4, v0, t3
    sll     t5, t4, 16
    sra     t6, t5, 16
    blezl   t6, lbl_8003F360
    lwc1    $f18, 0x000C(s1)           # 0000000C
    lwc1    $f4, 0x000C(s1)            # 0000000C
    mul.s   $f8, $f4, $f0
    add.s   $f10, $f8, $f2
    trunc.w.s $f6, $f10
    mfc1    t1, $f6
    nop
    addu    t0, v0, t1
    b       lbl_8003F5C8
    sh      t0, 0x00A8($sp)
    lwc1    $f18, 0x000C(s1)           # 0000000C
lbl_8003F360:
    mul.s   $f4, $f18, $f0
    add.s   $f8, $f4, $f2
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    subu    t6, v0, t5
    b       lbl_8003F5C8
    sh      t6, 0x00A8($sp)
lbl_8003F380:
    beq     t7, $zero, lbl_8003F3D0
    andi    t2, v0, 0x0008             # t2 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E50($at)           # 80106E50
    lwc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    mul.s   $f18, $f6, $f0
    add.s   $f4, $f18, $f2
    trunc.w.s $f8, $f4
    mfc1    t9, $f8
    nop
    sh      t9, 0x00AA($sp)
    lwc1    $f10, 0x000C(s1)           # 0000000C
    mul.s   $f6, $f10, $f0
    add.s   $f18, $f6, $f2
    trunc.w.s $f4, $f18
    mfc1    t0, $f4
    b       lbl_8003F5C8
    sh      t0, 0x00A8($sp)
lbl_8003F3D0:
    beq     t2, $zero, lbl_8003F4A4
    andi    t6, v0, 0x0080             # t6 = 00000000
    lw      a1, 0x00A8(s1)             # 000000A8
    beq     a1, $zero, lbl_8003F4A4
    nop
    jal     func_800226D8
    addiu   a0, $sp, 0x0068            # a0 = FFFFFF80
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E54($at)           # 80106E54
    lwc1    $f8, 0x0008(s1)            # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    mul.s   $f10, $f8, $f0
    lh      v1, 0x0076($sp)
    lh      t9, 0x00B6($sp)
    lh      t7, 0x0074($sp)
    addiu   v1, v1, 0x8001             # v1 = FFFF8001
    sll     v1, v1, 16
    sra     v1, v1, 16
    add.s   $f6, $f10, $f2
    subu    t1, v1, t9
    sll     t0, t1, 16
    sra     t2, t0, 16
    trunc.w.s $f18, $f6
    mfc1    t6, $f18
    nop
    subu    t8, t6, t7
    blez    t2, lbl_8003F468
    sh      t8, 0x00AA($sp)
    lwc1    $f4, 0x000C(s1)            # 0000000C
    mul.s   $f8, $f4, $f0
    add.s   $f10, $f8, $f2
    trunc.w.s $f6, $f10
    mfc1    t6, $f6
    nop
    addu    t7, v1, t6
    b       lbl_8003F488
    sh      t7, 0x00A8($sp)
lbl_8003F468:
    lwc1    $f18, 0x000C(s1)           # 0000000C
    mul.s   $f4, $f18, $f0
    add.s   $f8, $f4, $f2
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    nop
    subu    t2, v1, t0
    sh      t2, 0x00A8($sp)
lbl_8003F488:
    lh      t4, 0x00A4($sp)
    lw      t3, 0x00A8(s1)             # 000000A8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x00A4($sp)
    sw      t3, 0x00D8($sp)
    b       lbl_8003F5CC
    lh      t7, 0x00AA($sp)
lbl_8003F4A4:
    beq     t6, $zero, lbl_8003F580
    andi    t1, v0, 0x0040             # t1 = 00000000
    lw      a1, 0x00A8(s1)             # 000000A8
    addiu   s0, $sp, 0x0054            # s0 = FFFFFF6C
    beq     a1, $zero, lbl_8003F580
    nop
    jal     func_800226A4
    or      a0, s0, $zero              # a0 = FFFFFF6C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E58($at)           # 80106E58
    lwc1    $f6, 0x0008(s1)            # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    mul.s   $f18, $f6, $f0
    or      a0, s0, $zero              # a0 = FFFFFF6C
    lw      a1, 0x0040($sp)
    add.s   $f4, $f18, $f2
    trunc.w.s $f8, $f4
    mfc1    t8, $f8
    jal     func_80036808
    sh      t8, 0x00AA($sp)
    lh      t9, 0x00B6($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E5C($at)           # 80106E5C
    subu    t1, v0, t9
    lui     $at, 0x3F00                # $at = 3F000000
    sll     t0, t1, 16
    mtc1    $at, $f2                   # $f2 = 0.50
    sra     t2, t0, 16
    blezl   t2, lbl_8003F548
    lwc1    $f8, 0x000C(s1)            # 0000000C
    lwc1    $f10, 0x000C(s1)           # 0000000C
    mul.s   $f6, $f10, $f0
    add.s   $f18, $f6, $f2
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    nop
    addu    t9, v0, t8
    b       lbl_8003F564
    sh      t9, 0x00A8($sp)
    lwc1    $f8, 0x000C(s1)            # 0000000C
lbl_8003F548:
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f10, $f2
    trunc.w.s $f18, $f6
    mfc1    t6, $f18
    nop
    subu    t7, v0, t6
    sh      t7, 0x00A8($sp)
lbl_8003F564:
    lh      t8, 0x00A4($sp)
    lw      t4, 0x00A8(s1)             # 000000A8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x00A4($sp)
    sw      t4, 0x00D8($sp)
    b       lbl_8003F5CC
    lh      t7, 0x00AA($sp)
lbl_8003F580:
    beq     t1, $zero, lbl_8003F5BC
    lh      t0, 0x00B4($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E60($at)           # 80106E60
    lwc1    $f4, 0x0008(s1)            # 00000008
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    mul.s   $f8, $f4, $f0
    lh      t5, 0x00B6($sp)
    sh      t5, 0x00A8($sp)
    add.s   $f10, $f8, $f2
    trunc.w.s $f6, $f10
    mfc1    t3, $f6
    b       lbl_8003F5C8
    sh      t3, 0x00AA($sp)
lbl_8003F5BC:
    lh      t6, 0x00B6($sp)
    sh      t0, 0x00AA($sp)
    sh      t6, 0x00A8($sp)
lbl_8003F5C8:
    lh      t7, 0x00AA($sp)
lbl_8003F5CC:
    lh      t4, 0x00A8($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    sh      t7, 0x00C4($sp)
    sh      t4, 0x00C6($sp)
    lwc1    $f18, 0x0004(s1)           # 00000004
    addiu   a0, a0, 0x8D90             # a0 = 80118D90
    or      a1, s2, $zero              # a1 = 80118E50
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFD8
    jal     func_800359A8
    swc1    $f18, 0x00C0($sp)
    lh      t8, 0x001C(s1)             # 0000001C
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    andi    t9, t8, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_8003F6CC
    lw      v0, 0x003C($sp)
    sh      t1, 0x008A($sp)
    sw      $zero, 0x0084($sp)
lbl_8003F610:
    lw      s0, 0x008C(s1)             # 0000008C
    lh      t3, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   t2, $sp, 0x00D4            # t2 = FFFFFFEC
    sw      t2, 0x0010($sp)
    addiu   a3, a3, 0x8D90             # a3 = 80118D90
    or      a2, s2, $zero              # a2 = 80118E50
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = FFFFFF6C
    jal     func_80050AD4
    sw      t3, 0x0014($sp)
    bne     v0, $zero, lbl_8003F664
    or      a0, s1, $zero              # a0 = 00000000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8D90             # a2 = 80118D90
    jal     func_80035CBC
    or      a1, s2, $zero              # a1 = 80118E50
    beql    v0, $zero, lbl_8003F6CC
    lw      v0, 0x003C($sp)
lbl_8003F664:
    lw      s0, 0x0084($sp)
    lui     t5, 0x800F                 # t5 = 800F0000
    lui     t7, 0x800F                 # t7 = 800F0000
    sll     v0, s0,  1
    addu    t5, t5, v0
    addu    t7, t7, v0
    lh      t5, -0x0E48(t5)            # 800EF1B8
    lh      t0, 0x00A8($sp)
    lh      t7, -0x0E2C(t7)            # 800EF1D4
    lh      t4, 0x00AA($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addu    t6, t5, t0
    addu    t8, t7, t4
    sh      t6, 0x00C6($sp)
    sh      t8, 0x00C4($sp)
    addiu   a0, a0, 0x8D90             # a0 = 80118D90
    or      a1, s2, $zero              # a1 = 80118E50
    jal     func_800359A8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFD8
    lw      s0, 0x0084($sp)
    lh      t9, 0x008A($sp)
    addiu   s0, s0, 0x0001             # s0 = FFFFFF6D
    slt     $at, s0, t9
    bne     $at, $zero, lbl_8003F610
    sw      s0, 0x0084($sp)
    lw      v0, 0x003C($sp)
lbl_8003F6CC:
    lh      t2, 0x00C4($sp)
    lh      t3, 0x00B4($sp)
    lh      t1, 0x0010(v0)             # 00000010
    subu    t5, t2, t3
    sll     t0, t5, 16
    sra     t6, t0, 16
    mtc1    t6, $f8                    # $f8 = 0.00
    mtc1    t1, $f4                    # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cvt.s.w $f10, $f8
    cvt.s.w $f0, $f4
    div.s   $f6, $f10, $f0
    swc1    $f6, 0x0004(v0)            # 00000004
    lh      t4, 0x00B6($sp)
    lh      t7, 0x00C6($sp)
    subu    t8, t7, t4
    sll     t9, t8, 16
    sra     t1, t9, 16
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    div.s   $f8, $f4, $f0
    swc1    $f8, 0x0000(v0)            # 00000000
    lh      t2, 0x00B6($sp)
    sh      t2, 0x000C(v0)             # 0000000C
    lh      t3, 0x00B4($sp)
    sh      t3, 0x000E(v0)             # 0000000E
    lh      t5, 0x015E(s1)             # 0000015E
    addiu   t0, t5, 0x0001             # t0 = 00000001
    sh      t0, 0x015E(s1)             # 0000015E
    b       lbl_8003F760
    sh      t6, 0x0012(v0)             # 00000012
lbl_8003F74C:
    lwc1    $f10, 0x0004(t7)           # 00000004
    lwc1    $f6, 0x00F4(s1)            # 000000F4
    lw      t4, 0x003C($sp)
    sub.s   $f18, $f10, $f6
    swc1    $f18, 0x0008(t4)           # 00000008
lbl_8003F760:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f4                   # $f4 = 0.75
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f0, 0x00CC(s1)            # 000000CC
    swc1    $f0, 0x00D0(s1)            # 000000D0
    swc1    $f4, 0x0100(s1)            # 00000100
    lwc1    $f8, 0x6E64($at)           # 80106E64
    mfc1    a2, $f2
    mfc1    a3, $f2
    lw      a1, 0x0048($sp)
    or      a0, s2, $zero              # a0 = 80118E50
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    lwc1    $f0, 0x0010(s1)            # 00000010
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a0, 0x0048($sp)
    c.eq.s  $f10, $f0
    or      a1, a0, $zero              # a1 = 00000000
    bc1tl   lbl_8003F7E0
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      t8, 0x0040($sp)
    swc1    $f0, 0x00C0($sp)
    sh      $zero, 0x00C4($sp)
    lh      t9, 0x000E(t8)             # 0000000E
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFD8
    jal     func_800359A8
    sh      t9, 0x00C6($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8003F7E0:
    lwc1    $f12, 0x0004(s1)           # 00000004
    lwc1    $f14, 0x00DC(s1)           # 000000DC
    lui     a2, 0x3E80                 # a2 = 3E800000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_8003569C
    swc1    $f6, 0x0100(s1)            # 00000100
    lw      v1, 0x003C($sp)
    swc1    $f0, 0x00DC(s1)            # 000000DC
    swc1    $f0, 0x00C0($sp)
    lh      t1, 0x0010(v1)             # 00000010
    beql    t1, $zero, lbl_8003F860
    lh      t4, 0x001C(s1)             # 0000001C
    lh      t2, 0x014C(s1)             # 0000014C
    ori     t3, t2, 0x0020             # t3 = 00000020
    sh      t3, 0x014C(s1)             # 0000014C
    lwc1    $f18, 0x0000(v1)           # 00000000
    lwc1    $f8, 0x0004(v1)            # 00000004
    lh      t5, 0x000C(v1)             # 0000000C
    trunc.w.s $f4, $f18
    lh      t9, 0x000E(v1)             # 0000000E
    lh      t7, 0x0010(v1)             # 00000010
    trunc.w.s $f10, $f8
    mfc1    t4, $f4
    mfc1    t0, $f10
    addu    t8, t5, t4
    addiu   t5, t7, 0xFFFF             # t5 = FFFFFFFF
    addu    t6, t9, t0
    sh      t8, 0x000C(v1)             # 0000000C
    sh      t6, 0x000E(v1)             # 0000000E
    b       lbl_8003F924
    sh      t5, 0x0010(v1)             # 00000010
    lh      t4, 0x001C(s1)             # 0000001C
lbl_8003F860:
    andi    t8, t4, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_8003F8A8
    lh      t5, 0x014C(s1)             # 0000014C
    lh      t1, 0x014C(s1)             # 0000014C
    lh      v0, 0x0160(s1)             # 00000160
    ori     t2, t1, 0x0410             # t2 = 00000410
    sh      t2, 0x014C(s1)             # 0000014C
    lh      t3, 0x014C(s1)             # 0000014C
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    ori     t9, t3, 0x0006             # t9 = 00000026
    sh      t9, 0x014C(s1)             # 0000014C
    lh      t0, 0x014C(s1)             # 0000014C
    andi    t6, t0, 0xFFF7             # t6 = 00000000
    blez    v0, lbl_8003F924
    sh      t6, 0x014C(s1)             # 0000014C
    b       lbl_8003F924
    sh      t7, 0x0160(s1)             # 00000160
    lh      t5, 0x014C(s1)             # 0000014C
lbl_8003F8A8:
    lui     $at, 0x800F                # $at = 800F0000
    ori     t4, t5, 0x0410             # t4 = FFFFFFFF
    sh      t4, 0x014C(s1)             # 0000014C
    lh      t8, 0x014C(s1)             # 0000014C
    andi    t1, t8, 0x0008             # t1 = 00000000
    bne     t1, $zero, lbl_8003F8D4
    nop
    lh      t2, 0x001C(s1)             # 0000001C
    andi    t3, t2, 0x0080             # t3 = 00000000
    beql    t3, $zero, lbl_8003F928
    lh      a0, 0x000C(v1)             # 0000000C
lbl_8003F8D4:
    sw      $zero, -0x0E58($at)        # 800EF1A8
    lh      t9, 0x014C(s1)             # 0000014C
    lh      a1, 0x0166(s1)             # 00000166
    or      a0, s1, $zero              # a0 = 00000000
    ori     t0, t9, 0x0006             # t0 = 00000026
    sh      t0, 0x014C(s1)             # 0000014C
    lh      t6, 0x014C(s1)             # 0000014C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t7, t6, 0xFFF7             # t7 = 00000000
    bgez    a1, lbl_8003F910
    sh      t7, 0x014C(s1)             # 0000014C
    jal     func_800493C8
    lh      a1, 0x0154(s1)             # 00000154
    b       lbl_8003F924
    lw      v1, 0x003C($sp)
lbl_8003F910:
    jal     func_800495E8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    sh      t5, 0x0166(s1)             # 00000166
    lw      v1, 0x003C($sp)
lbl_8003F924:
    lh      a0, 0x000C(v1)             # 0000000C
lbl_8003F928:
    lh      a1, 0x00B6($sp)
    lw      a2, 0x0014(s1)             # 00000014
    jal     func_80035724
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      t4, 0x003C($sp)
    sh      v0, 0x00C6($sp)
    lw      a2, 0x0014(s1)             # 00000014
    lh      a1, 0x00B4($sp)
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_80035724
    lh      a0, 0x000E(t4)             # 0000000E
    sh      v0, 0x00C4($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x0048($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFD8
    lw      t8, 0x0044($sp)
    lw      a2, 0x004C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      t2, 0x0000(t8)             # 00000000
    sw      t2, 0x0000(a2)             # 00000000
    lw      t1, 0x0004(t8)             # 00000004
    sw      t1, 0x0004(a2)             # 00000004
    lw      t2, 0x0008(t8)             # 00000008
    sw      t2, 0x0008(a2)             # 00000008
    jal     func_80035CBC
    lw      a1, 0x0048($sp)
    lwc1    $f12, 0x0018(s1)           # 00000018
    lwc1    $f14, 0x00FC(s1)           # 000000FC
    lw      a2, 0x00D4(s1)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s1)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s1)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s1)             # 0000015A
lbl_8003F9C4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E8           # $sp += 0xE8


func_8003F9DC:
# KEEP0()
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x014C(s0)             # 0000014C
    lui     $at, 0x8010                # $at = 80100000
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    sh      t7, 0x014C(s0)             # 0000014C
    lwc1    $f0, 0x6E68($at)           # 80106E68
    lh      t8, 0x0142(s0)             # 00000142
    lui     t1, 0x800F                 # t1 = 800F0000
    lh      t2, 0x0144(s0)             # 00000144
    sll     t9, t8,  3
    addu    t1, t1, t9
    lw      t1, -0x118C(t1)            # 800EEE74
    sll     t3, t2,  3
    addu    t4, t1, t3
    lw      v0, 0x0004(t4)             # 00000004
    lh      t5, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0000(s0)            # 00000000
    lh      t6, -0x0008(v0)            # 00000004
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0004(s0)           # 00000004
    lh      t7, -0x0004(v0)            # 00000008
    sh      t7, 0x0008(s0)             # 00000008
    lh      t8, 0x0000(v0)             # 0000000C
    sh      t8, 0x000A(s0)             # 0000000A
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0074             # a0 = 00000074
    sw      a0, 0x002C($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x0044($sp)
    lw      a0, 0x002C($sp)
    lw      v1, 0x0044($sp)
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    lw      t2, 0x0000(a0)             # 00000000
    addiu   t1, $sp, 0x003C            # t1 = FFFFFFCC
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sw      t2, 0x0000(a2)             # 0000005C
    lw      t9, 0x0004(a0)             # 00000004
    sw      t9, 0x0004(a2)             # 00000060
    lw      t2, 0x0008(a0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    sw      t2, 0x0008(a2)             # 00000064
    lwl     t4, 0x0006(v1)             # 00000006
    lwr     t4, 0x0009(v1)             # 00000009
    sw      t4, 0x0000(t1)             # FFFFFFCC
    lhu     t4, 0x000A(v1)             # 0000000A
    sh      t4, 0x0004(t1)             # FFFFFFD0
    lh      a3, 0x000C(v1)             # 0000000C
    bnel    a3, $at, lbl_8003FADC
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    lw      a1, 0x00A8(s0)             # 000000A8
lbl_8003FADC:
    beql    a1, $zero, lbl_8003FAF4
    sw      $zero, 0x00A8(s0)          # 000000A8
    lw      t5, 0x0130(a1)             # 00000130
    bnel    t5, $zero, lbl_8003FB08
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    sw      $zero, 0x00A8(s0)          # 000000A8
lbl_8003FAF4:
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_8003FC68
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
lbl_8003FB08:
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    jal     func_80022670
    sh      a3, 0x003A($sp)
    addiu   a2, s0, 0x0050             # a2 = 00000050
    sw      a2, 0x002C($sp)
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    jal     func_80067A84
    lw      a1, 0x0030($sp)
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    lw      a1, 0x0030($sp)
    jal     func_80067A84
    lw      a2, 0x0028($sp)
    lh      t6, 0x000A(s0)             # 0000000A
    lui     $at, 0x800F                # $at = 800F0000
    lh      a3, 0x003A($sp)
    sw      t6, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    bnel    v1, $zero, lbl_8003FBA8
    addiu   t0, s0, 0x000C             # t0 = 0000000C
    mtc1    a3, $f4                    # $f4 = 0.00
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    cvt.s.w $f6, $f4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6E6C($at)           # 80106E6C
    mtc1    $zero, $f16                # $f16 = 0.00
    lh      t8, 0x0008(s0)             # 00000008
    sh      $zero, 0x015A(s0)          # 0000015A
    mul.s   $f10, $f6, $f8
    addiu   t0, s0, 0x000C             # t0 = 0000000C
    swc1    $f16, 0x0100(s0)           # 00000100
    swc1    $f10, 0x00FC(s0)           # 000000FC
    sh      t8, 0x0004(t0)             # 00000010
    lwc1    $f18, 0x0000(s0)           # 00000000
    lwc1    $f0, 0x00FC(s0)            # 000000FC
    mul.s   $f4, $f0, $f18
    sub.s   $f6, $f0, $f4
    swc1    $f6, 0x0000(t0)            # 0000000C
    addiu   t0, s0, 0x000C             # t0 = 0000000C
lbl_8003FBA8:
    lh      v0, 0x0004(t0)             # 00000010
    lh      t9, 0x0062($sp)
    lh      t2, 0x005A($sp)
    beq     v0, $zero, lbl_8003FC40
    subu    t1, t9, t2
    sll     t3, t1, 16
    sra     t4, t3, 16
    div     $zero, t4, v0
    mflo    t5
    mtc1    t5, $f8                    # $f8 = 0.00
    lwc1    $f16, 0x0004(s0)           # 00000004
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    bne     v0, $zero, lbl_8003FBE8
    nop
    break   # 0x01C00
lbl_8003FBE8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_8003FC00
    lui     $at, 0x8000                # $at = 80000000
    bne     t4, $at, lbl_8003FC00
    nop
    break   # 0x01800
lbl_8003FC00:
    mul.s   $f18, $f10, $f16
    sw      t0, 0x0028($sp)
    lw      a0, 0x002C($sp)
    lw      a1, 0x0030($sp)
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFE4
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f18
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    jal     func_800359A8
    sh      t7, 0x005A($sp)
    lw      t0, 0x0028($sp)
    lh      t8, 0x0004(t0)             # 00000004
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    b       lbl_8003FC4C
    sh      t9, 0x0004(t0)             # 00000004
lbl_8003FC40:
    lh      t1, 0x014C(s0)             # 0000014C
    ori     t3, t1, 0x0410             # t3 = 00000410
    sh      t3, 0x014C(s0)             # 0000014C
lbl_8003FC4C:
    lwc1    $f12, 0x0000(t0)           # 00000000
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_8003569C
    lui     a3, 0x4120                 # a3 = 41200000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8003FC68:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_8003FC7C:
# FIXD1()
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x0040($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    or      a0, s0, $zero              # a0 = 00000000
    addu    t1, t8, t0
    lw      v1, 0x0004(t1)             # 00000004
    jal     func_80036500
    sw      v1, 0x003C($sp)
    addiu   s1, s0, 0x0010             # s1 = 00000010
    or      a0, s1, $zero              # a0 = 00000010
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x0050($sp)
    lw      a2, 0x0050($sp)
    lw      v1, 0x003C($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwl     t3, 0x0006(a2)             # 00000006
    lwr     t3, 0x0009(a2)             # 00000009
    addiu   v1, v1, 0x000C             # v1 = 0000000C
    swl     t3, 0x000C(s1)             # 0000001C
    swr     t3, 0x000F(s1)             # 0000001F
    lhu     t3, 0x000A(a2)             # 0000000A
    sh      t3, 0x0010(s1)             # 00000020
    lh      t4, 0x000C(a2)             # 0000000C
    sh      t4, 0x0014(s1)             # 00000024
    lh      t5, -0x000C(v1)            # 00000000
    lwc1    $f8, 0x6E70($at)           # 80106E70
    lwc1    $f16, 0x0040($sp)
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0000(s0)           # 00000000
    lh      t6, -0x0008(v1)            # 00000004
    lwc1    $f8, 0x6E74($at)           # 80106E74
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(s0)           # 00000004
    lh      t7, -0x0004(v1)            # 00000008
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(s0)           # 00000008
    lh      t9, 0x0000(v1)             # 0000000C
    sh      t9, 0x000C(s0)             # 0000000C
    lh      v0, 0x0014(s1)             # 00000024
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_8003FD9C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0008(s0)            # 00000008
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    b       lbl_8003FDBC
    sh      t0, 0x0014(s1)             # 00000024
lbl_8003FD9C:
    slti    $at, v0, 0x0169
    beq     $at, $zero, lbl_8003FDBC
    sll     t1, v0,  2
    subu    t1, t1, v0
    sll     t1, t1,  3
    addu    t1, t1, v0
    sll     t1, t1,  2
    sh      t1, 0x0014(s1)             # 00000024
lbl_8003FDBC:
    lh      t2, 0x000C(s0)             # 0000000C
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t2, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_8003FE08
    addiu   t3, v0, 0x0001             # t3 = 00000001
    jal     func_80035910
    sh      t3, 0x015E(s0)             # 0000015E
    lh      v0, 0x0014(s1)             # 00000024
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    v0, $at, lbl_8003FE0C
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6E78($at)           # 80106E78
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x0008(s0)            # 00000008
lbl_8003FE08:
    addiu   a1, s0, 0x005C             # a1 = 0000005C
lbl_8003FE0C:
    addiu   a2, s0, 0x0050             # a2 = 00000050
    sw      a2, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFE4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6E7C($at)           # 80106E7C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6E80($at)           # 80106E80
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000010
    lw      a1, 0x0034($sp)
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lw      t5, 0x0000(v0)             # 00000094
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFD4
    sw      t5, 0x0000(a0)             # FFFFFFD4
    lw      t4, 0x0004(v0)             # 00000098
    sw      t4, 0x0004(a0)             # FFFFFFD8
    lw      t5, 0x0008(v0)             # 0000009C
    sw      t5, 0x0008(a0)             # FFFFFFDC
    lwc1    $f10, 0x0058($sp)
    lwc1    $f16, 0x0040($sp)
    sw      v0, 0x002C($sp)
    lw      a1, 0x0034($sp)
    add.s   $f18, $f10, $f16
    jal     func_80067580
    swc1    $f18, 0x0058($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    swc1    $f0, 0x006C($sp)
    lh      a0, 0x000C(s1)             # 0000001C
    lw      a2, 0x0004(s0)             # 00000004
    lh      a1, 0x0068($sp)
    subu    a0, $zero, a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_80035724
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    sh      v0, 0x0070($sp)
    lw      a2, 0x0004(s0)             # 00000004
    lh      a0, 0x000E(s1)             # 0000001E
    lh      a1, 0x006A($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    sh      v0, 0x0072($sp)
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFEC
    lw      t6, 0x0034($sp)
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    lw      t9, 0x0000(t6)             # 00000000
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    sw      t9, 0x0074(s0)             # 00000074
    lw      t7, 0x0004(t6)             # 00000004
    lw      a2, 0x0004(s0)             # 00000004
    sw      t7, 0x0078(s0)             # 00000078
    lw      t9, 0x0008(t6)             # 00000008
    jal     func_8003569C
    sw      t9, 0x007C(s0)             # 0000007C
    lw      v1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f0, 0x00FC(s0)            # 000000FC
    sh      $zero, 0x015A(s0)          # 0000015A
    swc1    $f4, 0x0100(s0)            # 00000100
    lwc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f16, 0x0054(s0)           # 00000054
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f10, $f6, $f8
    lwc1    $f6, 0x0058(s0)            # 00000058
    swc1    $f10, 0x00E4(s0)           # 000000E4
    lwc1    $f18, 0x0004(v1)           # 00000004
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x00E8(s0)            # 000000E8
    lwc1    $f8, 0x0008(v1)            # 00000008
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x00EC(s0)           # 000000EC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_8003FF68:
# FIXD2()
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x0054($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x6E84($at)           # 80106E84
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6E88($at)           # 80106E88
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x6E8C($at)          # 80106E8C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   s1, s0, 0x0014             # s1 = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, v0, 0x0010             # v0 = 00000010
    mul.s   $f10, $f6, $f8
    cvt.s.w $f6, $f4
    sub.s   $f18, $f16, $f10
    mul.s   $f8, $f6, $f2
    nop
    mul.s   $f16, $f8, $f0
    nop
    mul.s   $f10, $f16, $f18
    swc1    $f10, 0x0000(s0)           # 00000000
    lh      t3, -0x000C(v0)            # 00000004
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0008(v0)            # 00000008
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mtc1    $at, $f16                  # $f16 = 100.00
    mul.s   $f10, $f18, $f2
    swc1    $f10, 0x0008(s0)           # 00000008
    lh      t5, -0x0004(v0)            # 0000000C
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      t6, 0x0000(v0)             # 00000010
    mul.s   $f18, $f8, $f16
    sh      t6, 0x0010(s0)             # 00000010
    trunc.w.s $f10, $f18
    mfc1    t9, $f10
    jal     func_80036500
    sh      t9, 0x000C(s1)             # 00000020
    beq     v0, $zero, lbl_800400AC
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000014
    jal     func_80035940
    sw      v0, 0x0064($sp)
    lw      a1, 0x0064($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addiu   t8, s0, 0x005C             # t8 = 0000005C
    lh      v1, 0x000C(a1)             # 0000000C
    beq     v1, $at, lbl_800400A4
    nop
    sh      v1, 0x000C(s1)             # 00000020
lbl_800400A4:
    b       lbl_800400CC
    sw      t8, 0x003C($sp)
lbl_800400AC:
    addiu   v0, s0, 0x005C             # v0 = 0000005C
    lw      t1, 0x0000(v0)             # 0000005C
    sw      t1, 0x0000(s1)             # 00000014
    lw      t0, 0x0004(v0)             # 00000060
    sw      t0, 0x0004(s1)             # 00000018
    lw      t1, 0x0008(v0)             # 00000064
    sw      t1, 0x0008(s1)             # 0000001C
    sw      v0, 0x003C($sp)
lbl_800400CC:
    lh      v0, 0x000C(s1)             # 00000020
    mtc1    $zero, $f2                 # $f2 = 0.00
    slti    $at, v0, 0x0169
    beq     $at, $zero, lbl_800400F4
    sll     t2, v0,  2
    subu    t2, t2, v0
    sll     t2, t2,  3
    addu    t2, t2, v0
    sll     t2, t2,  2
    sh      t2, 0x000C(s1)             # 00000020
lbl_800400F4:
    lh      t3, 0x0010(s0)             # 00000010
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f2, 0x006C($sp)
    sw      t3, -0x0E58($at)           # 800EF1A8
    lwc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x0054($sp)
    swc1    $f2, 0x0074($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f8, $f4, $f6
    lwc1    $f16, 0x6E90($at)          # 80106E90
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFDC
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    swc1    $f8, 0x0070($sp)
    lwc1    $f0, 0x0008(s0)            # 00000008
    swc1    $f16, 0x0010($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    nop
    addiu   v1, s0, 0x0094             # v1 = 00000094
    lwc1    $f18, 0x0000(v1)           # 00000094
    lwc1    $f10, 0x00E4(s0)           # 000000E4
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f18, $f10
    swc1    $f4, 0x0078($sp)
    lwc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f6, 0x0004(v1)            # 00000098
    add.s   $f16, $f6, $f8
    swc1    $f16, 0x007C($sp)
    lwc1    $f10, 0x00EC(s0)           # 000000EC
    lwc1    $f18, 0x0008(v1)           # 0000009C
    add.s   $f4, $f18, $f10
    swc1    $f4, 0x0080($sp)
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_80040210
    addiu   t4, v0, 0x0001             # t4 = 00000001
    sh      t4, 0x015E(s0)             # 0000015E
    jal     func_80035910
    sw      v1, 0x0030($sp)
    lh      t5, 0x0010(s0)             # 00000010
    lw      v1, 0x0030($sp)
    andi    t6, t5, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_80040214
    lwc1    $f0, 0x0008(s0)            # 00000008
    lw      t9, 0x0000(s1)             # 00000014
    addiu   v0, $sp, 0x0040            # v0 = FFFFFFB0
    addiu   t4, $sp, 0x0078            # t4 = FFFFFFE8
    sw      t9, 0x0000(v0)             # FFFFFFB0
    lw      t7, 0x0004(s1)             # 00000018
    lw      t0, 0x0000(v0)             # FFFFFFB0
    sw      t7, 0x0004(v0)             # FFFFFFB4
    lw      t9, 0x0008(s1)             # 0000001C
    sw      t9, 0x0008(v0)             # FFFFFFB8
    sw      t0, 0x0074(s0)             # 00000074
    lw      t8, 0x0004(v0)             # FFFFFFB4
    sw      t8, 0x0078(s0)             # 00000078
    lw      t0, 0x0008(v0)             # FFFFFFB8
    sw      t0, 0x007C(s0)             # 0000007C
    lw      t3, 0x0000(v0)             # FFFFFFB0
    lw      t1, 0x003C($sp)
    sw      t3, 0x0000(t1)             # 00000000
    lw      t2, 0x0004(v0)             # FFFFFFB4
    sw      t2, 0x0004(t1)             # 00000004
    lw      t3, 0x0008(v0)             # FFFFFFB8
    sw      t3, 0x0008(t1)             # 00000008
    lw      t6, 0x0000(t4)             # FFFFFFE8
    sw      t6, 0x0050(s0)             # 00000050
    lw      t5, 0x0004(t4)             # FFFFFFEC
    sw      t5, 0x0054(s0)             # 00000054
    lw      t6, 0x0008(t4)             # FFFFFFF0
    sw      t6, 0x0058(s0)             # 00000058
lbl_80040210:
    lwc1    $f0, 0x0008(s0)            # 00000008
lbl_80040214:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   t7, s0, 0x0074             # t7 = 00000074
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t7, 0x0034($sp)
    sw      a1, 0x0038($sp)
    sw      v1, 0x0030($sp)
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFE8
    jal     func_8003584C
    swc1    $f6, 0x0010($sp)
    lwc1    $f0, 0x0004(s0)            # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6E94($at)           # 80106E94
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000014
    lw      a1, 0x0034($sp)
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    lw      t8, 0x0034($sp)
    lw      t9, 0x003C($sp)
    lw      t1, 0x0000(t8)             # 00000000
    sw      t1, 0x0000(t9)             # 00000000
    lw      t0, 0x0004(t8)             # 00000004
    sw      t0, 0x0004(t9)             # 00000004
    lw      t1, 0x0008(t8)             # 00000008
    sw      t1, 0x0008(t9)             # 00000008
    lw      a1, 0x003C($sp)
    jal     func_80067580
    lw      a0, 0x0038($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f0, 0x00DC(s0)            # 000000DC
    sh      $zero, 0x015A(s0)          # 0000015A
    swc1    $f16, 0x00D8(s0)           # 000000D8
    lh      t2, 0x000C(s1)             # 00000020
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6E98($at)           # 80106E98
    mtc1    t2, $f18                   # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3F80                 # a1 = 3F800000
    cvt.s.w $f10, $f18
    mul.s   $f6, $f10, $f4
    jal     func_80036DD8
    swc1    $f6, 0x00FC(s0)            # 000000FC
    lw      v1, 0x0030($sp)
    swc1    $f0, 0x0100(s0)            # 00000100
    lwc1    $f8, 0x0050(s0)            # 00000050
    lwc1    $f16, 0x0000(v1)           # 00000000
    lwc1    $f10, 0x0054(s0)           # 00000054
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f8, $f16
    lwc1    $f8, 0x0058(s0)            # 00000058
    swc1    $f18, 0x00E4(s0)           # 000000E4
    lwc1    $f4, 0x0004(v1)            # 00000004
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x00E8(s0)            # 000000E8
    lwc1    $f16, 0x0008(v1)           # 00000008
    sub.s   $f18, $f8, $f16
    swc1    $f18, 0x00EC(s0)           # 000000EC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_8004031C:
# FIXD3()
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    addiu   a2, s0, 0x0050             # a2 = 00000050
    sw      a2, 0x0030($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE0
    jal     func_80067A84
    sw      v0, 0x0050($sp)
    lw      a3, 0x0050($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    addiu   a2, s0, 0x0074             # a2 = 00000074
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    or      a0, a2, $zero              # a0 = 00000074
    or      a1, a3, $zero              # a1 = 00000000
    lh      t2, 0x0000(v0)             # 00000000
    sh      t2, 0x0000(s0)             # 00000000
    sw      a3, 0x0050($sp)
    jal     func_80035940
    sw      a2, 0x002C($sp)
    lw      a2, 0x002C($sp)
    lw      a1, 0x0034($sp)
    lw      a3, 0x0050($sp)
    lw      t4, 0x0000(a2)             # 00000000
    addiu   v1, s0, 0x0002             # v1 = 00000002
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sw      t4, 0x0000(a1)             # 00000000
    lw      t3, 0x0004(a2)             # 00000004
    addiu   t8, $zero, 0x1770          # t8 = 00001770
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    sw      t3, 0x0004(a1)             # 00000004
    lw      t4, 0x0008(a2)             # 00000008
    sw      t4, 0x0008(a1)             # 00000008
    lwl     t6, 0x0006(a3)             # 00000006
    lwr     t6, 0x0009(a3)             # 00000009
    lui     t4, 0x8012                 # t4 = 80120000
    swl     t6, 0x0000(v1)             # 00000002
    swr     t6, 0x0003(v1)             # 00000005
    lhu     t6, 0x000A(a3)             # 0000000A
    sh      t6, 0x0004(v1)             # 00000006
    lh      t7, 0x000C(a3)             # 0000000C
    sh      t7, 0x0006(v1)             # 00000008
    lh      a0, 0x0006(v1)             # 00000008
    lh      t9, 0x000E(a3)             # 0000000E
    bne     a0, $at, lbl_80040408
    sh      t9, 0x000A(v1)             # 0000000C
    sh      t8, 0x0006(v1)             # 00000008
    lh      a0, 0x0006(v1)             # 00000008
lbl_80040408:
    slti    $at, a0, 0x0169
    beq     $at, $zero, lbl_80040428
    sll     t0, a0,  2
    subu    t0, t0, a0
    sll     t0, t0,  3
    addu    t0, t0, a0
    sll     t0, t0,  2
    sh      t0, 0x0006(v1)             # 00000008
lbl_80040428:
    lh      t1, 0x015E(s0)             # 0000015E
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bne     t1, $zero, lbl_80040458
    lui     $at, 0x800F                # $at = 800F0000
    sh      t2, 0x0008(v1)             # 0000000A
    lw      t4, -0x4600(t4)            # 8011BA00
    lh      t3, 0x0006(v1)             # 00000008
    sh      t3, 0x0262(t4)             # 80120262
    lh      t5, 0x015E(s0)             # 0000015E
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x015E(s0)             # 0000015E
lbl_80040458:
    lh      v0, 0x000E(a3)             # 0000000E
    lh      t7, 0x000A(v1)             # 0000000C
    beql    t7, v0, lbl_80040474
    lh      v0, 0x0008(v1)             # 0000000A
    sh      v0, 0x000A(v1)             # 0000000C
    sh      t9, 0x0008(v1)             # 0000000A
    lh      v0, 0x0008(v1)             # 0000000A
lbl_80040474:
    blez    v0, lbl_8004048C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0008(v1)             # 0000000A
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80040490
    sw      t0, -0x0E10($at)           # 800EF1F0
lbl_8004048C:
    sw      $zero, -0x0E10($at)        # 800EF1F0
lbl_80040490:
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    lw      a0, 0x0030($sp)
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFEC
    swc1    $f4, 0x0054($sp)
    lh      t1, 0x0002(v1)             # 00000004
    sh      t1, 0x005A($sp)
    lh      t2, 0x0000(v1)             # 00000002
    sw      v1, 0x0028($sp)
    subu    t3, $zero, t2
    jal     func_800359A8
    sh      t3, 0x0058($sp)
    lh      t4, 0x0000(s0)             # 00000000
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     $at, 0x800F                # $at = 800F0000
    sw      t4, -0x0E58($at)           # 800EF1A8
    lw      v1, 0x0028($sp)
    lh      t6, 0x0262(t5)             # 80120262
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      t6, 0x0006(v1)             # 00000006
    sh      $zero, 0x015A(s0)          # 0000015A
    lh      t7, 0x0006(v1)             # 00000006
    lwc1    $f10, 0x6E9C($at)          # 80106E9C
    swc1    $f18, 0x0100(s0)           # 00000100
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f10
    swc1    $f16, 0x00FC(s0)           # 000000FC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8004051C:
# FIXD4()
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    mov.s   $f2, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x6EA0($at)           # 80106EA0
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f2
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6EA4($at)           # 80106EA4
    sll     t0, t9,  3
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6EA8($at)           # 80106EA8
    lh      t2, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, v0, 0x0010             # v0 = 00000010
    mul.s   $f10, $f6, $f8
    mtc1    t2, $f8                    # $f8 = 0.00
    sub.s   $f6, $f4, $f10
    cvt.s.w $f4, $f8
    mul.s   $f10, $f4, $f0
    nop
    mul.s   $f8, $f10, $f2
    nop
    mul.s   $f4, $f8, $f6
    swc1    $f4, 0x0000(s0)            # 00000000
    lh      t3, -0x000C(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f6, $f8, $f0
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t4, -0x0008(v0)            # 00000008
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f10, $f4
    mul.s   $f8, $f10, $f0
    swc1    $f8, 0x0008(s0)            # 00000008
    lh      t5, -0x0004(v0)            # 0000000C
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t6, 0x0000(v0)             # 00000010
    sh      t6, 0x0010(s0)             # 00000010
    jal     func_80036500
    swc1    $f2, 0x0050($sp)
    beq     v0, $zero, lbl_80040634
    or      a1, v0, $zero              # a1 = 00000000
    addiu   s3, s0, 0x0014             # s3 = 00000014
    jal     func_80035940
    or      a0, s3, $zero              # a0 = 00000014
    addiu   t7, s0, 0x005C             # t7 = 0000005C
    b       lbl_80040658
    sw      t7, 0x0044($sp)
lbl_80040634:
    addiu   t9, s0, 0x005C             # t9 = 0000005C
    sw      t9, 0x0044($sp)
    lw      t1, 0x0000(t9)             # 0000005C
    addiu   s3, s0, 0x0014             # s3 = 00000014
    sw      t1, 0x0000(s3)             # 00000014
    lw      t0, 0x0004(t9)             # 00000060
    sw      t0, 0x0004(s3)             # 00000018
    lw      t1, 0x0008(t9)             # 00000064
    sw      t1, 0x0008(s3)             # 0000001C
lbl_80040658:
    lh      t2, 0x0010(s0)             # 00000010
    lui     $at, 0x800F                # $at = 800F0000
    sw      t2, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bnel    v0, $zero, lbl_8004069C
    addiu   s1, s0, 0x0074             # s1 = 00000074
    lh      t4, 0x0010(s0)             # 00000010
    addiu   t3, v0, 0x0001             # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
    andi    t5, t4, 0x0004             # t5 = 00000000
    bnel    t5, $zero, lbl_80040694
    lwc1    $f10, 0x0008(s0)           # 00000008
    jal     func_80035910
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x0008(s0)           # 00000008
lbl_80040694:
    swc1    $f10, 0x000C(s3)           # 00000020
    addiu   s1, s0, 0x0074             # s1 = 00000074
lbl_8004069C:
    lwc1    $f0, 0x0000(s1)            # 00000074
    lwc1    $f8, 0x0000(s3)            # 00000014
    lwc1    $f4, 0x0004(s0)            # 00000004
    lui     $at, 0x8010                # $at = 80100000
    sub.s   $f6, $f8, $f0
    lwc1    $f14, 0x6EAC($at)          # 80106EAC
    lwc1    $f2, 0x0004(s1)            # 00000078
    lwc1    $f12, 0x0008(s1)           # 0000007C
    mul.s   $f10, $f6, $f4
    mtc1    $zero, $f16                # $f16 = 0.00
    mfc1    a2, $f14
    mfc1    a3, $f14
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFD0
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    add.s   $f8, $f0, $f10
    swc1    $f8, 0x0000(s1)            # 00000074
    lwc1    $f6, 0x0004(s3)            # 00000018
    lwc1    $f10, 0x0004(s0)           # 00000004
    lw      t9, 0x0000(s1)             # 00000074
    sub.s   $f4, $f6, $f2
    mul.s   $f8, $f4, $f10
    add.s   $f6, $f2, $f8
    swc1    $f6, 0x0004(s1)            # 00000078
    lwc1    $f4, 0x0008(s3)            # 0000001C
    lwc1    $f8, 0x0004(s0)            # 00000004
    sub.s   $f10, $f4, $f12
    mul.s   $f6, $f10, $f8
    add.s   $f4, $f12, $f6
    swc1    $f4, 0x0008(s1)            # 0000007C
    lw      t6, 0x0044($sp)
    sw      t9, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(s1)             # 00000078
    sw      t7, 0x0004(t6)             # 00000004
    lw      t9, 0x0008(s1)             # 0000007C
    sw      t9, 0x0008(t6)             # 00000008
    swc1    $f16, 0x0078($sp)
    lwc1    $f10, 0x0000(s0)           # 00000000
    lwc1    $f8, 0x0050($sp)
    swc1    $f14, 0x0010($sp)
    swc1    $f16, 0x0080($sp)
    add.s   $f6, $f10, $f8
    jal     func_8003584C
    swc1    $f6, 0x007C($sp)
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lwc1    $f4, 0x0000(v0)            # 00000094
    lwc1    $f10, 0x00E4(s0)           # 000000E4
    lwc1    $f8, 0x0004(v0)            # 00000098
    lwc1    $f6, 0x00E8(s0)            # 000000E8
    add.s   $f14, $f4, $f10
    addiu   s2, s0, 0x0050             # s2 = 00000050
    lwc1    $f0, 0x0000(s2)            # 00000050
    add.s   $f16, $f8, $f6
    lwc1    $f10, 0x00EC(s0)           # 000000EC
    lwc1    $f4, 0x0008(v0)            # 0000009C
    sub.s   $f8, $f14, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    add.s   $f18, $f4, $f10
    or      a2, s2, $zero              # a2 = 00000050
    mul.s   $f4, $f8, $f6
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    or      a1, s1, $zero              # a1 = 00000074
    add.s   $f10, $f0, $f4
    swc1    $f10, 0x0084($sp)
    lwc1    $f2, 0x0004(s2)            # 00000054
    sub.s   $f8, $f16, $f2
    mul.s   $f4, $f8, $f6
    mtc1    $at, $f6                   # $f6 = 0.50
    add.s   $f10, $f2, $f4
    swc1    $f10, 0x0088($sp)
    lwc1    $f12, 0x0008(s2)           # 00000058
    sub.s   $f8, $f18, $f12
    mul.s   $f4, $f8, $f6
    add.s   $f10, $f12, $f4
    jal     func_80067A84
    swc1    $f10, 0x008C($sp)
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFC0
    or      a1, s1, $zero              # a1 = 00000074
    jal     func_80067A84
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFDC
    lwc1    $f8, 0x0068($sp)
    lwc1    $f6, 0x0070($sp)
    lwc1    $f10, 0x000C(s3)           # 00000020
    lh      a0, 0x006C($sp)
    sub.s   $f4, $f8, $f6
    lh      a1, 0x0074($sp)
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mul.s   $f8, $f4, $f10
    add.s   $f4, $f6, $f8
    swc1    $f4, 0x0070($sp)
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lwc1    $f10, 0x000C(s3)           # 00000020
    mul.s   $f8, $f10, $f6
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sh      v0, 0x0074($sp)
    lwc1    $f10, 0x00E0(s0)           # 000000E0
    lwc1    $f4, 0x000C(s3)            # 00000020
    lh      a0, 0x006E($sp)
    lh      a1, 0x0076($sp)
    mul.s   $f6, $f4, $f10
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f6
    jal     func_80035724
    nop
    sh      v0, 0x0076($sp)
    or      a0, s2, $zero              # a0 = 00000050
    or      a1, s1, $zero              # a1 = 00000074
    jal     func_800359A8
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFC8
    or      a0, s2, $zero              # a0 = 00000050
    jal     func_80067580
    lw      a1, 0x0044($sp)
    lwc1    $f8, 0x000C(s0)            # 0000000C
    swc1    $f0, 0x00DC(s0)            # 000000DC
    sh      $zero, 0x015A(s0)          # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80036DD8
    swc1    $f8, 0x00FC(s0)            # 000000FC
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x002C($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_800408A8:
# FIXD0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800408C8:
# SUBJ1()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800408E8:
# SUBJ2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80040908:
# SUBJ3()
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s1, $sp, 0x0058            # s1 = FFFFFFB0
    sw      $ra, 0x001C($sp)
    or      a0, s1, $zero              # a0 = FFFFFFB0
    jal     func_80022670
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lw      v1, 0x008C(s0)             # 0000008C
    mov.s   $f2, $f0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x01DC(v1)             # 000001DC
    bne     t6, $zero, lbl_80040960
    nop
    lh      t7, 0x0164(s0)             # 00000164
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t8, t7, 0x0050             # t8 = 00000050
    b       lbl_80040EF8
    sw      t8, 0x01DC(v1)             # 000001DC
lbl_80040960:
    jal     func_800358D0
    swc1    $f2, 0x0034($sp)
    lh      t9, 0x0142(s0)             # 00000142
    lui     t2, 0x800F                 # t2 = 800F0000
    lh      t3, 0x0144(s0)             # 00000144
    sll     t1, t9,  3
    addu    t2, t2, t1
    lw      t2, -0x118C(t2)            # 800EEE74
    sll     t4, t3,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t5, t2, t4
    lw      v0, 0x0004(t5)             # 00000004
    lwc1    $f0, 0x6EB0($at)           # 80106EB0
    lui     $at, 0x8010                # $at = 80100000
    lh      t6, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x6EB4($at)           # 80106EB4
    lwc1    $f2, 0x0034($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFE8
    addiu   a0, $sp, 0x0084            # a0 = FFFFFFDC
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFD4
    addiu   v0, v0, 0x0020             # v0 = 00000020
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x0000(s0)            # 00000000
    lh      t7, -0x001C(v0)            # 00000004
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t8, -0x0018(v0)            # 00000008
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    swc1    $f4, 0x0008(s0)            # 00000008
    lh      t9, -0x0014(v0)            # 0000000C
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x000C(s0)            # 0000000C
    lh      t1, -0x0010(v0)            # 00000010
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0010(s0)            # 00000010
    lh      t3, -0x000C(v0)            # 00000014
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f4, $f10, $f0
    swc1    $f4, 0x0014(s0)            # 00000014
    lh      t2, -0x0008(v0)            # 00000018
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f0
    lwc1    $f8, 0x0008(s0)            # 00000008
    swc1    $f10, 0x0018(s0)           # 00000018
    lh      t4, -0x0004(v0)            # 0000001C
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x001C(s0)            # 0000001C
    lh      t5, 0x0000(v0)             # 00000020
    sh      t5, 0x0020(s0)             # 00000020
    lh      t6, 0x0066($sp)
    lh      t8, 0x0064($sp)
    swc1    $f8, 0x007C($sp)
    addiu   t7, t6, 0x8001             # t7 = FFFF8001
    sh      t7, 0x0082($sp)
    sh      t8, 0x0080($sp)
    lw      t1, 0x0000(s1)             # FFFFFFB0
    lw      t9, 0x0004(s1)             # FFFFFFB4
    sw      t1, 0x0000(a1)             # FFFFFFE8
    lw      t1, 0x0008(s1)             # FFFFFFB8
    sw      t9, 0x0004(a1)             # FFFFFFEC
    sw      t1, 0x0008(a1)             # FFFFFFF0
    lwc1    $f10, 0x0094($sp)
    lwc1    $f4, 0x0000(s0)            # 00000000
    add.s   $f6, $f10, $f4
    jal     func_800359A8
    swc1    $f6, 0x0094($sp)
    addiu   s1, s0, 0x0050             # s1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    sw      a2, 0x0030($sp)
    or      a1, s1, $zero              # a1 = 00000050
    jal     func_80067A84
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFCC
    lh      t3, 0x0020(s0)             # 00000020
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f8, 0x0074($sp)
    sw      t3, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v1, $zero, lbl_80040AFC
    addiu   v1, s0, 0x0024             # v1 = 00000024
    beq     v1, $at, lbl_80040AF8
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_80040B40
lbl_80040AF8:
    addiu   v1, s0, 0x0024             # v1 = 00000024
lbl_80040AFC:
    swc1    $f8, 0x0000(v1)            # 00000024
    lh      t2, 0x007A($sp)
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    sh      t2, 0x0004(v1)             # 00000028
    lh      t4, 0x0078($sp)
    sh      t5, 0x0008(v1)             # 0000002C
    mtc1    $at, $f4                   # $f4 = 1.00
    sh      t4, 0x0006(v1)             # 0000002A
    lwc1    $f10, 0x0008(s0)           # 00000008
    lh      t6, 0x015E(s0)             # 0000015E
    lwc1    $f6, 0x0008(s0)            # 00000008
    swc1    $f10, 0x00DC(s0)           # 000000DC
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    swc1    $f4, 0x00C0(s0)            # 000000C0
    swc1    $f6, 0x00DC(s0)            # 000000DC
lbl_80040B40:
    addiu   v1, s0, 0x0024             # v1 = 00000024
    lh      v0, 0x0008(v1)             # 0000002C
    lwc1    $f18, 0x0000(v1)           # 00000024
    lh      a0, 0x0004(v1)             # 00000028
    beq     v0, $zero, lbl_80040D50
    lh      a1, 0x0006(v1)             # 0000002A
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    cvt.s.w $f4, $f10
    lwc1    $f2, 0x0000(s1)            # 00000050
    lwc1    $f6, 0x0090($sp)
    lwc1    $f12, 0x0004(s1)           # 00000054
    lwc1    $f14, 0x0008(s1)           # 00000058
    sub.s   $f10, $f6, $f2
    lui     $at, 0x3E80                # $at = 3E800000
    lui     a2, 0x3F00                 # a2 = 3F000000
    div.s   $f0, $f8, $f4
    lui     a3, 0x3F80                 # a3 = 3F800000
    mul.s   $f8, $f10, $f0
    add.s   $f4, $f2, $f8
    swc1    $f4, 0x0000(s1)            # 00000050
    lwc1    $f6, 0x0094($sp)
    sub.s   $f10, $f6, $f12
    mul.s   $f8, $f10, $f0
    add.s   $f4, $f12, $f8
    swc1    $f4, 0x0004(s1)            # 00000054
    lwc1    $f6, 0x0098($sp)
    sub.s   $f10, $f6, $f14
    mul.s   $f8, $f10, $f0
    add.s   $f4, $f14, $f8
    mtc1    $at, $f8                   # $f8 = 0.25
    swc1    $f4, 0x0008(s1)            # 00000058
    lh      t8, 0x0082($sp)
    lwc1    $f6, 0x007C($sp)
    lh      t4, 0x0080($sp)
    subu    t9, a0, t8
    sub.s   $f10, $f18, $f6
    sll     t1, t9, 16
    sra     t3, t1, 16
    mtc1    t3, $f4                    # $f4 = 0.00
    mul.s   $f16, $f10, $f8
    mtc1    $at, $f8                   # $f8 = 0.25
    subu    t5, a1, t4
    sll     t6, t5, 16
    sra     t7, t6, 16
    lwc1    $f14, 0x0074($sp)
    cvt.s.w $f10, $f4
    mul.s   $f4, $f10, $f8
    mtc1    t7, $f8                    # $f8 = 0.00
    trunc.w.s $f10, $f4
    cvt.s.w $f4, $f8
    mfc1    t0, $f10
    mtc1    $at, $f10                  # $f10 = 0.25
    sll     t0, t0, 16
    sra     t0, t0, 16
    mul.s   $f8, $f4, $f10
    trunc.w.s $f4, $f8
    mfc1    t9, $f4
    nop
    sh      t9, 0x0048($sp)
    lh      t1, 0x0008(v1)             # 0000002C
    sh      t0, 0x004A($sp)
    sw      v1, 0x0024($sp)
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f4, $f8, $f16
    jal     func_8003569C
    add.s   $f12, $f4, $f6
    lw      v1, 0x0024($sp)
    swc1    $f0, 0x0074($sp)
    lh      t0, 0x004A($sp)
    lh      t2, 0x0008(v1)             # 00000008
    lh      t3, 0x0082($sp)
    lh      a1, 0x007A($sp)
    multu   t0, t2
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t4
    addu    a0, t3, t4
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    lw      v1, 0x0024($sp)
    sh      v0, 0x007A($sp)
    lh      t5, 0x0048($sp)
    lh      t6, 0x0008(v1)             # 00000008
    lh      t8, 0x0080($sp)
    lh      a1, 0x0078($sp)
    multu   t5, t6
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mflo    t7
    addu    a0, t8, t7
    sll     a0, a0, 16
    jal     func_80035724
    sra     a0, a0, 16
    addiu   a0, s0, 0x0074             # a0 = 00000074
    sh      v0, 0x0078($sp)
    sw      a0, 0x0028($sp)
    or      a1, s1, $zero              # a1 = 00000050
    jal     func_800359A8
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFCC
    lw      a0, 0x0028($sp)
    lw      a2, 0x0030($sp)
    lw      v1, 0x0024($sp)
    lw      t1, 0x0000(a0)             # 00000000
    lui     t5, 0x0001                 # t5 = 00010000
    or      a1, s1, $zero              # a1 = 00000050
    sw      t1, 0x0000(a2)             # 00000000
    lw      t9, 0x0004(a0)             # 00000004
    sw      t9, 0x0004(a2)             # 00000004
    lw      t1, 0x0008(a0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    sw      t1, 0x0008(a2)             # 00000008
    lh      t2, 0x0008(v1)             # 00000008
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0008(v1)             # 00000008
    lw      t4, 0x008C(s0)             # 0000008C
    addu    t5, t5, t4
    lbu     t5, 0x0A39(t5)             # 00010A39
    bne     t5, $zero, lbl_80040D40
    nop
    jal     func_80035CBC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80040EA0
    addiu   v0, s0, 0x0094             # v0 = 00000094
lbl_80040D40:
    jal     func_800360D0
    or      a1, s1, $zero              # a1 = 00000050
    b       lbl_80040EA0
    addiu   v0, s0, 0x0094             # v0 = 00000094
lbl_80040D50:
    lh      a0, 0x0064($sp)
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x0064($sp)
    swc1    $f0, 0x0050($sp)
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f10, 0x0010(s0)           # 00000010
    lwc1    $f16, 0x0050($sp)
    lh      a0, 0x0066($sp)
    swc1    $f10, 0x0090($sp)
    lwc1    $f8, 0x0014(s0)            # 00000014
    lwc1    $f6, 0x0018(s0)            # 00000018
    addiu   a0, a0, 0x8001             # a0 = FFFF8001
    mul.s   $f4, $f8, $f0
    sll     a0, a0, 16
    sra     a0, a0, 16
    mul.s   $f10, $f6, $f16
    sub.s   $f8, $f4, $f10
    swc1    $f8, 0x0094($sp)
    lwc1    $f6, 0x0014(s0)            # 00000014
    lwc1    $f10, 0x0018(s0)           # 00000018
    mul.s   $f4, $f6, $f16
    nop
    mul.s   $f8, $f10, $f0
    add.s   $f6, $f4, $f8
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0098($sp)
    lh      a0, 0x0066($sp)
    swc1    $f0, 0x0050($sp)
    addiu   a0, a0, 0x8001             # a0 = FFFF8001
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f16, 0x0050($sp)
    lwc1    $f10, 0x0098($sp)
    lwc1    $f8, 0x0090($sp)
    addiu   a0, s0, 0x0074             # a0 = 00000074
    mul.s   $f4, $f10, $f16
    or      a1, s1, $zero              # a1 = 00000050
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFCC
    mul.s   $f6, $f8, $f0
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x0010(s0)           # 00000010
    lwc1    $f8, 0x0094($sp)
    swc1    $f8, 0x0014(s0)            # 00000014
    lwc1    $f4, 0x0098($sp)
    lwc1    $f10, 0x0090($sp)
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f10, $f16
    lwc1    $f10, 0x0010(s0)           # 00000010
    sub.s   $f4, $f6, $f8
    swc1    $f4, 0x0018(s0)            # 00000018
    lwc1    $f6, 0x0058($sp)
    add.s   $f8, $f10, $f6
    swc1    $f8, 0x0000(s1)            # 00000050
    lwc1    $f10, 0x005C($sp)
    lwc1    $f4, 0x0014(s0)            # 00000014
    add.s   $f6, $f4, $f10
    swc1    $f6, 0x0004(s1)            # 00000054
    lwc1    $f4, 0x0060($sp)
    lwc1    $f8, 0x0018(s0)            # 00000018
    add.s   $f10, $f8, $f4
    swc1    $f10, 0x0008(s1)           # 00000058
    lh      t6, 0x0066($sp)
    lwc1    $f6, 0x0008(s0)            # 00000008
    lh      t7, 0x0064($sp)
    addiu   t8, t6, 0x8001             # t8 = FFFF8001
    sh      t8, 0x007A($sp)
    swc1    $f6, 0x0074($sp)
    jal     func_800359A8
    sh      t7, 0x0078($sp)
    lwc1    $f8, 0x0004(s0)            # 00000004
    lw      a0, 0x0030($sp)
    or      a1, s1, $zero              # a1 = 00000050
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFCC
    jal     func_800359A8
    swc1    $f8, 0x0074($sp)
    addiu   v0, s0, 0x0094             # v0 = 00000094
lbl_80040EA0:
    lwc1    $f10, 0x0000(v0)           # 00000094
    lwc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f12, 0x001C(s0)           # 0000001C
    sub.s   $f6, $f4, $f10
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lui     a2, 0x3E80                 # a2 = 3E800000
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f6, 0x00E4(s0)            # 000000E4
    lwc1    $f4, 0x0004(v0)            # 00000098
    lwc1    $f6, 0x0058(s0)            # 00000058
    sub.s   $f10, $f8, $f4
    swc1    $f10, 0x00E8(s0)           # 000000E8
    lwc1    $f8, 0x0008(v0)            # 0000009C
    sub.s   $f4, $f6, $f8
    jal     func_8003569C
    swc1    $f4, 0x00EC(s0)            # 000000EC
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f0, 0x00FC(s0)            # 000000FC
    sh      $zero, 0x015A(s0)          # 0000015A
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f10, 0x0100(s0)           # 00000100
lbl_80040EF8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80040F0C:
# SUBJ4()
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lh      t6, 0x0142(s1)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s1)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFB4
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lh      t2, 0x0000(v0)             # 00000000
    sh      t2, 0x0000(s1)             # 00000000
    lw      v1, 0x008C(s1)             # 0000008C
    lw      t3, 0x01DC(v1)             # 000001DC
    bne     t3, $zero, lbl_80040F84
    nop
    lh      t4, 0x0164(s1)             # 00000164
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t5, t4, 0x0050             # t5 = 00000050
    sw      t5, 0x01DC(v1)             # 000001DC
    lwc1    $f4, 0x00D8(s1)            # 000000D8
    b       lbl_80041524
    swc1    $f4, 0x0028(s1)            # 00000028
lbl_80040F84:
    jal     func_800226D8
    lw      a1, 0x0090(s1)             # 00000090
    addiu   s2, s1, 0x0050             # s2 = 00000050
    addiu   s3, s1, 0x005C             # s3 = 0000005C
    or      a2, s3, $zero              # a2 = 0000005C
    or      a1, s2, $zero              # a1 = 00000050
    jal     func_80067A84
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFA4
    lh      t6, 0x0000(s1)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s1, $zero              # a0 = 00000000
    sw      t6, -0x0E58($at)           # 800EF1A8
    lh      t7, 0x015E(s1)             # 0000015E
    bnel    t7, $zero, lbl_80041114
    addiu   s0, s1, 0x0004             # s0 = 00000004
    jal     func_800365B0
    addiu   a1, $sp, 0x00AA            # a1 = FFFFFFF2
    addiu   s0, s1, 0x0004             # s0 = 00000004
    sw      v0, 0x00A4($sp)
    or      a0, s0, $zero              # a0 = 00000004
    jal     func_80035940
    addiu   a1, v0, 0x0006             # a1 = 00000006
    lhu     t9, 0x00AA($sp)
    lw      t0, 0x00A4($sp)
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFE0
    sll     t8, t9,  2
    subu    t8, t8, t9
    sll     t8, t8,  1
    addu    a1, t8, t0
    jal     func_80035940
    addiu   a1, a1, 0xFFF4             # a1 = FFFFFFF4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   t1, $zero, 0x238C          # t1 = 0000238C
    sh      t1, 0x0068($sp)
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFE0
    or      a1, s0, $zero              # a1 = 00000004
    jal     func_80036808
    swc1    $f6, 0x0064($sp)
    addiu   a0, s1, 0x0094             # a0 = 00000094
    sh      v0, 0x006A($sp)
    sw      a0, 0x0034($sp)
    jal     func_80067580
    or      a1, s0, $zero              # a1 = 00000004
    lw      a0, 0x0034($sp)
    addiu   a1, $sp, 0x0098            # a1 = FFFFFFE0
    jal     func_80067580
    swc1    $f0, 0x0088($sp)
    lwc1    $f2, 0x0088($sp)
    lwc1    $f10, 0x0098($sp)
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_800410B4
    lwc1    $f4, 0x0000(s0)            # 00000004
    lwc1    $f8, 0x0000(s0)            # 00000004
    lwc1    $f10, 0x0098($sp)
    lwc1    $f6, 0x0004(s0)            # 00000008
    addiu   t2, $sp, 0x0098            # t2 = FFFFFFE0
    sub.s   $f4, $f8, $f10
    swc1    $f4, 0x000C(s0)            # 00000010
    lwc1    $f8, 0x009C($sp)
    lwc1    $f4, 0x0008(s0)            # 0000000C
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0010(s0)           # 00000014
    lwc1    $f6, 0x00A0($sp)
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0014(s0)            # 00000018
    lw      t4, 0x0000(t2)             # FFFFFFE0
    sw      t4, 0x0000(s0)             # 00000004
    lw      t3, 0x0004(t2)             # FFFFFFE4
    sw      t3, 0x0004(s0)             # 00000008
    lw      t4, 0x0008(t2)             # FFFFFFE8
    b       lbl_800410E8
    sw      t4, 0x0008(s0)             # 0000000C
    lwc1    $f4, 0x0000(s0)            # 00000004
lbl_800410B4:
    sub.s   $f6, $f10, $f4
    lwc1    $f10, 0x0004(s0)           # 00000008
    swc1    $f6, 0x000C(s0)            # 00000010
    lwc1    $f8, 0x009C($sp)
    sub.s   $f4, $f8, $f10
    lwc1    $f8, 0x0008(s0)            # 0000000C
    swc1    $f4, 0x0010(s0)            # 00000014
    lwc1    $f6, 0x00A0($sp)
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0014(s0)           # 00000018
    lh      t5, 0x006A($sp)
    addiu   t6, t5, 0x8001             # t6 = FFFF8001
    sh      t6, 0x006A($sp)
lbl_800410E8:
    lh      t7, 0x006A($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t9, 0x0032(s0)             # 00000036
    sh      $zero, 0x002C(s0)          # 00000030
    sh      $zero, 0x002E(s0)          # 00000032
    sh      t7, 0x0030(s0)             # 00000034
    swc1    $f4, 0x0028(s0)            # 0000002C
    lh      t8, 0x015E(s1)             # 0000015E
    addiu   t0, t8, 0x0001             # t0 = 00000001
    sh      t0, 0x015E(s1)             # 0000015E
    addiu   s0, s1, 0x0004             # s0 = 00000004
lbl_80041114:
    lh      t1, 0x0032(s0)             # 00000036
    addiu   t2, $zero, 0x238C          # t2 = 0000238C
    addiu   a0, $sp, 0x008C            # a0 = FFFFFFD4
    beq     t1, $zero, lbl_800412AC
    lui     $at, 0x3F00                # $at = 3F000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    sh      t2, 0x0068($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFB4
    swc1    $f6, 0x0064($sp)
    lh      t3, 0x0030(s0)             # 00000034
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFAC
    jal     func_800359A8
    sh      t3, 0x006A($sp)
    lh      t4, 0x0032(s0)             # 00000036
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mtc1    t4, $f8                    # $f8 = 0.00
    lwc1    $f0, 0x0000(s2)            # 00000050
    lwc1    $f6, 0x008C($sp)
    cvt.s.w $f10, $f8
    lwc1    $f12, 0x0004(s2)           # 00000054
    lwc1    $f14, 0x0008(s2)           # 00000058
    addiu   a3, s1, 0x0074             # a3 = 00000074
    or      a0, a3, $zero              # a0 = 00000074
    sub.s   $f8, $f6, $f0
    or      a1, s2, $zero              # a1 = 00000050
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFA4
    add.s   $f2, $f10, $f4
    div.s   $f10, $f8, $f2
    add.s   $f4, $f0, $f10
    swc1    $f4, 0x0000(s2)            # 00000050
    lwc1    $f6, 0x0090($sp)
    sub.s   $f8, $f6, $f12
    div.s   $f10, $f8, $f2
    add.s   $f4, $f12, $f10
    swc1    $f4, 0x0004(s2)            # 00000054
    lwc1    $f6, 0x0094($sp)
    sub.s   $f8, $f6, $f14
    div.s   $f10, $f8, $f2
    add.s   $f4, $f14, $f10
    swc1    $f4, 0x0008(s2)            # 00000058
    lwc1    $f6, 0x005C($sp)
    lh      t5, 0x007A($sp)
    lh      t8, 0x0062($sp)
    div.s   $f8, $f6, $f2
    addiu   t6, t5, 0x8001             # t6 = FFFF8001
    sll     t7, t6, 16
    sra     t9, t7, 16
    subu    t0, t9, t8
    sll     t1, t0, 16
    sra     t2, t1, 16
    lh      t7, 0x0060($sp)
    lh      t6, 0x0078($sp)
    subu    t9, t6, t7
    sll     t0, t9, 16
    sra     t1, t0, 16
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x005C($sp)
    lh      t3, 0x0032(s0)             # 00000036
    div     $zero, t2, t3
    mflo    t4
    addu    t5, t8, t4
    bne     t3, $zero, lbl_8004121C
    nop
    break   # 0x01C00
lbl_8004121C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_80041234
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_80041234
    nop
    break   # 0x01800
lbl_80041234:
    sh      t5, 0x0062($sp)
    lh      t2, 0x0032(s0)             # 00000036
    sw      a3, 0x0034($sp)
    div     $zero, t1, t2
    mflo    t3
    addu    t8, t7, t3
    bne     t2, $zero, lbl_80041258
    nop
    break   # 0x01C00
lbl_80041258:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_80041270
    lui     $at, 0x8000                # $at = 80000000
    bne     t1, $at, lbl_80041270
    nop
    break   # 0x01800
lbl_80041270:
    sh      t8, 0x0060($sp)
    jal     func_800359A8
    nop
    lw      a3, 0x0034($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t5, 0x0000(a3)             # 00000000
    sw      t5, 0x0000(s3)             # 0000005C
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0004(s3)             # 00000060
    lw      t5, 0x0008(a3)             # 00000008
    sw      t5, 0x0008(s3)             # 00000064
    lh      t6, 0x0032(s0)             # 00000036
    addiu   t9, t6, 0xFFFF             # t9 = FFFFFFFF
    b       lbl_80041524
    sh      t9, 0x0032(s0)             # 00000036
lbl_800412AC:
    lwc1    $f4, 0x0024(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFB4
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_800412D0
    nop
    b       lbl_80041524
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800412D0:
    jal     func_800226D8
    lw      a1, 0x0090(s1)             # 00000090
    addiu   a3, s1, 0x0074             # a3 = 00000074
    or      a2, a3, $zero              # a2 = 00000074
    sw      a3, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000004
    jal     func_800A4A7C
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFB4
    lw      a1, 0x0034($sp)
    lwc1    $f10, 0x000C(s0)           # 00000010
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f8, 0x0000(a1)            # 00000000
    addiu   t7, $zero, 0x238C          # t7 = 0000238C
    addiu   a0, $sp, 0x0098            # a0 = FFFFFFE0
    add.s   $f4, $f8, $f10
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFAC
    swc1    $f4, 0x0000(s2)            # 00000050
    lwc1    $f8, 0x0010(s0)            # 00000014
    lwc1    $f6, 0x0004(a1)            # 00000004
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(s2)           # 00000054
    lwc1    $f6, 0x0014(s0)            # 00000018
    lwc1    $f4, 0x0008(a1)            # 00000008
    mtc1    $at, $f10                  # $f10 = 5.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(s2)            # 00000058
    lw      t1, 0x0000(a1)             # 00000000
    sw      t1, 0x0000(s3)             # 0000005C
    lw      t0, 0x0004(a1)             # 00000004
    sw      t0, 0x0004(s3)             # 00000060
    lw      t1, 0x0008(a1)             # 00000008
    sw      t1, 0x0008(s3)             # 00000064
    lh      t2, 0x0030(s0)             # 00000034
    sh      t7, 0x0068($sp)
    swc1    $f10, 0x0064($sp)
    jal     func_800359A8
    sh      t2, 0x006A($sp)
    lh      t3, 0x002C(s0)             # 00000030
    addiu   t8, t3, 0x0BB8             # t8 = 00000BB8
    sh      t8, 0x002C(s0)             # 00000030
    jal     func_80063684              # coss?
    lh      a0, 0x002C(s0)             # 00000030
    lwc1    $f12, 0x0000(s3)           # 0000005C
    lwc1    $f4, 0x0098($sp)
    mov.s   $f16, $f0
    abs.s   $f0, $f0
    sub.s   $f6, $f4, $f12
    lw      a3, 0x0034($sp)
    lwc1    $f14, 0x0004(s3)           # 00000060
    lwc1    $f2, 0x0008(s3)            # 00000064
    mul.s   $f8, $f6, $f0
    abs.s   $f0, $f16
    add.s   $f10, $f12, $f8
    swc1    $f10, 0x0000(s3)           # 0000005C
    lwc1    $f4, 0x009C($sp)
    sub.s   $f6, $f4, $f14
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f14, $f8
    swc1    $f10, 0x0004(s3)           # 00000060
    lwc1    $f4, 0x00A0($sp)
    sub.s   $f6, $f4, $f2
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0008(s3)           # 00000064
    lwc1    $f18, 0x0028(s0)           # 0000002C
    c.lt.s  $f18, $f16
    nop
    bc1fl   lbl_80041430
    c.lt.s  $f16, $f18
    lh      t4, 0x002E(s0)             # 00000032
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    bnel    t4, $zero, lbl_80041430
    c.lt.s  $f16, $f18
    lw      v0, 0x0090(s1)             # 00000090
    sh      t5, 0x002E(s0)             # 00000032
    lui     a2, 0x4080                 # a2 = 40800000
    lhu     a1, 0x088E(v0)             # 0000088E
    swc1    $f16, 0x0080($sp)
    sw      a3, 0x0034($sp)
    addiu   a1, a1, 0x08B0             # a1 = 000008B0
    andi    a1, a1, 0xFFFF             # a1 = 000008B0
    jal     func_800C4D58
    addiu   a0, v0, 0x00E4             # a0 = 000000E4
    lw      a3, 0x0034($sp)
    lwc1    $f16, 0x0080($sp)
    b       lbl_80041444
    swc1    $f16, 0x0028(s0)           # 0000002C
    c.lt.s  $f16, $f18
lbl_80041430:
    nop
    bc1fl   lbl_80041444
    swc1    $f16, 0x0028(s0)           # 0000002C
    sh      $zero, 0x002E(s0)          # 00000032
    swc1    $f16, 0x0028(s0)           # 0000002C
lbl_80041444:
    lw      t6, 0x0090(s1)             # 00000090
    lw      t0, 0x0000(a3)             # 00000000
    lui     $at, 0x8010                # $at = 80100000
    sw      t0, 0x0024(t6)             # 00000024
    lw      t9, 0x0004(a3)             # 00000004
    sw      t9, 0x0028(t6)             # 00000028
    lw      t0, 0x0008(a3)             # 00000008
    sw      t0, 0x002C(t6)             # 0000002C
    lw      t1, 0x0090(s1)             # 00000090
    lwc1    $f4, 0x0104(s1)            # 00000104
    swc1    $f4, 0x0028(t1)            # 00000028
    lw      t7, 0x0090(s1)             # 00000090
    lh      t2, 0x006A($sp)
    sh      t2, 0x00B6(t7)             # 000000B6
    lwc1    $f8, 0x6EB8($at)           # 80106EB8
    lwc1    $f6, 0x0024(s0)            # 00000028
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f4                   # $f4 = 240.00
    mul.s   $f10, $f6, $f8
    lh      t3, 0x0030(s0)             # 00000034
    mul.s   $f6, $f4, $f16
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    mul.s   $f16, $f6, $f10
    add.s   $f6, $f4, $f16
    trunc.w.s $f10, $f6
    mfc1    a0, $f10
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, 0x005A($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f6, 0x0000(s3)            # 0000005C
    lh      a0, 0x005A($sp)
    mul.s   $f4, $f0, $f8
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x0000(s2)           # 00000050
    lwc1    $f8, 0x0004(s3)            # 00000060
    jal     func_80063684              # coss?
    swc1    $f8, 0x0004(s2)            # 00000054
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f10, 0x0008(s3)           # 00000064
    or      a0, $zero, $zero           # a0 = 00000000
    mul.s   $f6, $f0, $f4
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    add.s   $f8, $f6, $f10
    swc1    $f8, 0x0008(s2)            # 00000058
    jal     func_80035724
    lh      a1, 0x015A(s1)             # 0000015A
    sh      v0, 0x015A(s1)             # 0000015A
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80041524:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_80041540:
# SUBJ0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80041560:
# DATA0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80041580:
# DATA1()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A14              # NORM1()
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800415A0:
# DATA2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800415C0:
# DATA3()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800415E0:
# DATA4()
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    mov.s   $f2, $f0
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6EBC($at)           # 80106EBC
    lui     $at, 0x4288                # $at = 42880000
    lh      t2, 0x0000(v0)             # 00000000
    mtc1    $at, $f18                  # $f18 = 68.00
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t2, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    cvt.s.w $f6, $f4
    div.s   $f4, $f18, $f2
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x6EC0($at)           # 80106EC0
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f16, $f10, $f2
    lwc1    $f10, 0x6EC4($at)          # 80106EC4
    mul.s   $f8, $f4, $f6
    sub.s   $f18, $f10, $f8
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0000(s0)            # 00000000
    lh      t3, -0x0004(v0)            # 00000004
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    swc1    $f10, 0x0004(s0)           # 00000004
    lh      t4, 0x0000(v0)             # 00000008
    sh      t4, 0x0008(s0)             # 00000008
    jal     func_80036500
    swc1    $f2, 0x0038($sp)
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    or      a0, s1, $zero              # a0 = 0000000C
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x0054($sp)
    lw      a2, 0x0054($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lwl     t6, 0x0006(a2)             # 00000006
    lwr     t6, 0x0009(a2)             # 00000009
    swl     t6, 0x000C(s1)             # 00000018
    swr     t6, 0x000F(s1)             # 0000001B
    lhu     t6, 0x000A(a2)             # 0000000A
    sh      t6, 0x0010(s1)             # 0000001C
    lh      v1, 0x000C(a2)             # 0000000C
    beq     v1, $at, lbl_80041714
    sh      v1, 0x001C(s1)             # 00000028
    lh      v0, 0x001C(s1)             # 00000028
    slti    $at, v0, 0x0169
    beql    $at, $zero, lbl_80041700
    mtc1    v0, $f18                   # $f18 = 0.00
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    b       lbl_80041714
    swc1    $f16, 0x0004(s0)           # 00000004
    mtc1    v0, $f18                   # $f18 = 0.00
lbl_80041700:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6EC8($at)           # 80106EC8
    cvt.s.w $f4, $f18
    mul.s   $f10, $f4, $f6
    swc1    $f10, 0x0004(s0)           # 00000004
lbl_80041714:
    lh      t7, 0x000E(a2)             # 0000000E
    addiu   t9, s0, 0x005C             # t9 = 0000005C
    or      a0, s0, $zero              # a0 = 00000000
    sh      t7, 0x001E(s1)             # 0000002A
    sw      t9, 0x0028($sp)
    lw      t1, 0x0000(s1)             # 0000000C
    sw      t1, 0x0000(t9)             # 0000005C
    lw      t0, 0x0004(s1)             # 00000010
    sw      t0, 0x0004(t9)             # 00000060
    lw      t1, 0x0008(s1)             # 00000014
    sw      t1, 0x0008(t9)             # 00000064
    lh      t2, 0x0008(s0)             # 00000008
    lui     $at, 0x800F                # $at = 800F0000
    sw      t2, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_80041760
    addiu   t3, v0, 0x0001             # t3 = 00000001
    jal     func_80035910
    sh      t3, 0x015E(s0)             # 0000015E
lbl_80041760:
    addiu   a1, s0, 0x0050             # a1 = 00000050
    sw      a1, 0x0024($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFDC
    jal     func_80067A84
    addiu   a2, s0, 0x0074             # a2 = 00000074
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFDC
    lw      a2, 0x0000(s0)             # 00000000
    jal     func_80037258
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFEC
    lw      a1, 0x0028($sp)
    jal     func_80067A84
    lw      a2, 0x0024($sp)
    lwc1    $f8, 0x0074($sp)
    lh      t3, 0x007A($sp)
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFE4
    swc1    $f8, 0x006C($sp)
    lh      t4, 0x001E(s1)             # 0000002A
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_800417FC
    sh      t3, 0x0072($sp)
    lh      t6, 0x012C(s0)             # 0000012C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6ECC($at)           # 80106ECC
    mtc1    t6, $f16                   # $f16 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    cvt.s.w $f18, $f16
    lh      t1, 0x000E(s1)             # 0000001A
    mul.s   $f6, $f18, $f4
    add.s   $f8, $f6, $f10
    trunc.w.s $f16, $f8
    mfc1    t0, $f16
    nop
    addu    t2, t0, t1
    b       lbl_800417FC
    sh      t2, 0x0072($sp)
    sh      t3, 0x0072($sp)
lbl_800417FC:
    lh      t4, 0x001E(s1)             # 0000002A
    lh      t3, 0x0078($sp)
    andi    t5, t4, 0x0002             # t5 = 00000000
    beql    t5, $zero, lbl_80041854
    sh      t3, 0x0070($sp)
    lh      t6, 0x012E(s0)             # 0000012E
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6ED0($at)           # 80106ED0
    mtc1    t6, $f18                   # $f18 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    cvt.s.w $f4, $f18
    lh      t1, 0x000C(s1)             # 00000018
    mul.s   $f10, $f4, $f6
    add.s   $f16, $f10, $f8
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    addu    t2, t0, t1
    b       lbl_80041854
    sh      t2, 0x0070($sp)
    sh      t3, 0x0070($sp)
lbl_80041854:
    lw      a0, 0x0024($sp)
    jal     func_800359A8
    lw      a1, 0x0028($sp)
    lw      t5, 0x0094(s0)             # 00000094
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFC0
    sw      t5, 0x0000(a0)             # FFFFFFC0
    lw      t4, 0x0098(s0)             # 00000098
    sw      t4, 0x0004(a0)             # FFFFFFC4
    lw      t5, 0x009C(s0)             # 0000009C
    sw      t5, 0x0008(a0)             # FFFFFFC8
    lwc1    $f4, 0x004C($sp)
    lwc1    $f6, 0x0038($sp)
    lw      a1, 0x0028($sp)
    add.s   $f10, $f4, $f6
    jal     func_80067580
    swc1    $f10, 0x004C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f16, 0x0004(s0)           # 00000004
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f0, 0x00DC(s0)            # 000000DC
    sh      $zero, 0x015A(s0)          # 0000015A
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f8, 0x00D8(s0)            # 000000D8
    swc1    $f16, 0x00FC(s0)           # 000000FC
    swc1    $f18, 0x0100(s0)           # 00000100
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_800418CC:
# UNIQ1()
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x6ED4($at)          # 80106ED4
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6ED8($at)           # 80106ED8
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x6EDC($at)          # 80106EDC
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t2, $f18                   # $f18 = 0.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFCC
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    addiu   v0, v0, 0x0018             # v0 = 00000018
    cvt.s.w $f4, $f18
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f6, $f4, $f12
    sub.s   $f2, $f16, $f10
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0000(s0)           # 00000000
    lh      t3, -0x0014(v0)            # 00000004
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f12
    nop
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0004(s0)            # 00000004
    lh      t4, -0x0010(v0)            # 00000008
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f12
    nop
    mul.s   $f4, $f18, $f0
    nop
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0008(s0)            # 00000008
    lh      t5, -0x000C(v0)            # 0000000C
    lwc1    $f10, 0x6EE0($at)          # 80106EE0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x800F                # $at = 800F0000
    cvt.s.w $f16, $f8
    mul.s   $f18, $f16, $f10
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x0018(s0)             # 00000018
    lh      t9, -0x0008(v0)            # 00000010
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    swc1    $f10, 0x0010(s0)           # 00000010
    lh      t8, -0x0004(v0)            # 00000014
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f12
    swc1    $f6, 0x0014(s0)            # 00000014
    lh      t0, 0x0000(v0)             # 00000018
    sh      t0, 0x001A(s0)             # 0000001A
    sw      t1, -0x0E10($at)           # 800EF1F0
    sw      a1, 0x002C($sp)
    jal     func_80067A84
    sw      a2, 0x0030($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0028($sp)
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFC4
    jal     func_80067A84
    lw      a1, 0x002C($sp)
    lh      t2, 0x001A(s0)             # 0000001A
    lui     $at, 0x800F                # $at = 800F0000
    sw      t2, -0x0E58($at)           # 800EF1A8
    lh      t3, 0x015E(s0)             # 0000015E
    bnel    t3, $zero, lbl_80041B54
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFAC
    lwc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f16, 0x00F4(s0)           # 000000F4
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   s1, s0, 0x001C             # s1 = 0000001C
    sub.s   $f10, $f8, $f16
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFE8
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFD4
    addiu   a1, s0, 0x0094             # a1 = 00000094
    swc1    $f10, 0x00E8(s0)           # 000000E8
    lh      t4, 0x0072($sp)
    swc1    $f18, 0x0000(s1)           # 0000001C
    sh      t4, 0x0004(s1)             # 00000020
    lw      t5, 0x0090(s0)             # 00000090
    lw      t7, 0x08F8(t5)             # 000008F8
    sw      t7, 0x0000(a2)             # FFFFFFE8
    lw      t6, 0x08FC(t5)             # 000008FC
    sw      t6, 0x0004(a2)             # FFFFFFEC
    lw      t7, 0x0900(t5)             # 00000900
    jal     func_80067A84
    sw      t7, 0x0008(a2)             # FFFFFFF0
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sh      t9, 0x0008(s1)             # 00000024
    lh      t0, 0x007A($sp)
    lh      t8, 0x0082($sp)
    subu    v1, t8, t0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80041AE4
    subu    v0, $zero, v1
    b       lbl_80041AE4
    or      v0, v1, $zero              # v0 = 00000000
lbl_80041AE4:
    slti    $at, v0, 0x3A98
    beql    $at, $zero, lbl_80041AFC
    lh      t1, 0x0008(s1)             # 00000024
    b       lbl_80041B44
    sh      $zero, 0x0006(s1)          # 00000022
    lh      t1, 0x0008(s1)             # 00000024
lbl_80041AFC:
    div     $zero, v1, t1
    bne     t1, $zero, lbl_80041B0C
    nop
    break   # 0x01C00
lbl_80041B0C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80041B24
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_80041B24
    nop
    break   # 0x01800
lbl_80041B24:
    mflo    t2
    bgez    t2, lbl_80041B38
    sra     t3, t2,  2
    addiu   $at, t2, 0x0003            # $at = 00000003
    sra     t3, $at,  2
lbl_80041B38:
    sll     t4, t3,  2
    subu    t4, t4, t3
    sh      t4, 0x0006(s1)             # 00000022
lbl_80041B44:
    lh      t5, 0x015E(s0)             # 0000015E
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x015E(s0)             # 0000015E
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFAC
lbl_80041B54:
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_80022670
    addiu   s1, s0, 0x001C             # s1 = 0000001C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f14, 0x00C8(s0)           # 000000C8
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00C8(s0)            # 000000C8
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f14, 0x00C4(s0)           # 000000C4
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lui     $at, 0x8010                # $at = 80100000
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    lwc1    $f12, 0x6EE4($at)          # 80106EE4
    lwc1    $f14, 0x00CC(s0)           # 000000CC
    jal     func_8003569C
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x00CC(s0)            # 000000CC
    lui     $at, 0x8010                # $at = 80100000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f12, 0x6EE8($at)          # 80106EE8
    jal     func_8003569C
    lwc1    $f14, 0x00D0(s0)           # 000000D0
    swc1    $f0, 0x00D0(s0)            # 000000D0
    lui     $at, 0x8010                # $at = 80100000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lwc1    $f12, 0x6EEC($at)          # 80106EEC
    jal     func_8003569C
    lwc1    $f14, 0x00D4(s0)           # 000000D4
    swc1    $f0, 0x00D4(s0)            # 000000D4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFC4
    lw      a2, 0x0000(s0)             # 00000000
    jal     func_80037258
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a0, $sp, 0x0084            # a0 = FFFFFFDC
    lw      a1, 0x002C($sp)
    jal     func_80067A84
    lw      a2, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0084($sp)
    lw      a2, 0x0004(s0)             # 00000004
    jal     func_80038060
    lw      a3, 0x0008(s0)             # 00000008
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f6, 0x00C4(s0)            # 000000C4
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lh      a0, 0x0018(s0)             # 00000018
    div.s   $f8, $f4, $f6
    lh      a1, 0x0070($sp)
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    mfc1    a2, $f8
    jal     func_80035724
    nop
    sll     v1, v0, 16
    slti    $at, v0, 0x38A5
    bne     $at, $zero, lbl_80041C80
    sra     v1, v1, 16
    addiu   v1, $zero, 0x38A4          # v1 = 000038A4
lbl_80041C80:
    slti    $at, v1, 0xC75C
    beq     $at, $zero, lbl_80041C94
    sh      v1, 0x0088($sp)
    addiu   v1, $zero, 0xC75C          # v1 = FFFFC75C
    sh      v1, 0x0088($sp)
lbl_80041C94:
    lh      v0, 0x0008(s1)             # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    beql    v0, $zero, lbl_80041CC4
    lh      a0, 0x0004(s1)             # 00000020
    lh      t7, 0x0004(s1)             # 00000020
    lh      t9, 0x0006(s1)             # 00000022
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0008(s1)             # 00000024
    addu    t8, t7, t9
    sh      t8, 0x0004(s1)             # 00000020
    lh      a0, 0x0004(s1)             # 00000020
lbl_80041CC4:
    jal     func_800357B8
    lh      a1, 0x0072($sp)
    sh      v0, 0x008A($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFDC
    lw      t1, 0x0028($sp)
    lw      a2, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0000(a2)             # 00000000
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0004(a2)             # 00000004
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0008(a2)             # 00000008
    jal     func_80035CBC
    lw      a1, 0x002C($sp)
    lwc1    $f12, 0x0010(s0)           # 00000010
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lw      a2, 0x00D4(s0)             # 000000D4
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00FC(s0)            # 000000FC
    sh      $zero, 0x015A(s0)          # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0014(s0)             # 00000014
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80041D50:
# UNIQ2()
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    addiu   s1, s0, 0x0050             # s1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    swc1    $f0, 0x0048($sp)
    sw      a2, 0x003C($sp)
    or      a1, s1, $zero              # a1 = 00000050
    jal     func_80067A84
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFD8
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x6EF0($at)           # 80106EF0
    lui     $at, 0x4288                # $at = 42880000
    lh      t2, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0048($sp)
    mul.s   $f10, $f6, $f8
    mtc1    $at, $f8                   # $f8 = 68.00
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f6, $f10, $f4
    div.s   $f10, $f8, $f4
    lwc1    $f8, 0x6EF4($at)           # 80106EF4
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f4, $f10, $f8
    lwc1    $f10, 0x6EF8($at)          # 80106EF8
    sub.s   $f8, $f10, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(s0)           # 00000000
    lh      t3, -0x0008(v0)            # 00000004
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t4, -0x0004(v0)            # 00000008
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0008(s0)           # 00000008
    lh      t5, 0x0000(v0)             # 0000000C
    addiu   v0, s0, 0x0010             # v0 = 00000010
    sh      t5, 0x000C(s0)             # 0000000C
    lh      t6, 0x000C(s0)             # 0000000C
    lui     $at, 0x800F                # $at = 800F0000
    sw      t6, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    beql    v1, $zero, lbl_80041E60
    lh      t8, 0x000C(s0)             # 0000000C
    lh      t7, 0x000C(s0)             # 0000000C
    lh      t9, 0x0004(v0)             # 00000014
    beq     t7, t9, lbl_80041E6C
    nop
    lh      t8, 0x000C(s0)             # 0000000C
lbl_80041E60:
    addiu   v0, s0, 0x0010             # v0 = 00000010
    sh      t8, 0x0004(v0)             # 00000014
    lh      v1, 0x015E(s0)             # 0000015E
lbl_80041E6C:
    bne     v1, $zero, lbl_80041EB4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x015E(s0)             # 0000015E
    sw      v0, 0x0034($sp)
    jal     func_80035910
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4348                # $at = 43480000
    lw      v0, 0x0034($sp)
    mtc1    $at, $f4                   # $f4 = 200.00
    nop
    swc1    $f4, 0x0000(v0)            # 00000000
    lh      t1, 0x000C(s0)             # 0000000C
    andi    t2, t1, 0x0010             # t2 = 00000000
    beql    t2, $zero, lbl_80041EB8
    lw      t7, 0x0094(s0)             # 00000094
    lh      t3, 0x014C(s0)             # 0000014C
    andi    t4, t3, 0xFFFB             # t4 = 00000000
    sh      t4, 0x014C(s0)             # 0000014C
lbl_80041EB4:
    lw      t7, 0x0094(s0)             # 00000094
lbl_80041EB8:
    addiu   t5, $sp, 0x0070            # t5 = FFFFFFE8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      t7, 0x0000(t5)             # FFFFFFE8
    lw      t6, 0x0098(s0)             # 00000098
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFE0
    or      a1, s1, $zero              # a1 = 00000050
    sw      t6, 0x0004(t5)             # FFFFFFEC
    lw      t7, 0x009C(s0)             # 0000009C
    sw      t7, 0x0008(t5)             # FFFFFFF0
    lh      t9, 0x000C(s0)             # 0000000C
    lwc1    $f6, 0x0070($sp)
    andi    t8, t9, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80041F00
    lwc1    $f16, 0x00E0(s0)           # 000000E0
    mtc1    $at, $f16                  # $f16 = 1.00
    b       lbl_80041F04
    lwc1    $f0, 0x0000(s1)            # 00000050
    lwc1    $f16, 0x00E0(s0)           # 000000E0
lbl_80041F00:
    lwc1    $f0, 0x0000(s1)            # 00000050
lbl_80041F04:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6EFC($at)          # 80106EFC
    sub.s   $f8, $f6, $f0
    lwc1    $f2, 0x0004(s1)            # 00000054
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x0008(s1)           # 00000058
    mul.s   $f10, $f8, $f16
    nop
    mul.s   $f4, $f10, $f18
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0000(s1)            # 00000050
    lwc1    $f10, 0x0048($sp)
    lwc1    $f8, 0x0074($sp)
    lwc1    $f6, 0x0000(s0)            # 00000000
    add.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x6F00($at)           # 80106F00
    lui     $at, 0x4000                # $at = 40000000
    sub.s   $f10, $f8, $f2
    mul.s   $f6, $f10, $f4
    add.s   $f8, $f2, $f6
    swc1    $f8, 0x0004(s1)            # 00000054
    lwc1    $f10, 0x0078($sp)
    sub.s   $f4, $f10, $f12
    mul.s   $f6, $f4, $f16
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f8, $f6, $f18
    add.s   $f10, $f12, $f8
    swc1    $f10, 0x0008(s1)           # 00000058
    lwc1    $f14, 0x0000(v0)           # 00000000
    lwc1    $f8, 0x6F04($at)           # 80106F04
    sub.s   $f6, $f4, $f14
    mul.s   $f10, $f6, $f8
    add.s   $f4, $f14, $f10
    swc1    $f4, 0x0000(v0)            # 00000000
    lh      v1, 0x000C(s0)             # 0000000C
    andi    t0, v1, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80041FF4
    andi    t1, v1, 0x0002             # t1 = 00000000
    jal     func_80067A84
    addiu   a2, s0, 0x0074             # a2 = 00000074
    lwc1    $f6, 0x0004(s0)            # 00000004
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE8
    or      a1, s1, $zero              # a1 = 00000050
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFE0
    jal     func_800359A8
    swc1    $f6, 0x0068($sp)
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6F08($at)           # 80106F08
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE8
    lw      a1, 0x003C($sp)
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
    b       lbl_800420A0
    or      a0, s0, $zero              # a0 = 00000000
lbl_80041FF4:
    beq     t1, $zero, lbl_8004209C
    or      a0, s1, $zero              # a0 = 00000050
    addiu   a1, s0, 0x0074             # a1 = 00000074
    jal     func_80067620
    sw      a1, 0x0034($sp)
    lwc1    $f10, 0x0004(s0)           # 00000004
    lw      a2, 0x0034($sp)
    lui     $at, 0x3E80                # $at = 3E800000
    c.lt.s  $f0, $f10
    lw      a0, 0x0034($sp)
    lw      a1, 0x003C($sp)
    bc1fl   lbl_80042084
    mtc1    $at, $f0                   # $f0 = 0.25
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFE0
    jal     func_80067A84
    or      a1, s1, $zero              # a1 = 00000050
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lh      a0, 0x006E($sp)
    lh      a1, 0x0066($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x006E($sp)
    lwc1    $f4, 0x0004(s0)            # 00000004
    sh      $zero, 0x006C($sp)
    lw      a0, 0x003C($sp)
    or      a1, s1, $zero              # a1 = 00000050
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFE0
    jal     func_800359A8
    swc1    $f4, 0x0068($sp)
    lw      t2, 0x0034($sp)
    lw      t3, 0x003C($sp)
    lwc1    $f6, 0x0004(t2)            # 00000004
    b       lbl_8004209C
    swc1    $f6, 0x0004(t3)            # 00000004
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_80042084:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6F0C($at)           # 80106F0C
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8003584C
    swc1    $f8, 0x0010($sp)
lbl_8004209C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_800420A0:
    or      a1, s1, $zero              # a1 = 00000050
    jal     func_80035CBC
    lw      a2, 0x003C($sp)
    or      a0, s1, $zero              # a0 = 00000050
    jal     func_80067580
    lw      a1, 0x003C($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    swc1    $f0, 0x00DC(s0)            # 000000DC
    sh      $zero, 0x015A(s0)          # 0000015A
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lwc1    $f12, 0x0008(s0)           # 00000008
    jal     func_8003569C
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lui     a1, 0x3F80                 # a1 = 3F800000
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80042108:
# UNIQ3()
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x005C($sp)
    lh      t6, 0x014C(s0)             # 0000014C
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    sh      t7, 0x014C(s0)             # 0000014C
    lh      t8, 0x0142(s0)             # 00000142
    lui     t0, 0x800F                 # t0 = 800F0000
    lh      t1, 0x0144(s0)             # 00000144
    sll     t9, t8,  3
    addu    t0, t0, t9
    lw      t0, -0x118C(t0)            # 800EEE74
    sll     t2, t1,  3
    addiu   t4, s0, 0x000C             # t4 = 0000000C
    addu    t3, t0, t2
    lw      v0, 0x0004(t3)             # 00000004
    sw      t4, 0x0028($sp)
    lui     $at, 0x8010                # $at = 80100000
    lh      t5, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x6F10($at)           # 80106F10
    lui     $at, 0x4288                # $at = 42880000
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    $at, $f18                  # $f18 = 68.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f6, $f4
    addiu   v0, v0, 0x0008             # v0 = 00000008
    div.s   $f4, $f18, $f0
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x6F14($at)           # 80106F14
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f16, $f10, $f0
    lwc1    $f10, 0x6F18($at)          # 80106F18
    mul.s   $f8, $f4, $f6
    sub.s   $f18, $f10, $f8
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0000(t4)            # 0000000C
    lh      t7, -0x0004(v0)            # 00000004
    lw      t8, 0x0028($sp)
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    swc1    $f10, 0x0004(t8)           # 00000004
    lw      t1, 0x0028($sp)
    lh      t9, 0x0000(v0)             # 00000008
    sh      t9, 0x0008(t1)             # 00000008
    lw      t0, 0x0028($sp)
    lh      t2, 0x0008(t0)             # 800F0008
    lui     $at, 0x800F                # $at = 800F0000
    sw      t2, -0x0E58($at)           # 800EF1A8
    lhu     t3, 0x015E(s0)             # 0000015E
    sltiu   $at, t3, 0x0006
    beq     $at, $zero, lbl_8004257C
    sll     t3, t3,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t3
    lw      t3, 0x6F1C($at)            # 80106F1C
    jr      t3
    nop
    jal     func_80035910
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x014C(s0)             # 0000014C
    lwc1    $f8, 0x00FC(s0)            # 000000FC
    addiu   v0, s0, 0x0018             # v0 = 00000018
    andi    t5, t4, 0xFFF3             # t5 = 00000000
    sh      t5, 0x014C(s0)             # 0000014C
    swc1    $f8, 0x0000(v0)            # 00000018
    sw      v0, 0x002C($sp)
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_80067580
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    lw      v0, 0x002C($sp)
    swc1    $f0, 0x0004(v0)            # 00000004
    lh      t6, 0x015E(s0)             # 0000015E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    lh      v0, 0x0006(s0)             # 00000006
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, s0, 0x0050             # t9 = 00000050
    slt     v1, $zero, v0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    bne     v1, $zero, lbl_800425F4
    sh      t8, 0x0006(s0)             # 00000006
    addiu   t1, s0, 0x005C             # t1 = 0000005C
    sw      t1, 0x0024($sp)
    jal     func_80036500
    sw      t9, 0x002C($sp)
    addiu   a0, s0, 0x0074             # a0 = 00000074
    sw      v0, 0x0054($sp)
    sw      a0, 0x0020($sp)
    jal     func_80035940
    or      a1, v0, $zero              # a1 = 00000000
    lw      t0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   t4, $sp, 0x004C            # t4 = FFFFFFE4
    lw      t3, 0x0000(t0)             # 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    sw      t3, 0x0000(a1)             # 00000000
    lw      t2, 0x0004(t0)             # 00000004
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF8
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0008(t0)             # 00000008
    sw      t3, 0x0008(a1)             # 00000008
    lw      t5, 0x0054($sp)
    lwl     t7, 0x0006(t5)             # 00000006
    lwr     t7, 0x0009(t5)             # 00000009
    sw      t7, 0x0000(t4)             # FFFFFFE4
    lhu     t7, 0x000A(t5)             # 0000000A
    sh      t7, 0x0004(t4)             # FFFFFFE8
    lh      t9, 0x004C($sp)
    lh      t8, 0x004E($sp)
    lw      a0, 0x002C($sp)
    subu    t1, $zero, t9
    sh      t1, 0x0064($sp)
    swc1    $f16, 0x0060($sp)
    jal     func_800359A8
    sh      t8, 0x0066($sp)
    lh      t0, 0x015E(s0)             # 0000015E
    addiu   t2, t0, 0x0001             # t2 = 00000001
    sh      t2, 0x015E(s0)             # 0000015E
    lw      t3, 0x0028($sp)
    lh      t4, 0x0008(t3)             # 00000008
    andi    t5, t4, 0x0004             # t5 = 00000000
    beql    t5, $zero, lbl_80042344
    lh      v0, 0x0008(s0)             # 00000008
    lw      t7, 0x0094(s0)             # 00000094
    lw      t6, 0x0098(s0)             # 00000098
    sw      t7, 0x0050(s0)             # 00000050
    lw      t7, 0x009C(s0)             # 0000009C
    sw      t6, 0x0054(s0)             # 00000054
    lwc1    $f10, 0x0054(s0)           # 00000054
    sw      t7, 0x0058(s0)             # 00000058
    lw      t8, 0x0028($sp)
    lwc1    $f18, 0x005C($sp)
    lwc1    $f4, 0x0000(t8)            # 00000000
    add.s   $f6, $f18, $f4
    add.s   $f8, $f10, $f6
    swc1    $f8, 0x0054(s0)            # 00000054
    lh      v0, 0x0008(s0)             # 00000008
lbl_80042344:
    slt     v1, $zero, v0
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    bne     v1, $zero, lbl_800425F4
    sh      t9, 0x0008(s0)             # 00000008
    lh      t1, 0x015E(s0)             # 0000015E
    addiu   t0, t1, 0x0001             # t0 = 00000001
    sh      t0, 0x015E(s0)             # 0000015E
    lh      t2, 0x014C(s0)             # 0000014C
    ori     t3, t2, 0x0410             # t3 = 00000411
    sh      t3, 0x014C(s0)             # 0000014C
    lh      t4, 0x014C(s0)             # 0000014C
    andi    t5, t4, 0x0008             # t5 = 00000000
    beql    t5, $zero, lbl_800425F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t6, 0x015E(s0)             # 0000015E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    lw      t8, 0x0028($sp)
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    lui     $at, 0x8010                # $at = 80100000
    lh      t9, 0x0008(t8)             # 00000008
    andi    t1, t9, 0x0002             # t1 = 00000002
    beql    t1, $zero, lbl_800423D8
    sh      t5, 0x000A(s0)             # 0000000A
    lh      t0, 0x014C(s0)             # 0000014C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    ori     t2, t0, 0x0004             # t2 = 00000005
    sh      t2, 0x014C(s0)             # 0000014C
    lh      t3, 0x014C(s0)             # 0000014C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t4, t3, 0xFFF7             # t4 = 00000411
    jal     func_800493C8
    sh      t4, 0x014C(s0)             # 0000014C
    b       lbl_800425F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t5, 0x000A(s0)             # 0000000A
lbl_800423D8:
    lwc1    $f16, 0x6F34($at)          # 00006F34
    lwc1    $f18, 0x00D8(s0)           # 000000D8
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f16, $f18
    nop
    bc1tl   lbl_800424B8
    lh      t6, 0x015E(s0)             # 0000015E
    lw      a0, -0x71E8(a0)            # 80118E18
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800424B4
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    beql    v0, $zero, lbl_800425F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800424B4:
    lh      t6, 0x015E(s0)             # 0000015E
lbl_800424B8:
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    lwc1    $f12, 0x0018(s0)           # 00000018
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t8, s0, 0x0050             # t8 = 00000050
    addiu   t9, s0, 0x005C             # t9 = 0000005C
    addiu   t1, s0, 0x0074             # t1 = 00000074
    sw      t1, 0x0020($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x002C($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_8003569C
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    swc1    $f0, 0x00FC(s0)            # 000000FC
    lw      a2, 0x0024($sp)
    lw      a1, 0x002C($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    jal     func_8003569C
    lwc1    $f14, 0x0060($sp)
    swc1    $f0, 0x0060($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x002C($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF8
    lw      t2, 0x0020($sp)
    lw      t0, 0x0024($sp)
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(t0)             # 00000000
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(t0)             # 00000004
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(t0)             # 00000008
    lh      a0, 0x000A(s0)             # 0000000A
    slt     v1, $zero, a0
    addiu   t5, a0, 0xFFFF             # t5 = FFFFFFFF
    bne     v1, $zero, lbl_800425F4
    sh      t5, 0x000A(s0)             # 0000000A
    lh      t6, 0x015E(s0)             # 0000015E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
lbl_8004257C:
    lh      t8, 0x014C(s0)             # 0000014C
    lh      a1, 0x0154(s0)             # 00000154
    addiu   v1, s0, 0x0094             # v1 = 00000094
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x014C(s0)             # 0000014C
    lh      t1, 0x014C(s0)             # 0000014C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t0, t1, 0xFFF7             # t0 = 00000000
    sh      t0, 0x014C(s0)             # 0000014C
    lw      t2, 0x0028($sp)
    lwc1    $f4, 0x0004(t2)            # 00000004
    swc1    $f4, 0x00FC(s0)            # 000000FC
    jal     func_800493C8
    sw      v1, 0x002C($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      v1, 0x002C($sp)
    lwc1    $f6, 0x0050(s0)            # 00000050
    swc1    $f10, 0x0100(s0)           # 00000100
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f18, 0x0054(s0)           # 00000054
    sub.s   $f16, $f6, $f8
    lwc1    $f6, 0x0058(s0)            # 00000058
    swc1    $f16, 0x00E4(s0)           # 000000E4
    lwc1    $f4, 0x0004(v1)            # 00000004
    sub.s   $f10, $f18, $f4
    swc1    $f10, 0x00E8(s0)           # 000000E8
    lwc1    $f8, 0x0008(v1)            # 00000008
    sub.s   $f16, $f6, $f8
    swc1    $f16, 0x00EC(s0)           # 000000EC
lbl_800425F4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800425F8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_8004260C:
# UNIQ0()
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lw      a2, 0x0090(s0)             # 00000090
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t1, t9,  3
    addiu   a1, s0, 0x000C             # a1 = 0000000C
    addu    t2, t8, t1
    lw      v0, 0x0004(t2)             # 00000004
    addiu   t4, s0, 0x0094             # t4 = 00000094
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x0000(v0)             # 00000000
    sh      t3, 0x0000(a1)             # 0000000C
    sw      t4, 0x0034($sp)
    lw      t9, 0x0000(t4)             # 00000094
    addiu   t5, $sp, 0x0070            # t5 = FFFFFFE8
    lui     $at, 0x800F                # $at = 800F0000
    sw      t9, 0x0000(t5)             # FFFFFFE8
    lw      t7, 0x0004(t4)             # 00000098
    sw      t7, 0x0004(t5)             # FFFFFFEC
    lw      t9, 0x0008(t4)             # 0000009C
    sw      t9, 0x0008(t5)             # FFFFFFF0
    lwc1    $f4, 0x0074($sp)
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x0074($sp)
    lh      t8, 0x0000(a1)             # 0000000C
    sw      t8, -0x0E58($at)           # 800EF1A8
    lh      t1, 0x015E(s0)             # 0000015E
    bnel    t1, $zero, lbl_80042838
    lw      t8, 0x066C(a2)             # 0000066C
    sw      a1, 0x0030($sp)
    jal     func_80035910
    sw      a2, 0x007C($sp)
    lh      t2, 0x014C(s0)             # 0000014C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0xFFFB             # t3 = 00000000
    jal     func_80036500
    sh      t3, 0x014C(s0)             # 0000014C
    addiu   a3, s0, 0x0010             # a3 = 00000010
    addiu   a0, a3, 0x0010             # a0 = 00000020
    sw      a0, 0x0024($sp)
    sw      a3, 0x002C($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x0064($sp)
    lw      t4, 0x0024($sp)
    lw      a2, 0x0064($sp)
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFB0
    lw      t6, 0x0000(t4)             # 00000000
    lw      a3, 0x002C($sp)
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    sw      t6, 0x0000(a0)             # FFFFFFB0
    lw      t5, 0x0004(t4)             # 00000004
    lw      t9, 0x0000(a0)             # FFFFFFB0
    addiu   t2, $sp, 0x005C            # t2 = FFFFFFD4
    sw      t5, 0x0004(a0)             # FFFFFFB4
    lw      t6, 0x0008(t4)             # 00000008
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sw      t6, 0x0008(a0)             # FFFFFFB8
    sw      t9, 0x0074(s0)             # 00000074
    lw      t7, 0x0004(a0)             # FFFFFFB4
    sw      t7, 0x0078(s0)             # 00000078
    lw      t9, 0x0008(a0)             # FFFFFFB8
    sw      t9, 0x007C(s0)             # 0000007C
    lw      t1, 0x0000(a0)             # FFFFFFB0
    sw      t1, 0x0000(a1)             # 0000005C
    lw      t8, 0x0004(a0)             # FFFFFFB4
    sw      t8, 0x0004(a1)             # 00000060
    lw      t1, 0x0008(a0)             # FFFFFFB8
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFE8
    sw      t1, 0x0008(a1)             # 00000064
    lwl     t4, 0x0006(a2)             # 00000006
    lwr     t4, 0x0009(a2)             # 00000009
    sw      t4, 0x0000(t2)             # FFFFFFD4
    lhu     t4, 0x000A(a2)             # 0000000A
    sh      t4, 0x0004(t2)             # FFFFFFD8
    lh      v1, 0x000C(a2)             # 0000000C
    beq     v1, t0, lbl_8004279C
    slti    $at, v1, 0x0169
    beql    $at, $zero, lbl_80042788
    mtc1    v1, $f16                   # $f16 = 0.00
    mtc1    v1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    b       lbl_8004279C
    swc1    $f10, 0x00FC(s0)           # 000000FC
    mtc1    v1, $f16                   # $f16 = 0.00
lbl_80042788:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6F38($at)           # 80106F38
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x00FC(s0)            # 000000FC
lbl_8004279C:
    lh      t5, 0x000E(a2)             # 0000000E
    sh      t5, 0x000C(a3)             # 0000000C
    lh      t6, 0x000C(a3)             # 0000000C
    bne     t0, t6, lbl_800427C0
    nop
    lh      t7, 0x0006(s0)             # 00000006
    lh      t9, 0x0008(s0)             # 00000008
    addu    t8, t7, t9
    sh      t8, 0x000C(a3)             # 0000000C
lbl_800427C0:
    jal     func_80067580
    sw      a3, 0x002C($sp)
    lh      t2, 0x005C($sp)
    lw      a3, 0x002C($sp)
    lh      t1, 0x005E($sp)
    subu    t3, $zero, t2
    swc1    $f0, 0x0068($sp)
    sh      t3, 0x006C($sp)
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFE0
    addiu   a0, a3, 0x001C             # a0 = 0000001C
    jal     func_80067850
    sh      t1, 0x006E($sp)
    lw      a0, 0x0024($sp)
    lw      a1, 0x0034($sp)
    jal     func_800A4A7C
    addiu   a2, s0, 0x0050             # a2 = 00000050
    lw      t4, 0x0034($sp)
    lw      a3, 0x002C($sp)
    lw      t6, 0x0000(t4)             # 00000000
    sw      t6, 0x0000(a3)             # 00000000
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(a3)             # 00000004
    lw      t6, 0x0008(t4)             # 00000008
    sw      t6, 0x0008(a3)             # 00000008
    lh      t7, 0x015E(s0)             # 0000015E
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sh      t9, 0x015E(s0)             # 0000015E
    lw      a1, 0x0030($sp)
    lw      a2, 0x007C($sp)
    lw      t8, 0x066C(a2)             # 0000066C
lbl_80042838:
    lui     v1, 0x2000                 # v1 = 20000000
    addiu   a3, s0, 0x0010             # a3 = 00000010
    sll     t1, t8,  2
    bgez    t1, lbl_80042864
    lw      t2, 0x0034($sp)
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(a3)             # 00000010
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(a3)             # 00000014
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(a3)             # 00000018
lbl_80042864:
    lh      t5, 0x0000(a1)             # 00000000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80042A0C
    lh      v0, 0x000C(a3)             # 0000001C
    lh      v0, 0x000C(a3)             # 0000001C
    blez    v0, lbl_800428A4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x000C(a3)             # 0000001C
    lw      t9, 0x0034($sp)
    lw      t1, 0x0000(t9)             # 00000001
    sw      t1, 0x0000(a3)             # 00000010
    lw      t8, 0x0004(t9)             # 00000005
    sw      t8, 0x0004(a3)             # 00000014
    lw      t1, 0x0008(t9)             # 00000009
    b       lbl_80042BA8
    sw      t1, 0x0008(a3)             # 00000018
lbl_800428A4:
    lw      t2, 0x066C(a2)             # 0000066C
    lw      a0, 0x0034($sp)
    and     t3, t2, v1
    bnel    t3, $zero, lbl_80042BAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_80067620
    or      a1, a3, $zero              # a1 = 00000010
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     a0, 0x8012                 # a0 = 80120000
    c.le.s  $f8, $f0
    nop
    bc1tl   lbl_8004299C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lw      a0, -0x71E8(a0)            # FFFF8E68
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000064
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042998
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    beq     v0, $zero, lbl_80042BA8
lbl_80042998:
    addiu   a0, s0, 0x0050             # a0 = 00000050
lbl_8004299C:
    jal     func_80067580
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    lw      v0, 0x0034($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lwc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f4, 0x0054(s0)            # 00000054
    lh      t4, 0x014C(s0)             # 0000014C
    sub.s   $f18, $f10, $f16
    lwc1    $f10, 0x0058(s0)           # 00000058
    ori     t5, t4, 0x0004             # t5 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f18, 0x00E4(s0)           # 000000E4
    lwc1    $f6, 0x0004(v0)            # 00000004
    lh      a1, 0x0154(s0)             # 00000154
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sub.s   $f8, $f4, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f16, 0x0008(v0)           # 00000008
    sh      t5, 0x014C(s0)             # 0000014C
    swc1    $f4, 0x0100(s0)            # 00000100
    sub.s   $f18, $f10, $f16
    jal     func_800493C8
    swc1    $f18, 0x00EC(s0)           # 000000EC
    b       lbl_80042BAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v0, 0x000C(a3)             # 0000000C
lbl_80042A0C:
    lw      t9, 0x0034($sp)
    blez    v0, lbl_80042A34
    addiu   t6, v0, 0xFFFF             # t6 = 00000000
    sh      t6, 0x000C(a3)             # 0000000C
    lh      t7, 0x000C(a3)             # 0000000C
    lui     $at, 0x800F                # $at = 800F0000
    bnel    t7, $zero, lbl_80042A50
    lw      t2, 0x066C(a2)             # 0000066C
    b       lbl_80042A4C
    sw      $zero, -0x0E58($at)        # 800EF1A8
lbl_80042A34:
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0000(a3)             # 00000000
    lw      t8, 0x0004(t9)             # 00000004
    sw      t8, 0x0004(a3)             # 00000004
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x0008(a3)             # 00000008
lbl_80042A4C:
    lw      t2, 0x066C(a2)             # 0000066C
lbl_80042A50:
    lui     $at, 0x8010                # $at = 80100000
    and     t3, t2, v1
    bnel    t3, $zero, lbl_80042BAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f6, 0x6F3C($at)           # 80106F3C
    lwc1    $f8, 0x00D8(s0)            # 000000D8
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f6, $f8
    nop
    bc1tl   lbl_80042B3C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lw      a0, -0x71E8(a0)            # FFFF8E68
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000064
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80042B38
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    beq     v0, $zero, lbl_80042BA8
lbl_80042B38:
    addiu   a0, s0, 0x0050             # a0 = 00000050
lbl_80042B3C:
    jal     func_80067580
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lw      t4, 0x0034($sp)
    lwc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f4, 0x0054(s0)            # 00000054
    lwc1    $f16, 0x0000(t4)           # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0154(s0)             # 00000154
    sub.s   $f18, $f10, $f16
    lwc1    $f10, 0x0058(s0)           # 00000058
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    swc1    $f18, 0x00E4(s0)           # 000000E4
    lw      t5, 0x0034($sp)
    lwc1    $f6, 0x0004(t5)            # 00000004
    sub.s   $f8, $f4, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f8, 0x00E8(s0)            # 000000E8
    lw      t6, 0x0034($sp)
    lwc1    $f16, 0x0008(t6)           # 00000008
    swc1    $f4, 0x0100(s0)            # 00000100
    sub.s   $f18, $f10, $f16
    jal     func_800493C8
    swc1    $f18, 0x00EC(s0)           # 000000EC
    lh      t7, 0x014C(s0)             # 0000014C
    ori     t9, t7, 0x0004             # t9 = 00000004
    sh      t9, 0x014C(s0)             # 0000014C
lbl_80042BA8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80042BAC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    jr      $ra
    nop


func_80042BC0:
# UNIQ4()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80042BE0:
# UNIQ5()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80042C00:
# UNIQ6()
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    or      a0, s0, $zero              # a0 = 00000000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lh      t2, 0x0000(v0)             # 00000000
    sh      t2, 0x0000(s0)             # 00000000
    lh      t3, 0x0000(s0)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    sw      t3, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_80042C60
    addiu   t4, v0, 0x0001             # t4 = 00000001
    jal     func_800358D0
    sh      t4, 0x015E(s0)             # 0000015E
lbl_80042C60:
    lw      a0, 0x0090(s0)             # 00000090
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    beq     a0, $zero, lbl_80042CEC
    nop
    jal     func_80021600
    nop
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lw      t6, 0x0000(v0)             # 00000094
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    sw      t6, 0x0000(a0)             # FFFFFFEC
    lw      t5, 0x0004(v0)             # 00000098
    sw      t5, 0x0004(a0)             # FFFFFFF0
    lw      t6, 0x0008(v0)             # 0000009C
    sw      t6, 0x0008(a0)             # FFFFFFF4
    lwc1    $f4, 0x0030($sp)
    sw      v0, 0x0020($sp)
    add.s   $f6, $f4, $f0
    jal     func_80067580
    swc1    $f6, 0x0030($sp)
    lw      v0, 0x0020($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lwc1    $f8, 0x0050(s0)            # 00000050
    lwc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x0054(s0)           # 00000054
    sub.s   $f16, $f8, $f10
    lwc1    $f8, 0x0058(s0)            # 00000058
    swc1    $f16, 0x00E4(s0)           # 000000E4
    lwc1    $f4, 0x0004(v0)            # 00000004
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x00E8(s0)            # 000000E8
    lwc1    $f10, 0x0008(v0)           # 00000008
    sub.s   $f16, $f8, $f10
    b       lbl_80042CF8
    swc1    $f16, 0x00EC(s0)           # 000000EC
lbl_80042CEC:
    jal     func_80067580
    addiu   a0, s0, 0x0050             # a0 = 00000050
    swc1    $f0, 0x00DC(s0)            # 000000DC
lbl_80042CF8:
    lh      t7, 0x0000(s0)             # 00000000
    andi    t9, t7, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80042D1C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      v0, 0x0160(s0)             # 00000160
    blez    v0, lbl_80042D18
    addiu   t8, v0, 0xFFFF             # t8 = 00000000
    sh      t8, 0x0160(s0)             # 00000160
lbl_80042D18:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80042D1C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80042D30:
# UNIQ7()
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lh      t2, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0004             # v0 = 00000004
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(s0)            # 00000000
    lh      t3, 0x0000(v0)             # 00000004
    sh      t3, 0x0004(s0)             # 00000004
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a3, s0, 0x0074             # a3 = 00000074
    or      s1, v0, $zero              # s1 = 00000000
    or      a0, a3, $zero              # a0 = 00000074
    sw      a3, 0x0020($sp)
    jal     func_80035940
    or      a1, v0, $zero              # a1 = 00000000
    lw      a3, 0x0020($sp)
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFDC
    lw      t5, 0x0000(a3)             # 00000000
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFEC
    addiu   a2, s0, 0x0094             # a2 = 00000094
    sw      t5, 0x0000(a1)             # 0000005C
    lw      t4, 0x0004(a3)             # 00000004
    sw      t4, 0x0004(a1)             # 00000060
    lw      t5, 0x0008(a3)             # 00000008
    sw      t5, 0x0008(a1)             # 00000064
    lwl     t9, 0x0006(s1)             # 00000006
    lwr     t9, 0x0009(s1)             # 00000009
    sw      t9, 0x0000(t6)             # FFFFFFDC
    lhu     t9, 0x000A(s1)             # 0000000A
    sh      t9, 0x0004(t6)             # FFFFFFE0
    jal     func_80067A84
    sw      a1, 0x0024($sp)
    lh      v1, 0x000C(s1)             # 0000000C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    bne     v1, $at, lbl_80042E28
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f8, 0x0000(s0)            # 00000000
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    v1, $f18
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80042E28:
    slti    $at, v1, 0x0169
    beq     $at, $zero, lbl_80042E50
    addu    $at, v1, $zero
    sll     v1, v1,  2
    subu    v1, v1, $at
    sll     v1, v1,  3
    addu    v1, v1, $at
    sll     v1, v1,  2
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80042E50:
    lh      t0, 0x0004(s0)             # 00000004
    lui     $at, 0x800F                # $at = 800F0000
    sw      t0, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bnel    v0, $zero, lbl_80042EA0
    lui     $at, 0x4270                # $at = 42700000
    mtc1    v1, $f4                    # $f4 = 0.00
    addiu   t1, v0, 0x0001             # t1 = 00000001
    sh      t1, 0x015E(s0)             # 0000015E
    cvt.s.w $f6, $f4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6F40($at)           # 80106F40
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      $zero, 0x015A(s0)          # 0000015A
    mul.s   $f10, $f6, $f8
    swc1    $f16, 0x0100(s0)           # 00000100
    swc1    $f10, 0x00FC(s0)           # 000000FC
    lh      t2, 0x0052($sp)
    sh      t2, 0x0008(s0)             # 00000008
    lui     $at, 0x4270                # $at = 42700000
lbl_80042EA0:
    mtc1    $at, $f18                  # $f18 = 60.00
    addiu   v1, s0, 0x0008             # v1 = 00000008
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    swc1    $f18, 0x00FC(s0)           # 000000FC
    lh      a1, 0x0000(v1)             # 00000008
    sw      v1, 0x0020($sp)
    jal     func_800357B8
    lh      a0, 0x0052($sp)
    lw      v1, 0x0020($sp)
    sh      v0, 0x0000(v1)             # 00000000
    lh      t4, 0x0008(s1)             # 00000008
    lh      t3, 0x0052($sp)
    subu    a0, t3, t4
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lh      t5, 0x0006(s1)             # 00000006
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lw      a1, 0x0024($sp)
    subu    t6, $zero, t5
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFEC
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    jal     func_800359A8
    sh      t9, 0x0050($sp)
    lh      t8, 0x014C(s0)             # 0000014C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t0, t8, 0x0400             # t0 = 00000400
    sh      t0, 0x014C(s0)             # 0000014C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80042F34:
# UNIQ8()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80042F54:
# UNIQ9()
    addiu   $sp, $sp, 0xFEE8           # $sp -= 0x118
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      t6, 0x0090(s1)             # 00000090
    sw      t6, 0x0088($sp)
    lh      t7, 0x0142(s1)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t2, 0x0144(s1)             # 00000144
    sll     t8, t7,  3
    addu    t9, t9, t8
    lw      t9, -0x118C(t9)            # 800EEE74
    sll     t3, t2,  3
    addiu   v1, s1, 0x0008             # v1 = 00000008
    addu    t4, t9, t3
    lw      v0, 0x0004(t4)             # 00000004
    lh      t5, 0x0000(v0)             # 00000000
    sh      t5, 0x0000(v1)             # 00000008
    lh      t6, 0x0000(v1)             # 00000008
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a0, $sp, 0x0098            # a0 = FFFFFF80
    sw      t6, -0x0E58($at)           # 800EF1A8
    jal     func_800226A4
    lw      a1, 0x0090(s1)             # 00000090
    lh      v1, 0x015E(s1)             # 0000015E
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    bne     v1, $zero, lbl_80043008
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s1)             # 0000015E
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t8, 0x0036(s0)             # 00000042
    sh      t2, 0x003C(s0)             # 00000048
    sh      $zero, 0x0038(s0)          # 00000044
    lwc1    $f4, 0x0098($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f4, 0x001C(s0)            # 00000028
    lwc1    $f6, 0x009C($sp)
    swc1    $f6, 0x0020(s0)            # 0000002C
    lwc1    $f8, 0x00A0($sp)
    swc1    $f8, 0x0024(s0)            # 00000030
    jal     func_80035910
    swc1    $f10, 0x0100(s1)           # 00000100
lbl_80043008:
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    lh      t9, 0x0038(s0)             # 00000044
    bnel    t9, $zero, lbl_8004302C
    lh      t4, 0x003C(s0)             # 00000048
    lh      v0, 0x003C(s0)             # 00000048
    blez    v0, lbl_80043028
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x003C(s0)             # 00000048
lbl_80043028:
    lh      t4, 0x003C(s0)             # 00000048
lbl_8004302C:
    bnel    t4, $zero, lbl_80043148
    sh      $zero, 0x003A(s0)          # 00000046
    lh      t6, 0x0036(s0)             # 00000042
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x003A(s0)             # 00000046
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0036(s0)             # 00000042
    lw      t8, 0x0000(s1)             # 00000000
    lh      a0, 0x0036(s0)             # 00000042
    slt     $at, a0, t8
    beq     $at, $zero, lbl_8004312C
    sll     t9, a0,  2
    lw      t2, 0x0004(s1)             # 00000004
    addu    t9, t9, a0
    sll     t9, t9,  3
    addu    v1, t2, t9
    sw      v1, 0x0000(s0)             # 0000000C
    lh      t4, 0x0004(v1)             # 00000004
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sh      t4, 0x003C(s0)             # 00000048
    lbu     v0, 0x0001(v1)             # 00000001
    beql    v0, $at, lbl_80043150
    lh      a0, 0x0002(v1)             # 00000002
    andi    v1, v0, 0x00F0             # v1 = 00000000
    addiu   $at, $zero, 0x0080         # $at = 00000080
    bne     v1, $at, lbl_800430A8
    andi    t5, v0, 0x000F             # t5 = 00000000
    lui     $at, 0x800F                # $at = 800F0000
    sw      t5, -0x0E4C($at)           # 800EF1B4
    b       lbl_8004314C
    lw      v1, 0x0000(s0)             # 0000000C
lbl_800430A8:
    addiu   $at, $zero, 0x00C0         # $at = 000000C0
    bne     v1, $at, lbl_800430D0
    andi    a0, v0, 0x000F             # a0 = 00000000
    sll     a0, a0,  8
    ori     a0, a0, 0xF000             # a0 = 0000F000
    sll     a0, a0, 16
    jal     func_80036E40
    sra     a0, a0, 16
    b       lbl_8004314C
    lw      v1, 0x0000(s0)             # 0000000C
lbl_800430D0:
    lw      t6, 0x0090(s1)             # 00000090
    or      a2, v0, $zero              # a2 = 00000000
    lw      t2, 0x0088($sp)
    lw      t7, 0x066C(t6)             # 0000066C
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sll     t8, t7,  4
    bgezl   t8, lbl_8004311C
    lw      a0, 0x008C(s1)             # 0000008C
    lb      t9, 0x013F(t2)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t9, $at, lbl_8004311C
    lw      a0, 0x008C(s1)             # 0000008C
    lw      a0, 0x008C(s1)             # 0000008C
    lw      a1, 0x00A8(s1)             # 000000A8
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    b       lbl_8004314C
    lw      v1, 0x0000(s0)             # 0000000C
    lw      a0, 0x008C(s1)             # 0000008C
lbl_8004311C:
    jal     func_800218C8
    lw      a1, 0x00A8(s1)             # 000000A8
    b       lbl_8004314C
    lw      v1, 0x0000(s0)             # 0000000C
lbl_8004312C:
    lh      t3, 0x0164(s1)             # 00000164
    beq     t3, $zero, lbl_8004313C
    nop
    sh      $zero, 0x0160(s1)          # 00000160
lbl_8004313C:
    b       lbl_8004439C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x003A(s0)          # 00000046
lbl_80043148:
    lw      v1, 0x0000(s0)             # 0000000C
lbl_8004314C:
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043150:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    a3, a0, 0x00FF             # a3 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    bnel    a3, $at, lbl_80043198
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t5, 0x0010(v1)             # 00000010
    addiu   t6, s1, 0x0050             # t6 = 00000050
    sw      t5, 0x0004(s0)             # 00000010
    lw      t4, 0x0014(v1)             # 00000014
    sw      t4, 0x0008(s0)             # 00000014
    lw      t5, 0x0018(v1)             # 00000018
    sw      t5, 0x000C(s0)             # 00000018
    sw      t6, 0x0030($sp)
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_80043570
    lh      a0, 0x0002(v1)             # 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80043198:
    bne     a3, $at, lbl_800431F4
    addiu   t3, s1, 0x0050             # t3 = 00000050
    lh      t7, 0x003A(s0)             # 00000046
    beq     t7, $zero, lbl_800431EC
    nop
    lw      t8, 0x008C(s1)             # 0000008C
    lwc1    $f6, 0x0010(v1)            # 00000010
    lwc1    $f4, 0x00EC(t8)            # 000000EC
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(s0)            # 00000010
    lw      t2, 0x008C(s1)             # 0000008C
    lwc1    $f4, 0x0014(v1)            # 00000014
    lwc1    $f10, 0x00F0(t2)           # 000000F0
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0008(s0)            # 00000014
    lw      t9, 0x008C(s1)             # 0000008C
    lwc1    $f10, 0x0018(v1)           # 00000018
    lwc1    $f8, 0x00F4(t9)            # 000000F4
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x000C(s0)            # 00000018
    lh      a0, 0x0002(v1)             # 00000002
lbl_800431EC:
    b       lbl_80043570
    sw      t3, 0x0030($sp)
lbl_800431F4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a3, $at, lbl_80043248
    addiu   t5, s1, 0x0050             # t5 = 00000050
    lh      t4, 0x003A(s0)             # 00000046
    beq     t4, $zero, lbl_80043240
    nop
    lwc1    $f6, 0x0050(s1)            # 00000050
    lwc1    $f8, 0x0010(v1)            # 00000010
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(s0)           # 00000010
    lwc1    $f6, 0x0014(v1)            # 00000014
    lwc1    $f4, 0x0054(s1)            # 00000054
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(s0)            # 00000014
    lwc1    $f4, 0x0018(v1)            # 00000018
    lwc1    $f10, 0x0058(s1)           # 00000058
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x000C(s0)            # 00000018
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043240:
    b       lbl_80043570
    sw      t5, 0x0030($sp)
lbl_80043248:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a3, $at, lbl_8004325C
    addiu   $at, $zero, 0x0084         # $at = 00000084
    bne     a3, $at, lbl_800433A8
    andi    t9, a3, 0x6060             # t9 = 00000000
lbl_8004325C:
    lw      a1, 0x00A8(s1)             # 000000A8
    beql    a1, $zero, lbl_8004337C
    sw      $zero, 0x00A8(s1)          # 000000A8
    lw      t6, 0x0130(a1)             # 00000130
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFA8
    beql    t6, $zero, lbl_8004337C
    sw      $zero, 0x00A8(s1)          # 000000A8
    jal     func_80022670
    sh      a3, 0x00D8($sp)
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF94
    jal     func_80022670
    lw      a1, 0x0090(s1)             # 00000090
    lwc1    $f8, 0x0098($sp)
    lwc1    $f10, 0x00A0($sp)
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFC4
    addiu   a1, $sp, 0x00C0            # a1 = FFFFFFA8
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFF94
    swc1    $f8, 0x00AC($sp)
    jal     func_80067A84
    swc1    $f10, 0x00B4($sp)
    lh      a3, 0x00D8($sp)
    addiu   $at, $zero, 0x8080         # $at = FFFF8080
    and     t7, a3, $at
    beql    t7, $zero, lbl_80043330
    lw      a1, 0x0000(s0)             # 0000000C
    lw      t8, 0x0000(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6F44($at)           # 80106F44
    lwc1    $f4, 0x0010(t8)            # 00000010
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f4, $f6
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f4, $f8, $f10
    lwc1    $f10, 0x6F48($at)          # 80106F48
    lui     $at, 0x3F00                # $at = 3F000000
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    mtc1    $at, $f6                   # $f6 = 0.50
    sh      t9, 0x00E8($sp)
    lw      t3, 0x0000(s0)             # 0000000C
    lwc1    $f8, 0x0014(t3)            # 00000014
    mul.s   $f4, $f8, $f10
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    sh      t5, 0x00EA($sp)
    lw      t6, 0x0000(s0)             # 0000000C
    lwc1    $f4, 0x0018(t6)            # 00000018
    b       lbl_8004333C
    swc1    $f4, 0x00E4($sp)
    lw      a1, 0x0000(s0)             # 0000000C
lbl_80043330:
    addiu   a0, $sp, 0x00E4            # a0 = FFFFFFCC
    jal     func_800679E8
    addiu   a1, a1, 0x0010             # a1 = 00000010
lbl_8004333C:
    lh      t7, 0x00EA($sp)
    lh      t8, 0x00E2($sp)
    lh      t9, 0x00E8($sp)
    lh      t3, 0x00E0($sp)
    addu    t2, t7, t8
    sh      t2, 0x00EA($sp)
    addu    t4, t9, t3
    sh      t4, 0x00E8($sp)
    addiu   a0, s0, 0x0004             # a0 = 00000010
    addiu   a1, $sp, 0x00C0            # a1 = FFFFFFA8
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    addiu   t5, s1, 0x0050             # t5 = 00000050
    b       lbl_8004339C
    sw      t5, 0x0030($sp)
    sw      $zero, 0x00A8(s1)          # 000000A8
lbl_8004337C:
    addiu   t6, s1, 0x0050             # t6 = 00000050
    sw      t6, 0x0030($sp)
    lw      t2, 0x0000(t6)             # 00000050
    sw      t2, 0x0004(s0)             # 00000010
    lw      t8, 0x0004(t6)             # 00000054
    sw      t8, 0x0008(s0)             # 00000014
    lw      t2, 0x0008(t6)             # 00000058
    sw      t2, 0x000C(s0)             # 00000018
lbl_8004339C:
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_80043570
    lh      a0, 0x0002(v1)             # 00000002
lbl_800433A8:
    beq     t9, $zero, lbl_8004354C
    addiu   t8, s1, 0x0050             # t8 = 00000050
    andi    t3, a3, 0x0004             # t3 = 00000000
    beq     t3, $zero, lbl_800433C8
    andi    t5, a3, 0x2020             # t5 = 00000000
    lh      t4, 0x003A(s0)             # 00000046
    beql    t4, $zero, lbl_80043544
    addiu   t7, s1, 0x0050             # t7 = 00000050
lbl_800433C8:
    beq     t5, $zero, lbl_800433D8
    andi    v0, a3, 0x000F             # v0 = 00000000
    b       lbl_80043400
    lw      a2, 0x0090(s1)             # 00000090
lbl_800433D8:
    lw      a1, 0x00A8(s1)             # 000000A8
    or      a2, $zero, $zero           # a2 = 00000000
    beql    a1, $zero, lbl_80043400
    sw      $zero, 0x00A8(s1)          # 000000A8
    lw      t6, 0x0130(a1)             # 00000130
    beql    t6, $zero, lbl_80043400
    sw      $zero, 0x00A8(s1)          # 000000A8
    b       lbl_80043400
    or      a2, a1, $zero              # a2 = 00000000
    sw      $zero, 0x00A8(s1)          # 000000A8
lbl_80043400:
    beq     a2, $zero, lbl_80043520
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80043424
    addiu   a0, $sp, 0x006C            # a0 = FFFFFF54
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80022670
    sh      a3, 0x00D8($sp)
    b       lbl_80043458
    lh      a3, 0x00D8($sp)
lbl_80043424:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80043448
    addiu   a0, $sp, 0x006C            # a0 = FFFFFF54
    addiu   a0, $sp, 0x006C            # a0 = FFFFFF54
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800226A4
    sh      a3, 0x00D8($sp)
    b       lbl_80043458
    lh      a3, 0x00D8($sp)
lbl_80043448:
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800226D8
    sh      a3, 0x00D8($sp)
    lh      a3, 0x00D8($sp)
lbl_80043458:
    addiu   $at, $zero, 0x8080         # $at = FFFF8080
    and     t7, a3, $at
    beql    t7, $zero, lbl_800434D8
    lw      a1, 0x0000(s0)             # 0000000C
    lw      t8, 0x0000(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6F4C($at)           # 80106F4C
    lwc1    $f6, 0x0010(t8)            # 00000010
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f10, $f6, $f8
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f6, $f10, $f4
    lwc1    $f4, 0x6F50($at)           # 80106F50
    lui     $at, 0x3F00                # $at = 3F000000
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    mtc1    $at, $f8                   # $f8 = 0.50
    sh      t9, 0x00E8($sp)
    lw      t3, 0x0000(s0)             # 0000000C
    lwc1    $f10, 0x0014(t3)           # 00000014
    mul.s   $f6, $f10, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f4, $f10
    mfc1    t5, $f4
    nop
    sh      t5, 0x00EA($sp)
    lw      t6, 0x0000(s0)             # 0000000C
    lwc1    $f6, 0x0018(t6)            # 00000018
    b       lbl_800434E4
    swc1    $f6, 0x00E4($sp)
    lw      a1, 0x0000(s0)             # 0000000C
lbl_800434D8:
    addiu   a0, $sp, 0x00E4            # a0 = FFFFFFCC
    jal     func_800679E8
    addiu   a1, a1, 0x0010             # a1 = 00000010
lbl_800434E4:
    lh      t7, 0x00EA($sp)
    lh      t8, 0x007A($sp)
    lh      t9, 0x00E8($sp)
    lh      t3, 0x0078($sp)
    addu    t2, t7, t8
    sh      t2, 0x00EA($sp)
    subu    t4, t9, t3
    sh      t4, 0x00E8($sp)
    addiu   a0, s0, 0x0004             # a0 = 00000010
    addiu   a1, $sp, 0x006C            # a1 = FFFFFF54
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_80043540
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043520:
    lw      t6, 0x0050(s1)             # 00000050
    lw      v1, 0x0000(s0)             # 0000000C
    sw      t6, 0x0004(s0)             # 00000010
    lw      t5, 0x0054(s1)             # 00000054
    sw      t5, 0x0008(s0)             # 00000014
    lw      t6, 0x0058(s1)             # 00000058
    sw      t6, 0x000C(s0)             # 00000018
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043540:
    addiu   t7, s1, 0x0050             # t7 = 00000050
lbl_80043544:
    b       lbl_80043570
    sw      t7, 0x0030($sp)
lbl_8004354C:
    sw      t8, 0x0030($sp)
    lw      t3, 0x0000(t8)             # 00000000
    lw      v1, 0x0000(s0)             # 0000000C
    sw      t3, 0x0004(s0)             # 00000010
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x0008(s0)             # 00000014
    lw      t3, 0x0008(t8)             # 00000008
    sw      t3, 0x000C(s0)             # 00000018
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043570:
    andi    a3, a0, 0xFF00             # a3 = 00000000
    sll     a3, a3, 16
    addiu   t0, $zero, 0x0100          # t0 = 00000100
    sra     a3, a3, 16
    bne     a3, t0, lbl_800435B4
    addiu   t1, $zero, 0x0200          # t1 = 00000200
    lw      t5, 0x001C(v1)             # 0000001C
    addiu   t6, s1, 0x0074             # t6 = 00000074
    sw      t5, 0x0010(s0)             # 0000001C
    lw      t4, 0x0020(v1)             # 00000020
    sw      t4, 0x0014(s0)             # 00000020
    lw      t5, 0x0024(v1)             # 00000024
    sw      t5, 0x0018(s0)             # 00000024
    sw      t6, 0x0034($sp)
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_800439F0
    lh      a0, 0x0002(v1)             # 00000002
lbl_800435B4:
    bne     a3, t1, lbl_80043614
    addiu   $at, $zero, 0x0300         # $at = 00000300
    lh      t7, 0x003A(s0)             # 00000046
    addiu   t3, s1, 0x0074             # t3 = 00000074
    beq     t7, $zero, lbl_8004360C
    nop
    lw      t8, 0x008C(s1)             # 0000008C
    lwc1    $f10, 0x001C(v1)           # 0000001C
    lwc1    $f8, 0x00E0(t8)            # 000000E0
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0010(s0)            # 0000001C
    lw      t2, 0x008C(s1)             # 0000008C
    lwc1    $f8, 0x0020(v1)            # 00000020
    lwc1    $f6, 0x00E4(t2)            # 000000E4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0014(s0)           # 00000020
    lw      t9, 0x008C(s1)             # 0000008C
    lwc1    $f6, 0x0024(v1)            # 00000024
    lwc1    $f4, 0x00E8(t9)            # 000000E8
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0018(s0)            # 00000024
    lh      a0, 0x0002(v1)             # 00000002
lbl_8004360C:
    b       lbl_800439F0
    sw      t3, 0x0034($sp)
lbl_80043614:
    bne     a3, $at, lbl_80043664
    addiu   t5, s1, 0x0074             # t5 = 00000074
    lh      t4, 0x003A(s0)             # 00000046
    beq     t4, $zero, lbl_8004365C
    nop
    lwc1    $f10, 0x0074(s1)           # 00000074
    lwc1    $f4, 0x001C(v1)            # 0000001C
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0010(s0)            # 0000001C
    lwc1    $f10, 0x0020(v1)           # 00000020
    lwc1    $f8, 0x0078(s1)            # 00000078
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0014(s0)            # 00000020
    lwc1    $f8, 0x0024(v1)            # 00000024
    lwc1    $f6, 0x007C(s1)            # 0000007C
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0018(s0)           # 00000024
    lh      a0, 0x0002(v1)             # 00000002
lbl_8004365C:
    b       lbl_800439F0
    sw      t5, 0x0034($sp)
lbl_80043664:
    addiu   $at, $zero, 0x0400         # $at = 00000400
    beq     a3, $at, lbl_80043688
    addiu   $at, $zero, 0x8400         # $at = FFFF8400
    beq     a3, $at, lbl_80043688
    addiu   $at, $zero, 0x0500         # $at = 00000500
    beq     a3, $at, lbl_80043688
    addiu   $at, $zero, 0x8500         # $at = FFFF8500
    bne     a3, $at, lbl_80043828
    andi    t2, a3, 0x6060             # t2 = 00000000
lbl_80043688:
    lw      a1, 0x00A8(s1)             # 000000A8
    addiu   t5, s1, 0x0074             # t5 = 00000074
    beql    a1, $zero, lbl_80043800
    sw      $zero, 0x00A8(s1)          # 000000A8
    lw      t6, 0x0130(a1)             # 00000130
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFA8
    beql    t6, $zero, lbl_80043800
    sw      $zero, 0x00A8(s1)          # 000000A8
    jal     func_80022670
    sh      a3, 0x00D6($sp)
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFF94
    jal     func_80022670
    lw      a1, 0x0090(s1)             # 00000090
    lwc1    $f4, 0x0098($sp)
    lwc1    $f6, 0x00A0($sp)
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFFC4
    addiu   a1, $sp, 0x00C0            # a1 = FFFFFFA8
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFF94
    swc1    $f4, 0x00AC($sp)
    jal     func_80067A84
    swc1    $f6, 0x00B4($sp)
    lh      a3, 0x00D6($sp)
    addiu   $at, $zero, 0x0400         # $at = 00000400
    addiu   t8, $sp, 0x00C0            # t8 = FFFFFFA8
    beq     a3, $at, lbl_800436F8
    addiu   $at, $zero, 0x8400         # $at = FFFF8400
    bnel    a3, $at, lbl_8004371C
    lw      t5, 0x0004(s0)             # 00000010
lbl_800436F8:
    lw      t9, 0x0000(t8)             # FFFFFFA8
    addiu   t7, $sp, 0x0060            # t7 = FFFFFF48
    sw      t9, 0x0000(t7)             # FFFFFF48
    lw      t2, 0x0004(t8)             # FFFFFFAC
    sw      t2, 0x0004(t7)             # FFFFFF4C
    lw      t9, 0x0008(t8)             # FFFFFFB0
    b       lbl_80043734
    sw      t9, 0x0008(t7)             # FFFFFF50
    lw      t5, 0x0004(s0)             # 00000010
lbl_8004371C:
    addiu   t3, $sp, 0x0060            # t3 = FFFFFF48
    sw      t5, 0x0000(t3)             # FFFFFF48
    lw      t4, 0x0008(s0)             # 00000014
    sw      t4, 0x0004(t3)             # FFFFFF4C
    lw      t5, 0x000C(s0)             # 00000018
    sw      t5, 0x0008(t3)             # FFFFFF50
lbl_80043734:
    addiu   $at, $zero, 0x8080         # $at = FFFF8080
    and     t6, a3, $at
    beql    t6, $zero, lbl_800437B4
    lw      a1, 0x0000(s0)             # 0000000C
    lw      t7, 0x0000(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6F54($at)          # 80106F54
    lwc1    $f8, 0x001C(t7)            # FFFFFF64
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    mul.s   $f4, $f8, $f10
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x6F58($at)           # 80106F58
    lui     $at, 0x3F00                # $at = 3F000000
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    sh      t2, 0x00E8($sp)
    lw      t9, 0x0000(s0)             # 0000000C
    lwc1    $f4, 0x0020(t9)            # 00000020
    mul.s   $f8, $f4, $f6
    add.s   $f4, $f8, $f10
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x00EA($sp)
    lw      t5, 0x0000(s0)             # 0000000C
    lwc1    $f8, 0x0024(t5)            # 00000024
    b       lbl_800437C0
    swc1    $f8, 0x00E4($sp)
    lw      a1, 0x0000(s0)             # 0000000C
lbl_800437B4:
    addiu   a0, $sp, 0x00E4            # a0 = FFFFFFCC
    jal     func_800679E8
    addiu   a1, a1, 0x001C             # a1 = 0000001C
lbl_800437C0:
    lh      t6, 0x00EA($sp)
    lh      t7, 0x00E2($sp)
    lh      t2, 0x00E8($sp)
    lh      t9, 0x00E0($sp)
    addu    t8, t6, t7
    sh      t8, 0x00EA($sp)
    addu    t3, t2, t9
    sh      t3, 0x00E8($sp)
    addiu   a0, s0, 0x0010             # a0 = 0000001C
    addiu   a1, $sp, 0x0060            # a1 = FFFFFF48
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    addiu   t4, s1, 0x0074             # t4 = 00000074
    b       lbl_8004381C
    sw      t4, 0x0034($sp)
    sw      $zero, 0x00A8(s1)          # 000000A8
lbl_80043800:
    sw      t5, 0x0034($sp)
    lw      t8, 0x0000(t5)             # 00000000
    sw      t8, 0x0010(s0)             # 0000001C
    lw      t7, 0x0004(t5)             # 00000004
    sw      t7, 0x0014(s0)             # 00000020
    lw      t8, 0x0008(t5)             # 00000008
    sw      t8, 0x0018(s0)             # 00000024
lbl_8004381C:
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_800439F0
    lh      a0, 0x0002(v1)             # 00000002
lbl_80043828:
    beq     t2, $zero, lbl_800439CC
    addiu   t7, s1, 0x0074             # t7 = 00000074
    andi    t9, a3, 0x0400             # t9 = 00000000
    beq     t9, $zero, lbl_80043848
    andi    t4, a3, 0x2020             # t4 = 00000000
    lh      t3, 0x003A(s0)             # 00000046
    beql    t3, $zero, lbl_800439C4
    addiu   t6, s1, 0x0074             # t6 = 00000074
lbl_80043848:
    beq     t4, $zero, lbl_80043858
    andi    v0, a3, 0x0F00             # v0 = 00000000
    b       lbl_80043880
    lw      a2, 0x0090(s1)             # 00000090
lbl_80043858:
    lw      a1, 0x00A8(s1)             # 000000A8
    or      a2, $zero, $zero           # a2 = 00000000
    beql    a1, $zero, lbl_80043880
    sw      $zero, 0x00A8(s1)          # 000000A8
    lw      t5, 0x0130(a1)             # 00000130
    beql    t5, $zero, lbl_80043880
    sw      $zero, 0x00A8(s1)          # 000000A8
    b       lbl_80043880
    or      a2, a1, $zero              # a2 = 00000000
    sw      $zero, 0x00A8(s1)          # 000000A8
lbl_80043880:
    beql    a2, $zero, lbl_800439A0
    lw      t5, 0x0074(s1)             # 00000074
    bne     t0, v0, lbl_800438A4
    addiu   a0, $sp, 0x0048            # a0 = FFFFFF30
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80022670
    sh      a3, 0x00D6($sp)
    b       lbl_800438D4
    lh      a3, 0x00D6($sp)
lbl_800438A4:
    bne     t1, v0, lbl_800438C4
    addiu   a0, $sp, 0x0048            # a0 = FFFFFF30
    addiu   a0, $sp, 0x0048            # a0 = FFFFFF30
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800226A4
    sh      a3, 0x00D6($sp)
    b       lbl_800438D4
    lh      a3, 0x00D6($sp)
lbl_800438C4:
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800226D8
    sh      a3, 0x00D6($sp)
    lh      a3, 0x00D6($sp)
lbl_800438D4:
    addiu   $at, $zero, 0x8080         # $at = FFFF8080
    and     t6, a3, $at
    beql    t6, $zero, lbl_80043954
    lw      a1, 0x0000(s0)             # 0000000C
    lw      t7, 0x0000(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6F5C($at)           # 80106F5C
    lwc1    $f10, 0x001C(t7)           # 0000001C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mul.s   $f6, $f10, $f4
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x6F60($at)           # 80106F60
    lui     $at, 0x3F00                # $at = 3F000000
    trunc.w.s $f4, $f10
    mfc1    t2, $f4
    mtc1    $at, $f4                   # $f4 = 0.50
    sh      t2, 0x00E8($sp)
    lw      t9, 0x0000(s0)             # 0000000C
    lwc1    $f6, 0x0020(t9)            # 00000020
    mul.s   $f10, $f6, $f8
    add.s   $f6, $f10, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    nop
    sh      t4, 0x00EA($sp)
    lw      t5, 0x0000(s0)             # 0000000C
    lwc1    $f10, 0x0024(t5)           # 00000024
    b       lbl_80043960
    swc1    $f10, 0x00E4($sp)
    lw      a1, 0x0000(s0)             # 0000000C
lbl_80043954:
    addiu   a0, $sp, 0x00E4            # a0 = FFFFFFCC
    jal     func_800679E8
    addiu   a1, a1, 0x001C             # a1 = 0000001C
lbl_80043960:
    lh      t6, 0x00EA($sp)
    lh      t7, 0x0056($sp)
    lh      t2, 0x00E8($sp)
    lh      t9, 0x0054($sp)
    addu    t8, t6, t7
    sh      t8, 0x00EA($sp)
    subu    t3, t2, t9
    sh      t3, 0x00E8($sp)
    addiu   a0, s0, 0x0010             # a0 = 0000001C
    addiu   a1, $sp, 0x0048            # a1 = FFFFFF30
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    lw      v1, 0x0000(s0)             # 0000000C
    b       lbl_800439C0
    lh      a0, 0x0002(v1)             # 00000002
    lw      t5, 0x0074(s1)             # 00000074
lbl_800439A0:
    sw      $zero, 0x00A8(s1)          # 000000A8
    lw      v1, 0x0000(s0)             # 0000000C
    sw      t5, 0x0010(s0)             # 0000001C
    lw      t4, 0x0078(s1)             # 00000078
    sw      t4, 0x0014(s0)             # 00000020
    lw      t5, 0x007C(s1)             # 0000007C
    sw      t5, 0x0018(s0)             # 00000024
    lh      a0, 0x0002(v1)             # 00000002
lbl_800439C0:
    addiu   t6, s1, 0x0074             # t6 = 00000074
lbl_800439C4:
    b       lbl_800439F0
    sw      t6, 0x0034($sp)
lbl_800439CC:
    sw      t7, 0x0034($sp)
    lw      t9, 0x0000(t7)             # 00000000
    lw      v1, 0x0000(s0)             # 0000000C
    sw      t9, 0x0010(s0)             # 0000001C
    lw      t2, 0x0004(t7)             # 00000004
    sw      t2, 0x0014(s0)             # 00000020
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0018(s0)             # 00000024
    lh      a0, 0x0002(v1)             # 00000002
lbl_800439F0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a0, $at, lbl_80043A14
    nop
    lw      t3, 0x008C(s1)             # 0000008C
    lw      v1, 0x0000(s0)             # 0000000C
    lwc1    $f4, 0x00D0(t3)            # 000000D0
    sh      $zero, 0x0034(s0)          # 00000040
    b       lbl_80043A74
    swc1    $f4, 0x0028(s0)            # 00000034
lbl_80043A14:
    bnel    a0, $zero, lbl_80043A38
    lwc1    $f8, 0x0008(v1)            # 00000008
    lwc1    $f6, 0x00FC(s1)            # 000000FC
    lw      v1, 0x0000(s0)             # 0000000C
    swc1    $f6, 0x0028(s0)            # 00000034
    lh      t4, 0x015A(s1)             # 0000015A
    b       lbl_80043A74
    sh      t4, 0x0034(s0)             # 00000040
    lwc1    $f8, 0x0008(v1)            # 00000008
lbl_80043A38:
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f8, 0x0028(s0)            # 00000034
    lh      t5, 0x0006(v1)             # 00000006
    lwc1    $f6, 0x6F64($at)           # 80106F64
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f4, $f6
    add.s   $f4, $f8, $f10
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0034(s0)             # 00000040
lbl_80043A74:
    lbu     v0, 0x0000(v1)             # 00000000
    andi    v0, v0, 0x001F             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0018
    beq     $at, $zero, lbl_80044264
    sll     t8, t8,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t8
    lw      t8, 0x6F68($at)            # 80106F68
    jr      t8
    nop
    lw      t2, 0x0030($sp)
    lw      t3, 0x0004(s0)             # 00000010
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    sw      t3, 0x0000(t2)             # 00000000
    lw      t9, 0x0008(s0)             # 00000014
    sw      t9, 0x0004(t2)             # 00000004
    lw      t3, 0x000C(s0)             # 00000018
    sw      t3, 0x0008(t2)             # 00000008
    lw      t6, 0x0010(s0)             # 0000001C
    lw      t4, 0x0034($sp)
    sw      t6, 0x0000(t4)             # 00000000
    lw      t5, 0x0014(s0)             # 00000020
    sw      t5, 0x0004(t4)             # 00000004
    lw      t6, 0x0018(s0)             # 00000024
    sw      t6, 0x0008(t4)             # 00000008
    lwc1    $f8, 0x0028(s0)            # 00000034
    lh      t8, 0x014C(s1)             # 0000014C
    swc1    $f8, 0x00FC(s1)            # 000000FC
    lh      t7, 0x0034(s0)             # 00000040
    ori     t2, t8, 0x0400             # t2 = FFFFFFFF
    sh      t2, 0x014C(s1)             # 0000014C
    b       lbl_80044278
    sh      t7, 0x015A(s1)             # 0000015A
    lh      t9, 0x0038(s0)             # 00000044
    addiu   a3, s0, 0x0004             # a3 = 00000010
    addiu   v0, s0, 0x0010             # v0 = 0000001C
    bne     t9, $zero, lbl_80043B20
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    b       lbl_80043B40
    sh      t3, 0x0038(s0)             # 00000044
lbl_80043B20:
    lh      t4, 0x014C(s1)             # 0000014C
    andi    t5, t4, 0x0008             # t5 = 00000000
    beql    t5, $zero, lbl_80043B44
    lw      t8, 0x0030($sp)
    sh      $zero, 0x0038(s0)          # 00000044
    lh      t6, 0x014C(s1)             # 0000014C
    andi    t7, t6, 0xFFF7             # t7 = 00000074
    sh      t7, 0x014C(s1)             # 0000014C
lbl_80043B40:
    lw      t8, 0x0030($sp)
lbl_80043B44:
    lw      t9, 0x0000(a3)             # 00000010
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    sw      t9, 0x0000(t8)             # FFFFFFFF
    lw      t2, 0x0004(a3)             # 00000014
    sw      t2, 0x0004(t8)             # 00000003
    lw      t9, 0x0008(a3)             # 00000018
    sw      t9, 0x0008(t8)             # 00000007
    lw      t5, 0x0000(v0)             # 0000001C
    lw      t3, 0x0034($sp)
    sw      t5, 0x0000(t3)             # 00000001
    lw      t4, 0x0004(v0)             # 00000020
    sw      t4, 0x0004(t3)             # 00000005
    lw      t5, 0x0008(v0)             # 00000024
    sw      t5, 0x0008(t3)             # 00000009
    lwc1    $f10, 0x0028(s0)           # 00000034
    swc1    $f10, 0x00FC(s1)           # 000000FC
    lh      t6, 0x0034(s0)             # 00000040
    b       lbl_80044278
    sh      t6, 0x015A(s1)             # 0000015A
    lh      t7, 0x0038(s0)             # 00000044
    addiu   a3, s0, 0x0004             # a3 = 00000010
    addiu   v0, s0, 0x0010             # v0 = 0000001C
    bne     t7, $zero, lbl_80043BAC
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    b       lbl_80043BC0
    sh      t8, 0x0038(s0)             # 00000044
lbl_80043BAC:
    lh      t2, 0x014C(s1)             # 0000014C
    andi    t9, t2, 0x0008             # t9 = 00000008
    beql    t9, $zero, lbl_80043BC4
    lw      t3, 0x0030($sp)
    sh      $zero, 0x0038(s0)          # 00000044
lbl_80043BC0:
    lw      t3, 0x0030($sp)
lbl_80043BC4:
    lw      t5, 0x0000(a3)             # 00000010
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    sw      t5, 0x0000(t3)             # 00000001
    lw      t4, 0x0004(a3)             # 00000014
    sw      t4, 0x0004(t3)             # 00000005
    lw      t5, 0x0008(a3)             # 00000018
    sw      t5, 0x0008(t3)             # 00000009
    lw      t8, 0x0000(v0)             # 0000001C
    lw      t6, 0x0034($sp)
    sw      t8, 0x0000(t6)             # 00000074
    lw      t7, 0x0004(v0)             # 00000020
    sw      t7, 0x0004(t6)             # 00000078
    lw      t8, 0x0008(v0)             # 00000024
    sw      t8, 0x0008(t6)             # 0000007C
    lwc1    $f4, 0x0028(s0)            # 00000034
    swc1    $f4, 0x00FC(s1)            # 000000FC
    lh      t2, 0x0034(s0)             # 00000040
    b       lbl_80044278
    sh      t2, 0x015A(s1)             # 0000015A
    addiu   a3, s0, 0x0004             # a3 = 00000010
    addiu   t9, s0, 0x0010             # t9 = 0000001C
    sw      t9, 0x0024($sp)
    sw      a3, 0x0028($sp)
    addiu   a0, $sp, 0x00EC            # a0 = FFFFFFD4
    lw      a1, 0x0030($sp)
    jal     func_80067A84
    lw      a2, 0x0034($sp)
    lw      a1, 0x0028($sp)
    addiu   a0, s0, 0x002C             # a0 = 00000038
    jal     func_80067A84
    lw      a2, 0x0024($sp)
    lh      t3, 0x003C(s0)             # 00000048
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x002C(s0)            # 00000038
    lh      t5, 0x00F0($sp)
    cvt.s.w $f10, $f8
    lwc1    $f8, 0x00EC($sp)
    addiu   a0, $sp, 0x0100            # a0 = FFFFFFE8
    lw      a1, 0x0030($sp)
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    div.s   $f2, $f6, $f10
    sub.s   $f6, $f4, $f8
    mul.s   $f10, $f6, $f2
    add.s   $f4, $f10, $f8
    swc1    $f4, 0x00E4($sp)
    lh      t4, 0x0030(s0)             # 0000003C
    mtc1    t5, $f4                    # $f4 = 0.00
    subu    t6, t4, t5
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f6                    # $f6 = 0.00
    lh      t4, 0x00F2($sp)
    cvt.s.w $f10, $f6
    cvt.s.w $f6, $f4
    mul.s   $f8, $f10, $f2
    add.s   $f10, $f6, $f8
    trunc.w.s $f4, $f10
    mfc1    t9, $f4
    mtc1    t4, $f4                    # $f4 = 0.00
    sh      t9, 0x00E8($sp)
    lh      t3, 0x0032(s0)             # 0000003E
    subu    t6, t3, t4
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    cvt.s.w $f6, $f4
    mul.s   $f10, $f8, $f2
    add.s   $f8, $f6, $f10
    trunc.w.s $f4, $f8
    mfc1    t2, $f4
    jal     func_800359A8
    sh      t2, 0x00EA($sp)
    b       lbl_80043D60
    lw      t3, 0x0000(s0)             # 0000000C
    lh      t9, 0x003C(s0)             # 00000048
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    t9, $f10                   # $f10 = 0.00
    lwc1    $f0, 0x0074(s1)            # 00000074
    lwc1    $f4, 0x0010(s0)            # 0000001C
    cvt.s.w $f8, $f10
    sub.s   $f10, $f4, $f0
    div.s   $f2, $f6, $f8
    mul.s   $f6, $f10, $f2
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0100($sp)
    lwc1    $f4, 0x0014(s0)            # 00000020
    lwc1    $f12, 0x0078(s1)           # 00000078
    sub.s   $f10, $f4, $f12
    mul.s   $f6, $f10, $f2
    add.s   $f8, $f12, $f6
    swc1    $f8, 0x0104($sp)
    lwc1    $f4, 0x0018(s0)            # 00000024
    lwc1    $f14, 0x007C(s1)           # 0000007C
    sub.s   $f10, $f4, $f14
    mul.s   $f6, $f10, $f2
    add.s   $f8, $f14, $f6
    swc1    $f8, 0x0108($sp)
    lw      t3, 0x0000(s0)             # 0000000C
lbl_80043D60:
    lwc1    $f12, 0x0100($sp)
    lwc1    $f14, 0x0074(s1)           # 00000074
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_800356E0
    lw      a2, 0x000C(t3)             # 0000000C
    swc1    $f0, 0x0074(s1)            # 00000074
    lw      t6, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0104($sp)
    lwc1    $f14, 0x0078(s1)           # 00000078
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_800356E0
    lw      a2, 0x000C(t6)             # 0000000C
    swc1    $f0, 0x0078(s1)            # 00000078
    lw      t7, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0108($sp)
    lwc1    $f14, 0x007C(s1)           # 0000007C
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_800356E0
    lw      a2, 0x000C(t7)             # 0000000C
    swc1    $f0, 0x007C(s1)            # 0000007C
    lw      v1, 0x0000(s0)             # 0000000C
    lh      t8, 0x003C(s0)             # 00000048
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f14, 0x0050(s1)           # 00000050
    lwc1    $f6, 0x0004(s0)            # 00000010
    cvt.s.w $f10, $f4
    lwc1    $f0, 0x0054(s1)            # 00000054
    mfc1    a3, $f18
    sub.s   $f8, $f6, $f14
    div.s   $f2, $f18, $f10
    lwc1    $f10, 0x0008(s0)           # 00000014
    sub.s   $f6, $f10, $f0
    mul.s   $f4, $f8, $f2
    nop
    mul.s   $f8, $f6, $f2
    add.s   $f12, $f14, $f4
    add.s   $f4, $f0, $f8
    swc1    $f4, 0x0110($sp)
    lwc1    $f10, 0x000C(s0)           # 00000018
    lwc1    $f16, 0x0058(s1)           # 00000058
    sub.s   $f6, $f10, $f16
    mul.s   $f8, $f6, $f2
    add.s   $f4, $f16, $f8
    swc1    $f4, 0x0114($sp)
    lw      a2, 0x000C(v1)             # 0000000C
    jal     func_800356E0
    swc1    $f2, 0x00F4($sp)
    swc1    $f0, 0x0050(s1)            # 00000050
    lw      t4, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0110($sp)
    lwc1    $f14, 0x0054(s1)           # 00000054
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_800356E0
    lw      a2, 0x000C(t4)             # 0000000C
    swc1    $f0, 0x0054(s1)            # 00000054
    lw      t5, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0114($sp)
    lwc1    $f14, 0x0058(s1)           # 00000058
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_800356E0
    lw      a2, 0x000C(t5)             # 0000000C
    lwc1    $f2, 0x00F4($sp)
    swc1    $f0, 0x0058(s1)            # 00000058
    lwc1    $f10, 0x0028(s0)           # 00000034
    lwc1    $f14, 0x00FC(s1)           # 000000FC
    lw      t2, 0x0000(s0)             # 0000000C
    lui     a3, 0x3C23                 # a3 = 3C230000
    sub.s   $f6, $f10, $f14
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    lw      a2, 0x000C(t2)             # 0000000C
    mul.s   $f8, $f6, $f2
    jal     func_800356E0
    add.s   $f12, $f14, $f8
    swc1    $f0, 0x00FC(s1)            # 000000FC
    lh      t9, 0x0034(s0)             # 00000040
    lh      a1, 0x015A(s1)             # 0000015A
    lh      t8, 0x003C(s0)             # 00000048
    lw      t5, 0x0000(s0)             # 0000000C
    subu    t3, t9, a1
    sll     t6, t3, 16
    sra     t7, t6, 16
    div     $zero, t7, t8
    mflo    t4
    addu    a0, a1, t4
    sll     a0, a0, 16
    bne     t8, $zero, lbl_80043EC8
    nop
    break   # 0x01C00
lbl_80043EC8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_80043EE0
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80043EE0
    nop
    break   # 0x01800
lbl_80043EE0:
    sra     a0, a0, 16
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_800357B8
    lw      a2, 0x000C(t5)             # 0000000C
    sh      v0, 0x015A(s1)             # 0000015A
    b       lbl_80044278
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    addiu   a3, s0, 0x0004             # a3 = 00000010
    addiu   t2, s0, 0x0010             # t2 = 0000001C
    sw      t2, 0x0024($sp)
    sw      a3, 0x0028($sp)
    addiu   a0, $sp, 0x00EC            # a0 = FFFFFFD4
    lw      a1, 0x0030($sp)
    jal     func_80067A84
    lw      a2, 0x0034($sp)
    lw      a1, 0x0028($sp)
    addiu   a0, s0, 0x002C             # a0 = 00000038
    jal     func_80067A84
    lw      a2, 0x0024($sp)
    lw      t9, 0x0000(s0)             # 0000000C
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f12, 0x002C(s0)           # 00000038
    lwc1    $f14, 0x00EC($sp)
    jal     func_8003569C
    lw      a2, 0x000C(t9)             # 0000000C
    swc1    $f0, 0x00E4($sp)
    lw      t3, 0x0000(s0)             # 0000000C
    lh      a0, 0x0030(s0)             # 0000003C
    lh      a1, 0x00F0($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80035724
    lw      a2, 0x000C(t3)             # 0000000C
    sh      v0, 0x00E8($sp)
    lw      t6, 0x0000(s0)             # 0000000C
    lh      a0, 0x0032(s0)             # 0000003E
    lh      a1, 0x00F2($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80035724
    lw      a2, 0x000C(t6)             # 0000000C
    sh      v0, 0x00EA($sp)
    lw      a0, 0x0034($sp)
    lw      a1, 0x0030($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    b       lbl_80043FF0
    lw      v1, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0010(s0)           # 0000001C
    lwc1    $f14, 0x0074(s1)           # 00000074
    lw      a2, 0x000C(v1)             # 0000000C
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x0074(s1)            # 00000074
    lw      t7, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0014(s0)           # 00000020
    lwc1    $f14, 0x0078(s1)           # 00000078
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    lw      a2, 0x000C(t7)             # 0000000C
    swc1    $f0, 0x0078(s1)            # 00000078
    lw      t8, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0018(s0)           # 00000024
    lwc1    $f14, 0x007C(s1)           # 0000007C
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    lw      a2, 0x000C(t8)             # 0000000C
    swc1    $f0, 0x007C(s1)            # 0000007C
    lw      v1, 0x0000(s0)             # 0000000C
lbl_80043FF0:
    lwc1    $f12, 0x0004(s0)           # 00000010
    lwc1    $f14, 0x0050(s1)           # 00000050
    lw      a2, 0x000C(v1)             # 0000000C
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x0050(s1)            # 00000050
    lw      t4, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0008(s0)           # 00000014
    lwc1    $f14, 0x0054(s1)           # 00000054
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    lw      a2, 0x000C(t4)             # 0000000C
    swc1    $f0, 0x0054(s1)            # 00000054
    lw      t5, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x000C(s0)           # 00000018
    lwc1    $f14, 0x0058(s1)           # 00000058
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    lw      a2, 0x000C(t5)             # 0000000C
    swc1    $f0, 0x0058(s1)            # 00000058
    lw      t2, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x0028(s0)           # 00000034
    lwc1    $f14, 0x00FC(s1)           # 000000FC
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_8003569C
    lw      a2, 0x000C(t2)             # 0000000C
    swc1    $f0, 0x00FC(s1)            # 000000FC
    lw      t9, 0x0000(s0)             # 0000000C
    lh      a0, 0x0034(s0)             # 00000040
    lh      a1, 0x015A(s1)             # 0000015A
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80035724
    lw      a2, 0x000C(t9)             # 0000000C
    sh      v0, 0x015A(s1)             # 0000015A
    b       lbl_80044278
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    lwc1    $f12, 0x0004(s0)           # 00000010
    lwc1    $f14, 0x0050(s1)           # 00000050
    lw      a2, 0x000C(v1)             # 0000000C
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x0050(s1)            # 00000050
    lw      t3, 0x0000(s0)             # 0000000C
    lwc1    $f4, 0x00F4(s1)            # 000000F4
    lwc1    $f8, 0x0054(s1)            # 00000054
    lwc1    $f10, 0x000C(t3)           # 0000000C
    lwc1    $f14, 0x0058(s1)           # 00000058
    lui     a3, 0x3F80                 # a3 = 3F800000
    mul.s   $f6, $f4, $f10
    add.s   $f4, $f8, $f6
    swc1    $f4, 0x0054(s1)            # 00000054
    lw      t6, 0x0000(s0)             # 0000000C
    lwc1    $f12, 0x000C(s0)           # 00000018
    jal     func_8003569C
    lw      a2, 0x000C(t6)             # 0000000C
    swc1    $f0, 0x0058(s1)            # 00000058
    lw      a2, 0x0034($sp)
    lw      a1, 0x0030($sp)
    jal     func_80067A84
    addiu   a0, $sp, 0x00E4            # a0 = FFFFFFCC
    lw      t7, 0x0000(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6FC8($at)           # 80106FC8
    lwc1    $f10, 0x0020(t7)           # 00000020
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f6, $f10, $f8
    lh      t9, 0x00EA($sp)
    lh      t6, 0x00E8($sp)
    addiu   t7, $zero, 0x3A98          # t7 = 00003A98
    addiu   t4, $zero, 0xC568          # t4 = FFFFC568
    slti    $at, t6, 0x3A99
    lui     a3, 0x3F80                 # a3 = 3F800000
    add.s   $f10, $f6, $f4
    trunc.w.s $f8, $f10
    mfc1    t2, $f8
    nop
    addu    t3, t9, t2
    bne     $at, $zero, lbl_80044134
    sh      t3, 0x00EA($sp)
    sh      t7, 0x00E8($sp)
lbl_80044134:
    lh      t8, 0x00E8($sp)
    slti    $at, t8, 0xC568
    beql    $at, $zero, lbl_8004414C
    lw      v1, 0x0000(s0)             # 0000000C
    sh      t4, 0x00E8($sp)
    lw      v1, 0x0000(s0)             # 0000000C
lbl_8004414C:
    lwc1    $f6, 0x00E4($sp)
    lwc1    $f14, 0x00E4($sp)
    lwc1    $f12, 0x0024(v1)           # 00000024
    c.lt.s  $f6, $f12
    nop
    bc1tl   lbl_80044178
    lw      a0, 0x0034($sp)
    jal     func_8003569C
    lw      a2, 0x000C(v1)             # 0000000C
    swc1    $f0, 0x00E4($sp)
    lw      a0, 0x0034($sp)
lbl_80044178:
    lw      a1, 0x0030($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00E4            # a2 = FFFFFFCC
    lh      t5, 0x003C(s0)             # 00000048
    lw      v1, 0x0000(s0)             # 0000000C
    lwc1    $f14, 0x00FC(s1)           # 000000FC
    mtc1    t5, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0008(v1)            # 00000008
    lui     a3, 0x3F80                 # a3 = 3F800000
    cvt.s.w $f6, $f8
    lw      a2, 0x000C(v1)             # 0000000C
    sub.s   $f10, $f4, $f14
    div.s   $f4, $f10, $f6
    jal     func_8003569C
    add.s   $f12, $f14, $f4
    swc1    $f0, 0x00FC(s1)            # 000000FC
    lw      t9, 0x0000(s0)             # 0000000C
    lh      a0, 0x0034(s0)             # 00000040
    lh      a1, 0x015A(s1)             # 0000015A
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80035724
    lw      a2, 0x000C(t9)             # 0000000C
    sh      v0, 0x015A(s1)             # 0000015A
    b       lbl_80044278
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    lh      t2, 0x0034(s0)             # 00000040
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    b       lbl_80044278
    sh      t2, 0x0036(s0)             # 00000042
    lh      v0, 0x0162(s1)             # 00000162
    or      a1, $zero, $zero           # a1 = 00000000
    bgez    v0, lbl_80044204
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80044204
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80044204:
    lw      t3, 0x008C(s1)             # 0000008C
    sll     t6, v1,  2
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    t7, t3, t6
    jal     func_80048FCC
    lw      a0, 0x0790(t7)             # 00000790
    lh      v0, 0x0162(s1)             # 00000162
    lw      t9, 0x0034($sp)
    bgez    v0, lbl_80044234
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80044234
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80044234:
    lw      t8, 0x008C(s1)             # 0000008C
    lw      t3, 0x0000(t9)             # 00000000
    sll     t4, v1,  2
    addu    t5, t8, t4
    lw      a0, 0x0790(t5)             # 00000790
    sw      t3, 0x005C(s1)             # 0000005C
    lw      t2, 0x0004(t9)             # 00000004
    or      a1, s1, $zero              # a1 = 00000000
    sw      t2, 0x0060(s1)             # 00000060
    lw      t3, 0x0008(t9)             # 00000008
    jal     func_80049BE0
    sw      t3, 0x0064(s1)             # 00000064
lbl_80044264:
    lh      t6, 0x0164(s1)             # 00000164
    addiu   a2, s1, 0x005C             # a2 = 0000005C
    beql    t6, $zero, lbl_8004427C
    lw      t7, 0x0034($sp)
    sh      $zero, 0x0160(s1)          # 00000160
lbl_80044278:
    lw      t7, 0x0034($sp)
lbl_8004427C:
    or      a0, s1, $zero              # a0 = 00000000
    lw      t4, 0x0000(t7)             # 00000000
    sw      t4, 0x0000(a2)             # 0000005C
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(a2)             # 00000060
    lw      t4, 0x0008(t7)             # 00000008
    sw      t4, 0x0008(a2)             # 00000064
    lw      t5, 0x0000(s0)             # 0000000C
    lw      a1, 0x0030($sp)
    lbu     v1, 0x0000(t5)             # 00000000
    andi    t9, v1, 0x0080             # t9 = 00000000
    beql    t9, $zero, lbl_800442C8
    andi    t3, v1, 0x0040             # t3 = 00000000
    jal     func_80035CBC
    sw      a2, 0x002C($sp)
    lw      t2, 0x0000(s0)             # 0000000C
    lw      a2, 0x002C($sp)
    lbu     v1, 0x0000(t2)             # 00000000
    andi    t3, v1, 0x0040             # t3 = 00000000
lbl_800442C8:
    beq     t3, $zero, lbl_8004431C
    or      a1, a2, $zero              # a1 = 00000000
    lwc1    $f8, 0x001C(s0)            # 00000028
    lw      t6, 0x0090(s1)             # 00000090
    swc1    $f8, 0x0024(t6)            # 00000024
    lw      t7, 0x0090(s1)             # 00000090
    lwc1    $f10, 0x0024(s0)           # 00000030
    swc1    $f10, 0x002C(t7)           # 0000002C
    lw      v0, 0x0090(s1)             # 00000090
    lw      t5, 0x0088($sp)
    lw      t8, 0x066C(v0)             # 0000066C
    sll     t4, t8,  4
    bgezl   t4, lbl_80044338
    lh      t2, 0x0038(s0)             # 00000044
    lb      t9, 0x013F(t5)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t9, $at, lbl_80044338
    lh      t2, 0x0038(s0)             # 00000044
    lwc1    $f6, 0x0020(s0)            # 0000002C
    b       lbl_80044334
    swc1    $f6, 0x0028(v0)            # 00000028
lbl_8004431C:
    lwc1    $f4, 0x0098($sp)
    swc1    $f4, 0x001C(s0)            # 00000028
    lwc1    $f8, 0x009C($sp)
    swc1    $f8, 0x0020(s0)            # 0000002C
    lwc1    $f10, 0x00A0($sp)
    swc1    $f10, 0x0024(s0)           # 00000030
lbl_80044334:
    lh      t2, 0x0038(s0)             # 00000044
lbl_80044338:
    bnel    t2, $zero, lbl_80044354
    lw      t6, 0x0090(s1)             # 00000090
    lh      v0, 0x0160(s1)             # 00000160
    blez    v0, lbl_80044350
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0160(s1)             # 00000160
lbl_80044350:
    lw      t6, 0x0090(s1)             # 00000090
lbl_80044354:
    beq     t6, $zero, lbl_8004438C
    nop
    lwc1    $f6, 0x0050(s1)            # 00000050
    lwc1    $f4, 0x0094(s1)            # 00000094
    lwc1    $f10, 0x0054(s1)           # 00000054
    sub.s   $f8, $f6, $f4
    lwc1    $f6, 0x0098(s1)            # 00000098
    sub.s   $f4, $f10, $f6
    swc1    $f8, 0x00E4(s1)            # 000000E4
    lwc1    $f8, 0x0058(s1)            # 00000058
    lwc1    $f10, 0x009C(s1)           # 0000009C
    swc1    $f4, 0x00E8(s1)            # 000000E8
    sub.s   $f6, $f8, $f10
    swc1    $f6, 0x00EC(s1)            # 000000EC
lbl_8004438C:
    jal     func_80067580
    lw      a0, 0x0030($sp)
    swc1    $f0, 0x00DC(s1)            # 000000DC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004439C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0118           # $sp += 0x118


func_800443B0:
# Copy Float XYZ
# A0 = vector3_f32* source
# A1 = vector3_f32* destination
    lwc1    $f4, 0x0000(a0)            # 00000000
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    swc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f8, 0x0008(a0)            # 00000008
    swc1    $f8, 0x0008(a1)            # 00000008
    jr      $ra
    nop


func_800443D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800443B0
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF8
    jal     func_800679E8
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    lw      a1, 0x0030($sp)
    lh      t6, 0x002E($sp)
    lw      a0, 0x0038($sp)
    lh      t7, 0x000E(a1)             # 0000000E
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF8
    addu    t8, t6, t7
    jal     func_800359A8
    sh      t8, 0x002E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8004442C:
# DEMO1()
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0124(s0)             # 00000124
    sw      t6, 0x0084($sp)
    lw      a3, 0x0128(s0)             # 00000128
    lh      t7, 0x0142(s0)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t1, 0x0144(s0)             # 00000144
    sll     t8, t7,  3
    addu    t9, t9, t8
    lw      t9, -0x118C(t9)            # 800EEE74
    sll     t2, t1,  3
    addu    t3, t9, t2
    lw      v0, 0x0004(t3)             # 00000004
    lh      t4, 0x0000(v0)             # 00000000
    sh      t4, 0x0000(s0)             # 00000000
    lh      t5, 0x0000(s0)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    sw      t5, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_800444A4
    mtc1    $zero, $f4                 # $f4 = 0.00
    beql    v0, $at, lbl_800444C0
    addiu   v1, s0, 0x0004             # v1 = 00000004
    b       lbl_800445F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_800444A4:
    addiu   v1, s0, 0x0004             # v1 = 00000004
    sh      $zero, 0x0004(v1)          # 00000008
    swc1    $f4, 0x0000(v1)            # 00000004
    lh      t6, 0x015E(s0)             # 0000015E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015E(s0)             # 0000015E
    addiu   v1, s0, 0x0004             # v1 = 00000004
lbl_800444C0:
    addiu   t0, v1, 0x0004             # t0 = 00000008
    addiu   a2, s0, 0x00FC             # a2 = 000000FC
    sw      a2, 0x0034($sp)
    sw      t0, 0x0010($sp)
    sw      t0, 0x002C($sp)
    sw      v1, 0x0014($sp)
    sw      v1, 0x0030($sp)
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFC4
    jal     func_800999A4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFB4
    lw      v1, 0x0030($sp)
    lw      a2, 0x0034($sp)
    bne     v0, $zero, lbl_80044518
    lw      t0, 0x002C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFB4
    lw      a3, 0x0084($sp)
    sw      t0, 0x0010($sp)
    jal     func_800999A4
    sw      v1, 0x0014($sp)
    beql    v0, $zero, lbl_80044528
    lh      t9, 0x012C(s0)             # 0000012C
lbl_80044518:
    lh      t8, 0x015E(s0)             # 0000015E
    addiu   t1, t8, 0x0001             # t1 = 00000001
    sh      t1, 0x015E(s0)             # 0000015E
    lh      t9, 0x012C(s0)             # 0000012C
lbl_80044528:
    addiu   a3, s0, 0x0074             # a3 = 00000074
    or      a1, a3, $zero              # a1 = 00000074
    beq     t9, $zero, lbl_80044584
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFC4
    lw      a1, 0x0090(s0)             # 00000090
    beql    a1, $zero, lbl_8004457C
    addiu   a2, s0, 0x0050             # a2 = 00000050
    lw      t2, 0x0130(a1)             # 000001A4
    beql    t2, $zero, lbl_8004457C
    addiu   a2, s0, 0x0050             # a2 = 00000050
    jal     func_800226A4
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD0
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFC4
    jal     func_800443D0
    addiu   a2, s0, 0x0074             # a2 = 00000074
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD0
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFB8
    jal     func_800443D0
    addiu   a2, s0, 0x0050             # a2 = 00000050
    addiu   a2, s0, 0x0050             # a2 = 00000050
lbl_8004457C:
    b       lbl_800445A8
    addiu   a3, s0, 0x0074             # a3 = 00000074
lbl_80044584:
    jal     func_800443B0
    sw      a3, 0x0030($sp)
    addiu   a2, s0, 0x0050             # a2 = 00000050
    or      a1, a2, $zero              # a1 = 00000050
    sw      a2, 0x0034($sp)
    jal     func_800443B0
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    lw      a2, 0x0034($sp)
    lw      a3, 0x0030($sp)
lbl_800445A8:
    lw      t4, 0x0000(a3)             # 00000000
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    lui     $at, 0x4380                # $at = 43800000
    sw      t4, 0x0000(a1)             # 0000005C
    lw      t3, 0x0004(a3)             # 00000004
    mtc1    $at, $f8                   # $f8 = 256.00
    or      a0, a2, $zero              # a0 = 00000000
    sw      t3, 0x0004(a1)             # 00000060
    lw      t4, 0x0008(a3)             # 00000008
    sw      t4, 0x0008(a1)             # 00000064
    lwc1    $f6, 0x004C($sp)
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    jal     func_80067580
    sh      t6, 0x015A(s0)             # 0000015A
    swc1    $f0, 0x00DC(s0)            # 000000DC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800445F0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_80044604:
# DEMO2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80044624:
# DEMO3()
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sb      $zero, 0x0053($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lh      t6, 0x014C(s0)             # 0000014C
    mov.s   $f16, $f0
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE8
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    sh      t7, 0x014C(s0)             # 0000014C
    lh      t8, 0x0142(s0)             # 00000142
    lui     t0, 0x800F                 # t0 = 800F0000
    lh      t1, 0x0144(s0)             # 00000144
    sll     t9, t8,  3
    addu    t0, t0, t9
    lw      t0, -0x118C(t0)            # 800EEE74
    sll     t2, t1,  3
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addu    t3, t0, t2
    lw      v0, 0x0004(t3)             # 00000004
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    lh      t4, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(s0)            # 00000000
    lh      t5, -0x0004(v0)            # 00000004
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(s0)           # 00000004
    lh      t6, 0x0000(v0)             # 00000008
    sh      t6, 0x0008(s0)             # 00000008
    sw      a1, 0x0030($sp)
    sw      a2, 0x0034($sp)
    jal     func_80067A84
    swc1    $f16, 0x004C($sp)
    lh      t7, 0x0008(s0)             # 00000008
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f16, 0x004C($sp)
    sw      t7, -0x0E58($at)           # 800EF1A8
    lhu     t8, 0x015E(s0)             # 0000015E
    sltiu   $at, t8, 0x001F
    beq     $at, $zero, lbl_80044F20
    sll     t8, t8,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t8
    lw      t8, 0x6FCC($at)            # 80106FCC
    jr      t8
    nop
    lh      t9, 0x014C(s0)             # 0000014C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t9, 0xFFF3             # t1 = 00000000
    jal     func_80035910
    sh      t1, 0x014C(s0)             # 0000014C
    lwc1    $f18, 0x0000(s0)           # 00000000
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    addiu   v0, s0, 0x0094             # v0 = 00000094
    swc1    $f18, 0x00FC(s0)           # 000000FC
    sh      $zero, 0x0010(s1)          # 0000001C
    lh      t0, 0x0010(s1)             # 0000001C
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    sh      t0, 0x015A(s0)             # 0000015A
    lw      t3, 0x0000(v0)             # 00000094
    sw      t3, 0x0000(s1)             # 0000000C
    lw      t2, 0x0004(v0)             # 00000098
    sw      t2, 0x0004(s1)             # 00000010
    lw      t3, 0x0008(v0)             # 0000009C
    sw      t3, 0x0008(s1)             # 00000014
    lwc1    $f0, 0x0104(s0)            # 00000104
    c.eq.s  $f4, $f0
    nop
    bc1tl   lbl_80044768
    lh      a0, 0x000E(v0)             # 000000A2
    swc1    $f0, 0x0004(s1)            # 00000010
    lh      a0, 0x000E(v0)             # 000000A2
lbl_80044768:
    sw      v0, 0x0028($sp)
    jal     func_800636C4              # sins?
    sh      a0, 0x004A($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lwc1    $f8, 0x0000(s1)            # 0000000C
    lh      a0, 0x004A($sp)
    mul.s   $f6, $f0, $f2
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0068($sp)
    lwc1    $f18, 0x0004(s1)           # 00000010
    add.s   $f4, $f18, $f2
    jal     func_80063684              # coss?
    swc1    $f4, 0x006C($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f10, 0x0008(s1)           # 00000014
    lh      a0, 0x004A($sp)
    mul.s   $f8, $f0, $f6
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    add.s   $f18, $f8, $f10
    swc1    $f18, 0x0070($sp)
    lw      t4, 0x008C(s0)             # 0000008C
    lw      t5, 0x009C(t4)             # 0000009C
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_800447F0
    addiu   a0, a0, 0x3FFF             # a0 = 00003FFF
    addiu   a0, a0, 0xC001             # a0 = 00000000
    sll     a0, a0, 16
    sra     a0, a0, 16
    b       lbl_800447FC
    sh      t7, 0x0012(s1)             # 0000001E
    addiu   a0, a0, 0x3FFF             # a0 = 00003FFF
lbl_800447F0:
    sll     a0, a0, 16
    sra     a0, a0, 16
    sh      t8, 0x0012(s1)             # 0000001E
lbl_800447FC:
    jal     func_800636C4              # sins?
    sh      a0, 0x004A($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lwc1    $f4, 0x0008(v1)            # 800EF208
    lwc1    $f8, 0x0068($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f4                   # $f4 = 5.00
    lh      a0, 0x004A($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0074($sp)
    lwc1    $f18, 0x0004(s1)           # 00000010
    add.s   $f6, $f18, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x0078($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lwc1    $f8, 0x0008(v1)            # 800EF208
    lwc1    $f18, 0x0070($sp)
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f0, $f8
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFC0
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFCC
    add.s   $f4, $f10, $f18
    jal     func_80035CBC
    swc1    $f4, 0x007C($sp)
    beq     v0, $zero, lbl_8004487C
    lui     a2, 0x800F                 # a2 = 800F0000
    lh      t9, 0x0012(s1)             # 0000001E
    subu    t1, $zero, t9
    sh      t1, 0x0012(s1)             # 0000001E
lbl_8004487C:
    addiu   a1, a2, 0xF220             # a1 = 800EF220
    jal     func_800679E8
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFD8
    lw      t2, 0x0028($sp)
    lh      t0, 0x0086($sp)
    lw      a0, 0x0030($sp)
    lh      t3, 0x000E(t2)             # 0000000E
    or      a1, s1, $zero              # a1 = 0000000C
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFD8
    addu    t4, t0, t3
    jal     func_800359A8
    sh      t4, 0x0086($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lwc1    $f6, 0x0000(v1)            # 800EF200
    lh      t5, 0x0004(v1)             # 800EF204
    lh      t6, 0x0006(v1)             # 800EF206
    swc1    $f6, 0x0088($sp)
    sh      t5, 0x008C($sp)
    lh      t7, 0x0012(s1)             # 0000001E
    lw      t9, 0x0028($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    multu   t6, t7
    lh      t1, 0x000E(t9)             # 0000000E
    mtc1    $at, $f8                   # $f8 = 1.00
    mflo    t8
    addu    t2, t8, t1
    sh      t2, 0x008E($sp)
    lh      a0, 0x0010(s1)             # 0000001C
    b       lbl_80044F88
    swc1    $f8, 0x000C(s1)            # 00000018
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    lh      t0, 0x0010(s1)             # 0000001C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7048($at)           # 80107048
    addiu   t3, t0, 0xFFFE             # t3 = FFFFFFFE
    mtc1    t3, $f10                   # $f10 = NaN
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0xF220             # a2 = 800EF220
    cvt.s.w $f18, $f10
    lwc1    $f2, 0x0000(a2)            # 800EF220
    lwc1    $f6, 0x000C(a2)            # 800EF22C
    lwc1    $f12, 0x0004(a2)           # 800EF224
    lwc1    $f14, 0x0008(a2)           # 800EF228
    sub.s   $f8, $f6, $f2
    mul.s   $f0, $f18, $f4
    lwc1    $f4, 0x0010(a2)            # 800EF230
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFD8
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFB4
    sub.s   $f6, $f4, $f12
    mul.s   $f10, $f8, $f0
    swc1    $f0, 0x0058($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f18, $f10, $f2
    add.s   $f10, $f8, $f12
    swc1    $f18, 0x005C($sp)
    lwc1    $f18, 0x0014(a2)           # 800EF234
    swc1    $f10, 0x0060($sp)
    sub.s   $f4, $f18, $f14
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f6, $f14
    jal     func_800679E8
    swc1    $f8, 0x0064($sp)
    lh      t4, 0x0086($sp)
    lh      t5, 0x0012(s1)             # 0000001E
    addiu   v1, s0, 0x0094             # v1 = 00000094
    lh      t7, 0x000E(v1)             # 000000A2
    multu   t4, t5
    sw      v1, 0x0028($sp)
    lw      a0, 0x0030($sp)
    or      a1, s1, $zero              # a1 = 0000000C
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFD8
    mflo    t6
    addu    t9, t6, t7
    jal     func_800359A8
    sh      t9, 0x0086($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lh      a1, 0x0004(v1)             # 800EF204
    lh      t8, 0x000C(v1)             # 800EF20C
    lwc1    $f2, 0x0000(v1)            # 800EF200
    lwc1    $f10, 0x0008(v1)           # 800EF208
    subu    t1, t8, a1
    sll     t2, t1, 16
    sra     t0, t2, 16
    mtc1    t0, $f8                    # $f8 = 0.00
    sub.s   $f18, $f10, $f2
    lh      a2, 0x0006(v1)             # 800EF206
    lh      t9, 0x000E(v1)             # 800EF20E
    cvt.s.w $f10, $f8
    lwc1    $f0, 0x0058($sp)
    subu    t8, t9, a2
    sll     t1, t8, 16
    mul.s   $f4, $f18, $f0
    sra     t2, t1, 16
    mtc1    t2, $f8                    # $f8 = 0.00
    mul.s   $f18, $f10, $f0
    lw      t4, 0x0028($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f6, $f4, $f2
    cvt.s.w $f10, $f8
    swc1    $f6, 0x0080($sp)
    swc1    $f6, 0x0088($sp)
    trunc.w.s $f4, $f18
    mul.s   $f18, $f10, $f0
    lwc1    $f10, 0x704C($at)          # 8010704C
    mfc1    t6, $f4
    nop
    addu    t7, t6, a1
    trunc.w.s $f4, $f18
    or      t8, t7, $zero              # t8 = 00000000
    sh      t7, 0x0084($sp)
    sh      t8, 0x008C($sp)
    mfc1    t5, $f4
    nop
    addu    t6, t5, a2
    sh      t6, 0x0086($sp)
    lh      t1, 0x0012(s1)             # 0000001E
    sll     t2, t6, 16
    sra     t0, t2, 16
    multu   t0, t1
    lh      t5, 0x000E(t4)             # 0000000E
    mflo    t3
    addu    t7, t3, t5
    sh      t7, 0x008E($sp)
    lwc1    $f8, 0x000C(s1)            # 00000018
    lh      a0, 0x0010(s1)             # 0000001C
    sub.s   $f18, $f8, $f10
    b       lbl_80044F88
    swc1    $f18, 0x000C(s1)           # 00000018
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    lh      t9, 0x0010(s1)             # 0000001C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7050($at)           # 80107050
    addiu   t8, t9, 0xFF6C             # t8 = FFFFFF6C
    mtc1    t8, $f4                    # $f4 = NaN
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0xF220             # a2 = 800EF220
    cvt.s.w $f6, $f4
    lwc1    $f2, 0x000C(a2)            # 800EF22C
    lwc1    $f10, 0x0018(a2)           # 800EF238
    lwc1    $f12, 0x0014(a2)           # 800EF234
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFD8
    sub.s   $f18, $f10, $f2
    mul.s   $f0, $f6, $f8
    lwc1    $f8, 0x0010(a2)            # 800EF230
    lwc1    $f10, 0x001C(a2)           # 800EF23C
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFB4
    sub.s   $f14, $f8, $f16
    mul.s   $f4, $f18, $f0
    swc1    $f0, 0x0058($sp)
    sub.s   $f18, $f10, $f14
    lwc1    $f10, 0x0020(a2)           # 800EF240
    add.s   $f6, $f4, $f2
    mul.s   $f4, $f18, $f0
    sub.s   $f18, $f10, $f12
    swc1    $f6, 0x005C($sp)
    add.s   $f6, $f4, $f14
    mul.s   $f4, $f18, $f0
    swc1    $f6, 0x0060($sp)
    add.s   $f8, $f6, $f16
    add.s   $f6, $f4, $f12
    swc1    $f8, 0x0060($sp)
    jal     func_800679E8
    swc1    $f6, 0x0064($sp)
    lh      t6, 0x0086($sp)
    lh      t2, 0x0012(s1)             # 0000001E
    addiu   v1, s0, 0x0094             # v1 = 00000094
    lh      t1, 0x000E(v1)             # 000000A2
    multu   t6, t2
    sw      v1, 0x0028($sp)
    lw      a0, 0x0030($sp)
    or      a1, s1, $zero              # a1 = 0000000C
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFD8
    mflo    t0
    addu    t4, t0, t1
    jal     func_800359A8
    sh      t4, 0x0086($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lh      a1, 0x000C(v1)             # 800EF20C
    lh      t3, 0x0014(v1)             # 800EF214
    lwc1    $f2, 0x0008(v1)            # 800EF208
    lwc1    $f8, 0x0010(v1)            # 800EF210
    subu    t5, t3, a1
    sll     t7, t5, 16
    sra     t9, t7, 16
    mtc1    t9, $f6                    # $f6 = 0.00
    sub.s   $f10, $f8, $f2
    lh      a2, 0x000E(v1)             # 800EF20E
    lh      t4, 0x0016(v1)             # 800EF216
    cvt.s.w $f8, $f6
    lwc1    $f0, 0x0058($sp)
    subu    t3, t4, a2
    sll     t5, t3, 16
    mul.s   $f18, $f10, $f0
    sra     t7, t5, 16
    mtc1    t7, $f6                    # $f6 = 0.00
    mul.s   $f10, $f8, $f0
    lw      t6, 0x0028($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f4, $f18, $f2
    cvt.s.w $f8, $f6
    swc1    $f4, 0x0080($sp)
    swc1    $f4, 0x0088($sp)
    trunc.w.s $f18, $f10
    mul.s   $f10, $f8, $f0
    lwc1    $f8, 0x7054($at)           # 80107054
    mfc1    t0, $f18
    nop
    addu    t1, t0, a1
    trunc.w.s $f18, $f10
    or      t3, t1, $zero              # t3 = 00000000
    sh      t1, 0x0084($sp)
    sh      t3, 0x008C($sp)
    mfc1    t2, $f18
    nop
    addu    t0, t2, a2
    sh      t0, 0x0086($sp)
    lh      t5, 0x0012(s1)             # 0000001E
    sll     t7, t0, 16
    sra     t9, t7, 16
    multu   t9, t5
    lh      t2, 0x000E(t6)             # 0000000E
    mflo    t8
    addu    t1, t8, t2
    sh      t1, 0x008E($sp)
    lwc1    $f6, 0x000C(s1)            # 00000018
    lh      a0, 0x0010(s1)             # 0000001C
    sub.s   $f10, $f6, $f8
    b       lbl_80044F88
    swc1    $f10, 0x000C(s1)           # 00000018
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    lh      t4, 0x0010(s1)             # 0000001C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7058($at)           # 80107058
    addiu   t3, t4, 0xFF61             # t3 = FFFFFF61
    mtc1    t3, $f18                   # $f18 = NaN
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0xF220             # a2 = 800EF220
    cvt.s.w $f4, $f18
    lwc1    $f2, 0x0018(a2)            # 800EF238
    lwc1    $f8, 0x0024(a2)            # 800EF244
    lwc1    $f12, 0x001C(a2)           # 800EF23C
    lwc1    $f14, 0x0020(a2)           # 800EF240
    sub.s   $f10, $f8, $f2
    mul.s   $f0, $f4, $f6
    lwc1    $f6, 0x0028(a2)            # 800EF248
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFD8
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFB4
    sub.s   $f8, $f6, $f12
    lwc1    $f6, 0x002C(a2)            # 800EF24C
    mul.s   $f18, $f10, $f0
    swc1    $f0, 0x0058($sp)
    mul.s   $f10, $f8, $f0
    sub.s   $f8, $f6, $f14
    add.s   $f4, $f18, $f2
    add.s   $f18, $f10, $f12
    mul.s   $f10, $f8, $f0
    swc1    $f4, 0x005C($sp)
    swc1    $f18, 0x0060($sp)
    add.s   $f4, $f18, $f16
    add.s   $f18, $f10, $f14
    swc1    $f4, 0x0060($sp)
    jal     func_800679E8
    swc1    $f18, 0x0064($sp)
    lh      t0, 0x0086($sp)
    lh      t7, 0x0012(s1)             # 0000001E
    addiu   v1, s0, 0x0094             # v1 = 00000094
    lh      t5, 0x000E(v1)             # 000000A2
    multu   t0, t7
    sw      v1, 0x0028($sp)
    lw      a0, 0x0030($sp)
    or      a1, s1, $zero              # a1 = 0000000C
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFD8
    mflo    t9
    addu    t6, t9, t5
    jal     func_800359A8
    sh      t6, 0x0086($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF200             # v1 = 800EF200
    lh      a1, 0x0014(v1)             # 800EF214
    lh      t8, 0x001C(v1)             # 800EF21C
    lwc1    $f2, 0x0010(v1)            # 800EF210
    lwc1    $f4, 0x0018(v1)            # 800EF218
    subu    t2, t8, a1
    sll     t1, t2, 16
    sra     t4, t1, 16
    mtc1    t4, $f18                   # $f18 = 0.00
    sub.s   $f6, $f4, $f2
    lh      a2, 0x0016(v1)             # 800EF216
    lh      t6, 0x001E(v1)             # 800EF21E
    cvt.s.w $f4, $f18
    lwc1    $f0, 0x0058($sp)
    subu    t8, t6, a2
    sll     t2, t8, 16
    mul.s   $f8, $f6, $f0
    sra     t1, t2, 16
    mtc1    t1, $f18                   # $f18 = 0.00
    mul.s   $f6, $f4, $f0
    lw      t0, 0x0028($sp)
    lui     $at, 0x8010                # $at = 80100000
    add.s   $f10, $f8, $f2
    cvt.s.w $f4, $f18
    swc1    $f10, 0x0080($sp)
    swc1    $f10, 0x0088($sp)
    trunc.w.s $f8, $f6
    mul.s   $f6, $f4, $f0
    lwc1    $f4, 0x705C($at)           # 8010705C
    mfc1    t9, $f8
    nop
    addu    t5, t9, a1
    trunc.w.s $f8, $f6
    or      t8, t5, $zero              # t8 = 00000000
    sh      t5, 0x0084($sp)
    sh      t8, 0x008C($sp)
    mfc1    t7, $f8
    nop
    addu    t9, t7, a2
    sh      t9, 0x0086($sp)
    lh      t2, 0x0012(s1)             # 0000001E
    sll     t1, t9, 16
    sra     t4, t1, 16
    multu   t4, t2
    lh      t7, 0x000E(t0)             # 0000000E
    mflo    t3
    addu    t5, t3, t7
    sh      t5, 0x008E($sp)
    lwc1    $f18, 0x000C(s1)           # 00000018
    lh      a0, 0x0010(s1)             # 0000001C
    add.s   $f6, $f18, $f4
    b       lbl_80044F88
    swc1    $f6, 0x000C(s1)            # 00000018
    lh      t6, 0x014C(s0)             # 0000014C
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    ori     t8, t6, 0x0400             # t8 = 00000400
    sh      t8, 0x014C(s0)             # 0000014C
    lh      t9, 0x014C(s0)             # 0000014C
    andi    t1, t9, 0x0008             # t1 = 00000000
    beql    t1, $zero, lbl_80044DD8
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t4, 0x015E(s0)             # 0000015E
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_80044DD8:
    addiu   t0, s0, 0x0094             # t0 = 00000094
    sb      t2, 0x0053($sp)
    sw      t0, 0x0028($sp)
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    b       lbl_80044F88
    lh      a0, 0x0010(s1)             # 0000001C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lh      t3, 0x0096($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7060($at)          # 80107060
    sh      $zero, 0x008C($sp)
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    swc1    $f8, 0x0088($sp)
    sh      t3, 0x008E($sp)
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t7, $zero, 0x3400          # t7 = 00003400
    swc1    $f10, 0x000C(s1)           # 00000018
    sw      t7, -0x0E58($at)           # 800EF1A8
    lh      t5, 0x0010(s1)             # 0000001C
    lui     $at, 0x8010                # $at = 80100000
    bltzl   t5, lbl_80044F14
    lh      t6, 0x014C(s0)             # 0000014C
    lwc1    $f18, 0x7064($at)          # 80107064
    lwc1    $f4, 0x00D8(s0)            # 000000D8
    lui     a0, 0x8012                 # a0 = 80120000
    c.lt.s  $f18, $f4
    nop
    bc1tl   lbl_80044F14
    lh      t6, 0x014C(s0)             # 0000014C
    lw      a0, -0x71E8(a0)            # 80118E18
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_80044F10
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    beql    v0, $zero, lbl_80044F78
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80044F10:
    lh      t6, 0x014C(s0)             # 0000014C
lbl_80044F14:
    andi    t8, t6, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_80044F78
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80044F20:
    lh      t9, 0x014C(s0)             # 0000014C
    lh      a1, 0x0166(s0)             # 00000166
    addiu   s1, s0, 0x000C             # s1 = 0000000C
    ori     t1, t9, 0x0014             # t1 = 00000014
    sh      t1, 0x014C(s0)             # 0000014C
    lh      t4, 0x014C(s0)             # 0000014C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t2, t4, 0xFFF7             # t2 = 00000000
    bgez    a1, lbl_80044F5C
    sh      t2, 0x014C(s0)             # 0000014C
    jal     func_800493C8
    lh      a1, 0x0154(s0)             # 00000154
    b       lbl_80044F6C
    nop
lbl_80044F5C:
    jal     func_800495E8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sh      t0, 0x0166(s0)             # 00000166
lbl_80044F6C:
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, -0x0E58($at)        # 800EF1A8
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80044F78:
    addiu   t7, s0, 0x0094             # t7 = 00000094
    sb      t3, 0x0053($sp)
    sw      t7, 0x0028($sp)
    lh      a0, 0x0010(s1)             # 0000001C
lbl_80044F88:
    addiu   t5, a0, 0x0001             # t5 = 00000001
    sh      t5, 0x0010(s1)             # 0000001C
    lh      a0, 0x0010(s1)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a0, $at, lbl_80044FA8
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    b       lbl_8004501C
    sh      t6, 0x015E(s0)             # 0000015E
lbl_80044FA8:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    bne     v0, a0, lbl_80044FC0
    addiu   $at, $zero, 0x0094         # $at = 00000094
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    b       lbl_8004501C
    sh      t8, 0x015E(s0)             # 0000015E
lbl_80044FC0:
    bnel    a0, $at, lbl_80044FD4
    addiu   $at, $zero, 0x009E         # $at = 0000009E
    b       lbl_8004501C
    sh      v0, 0x015E(s0)             # 0000015E
    addiu   $at, $zero, 0x009E         # $at = 0000009E
lbl_80044FD4:
    bne     a0, $at, lbl_80044FE4
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    b       lbl_8004501C
    sh      t9, 0x015E(s0)             # 0000015E
lbl_80044FE4:
    addiu   $at, $zero, 0x009F         # $at = 0000009F
    bne     a0, $at, lbl_80044FF8
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    b       lbl_8004501C
    sh      t1, 0x015E(s0)             # 0000015E
lbl_80044FF8:
    addiu   $at, $zero, 0x00A8         # $at = 000000A8
    bne     a0, $at, lbl_8004500C
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    b       lbl_8004501C
    sh      t4, 0x015E(s0)             # 0000015E
lbl_8004500C:
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    bne     a0, $at, lbl_8004501C
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sh      t2, 0x015E(s0)             # 0000015E
lbl_8004501C:
    lbu     t0, 0x0053($sp)
    bnel    t0, $zero, lbl_800450A4
    lw      a0, 0x0030($sp)
    lwc1    $f12, 0x0088($sp)
    lwc1    $f14, 0x0090($sp)
    lw      a2, 0x000C(s1)             # 00000018
    jal     func_8003569C
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f0, 0x0088($sp)
    lw      a2, 0x000C(s1)             # 00000018
    lh      a0, 0x008C($sp)
    lh      a1, 0x0094($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x008C($sp)
    lw      a2, 0x000C(s1)             # 00000018
    lh      a0, 0x008E($sp)
    lh      a1, 0x0096($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   s1, s0, 0x0074             # s1 = 00000074
    sh      v0, 0x008E($sp)
    or      a0, s1, $zero              # a0 = 00000074
    lw      a1, 0x0030($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    lw      t3, 0x0034($sp)
    lw      t5, 0x0000(s1)             # 00000074
    sw      t5, 0x0000(t3)             # 00000000
    lw      t7, 0x0004(s1)             # 00000078
    sw      t7, 0x0004(t3)             # 00000004
    lw      t5, 0x0008(s1)             # 0000007C
    sw      t5, 0x0008(t3)             # 00000008
    lw      a0, 0x0030($sp)
lbl_800450A4:
    jal     func_80067580
    lw      a1, 0x0034($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7068($at)           # 80107068
    lwc1    $f8, 0x0050(s0)            # 00000050
    lwc1    $f4, 0x0054(s0)            # 00000054
    swc1    $f6, 0x0100(s0)            # 00000100
    lw      t6, 0x0028($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f10, 0x0000(t6)           # 00000000
    sub.s   $f18, $f8, $f10
    lwc1    $f10, 0x0058(s0)           # 00000058
    swc1    $f18, 0x00E4(s0)           # 000000E4
    lw      t8, 0x0028($sp)
    lwc1    $f6, 0x0004(t8)            # 00000004
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x00E8(s0)            # 000000E8
    lw      t9, 0x0028($sp)
    lwc1    $f18, 0x0008(t9)           # 00000008
    sub.s   $f4, $f10, $f18
    swc1    $f4, 0x00EC(s0)            # 000000EC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80045110:
# DEMO4()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80045130:
# DEMO5()
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFCC
    jal     func_80022670
    lw      a1, 0x0090(s0)             # 00000090
    lw      t6, 0x0090(s0)             # 00000090
    addiu   t7, $zero, 0x3200          # t7 = 00003200
    lui     $at, 0x800F                # $at = 800F0000
    sw      t7, -0x0E58($at)           # 800EF1A8
    sw      t6, 0x004C($sp)
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     a1, $zero, lbl_80045180
    nop
    lw      t8, 0x0130(a1)             # 00000130
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    bne     t8, $zero, lbl_80045188
    nop
lbl_80045180:
    b       lbl_80045AF4
    sw      $zero, 0x00A8(s0)          # 000000A8
lbl_80045188:
    jal     func_80022670
    sw      a0, 0x0020($sp)
    addiu   a0, $sp, 0x0088            # a0 = FFFFFFF0
    lw      a1, 0x0020($sp)
    jal     func_80067A84
    addiu   a2, s0, 0x0094             # a2 = 00000094
    lw      t9, 0x00A8(s0)             # 000000A8
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a2, $sp, 0x007E            # a2 = FFFFFFE6
    lbu     t0, 0x0002(t9)             # 00000002
    addiu   a3, $sp, 0x007C            # a3 = FFFFFFE4
    sw      t0, -0x0E4C($at)           # 800EF1B4
    lw      a1, 0x00A8(s0)             # 000000A8
    jal     func_80022B14
    lw      a0, 0x008C(s0)             # 0000008C
    lw      a0, 0x0020($sp)
    jal     func_80067580
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    swc1    $f0, 0x0094($sp)
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    jal     func_80067A84
    addiu   a2, s0, 0x0074             # a2 = 00000074
    lh      t1, 0x0086($sp)
    lh      t2, 0x008E($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lwc1    $f4, 0x0080($sp)
    subu    t3, t1, t2
    sh      t3, 0x004A($sp)
    lw      t4, 0x00A8(s0)             # 000000A8
    lwc1    $f0, 0x0088($sp)
    lbu     v1, 0x0002(t4)             # 00000002
    bne     v1, $at, lbl_80045314
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    nop
    c.lt.s  $f2, $f4
    nop
    bc1f    lbl_800452AC
    nop
    lh      t5, 0x0160(s0)             # 00000160
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, -0x0D80($at)           # 800EF280
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF254             # v0 = 800EF254
    mul.s   $f8, $f0, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0040(v0)            # 800EF294
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF254             # v0 = 800EF254
    mul.s   $f16, $f0, $f10
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t0, t7, 0xFFFF             # t0 = 00000002
    swc1    $f16, 0x0044(v0)           # 800EF298
    lh      t8, 0x0162(s0)             # 00000162
    sw      v0, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    beql    t8, $zero, lbl_80045298
    lh      t1, 0x0160(s0)             # 00000160
    b       lbl_800459A4
    sw      t0, 0x0000(s0)             # 00000000
    lh      t1, 0x0160(s0)             # 00000160
lbl_80045298:
    lh      t2, 0x0054(v0)             # 800EF2A8
    addu    t3, t1, t2
    sh      t3, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
lbl_800452AC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF2CC             # v0 = 800EF2CC
    mul.s   $f4, $f0, $f18
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t9, t6, 0xFFFF             # t9 = 00000002
    swc1    $f4, 0x0044(v0)            # 800EF310
    lh      t4, 0x0160(s0)             # 00000160
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x002C(v0)             # 800EF2F8
    lh      t7, 0x0162(s0)             # 00000162
    sw      v0, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    beql    t7, $zero, lbl_80045300
    lh      t0, 0x0160(s0)             # 00000160
    b       lbl_800459A4
    sw      t9, 0x0000(s0)             # 00000000
    lh      t0, 0x0160(s0)             # 00000160
lbl_80045300:
    lh      t1, 0x0054(v0)             # 800EF320
    addu    t2, t0, t1
    sh      t2, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
lbl_80045314:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF344             # v0 = 800EF344
    c.lt.s  $f0, $f2
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    lwc1    $f12, 0x0094($sp)
    lui     $at, 0x4396                # $at = 43960000
    bc1fl   lbl_800453F4
    mtc1    $at, $f16                  # $f16 = 300.00
    sw      v0, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lh      t4, 0x007E($sp)
    addiu   t5, $zero, 0x0041          # t5 = 00000041
    slti    $at, t4, 0x0015
    bne     $at, $zero, lbl_80045370
    slti    $at, t4, 0x012C
    beq     $at, $zero, lbl_80045370
    lh      v1, 0x007C($sp)
    slti    $at, v1, 0x0029
    bne     $at, $zero, lbl_80045370
    slti    $at, v1, 0x00C8
    bne     $at, $zero, lbl_800453A8
lbl_80045370:
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f6                   # $f6 = -30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f10                  # $f10 = -50.00
    sb      t5, 0x0000(v0)             # 800EF344
    swc1    $f6, 0x0014(v0)            # 800EF358
    swc1    $f2, 0x0010(v0)            # 800EF354
    swc1    $f2, 0x0018(v0)            # 800EF35C
    swc1    $f2, 0x0020(v0)            # 800EF364
    swc1    $f8, 0x001C(v0)            # 800EF360
    swc1    $f10, 0x0024(v0)           # 800EF368
lbl_800453A8:
    lh      t6, 0x0160(s0)             # 00000160
    addiu   t7, t6, 0xFFFF             # t7 = 00000002
    sh      t7, 0x002C(v0)             # 800EF370
    lh      t8, 0x0162(s0)             # 00000162
    beql    t8, $zero, lbl_800453D4
    lh      t1, 0x0160(s0)             # 00000160
    lw      t9, 0x0000(s0)             # 00000000
    addiu   t0, t9, 0xFFFE             # t0 = 00000000
    b       lbl_800459A4
    sw      t0, 0x0000(s0)             # 00000000
    lh      t1, 0x0160(s0)             # 00000160
lbl_800453D4:
    lh      t2, 0x0054(v0)             # 800EF398
    lh      t4, 0x007C(v0)             # 800EF3C0
    addu    t3, t1, t2
    addu    t5, t3, t4
    sh      t5, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
    mtc1    $at, $f16                  # $f16 = -50.00
lbl_800453F4:
    lwc1    $f18, 0x0080($sp)
    lui     $at, 0x442F                # $at = 442F0000
    c.lt.s  $f12, $f16
    nop
    bc1fl   lbl_80045468
    mtc1    $at, $f4                   # $f4 = 700.00
    c.lt.s  $f18, $f2
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF3E4             # v0 = 800EF3E4
    bc1fl   lbl_80045468
    mtc1    $at, $f4                   # $f4 = 700.00
    lh      t6, 0x0160(s0)             # 00000160
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t0, t7, 0xFFFF             # t0 = 00000001
    sh      t6, 0x0004(v0)             # 800EF3E8
    lh      t8, 0x0162(s0)             # 00000162
    sw      v0, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    beql    t8, $zero, lbl_80045450
    lh      t1, 0x0160(s0)             # 00000160
    b       lbl_800459A4
    sw      t0, 0x0000(s0)             # 00000000
    lh      t1, 0x0160(s0)             # 00000160
lbl_80045450:
    lh      t2, 0x002C(v0)             # 800EF410
    addu    t3, t1, t2
    sh      t3, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
    mtc1    $at, $f4                   # $f4 = 700.00
lbl_80045468:
    lh      a1, 0x004A($sp)
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_80045614
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bltz    a1, lbl_8004548C
    subu    v0, $zero, a1
    b       lbl_8004548C
    or      v0, a1, $zero              # v0 = 00000000
lbl_8004548C:
    slti    $at, v0, 0x36B0
    beql    $at, $zero, lbl_80045614
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lh      v1, 0x007E($sp)
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF484             # v0 = 800EF484
    slti    $at, v1, 0x0015
    bne     $at, $zero, lbl_80045528
    slti    $at, v1, 0x012C
    beq     $at, $zero, lbl_80045528
    lh      v1, 0x007C($sp)
    slti    $at, v1, 0x0029
    bne     $at, $zero, lbl_80045528
    slti    $at, v1, 0x00C8
    beq     $at, $zero, lbl_80045528
    lwc1    $f6, 0x0080($sp)
    c.lt.s  $f2, $f6
    nop
    bc1f    lbl_80045528
    nop
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF434             # v0 = 800EF434
    lh      t4, 0x0160(s0)             # 00000160
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t8, t5, 0xFFFF             # t8 = 00000001
    sh      t4, 0x0004(v0)             # 800EF438
    lh      t6, 0x0162(s0)             # 00000162
    sw      v0, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beql    t6, $zero, lbl_80045514
    lh      t9, 0x0160(s0)             # 00000160
    b       lbl_800459A4
    sw      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x0160(s0)             # 00000160
lbl_80045514:
    lh      t0, 0x002C(v0)             # 800EF460
    addu    t1, t9, t0
    sh      t1, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
lbl_80045528:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x706C($at)           # 8010706C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    mul.s   $f10, $f12, $f8
    add.s   $f18, $f12, $f16
    swc1    $f18, 0x0024(v0)           # 800EF458
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0018(v0)           # 800EF44C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lh      t2, 0x0086($sp)
    lh      t3, 0x008E($sp)
    mul.s   $f6, $f0, $f4
    lui     v0, 0x800F                 # v0 = 800F0000
    subu    t4, t2, t3
    sll     t5, t4, 16
    addiu   v0, v0, 0xF484             # v0 = 800EF484
    sra     t6, t5, 16
    blez    t6, lbl_800455A0
    swc1    $f6, 0x001C(v0)            # 800EF4A0
    lwc1    $f8, 0x0010(v0)            # 800EF494
    lwc1    $f16, 0x001C(v0)           # 800EF4A0
    lh      t7, 0x0006(v0)             # 800EF48A
    neg.s   $f10, $f8
    neg.s   $f18, $f16
    subu    t8, $zero, t7
    swc1    $f10, 0x0010(v0)           # 800EF494
    swc1    $f18, 0x001C(v0)           # 800EF4A0
    sh      t8, 0x0006(v0)             # 800EF48A
lbl_800455A0:
    lh      t9, 0x0160(s0)             # 00000160
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x0094($sp)
    sh      t9, 0x0004(v0)             # 800EF488
    lwc1    $f6, 0x7070($at)           # 80107070
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   t8, t5, 0xFFFE             # t8 = 00000001
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    addiu   t4, t3, 0x0008             # t4 = 00000008
    sh      t4, 0x002C(v0)             # 800EF4B0
    lh      t6, 0x0162(s0)             # 00000162
    sw      v0, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beql    t6, $zero, lbl_800455F4
    lh      t9, 0x0160(s0)             # 00000160
    b       lbl_800459A4
    sw      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x0160(s0)             # 00000160
lbl_800455F4:
    lh      t0, 0x002C(v0)             # 800EF4B0
    lh      t2, 0x0054(v0)             # 800EF4D8
    addu    t1, t9, t0
    addu    t3, t1, t2
    sh      t3, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_80045614:
    bne     v1, $at, lbl_80045848
    lwc1    $f0, 0x0088($sp)
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0xF4FC             # a3 = 800EF4FC
    lh      t4, 0x0160(s0)             # 00000160
    sh      $zero, 0x004A($sp)
    addiu   a2, $sp, 0x004A            # a2 = FFFFFFB2
    addiu   t5, t4, 0xFFFB             # t5 = 00000003
    sh      t5, 0x0004(a3)             # 800EF500
    lw      a1, 0x00A8(s0)             # 000000A8
    jal     func_8009DB64
    lw      a0, 0x008C(s0)             # 0000008C
    lui     a3, 0x800F                 # a3 = 800F0000
    bne     v0, $zero, lbl_80045688
    addiu   a3, a3, 0xF4FC             # a3 = 800EF4FC
    lw      t6, 0x00A8(s0)             # 000000A8
    lh      t7, 0x008E($sp)
    lh      a0, 0x00B6(t6)             # 000000B6
    subu    v1, t7, a0
    bltz    v1, lbl_80045670
    subu    v0, $zero, v1
    b       lbl_80045670
    or      v0, v1, $zero              # v0 = 00000000
lbl_80045670:
    slti    $at, v0, 0x4000
    bne     $at, $zero, lbl_80045684
    addiu   t8, a0, 0x8001             # t8 = FFFF8001
    b       lbl_80045688
    sh      a0, 0x004A($sp)
lbl_80045684:
    sh      t8, 0x004A($sp)
lbl_80045688:
    lw      t0, 0x00A8(s0)             # 000000A8
    lh      t9, 0x004A($sp)
    lh      a1, 0x004A($sp)
    lh      t1, 0x00B6(t0)             # 000000B6
    lui     $at, 0x4334                # $at = 43340000
    bnel    t9, t1, lbl_800456B4
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f0                   # $f0 = 180.00
    b       lbl_800456BC
    lh      t2, 0x008E($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800456B4:
    nop
    lh      t2, 0x008E($sp)
lbl_800456BC:
    swc1    $f0, 0x003C(a3)            # 800EF538
    swc1    $f0, 0x0020(a3)            # 800EF51C
    subu    t3, t2, a1
    sll     t4, t3, 16
    sra     t5, t4, 16
    bgez    t5, lbl_800456E8
    swc1    $f0, 0x0014(a3)            # 800EF510
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    b       lbl_800456F4
    nop
lbl_800456E8:
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f12                  # $f12 = -20.00
    nop
lbl_800456F4:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x0030($sp)
    lwc1    $f12, 0x0030($sp)
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0xF4FC             # a3 = 800EF4FC
    mul.s   $f2, $f0, $f12
    lwc1    $f16, 0x0020(a3)           # 800EF51C
    add.s   $f18, $f16, $f2
    swc1    $f2, 0x0090($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0020(a3)           # 800EF51C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7074($at)           # 80107074
    lwc1    $f4, 0x0090($sp)
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0xF4FC             # a3 = 800EF4FC
    mul.s   $f8, $f4, $f6
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    sh      v0, 0x002E(a3)             # 800EF52A
    sh      v0, 0x0006(a3)             # 800EF502
    jal     func_80022670
    lw      a1, 0x00A8(s0)             # 000000A8
    lh      a1, 0x004A($sp)
    addiu   a0, a1, 0x8001             # a0 = FFFF8001
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f18, 0x0050($sp)
    lh      a1, 0x004A($sp)
    mul.s   $f6, $f4, $f0
    addiu   a0, a1, 0x8001             # a0 = FFFF8001
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f8, $f18, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x0050($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lwc1    $f10, 0x0058($sp)
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f16, $f0
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFB8
    add.s   $f18, $f10, $f4
    jal     func_80035CBC
    swc1    $f18, 0x0058($sp)
    lui     a3, 0x800F                 # a3 = 800F0000
    beq     v0, $zero, lbl_800457E4
    addiu   a3, a3, 0xF4FC             # a3 = 800EF4FC
    addiu   t7, $zero, 0x00C1          # t7 = 000000C1
    addiu   t8, $zero, 0x008F          # t8 = 0000008F
    sb      t7, 0x0028(a3)             # 800EF524
    b       lbl_80045808
    sb      t8, 0x0050(a3)             # 800EF54C
lbl_800457E4:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7078($at)           # 80107078
    lwc1    $f6, 0x0094($sp)
    mul.s   $f16, $f6, $f8
    trunc.w.s $f10, $f16
    mfc1    t2, $f10
    nop
    addiu   t3, t2, 0x0006             # t3 = 00000006
    sh      t3, 0x0054(a3)             # 800EF550
lbl_80045808:
    lh      t5, 0x0162(s0)             # 00000162
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sw      a3, 0x0004(s0)             # 00000004
    beq     t5, $zero, lbl_80045828
    sw      t4, 0x0000(s0)             # 00000000
    addiu   t7, t4, 0xFFFE             # t7 = 00000002
    b       lbl_800459A4
    sw      t7, 0x0000(s0)             # 00000000
lbl_80045828:
    lh      t8, 0x0160(s0)             # 00000160
    lh      t0, 0x0054(a3)             # 800EF550
    lh      t1, 0x007C(a3)             # 800EF578
    addu    t9, t8, t0
    addu    t2, t9, t1
    sh      t2, 0x0160(s0)             # 00000160
    b       lbl_800459A8
    lw      t8, 0x008C(s0)             # 0000008C
lbl_80045848:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lui     $at, 0x3E80                # $at = 3E800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80045880
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f18                  # $f18 = 400.00
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF59C             # v1 = 800EF59C
    mul.s   $f6, $f0, $f18
    swc1    $f0, 0x0024(v1)            # 800EF5C0
    swc1    $f6, 0x0018(v1)            # 800EF5B4
    lui     $at, 0x43C8                # $at = 43C80000
lbl_80045880:
    mtc1    $at, $f8                   # $f8 = 400.00
    nop
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_800458B8
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF59C             # v1 = 800EF59C
    mul.s   $f10, $f0, $f16
    swc1    $f10, 0x001C(v1)           # 800EF5B8
lbl_800458B8:
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lh      t3, 0x0160(s0)             # 00000160
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0xF59C             # v1 = 800EF59C
    sh      t3, 0x0004(v1)             # 800EF5A0
    lw      a1, 0x00A8(s0)             # 000000A8
    jal     func_80022670
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    jal     func_80035CBC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFB8
    lui     v1, 0x800F                 # v1 = 800F0000
    beq     v0, $zero, lbl_8004590C
    addiu   v1, v1, 0xF59C             # v1 = 800EF59C
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    addiu   t5, $zero, 0x008F          # t5 = 0000008F
    sh      t4, 0x002C(v1)             # 800EF5C8
    b       lbl_80045930
    sb      t5, 0x0028(v1)             # 800EF5C4
lbl_8004590C:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x707C($at)          # 8010707C
    lwc1    $f4, 0x0094($sp)
    mul.s   $f6, $f4, $f18
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sh      t9, 0x002C(v1)             # 800EF5C8
lbl_80045930:
    lh      t2, 0x0162(s0)             # 00000162
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sw      v1, 0x0004(s0)             # 00000004
    beq     t2, $zero, lbl_80045980
    sw      t1, 0x0000(s0)             # 00000000
    lw      t3, 0x008C(s0)             # 0000008C
    lw      t4, 0x009C(t3)             # 0000009C
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80045974
    lw      t9, 0x0000(s0)             # 00000000
    lh      t6, 0x0006(v1)             # 800EF5A2
    lh      t8, 0x002E(v1)             # 800EF5CA
    subu    t7, $zero, t6
    subu    t0, $zero, t8
    sh      t7, 0x0006(v1)             # 800EF5A2
    sh      t0, 0x002E(v1)             # 800EF5CA
    lw      t9, 0x0000(s0)             # 00000000
lbl_80045974:
    addiu   t1, t9, 0xFFFE             # t1 = 00000006
    b       lbl_800459A4
    sw      t1, 0x0000(s0)             # 00000000
lbl_80045980:
    lh      t2, 0x0160(s0)             # 00000160
    lh      t3, 0x002C(v1)             # 800EF5C8
    lh      t5, 0x0054(v1)             # 800EF5F0
    addu    t4, t2, t3
    addu    t6, t4, t5
    sh      t6, 0x0160(s0)             # 00000160
    sh      $zero, 0x002E(v1)          # 800EF5CA
    lh      t7, 0x002E(v1)             # 800EF5CA
    sh      t7, 0x0006(v1)             # 800EF5A2
lbl_800459A4:
    lw      t8, 0x008C(s0)             # 0000008C
lbl_800459A8:
    lui     t0, 0x800F                 # t0 = 800F0000
    lw      t0, -0x0DB0(t0)            # 800EF250
    lw      v0, 0x009C(t8)             # 0000009C
    subu    v1, t0, v0
    slti    $at, v1, 0x0033
    beq     $at, $zero, lbl_800459CC
    slti    $at, v1, 0xFFCE
    beq     $at, $zero, lbl_800459DC
    nop
lbl_800459CC:
    jal     func_800646F0
    lhu     a0, 0x012A(s0)             # 0000012A
    lw      t9, 0x008C(s0)             # 0000008C
    lw      v0, 0x009C(t9)             # 0000009C
lbl_800459DC:
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, -0x0DB0($at)           # 800EF250
    lw      t1, 0x0090(s0)             # 00000090
    lh      t8, 0x0072($sp)
    lh      t0, 0x008E($sp)
    lw      t2, 0x066C(t1)             # 0000066C
    lw      v0, 0x004C($sp)
    subu    t9, t8, t0
    sll     t3, t2,  4
    bgezl   t3, lbl_80045A38
    sh      t9, 0x004A($sp)
    lb      t4, 0x013F(v0)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t4, $at, lbl_80045A38
    sh      t9, 0x004A($sp)
    lw      t5, 0x066C(v0)             # 0000066C
    lui     $at, 0x2000                # $at = 20000000
    or      t6, t5, $at                # t6 = 20000000
    sw      t6, 0x066C(v0)             # 0000066C
    lh      t7, 0x0160(s0)             # 00000160
    b       lbl_80045AC8
    sh      t7, 0x0110(v0)             # 00000110
    sh      t9, 0x004A($sp)
lbl_80045A38:
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v0, 0x004C($sp)
    lbu     t1, 0x0002(a1)             # 00000002
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     t1, $at, lbl_80045AC0
    nop
    lw      a0, 0x008C(s0)             # 0000008C
    lw      t4, 0x066C(v0)             # 0000066C
    lw      t3, -0x0E04(t3)            # 800EF1FC
    lw      t2, 0x009C(a0)             # 0000009C
    andi    t5, t4, 0x0800             # t5 = 00000000
    beq     t5, $zero, lbl_80045A84
    subu    v1, t2, t3
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    b       lbl_80045ACC
    lw      t6, 0x008C(s0)             # 0000008C
lbl_80045A84:
    bltz    v1, lbl_80045A94
    subu    v0, $zero, v1
    b       lbl_80045A94
    or      v0, v1, $zero              # v0 = 00000000
lbl_80045A94:
    slti    $at, v0, 0x0BB9
    bne     $at, $zero, lbl_80045AB0
    nop
    jal     func_800218EC
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    b       lbl_80045ACC
    lw      t6, 0x008C(s0)             # 0000008C
lbl_80045AB0:
    jal     func_800218EC
    addiu   a2, $zero, 0x0045          # a2 = 00000045
    b       lbl_80045ACC
    lw      t6, 0x008C(s0)             # 0000008C
lbl_80045AC0:
    jal     func_800218EC
    lw      a0, 0x008C(s0)             # 0000008C
lbl_80045AC8:
    lw      t6, 0x008C(s0)             # 0000008C
lbl_80045ACC:
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x009C(t6)             # 0000009C
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_800493C8
    sw      t7, -0x0E04($at)           # 800EF1FC
    jal     func_80042F54              # UNIQ9()
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80045AF4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_80045B08:
# DEMO6()
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t6, 0x00A8(s0)             # 000000A8
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    addiu   t8, $zero, 0x0046          # t8 = 00000046
    addiu   t9, $zero, 0x005A          # t9 = 0000005A
    or      a2, v0, $zero              # a2 = 00000000
    sh      t7, 0x0042($sp)
    sh      t8, 0x0044($sp)
    sh      t9, 0x0046($sp)
    sw      t6, 0x005C($sp)
    lh      t1, 0x0142(s0)             # 00000142
    lui     t3, 0x800F                 # t3 = 800F0000
    lh      t4, 0x0144(s0)             # 00000144
    sll     t2, t1,  3
    addu    t3, t3, t2
    lw      t3, -0x118C(t3)            # 800EEE74
    sll     t5, t4,  3
    lui     $at, 0x4270                # $at = 42700000
    addu    t6, t3, t5
    lw      v0, 0x0004(t6)             # 00000004
    lh      t7, 0x0000(v0)             # 00000000
    sh      t7, 0x0000(s0)             # 00000000
    lh      v1, 0x015E(s0)             # 0000015E
    beq     v1, $zero, lbl_80045BA8
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80045C54
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80045CC8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80045D24
    addiu   t0, s0, 0x0004             # t0 = 00000004
    b       lbl_80045D80
    lh      v0, 0x0000(t0)             # 00000004
lbl_80045BA8:
    mtc1    $at, $f4                   # $f4 = 0.00
    sh      $zero, 0x0004(s0)          # 00000004
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD0
    swc1    $f4, 0x00FC(s0)            # 000000FC
    sw      a2, 0x0074($sp)
    jal     func_800226A4
    lw      a1, 0x005C($sp)
    lwc1    $f6, 0x0048($sp)
    lw      a2, 0x0074($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    swc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x004C($sp)
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    add.s   $f16, $f8, $f10
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD0
    addiu   a1, a2, 0x0094             # a1 = 00000094
    swc1    $f16, 0x0054(s0)           # 00000054
    lwc1    $f18, 0x0050($sp)
    swc1    $f18, 0x0058(s0)           # 00000058
    jal     func_80036808
    swc1    $f4, 0x0060($sp)
    addiu   t8, v0, 0x07D0             # t8 = 000007D0
    addiu   t9, $zero, 0xFC18          # t9 = FFFFFC18
    addiu   a0, s0, 0x0074             # a0 = 00000074
    sh      t8, 0x0066($sp)
    sh      t9, 0x0064($sp)
    sw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0050             # a1 = 00000050
    jal     func_800359A8
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFE8
    lw      a0, 0x0034($sp)
    lh      t4, 0x015E(s0)             # 0000015E
    lw      t2, 0x0000(a0)             # 00000000
    addiu   t3, t4, 0x0001             # t3 = 00000001
    sw      t2, 0x005C(s0)             # 0000005C
    lw      t1, 0x0004(a0)             # 00000004
    sw      t1, 0x0060(s0)             # 00000060
    lw      t2, 0x0008(a0)             # 00000008
    sh      t3, 0x015E(s0)             # 0000015E
    lh      v1, 0x015E(s0)             # 0000015E
    sw      t2, 0x0064(s0)             # 00000064
lbl_80045C54:
    sll     t5, v1,  1
    addu    t6, $sp, t5
    addiu   t0, s0, 0x0004             # t0 = 00000004
    lh      v0, 0x0000(t0)             # 00000004
    lh      t6, 0x0040(t6)             # 00000040
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    slt     $at, t6, v0
    beql    $at, $zero, lbl_80045D84
    addiu   t6, v0, 0x0001             # t6 = 00000001
    lw      a0, 0x008C(s0)             # 0000008C
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_800218EC
    sw      t0, 0x0034($sp)
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD0
    jal     func_800226A4
    lw      a1, 0x005C($sp)
    lw      t0, 0x0034($sp)
    lwc1    $f6, 0x0048($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    swc1    $f6, 0x0004(t0)            # 00000004
    lwc1    $f8, 0x004C($sp)
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(t0)           # 00000008
    lwc1    $f18, 0x0050($sp)
    swc1    $f18, 0x000C(t0)           # 0000000C
    lh      t7, 0x015E(s0)             # 0000015E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x015E(s0)             # 0000015E
lbl_80045CC8:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7080($at)           # 80107080
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t0, s0, 0x0004             # t0 = 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a0, t0, 0x0004             # a0 = 00000008
    sw      t0, 0x0034($sp)
    addiu   a1, s0, 0x0050             # a1 = 00000050
    jal     func_8003584C
    swc1    $f4, 0x0010($sp)
    lh      v1, 0x015E(s0)             # 0000015E
    lw      t0, 0x0034($sp)
    sll     t9, v1,  1
    addu    t1, $sp, t9
    lh      t1, 0x0040(t1)             # 00000040
    lh      v0, 0x0000(t0)             # 00000000
    addiu   t2, v1, 0x0001             # t2 = 00000001
    slt     $at, t1, v0
    beql    $at, $zero, lbl_80045D84
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t2, 0x015E(s0)             # 0000015E
lbl_80045D24:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    addiu   t0, s0, 0x0004             # t0 = 00000004
    sw      t0, 0x0034($sp)
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    jal     func_8003569C
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lh      t4, 0x015E(s0)             # 0000015E
    lw      t0, 0x0034($sp)
    swc1    $f0, 0x00FC(s0)            # 000000FC
    sll     t3, t4,  1
    addu    t5, $sp, t3
    lh      t5, 0x0040(t5)             # 00000040
    lh      v0, 0x0000(t0)             # 00000000
    slt     $at, t5, v0
    beql    $at, $zero, lbl_80045D84
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      $zero, 0x0160(s0)          # 00000160
    b       lbl_80045D98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80045D80:
    addiu   t6, v0, 0x0001             # t6 = 00000002
lbl_80045D84:
    sh      t6, 0x0000(t0)             # 00000000
    lw      a1, 0x005C($sp)
    jal     func_800226A4
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80045D98:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80045DAC:
# DEMO7()
    lh      v0, 0x015E(a0)             # 0000015E
    bne     v0, $zero, lbl_80045DD8
    nop
    lh      t6, 0x014C(a0)             # 0000014C
    addiu   t0, v0, 0x0001             # t0 = 00000001
    sh      t0, 0x015E(a0)             # 0000015E
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    sh      t7, 0x014C(a0)             # 0000014C
    lh      t8, 0x014C(a0)             # 0000014C
    ori     t9, t8, 0x1000             # t9 = 00001000
    sh      t9, 0x014C(a0)             # 0000014C
lbl_80045DD8:
    jr      $ra
    nop


func_80045DE0:
# DEMO8()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80045E00:
# DEMO9()
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, v0, 0x0094             # t6 = 00000094
    or      a0, v0, $zero              # a0 = 00000000
    sw      t6, 0x0064($sp)
    lh      t7, 0x0142(s0)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t1, 0x0144(s0)             # 00000144
    sll     t8, t7,  3
    addu    t9, t9, t8
    lw      t9, -0x118C(t9)            # 800EEE74
    sll     t2, t1,  3
    addiu   v1, s0, 0x000C             # v1 = 0000000C
    addu    t3, t9, t2
    lw      v0, 0x0004(t3)             # 00000004
    lh      t4, 0x0000(v0)             # 00000000
    sh      t4, 0x0000(v1)             # 0000000C
    lh      t5, 0x0000(v1)             # 0000000C
    lui     $at, 0x800F                # $at = 800F0000
    sw      t5, -0x0E58($at)           # 800EF1A8
    lhu     t6, 0x015E(s0)             # 0000015E
    sltiu   $at, t6, 0x0005
    beq     $at, $zero, lbl_80046208
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x7084($at)            # 80107084
    jr      t6
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t0, s0, 0x0010             # t0 = 00000010
    sh      $zero, 0x0004(t0)          # 00000014
    sh      $zero, 0x0008(t0)          # 00000018
    swc1    $f4, 0x0000(t0)            # 00000010
    lh      t7, 0x015E(s0)             # 0000015E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x015E(s0)             # 0000015E
    sh      $zero, 0x0006(t0)          # 00000016
    lh      v0, 0x0008(s0)             # 00000008
    andi    v0, v0, 0xF000             # v0 = 00000000
    beql    v0, $zero, lbl_80045ED0
    lh      t2, 0x000A(s0)             # 0000000A
    sh      v0, 0x0008(t0)             # 00000018
    lh      t1, 0x0008(s0)             # 00000008
    andi    t9, t1, 0x0FFF             # t9 = 00000000
    sh      t9, 0x0008(s0)             # 00000008
    lh      t2, 0x000A(s0)             # 0000000A
lbl_80045ED0:
    sh      t2, 0x000A(t0)             # 0000001A
    addiu   t0, s0, 0x0010             # t0 = 00000010
    lh      t3, 0x000A(t0)             # 0000001A
    addiu   v1, t0, 0x0004             # v1 = 00000014
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFBC
    blez    t3, lbl_80046164
    addiu   a2, s0, 0x00FC             # a2 = 000000FC
    lw      a3, 0x0004(s0)             # 00000004
    sw      t0, 0x002C($sp)
    sw      a2, 0x0034($sp)
    sw      v1, 0x0030($sp)
    sw      t0, 0x0014($sp)
    sw      v1, 0x0010($sp)
    jal     func_800999A4
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFE4
    lw      v1, 0x0030($sp)
    lw      a2, 0x0034($sp)
    bne     v0, $zero, lbl_80045F40
    lw      t0, 0x002C($sp)
    lw      a3, 0x0000(s0)             # 00000000
    sw      t0, 0x002C($sp)
    sw      t0, 0x0014($sp)
    sw      v1, 0x0010($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFD8
    jal     func_800999A4
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFBC
    beq     v0, $zero, lbl_80045F48
    lw      t0, 0x002C($sp)
lbl_80045F40:
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x015E(s0)             # 0000015E
lbl_80045F48:
    lh      v0, 0x0008(s0)             # 00000008
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0064($sp)
    bne     v0, $at, lbl_80045F88
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFE4
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFCC
    jal     func_800443D0
    sw      t0, 0x002C($sp)
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD8
    jal     func_800443D0
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFC0
    lw      t0, 0x002C($sp)
    addiu   v1, s0, 0x005C             # v1 = 0000005C
    b       lbl_8004609C
    addiu   a1, s0, 0x0050             # a1 = 00000050
lbl_80045F88:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80045FD0
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    lw      a1, 0x0090(s0)             # 00000090
    jal     func_800226A4
    sw      t0, 0x002C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFE4
    jal     func_800443D0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFCC
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD8
    jal     func_800443D0
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFC0
    lw      t0, 0x002C($sp)
    addiu   v1, s0, 0x005C             # v1 = 0000005C
    b       lbl_8004609C
    addiu   a1, s0, 0x0050             # a1 = 00000050
lbl_80045FD0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80046078
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFE4
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   v1, s0, 0x005C             # v1 = 0000005C
    beql    a1, $zero, lbl_80046038
    sw      $zero, 0x00A8(s0)          # 000000A8
    lw      t5, 0x0130(a1)             # 00000180
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    beql    t5, $zero, lbl_80046038
    sw      $zero, 0x00A8(s0)          # 000000A8
    jal     func_800226A4
    sw      t0, 0x002C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFE4
    jal     func_800443D0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFCC
    addiu   a0, $sp, 0x0050            # a0 = FFFFFF98
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFD8
    jal     func_800443D0
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFC0
    lw      t0, 0x002C($sp)
    addiu   v1, s0, 0x005C             # v1 = 0000005C
    b       lbl_8004609C
    addiu   a1, s0, 0x0050             # a1 = 00000050
    sw      $zero, 0x00A8(s0)          # 000000A8
lbl_80046038:
    lw      t8, 0x0000(v1)             # 0000005C
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFCC
    addiu   a1, s0, 0x0050             # a1 = 00000050
    sw      t8, 0x0000(t6)             # FFFFFFCC
    lw      t7, 0x0004(v1)             # 00000060
    addiu   t1, $sp, 0x0078            # t1 = FFFFFFC0
    sw      t7, 0x0004(t6)             # FFFFFFD0
    lw      t8, 0x0008(v1)             # 00000064
    sw      t8, 0x0008(t6)             # FFFFFFD4
    lw      t2, 0x0000(a1)             # 00000050
    sw      t2, 0x0000(t1)             # FFFFFFC0
    lw      t9, 0x0004(a1)             # 00000054
    sw      t9, 0x0004(t1)             # FFFFFFC4
    lw      t2, 0x0008(a1)             # 00000058
    b       lbl_8004609C
    sw      t2, 0x0008(t1)             # FFFFFFC8
lbl_80046078:
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFCC
    jal     func_800443B0
    sw      t0, 0x002C($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFD8
    jal     func_800443B0
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFC0
    lw      t0, 0x002C($sp)
    addiu   v1, s0, 0x005C             # v1 = 0000005C
    addiu   a1, s0, 0x0050             # a1 = 00000050
lbl_8004609C:
    addiu   t3, $sp, 0x0084            # t3 = FFFFFFCC
    lw      t5, 0x0000(t3)             # FFFFFFCC
    addiu   v0, s0, 0x0074             # v0 = 00000074
    lui     $at, 0x3F00                # $at = 3F000000
    sw      t5, 0x0000(v0)             # 00000074
    lw      t4, 0x0004(t3)             # FFFFFFD0
    lw      t7, 0x0000(v0)             # 00000074
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC0
    sw      t4, 0x0004(v0)             # 00000078
    lw      t5, 0x0008(t3)             # FFFFFFD4
    addiu   t1, $sp, 0x0078            # t1 = FFFFFFC0
    sw      t5, 0x0008(v0)             # 0000007C
    sw      t7, 0x0000(v1)             # 0000005C
    lw      t6, 0x0004(v0)             # 00000078
    sw      t6, 0x0004(v1)             # 00000060
    lw      t7, 0x0008(v0)             # 0000007C
    sw      t7, 0x0008(v1)             # 00000064
    lh      t8, 0x0006(t0)             # 00000006
    beql    t8, $zero, lbl_80046118
    lw      t2, 0x0000(t1)             # FFFFFFC0
    mtc1    $at, $f0                   # $f0 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7098($at)           # 80107098
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t0, 0x002C($sp)
    jal     func_8003584C
    swc1    $f6, 0x0010($sp)
    b       lbl_80046134
    lw      t0, 0x002C($sp)
    lw      t2, 0x0000(t1)             # 00000000
lbl_80046118:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t2, 0x0000(a1)             # 00000000
    lw      t9, 0x0004(t1)             # 00000004
    sw      t9, 0x0004(a1)             # 00000004
    lw      t2, 0x0008(t1)             # 00000008
    sw      t2, 0x0008(a1)             # 00000008
    sh      t3, 0x0006(t0)             # 00000006
lbl_80046134:
    lui     $at, 0x4380                # $at = 43800000
    mtc1    $at, $f10                  # $f10 = 256.00
    lwc1    $f8, 0x0074($sp)
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x015A(s0)             # 0000015A
    lh      t6, 0x000A(t0)             # 0000000A
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_80046208
    sh      t7, 0x000A(t0)             # 0000000A
lbl_80046164:
    lh      v0, 0x0018(s0)             # 00000018
    sh      $zero, 0x0160(s0)          # 00000160
    addiu   $at, $zero, 0x1000         # $at = 00001000
    beql    v0, $zero, lbl_8004620C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     v0, $at, lbl_800461D0
    addiu   $at, $zero, 0x2000         # $at = 00002000
    bne     v0, $at, lbl_80046208
    addiu   a1, $zero, 0x03FC          # a1 = 000003FC
    lh      v0, 0x000A(s0)             # 0000000A
    or      a3, $zero, $zero           # a3 = 00000000
    slti    $at, v0, 0x0032
    beql    $at, $zero, lbl_800461A8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    b       lbl_800461B8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_800461A8:
    div     $zero, v0, $at
    mflo    a2
    sll     a2, a2, 16
    sra     a2, a2, 16
lbl_800461B8:
    lh      t8, 0x0162(s0)             # 00000162
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_8006B6FC
    sw      t8, 0x0010($sp)
    b       lbl_8004620C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800461D0:
    jal     func_80049BE0
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_8004620C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t0, s0, 0x0010             # t0 = 00000010
    lh      t1, 0x000A(t0)             # 0000001A
    addiu   t9, t1, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x000A(t0)             # 0000001A
    lh      t2, 0x000A(t0)             # 0000001A
    bgezl   t2, lbl_8004620C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t3, 0x015E(s0)             # 0000015E
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x015E(s0)             # 0000015E
lbl_80046208:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004620C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8
    jr      $ra
    nop


func_80046220:
# DEMO0()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80046240:
# SPEC0()
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x709C($at)           # 8010709C
    lh      t2, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0004             # v0 = 00000004
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(s0)           # 00000000
    lh      t3, 0x0000(v0)             # 00000004
    sh      t3, 0x0004(s0)             # 00000004
    lh      t4, 0x0004(s0)             # 00000004
    lui     $at, 0x800F                # $at = 800F0000
    sw      t4, -0x0E58($at)           # 800EF1A8
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_800462BC
    addiu   t5, v0, 0x0001             # t5 = 00000005
    sh      t5, 0x015E(s0)             # 0000015E
lbl_800462BC:
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     a1, $zero, lbl_800462DC
    nop
    lw      t6, 0x0130(a1)             # 00000130
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    bne     t6, $zero, lbl_800462E4
    nop
lbl_800462DC:
    b       lbl_80046374
    sw      $zero, 0x00A8(s0)          # 000000A8
lbl_800462E4:
    jal     func_80022670
    sw      a0, 0x002C($sp)
    lwc1    $f0, 0x0000(s0)            # 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x70A0($at)          # 801070A0
    addiu   a1, s0, 0x0050             # a1 = 00000050
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x002C($sp)
    sw      a1, 0x0030($sp)
    jal     func_8003584C
    swc1    $f16, 0x0010($sp)
    addiu   v0, s0, 0x0094             # v0 = 00000094
    lwc1    $f4, 0x0000(v0)            # 00000094
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f8, 0x0054(s0)            # 00000054
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    sub.s   $f6, $f18, $f4
    lwc1    $f18, 0x0058(s0)           # 00000058
    swc1    $f6, 0x00E4(s0)            # 000000E4
    lwc1    $f10, 0x0004(v0)           # 00000098
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x00E8(s0)           # 000000E8
    lwc1    $f4, 0x0008(v0)            # 0000009C
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x00EC(s0)            # 000000EC
    jal     func_80067580
    lw      a0, 0x0030($sp)
    lh      v0, 0x0160(s0)             # 00000160
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x00DC(s0)            # 000000DC
    blez    v0, lbl_80046370
    swc1    $f8, 0x00D8(s0)            # 000000D8
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0160(s0)             # 00000160
lbl_80046370:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80046374:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80046388:
# SPEC1()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800463A8:
# SPEC2()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80041D50              # UNIQ2()
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800463C8:
# SPEC3()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800463E8:
# SPEC4()
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lh      t6, 0x015E(s0)             # 0000015E
    addiu   t7, $zero, 0x3200          # t7 = 00003200
    lui     $at, 0x800F                # $at = 800F0000
    bne     t6, $zero, lbl_80046434
    addiu   s1, s0, 0x0160             # s1 = 00000160
    sw      t7, -0x0E58($at)           # 800EF1A8
    lh      t8, 0x015E(s0)             # 0000015E
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lh      t0, 0x0160(s0)             # 00000160
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x015E(s0)             # 0000015E
    swc1    $f4, 0x00FC(s0)            # 000000FC
    sh      t0, 0x0000(s0)             # 00000000
lbl_80046434:
    lh      t1, 0x0000(s1)             # 00000160
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f12                  # $f12 = 80.00
    mtc1    t1, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    cvt.s.w $f10, $f8
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    div.s   $f16, $f6, $f10
    mfc1    a2, $f16
    jal     func_8003569C
    nop
    swc1    $f0, 0x00FC(s0)            # 000000FC
    lh      v1, 0x0000(s1)             # 00000160
    lh      t2, 0x0000(s0)             # 00000000
    addiu   t5, $zero, 0xFE0C          # t5 = FFFFFE0C
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFEC
    subu    t3, t2, v1
    slti    $at, t3, 0x000F
    beq     $at, $zero, lbl_8004649C
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0000(s1)             # 00000160
    b       lbl_80046578
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004649C:
    sh      t5, 0x015A(s0)             # 0000015A
    jal     func_800226A4
    lw      a1, 0x00A8(s0)             # 000000A8
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFEC
    lw      t8, 0x0000(t6)             # FFFFFFEC
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    sw      t8, 0x0050(s0)             # 00000050
    lw      t7, 0x0004(t6)             # FFFFFFF0
    sw      t7, 0x0054(s0)             # 00000054
    lwc1    $f18, 0x0054(s0)           # 00000054
    lw      t8, 0x0008(t6)             # FFFFFFF4
    sub.s   $f8, $f18, $f4
    sw      t8, 0x0058(s0)             # 00000058
    swc1    $f8, 0x0054(s0)            # 00000054
    lh      v0, 0x004A($sp)
    addiu   v0, v0, 0x8001             # v0 = FFFF8001
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x03E8             # v0 = FFFF83E9
    sll     a0, v0, 16
    sh      v0, 0x003A($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4443                # $at = 44430000
    mtc1    $at, $f6                   # $f6 = 780.00
    lwc1    $f16, 0x0050(s0)           # 00000050
    lwc1    $f18, 0x0054(s0)           # 00000054
    mul.s   $f10, $f0, $f6
    swc1    $f18, 0x0078(s0)           # 00000078
    add.s   $f2, $f10, $f16
    swc1    $f2, 0x0074(s0)            # 00000074
    swc1    $f2, 0x005C(s0)            # 0000005C
    jal     func_80063684              # coss?
    lh      a0, 0x003A($sp)
    lui     $at, 0x4443                # $at = 44430000
    mtc1    $at, $f4                   # $f4 = 780.00
    lwc1    $f6, 0x0058(s0)            # 00000058
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f0, $f4
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    add.s   $f2, $f8, $f6
    swc1    $f2, 0x007C(s0)            # 0000007C
    swc1    $f2, 0x0064(s0)            # 00000064
    lwc1    $f10, 0x0040($sp)
    jal     func_800362AC
    swc1    $f10, 0x0060(s0)           # 00000060
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f18, $f0, $f16
    swc1    $f18, 0x0060(s0)           # 00000060
    lh      t9, 0x0000(s1)             # 00000160
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0000(s1)             # 00000160
lbl_80046578:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_8004658C:
# SPEC5()
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x70A4($at)           # 801070A4
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    div.s   $f6, $f4, $f0
    sll     t7, t6,  3
    lh      t9, 0x0144(s0)             # 00000144
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t0, t9,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t1, t8, t0
    lw      v0, 0x0004(t1)             # 00000004
    lwc1    $f8, 0x70A8($at)           # 801070A8
    lui     $at, 0x8010                # $at = 80100000
    lh      t2, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x70AC($at)          # 801070AC
    lui     $at, 0x8010                # $at = 80100000
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   a0, $sp, 0x0064            # a0 = FFFFFF9C
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    addiu   v0, v0, 0x001C             # v0 = 0000001C
    mul.s   $f10, $f6, $f8
    cvt.s.w $f6, $f4
    sub.s   $f18, $f16, $f10
    mul.s   $f8, $f6, $f2
    nop
    mul.s   $f16, $f8, $f0
    nop
    mul.s   $f10, $f16, $f18
    swc1    $f10, 0x0000(s0)           # 00000000
    lh      t3, -0x0018(v0)            # 00000004
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0004(s0)            # 00000004
    lh      t4, -0x0014(v0)            # 00000008
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    swc1    $f16, 0x0008(s0)           # 00000008
    lh      t5, -0x0010(v0)            # 0000000C
    sh      t5, 0x0014(s0)             # 00000014
    lh      t6, -0x000C(v0)            # 00000010
    lwc1    $f4, 0x70B0($at)           # 801070B0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t6, $f18                   # $f18 = 0.00
    mtc1    $at, $f8                   # $f8 = 0.50
    cvt.s.w $f10, $f18
    mul.s   $f6, $f10, $f4
    add.s   $f16, $f6, $f8
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sh      t9, 0x0016(s0)             # 00000016
    lh      t8, -0x0008(v0)            # 00000014
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    swc1    $f4, 0x000C(s0)            # 0000000C
    lh      t0, -0x0004(v0)            # 00000018
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0010(s0)           # 00000010
    lh      t1, 0x0000(v0)             # 0000001C
    sh      t1, 0x0018(s0)             # 00000018
    sw      a1, 0x0034($sp)
    jal     func_80067A84
    sw      a2, 0x0038($sp)
    addiu   a2, s0, 0x0074             # a2 = 00000074
    sw      a2, 0x0030($sp)
    addiu   a0, $sp, 0x005C            # a0 = FFFFFF94
    jal     func_80067A84
    lw      a1, 0x0034($sp)
    addiu   a0, $sp, 0x00A8            # a0 = FFFFFFE0
    jal     func_800226A4
    lw      a1, 0x00A8(s0)             # 000000A8
    lh      t2, 0x0018(s0)             # 00000018
    lui     $at, 0x800F                # $at = 800F0000
    addiu   a2, s0, 0x001C             # a2 = 0000001C
    sw      t2, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    bnel    v1, $zero, lbl_8004671C
    lh      v0, 0x0000(a2)             # 0000001C
    lh      t4, 0x0014(s0)             # 00000014
    addiu   t3, v1, 0x0001             # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
    sh      t4, 0x001C(s0)             # 0000001C
    lh      v0, 0x0000(a2)             # 0000001C
lbl_8004671C:
    blez    v0, lbl_8004672C
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    b       lbl_800468B0
    sh      t5, 0x0000(a2)             # 0000001C
lbl_8004672C:
    bnel    v0, $zero, lbl_800468B4
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x00A8(s0)             # 000000A8
    beql    v1, $zero, lbl_80046758
    sw      $zero, 0x00A8(s0)          # 000000A8
    lw      t6, 0x0130(v1)             # 00000130
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    addiu   a0, $sp, 0x00A8            # a0 = FFFFFFE0
    bne     t6, $zero, lbl_80046760
    addiu   a1, s0, 0x0094             # a1 = 00000094
    sw      $zero, 0x00A8(s0)          # 000000A8
lbl_80046758:
    b       lbl_8004691C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80046760:
    sh      t7, 0x0000(a2)             # 0000001C
    jal     func_80067580
    sw      a1, 0x002C($sp)
    lwc1    $f18, 0x0008(s0)           # 00000008
    lw      v0, 0x002C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f18, $f0
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFB4
    bc1fl   lbl_800468B4
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x000E(v0)             # 0000000E
    mtc1    $at, $f10                  # $f10 = 20.00
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE0
    sh      t9, 0x0072($sp)
    lh      t8, 0x000C(v0)             # 0000000C
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFA4
    swc1    $f10, 0x006C($sp)
    subu    t0, $zero, t8
    jal     func_800359A8
    sh      t0, 0x0070($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80035A94
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFB4
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFA4
    jal     func_800679E8
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFC0
    lw      t1, 0x002C($sp)
    lh      t3, 0x0072($sp)
    lh      t2, 0x000E(t1)             # 0000000E
    subu    t4, t2, t3
    sh      t4, 0x00A4($sp)
    lwc1    $f4, 0x0004(s0)            # 00000004
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0074($sp)
    lh      t5, 0x00A4($sp)
    lw      t0, 0x002C($sp)
    lui     $at, 0x8010                # $at = 80100000
    bgez    t5, lbl_80046834
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x70B4($at)           # 801070B4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f16, $f8
    mfc1    v0, $f16
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x1553             # v0 = 00001553
    sll     v0, v0, 16
    sra     v0, v0, 16
    b       lbl_8004685C
    subu    v0, $zero, v0
lbl_80046834:
    lwc1    $f18, 0x70B8($at)          # 801070B8
    mul.s   $f10, $f0, $f18
    trunc.w.s $f4, $f10
    mfc1    v0, $f4
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x1553             # v0 = 00002AA6
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_8004685C:
    lh      t1, 0x000E(t0)             # 0000000E
    lw      a0, 0x0030($sp)
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE0
    addiu   t4, t1, 0x8001             # t4 = FFFF8001
    addu    t5, v0, t4
    sh      t5, 0x007A($sp)
    lh      t6, 0x0016(s0)             # 00000016
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFAC
    jal     func_800359A8
    sh      t6, 0x0078($sp)
    lw      t7, 0x0030($sp)
    lw      a2, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0000(t7)             # 00000000
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE0
    sw      t0, 0x0000(a2)             # 00000000
    lw      t9, 0x0004(t7)             # 00000004
    sw      t9, 0x0004(a2)             # 00000004
    lw      t0, 0x0008(t7)             # 00000008
    jal     func_80035CBC
    sw      t0, 0x0008(a2)             # 00000008
lbl_800468B0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_800468B4:
    addiu   a1, $sp, 0x005C            # a1 = FFFFFF94
    lw      a2, 0x0000(s0)             # 00000000
    jal     func_80037258
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x70BC($at)           # 801070BC
    lwc1    $f6, 0x0100(s0)            # 00000100
    lwc1    $f12, 0x000C(s0)           # 0000000C
    lwc1    $f14, 0x00FC(s0)           # 000000FC
    mul.s   $f16, $f6, $f8
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a2, $f16
    jal     func_8003569C
    nop
    swc1    $f0, 0x00FC(s0)            # 000000FC
    or      a0, $zero, $zero           # a0 = 00000000
    lh      a1, 0x015A(s0)             # 0000015A
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sh      v0, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036DD8
    lw      a1, 0x0010(s0)             # 00000010
    swc1    $f0, 0x0100(s0)            # 00000100
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8004691C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8
    jr      $ra
    nop


func_80046930:
# SPEC7()
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lh      t6, 0x015E(s0)             # 0000015E
    mov.s   $f2, $f0
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    bne     t6, $zero, lbl_800469EC
    addiu   s2, s0, 0x0050             # s2 = 00000050
    lw      t7, 0x008C(s0)             # 0000008C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    lh      t8, 0x00A4(t7)             # 000000A4
    addiu   s1, s0, 0x0094             # s1 = 00000094
    bne     t8, $at, lbl_80046988
    nop
    b       lbl_800469DC
    sh      t9, 0x0000(s0)             # 00000000
lbl_80046988:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x70C0($at)           # 801070C0
    lwc1    $f4, 0x0000(s1)            # 00000094
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lui     $at, 0x8010                # $at = 80100000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_800469B8
    lwc1    $f8, 0x0004(s1)            # 00000098
    b       lbl_800469DC
    sh      t0, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0004(s1)            # 00000098
lbl_800469B8:
    lwc1    $f10, 0x70C4($at)          # 801070C4
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_800469DC
    sh      t1, 0x0000(s0)             # 00000000
    b       lbl_800469DC
    sh      $zero, 0x0000(s0)          # 00000000
    sh      t1, 0x0000(s0)             # 00000000
lbl_800469DC:
    lh      t2, 0x015E(s0)             # 0000015E
    sh      $zero, 0x015A(s0)          # 0000015A
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
lbl_800469EC:
    lh      t4, 0x0000(s0)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f16, 0x0054(s0)           # 00000054
    sll     t5, t4,  2
    addu    $at, $at, t5
    lwc1    $f18, -0x098C($at)         # 800EF674
    addiu   s1, s0, 0x0094             # s1 = 00000094
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_80046B54
    lw      t3, 0x0000(s1)             # 00000094
    lw      t7, 0x0000(s1)             # 00000094
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x70C8($at)           # 801070C8
    sw      t7, 0x0000(a0)             # FFFFFFEC
    lw      t6, 0x0004(s1)             # 00000098
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    sw      t6, 0x0004(a0)             # FFFFFFF0
    lw      t7, 0x0008(s1)             # 0000009C
    lui     $at, 0x8010                # $at = 80100000
    mfc1    a2, $f0
    sw      t7, 0x0008(a0)             # FFFFFFF4
    lwc1    $f4, 0x0060($sp)
    lwc1    $f10, 0x70CC($at)          # 801070CC
    mfc1    a3, $f0
    sub.s   $f8, $f4, $f6
    or      a1, s2, $zero              # a1 = 00000050
    swc1    $f10, 0x0010($sp)
    jal     func_8003584C
    swc1    $f8, 0x0060($sp)
    lh      t8, 0x0000(s0)             # 00000000
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0xF614             # t0 = 800EF614
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t1, t9, t0
    lw      t3, 0x0000(t1)             # 00000000
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD8
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    sw      t3, 0x0000(a0)             # FFFFFFD8
    lw      t2, 0x0004(t1)             # 00000004
    lw      t5, 0x0000(a0)             # FFFFFFD8
    lui     $at, 0x800F                # $at = 800F0000
    sw      t2, 0x0004(a0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 00000008
    lui     t9, 0x800F                 # t9 = 800F0000
    sw      t3, 0x0008(a0)             # FFFFFFE0
    sw      t5, 0x0074(s0)             # 00000074
    lw      t4, 0x0004(a0)             # FFFFFFDC
    sw      t4, 0x0078(s0)             # 00000078
    lw      t5, 0x0008(a0)             # FFFFFFE0
    sw      t5, 0x007C(s0)             # 0000007C
    lw      t7, 0x0000(a0)             # FFFFFFD8
    sw      t7, 0x0000(a1)             # 0000005C
    lw      t6, 0x0004(a0)             # FFFFFFDC
    sw      t6, 0x0004(a1)             # 00000060
    lw      t7, 0x0008(a0)             # FFFFFFE0
    sw      t7, 0x0008(a1)             # 00000064
    lh      v0, 0x0000(s0)             # 00000000
    lwc1    $f16, 0x0004(s1)           # 00000098
    sll     v1, v0,  2
    addu    $at, $at, v1
    lwc1    $f2, -0x097C($at)          # 800EF684
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, v1
    lwc1    $f4, -0x098C($at)          # 800EF674
    sub.s   $f18, $f16, $f2
    sll     t8, v0,  1
    addu    t9, t9, t8
    sub.s   $f6, $f4, $f2
    lh      t9, -0x096C(t9)            # 800EF694
    lui     $at, 0x41A0                # $at = 41A00000
    div.s   $f0, $f18, $f6
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    cvt.s.w $f10, $f8
    mtc1    $at, $f8                   # $f8 = 60.00
    mul.s   $f16, $f10, $f0
    trunc.w.s $f4, $f16
    mul.s   $f6, $f18, $f0
    mfc1    t1, $f4
    nop
    sh      t1, 0x015A(s0)             # 0000015A
    add.s   $f10, $f6, $f8
    b       lbl_80046C1C
    swc1    $f10, 0x00FC(s0)           # 000000FC
    lw      t3, 0x0000(s1)             # 00000094
lbl_80046B54:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x70D0($at)           # 801070D0
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    sw      t3, 0x0000(a0)             # FFFFFFEC
    lw      t2, 0x0004(s1)             # 00000098
    lui     $at, 0x8010                # $at = 80100000
    addiu   s2, s0, 0x0050             # s2 = 00000050
    sw      t2, 0x0004(a0)             # FFFFFFF0
    lw      t3, 0x0008(s1)             # 0000009C
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t3, 0x0008(a0)             # FFFFFFF4
    lwc1    $f16, 0x0060($sp)
    lwc1    $f18, 0x70D4($at)          # 801070D4
    or      a1, s2, $zero              # a1 = 00000050
    add.s   $f4, $f16, $f2
    swc1    $f18, 0x0010($sp)
    jal     func_8003584C
    swc1    $f4, 0x0060($sp)
    lh      t4, 0x0000(s0)             # 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0xF644             # t6 = 800EF644
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    sh      $zero, 0x015A(s0)          # 0000015A
    addu    t7, t5, t6
    lw      t9, 0x0000(t7)             # 00000000
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFD8
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    sw      t9, 0x0000(a0)             # FFFFFFD8
    lw      t8, 0x0004(t7)             # 00000004
    lw      t1, 0x0000(a0)             # FFFFFFD8
    lui     $at, 0x428C                # $at = 428C0000
    sw      t8, 0x0004(a0)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 00000008
    mtc1    $at, $f6                   # $f6 = 70.00
    sw      t9, 0x0008(a0)             # FFFFFFE0
    sw      t1, 0x0074(s0)             # 00000074
    lw      t0, 0x0004(a0)             # FFFFFFDC
    sw      t0, 0x0078(s0)             # 00000078
    lw      t1, 0x0008(a0)             # FFFFFFE0
    sw      t1, 0x007C(s0)             # 0000007C
    lw      t3, 0x0000(a0)             # FFFFFFD8
    sw      t3, 0x0000(a1)             # 0000005C
    lw      t2, 0x0004(a0)             # FFFFFFDC
    sw      t2, 0x0004(a1)             # 00000060
    lw      t3, 0x0008(a0)             # FFFFFFE0
    sw      t3, 0x0008(a1)             # 00000064
    swc1    $f6, 0x00FC(s0)            # 000000FC
lbl_80046C1C:
    jal     func_80067580
    or      a0, s2, $zero              # a0 = 00000050
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lwc1    $f10, 0x0050(s0)           # 00000050
    swc1    $f8, 0x0100(s0)            # 00000100
    lwc1    $f16, 0x0000(s1)           # 00000094
    lwc1    $f18, 0x0054(s0)           # 00000054
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f4, $f10, $f16
    lwc1    $f10, 0x0058(s0)           # 00000058
    swc1    $f4, 0x00E4(s0)            # 000000E4
    lwc1    $f6, 0x0004(s1)            # 00000098
    sub.s   $f8, $f18, $f6
    swc1    $f8, 0x00E8(s0)            # 000000E8
    lwc1    $f16, 0x0008(s1)           # 0000009C
    sub.s   $f4, $f10, $f16
    swc1    $f4, 0x00EC(s0)            # 000000EC
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80046C7C:
# SPEC6()
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t9, 0x0144(s0)             # 00000144
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x118C(t8)            # 800EEE74
    sll     t3, t9,  3
    addiu   s1, s0, 0x005C             # s1 = 0000005C
    addu    t4, t8, t3
    lw      v0, 0x0004(t4)             # 00000004
    or      a1, s1, $zero              # a1 = 0000005C
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFB4
    lh      t5, 0x0000(v0)             # 00000000
    addiu   s2, s0, 0x0050             # s2 = 00000050
    sh      t5, 0x0000(s0)             # 00000000
    jal     func_80067A84
    or      a2, s2, $zero              # a2 = 00000050
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFE0
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80035940
    sw      v0, 0x006C($sp)
    lw      v1, 0x006C($sp)
    addiu   t6, $sp, 0x0064            # t6 = FFFFFFA4
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lwl     t9, 0x0006(v1)             # 00000006
    lwr     t9, 0x0009(v1)             # 00000009
    addiu   a0, s0, 0x0074             # a0 = 00000074
    lui     t1, 0x800F                 # t1 = 800F0000
    sw      t9, 0x0000(t6)             # FFFFFFA4
    lhu     t9, 0x000A(v1)             # 0000000A
    sh      t9, 0x0004(t6)             # FFFFFFA8
    lh      t0, 0x000C(v1)             # 0000000C
    bnel    t0, $at, lbl_80046D2C
    slti    $at, t0, 0x0169
    addiu   t0, $zero, 0x1770          # t0 = 00001770
    slti    $at, t0, 0x0169
lbl_80046D2C:
    beq     $at, $zero, lbl_80046D50
    addu    $at, t0, $zero
    sll     t0, t0,  2
    subu    t0, t0, $at
    sll     t0, t0,  3
    addu    t0, t0, $at
    sll     t0, t0,  2
    sll     t0, t0, 16
    sra     t0, t0, 16
lbl_80046D50:
    lh      t8, 0x0000(s0)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f4, 0x00A0($sp)
    sw      t8, -0x0E58($at)           # 800EF1A8
    lwc1    $f6, 0x0000(a0)            # 00000074
    lwc1    $f8, 0x00A4($sp)
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80046DB4
    lw      t5, 0x0090(s0)             # 00000090
    lwc1    $f10, 0x0004(a0)           # 00000078
    lwc1    $f4, 0x00A8($sp)
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_80046DB4
    lw      t5, 0x0090(s0)             # 00000090
    lwc1    $f6, 0x0008(a0)            # 0000007C
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80046DB4
    lw      t5, 0x0090(s0)             # 00000090
    lh      t3, 0x015E(s0)             # 0000015E
    bnel    t3, $zero, lbl_80046E14
    addiu   v1, s0, 0x0004             # v1 = 00000004
    lw      t5, 0x0090(s0)             # 00000090
lbl_80046DB4:
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t1, t1, 0xF1A8             # t1 = 800EF1A8
    sh      t4, 0x0110(t5)             # 00000110
    lw      t6, 0x0000(t1)             # 800EF1A8
    addiu   v1, s0, 0x0004             # v1 = 00000004
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    andi    t7, t6, 0xF0FF             # t7 = 0000F0A4
    ori     t9, t7, 0x0300             # t9 = 0000F3A4
    sw      t9, 0x0000(t1)             # 800EF1A8
    lwc1    $f8, 0x0098(s0)            # 00000098
    sh      t8, 0x0004(v1)             # 00000008
    addiu   t3, $sp, 0x00A0            # t3 = FFFFFFE0
    swc1    $f8, 0x0000(v1)            # 00000004
    lw      t5, 0x0000(t3)             # FFFFFFE0
    sw      t5, 0x0000(a0)             # 00000074
    lw      t4, 0x0004(t3)             # FFFFFFE4
    sw      t4, 0x0004(a0)             # 00000078
    lw      t5, 0x0008(t3)             # FFFFFFE8
    sw      t5, 0x0008(a0)             # 0000007C
    lh      v0, 0x015E(s0)             # 0000015E
    bne     v0, $zero, lbl_80046E10
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x015E(s0)             # 0000015E
lbl_80046E10:
    addiu   v1, s0, 0x0004             # v1 = 00000004
lbl_80046E14:
    lh      a1, 0x0004(v1)             # 00000008
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0xF1A8             # t1 = 800EF1A8
    blez    a1, lbl_80047000
    addiu   v0, s0, 0x0094             # v0 = 00000094
    mtc1    a1, $f10                   # $f10 = 0.00
    addiu   t2, $sp, 0x0094            # t2 = FFFFFFD4
    lui     $at, 0x3F00                # $at = 3F000000
    cvt.s.w $f4, $f10
    mtc1    $at, $f0                   # $f0 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    addiu   t8, $sp, 0x0088            # t8 = FFFFFFC8
    lui     a3, 0x3C23                 # a3 = 3C230000
    mfc1    a2, $f0
    swc1    $f4, 0x0058($sp)
    lw      t9, 0x0000(a0)             # 00000074
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    sw      t9, 0x0000(t2)             # FFFFFFD4
    lw      t7, 0x0004(a0)             # 00000078
    sw      t7, 0x0004(t2)             # FFFFFFD8
    lw      t9, 0x0008(a0)             # 0000007C
    sw      t9, 0x0008(t2)             # FFFFFFDC
    lwc1    $f8, 0x0094($sp)
    lwc1    $f6, 0x0000(v0)            # 00000094
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f0
    add.s   $f6, $f8, $f4
    swc1    $f6, 0x0094($sp)
    lwc1    $f8, 0x0000(v1)            # 00000004
    lwc1    $f10, 0x0004(v0)           # 00000098
    lwc1    $f6, 0x70D8($at)           # 801070D8
    sub.s   $f4, $f10, $f8
    lwc1    $f8, 0x0098($sp)
    mul.s   $f10, $f4, $f6
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0098($sp)
    lw      t4, 0x0000(t2)             # FFFFFFD4
    sw      t4, 0x0000(t8)             # FFFFFFC8
    lw      t3, 0x0004(t2)             # FFFFFFD8
    sw      t3, 0x0004(t8)             # FFFFFFCC
    lw      t4, 0x0008(t2)             # FFFFFFDC
    sw      t4, 0x0008(t8)             # FFFFFFD0
    lwc1    $f14, 0x0004(s1)           # 00000060
    sh      t0, 0x0062($sp)
    sw      v1, 0x0030($sp)
    jal     func_8003569C
    lwc1    $f12, 0x0098($sp)
    lh      t6, 0x0064($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lh      t5, 0x0066($sp)
    subu    t7, $zero, t6
    swc1    $f0, 0x008C($sp)
    sh      t7, 0x00B0($sp)
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFBC
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFC8
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFFEC
    swc1    $f6, 0x00AC($sp)
    jal     func_800359A8
    sh      t5, 0x00B2($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f10, 0x0058($sp)
    lwc1    $f4, 0x0088($sp)
    lw      v1, 0x0030($sp)
    div.s   $f0, $f8, $f10
    lh      t0, 0x0062($sp)
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f0, 0x0054($sp)
    lwc1    $f12, 0x0000(s1)           # 0000005C
    lwc1    $f2, 0x0004(s1)            # 00000060
    lwc1    $f14, 0x0008(s1)           # 00000064
    sub.s   $f6, $f4, $f12
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f12, $f8
    swc1    $f10, 0x0000(s1)           # 0000005C
    lwc1    $f4, 0x008C($sp)
    sub.s   $f6, $f4, $f2
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0004(s1)           # 00000060
    lwc1    $f4, 0x0090($sp)
    sub.s   $f6, $f4, $f14
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f14, $f8
    swc1    $f10, 0x0008(s1)           # 00000064
    lwc1    $f16, 0x0000(s2)           # 00000050
    lwc1    $f4, 0x007C($sp)
    lwc1    $f18, 0x0004(s2)           # 00000054
    lwc1    $f2, 0x0008(s2)            # 00000058
    sub.s   $f6, $f4, $f16
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x0000(s2)           # 00000050
    lwc1    $f4, 0x0080($sp)
    sub.s   $f6, $f4, $f18
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f18, $f8
    swc1    $f10, 0x0004(s2)           # 00000054
    lwc1    $f4, 0x0084($sp)
    lwc1    $f8, 0x0054($sp)
    sub.s   $f6, $f4, $f2
    mul.s   $f10, $f6, $f8
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    add.s   $f4, $f2, $f10
    swc1    $f4, 0x0008(s2)            # 00000058
    lwc1    $f10, 0x70DC($at)          # 801070DC
    lh      t9, 0x0004(v1)             # 00000004
    lwc1    $f0, 0x00FC(s0)            # 000000FC
    mul.s   $f4, $f8, $f10
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    sub.s   $f6, $f4, $f0
    div.s   $f4, $f6, $f10
    add.s   $f8, $f0, $f4
    swc1    $f8, 0x00FC(s0)            # 000000FC
    lh      t8, 0x0004(v1)             # 00000004
    addiu   t3, t8, 0xFFFF             # t3 = FFFFFFFF
    b       lbl_800470D0
    sh      t3, 0x0004(v1)             # 00000004
lbl_80047000:
    lw      t4, 0x0000(t1)             # 00000000
    addiu   t2, $sp, 0x0094            # t2 = FFFFFFD4
    lui     $at, 0x3F00                # $at = 3F000000
    andi    t5, t4, 0xF0FF             # t5 = 00000000
    sw      t5, 0x0000(t1)             # 00000000
    lw      t7, 0x0000(a0)             # 00000000
    mtc1    $at, $f0                   # $f0 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    sw      t7, 0x0000(t2)             # FFFFFFD4
    lw      t6, 0x0004(a0)             # 00000004
    lui     a3, 0x3C23                 # a3 = 3C230000
    mfc1    a2, $f0
    sw      t6, 0x0004(t2)             # FFFFFFD8
    lw      t7, 0x0008(a0)             # 00000008
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    sw      t7, 0x0008(t2)             # FFFFFFDC
    lwc1    $f10, 0x0094($sp)
    lwc1    $f6, 0x0000(v0)            # 00000000
    sub.s   $f4, $f6, $f10
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f10, $f8
    swc1    $f6, 0x0094($sp)
    lwc1    $f10, 0x0000(v1)           # 00000000
    lwc1    $f4, 0x0004(v0)            # 00000004
    lwc1    $f6, 0x70E0($at)           # 801070E0
    sub.s   $f8, $f4, $f10
    lwc1    $f10, 0x0098($sp)
    mul.s   $f4, $f8, $f6
    add.s   $f8, $f10, $f4
    swc1    $f8, 0x0098($sp)
    lw      t8, 0x0000(t2)             # FFFFFFD4
    sw      t8, 0x0000(s1)             # 0000005C
    lw      t9, 0x0004(t2)             # FFFFFFD8
    sw      t9, 0x0004(s1)             # 00000060
    lw      t8, 0x0008(t2)             # FFFFFFDC
    lwc1    $f14, 0x0004(s1)           # 00000060
    sw      t8, 0x0008(s1)             # 00000064
    jal     func_8003569C
    lwc1    $f12, 0x0098($sp)
    swc1    $f0, 0x0004(s1)            # 00000060
    lh      t4, 0x0064($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lh      t3, 0x0066($sp)
    subu    t5, $zero, t4
    sh      t5, 0x00B0($sp)
    or      a0, s2, $zero              # a0 = 00000050
    or      a1, s1, $zero              # a1 = 0000005C
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFFEC
    swc1    $f6, 0x00AC($sp)
    jal     func_800359A8
    sh      t3, 0x00B2($sp)
lbl_800470D0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0


func_800470EC:
# SPEC8()
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80038A04
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004710C:
# SPEC9()
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    swc1    $f0, 0x0098($sp)
    lh      t6, 0x014C(s0)             # 0000014C
    div.s   $f6, $f4, $f0
    lui     $at, 0x8010                # $at = 80100000
    andi    t7, t6, 0xFFEF             # t7 = 00000000
    sh      t7, 0x014C(s0)             # 0000014C
    lwc1    $f8, 0x70E4($at)           # 801070E4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x70E8($at)          # 801070E8
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFB4
    mul.s   $f10, $f6, $f8
    sub.s   $f2, $f16, $f10
    lh      t8, 0x0142(s0)             # 00000142
    lui     t2, 0x800F                 # t2 = 800F0000
    lh      t3, 0x0144(s0)             # 00000144
    sll     t9, t8,  3
    addu    t2, t2, t9
    lw      t2, -0x118C(t2)            # 800EEE74
    sll     t4, t3,  3
    lui     $at, 0x8010                # $at = 80100000
    addu    t5, t2, t4
    lw      v0, 0x0004(t5)             # 00000004
    lwc1    $f6, 0x70EC($at)           # 801070EC
    addiu   v1, s0, 0x000C             # v1 = 0000000C
    lh      t6, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f16, $f8, $f0
    nop
    mul.s   $f10, $f16, $f2
    swc1    $f10, 0x0000(v1)           # 0000000C
    lh      t7, -0x0004(v0)            # 00000004
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0004(v1)            # 00000010
    lh      t8, 0x0000(v0)             # 00000008
    addiu   v0, s0, 0x0094             # v0 = 00000094
    sh      t8, 0x0008(v1)             # 00000014
    lw      a1, 0x0000(s0)             # 00000000
    beql    a1, $zero, lbl_80047204
    lw      t4, 0x0000(v0)             # 00000094
    sw      v1, 0x0038($sp)
    jal     func_800226D8
    swc1    $f2, 0x0078($sp)
    addiu   t9, s0, 0x0094             # t9 = 00000094
    sw      t9, 0x003C($sp)
    b       lbl_8004724C
    lwc1    $f2, 0x0078($sp)
    lw      t4, 0x0000(v0)             # 00000000
lbl_80047204:
    addiu   t3, $sp, 0x007C            # t3 = FFFFFFB4
    sw      t4, 0x0000(t3)             # FFFFFFB4
    lw      t2, 0x0004(v0)             # 00000004
    sw      t2, 0x0004(t3)             # FFFFFFB8
    lw      t4, 0x0008(v0)             # 00000008
    sw      t4, 0x0008(t3)             # FFFFFFBC
    lw      t2, 0x000C(v0)             # 0000000C
    sw      t2, 0x000C(t3)             # FFFFFFC0
    lw      t4, 0x0010(v0)             # 00000010
    sw      t4, 0x0010(t3)             # FFFFFFC4
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f6, 0x0080($sp)
    sw      v1, 0x0038($sp)
    add.s   $f16, $f0, $f8
    sw      v0, 0x003C($sp)
    sh      $zero, 0x0088($sp)
    add.s   $f10, $f6, $f16
    swc1    $f10, 0x0080($sp)
lbl_8004724C:
    addiu   a1, s0, 0x0050             # a1 = 00000050
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    sw      a2, 0x0048($sp)
    sw      a1, 0x0044($sp)
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFD4
    jal     func_80067A84
    swc1    $f2, 0x0078($sp)
    lw      t5, 0x0038($sp)
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f2, 0x0078($sp)
    lh      t6, 0x0008(t5)             # 00000008
    sw      t6, -0x0E58($at)           # 800EF1A8
    lh      v1, 0x015E(s0)             # 0000015E
    sltiu   $at, v1, 0x0005
    beq     $at, $zero, lbl_800476A0
    sll     t7, v1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x70F0($at)            # 801070F0
    jr      t7
    nop
    lh      t8, 0x014C(s0)             # 0000014C
    addiu   t3, v1, 0x0001             # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
    andi    t9, t8, 0xFFF9             # t9 = 00000000
    sh      t9, 0x014C(s0)             # 0000014C
    lw      t2, 0x003C($sp)
    lh      t5, 0x008A($sp)
    lh      t6, 0x008A($sp)
    lh      t4, 0x000E(t2)             # 0000000E
    lh      t8, 0x008A($sp)
    addiu   t7, t6, 0x8001             # t7 = FFFF8001
    subu    v0, t4, t5
    bltz    v0, lbl_800472E0
    subu    a3, $zero, v0
    b       lbl_800472E0
    or      a3, v0, $zero              # a3 = 00000000
lbl_800472E0:
    slti    $at, a3, 0x4000
    bnel    $at, $zero, lbl_800472F8
    sh      t8, 0x0018(s0)             # 00000018
    b       lbl_800472F8
    sh      t7, 0x0018(s0)             # 00000018
    sh      t8, 0x0018(s0)             # 00000018
lbl_800472F8:
    lh      t9, 0x0006(s0)             # 00000006
    addiu   t3, t9, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0006(s0)             # 00000006
    lh      t2, 0x0006(s0)             # 00000006
    bgtzl   t2, lbl_800477C0
    lw      t3, 0x003C($sp)
    lh      t4, 0x015E(s0)             # 0000015E
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x015E(s0)             # 0000015E
    lw      t6, 0x0038($sp)
    lh      t7, 0x0008(t6)             # 00000008
    andi    t8, t7, 0x0001             # t8 = 00000001
    beql    t8, $zero, lbl_800473A8
    addiu   t3, $zero, 0x0E38          # t3 = 00000E38
    jal     func_80036500
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0074             # a0 = 00000074
    sw      a0, 0x0040($sp)
    jal     func_80035940
    or      a1, v0, $zero              # a1 = 00000000
    lw      t9, 0x0040($sp)
    addiu   a3, $sp, 0x004C            # a3 = FFFFFF84
    addiu   t7, $sp, 0x00AC            # t7 = FFFFFFE4
    lw      t2, 0x0000(t9)             # 00000000
    sw      t2, 0x0000(a3)             # FFFFFF84
    lw      t3, 0x0004(t9)             # 00000004
    lw      t6, 0x0000(a3)             # FFFFFF84
    sw      t3, 0x0004(a3)             # FFFFFF88
    lw      t2, 0x0008(t9)             # 00000008
    sw      t2, 0x0008(a3)             # FFFFFF8C
    lw      t4, 0x0048($sp)
    sw      t6, 0x0000(t4)             # 00000000
    lw      t5, 0x0004(a3)             # FFFFFF88
    sw      t5, 0x0004(t4)             # 00000004
    lw      t6, 0x0008(a3)             # FFFFFF8C
    sw      t6, 0x0008(t4)             # 00000008
    lw      t9, 0x0000(a3)             # FFFFFF84
    sw      t9, 0x0000(t7)             # FFFFFFE4
    lw      t8, 0x0004(a3)             # FFFFFF88
    sw      t8, 0x0004(t7)             # FFFFFFE8
    lw      t9, 0x0008(a3)             # FFFFFF8C
    b       lbl_800474D8
    sw      t9, 0x0008(t7)             # FFFFFFEC
    addiu   t3, $zero, 0x0E38          # t3 = 00000E38
lbl_800473A8:
    sh      t3, 0x00A8($sp)
    lw      t2, 0x008C(s0)             # 0000008C
    addiu   v1, s0, 0x0018             # v1 = 00000018
    addiu   $at, $zero, 0x0AAA         # $at = 00000AAA
    lw      t4, 0x009C(t2)             # 0000009C
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_800473D4
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    b       lbl_800473D4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_800473D4:
    multu   a3, $at
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    lh      t6, 0x0000(v1)             # 00000018
    addiu   a0, s0, 0x0074             # a0 = 00000074
    mul.s   $f4, $f18, $f2
    sw      a0, 0x0040($sp)
    sw      v1, 0x0034($sp)
    lw      a1, 0x0044($sp)
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFDC
    mflo    v0
    sll     t1, v0, 16
    sra     t1, t1, 16
    addu    t7, t6, t1
    sh      t7, 0x00AA($sp)
    swc1    $f4, 0x00A4($sp)
    jal     func_800359A8
    sw      t1, 0x0030($sp)
    lw      t8, 0x0040($sp)
    addiu   a3, $sp, 0x004C            # a3 = FFFFFF84
    addiu   t6, $sp, 0x00AC            # t6 = FFFFFFE4
    lw      t3, 0x0000(t8)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00AC            # a1 = FFFFFFE4
    sw      t3, 0x0000(a3)             # FFFFFF84
    lw      t9, 0x0004(t8)             # 00000004
    lw      t5, 0x0000(a3)             # FFFFFF84
    sw      t9, 0x0004(a3)             # FFFFFF88
    lw      t3, 0x0008(t8)             # 00000008
    sw      t3, 0x0008(a3)             # FFFFFF8C
    lw      t2, 0x0048($sp)
    sw      t5, 0x0000(t2)             # 00000000
    lw      t4, 0x0004(a3)             # FFFFFF88
    sw      t4, 0x0004(t2)             # 00000004
    lw      t5, 0x0008(a3)             # FFFFFF8C
    sw      t5, 0x0008(t2)             # 00000008
    lw      t8, 0x0000(a3)             # FFFFFF84
    sw      t8, 0x0000(t6)             # FFFFFFE4
    lw      t7, 0x0004(a3)             # FFFFFF88
    sw      t7, 0x0004(t6)             # FFFFFFE8
    lw      t8, 0x0008(a3)             # FFFFFF8C
    sw      t8, 0x0008(t6)             # FFFFFFEC
    jal     func_8003612C
    lw      a2, 0x003C($sp)
    beq     v0, $zero, lbl_800474D8
    lw      v1, 0x0034($sp)
    lw      t0, 0x0030($sp)
    lh      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0040($sp)
    subu    t0, $zero, t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    addu    t3, t9, t0
    sh      t3, 0x00AA($sp)
    lw      a1, 0x0044($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFDC
    lw      t4, 0x0040($sp)
    lw      t2, 0x0048($sp)
    lw      t6, 0x0000(t4)             # 00000000
    sw      t6, 0x0000(t2)             # 00000000
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(t2)             # 00000004
    lw      t6, 0x0008(t4)             # 00000008
    sw      t6, 0x0008(t2)             # 00000008
lbl_800474D8:
    lw      t8, 0x003C($sp)
    addiu   t7, $sp, 0x00AC            # t7 = FFFFFFE4
    lui     $at, 0x3E80                # $at = 3E800000
    lw      t3, 0x0000(t8)             # 00000000
    mtc1    $at, $f0                   # $f0 = 0.25
    lui     $at, 0x8010                # $at = 80100000
    sw      t3, 0x0000(t7)             # FFFFFFE4
    lw      t9, 0x0004(t8)             # 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t9, 0x0004(t7)             # FFFFFFE8
    lw      t3, 0x0008(t8)             # 00000008
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFFE4
    sw      t3, 0x0008(t7)             # FFFFFFEC
    lw      t2, 0x0038($sp)
    lwc1    $f8, 0x0098($sp)
    lwc1    $f10, 0x00B0($sp)
    lwc1    $f6, 0x0000(t2)            # 00000000
    lwc1    $f4, 0x7104($at)           # 80107104
    lw      a1, 0x0044($sp)
    add.s   $f16, $f8, $f6
    swc1    $f4, 0x0010($sp)
    add.s   $f18, $f10, $f16
    jal     func_8003584C
    swc1    $f18, 0x00B0($sp)
    lh      t4, 0x0008(s0)             # 00000008
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0008(s0)             # 00000008
    lh      t6, 0x0008(s0)             # 00000008
    bgtzl   t6, lbl_800477C0
    lw      t3, 0x003C($sp)
    lh      t7, 0x015E(s0)             # 0000015E
    addiu   v1, s0, 0x0018             # v1 = 00000018
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x015E(s0)             # 0000015E
    lh      t9, 0x0000(v1)             # 00000018
    addiu   t3, t9, 0x8001             # t3 = FFFF8001
    sh      t3, 0x0000(v1)             # 00000018
    lw      t4, 0x003C($sp)
    addiu   t2, $sp, 0x00AC            # t2 = FFFFFFE4
    lui     $at, 0x3F00                # $at = 3F000000
    lw      t6, 0x0000(t4)             # 00000000
    mtc1    $at, $f0                   # $f0 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    sw      t6, 0x0000(t2)             # FFFFFFE4
    lw      t5, 0x0004(t4)             # 00000004
    addiu   t8, s0, 0x0074             # t8 = 00000074
    addiu   v1, s0, 0x0018             # v1 = 00000018
    sw      t5, 0x0004(t2)             # FFFFFFE8
    lw      t6, 0x0008(t4)             # 00000008
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t6, 0x0008(t2)             # FFFFFFEC
    lw      t7, 0x0038($sp)
    lwc1    $f8, 0x0098($sp)
    lwc1    $f16, 0x00B0($sp)
    lwc1    $f6, 0x0000(t7)            # 00000000
    lwc1    $f4, 0x7108($at)           # 80107108
    sw      v1, 0x0034($sp)
    add.s   $f10, $f8, $f6
    sw      t8, 0x0040($sp)
    lw      a1, 0x0044($sp)
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFFE4
    add.s   $f18, $f16, $f10
    swc1    $f4, 0x0010($sp)
    jal     func_8003584C
    swc1    $f18, 0x00B0($sp)
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, $zero, 0x0AAA          # a0 = 00000AAA
    lh      a1, 0x00A0($sp)
    jal     func_80035724
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      v1, 0x0034($sp)
    sh      v0, 0x00A8($sp)
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lh      a1, 0x00A2($sp)
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_80035724
    lh      a0, 0x0000(v1)             # 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    lui     a2, 0x3E99                 # a2 = 3E990000
    sh      v0, 0x00AA($sp)
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lwc1    $f14, 0x009C($sp)
    jal     func_8003569C
    lui     a3, 0x3F80                 # a3 = 3F800000
    swc1    $f0, 0x00A4($sp)
    lw      a0, 0x0040($sp)
    lw      a1, 0x0044($sp)
    jal     func_800359A8
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFDC
    lw      t3, 0x0040($sp)
    lw      t9, 0x0048($sp)
    lw      t4, 0x0000(t3)             # 00000000
    sw      t4, 0x0000(t9)             # 00000000
    lw      t2, 0x0004(t3)             # 00000004
    sw      t2, 0x0004(t9)             # 00000004
    lw      t4, 0x0008(t3)             # 00000008
    sw      t4, 0x0008(t9)             # 00000008
    lh      t5, 0x000A(s0)             # 0000000A
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x000A(s0)             # 0000000A
    lh      t7, 0x000A(s0)             # 0000000A
    bgtzl   t7, lbl_800477C0
    lw      t3, 0x003C($sp)
    lh      t8, 0x015E(s0)             # 0000015E
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x015E(s0)             # 0000015E
    lh      v1, 0x015E(s0)             # 0000015E
    addiu   t3, v1, 0x0001             # t3 = 00000001
    sh      t3, 0x015E(s0)             # 0000015E
lbl_800476A0:
    lh      t2, 0x014C(s0)             # 0000014C
    lui     $at, 0x800F                # $at = 800F0000
    lui     a0, 0x8012                 # a0 = 80120000
    ori     t4, t2, 0x0410             # t4 = 00000410
    sh      t4, 0x014C(s0)             # 0000014C
    sw      $zero, -0x0E58($at)        # 800EF1A8
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x710C($at)           # 8010710C
    lwc1    $f6, 0x00D8(s0)            # 000000D8
    c.lt.s  $f8, $f6
    nop
    bc1tl   lbl_800477A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, -0x71E8(a0)            # FFFF8E18
    ori     a1, $zero, 0x8000          # a1 = 00008000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 00000014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x71E8(a0)            # 80118E18
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_800CCE10
    addiu   a0, a0, 0x0014             # a0 = 80120014
    bne     v0, $zero, lbl_800477A0
    lw      t5, 0x0038($sp)
    lh      t6, 0x0008(t5)             # 00000008
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_800477BC
lbl_800477A0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_800477A4:
    lh      a1, 0x0154(s0)             # 00000154
    jal     func_800493C8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      t8, 0x014C(s0)             # 0000014C
    ori     t9, t8, 0x0006             # t9 = 00000006
    sh      t9, 0x014C(s0)             # 0000014C
lbl_800477BC:
    lw      t3, 0x003C($sp)
lbl_800477C0:
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFFE4
    lw      t4, 0x0000(t3)             # 00000000
    sw      t4, 0x0000(a0)             # FFFFFFE4
    lw      t2, 0x0004(t3)             # 00000004
    sw      t2, 0x0004(a0)             # FFFFFFE8
    lw      t4, 0x0008(t3)             # 00000008
    sw      t4, 0x0008(a0)             # FFFFFFEC
    lwc1    $f16, 0x00B0($sp)
    lwc1    $f10, 0x0098($sp)
    lw      a1, 0x0048($sp)
    add.s   $f18, $f16, $f10
    jal     func_80067580
    swc1    $f18, 0x00B0($sp)
    lw      v1, 0x003C($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lwc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x0000(v1)            # 00000000
    lwc1    $f16, 0x0054(s0)           # 00000054
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f6, $f4, $f8
    lwc1    $f4, 0x0058(s0)            # 00000058
    swc1    $f6, 0x00E4(s0)            # 000000E4
    lwc1    $f10, 0x0004(v1)           # 00000004
    sub.s   $f18, $f16, $f10
    swc1    $f18, 0x00E8(s0)           # 000000E8
    lwc1    $f8, 0x0008(v1)            # 00000008
    sub.s   $f6, $f4, $f8
    swc1    $f6, 0x00EC(s0)            # 000000EC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8


func_80047840:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    jal     func_80066C10              # zelda_malloc?
    addiu   a0, $zero, 0x016C          # a0 = 0000016C
    beq     v0, $zero, lbl_8004787C
    or      a0, v0, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)
    lw      a2, 0x0024($sp)
    lw      a3, 0x0028($sp)
    jal     func_800478B8
    sw      v0, 0x001C($sp)
    lw      a0, 0x001C($sp)
lbl_8004787C:
    or      v0, a0, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80047890:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beql    a0, $zero, lbl_800478AC
    lw      $ra, 0x0014($sp)
    jal     func_80066C90
    nop
    lw      $ra, 0x0014($sp)
lbl_800478AC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800478B8:
# ?, Related to initializing camera struct
# A0 = Camera Struct Pointer
# A1 = VIEW struct (master view)
# A2 = Global Context + 0x7C0
# A3 = Global Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800D5E30
    addiu   a2, $zero, 0x016C          # a2 = 0000016C
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF19C             # v0 = 800EF19C
    lw      t6, 0x0000(v0)             # 800EF19C
    lui     v1, 0x8012                 # v1 = 80120000
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     t6, $zero, lbl_80047914
    addiu   v1, v1, 0x8E18             # v1 = 80118E18
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sw      $zero, 0x0000(v0)          # 800EF19C
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    sh      t0, 0x0304(t7)             # 80120304
lbl_80047914:
    lw      t8, 0x002C($sp)
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0xF1A4             # a2 = 800EF1A4
    sw      t8, 0x0000(v1)             # 80118E18
    sw      t8, 0x008C(s0)             # 0000008C
    lh      v0, 0x0000(a2)             # 800EF1A4
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t8, $zero, 0x3FFF          # t8 = 00003FFF
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   t1, v0, 0x0001             # t1 = 800EF19D
    beq     a1, $zero, lbl_800479BC
    sh      t1, 0x0000(a2)             # 800EF1A4
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_8004794C:
    bne     a1, $zero, lbl_80047960
    or      v1, $zero, $zero           # v1 = 00000000
    lh      t2, 0x0000(a2)             # 800EF1A4
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0000(a2)             # 800EF1A4
lbl_80047960:
    lw      a0, 0x008C(s0)             # 0000008C
    sll     t4, v1,  2
lbl_80047968:
    addu    t5, a0, t4
    lw      v0, 0x0790(t5)             # 00000790
    beql    v0, $zero, lbl_80047988
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lh      t6, 0x0130(v0)             # 800EF2CC
    beq     a1, t6, lbl_8004799C
    nop
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_80047988:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_80047968
    sll     t4, v1,  2
lbl_8004799C:
    beq     v1, a3, lbl_800479BC
    nop
    lh      v0, 0x0000(a2)             # 800EF1A4
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   t7, v0, 0x0001             # t7 = 800EF19D
    bne     a1, $zero, lbl_8004794C
    sh      t7, 0x0000(a2)             # 800EF1A4
lbl_800479BC:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7110($at)           # 80107110
    lui     $at, 0x4120                # $at = 41200000
    sh      t8, 0x0136(s0)             # 00000136
    mtc1    $at, $f12                  # $f12 = 10.00
    lwl     t1, 0x0134(s0)             # 00000134
    lwr     t1, 0x0137(s0)             # 00000137
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    swl     t1, 0x013A(s0)             # 0000013A
    lui     $at, 0x4180                # $at = 41800000
    swr     t1, 0x013D(s0)             # 0000013D
    lhu     t1, 0x0138(s0)             # 00000138
    mtc1    $at, $f6                   # $f6 = 16.00
    sh      a1, 0x0130(s0)             # 00000130
    swc1    $f2, 0x0070(s0)            # 00000070
    swc1    $f2, 0x0068(s0)            # 00000068
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    swc1    $f0, 0x00CC(s0)            # 000000CC
    swc1    $f0, 0x00D0(s0)            # 000000D0
    swc1    $f0, 0x00D4(s0)            # 000000D4
    swc1    $f12, 0x00C0(s0)           # 000000C0
    swc1    $f12, 0x00C8(s0)           # 000000C8
    swc1    $f14, 0x006C(s0)           # 0000006C
    swc1    $f4, 0x00FC(s0)            # 000000FC
    sh      t1, 0x013E(s0)             # 0000013E
    swc1    $f6, 0x00C4(s0)            # 000000C4
    sw      t2, -0x0E50($at)           # 800EF1B0
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, -0x0E54($at)        # 800EF1AC
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      $zero, 0x014C(s0)          # 0000014C
    addiu   t3, $zero, 0x0021          # t3 = 00000021
    lh      t8, 0x014C(s0)             # 0000014C
    sh      t3, 0x0154(s0)             # 00000154
    sh      t0, 0x0166(s0)             # 00000166
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t4, 0x0154(s0)             # 00000154
    lh      t5, 0x0166(s0)             # 00000166
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    addiu   t7, $zero, 0x7FFF          # t7 = 00007FFF
    ori     t9, t8, 0x4000             # t9 = 00007FFF
    sh      $zero, 0x0144(s0)          # 00000144
    sh      t6, 0x0146(s0)             # 00000146
    sh      t7, 0x0168(s0)             # 00000168
    sh      t0, 0x0160(s0)             # 00000160
    sh      t9, 0x014C(s0)             # 0000014C
    swc1    $f2, 0x0070(s0)            # 00000070
    swc1    $f2, 0x0068(s0)            # 00000068
    lui     $at, 0x800F                # $at = 800F0000
    ori     t1, $zero, 0xFF00          # t1 = 0000FF00
    swc1    $f14, 0x006C(s0)           # 0000006C
    swc1    $f0, 0x0080(s0)            # 00000080
    swc1    $f0, 0x0084(s0)            # 00000084
    swc1    $f0, 0x0088(s0)            # 00000088
    sh      t4, 0x0142(s0)             # 00000142
    sh      t5, 0x0148(s0)             # 00000148
    swc1    $f8, 0x0100(s0)            # 00000100
    sw      t1, -0x0E58($at)           # 800EF1A8
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sw      t2, -0x0E08($at)           # 800EF1F8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80047AD8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v0, 0x008C(s0)             # 0000008C
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, $zero, 0x0021          # t7 = 00000021
    addiu   t6, v0, 0x01E0             # t6 = 000001E0
    beq     s0, t6, lbl_80047B1C
    addu    v1, v0, $at
    lh      t9, 0x014C(s0)             # 0000014C
    sh      t7, 0x0142(s0)             # 00000142
    lh      t8, 0x0142(s0)             # 00000142
    andi    t1, t9, 0xFFFB             # t1 = 00000000
    sh      t1, 0x014C(s0)             # 0000014C
    b       lbl_80047C18
    sh      t8, 0x0154(s0)             # 00000154
lbl_80047B1C:
    lw      t2, 0x1CC4(v1)             # 00001CC4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t7, $zero, 0x0021          # t7 = 00000021
    lbu     t3, 0x0000(t2)             # 00000000
    beql    t0, t3, lbl_80047C04
    lh      t9, 0x014C(s0)             # 0000014C
    lbu     v0, 0x1CBF(v1)             # 00001CBF
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_80047B8C
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    bne     v0, t0, lbl_80047BBC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, $zero, 0x0012          # t4 = 00000012
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80049AE0
    sw      $zero, 0x0010($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sh      t6, 0x0142(s0)             # 00000142
    lh      t7, 0x0142(s0)             # 00000142
    b       lbl_80047C18
    sh      t7, 0x0154(s0)             # 00000154
lbl_80047B8C:
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80049AE0
    sw      $zero, 0x0010($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0142(s0)             # 00000142
    lh      t1, 0x0142(s0)             # 00000142
    b       lbl_80047C18
    sh      t1, 0x0154(s0)             # 00000154
lbl_80047BBC:
    addiu   t2, $zero, 0x0012          # t2 = 00000012
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80049AE0
    sw      $zero, 0x0010($sp)
    lh      t5, 0x014C(s0)             # 0000014C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0142(s0)             # 00000142
    lh      t4, 0x0142(s0)             # 00000142
    ori     t6, t5, 0x0004             # t6 = 00000004
    sh      t6, 0x014C(s0)             # 0000014C
    b       lbl_80047C18
    sh      t4, 0x0154(s0)             # 00000154
    lh      t9, 0x014C(s0)             # 0000014C
lbl_80047C04:
    sh      t7, 0x0142(s0)             # 00000142
    lh      t8, 0x0142(s0)             # 00000142
    andi    t1, t9, 0xFFFB             # t1 = 00000000
    sh      t1, 0x014C(s0)             # 0000014C
    sh      t8, 0x0154(s0)             # 00000154
lbl_80047C18:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80047C2C:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80047C38:
# Initialize Camera?
# A0 = Camera ptr
# A1 = Link Instance (possibly actor to follow?)
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x006C($sp)
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFEC
    jal     func_800226D8
    lw      a1, 0x006C($sp)
    jal     func_80021600
    lw      a0, 0x006C($sp)
    lw      t6, 0x006C($sp)
    addiu   v0, $sp, 0x0054            # v0 = FFFFFFEC
    lui     $at, 0x4334                # $at = 43340000
    sw      t6, 0x0090(s0)             # 00000090
    lw      t8, 0x0000(v0)             # FFFFFFEC
    mtc1    $at, $f12                  # $f12 = 180.00
    addiu   t2, $zero, 0x071C          # t2 = 0000071C
    sw      t8, 0x0094(s0)             # 00000094
    lw      t7, 0x0004(v0)             # FFFFFFF0
    addiu   t3, $zero, 0x071C          # t3 = 0000071C
    mtc1    $zero, $f2                 # $f2 = 0.00
    sw      t7, 0x0098(s0)             # 00000098
    lw      t8, 0x0008(v0)             # FFFFFFF4
    addiu   a1, s0, 0x0050             # a1 = 00000050
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      t8, 0x009C(s0)             # 0000009C
    lw      t7, 0x000C(v0)             # FFFFFFF8
    addiu   a0, s0, 0x0074             # a0 = 00000074
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFE4
    sw      t7, 0x00A0(s0)             # 000000A0
    lw      t8, 0x0010(v0)             # FFFFFFFC
    sw      t8, 0x00A4(s0)             # 000000A4
    swc1    $f12, 0x004C($sp)
    swc1    $f12, 0x00DC(s0)           # 000000DC
    lh      t9, 0x0062($sp)
    sh      t9, 0x0136(s0)             # 00000136
    lh      t0, 0x0136(s0)             # 00000136
    sh      t2, 0x0050($sp)
    addiu   t1, t0, 0x8001             # t1 = FFFF8001
    sh      t1, 0x0052($sp)
    sh      t3, 0x0134(s0)             # 00000134
    lwl     t5, 0x0134(s0)             # 00000134
    lwr     t5, 0x0137(s0)             # 00000137
    sh      $zero, 0x0138(s0)          # 00000138
    sh      $zero, 0x013E(s0)          # 0000013E
    swl     t5, 0x013A(s0)             # 0000013A
    swc1    $f2, 0x00D8(s0)            # 000000D8
    swc1    $f2, 0x00F4(s0)            # 000000F4
    swr     t5, 0x013D(s0)             # 0000013D
    lw      t7, 0x0000(v0)             # FFFFFFEC
    sw      t7, 0x0000(a1)             # 00000050
    lw      t6, 0x0004(v0)             # FFFFFFF0
    sw      t6, 0x0004(a1)             # 00000054
    lw      t7, 0x0008(v0)             # FFFFFFF4
    sw      t7, 0x0008(a1)             # 00000058
    lwc1    $f4, 0x0054(s0)            # 00000054
    swc1    $f0, 0x00E8(s0)            # 000000E8
    swc1    $f14, 0x00E4(s0)           # 000000E4
    add.s   $f6, $f4, $f0
    swc1    $f14, 0x00EC(s0)           # 000000EC
    swc1    $f6, 0x0054(s0)            # 00000054
    sw      a1, 0x0024($sp)
    jal     func_800359A8
    sw      a0, 0x0020($sp)
    lw      t8, 0x0020($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t0, 0x0000(t8)             # 00000000
    mtc1    $at, $f8                   # $f8 = 1.00
    or      a0, s0, $zero              # a0 = 00000000
    sw      t0, 0x005C(s0)             # 0000005C
    lw      t9, 0x0004(t8)             # 00000004
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFD4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE0
    sw      t9, 0x0060(s0)             # 00000060
    lw      t0, 0x0008(t8)             # 00000008
    sh      $zero, 0x015A(s0)          # 0000015A
    swc1    $f2, 0x0070(s0)            # 00000070
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f8, 0x006C(s0)            # 0000006C
    sw      t0, 0x0064(s0)             # 00000064
    jal     func_800361C8
    lw      a2, 0x0024($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f10                  # $f10 = -32000.00
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lw      t1, 0x0048($sp)
    c.eq.s  $f0, $f10
    ori     t6, $zero, 0xB200          # t6 = 0000B200
    lui     $at, 0x800F                # $at = 800F0000
    bc1t    lbl_80047DAC
    nop
    sh      t1, 0x0146(s0)             # 00000146
lbl_80047DAC:
    sw      v0, 0x0118(s0)             # 00000118
    sw      v0, 0x011C(s0)             # 0000011C
    lh      t2, 0x014C(s0)             # 0000014C
    lw      t4, 0x008C(s0)             # 0000008C
    ori     t3, t2, 0x0004             # t3 = 00000004
    addiu   t5, t4, 0x01E0             # t5 = 000001E0
    bne     s0, t5, lbl_80047DD8
    sh      t3, 0x014C(s0)             # 0000014C
    lui     $at, 0x800F                # $at = 800F0000
    b       lbl_80047DDC
    sw      t6, -0x0E58($at)           # 800EF1A8
lbl_80047DD8:
    sw      $zero, -0x0E58($at)        # 800EF1A8
lbl_80047DDC:
    jal     func_80047AD8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    sh      $zero, 0x014A(s0)          # 0000014A
    sh      $zero, 0x015C(s0)          # 0000015C
    sh      v0, 0x0156(s0)             # 00000156
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0144(s0)             # 00000144
    jal     func_80036E30
    swc1    $f16, 0x0100(s0)           # 00000100
    lh      t7, 0x0164(s0)             # 00000164
    bnel    t7, $zero, lbl_80047E24
    lw      $ra, 0x001C($sp)
    jal     func_80047E50
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80047E24:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80047E34:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sh      a1, 0x0140(a0)             # 00000140
    lh      v0, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_80047E50:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v1, 0x014C(s0)             # 0000014C
    lw      v0, 0x0090(s0)             # 00000090
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80047E98
    nop
    lh      t7, 0x0142(s0)             # 00000142
    lui     t9, 0x800F                 # t9 = 800F0000
    andi    t1, v1, 0x0200             # t1 = 00000000
    sll     t8, t7,  3
    addu    t9, t9, t8
    lw      t9, -0x1190(t9)            # 800EEE70
    sll     t0, t9,  1
    bgez    t0, lbl_80047EA0
    nop
lbl_80047E98:
    b       lbl_80048258
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80047EA0:
    beql    t1, $zero, lbl_80047F08
    srl     t9, v1, 15
    lw      t2, 0x0670(v0)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0024          # a1 = 00000024
    andi    t3, t2, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80047EE0
    srl     t6, v1, 15
    jal     func_800493C8
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lh      t4, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    or      t5, t4, $at                # t5 = FFFF8000
    sh      t5, 0x014C(s0)             # 0000014C
    b       lbl_80047F04
    lh      v1, 0x014C(s0)             # 0000014C
lbl_80047EE0:
    beq     t6, $zero, lbl_80047F04
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x011E(s0)             # 0000011E
    jal     func_800493C8
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lh      t7, 0x014C(s0)             # 0000014C
    andi    t8, t7, 0x7FFF             # t8 = 00000000
    sh      t8, 0x014C(s0)             # 0000014C
    lh      v1, 0x014C(s0)             # 0000014C
lbl_80047F04:
    srl     t9, v1, 15
lbl_80047F08:
    bne     t9, $zero, lbl_8004809C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80036660
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFFC
    sll     v1, v0, 16
    sra     v1, v1, 16
    sll     a1, v0, 16
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     v1, $at, lbl_80047FBC
    sra     a1, a1, 16
    lh      v1, 0x014C(s0)             # 0000014C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    andi    t0, v1, 0x0200             # t0 = 00000000
    bne     t0, $zero, lbl_80047F60
    ori     t1, v1, 0x0200             # t1 = 00000200
    sh      t1, 0x014C(s0)             # 0000014C
    lwc1    $f4, 0x004C($sp)
    lh      t2, 0x0148(s0)             # 00000148
    sh      t3, 0x0120(s0)             # 00000120
    swc1    $f4, 0x0114(s0)            # 00000114
    sw      t2, 0x0118(s0)             # 00000118
lbl_80047F60:
    lwc1    $f6, 0x0098(s0)            # 00000098
    lwc1    $f8, 0x0104(s0)            # 00000104
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    c.eq.s  $f6, $f8
    nop
    bc1tl   lbl_800480A0
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x0146(s0)             # 00000146
    addiu   t6, s0, 0x011C             # t6 = 0000011C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sh      t4, 0x0032($sp)
    sh      t5, 0x0146(s0)             # 00000146
    jal     func_800493C8
    sw      t6, 0x002C($sp)
    lh      t7, 0x0142(s0)             # 00000142
    lw      t8, 0x002C($sp)
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
    sw      t7, 0x0000(t8)             # 00000000
    lh      t9, 0x0032($sp)
    sh      t0, 0x0148(s0)             # 00000148
    b       lbl_8004809C
    sh      t9, 0x0146(s0)             # 00000146
lbl_80047FBC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    v1, $at, lbl_80048048
    lh      v1, 0x014C(s0)             # 0000014C
    lh      v1, 0x014C(s0)             # 0000014C
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    andi    t1, v1, 0x0200             # t1 = 00000000
    bne     t1, $zero, lbl_80047FF8
    ori     t2, v1, 0x0200             # t2 = 00000200
    sh      t2, 0x014C(s0)             # 0000014C
    lwc1    $f10, 0x004C($sp)
    lh      t3, 0x0148(s0)             # 00000148
    sh      t4, 0x0120(s0)             # 00000120
    swc1    $f10, 0x0114(s0)           # 00000114
    sw      t3, 0x0118(s0)             # 00000118
lbl_80047FF8:
    lwc1    $f16, 0x0098(s0)           # 00000098
    lwc1    $f18, 0x0104(s0)           # 00000104
    c.eq.s  $f16, $f18
    nop
    bc1tl   lbl_800480A0
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x0146(s0)             # 00000146
    addiu   t7, s0, 0x011C             # t7 = 0000011C
    or      a0, s0, $zero              # a0 = 00000000
    sh      t5, 0x0032($sp)
    sh      t6, 0x0146(s0)             # 00000146
    jal     func_800495E8
    sw      t7, 0x002C($sp)
    lh      t8, 0x0142(s0)             # 00000142
    lw      t9, 0x002C($sp)
    sw      t8, 0x0000(t9)             # 00000000
    lh      t0, 0x0032($sp)
    b       lbl_8004809C
    sh      t0, 0x0146(s0)             # 00000146
    lh      v1, 0x014C(s0)             # 0000014C
lbl_80048048:
    andi    t1, v1, 0x0200             # t1 = 00000000
    beql    t1, $zero, lbl_800480A0
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x0146(s0)             # 00000146
    andi    t2, v1, 0xFDFF             # t2 = 00000000
    sh      t2, 0x014C(s0)             # 0000014C
    sh      t3, 0x0032($sp)
    lw      a1, 0x0118(s0)             # 00000118
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sh      t4, 0x0146(s0)             # 00000146
    bgez    a1, lbl_8004808C
    nop
    jal     func_80047AD8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    b       lbl_80048094
    sh      t5, 0x0148(s0)             # 00000148
lbl_8004808C:
    jal     func_800495E8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80048094:
    lh      t6, 0x0032($sp)
    sh      t6, 0x0146(s0)             # 00000146
lbl_8004809C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_800480A0:
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_80036740
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFF4
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    swc1    $f0, 0x004C($sp)
    c.eq.s  $f0, $f4
    nop
    bc1tl   lbl_80048210
    lh      v1, 0x014C(s0)             # 0000014C
    lh      v1, 0x014C(s0)             # 0000014C
    swc1    $f0, 0x0114(s0)            # 00000114
    addiu   t7, s0, 0x0120             # t7 = 00000120
    andi    t8, v1, 0x0100             # t8 = 00000000
    bne     t8, $zero, lbl_800480FC
    sw      t7, 0x002C($sp)
    ori     t9, v1, 0x0100             # t9 = 00000100
    sh      t9, 0x014C(s0)             # 0000014C
    lw      a1, 0x0044($sp)
    jal     func_8005D2B4
    lw      a0, 0x008C(s0)             # 0000008C
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    sh      t0, 0x0150(s0)             # 00000150
lbl_800480FC:
    jal     func_800C7548
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x4600(t1)            # 8011BA00
    lw      t3, 0x002C($sp)
    lh      t2, 0x02F6(t1)             # 801202F6
    beql    t2, $zero, lbl_80048140
    lw      t7, 0x002C($sp)
    jal     func_8007D880
    lh      a0, 0x0000(t3)             # 00000000
    lw      t5, 0x002C($sp)
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    lui     t6, 0x8012                 # t6 = 80120000
    sh      t4, 0x0000(t5)             # 00000000
    lw      t6, -0x4600(t6)            # 8011BA00
    sh      $zero, 0x02F6(t6)          # 801202F6
    lw      t7, 0x002C($sp)
lbl_80048140:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lh      a0, 0x0000(t7)             # 00000000
    beql    a0, $at, lbl_80048164
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007D700
    nop
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_800481B4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80048164:
    jal     func_8007D85C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      t8, 0x002C($sp)
    beq     v0, $zero, lbl_800481B4
    sh      v0, 0x0000(t8)             # 00000000
    lw      t9, 0x002C($sp)
    addiu   a1, $zero, 0x0226          # a1 = 00000226
    jal     func_8007D668
    lh      a0, 0x0000(t9)             # 00000000
    lw      t0, 0x002C($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a0, 0x0000(t0)             # 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    addiu   a3, $zero, 0x00B4          # a3 = 000000B4
    lw      t1, 0x002C($sp)
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    jal     func_8007D6B0
    lh      a0, 0x0000(t1)             # 00000000
lbl_800481B4:
    lh      v0, 0x0150(s0)             # 00000150
    blezl   v0, lbl_800481DC
    lw      t5, 0x008C(s0)             # 0000008C
    lh      t3, 0x0152(s0)             # 00000152
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0150(s0)             # 00000150
    ori     t4, t3, 0x0008             # t4 = 00000008
    b       lbl_80048258
    sh      t4, 0x0152(s0)             # 00000152
    lw      t5, 0x008C(s0)             # 0000008C
lbl_800481DC:
    addiu   $at, $zero, 0x0049         # $at = 00000049
    lh      t6, 0x00A4(t5)             # 000000A4
    bnel    t6, $at, lbl_80048200
    lh      t9, 0x0152(s0)             # 00000152
    lh      t7, 0x0152(s0)             # 00000152
    ori     t8, t7, 0x0010             # t8 = 00000010
    b       lbl_80048258
    sh      t8, 0x0152(s0)             # 00000152
    lh      t9, 0x0152(s0)             # 00000152
lbl_80048200:
    ori     t0, t9, 0x0002             # t0 = 00000002
    b       lbl_80048258
    sh      t0, 0x0152(s0)             # 00000152
    lh      v1, 0x014C(s0)             # 0000014C
lbl_80048210:
    addiu   t3, s0, 0x0120             # t3 = 00000120
    andi    t1, v1, 0x0100             # t1 = 00000000
    beq     t1, $zero, lbl_80048250
    andi    t2, v1, 0xFEFF             # t2 = 00000000
    sh      t2, 0x014C(s0)             # 0000014C
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_8005D32C
    sw      t3, 0x002C($sp)
    lw      t4, 0x002C($sp)
    lh      a0, 0x0000(t4)             # 00000000
    beql    a0, $zero, lbl_8004824C
    sh      $zero, 0x0150(s0)          # 00000150
    jal     func_8007D880
    nop
    sh      $zero, 0x0150(s0)          # 00000150
lbl_8004824C:
    sh      $zero, 0x0152(s0)          # 00000152
lbl_80048250:
    jal     func_800C7548
    or      a0, $zero, $zero           # a0 = 00000000
lbl_80048258:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8004826C:
    lh      t6, 0x0152(a0)             # 00000152
    lw      t8, 0x008C(a0)             # 0000008C
    lui     t9, 0x0001                 # t9 = 00010000
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sh      t7, 0x0152(a0)             # 00000152
    addu    t9, t9, t8
    lbu     t9, 0x1CBE(t9)             # 00011CBE
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t9, $at, lbl_800482A4
    nop
    lh      t0, 0x0152(a0)             # 00000152
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0152(a0)             # 00000152
lbl_800482A4:
    jr      $ra
    nop


func_800482AC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    lh      v0, 0x0152(s0)             # 00000152
    beq     v0, $zero, lbl_800485D0
    andi    t6, v0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80048334
    andi    t8, v0, 0x0008             # t8 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x7114($at)          # 80107114
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f2                   # $f2 = 170.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7118($at)           # 80107118
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x711C($at)           # 8010711C
    swc1    $f16, 0x003C($sp)
    swc1    $f4, 0x0040($sp)
    swc1    $f6, 0x0038($sp)
    swc1    $f8, 0x0034($sp)
    lh      t7, 0x0150(s0)             # 00000150
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    cvt.s.w $f4, $f10
    mtc1    $zero, $f0                 # $f0 = 0.00
    swc1    $f8, 0x0060($sp)
    b       lbl_80048480
    div.s   $f20, $f4, $f6
lbl_80048334:
    beq     t8, $zero, lbl_8004839C
    andi    t0, v0, 0x0002             # t0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x7120($at)          # 80107120
    lui     $at, 0x4378                # $at = 43780000
    mtc1    $at, $f0                   # $f0 = 248.00
    lui     $at, 0xC2B4                # $at = C2B40000
    mtc1    $at, $f2                   # $f2 = -90.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7124($at)          # 80107124
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7128($at)           # 80107128
    swc1    $f12, 0x0038($sp)
    swc1    $f12, 0x0034($sp)
    swc1    $f10, 0x0040($sp)
    swc1    $f4, 0x003C($sp)
    lh      t9, 0x0150(s0)             # 00000150
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    cvt.s.w $f8, $f6
    swc1    $f4, 0x0060($sp)
    b       lbl_80048480
    div.s   $f20, $f8, $f10
lbl_8004839C:
    beq     t0, $zero, lbl_80048438
    andi    t1, v0, 0x0001             # t1 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f14, 0x712C($at)          # 8010712C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x7130($at)          # 80107130
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x7134($at)           # 80107134
    lui     $at, 0xC194                # $at = C1940000
    mtc1    $at, $f2                   # $f2 = -18.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7138($at)           # 80107138
    swc1    $f14, 0x0040($sp)
    swc1    $f14, 0x003C($sp)
    swc1    $f16, 0x0038($sp)
    swc1    $f6, 0x0034($sp)
    lwc1    $f10, 0x0060(s0)           # 00000060
    lwc1    $f8, 0x0114(s0)            # 00000114
    lui     $at, 0x3F80                # $at = 3F800000
    sub.s   $f12, $f8, $f10
    c.lt.s  $f18, $f12
    nop
    bc1fl   lbl_80048414
    div.s   $f14, $f12, $f18
    mtc1    $at, $f14                  # $f14 = 1.00
    b       lbl_80048414
    nop
    div.s   $f14, $f12, $f18
lbl_80048414:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x713C($at)          # 8010713C
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    mul.s   $f4, $f14, $f12
    nop
    mul.s   $f8, $f6, $f12
    add.s   $f20, $f4, $f8
    b       lbl_80048480
    swc1    $f20, 0x0060($sp)
lbl_80048438:
    beq     t1, $zero, lbl_800485F8
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x7140($at)          # 80107140
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f2                   # $f2 = 150.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7144($at)          # 80107144
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7148($at)           # 80107148
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f20                  # $f20 = 1.00
    swc1    $f16, 0x003C($sp)
    swc1    $f16, 0x0038($sp)
    swc1    $f10, 0x0040($sp)
    swc1    $f6, 0x0034($sp)
    swc1    $f4, 0x0060($sp)
lbl_80048480:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x714C($at)          # 8010714C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f14                  # $f14 = 0.50
    mul.s   $f8, $f0, $f12
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     t6, 0x800F                 # t6 = 800F0000
    mul.s   $f4, $f2, $f12
    lh      a0, -0x095C(a0)            # 800EF6A4
    lh      t6, -0x0958(t6)            # 800EF6A8
    lui     $at, 0x800F                # $at = 800F0000
    add.s   $f10, $f8, $f14
    add.s   $f8, $f4, $f14
    trunc.w.s $f6, $f10
    trunc.w.s $f10, $f8
    mfc1    t5, $f6
    mfc1    t0, $f10
    addu    a0, a0, t5
    sll     a0, a0, 16
    addu    t1, t6, t0
    sh      t1, -0x0958($at)           # 800EF6A8
    sra     a0, a0, 16
    lui     $at, 0x800F                # $at = 800F0000
    jal     func_80063684              # coss?
    sh      a0, -0x095C($at)           # 800EF6A4
    lui     a0, 0x800F                 # a0 = 800F0000
    jal     func_800636C4              # sins?
    lh      a0, -0x095C(a0)            # 800EF6A4
    lui     a0, 0x800F                 # a0 = 800F0000
    jal     func_800636C4              # sins?
    lh      a0, -0x0958(a0)            # 800EF6A8
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      a0, 0x008C(s0)             # 0000008C
    mfc1    a1, $f2
    mfc1    a2, $f2
    mfc1    a3, $f2
    jal     func_80091C94
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    lui     a0, 0x800F                 # a0 = 800F0000
    jal     func_800636C4              # sins?
    lh      a0, -0x0958(a0)            # 800EF6A8
    lui     a0, 0x800F                 # a0 = 800F0000
    lh      a0, -0x0958(a0)            # 800EF6A8
    jal     func_80063684              # coss?
    swc1    $f0, 0x0028($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    lh      a0, -0x095C(a0)            # 800EF6A4
    jal     func_80063684              # coss?
    swc1    $f0, 0x002C($sp)
    lwc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0028($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f4, $f20
    mtc1    $at, $f2                   # $f2 = 1.00
    lw      a0, 0x008C(s0)             # 0000008C
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    mul.s   $f10, $f6, $f8
    lwc1    $f8, 0x003C($sp)
    lwc1    $f6, 0x002C($sp)
    add.s   $f4, $f10, $f2
    mul.s   $f10, $f8, $f20
    mfc1    a1, $f4
    mul.s   $f4, $f6, $f10
    lwc1    $f6, 0x0038($sp)
    mul.s   $f10, $f6, $f20
    add.s   $f8, $f4, $f2
    mul.s   $f4, $f0, $f10
    mfc1    a2, $f8
    add.s   $f8, $f4, $f2
    mfc1    a3, $f8
    jal     func_80091CB8
    nop
    lwc1    $f6, 0x0034($sp)
    lwc1    $f10, 0x0060($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    mul.s   $f4, $f6, $f10
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    mfc1    a1, $f4
    jal     func_80091CDC
    nop
    lh      t2, 0x014C(s0)             # 0000014C
    ori     t3, t2, 0x0040             # t3 = 00000040
    b       lbl_800485F8
    sh      t3, 0x014C(s0)             # 0000014C
lbl_800485D0:
    lh      t4, 0x014C(s0)             # 0000014C
    andi    t5, t4, 0x0040             # t5 = 00000000
    beql    t5, $zero, lbl_800485FC
    lw      $ra, 0x0024($sp)
    lw      a0, 0x008C(s0)             # 0000008C
    jal     func_80091D54
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    lh      t7, 0x014C(s0)             # 0000014C
    andi    t8, t7, 0xFFBF             # t8 = 00000000
    sh      t8, 0x014C(s0)             # 0000014C
lbl_800485F8:
    lw      $ra, 0x0024($sp)
lbl_800485FC:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8004860C:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x00C0($sp)
    lw      t6, 0x008C(s0)             # 0000008C
    lw      t0, 0x00C0($sp)
    lui     $at, 0x800F                # $at = 800F0000
    lw      t7, 0x0790(t6)             # 00000790
    lw      t8, 0x0090(t7)             # 00000090
    sw      t8, 0x0038($sp)
    lh      t9, 0x0140(s0)             # 00000140
    bne     t9, $zero, lbl_80048664
    nop
    lwl     t2, 0x0134(s0)             # 00000134
    lwr     t2, 0x0137(s0)             # 00000137
    swl     t2, 0x0000(t0)             # 00000000
    swr     t2, 0x0003(t0)             # 00000003
    lhu     t2, 0x0138(s0)             # 00000138
    sh      t2, 0x0004(t0)             # 00000004
    b       lbl_80048E28
    lw      v0, 0x00C0($sp)
lbl_80048664:
    sw      $zero, -0x0E10($at)        # 800EF1F0
    lw      a1, 0x0090(s0)             # 00000090
    beql    a1, $zero, lbl_80048998
    lh      t1, 0x0140(s0)             # 00000140
    jal     func_800226D8
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFA0
    addiu   a1, s0, 0x0094             # a1 = 00000094
    sw      a1, 0x0030($sp)
    jal     func_80067620
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFA0
    swc1    $f0, 0x0080($sp)
    swc1    $f0, 0x00D8(s0)            # 000000D8
    jal     func_80021660
    lw      a0, 0x0090(s0)             # 00000090
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f4, 0x0080($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f0, $f6
    mtc1    $at, $f14                  # $f14 = 1.00
    jal     func_800676A4
    div.s   $f12, $f4, $f8
    swc1    $f0, 0x00E0(s0)            # 000000E0
    lwc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x0094(s0)           # 00000094
    lwc1    $f4, 0x0098(s0)            # 00000098
    addiu   t4, $sp, 0x0060            # t4 = FFFFFFA0
    sub.s   $f18, $f10, $f16
    lwc1    $f16, 0x009C(s0)           # 0000009C
    addiu   t3, $sp, 0x008C            # t3 = FFFFFFCC
    swc1    $f18, 0x00F0(s0)           # 000000F0
    lwc1    $f6, 0x0064($sp)
    sub.s   $f8, $f6, $f4
    swc1    $f8, 0x00F4(s0)            # 000000F4
    lwc1    $f10, 0x0068($sp)
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x00F8(s0)           # 000000F8
    lw      t6, 0x0000(t4)             # FFFFFFA0
    sw      t6, 0x0000(t3)             # FFFFFFCC
    lw      t5, 0x0004(t4)             # FFFFFFA4
    sw      t5, 0x0004(t3)             # FFFFFFD0
    lw      t6, 0x0008(t4)             # FFFFFFA8
    sw      t6, 0x0008(t3)             # FFFFFFD4
    jal     func_80021600
    lw      a0, 0x0090(s0)             # 00000090
    lwc1    $f6, 0x0090($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t8, $sp, 0x008C            # t8 = FFFFFFCC
    add.s   $f4, $f6, $f0
    addiu   a2, a2, 0x8E1C             # a2 = 80118E1C
    addiu   a3, $sp, 0x0088            # a3 = FFFFFFC8
    swc1    $f4, 0x0090($sp)
    lw      t7, 0x0090(s0)             # 00000090
    lw      a0, 0x008C(s0)             # 0000008C
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    jal     func_8002F520
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x8E1C             # v1 = 80118E1C
    c.eq.s  $f0, $f8
    swc1    $f0, 0x0084($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    bc1tl   lbl_800487E8
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t9, 0x0000(v1)             # 80118E1C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x7150($at)           # 80107150
    lh      t0, 0x0008(t9)             # 00000008
    lui     $at, 0x800F                # $at = 800F0000
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f2
    swc1    $f18, 0x0108(s0)           # 00000108
    lw      t1, 0x0000(v1)             # 80118E1C
    lh      t2, 0x000A(t1)             # 0000000A
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6
    mul.s   $f8, $f4, $f2
    swc1    $f8, 0x010C(s0)            # 0000010C
    lw      t3, 0x0000(v1)             # 80118E1C
    lh      t4, 0x000C(t3)             # 0000000C
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f2
    swc1    $f18, 0x0110(s0)           # 00000110
    lw      t5, 0x0088($sp)
    swc1    $f0, 0x0104(s0)            # 00000104
    sh      t5, 0x0146(s0)             # 00000146
    b       lbl_8004880C
    sw      $zero, -0x0954($at)        # 800EF6AC
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_800487E8:
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     t6, 0x800F                 # t6 = 800F0000
    swc1    $f0, 0x0108(s0)            # 00000108
    swc1    $f0, 0x0110(s0)            # 00000110
    swc1    $f6, 0x010C(s0)            # 0000010C
    lw      t6, -0x0954(t6)            # 800EF6AC
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t7, t6, 0x0001             # t7 = 800F0001
    sw      t7, -0x0954($at)           # 800EF6AC
lbl_8004880C:
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFA0
    lw      t1, 0x0000(t9)             # FFFFFFA0
    lw      t8, 0x0030($sp)
    lui     t2, 0x800F                 # t2 = 800F0000
    sw      t1, 0x0000(t8)             # 00000000
    lw      t0, 0x0004(t9)             # FFFFFFA4
    sw      t0, 0x0004(t8)             # 00000004
    lw      t1, 0x0008(t9)             # FFFFFFA8
    sw      t1, 0x0008(t8)             # 00000008
    lw      t0, 0x000C(t9)             # FFFFFFAC
    sw      t0, 0x000C(t8)             # 0000000C
    lw      t1, 0x0010(t9)             # FFFFFFB0
    sw      t1, 0x0010(t8)             # 00000010
    lw      t2, -0x0954(t2)            # 800EF6AC
    slti    $at, t2, 0x00C8
    beql    $at, $zero, lbl_80048998
    lh      t1, 0x0140(s0)             # 00000140
    lh      t3, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    t3, $at, lbl_8004887C
    lh      v0, 0x014C(s0)             # 0000014C
    jal     func_80047E50
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004826C
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x8E1C             # v1 = 80118E1C
    lh      v0, 0x014C(s0)             # 0000014C
lbl_8004887C:
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    andi    t4, v0, 0x0004             # t4 = 00000000
    bnel    t4, $zero, lbl_80048898
    andi    t6, v0, 0x0001             # t6 = 00000000
    sh      t5, 0x0156(s0)             # 00000156
    lh      v0, 0x014C(s0)             # 0000014C
    andi    t6, v0, 0x0001             # t6 = 00000000
lbl_80048898:
    beq     t6, $zero, lbl_80048924
    andi    t7, v0, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80048924
    andi    t8, v0, 0x0400             # t8 = 00000000
    bne     t8, $zero, lbl_80048924
    andi    t9, v0, 0x0200             # t9 = 00000000
    beq     t9, $zero, lbl_800488C4
    lw      t0, 0x0038($sp)
    lb      t1, 0x013F(t0)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t1, $at, lbl_80048924
lbl_800488C4:
    srl     t2, v0, 15
    bne     t2, $zero, lbl_80048924
    lwc1    $f4, 0x0084($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFC8
    c.eq.s  $f4, $f8
    nop
    bc1tl   lbl_80048928
    lh      a1, 0x0156(s0)             # 00000156
    jal     func_80036530
    lw      a2, 0x0000(v1)             # 80118E1C
    sll     v1, v0, 16
    sra     v1, v1, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v1, $at, lbl_80048924
    lw      t3, 0x0088($sp)
    sh      t3, 0x0158(s0)             # 00000158
    lw      t4, 0x0088($sp)
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t4, $at, lbl_80048928
    lh      a1, 0x0156(s0)             # 00000156
    sh      v1, 0x0156(s0)             # 00000156
lbl_80048924:
    lh      a1, 0x0156(s0)             # 00000156
lbl_80048928:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lwc1    $f10, 0x0064($sp)
    beq     a1, $at, lbl_80048994
    lwc1    $f16, 0x0084($sp)
    sub.s   $f0, $f10, $f16
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80048998
    lh      t1, 0x0140(s0)             # 00000140
    lh      t5, 0x014C(s0)             # 0000014C
    lw      t7, 0x0038($sp)
    andi    t6, t5, 0x0200             # t6 = 00000000
    beql    t6, $zero, lbl_80048980
    lh      t9, 0x0158(s0)             # 00000158
    lb      t8, 0x013F(t7)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_80048998
    lh      t1, 0x0140(s0)             # 00000140
    lh      t9, 0x0158(s0)             # 00000158
lbl_80048980:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800495E8
    sh      t9, 0x0146(s0)             # 00000146
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sh      t0, 0x0156(s0)             # 00000156
lbl_80048994:
    lh      t1, 0x0140(s0)             # 00000140
lbl_80048998:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t2, 0x00C0($sp)
    bnel    t1, $at, lbl_800489CC
    lh      t5, 0x014C(s0)             # 0000014C
    lwl     t4, 0x0134(s0)             # 00000134
    lwr     t4, 0x0137(s0)             # 00000137
    swl     t4, 0x0000(t2)             # 00000000
    swr     t4, 0x0003(t2)             # 00000003
    lhu     t4, 0x0138(s0)             # 00000138
    sh      t4, 0x0004(t2)             # 00000004
    b       lbl_80048E28
    lw      v0, 0x00C0($sp)
    lh      t5, 0x014C(s0)             # 0000014C
lbl_800489CC:
    sh      $zero, 0x014A(s0)          # 0000014A
    lui     t9, 0x800F                 # t9 = 800F0000
    andi    t6, t5, 0xFBDF             # t6 = 00000000
    sh      t6, 0x014C(s0)             # 0000014C
    lh      t7, 0x014C(s0)             # 0000014C
    ori     t8, t7, 0x0010             # t8 = 00000010
    sh      t8, 0x014C(s0)             # 0000014C
    lw      t9, -0x0954(t9)            # 800EF6AC
    slti    $at, t9, 0x00C8
    beql    $at, $zero, lbl_80048A44
    lw      t8, 0x0090(s0)             # 00000090
    lh      t0, 0x0142(s0)             # 00000142
    lui     t2, 0x800F                 # t2 = 800F0000
    lh      t3, 0x0144(s0)             # 00000144
    sll     t1, t0,  3
    addu    t2, t2, t1
    lw      t2, -0x118C(t2)            # 800EEE74
    sll     t4, t3,  3
    lui     t9, 0x800F                 # t9 = 800F0000
    addu    t5, t2, t4
    lh      t6, 0x0000(t5)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, -0x0F80(t9)            # 800EF080
    jalr    $ra, t9
    nop
    b       lbl_80048A74
    lh      v0, 0x0140(s0)             # 00000140
    lw      t8, 0x0090(s0)             # 00000090
lbl_80048A44:
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFB8
    addiu   a1, s0, 0x0050             # a1 = 00000050
    beql    t8, $zero, lbl_80048A74
    lh      v0, 0x0140(s0)             # 00000140
    jal     func_80067A84
    addiu   a2, s0, 0x005C             # a2 = 0000005C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFB8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_80037258
    or      a3, $zero, $zero           # a3 = 00000000
    lh      v0, 0x0140(s0)             # 00000140
lbl_80048A74:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_80048B6C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x46D4(v0)            # 8011B92C
    lui     a1, 0x800F                 # a1 = 800F0000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $zero, lbl_80048AB8
    addiu   a1, a1, 0xF1F8             # a1 = 800EF1F8
    beq     v0, $at, lbl_80048AB8
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1A8             # v0 = 800EF1A8
    sw      $zero, 0x0000(v0)          # 800EF1A8
    jal     func_80036E40
    lh      a0, 0x0002(v0)             # 800EF1AA
    b       lbl_80048B68
    lh      v0, 0x0140(s0)             # 00000140
lbl_80048AB8:
    lw      v1, 0x0000(a1)             # 00000000
    beql    v1, $zero, lbl_80048AF8
    lw      v0, 0x008C(s0)             # 0000008C
    lh      t0, 0x0164(s0)             # 00000164
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1A8             # v0 = 800EF1A8
    bne     t0, $zero, lbl_80048AF4
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    addiu   t3, $zero, 0x3200          # t3 = 00003200
    sw      t3, 0x0000(v0)             # 800EF1A8
    sw      t1, 0x0000(a1)             # 00000000
    jal     func_80036E40
    lh      a0, 0x0002(v0)             # 800EF1AA
    b       lbl_80048B68
    lh      v0, 0x0140(s0)             # 00000140
lbl_80048AF4:
    lw      v0, 0x008C(s0)             # 0000008C
lbl_80048AF8:
    lui     t2, 0x0001                 # t2 = 00010000
    ori     t4, $zero, 0xF200          # t4 = 0000F200
    addu    t2, t2, v0
    lbu     t2, 0x241B(t2)             # 0001241B
    beql    t2, $zero, lbl_80048B30
    lbu     t5, 0x1D6C(v0)             # 00001D6C
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1A8             # v0 = 800EF1A8
    sw      t4, 0x0000(v0)             # 800EF1A8
    jal     func_80036E40
    lh      a0, 0x0002(v0)             # 800EF1AA
    b       lbl_80048B68
    lh      v0, 0x0140(s0)             # 00000140
    lbu     t5, 0x1D6C(v0)             # 00001D6C
lbl_80048B30:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1A8             # v0 = 800EF1A8
    beq     t5, $zero, lbl_80048B5C
    addiu   t6, $zero, 0x3200          # t6 = 00003200
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0xF1A8             # v0 = 800EF1A8
    sw      t6, 0x0000(v0)             # 800EF1A8
    jal     func_80036E40
    lh      a0, 0x0002(v0)             # 800EF1AA
    b       lbl_80048B68
    lh      v0, 0x0140(s0)             # 00000140
lbl_80048B5C:
    jal     func_80036E40
    lh      a0, 0x0002(v0)             # 00000002
    lh      v0, 0x0140(s0)             # 00000140
lbl_80048B68:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80048B6C:
    bne     v0, $at, lbl_80048B98
    or      a0, s0, $zero              # a0 = 00000000
    lwl     t8, 0x0134(s0)             # 00000134
    lw      t7, 0x00C0($sp)
    lwr     t8, 0x0137(s0)             # 00000137
    swl     t8, 0x0000(t7)             # 00000000
    swr     t8, 0x0003(t7)             # 00000003
    lhu     t8, 0x0138(s0)             # 00000138
    sh      t8, 0x0004(t7)             # 00000004
    b       lbl_80048E28
    lw      v0, 0x00C0($sp)
lbl_80048B98:
    jal     func_8007D8C8
    addiu   a1, $sp, 0x003C            # a1 = FFFFFF7C
    beq     v0, $zero, lbl_80048C84
    sw      v0, 0x0088($sp)
    lh      t0, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x0038         # $at = 00000038
    lwc1    $f4, 0x003C($sp)
    beql    t0, $at, lbl_80048C88
    lw      t9, 0x0050(s0)             # 00000050
    lwc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f16, 0x0040($sp)
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFB8
    add.s   $f8, $f6, $f4
    lwc1    $f4, 0x0044($sp)
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE8
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFF4
    swc1    $f8, 0x00B4($sp)
    lwc1    $f10, 0x0054(s0)           # 00000054
    add.s   $f18, $f10, $f16
    lwc1    $f16, 0x0048($sp)
    swc1    $f18, 0x00B8($sp)
    lwc1    $f6, 0x0058(s0)            # 00000058
    add.s   $f8, $f6, $f4
    lwc1    $f4, 0x004C($sp)
    swc1    $f8, 0x00BC($sp)
    lwc1    $f10, 0x005C(s0)           # 0000005C
    add.s   $f18, $f10, $f16
    lwc1    $f16, 0x0050($sp)
    swc1    $f18, 0x00A8($sp)
    lwc1    $f6, 0x0060(s0)            # 00000060
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x00AC($sp)
    lwc1    $f10, 0x0064(s0)           # 00000064
    add.s   $f18, $f10, $f16
    jal     func_80067A84
    swc1    $f18, 0x00B0($sp)
    lh      t1, 0x007C($sp)
    lh      t3, 0x0054($sp)
    lh      t2, 0x007E($sp)
    lh      t4, 0x0056($sp)
    addu    a1, t1, t3
    sll     a1, a1, 16
    addu    a2, t2, t4
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFDC
    jal     func_80036B9C
    lh      a3, 0x015A(s0)             # 0000015A
    lh      t5, 0x0058($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7154($at)           # 80107154
    mtc1    t5, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x00FC(s0)           # 000000FC
    cvt.s.w $f4, $f6
    mul.s   $f10, $f4, $f8
    add.s   $f18, $f16, $f10
    b       lbl_80048CE8
    swc1    $f18, 0x0098($sp)
lbl_80048C84:
    lw      t9, 0x0050(s0)             # 00000050
lbl_80048C88:
    addiu   t6, $sp, 0x00B4            # t6 = FFFFFFF4
    addiu   t8, $sp, 0x00A8            # t8 = FFFFFFE8
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t7, 0x0054(s0)             # 00000054
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFB8
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE8
    sw      t7, 0x0004(t6)             # FFFFFFF8
    lw      t9, 0x0058(s0)             # 00000058
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t1, 0x005C(s0)             # 0000005C
    sw      t1, 0x0000(t8)             # FFFFFFE8
    lw      t0, 0x0060(s0)             # 00000060
    sw      t0, 0x0004(t8)             # FFFFFFEC
    lw      t1, 0x0064(s0)             # 00000064
    jal     func_80067A84
    sw      t1, 0x0008(t8)             # FFFFFFF0
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFDC
    lh      a1, 0x007C($sp)
    lh      a2, 0x007E($sp)
    jal     func_80036B9C
    lh      a3, 0x015A(s0)             # 0000015A
    lwc1    $f6, 0x00FC(s0)            # 000000FC
    swc1    $f6, 0x0098($sp)
lbl_80048CE8:
    lh      v0, 0x015C(s0)             # 0000015C
    addiu   t7, $sp, 0x009C            # t7 = FFFFFFDC
    addiu   t0, $sp, 0x0048            # t0 = FFFFFF88
    andi    t3, v0, 0x0004             # t3 = 00000000
    beq     t3, $zero, lbl_80048D24
    andi    t2, v0, 0xFFFB             # t2 = 00000000
    lw      t6, 0x0068(s0)             # 00000068
    sh      t2, 0x015C(s0)             # 0000015C
    addiu   t4, $sp, 0x009C            # t4 = FFFFFFDC
    sw      t6, 0x0000(t4)             # FFFFFFDC
    lw      t5, 0x006C(s0)             # 0000006C
    sw      t5, 0x0004(t4)             # FFFFFFE0
    lw      t6, 0x0070(s0)             # 00000070
    b       lbl_80048D3C
    sw      t6, 0x0008(t4)             # FFFFFFE4
lbl_80048D24:
    lw      t8, 0x0000(t7)             # FFFFFFDC
    sw      t8, 0x0068(s0)             # 00000068
    lw      t9, 0x0004(t7)             # FFFFFFE0
    sw      t9, 0x006C(s0)             # 0000006C
    lw      t8, 0x0008(t7)             # FFFFFFE4
    sw      t8, 0x0070(s0)             # 00000070
lbl_80048D3C:
    lw      t3, 0x0000(t0)             # FFFFFF88
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0080(s0)             # 00000080
    lw      t1, 0x0004(t0)             # FFFFFF8C
    sw      t1, 0x0084(s0)             # 00000084
    lw      t3, 0x0008(t0)             # FFFFFF90
    jal     func_800482AC
    sw      t3, 0x0088(s0)             # 00000088
    lw      v0, 0x008C(s0)             # 0000008C
    addiu   $at, $zero, 0x0051         # $at = 00000051
    lh      t2, 0x00A4(v0)             # 000000A4
    addiu   a0, v0, 0x00B8             # a0 = 000000B8
    bne     t2, $at, lbl_80048DA4
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f8                   # $f8 = 59.00
    lwc1    $f4, 0x00FC(s0)            # 000000FC
    lui     a1, 0x3F4A                 # a1 = 3F4A0000
    ori     a1, a1, 0x3D71             # a1 = 3F4A3D71
    c.lt.s  $f4, $f8
    nop
    bc1f    lbl_80048DA4
    nop
    jal     func_80091A04
    addiu   a0, v0, 0x00B8             # a0 = 000000B8
    b       lbl_80048DB0
    lwc1    $f16, 0x0098($sp)
lbl_80048DA4:
    jal     func_80091A04
    lui     a1, 0x3F80                 # a1 = 3F800000
    lwc1    $f16, 0x0098($sp)
lbl_80048DB0:
    lw      t4, 0x008C(s0)             # 0000008C
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE8
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFFF4
    swc1    $f16, 0x00D0(t4)           # 000000D0
    lw      a0, 0x008C(s0)             # 0000008C
    addiu   a3, $sp, 0x009C            # a3 = FFFFFFDC
    jal     func_80091918
    addiu   a0, a0, 0x00B8             # a0 = 000000B8
    lh      t5, 0x007C($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    sh      t5, 0x013A(s0)             # 0000013A
    lh      t6, 0x007E($sp)
    sh      $zero, 0x013E(s0)          # 0000013E
    sh      t6, 0x013C(s0)             # 0000013C
    lw      t7, -0x0E10(t7)            # 800EF1F0
    lh      t9, 0x007C($sp)
    bnel    t7, $zero, lbl_80048E0C
    lwl     t3, 0x0134(s0)             # 00000134
    sh      t9, 0x0134(s0)             # 00000134
    lh      t8, 0x007E($sp)
    sh      $zero, 0x0138(s0)          # 00000138
    sh      t8, 0x0136(s0)             # 00000136
    lwl     t3, 0x0134(s0)             # 00000134
lbl_80048E0C:
    lw      t0, 0x00C0($sp)
    lwr     t3, 0x0137(s0)             # 00000137
    swl     t3, 0x0000(t0)             # 00000000
    swr     t3, 0x0003(t0)             # 00000003
    lhu     t3, 0x0138(s0)             # 00000138
    sh      t3, 0x0004(t0)             # 00000004
    lw      v0, 0x00C0($sp)
lbl_80048E28:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0
    jr      $ra
    nop


func_80048E3C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      s0, 0x008C(a3)             # 0000008C
    lh      t6, 0x0160(a3)             # 00000160
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      v0, 0x0790(s0)             # 00000790
    bne     t6, $zero, lbl_80048F94
    lw      s1, 0x1C44(s0)             # 00001C44
    lh      a1, 0x0162(a3)             # 00000162
    sw      a3, 0x0028($sp)
    sw      v0, 0x0024($sp)
    jal     func_8009D1AC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a3, 0x0028($sp)
    lw      v0, 0x0024($sp)
    lh      v1, 0x0162(a3)             # 00000162
    bnel    v1, $zero, lbl_80048EF0
    lh      t3, 0x014E(a3)             # 0000014E
    lh      t7, 0x0168(a3)             # 00000168
    lui     $at, 0xDFFF                # $at = DFFF0000
    ori     $at, $at, 0xFFFF           # $at = DFFFFFFF
    beql    t7, $zero, lbl_80048EF0
    lh      t3, 0x014E(a3)             # 0000014E
    lw      t8, 0x066C(s1)             # 0000066C
    lbu     t0, 0x0434(s1)             # 00000434
    sh      $zero, 0x0110(s1)          # 00000110
    and     t9, t8, $at
    beq     t0, $zero, lbl_80048EDC
    sw      t9, 0x066C(s1)             # 0000066C
    lw      a0, 0x008C(a3)             # 0000008C
    sw      a3, 0x0028($sp)
    sw      v0, 0x0024($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      v0, 0x0024($sp)
    lw      a3, 0x0028($sp)
lbl_80048EDC:
    lh      t1, 0x014C(v0)             # 0000014C
    ori     t2, t1, 0x0008             # t2 = 00000008
    sh      t2, 0x014C(v0)             # 0000014C
    lh      v1, 0x0162(a3)             # 00000162
    lh      t3, 0x014E(a3)             # 0000014E
lbl_80048EF0:
    lw      s0, 0x008C(a3)             # 0000008C
    lh      a0, 0x0164(a3)             # 00000164
    sll     t4, t3,  2
    addu    t5, s0, t4
    lw      v0, 0x0790(t5)             # 00000790
    lui     $at, 0x0001                # $at = 00010000
    lh      t6, 0x0162(v0)             # 00000162
    bnel    a0, t6, lbl_80048F28
    sll     t7, v1,  2
    sh      v1, 0x0162(v0)             # 00000162
    lh      a0, 0x0164(a3)             # 00000164
    lh      v1, 0x0162(a3)             # 00000162
    lw      s0, 0x008C(a3)             # 0000008C
    sll     t7, v1,  2
lbl_80048F28:
    addu    t8, s0, t7
    lw      v0, 0x0790(t8)             # 00000790
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    lh      t9, 0x014E(v0)             # 0000014E
    bnel    a0, t9, lbl_80048F60
    lh      t4, 0x0164(v0)             # 00000164
    lh      t0, 0x014E(a3)             # 0000014E
    sh      t0, 0x014E(v0)             # 0000014E
    lh      t1, 0x0162(a3)             # 00000162
    lw      s0, 0x008C(a3)             # 0000008C
    sll     t2, t1,  2
    addu    t3, s0, t2
    lw      v0, 0x0790(t3)             # 00000790
    lh      t4, 0x0164(v0)             # 00000164
lbl_80048F60:
    bnel    t4, $zero, lbl_80048F74
    sh      $zero, 0x0162(a3)          # 00000162
    sh      $zero, 0x015E(v0)          # 0000015E
    lw      s0, 0x008C(a3)             # 0000008C
    sh      $zero, 0x0162(a3)          # 00000162
lbl_80048F74:
    lh      t5, 0x0162(a3)             # 00000162
    sh      t6, 0x0160(a3)             # 00000160
    addu    $at, $at, s0
    sh      t5, 0x014E(a3)             # 0000014E
    sb      $zero, 0x0B05($at)         # 00010B05
    lh      a1, 0x0164(a3)             # 00000164
    jal     func_8009D21C
    lw      a0, 0x008C(a3)             # 0000008C
lbl_80048F94:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80048FA8:
    lh      t6, 0x014C(a0)             # 0000014C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t7, t6, 0x000C             # t7 = 0000000C
    sh      t7, 0x014C(a0)             # 0000014C
    lh      t8, 0x014C(a0)             # 0000014C
    andi    t9, t8, 0xEFF7             # t9 = 00000000
    sh      t9, 0x014C(a0)             # 0000014C
    jr      $ra
    nop


func_80048FCC:
# Camera Related
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x014C(a3)             # 0000014C
    lui     t2, 0x800F                 # t2 = 800F0000
    lui     $at, 0x3FFF                # $at = 3FFF0000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_8004901C
    lh      t0, 0x0142(a3)             # 00000142
    bnel    a2, $zero, lbl_8004901C
    lh      t0, 0x0142(a3)             # 00000142
    lh      t8, 0x014A(a3)             # 0000014A
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    ori     t9, t8, 0x0020             # t9 = 00000020
    b       lbl_80049320
    sh      t9, 0x014A(a3)             # 0000014A
    lh      t0, 0x0142(a3)             # 00000142
lbl_8004901C:
    lh      t4, 0x001E($sp)
    ori     $at, $at, 0xFFFF           # $at = 3FFFFFFF
    sll     t1, t0,  3
    addu    t2, t2, t1
    lw      t2, -0x1190(t2)            # 800EEE70
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sllv    t6, t5, t4
    and     t3, t2, $at
    and     t7, t3, t6
    bne     t7, $zero, lbl_800490B8
    lh      t5, 0x001E($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t4, $at, lbl_80049060
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80049060:
    lh      t8, 0x0144(a3)             # 00000144
    or      a0, a3, $zero              # a0 = 00000000
    beql    t8, $zero, lbl_8004909C
    lh      t9, 0x014A(a3)             # 0000014A
    sh      $zero, 0x0144(a3)          # 00000144
    lh      a1, 0x0144(a3)             # 00000144
    jal     func_80036E30
    sw      a3, 0x0018($sp)
    jal     func_80048FA8
    lw      a0, 0x0018($sp)
    lh      v0, 0x001E($sp)
    lui     $at, 0xC000                # $at = C0000000
    b       lbl_80049320
    or      v0, v0, $at                # v0 = C0000000
    lh      t9, 0x014A(a3)             # 0000014A
lbl_8004909C:
    or      v0, $zero, $zero           # v0 = 00000000
    ori     t0, t9, 0x0020             # t0 = 00000020
    sh      t0, 0x014A(a3)             # 0000014A
    lh      t1, 0x014A(a3)             # 0000014A
    ori     t2, t1, 0x0002             # t2 = 00000002
    b       lbl_80049320
    sh      t2, 0x014A(a3)             # 0000014A
lbl_800490B8:
    lh      t3, 0x0144(a3)             # 00000144
    bnel    t5, t3, lbl_800490F0
    lh      t9, 0x014A(a3)             # 0000014A
    bnel    a2, $zero, lbl_800490F0
    lh      t9, 0x014A(a3)             # 0000014A
    lh      t6, 0x014A(a3)             # 0000014A
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    ori     t7, t6, 0x0020             # t7 = 00000020
    sh      t7, 0x014A(a3)             # 0000014A
    lh      t4, 0x014A(a3)             # 0000014A
    ori     t8, t4, 0x0002             # t8 = 00000002
    b       lbl_80049320
    sh      t8, 0x014A(a3)             # 0000014A
    lh      t9, 0x014A(a3)             # 0000014A
lbl_800490F0:
    or      a0, a3, $zero              # a0 = 00000000
    ori     t0, t9, 0x0020             # t0 = 00000020
    sh      t0, 0x014A(a3)             # 0000014A
    lh      t1, 0x014A(a3)             # 0000014A
    ori     t2, t1, 0x0002             # t2 = 00000002
    sh      t2, 0x014A(a3)             # 0000014A
    sw      a3, 0x0018($sp)
    jal     func_80036E30
    lh      a1, 0x001E($sp)
    lh      t5, 0x001E($sp)
    lw      a3, 0x0018($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t3, t5, 0xFFFF             # t3 = FFFFFFFF
    sltiu   $at, t3, 0x0013
    beq     $at, $zero, lbl_8004917C
    sll     t3, t3,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t3
    lw      t3, 0x7158($at)            # 80107158
    jr      t3
    nop
    b       lbl_8004917C
    addiu   v0, $zero, 0x0020          # v0 = 00000020
    b       lbl_8004917C
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lw      v1, 0x00A8(a3)             # 000000A8
    beql    v1, $zero, lbl_80049180
    lhu     t7, 0x0144(a3)             # 00000144
    lh      t6, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    beql    t6, $at, lbl_80049180
    lhu     t7, 0x0144(a3)             # 00000144
    b       lbl_8004917C
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_8004917C:
    lhu     t7, 0x0144(a3)             # 00000144
lbl_80049180:
    sltiu   $at, t7, 0x0014
    beq     $at, $zero, lbl_8004921C
    sll     t7, t7,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x71A4($at)            # 801071A4
    jr      t7
    nop
    andi    t4, v0, 0x0020             # t4 = 00000000
    beq     t4, $zero, lbl_8004921C
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    b       lbl_8004921C
    sh      t8, 0x015E(a3)             # 0000015E
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_800491C4
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x015E(a3)             # 0000015E
lbl_800491C4:
    b       lbl_8004921C
    ori     v0, v0, 0x0001             # v0 = 00000003
    b       lbl_8004921C
    ori     v0, v0, 0x0001             # v0 = 00000003
    andi    t1, v0, 0x0008             # t1 = 00000000
    beq     t1, $zero, lbl_800491E4
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sh      t2, 0x015E(a3)             # 0000015E
lbl_800491E4:
    b       lbl_8004921C
    ori     v0, v0, 0x0001             # v0 = 00000003
    andi    t5, v0, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_800491FC
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t3, 0x015E(a3)             # 0000015E
lbl_800491FC:
    b       lbl_8004921C
    ori     v0, v0, 0x0001             # v0 = 00000003
    b       lbl_8004921C
    ori     v0, v0, 0x0001             # v0 = 00000003
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_8004921C
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x015E(a3)             # 0000015E
lbl_8004921C:
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     v0, v0, $at
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, -0x0950($at)           # 800EF6B0
    lh      t4, 0x0140(a3)             # 00000140
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bnel    t4, $at, lbl_80049300
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, v1, lbl_80049278
    lui     $at, 0x800F                # $at = 800F0000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80049290
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_800492D8
    addiu   a0, $zero, 0x4837          # a0 = 00004837
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, -0x0950($at)           # 800EF6B0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_800492F0
    addiu   a0, $zero, 0x480C          # a0 = 0000480C
    b       lbl_80049300
    or      a0, a3, $zero              # a0 = 00000000
lbl_80049278:
    sw      v0, -0x0950($at)           # FFFFF6B8
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    b       lbl_800492FC
    lw      a3, 0x0018($sp)
lbl_80049290:
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, -0x0950($at)           # 800EF6B0
    lw      t8, 0x008C(a3)             # 0000008C
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   a0, $zero, 0x480C          # a0 = 0000480C
    addu    t9, t9, t8
    lbu     t9, 0x1CBF(t9)             # 00011CBF
    bne     v1, t9, lbl_800492C8
    nop
    addiu   a0, $zero, 0x4837          # a0 = 00004837
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    b       lbl_800492FC
    lw      a3, 0x0018($sp)
lbl_800492C8:
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    b       lbl_800492FC
    lw      a3, 0x0018($sp)
lbl_800492D8:
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, -0x0950($at)           # 800EF6B0
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    b       lbl_800492FC
    lw      a3, 0x0018($sp)
lbl_800492F0:
    jal     func_800646F0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_800492FC:
    or      a0, a3, $zero              # a0 = 00000000
lbl_80049300:
    jal     func_80048FA8
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t0, 0x001E($sp)
    lui     $at, 0x8000                # $at = 80000000
    sh      t0, 0x0144(a3)             # 00000144
    lh      v0, 0x001E($sp)
    or      v0, v0, $at                # v0 = 80000000
lbl_80049320:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80049330:
# Wrapper for 80048FCC
# A0 = Camera ptr
# A1 = s16 ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    jal     func_80048FCC
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8004935C:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lh      t6, 0x0142(a0)             # 00000142
    lui     t8, 0x800F                 # t8 = 800F0000
    lui     $at, 0x3FFF                # $at = 3FFF0000
    sll     t7, t6,  3
    addu    t8, t8, t7
    lw      t8, -0x1190(t8)            # 800EEE70
    ori     $at, $at, 0xFFFF           # $at = 3FFFFFFF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, a1
    and     t9, t8, $at
    and     t2, t9, t1
    bnel    t2, $zero, lbl_800493A8
    lh      t3, 0x0144(a0)             # 00000144
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800493A4:
    lh      t3, 0x0144(a0)             # 00000144
lbl_800493A8:
    lui     $at, 0x8000                # $at = 80000000
    or      v0, a1, $at                # v0 = 80000000
    bne     a1, t3, lbl_800493C0
    nop
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800493C0:
    jr      $ra
    nop


func_800493C8:
# Camera related, possibly sets up camera behavior
# 800EEE70 is a massive table that references sub-data
# A0 = Camera struct ptr (ref in Global Context + 0x0790)
# A1 = Camera S (index to 800EEE70), valid values range between 0x01 and 0x41
# A2 = Camera M
# V0 = ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sll     a3, a1, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v1, 0x014A(a0)             # 0000014A
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0xEE70             # t0 = 800EEE70
    andi    t6, v1, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80049444
    sll     t4, a3,  3
    lh      t7, 0x0142(a0)             # 00000142
    addu    t5, t0, t4
    lw      t6, 0x0000(t5)             # 00000000
    sll     t8, t7,  3
    addu    t9, t0, t8
    lw      t1, 0x0000(t9)             # 00000000
    lui     v0, 0x0F00                 # v0 = 0F000000
    and     t7, t6, v0
    and     t2, t1, v0
    srl     t3, t2, 24
    srl     t8, t7, 24
    sltu    $at, t3, t8
    bne     $at, $zero, lbl_80049444
    ori     t9, v1, 0x0010             # t9 = 00000010
    sh      t9, 0x014A(a0)             # 0000014A
    b       lbl_800495AC
    addiu   v0, $zero, 0xFFFE          # v0 = FFFFFFFE
lbl_80049444:
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   $at, $zero, 0x0035         # $at = 00000035
    beq     a3, $at, lbl_8004945C
    addiu   t0, t0, 0xEE70             # t0 = 800EEE70
    addiu   $at, $zero, 0x0036         # $at = 00000036
    bne     a3, $at, lbl_80049490
lbl_8004945C:
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    bne     t1, $zero, lbl_80049490
    nop
    lw      t2, 0x008C(a0)             # 0000008C
    addiu   $at, $zero, 0x0056         # $at = 00000056
    ori     t5, v1, 0x0010             # t5 = 00000010
    lh      t4, 0x00A4(t2)             # 000000A4
    addiu   v0, $zero, 0xFFFB          # v0 = FFFFFFFB
    bne     t4, $at, lbl_80049490
    nop
    b       lbl_800495AC
    sh      t5, 0x014A(a0)             # 0000014A
lbl_80049490:
    beq     a3, $zero, lbl_800494A0
    slti    $at, a3, 0x0042
    bnel    $at, $zero, lbl_800494AC
    lh      t6, 0x0142(a0)             # 00000142
lbl_800494A0:
    b       lbl_800495AC
    addiu   v0, $zero, 0xFF9D          # v0 = FFFFFF9D
    lh      t6, 0x0142(a0)             # 00000142
lbl_800494AC:
    andi    t7, a2, 0x0001             # t7 = 00000000
    ori     t2, v1, 0x0010             # t2 = 00000010
    bne     a3, t6, lbl_800494E4
    andi    t4, a2, 0x0002             # t4 = 00000000
    bne     t7, $zero, lbl_800494E4
    ori     t3, v1, 0x0010             # t3 = 00000010
    andi    t8, a2, 0x0002             # t8 = 00000000
    bne     t8, $zero, lbl_800494DC
    sh      t3, 0x014A(a0)             # 0000014A
    lh      t9, 0x014A(a0)             # 0000014A
    ori     t1, t9, 0x0001             # t1 = 00000011
    sh      t1, 0x014A(a0)             # 0000014A
lbl_800494DC:
    b       lbl_800495AC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800494E4:
    bne     t4, $zero, lbl_800494F8
    sh      t2, 0x014A(a0)             # 0000014A
    lh      t5, 0x014A(a0)             # 0000014A
    ori     t6, t5, 0x0001             # t6 = 00000011
    sh      t6, 0x014A(a0)             # 0000014A
lbl_800494F8:
    lh      t7, 0x014C(a0)             # 0000014C
    lh      v0, 0x0142(a0)             # 00000142
    lui     a1, 0x4000                 # a1 = 40000000
    ori     t3, t7, 0x000C             # t3 = 0000000C
    sh      t3, 0x014C(a0)             # 0000014C
    lh      t8, 0x014C(a0)             # 0000014C
    sll     t1, v0,  3
    addu    v1, t0, t1
    andi    t9, t8, 0xEFF7             # t9 = 00000000
    sh      t9, 0x014C(a0)             # 0000014C
    lw      t2, 0x0000(v1)             # 00000000
    andi    t5, a2, 0x0008             # t5 = 00000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sll     t4, t2,  1
    bltz    t4, lbl_8004953C
    andi    t3, a2, 0x0004             # t3 = 00000000
    sh      v0, 0x0154(a0)             # 00000154
lbl_8004953C:
    beq     t5, $zero, lbl_80049554
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t6, 0x0166(a0)             # 00000166
    sh      t7, 0x0166(a0)             # 00000166
    b       lbl_80049578
    sh      t6, 0x0148(a0)             # 00000148
lbl_80049554:
    bne     t3, $zero, lbl_80049578
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    lw      t8, 0x0000(v1)             # 00000000
    and     t9, t8, a1
    bnel    t9, $zero, lbl_80049578
    sh      t2, 0x0148(a0)             # 00000148
    lh      t1, 0x0148(a0)             # 00000148
    sh      t1, 0x0166(a0)             # 00000166
    sh      t2, 0x0148(a0)             # 00000148
lbl_80049578:
    sh      a3, 0x0142(a0)             # 00000142
    lh      a1, 0x0144(a0)             # 00000144
    sh      a3, 0x001E($sp)
    jal     func_80048FCC
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    bltz    v0, lbl_800495A8
    lh      a3, 0x001E($sp)
    lh      a1, 0x0144(a0)             # 00000144
    jal     func_80036E30
    sh      a3, 0x001E($sp)
    lh      a3, 0x001E($sp)
lbl_800495A8:
    or      v0, a3, $zero              # v0 = 00000000
lbl_800495AC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800495BC:
# Camera related (Wrapper for 800493C8)
# Function sets A2 = 0, calls inner function
# A0 = Camera struct ptr (ref in Global Context + 0x0790)
# A1 = Camera S
# V0 = ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    jal     func_800493C8
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800495E8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    s0, $at, lbl_80049614
    lh      t7, 0x014A(a0)             # 0000014A
    lh      t6, 0x0148(a0)             # 00000148
    bnel    s0, t6, lbl_80049628
    lh      t9, 0x014A(a0)             # 0000014A
    lh      t7, 0x014A(a0)             # 0000014A
lbl_80049614:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    ori     t8, t7, 0x0040             # t8 = 00000040
    b       lbl_800496A8
    sh      t8, 0x014A(a0)             # 0000014A
    lh      t9, 0x014A(a0)             # 0000014A
lbl_80049628:
    or      a1, s0, $zero              # a1 = 00000000
    andi    t0, t9, 0x0040             # t0 = 00000000
    bnel    t0, $zero, lbl_800496AC
    lw      $ra, 0x001C($sp)
    jal     func_800364CC
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    sll     a1, v0, 16
    sra     a1, a1, 16
    lh      t1, 0x014A(a0)             # 0000014A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    ori     t2, t1, 0x0040             # t2 = 00000040
    jal     func_800493C8
    sh      t2, 0x014A(a0)             # 0000014A
    bgez    v0, lbl_80049688
    lw      a0, 0x0020($sp)
    lh      t3, 0x0142(a0)             # 00000142
    lui     t5, 0x800F                 # t5 = 800F0000
    sll     t4, t3,  3
    addu    t5, t5, t4
    lw      t5, -0x1190(t5)            # 800EEE70
    sll     t6, t5,  0
    bgezl   t6, lbl_800496A4
    lui     $at, 0x8000                # $at = 80000000
lbl_80049688:
    lh      t7, 0x014A(a0)             # 0000014A
    sh      s0, 0x0148(a0)             # 00000148
    lh      a1, 0x0144(a0)             # 00000144
    ori     t8, t7, 0x0004             # t8 = 00000004
    jal     func_80036E30
    sh      t8, 0x014A(a0)             # 0000014A
    lui     $at, 0x8000                # $at = 80000000
lbl_800496A4:
    or      v0, s0, $at                # v0 = 80000000
lbl_800496A8:
    lw      $ra, 0x001C($sp)
lbl_800496AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800496BC:
    lwl     t7, 0x0134(a1)             # 00000134
    lwr     t7, 0x0137(a1)             # 00000137
    or      v0, a0, $zero              # v0 = 00000000
    swl     t7, 0x0000(a0)             # 00000000
    swr     t7, 0x0003(a0)             # 00000003
    lhu     t7, 0x0138(a1)             # 00000138
    sh      t7, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_800496E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_800496BC
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF8
    lh      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80049708:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_800496BC
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF8
    lh      v0, 0x001A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80049730:
    lwl     t7, 0x013A(a1)             # 0000013A
    lwr     t7, 0x013D(a1)             # 0000013D
    or      v0, a0, $zero              # v0 = 00000000
    swl     t7, 0x0000(a0)             # 00000000
    swr     t7, 0x0003(a0)             # 00000003
    lhu     t7, 0x013E(a1)             # 0000013E
    sh      t7, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80049754:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_80049730
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF8
    lh      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8004977C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_80049730
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF8
    lh      v0, 0x001A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800497A4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    bne     v0, $zero, lbl_800497D4
    sra     a0, a0, 16
    b       lbl_80049808
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800497D4:
    addiu   a1, $zero, 0x61A8          # a1 = 000061A8
    jal     func_8007D668
    sh      a0, 0x0026($sp)
    lh      a0, 0x0026($sp)
    lh      a1, 0x0032($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a0, 0x0026($sp)
    jal     func_8007D6B0
    lh      a1, 0x0036($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80049808:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80049818:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    beq     a2, $zero, lbl_8004999C
    slti    $at, a1, 0x0021
    bne     $at, $zero, lbl_80049840
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    addiu   $at, $zero, 0x0040         # $at = 00000040
    beq     a1, $at, lbl_8004995C
    nop
    b       lbl_800499A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80049840:
    sltiu   $at, t6, 0x0020
    beq     $at, $zero, lbl_80049994
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x71F4($at)            # 801071F4
    jr      t6
    nop
    lh      t7, 0x015C(a0)             # 0000015C
    andi    t8, t7, 0xFFE6             # t8 = 00000000
    sh      t8, 0x015C(a0)             # 0000015C
    lw      t0, 0x0000(a2)             # 00000000
    sw      t0, 0x0050(a0)             # 00000050
    lw      t9, 0x0004(a2)             # 00000004
    sw      t9, 0x0054(a0)             # 00000054
    lw      t0, 0x0008(a2)             # 00000008
    sw      t0, 0x0058(a0)             # 00000058
lbl_80049884:
    lh      t1, 0x015C(a0)             # 0000015C
lbl_80049888:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      t2, t1, a1                 # t2 = 00000000
    b       lbl_800499A4
    sh      t2, 0x015C(a0)             # 0000015C
    lh      t3, 0x015C(a0)             # 0000015C
    andi    t4, t3, 0xFFE6             # t4 = 00000000
    sh      t4, 0x015C(a0)             # 0000015C
    lw      t6, 0x0000(a2)             # 00000000
    sw      t6, 0x00AC(a0)             # 000000AC
    lw      t5, 0x0004(a2)             # 00000004
    sw      t5, 0x00B0(a0)             # 000000B0
    lw      t6, 0x0008(a2)             # 00000008
    b       lbl_80049884
    sw      t6, 0x00B4(a0)             # 000000B4
    lh      v0, 0x0142(a0)             # 00000142
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    beql    v0, $at, lbl_80049888
    lh      t1, 0x015C(a0)             # 0000015C
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beql    v0, $at, lbl_80049888
    lh      t1, 0x015C(a0)             # 0000015C
    lh      t7, 0x015C(a0)             # 0000015C
    sw      a2, 0x00A8(a0)             # 000000A8
    andi    t8, t7, 0xFFE6             # t8 = 00000000
    b       lbl_80049884
    sh      t8, 0x015C(a0)             # 0000015C
    lw      t0, 0x0000(a2)             # 00000000
    addiu   v0, $sp, 0x0004            # v0 = FFFFFFE4
    sw      t0, 0x0000(v0)             # FFFFFFE4
    lw      t9, 0x0004(a2)             # 00000004
    lw      t2, 0x0000(v0)             # FFFFFFE4
    sw      t9, 0x0004(v0)             # FFFFFFE8
    lw      t0, 0x0008(a2)             # 00000008
    sw      t0, 0x0008(v0)             # FFFFFFEC
    sw      t2, 0x0074(a0)             # 00000074
    lw      t1, 0x0004(v0)             # FFFFFFE8
    sw      t1, 0x0078(a0)             # 00000078
    lw      t2, 0x0008(v0)             # FFFFFFEC
    sw      t2, 0x007C(a0)             # 0000007C
    lw      t4, 0x0000(v0)             # FFFFFFE4
    sw      t4, 0x005C(a0)             # 0000005C
    lw      t3, 0x0004(v0)             # FFFFFFE8
    sw      t3, 0x0060(a0)             # 00000060
    lw      t4, 0x0008(v0)             # FFFFFFEC
    b       lbl_80049884
    sw      t4, 0x0064(a0)             # 00000064
    lw      t6, 0x0000(a2)             # 00000000
    sw      t6, 0x0068(a0)             # 00000068
    lw      t5, 0x0004(a2)             # 00000004
    sw      t5, 0x006C(a0)             # 0000006C
    lw      t6, 0x0008(a2)             # 00000008
    b       lbl_80049884
    sw      t6, 0x0070(a0)             # 00000070
lbl_8004995C:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x7274($at)           # 80107274
    lwc1    $f4, 0x0000(a2)            # 00000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    b       lbl_80049884
    sh      t8, 0x015A(a0)             # 0000015A
    lwc1    $f4, 0x0000(a2)            # 00000000
    b       lbl_80049884
    swc1    $f4, 0x00FC(a0)            # 000000FC
lbl_80049994:
    b       lbl_800499A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8004999C:
    b       lbl_800499A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800499A4:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800499AC:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lh      t6, 0x015C(a0)             # 0000015C
    nor     t7, a1, $zero
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    and     t8, t6, t7
    sh      t8, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_800499D4:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sh      a1, 0x014C(a0)             # 0000014C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_800499F0:
    sh      $zero, 0x015E(a0)          # 0000015E
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_80049A00:
# Cutscene Camera?
# A0 = Cutscene Camera struct ptr
# A1 = Focus Point Tween List
# A2 = Camera Position Tween List
# A3 = Actor Instance (tracked actor)
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0124(s0)             # 00000124
    sw      a2, 0x0128(s0)             # 00000128
    lh      t6, 0x004A($sp)
    or      a1, a3, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFEC
    sh      t6, 0x012C(s0)             # 0000012C
    lh      t7, 0x012C(s0)             # 0000012C
    beql    t7, $zero, lbl_80049A80
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_800226D8
    sw      a3, 0x0090(s0)             # 00000090
    addiu   t8, $sp, 0x0024            # t8 = FFFFFFEC
    lw      t0, 0x0000(t8)             # FFFFFFEC
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    sw      t0, 0x0094(s0)             # 00000094
    lw      t9, 0x0004(t8)             # FFFFFFF0
    sw      t9, 0x0098(s0)             # 00000098
    lw      t0, 0x0008(t8)             # FFFFFFF4
    sw      t0, 0x009C(s0)             # 0000009C
    lw      t9, 0x000C(t8)             # FFFFFFF8
    sw      t9, 0x00A0(s0)             # 000000A0
    lw      t0, 0x0010(t8)             # FFFFFFFC
    sh      t1, 0x0156(s0)             # 00000156
    swc1    $f0, 0x00D8(s0)            # 000000D8
    swc1    $f0, 0x00E0(s0)            # 000000E0
    sw      t0, 0x00A4(s0)             # 000000A4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80049A80:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80049A94:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lh      t6, 0x014C(a0)             # 0000014C
    or      t7, t6, a1                 # t7 = 00000000
    sh      t7, 0x014C(a0)             # 0000014C
    lh      v0, 0x014C(a0)             # 0000014C
    jr      $ra
    nop


func_80049AB8:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lh      t6, 0x014C(a0)             # 0000014C
    nor     t7, a1, $zero
    and     t8, t6, t7
    sh      t8, 0x014C(a0)             # 0000014C
    lh      v0, 0x014C(a0)             # 0000014C
    jr      $ra
    nop


func_80049AE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      a3, 0x002C($sp)
    lh      v0, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beq     v0, $at, lbl_80049B18
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bnel    v0, $at, lbl_80049B24
    sw      a1, 0x0000(s0)             # 00000000
lbl_80049B18:
    b       lbl_80049BCC
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a1, 0x0000(s0)             # 00000000
lbl_80049B24:
    lh      t6, 0x0032($sp)
    addiu   $at, $zero, 0xFF9D         # $at = FFFFFF9D
    or      a0, s0, $zero              # a0 = 00000000
    sh      t6, 0x0006(s0)             # 00000006
    lh      t7, 0x0036($sp)
    sh      t7, 0x0008(s0)             # 00000008
    lh      t8, 0x003A($sp)
    sh      a2, 0x0004(s0)             # 00000004
    bne     a2, $at, lbl_80049B5C
    sh      t8, 0x000A(s0)             # 0000000A
    jal     func_80036E30
    lh      a1, 0x0144(s0)             # 00000144
    b       lbl_80049BCC
    addiu   v0, $zero, 0xFF9D          # v0 = FFFFFF9D
lbl_80049B5C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_80049B7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800495BC
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    b       lbl_80049BC0
    or      a0, s0, $zero              # a0 = 00000000
lbl_80049B7C:
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800364CC
    sh      a2, 0x002A($sp)
    lh      t9, 0x014A(s0)             # 0000014A
    sll     a1, v0, 16
    sra     a1, a1, 16
    ori     t0, t9, 0x0040             # t0 = 00000040
    sh      t0, 0x014A(s0)             # 0000014A
    jal     func_800495BC
    or      a0, s0, $zero              # a0 = 00000000
    bltz    v0, lbl_80049BBC
    lh      a2, 0x002A($sp)
    lh      t1, 0x014A(s0)             # 0000014A
    sh      a2, 0x0148(s0)             # 00000148
    ori     t2, t1, 0x0004             # t2 = 00000004
    sh      t2, 0x014A(s0)             # 0000014A
lbl_80049BBC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80049BC0:
    jal     func_80036E30
    lh      a1, 0x0144(s0)             # 00000144
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80049BCC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80049BE0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   v0, $sp, 0x0030            # v0 = FFFFFFF0
    or      a2, a1, $zero              # a2 = 00000000
    swc1    $f0, 0x00EC(s0)            # 000000EC
    swc1    $f0, 0x00E8(s0)            # 000000E8
    swc1    $f0, 0x00E4(s0)            # 000000E4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7278($at)           # 80107278
    addiu   a0, s0, 0x0050             # a0 = 00000050
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    swc1    $f4, 0x0100(s0)            # 00000100
    lw      t7, 0x0050(a2)             # 00000050
    sw      t7, 0x0000(a0)             # 00000050
    lw      t6, 0x0054(a2)             # 00000054
    sw      t6, 0x0004(a0)             # 00000054
    lw      t7, 0x0058(a2)             # 00000058
    sw      t7, 0x0008(a0)             # 00000058
    lw      t9, 0x005C(a2)             # 0000005C
    sw      t9, 0x0000(v0)             # FFFFFFF0
    lw      t8, 0x0060(a2)             # 00000060
    lw      t1, 0x0000(v0)             # FFFFFFF0
    sw      t8, 0x0004(v0)             # FFFFFFF4
    lw      t9, 0x0064(a2)             # 00000064
    sw      t9, 0x0008(v0)             # FFFFFFF8
    sw      t1, 0x0074(s0)             # 00000074
    lw      t0, 0x0004(v0)             # FFFFFFF4
    sw      t0, 0x0078(s0)             # 00000078
    lw      t1, 0x0008(v0)             # FFFFFFF8
    sw      t1, 0x007C(s0)             # 0000007C
    lw      t3, 0x0000(v0)             # FFFFFFF0
    sw      t3, 0x0000(a1)             # 0000005C
    lw      t2, 0x0004(v0)             # FFFFFFF4
    sw      t2, 0x0004(a1)             # 00000060
    lw      t3, 0x0008(v0)             # FFFFFFF8
    sw      t3, 0x0008(a1)             # 00000064
    sw      a2, 0x0044($sp)
    jal     func_80067580
    sw      a1, 0x002C($sp)
    lw      a2, 0x0044($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, 0x00FC(a2)            # 000000FC
    swc1    $f6, 0x00FC(s0)            # 000000FC
    lh      t4, 0x015A(a2)             # 0000015A
    jal     func_80035910
    sh      t4, 0x015A(s0)             # 0000015A
    lw      a1, 0x0090(s0)             # 00000090
    addiu   a0, s0, 0x0094             # a0 = 00000094
    beql    a1, $zero, lbl_80049D14
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_800226A4
    sw      a0, 0x0024($sp)
    lwc1    $f8, 0x0050(s0)            # 00000050
    lwc1    $f10, 0x0094(s0)           # 00000094
    lwc1    $f18, 0x0054(s0)           # 00000054
    lwc1    $f4, 0x0098(s0)            # 00000098
    sub.s   $f16, $f8, $f10
    lwc1    $f10, 0x009C(s0)           # 0000009C
    lwc1    $f8, 0x0058(s0)            # 00000058
    lw      a0, 0x0024($sp)
    swc1    $f16, 0x00E4(s0)           # 000000E4
    sub.s   $f6, $f18, $f4
    sub.s   $f16, $f8, $f10
    swc1    $f6, 0x00E8(s0)            # 000000E8
    swc1    $f16, 0x00EC(s0)           # 000000EC
    jal     func_80067580
    lw      a1, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    swc1    $f0, 0x00DC(s0)            # 000000DC
    swc1    $f2, 0x00CC(s0)            # 000000CC
    swc1    $f2, 0x00D0(s0)            # 000000D0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80049D14:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80049D28:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80049D34:
    lw      t7, 0x0080(a1)             # 00000080
    or      v0, a0, $zero              # v0 = 00000000
    sw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x0084(a1)             # 00000084
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0088(a1)             # 00000088
    sw      t7, 0x0008(a0)             # 00000008
    jr      $ra
    nop


func_80049D58:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    andi    t6, a1, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80049D74
    andi    t7, a1, 0x0002             # t7 = 00000000
    sw      a2, 0x0124(a0)             # 00000124
lbl_80049D74:
    beq     t7, $zero, lbl_80049D80
    andi    t8, a1, 0x0004             # t8 = 00000000
    sw      a3, 0x0128(a0)             # 00000128
lbl_80049D80:
    beq     t8, $zero, lbl_80049D90
    andi    t0, a1, 0x0008             # t0 = 00000000
    lh      t9, 0x0012($sp)
    sh      t9, 0x012C(a0)             # 0000012C
lbl_80049D90:
    beq     t0, $zero, lbl_80049D9C
    lh      t1, 0x0016($sp)
    sh      t1, 0x012E(a0)             # 0000012E
lbl_80049D9C:
    jr      $ra
    nop


func_80049DA4:
    lui     v0, 0x800F                 # v0 = 800F0000
    lw      v0, -0x0E4C(v0)            # 800EF1B4
    jr      $ra
    nop


func_80049DB4:
    lh      t6, 0x014C(a0)             # 0000014C
    lh      v1, 0x0164(a0)             # 00000164
    ori     t7, t6, 0x0008             # t7 = 00000008
    bne     v1, $zero, lbl_80049DF8
    sh      t7, 0x014C(a0)             # 0000014C
    lw      a1, 0x008C(a0)             # 0000008C
    lh      a2, 0x07A0(a1)             # 000007A0
    beq     a2, $zero, lbl_80049DF8
    sll     t8, a2,  2
    addu    t9, a1, t8
    lw      v1, 0x0790(t9)             # 00000790
    lh      t0, 0x014C(v1)             # 0000014C
    ori     t1, t0, 0x0008             # t1 = 00000008
    sh      t1, 0x014C(v1)             # 0000014C
    lw      t2, 0x008C(a0)             # 0000008C
    jr      $ra
    lh      v0, 0x07A0(t2)             # 000007A0
lbl_80049DF8:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop
    nop
    nop
    nop
