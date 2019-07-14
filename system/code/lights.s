# "Lights" part of the code file
#
# Handles the game's lighting engine and many light sources.
#
# Starts at VRAM: 80065B70 / VROM: ADBAD0
#

.section .text
func_80065B70:
# Initialize Flame Light?
# A0 = Blue Fire Instance + 0x19C
# A1 = short x
# A2 = short y
# A3 = short z
# SP + 0x13 = byte Red
# SP + 0x17 = byte Green
# SP + 0x1B = byte Blue
# SP + 0x1E = short Alpha?
# SP + 0x23 = byte ?
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0040($sp)
    sb      t6, 0x0000(a0)             # 00000000
    lh      t7, 0x0026($sp)
    sh      t7, 0x0002(a0)             # 00000002
    lh      t8, 0x002A($sp)
    sh      t8, 0x0004(a0)             # 00000004
    lh      t9, 0x002E($sp)
    sh      t9, 0x0006(a0)             # 00000006
    lh      t0, 0x003E($sp)
    lbu     a3, 0x003B($sp)
    lbu     a2, 0x0037($sp)
    lbu     a1, 0x0033($sp)
    jal     func_80065C98
    sw      t0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80065BCC:
# Initialize Flame Light (Wrapper for 80065B70)
# A0 = Blue Fire Instance + 0x19C
# A1 = short x
# A2 = short y
# A3 = short z
# SP + 0x13 = byte Red (0x9B this pass)
# SP + 0x17 = byte Green (0xD2 this pass)
# SP + 0x1B = byte Blue (0xFF this pass)
# SP + 0x1E = short Alpha? (0 this pass)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x002C($sp)
    lbu     t6, 0x0043($sp)
    lbu     t7, 0x0047($sp)
    lbu     t8, 0x004B($sp)
    lh      t9, 0x004E($sp)
    sw      $zero, 0x0020($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_80065B70
    sw      t9, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80065C30:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x002C($sp)
    lbu     t6, 0x0043($sp)
    lbu     t7, 0x0047($sp)
    lbu     t8, 0x004B($sp)
    lh      t9, 0x004E($sp)
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0020($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_80065B70
    sw      t9, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80065C98:
# Initialize Flame Color
# writes RGBA to A0 + 0x08 (note alpha is short)
# Called by 80065B70
# A0 = Blue Fire Instance + 0x19C
# A1 = byte Red
# A2 = byte Green
# A3 = byte Blue
# SP + 0x10 = short Alpha?
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x0008(a0)             # 00000008
    sb      a2, 0x0009(a0)             # 00000009
    sb      a3, 0x000A(a0)             # 0000000A
    lh      t6, 0x0012($sp)
    sh      t6, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_80065CCC:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 24
    sll     a2, a2, 24
    sll     a1, a1, 24
    sra     a1, a1, 24
    sra     a2, a2, 24
    sra     a3, a3, 24
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0000(a0)             # 00000000
    sb      a1, 0x0002(a0)             # 00000002
    sb      a2, 0x0003(a0)             # 00000003
    sb      a3, 0x0004(a0)             # 00000004
    lbu     t7, 0x0013($sp)
    sb      t7, 0x0005(a0)             # 00000005
    lbu     t8, 0x0017($sp)
    sb      t8, 0x0006(a0)             # 00000006
    lbu     t9, 0x001B($sp)
    sb      t9, 0x0007(a0)             # 00000007
    jr      $ra
    nop


func_80065D24:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x000C(a0)             # 0000000C
    sb      a1, 0x0008(a0)             # 00000008
    sb      a2, 0x000D(a0)             # 0000000D
    sb      a2, 0x0009(a0)             # 00000009
    sb      a3, 0x000E(a0)             # 0000000E
    sb      a3, 0x000A(a0)             # 0000000A
    sb      $zero, 0x0000(a0)          # 00000000
    jr      $ra
    nop


func_80065D60:
# Write Lighting Display Lists
# Writes to POLY_OPA and POLY_XLU dlists
# A0 = Light data ptr
# A1 = Graphics Context
    lui     t2, 0xDB02                 # t2 = DB020000
    addiu   t3, $zero, 0x0018          # t3 = 00000018
    lw      v1, 0x02C0(a1)             # 000002C0
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    lui     t4, 0xDC08                 # t4 = DC080000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a1)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lbu     t7, 0x0000(a0)             # 00000000
    multu   t7, t3
    mflo    t8
    sw      t8, 0x0004(v1)             # 00000004
    nop
    lw      a3, 0x02D0(a1)             # 000002D0
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a1)             # 000002D0
    sw      t2, 0x0000(a3)             # 00000000
    lbu     t5, 0x0000(a0)             # 00000000
    multu   t5, t3
    mflo    t6
    sw      t6, 0x0004(a3)             # 00000004
    nop
    lbu     t7, 0x0000(a0)             # 00000000
    addiu   t0, a0, 0x0010             # t0 = 00000010
    or      t1, $zero, $zero           # t1 = 00000000
    blezl   t7, lbl_80065E38
    lui     t4, 0xDC08                 # t4 = DC080000
    lw      v1, 0x02C0(a1)             # 000002C0
lbl_80065DD0:
    addiu   a2, a2, 0x0018             # a2 = 00000030
    addiu   t1, t1, 0x0001             # t1 = 00000001
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a1)             # 000002C0
    or      v0, v1, $zero              # v0 = 00000000
    bgez    a2, lbl_80065DF4
    sra     t9, a2,  3
    addiu   $at, a2, 0x0007            # $at = 00000037
    sra     t9, $at,  3
lbl_80065DF4:
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t6, t5,  8
    or      t2, t6, t4                 # t2 = DC080008
    ori     t2, t2, 0x000A             # t2 = DC08000A
    sw      t2, 0x0000(v0)             # 00000000
    sw      t0, 0x0004(v0)             # 00000004
    lw      a3, 0x02D0(a1)             # 000002D0
    addiu   t7, a3, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a1)             # 000002D0
    sw      t0, 0x0004(a3)             # 00000004
    addiu   t0, t0, 0x0010             # t0 = 00000020
    sw      t2, 0x0000(a3)             # 00000000
    lbu     t8, 0x0000(a0)             # 00000000
    slt     $at, t1, t8
    bnel    $at, $zero, lbl_80065DD0
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t4, 0xDC08                 # t4 = DC080000
lbl_80065E38:
    addiu   t1, t1, 0x0001             # t1 = 00000002
    sll     t5, t1,  2
    lw      v1, 0x02C0(a1)             # 000002C0
    subu    t5, t5, t1
    sll     t5, t5,  3
    addiu   t6, t5, 0x0018             # t6 = 00000020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a1)             # 000002C0
    or      v0, v1, $zero              # v0 = 00000000
    bgez    t6, lbl_80065E6C
    sra     t7, t6,  3
    addiu   $at, t6, 0x0007            # $at = 00000027
    sra     t7, $at,  3
lbl_80065E6C:
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t9, t8,  8
    or      t2, t9, t4                 # t2 = DC080008
    ori     t2, t2, 0x000A             # t2 = DC08000A
    addiu   a2, a0, 0x0008             # a2 = 00000008
    sw      a2, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      a3, 0x02D0(a1)             # 000002D0
    addiu   t5, a3, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a1)             # 000002D0
    sw      a2, 0x0004(a3)             # 00000004
    sw      t2, 0x0000(a3)             # 00000000
    jr      $ra
    nop


func_80065EA4:
    lbu     v1, 0x0000(a0)             # 00000000
    slti    $at, v1, 0x0007
    bne     $at, $zero, lbl_80065EBC
    sll     t6, v1,  4
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80065EBC:
    addu    a1, a0, t6
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(a0)             # 00000000
    addiu   v0, a1, 0x0010             # v0 = 00000010
    jr      $ra
    nop


func_80065ED4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    beql    a2, $zero, lbl_80066224
    lw      $ra, 0x0014($sp)
    lh      t6, 0x0000(a1)             # 00000000
    lh      t7, 0x0002(a1)             # 00000002
    lwc1    $f8, 0x0000(a2)            # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lh      t8, 0x0004(a1)             # 00000004
    cvt.s.w $f6, $f4
    lh      t9, 0x000A(a1)             # 0000000A
    cvt.s.w $f4, $f10
    sub.s   $f14, $f6, $f8
    mtc1    t8, $f8                    # $f8 = 0.00
    lwc1    $f6, 0x0004(a2)            # 00000004
    cvt.s.w $f10, $f8
    mul.s   $f8, $f14, $f14
    sub.s   $f16, $f4, $f6
    lwc1    $f4, 0x0008(a2)            # 00000008
    mtc1    t9, $f6                    # $f6 = 0.00
    sub.s   $f18, $f10, $f4
    mul.s   $f10, $f16, $f16
    cvt.s.w $f2, $f6
    mul.s   $f6, $f18, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f8, $f2, $f2
    add.s   $f12, $f4, $f6
    c.lt.s  $f12, $f8
    nop
    bc1fl   lbl_80066224
    lw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    swc1    $f2, 0x0024($sp)
    swc1    $f12, 0x0018($sp)
    swc1    $f14, 0x0034($sp)
    swc1    $f16, 0x0030($sp)
    jal     func_80065EA4
    swc1    $f18, 0x002C($sp)
    lw      a1, 0x003C($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f12, 0x0018($sp)
    lwc1    $f14, 0x0034($sp)
    lwc1    $f16, 0x0030($sp)
    beq     v0, $zero, lbl_80066220
    lwc1    $f18, 0x002C($sp)
    sqrt.s  $f0, $f12
    lbu     t0, 0x0006(a1)             # 00000006
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mtc1    t0, $f6                    # $f6 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    cvt.s.w $f8, $f6
    div.s   $f2, $f0, $f2
    mul.s   $f4, $f2, $f2
    bgez    t0, lbl_80065FC4
    sub.s   $f2, $f10, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80065FC4:
    mul.s   $f4, $f8, $f2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t1, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_8006603C
    mfc1    v1, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    v1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_80066030
    nop
    mfc1    v1, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80066048
    or      v1, v1, $at                # v1 = 80000000
lbl_80066030:
    beq     $zero, $zero, lbl_80066048
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f6
lbl_8006603C:
    nop
    bltz    v1, lbl_80066030
    nop
lbl_80066048:
    sb      v1, 0x0004(v0)             # 00000004
    sb      v1, 0x0000(v0)             # 00000000
    lbu     t2, 0x0007(a1)             # 00000007
    ctc1    t1, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f10                   # $f10 = 0.00
    bgez    t2, lbl_80066074
    cvt.s.w $f8, $f10
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f8, $f8, $f4
lbl_80066074:
    mul.s   $f6, $f8, $f2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_800660EC
    mfc1    v1, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    v1, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_800660E0
    nop
    mfc1    v1, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800660F8
    or      v1, v1, $at                # v1 = 80000000
lbl_800660E0:
    beq     $zero, $zero, lbl_800660F8
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f10
lbl_800660EC:
    nop
    bltz    v1, lbl_800660E0
    nop
lbl_800660F8:
    sb      v1, 0x0005(v0)             # 00000005
    sb      v1, 0x0001(v0)             # 00000001
    lbu     t4, 0x0008(a1)             # 00000008
    ctc1    t3, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80066124
    cvt.s.w $f8, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f8, $f8, $f6
lbl_80066124:
    mul.s   $f10, $f8, $f2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t5, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f4, $f10
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_8006619C
    mfc1    v1, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f4, $f10, $f4
    ctc1    v1, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_80066190
    nop
    mfc1    v1, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800661A8
    or      v1, v1, $at                # v1 = 80000000
lbl_80066190:
    beq     $zero, $zero, lbl_800661A8
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f4
lbl_8006619C:
    nop
    bltz    v1, lbl_80066190
    nop
lbl_800661A8:
    lui     $at, 0x3F80                # $at = 3F800000
    ctc1    t5, $f31
    mtc1    $at, $f6                   # $f6 = 1.00
    sb      v1, 0x0006(v0)             # 00000006
    sb      v1, 0x0002(v0)             # 00000002
    c.lt.s  $f0, $f6
    lui     $at, 0x42F0                # $at = 42F00000
    bc1fl   lbl_800661E0
    mtc1    $at, $f8                   # $f8 = 120.00
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f2                   # $f2 = 120.00
    beq     $zero, $zero, lbl_800661E8
    nop
    mtc1    $at, $f8                   # $f8 = 120.00
lbl_800661E0:
    nop
    div.s   $f2, $f8, $f0
lbl_800661E8:
    mul.s   $f10, $f14, $f2
    trunc.w.s $f4, $f10
    mul.s   $f6, $f16, $f2
    nop
    mul.s   $f10, $f18, $f2
    mfc1    t7, $f4
    nop
    sb      t7, 0x0008(v0)             # 00000008
    trunc.w.s $f8, $f6
    trunc.w.s $f4, $f10
    mfc1    t9, $f8
    mfc1    t1, $f4
    sb      t9, 0x0009(v0)             # 00000009
    sb      t1, 0x000A(v0)             # 0000000A
lbl_80066220:
    lw      $ra, 0x0014($sp)
lbl_80066224:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80066230:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    jal     func_80065EA4
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80066288
    lw      a1, 0x001C($sp)
    lbu     v1, 0x0003(a1)             # 00000003
    sb      v1, 0x0004(v0)             # 00000004
    sb      v1, 0x0000(v0)             # 00000000
    lbu     v1, 0x0004(a1)             # 00000004
    sb      v1, 0x0005(v0)             # 00000005
    sb      v1, 0x0001(v0)             # 00000001
    lbu     v1, 0x0005(a1)             # 00000005
    sb      v1, 0x0006(v0)             # 00000006
    sb      v1, 0x0002(v0)             # 00000002
    lb      t6, 0x0000(a1)             # 00000000
    sb      t6, 0x0008(v0)             # 00000008
    lb      t7, 0x0001(a1)             # 00000001
    sb      t7, 0x0009(v0)             # 00000009
    lb      t8, 0x0002(a1)             # 00000002
    sb      t8, 0x000A(v0)             # 0000000A
lbl_80066288:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80066298:
# Draw, Lighting, Completes Light Source Record Data
# A0 = Light Data on DISP append end
# A1 = Light Source ll record (last element)
# A2 = Light Position ptr
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x002C            # s3 = FFFFFFF4
    sw      $ra, 0x0024($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x1B40             # t6 = 800F1B40
    lw      t8, 0x0000(t6)             # 800F1B40
    sw      t8, 0x0000(s3)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 800F1B44
    sw      t7, 0x0004(s3)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 800F1B48
    beq     s0, $zero, lbl_80066318
    sw      t8, 0x0008(s3)             # FFFFFFFC
    lw      v0, 0x0000(s0)             # 00000000
lbl_800662E8:
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    lbu     t9, 0x0000(v0)             # 00000000
    addiu   a1, v0, 0x0002             # a1 = 00000002
    sll     t0, t9,  2
    addu    t1, s3, t0
    lw      t9, 0x0000(t1)             # 00000000
    jalr    $ra, t9
    nop
    lw      s0, 0x0008(s0)             # 00000008
    bnel    s0, $zero, lbl_800662E8
    lw      v0, 0x0000(s0)             # 00000000
lbl_80066318:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80066334:
# Allocate Light Source Reference Record
# V0 = Pointer to free Light Source Reference record, or null if no free space is available
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBD60             # a1 = 8011BD60
    lw      v1, 0x0000(a1)             # 8011BD60
    slti    $at, v1, 0x0020
    bne     $at, $zero, lbl_80066354
    addiu   t3, v1, 0x0001             # t3 = 00000001
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80066354:
    lw      t6, 0x0004(a1)             # 8011BD64
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBD68             # v0 = 8011BD68
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    a0, a1, t7
    lw      t8, 0x0008(a0)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000008
    beql    t8, $zero, lbl_800663B4
    sw      t3, 0x0000(a1)             # 8011BD60
    lw      t9, 0x0004(a1)             # 8011BD64
lbl_80066384:
    addiu   t0, t9, 0x0001             # t0 = 00000001
    slti    $at, t0, 0x0020
    beq     $at, $zero, lbl_8006639C
    sw      t0, 0x0004(a1)             # 8011BD64
    beq     $zero, $zero, lbl_800663A4
    addiu   a0, a0, 0x000C             # a0 = 00000014
lbl_8006639C:
    sw      $zero, 0x0004(a1)          # 8011BD64
    or      a0, v0, $zero              # a0 = 8011BD68
lbl_800663A4:
    lw      t2, 0x0000(a0)             # 8011BD68
    bnel    t2, $zero, lbl_80066384
    lw      t9, 0x0004(a1)             # 8011BD64
    sw      t3, 0x0000(a1)             # 8011BD60
lbl_800663B4:
    or      v0, a0, $zero              # v0 = 8011BD68
    jr      $ra
    nop


func_800663C0:
# Unload Light Source (inner)
    beq     a0, $zero, lbl_80066430
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBD60             # v0 = 8011BD60
    subu    t8, a0, v0
    addiu   t9, t8, 0xFFF8             # t9 = FFFFFFF8
    div     $zero, t9, v1
    mflo    t0
    lw      t6, 0x0000(v0)             # 8011BD60
    nop
    divu    $zero, t0, v1
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sw      t7, 0x0000(v0)             # 8011BD60
    mflo    t1
    sw      $zero, 0x0000(a0)          # 00000000
    sw      t1, 0x0004(v0)             # 8011BD64
    bne     v1, $zero, lbl_8006640C
    nop
    break   # 0x01C00
lbl_8006640C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80066424
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_80066424
    nop
    break   # 0x01800
lbl_80066424:
    bne     v1, $zero, lbl_80066430
    nop
    break   # 0x01C00
lbl_80066430:
    jr      $ra
    nop


func_80066438:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80066544
    lw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0050          # a1 = 00000050
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_800664A4
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    addiu   t6, $zero, 0x03E4          # t6 = 000003E4
    addiu   t7, $zero, 0x3200          # t7 = 00003200
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800664D0
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBD60             # a0 = 8011BD60
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0188          # a1 = 00000188
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800664A4:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x0004(a0)             # 00000004
    sb      a2, 0x0005(a0)             # 00000005
    sb      a3, 0x0006(a0)             # 00000006
    jr      $ra
    nop


func_800664D0:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x0007(a0)             # 00000007
    sb      a2, 0x0008(a0)             # 00000008
    sb      a3, 0x0009(a0)             # 00000009
    lh      t6, 0x0012($sp)
    sh      t6, 0x000A(a0)             # 0000000A
    lh      t7, 0x0016($sp)
    sh      t7, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_8006650C:
# Write scene ambient light to POLY_OPA_DISP append end
# A0 = Global Context + 0x7A8 (lstr)
# A1 = Graphics Context
# V0 = Ptr to written data
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lbu     a1, 0x0004(t6)             # 00000004
    lbu     a2, 0x0005(t6)             # 00000005
    jal     func_800667BC
    lbu     a3, 0x0006(t6)             # 00000006
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80066544:
    sw      a0, 0x0000($sp)
    sw      $zero, 0x0000(a1)          # 00000000
    jr      $ra
    nop


func_80066554:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    lw      s1, 0x0000(s0)             # 00000000
    beq     s1, $zero, lbl_80066598
lbl_80066578:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80066610
    or      a2, s1, $zero              # a2 = 00000000
    lw      t6, 0x0000(s0)             # 00000000
    lw      s1, 0x0008(t6)             # 00000008
    bne     s1, $zero, lbl_80066578
    sw      s1, 0x0000(s0)             # 00000000
lbl_80066598:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800665B0:
# Lighting, Bind Light Source
# Initialize Light?
# A0 = Global Context
# A1 = Global Context + 0x7A8
# A2 = Light Source Pointer
# V0 = Pointer to Light Source Record initialized
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_80066334
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_800665FC
    or      a0, v0, $zero              # a0 = 00000000
    lw      t6, 0x0020($sp)
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 00000000
    sw      t7, 0x0008(v0)             # 00000008
    lw      v1, 0x0000(a1)             # 00000000
    beql    v1, $zero, lbl_800665FC
    sw      v0, 0x0000(a1)             # 00000000
    sw      v0, 0x0004(v1)             # 00000004
    sw      v0, 0x0000(a1)             # 00000000
lbl_800665FC:
    or      v0, a0, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80066610:
# Unload Light Source
# A0 = Global Context
# A1 = Global Context + 0x7A8
# A2 = Light Source ll Record ptr (8011BD98 this pass)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a0, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    sw      $ra, 0x0014($sp)
    beql    a0, $zero, lbl_80066668
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0004(a0)             # 00000004
    beql    v0, $zero, lbl_80066644
    lw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x0008(a0)             # 00000008
    beq     $zero, $zero, lbl_80066648
    sw      t6, 0x0008(v0)             # 00000008
    lw      t7, 0x0008(a0)             # 00000008
lbl_80066644:
    sw      t7, 0x0000(a1)             # 00000000
lbl_80066648:
    lw      v0, 0x0008(a0)             # 00000008
    beq     v0, $zero, lbl_8006665C
    nop
    lw      t8, 0x0004(a0)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
lbl_8006665C:
    jal     func_800663C0
    nop
    lw      $ra, 0x0014($sp)
lbl_80066668:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80066674:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    lw      s0, 0x02C4(t6)             # 000002C4
    addiu   s0, s0, 0xFF80             # s0 = FFFFFF80
    sw      s0, 0x02C4(t6)             # 000002C4
    sb      a1, 0x0008(s0)             # FFFFFF88
    sb      a1, 0x000C(s0)             # FFFFFF8C
    sb      a2, 0x0009(s0)             # FFFFFF89
    sb      a2, 0x000D(s0)             # FFFFFF8D
    sb      a3, 0x000A(s0)             # FFFFFF8A
    sb      a3, 0x000E(s0)             # FFFFFF8E
    lbu     t3, 0x0033($sp)
    sb      t3, 0x0000(s0)             # FFFFFF80
    lbu     t2, 0x0033($sp)
    blez    t2, lbl_80066798
    andi    v0, t2, 0x0001             # v0 = 00000000
    beq     v0, $zero, lbl_80066724
    lbu     t4, 0x0037($sp)
    lbu     t5, 0x003B($sp)
    lbu     t6, 0x003F($sp)
    lb      a3, 0x0043($sp)
    lb      t0, 0x0047($sp)
    lb      t1, 0x004B($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sb      t4, 0x0010(s0)             # FFFFFF90
    sb      t4, 0x0014(s0)             # FFFFFF94
    sb      t5, 0x0011(s0)             # FFFFFF91
    sb      t5, 0x0015(s0)             # FFFFFF95
    sb      t6, 0x0012(s0)             # FFFFFF92
    sb      t6, 0x0016(s0)             # FFFFFF96
    sb      a3, 0x0018(s0)             # FFFFFF98
    sb      t0, 0x0019(s0)             # FFFFFF99
    beq     v1, t2, lbl_80066798
    sb      t1, 0x001A(s0)             # FFFFFF9A
lbl_80066724:
    sll     t7, v1,  4
    addu    v0, s0, t7
    lbu     a0, 0x0037($sp)
    lbu     a1, 0x003B($sp)
    lbu     a2, 0x003F($sp)
    lb      a3, 0x0043($sp)
    lb      t0, 0x0047($sp)
    lb      t1, 0x004B($sp)
lbl_80066744:
    addiu   v1, v1, 0x0002             # v1 = 00000003
    sb      a0, 0x0024(v0)             # 00000024
    sb      a0, 0x0020(v0)             # 00000020
    sb      a1, 0x0025(v0)             # 00000025
    sb      a1, 0x0021(v0)             # 00000021
    sb      a2, 0x0026(v0)             # 00000026
    sb      a2, 0x0022(v0)             # 00000022
    sb      a3, 0x0028(v0)             # 00000028
    sb      t0, 0x0029(v0)             # 00000029
    sb      t1, 0x002A(v0)             # 0000002A
    addiu   v0, v0, 0x0020             # v0 = 00000020
    sb      a0, -0x000C(v0)            # 00000014
    sb      a0, -0x0010(v0)            # 00000010
    sb      a1, -0x000B(v0)            # 00000015
    sb      a1, -0x000F(v0)            # 00000011
    sb      a2, -0x000A(v0)            # 00000016
    sb      a2, -0x000E(v0)            # 00000012
    sb      a3, -0x0008(v0)            # 00000018
    sb      t0, -0x0007(v0)            # 00000019
    bne     v1, t2, lbl_80066744
    sb      t1, -0x0006(v0)            # 0000001A
lbl_80066798:
    or      a0, s0, $zero              # a0 = FFFFFF80
    jal     func_80065D60
    lw      a1, 0x0020($sp)
    or      v0, s0, $zero              # v0 = FFFFFF80
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800667BC:
# Write Light Data to POLY_OPA_DISP append end
# A0 = Graphics Context
# A1 = u8 Red
# A2 = u8 Green
# A3 = u8 Blue
# V0 = Pointer to data
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    addiu   v0, v1, 0xFF80             # v0 = FFFFFF80
    sw      v0, 0x02C4(a0)             # 000002C4
    sb      a1, 0x0008(v0)             # FFFFFF88
    sb      a1, 0x000C(v0)             # FFFFFF8C
    sb      a2, 0x0009(v0)             # FFFFFF89
    sb      a2, 0x000D(v0)             # FFFFFF8D
    sb      a3, 0x000A(v0)             # FFFFFF8A
    sb      a3, 0x000E(v0)             # FFFFFF8E
    sb      $zero, 0x0000(v0)          # FFFFFF80
    jr      $ra
    nop


func_80066804:
# Lighting engine related
# Seems to iterate over active light sources
# A0 = Global Context
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s3, 0x004C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      s1, 0x07A8(s3)             # 000007A8
    lui     s8, 0x8013                 # s8 = 80130000
    addiu   s8, s8, 0xBE40             # s8 = 8012BE40
    beq     s1, $zero, lbl_800669C4
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f28                  # $f28 = 120.00
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f26                  # $f26 = -120.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f24, 0x7A90($at)          # 80107A90
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f22                  # $f22 = 160.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s7, $sp, 0x0084            # s7 = FFFFFFDC
    addiu   s6, $sp, 0x0088            # s6 = FFFFFFE0
    addiu   s5, $sp, 0x0094            # s5 = FFFFFFEC
    addiu   s4, $zero, 0x0002          # s4 = 00000002
    lw      v0, 0x0000(s1)             # 00000000
lbl_80066894:
    lbu     t6, 0x0000(v0)             # 00000000
    addiu   s0, v0, 0x0002             # s0 = 00000002
    bnel    s4, t6, lbl_800669BC
    lw      s1, 0x0008(s1)             # 00000008
    lh      t7, 0x0000(s0)             # 00000002
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFEC
    mtc1    t7, $f4                    # $f4 = 0.00
    or      a2, s6, $zero              # a2 = FFFFFFE0
    or      a3, s7, $zero              # a3 = FFFFFFDC
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0094($sp)
    lh      t8, 0x0002(s0)             # 00000004
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0098($sp)
    lh      t9, 0x0004(s0)             # 00000006
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_8001F7A0
    swc1    $f18, 0x009C($sp)
    sb      $zero, 0x0009(s0)          # 0000000B
    lwc1    $f4, 0x0090($sp)
    lwc1    $f6, 0x0088($sp)
    lwc1    $f14, 0x0084($sp)
    c.lt.s  $f20, $f4
    nop
    bc1fl   lbl_800669BC
    lw      s1, 0x0008(s1)             # 00000008
    mul.s   $f2, $f6, $f14
    lwc1    $f8, 0x008C($sp)
    abs.s   $f0, $f2
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_800669BC
    lw      s1, 0x0008(s1)             # 00000008
    mul.s   $f12, $f8, $f14
    abs.s   $f0, $f12
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_800669BC
    lw      s1, 0x0008(s1)             # 00000008
    mul.s   $f10, $f4, $f14
    nop
    mul.s   $f16, $f10, $f24
    nop
    mul.s   $f6, $f12, $f26
    trunc.w.s $f18, $f16
    mul.s   $f10, $f2, $f22
    add.s   $f8, $f6, $f28
    mfc1    s2, $f18
    trunc.w.s $f4, $f8
    addiu   s2, s2, 0x3FE0             # s2 = 00003FE0
    add.s   $f16, $f10, $f22
    mfc1    t2, $f4
    trunc.w.s $f18, $f16
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  7
    mfc1    t6, $f18
    addu    t4, s8, t3
    sll     t7, t6,  1
    addu    t8, t4, t7
    lhu     a0, 0x0000(t8)             # 00000000
    jal     func_8005BEA0
    sll     a0, a0,  2
    sra     t9, v0,  3
    slt     $at, s2, t9
    beq     $at, $zero, lbl_800669B8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0009(s0)             # 0000000B
lbl_800669B8:
    lw      s1, 0x0008(s1)             # 00000008
lbl_800669BC:
    bnel    s1, $zero, lbl_80066894
    lw      v0, 0x0000(s1)             # 00000000
lbl_800669C4:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80066A08:
# gameplay_keep d. list: 15BC0 & 15C00
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s8, 0x0048($sp)
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      s3, 0x07A8(s8)             # 000007A8
    lw      s1, 0x0000(s8)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    jal     func_8007E7B8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1A01             # t8 = E3001A01
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xE300                 # t1 = E3000000
    ori     t1, t1, 0x1801             # t1 = E3001801
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0x0401                 # t4 = 04010000
    addiu   t4, t4, 0x5BC0             # t4 = 04015BC0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    beq     s3, $zero, lbl_80066BD4
    lui     $at, 0x8010                # $at = 80100000
    lui     s7, 0xDA38                 # s7 = DA380000
    ori     s7, s7, 0x0003             # s7 = DA380003
    lwc1    $f22, 0x7A94($at)          # 80107A94
    lui     s6, 0xFA00                 # s6 = FA000000
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    lw      v1, 0x0000(s3)             # 00000000
lbl_80066AD4:
    lbu     t5, 0x0000(v1)             # 00000000
    addiu   v0, v1, 0x0002             # v0 = 00000002
    bnel    s5, t5, lbl_80066BCC
    lw      s3, 0x0008(s3)             # 00000008
    lbu     t6, 0x0009(v0)             # 0000000B
    beql    t6, $zero, lbl_80066BCC
    lw      s3, 0x0008(s3)             # 00000008
    lh      v1, 0x000A(v0)             # 0000000C
    multu   v1, v1
    mflo    t7
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f20, $f6, $f22
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lbu     t3, 0x0006(v0)             # 00000008
    lbu     t0, 0x0008(v0)             # 0000000A
    lbu     t7, 0x0007(v0)             # 00000009
    sll     t4, t3, 24
    sll     t1, t0,  8
    or      t5, t1, t4                 # t5 = E7015BC1
    sll     t8, t7, 16
    or      t9, t5, t8                 # t9 = E7015BC9
    ori     t0, t9, 0x0032             # t0 = E7015BFB
    sw      t0, 0x0004(s0)             # 00000004
    lh      t1, 0x0004(v0)             # 00000006
    lh      t2, 0x0000(v0)             # 00000002
    lh      t3, 0x0002(v0)             # 00000004
    mtc1    t1, $f16                   # $f16 = -2362913000000000000000.00
    mtc1    t2, $f8                    # $f8 = 0.00
    mtc1    t3, $f10                   # $f10 = -2305843000000000000.00
    cvt.s.w $f16, $f16
    lui     s4, 0x0401                 # s4 = 04010000
    addiu   s4, s4, 0x5C00             # s4 = 04015C00
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f12, $f8
    mfc1    a2, $f16
    jal     func_800AA7F4
    cvt.s.w $f14, $f10
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s1)             # 000002D0
    addiu   t4, s2, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s3, 0x0008(s3)             # 00000008
lbl_80066BCC:
    bnel    s3, $zero, lbl_80066AD4
    lw      v1, 0x0000(s3)             # 00000000
lbl_80066BD4:
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
