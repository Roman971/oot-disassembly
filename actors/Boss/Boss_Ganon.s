.section .text
func_809F1D00:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     s0, 0x0001                 # s0 = 00010000
    addu    s0, s0, a0
    lw      s0, 0x1E10(s0)             # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F1D20:
    lbu     t6, 0x0000(s0)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809F1E20
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sb      t7, 0x0000(s0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     t2, %hi(var_809FFDDC)      # t2 = 80A00000
    addiu   t2, t2, %lo(var_809FFDDC)  # t2 = 809FFDDC
    sw      t9, 0x0004(s0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f4                   # $f4 = -1.50
    sw      t8, 0x0008(s0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    lui     $at, %hi(var_80A12BC0)     # $at = 80A10000
    sw      t9, 0x000C(s0)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(s0)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(s0)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(s0)             # 00010018
    lw      t4, 0x0000(t2)             # 809FFDDC
    sw      t4, 0x001C(s0)             # 0001001C
    lw      t3, 0x0004(t2)             # 809FFDE0
    sw      t3, 0x0020(s0)             # 00010020
    lw      t4, 0x0008(t2)             # 809FFDE4
    swc1    $f14, 0x0034(s0)           # 00010034
    swc1    $f4, 0x0020(s0)            # 00010020
    sw      t4, 0x0024(s0)             # 00010024
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12BC0)($at)
    swc1    $f0, 0x0044(s0)            # 00010044
    lui     $at, %hi(var_80A12BC4)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12BC4)($at)
    swc1    $f0, 0x0048(s0)            # 00010048
    lui     $at, %hi(var_80A12BC8)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12BC8)($at)
    trunc.w.s $f6, $f0
    lui     t0, %hi(var_809FFDE8)      # t0 = 80A00000
    addiu   t0, t0, %lo(var_809FFDE8)  # t0 = 809FFDE8
    lui     $at, 0x41A0                # $at = 41A00000
    mfc1    t6, $f6
    mtc1    $at, $f12                  # $f12 = 20.00
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  2
    subu    t9, t9, t8
    addu    v0, t9, t0
    lbu     t1, 0x0000(v0)             # 00000000
    sb      t1, 0x0028(s0)             # 00010028
    lbu     t2, 0x0001(v0)             # 00000001
    sb      t2, 0x0029(s0)             # 00010029
    lbu     t3, 0x0002(v0)             # 00000002
    jal     func_80026D64
    sb      t3, 0x002A(s0)             # 0001002A
    trunc.w.s $f8, $f0
    mfc1    t7, $f8
    beq     $zero, $zero, lbl_809F1E2C
    sb      t7, 0x0001(s0)             # 00010001
lbl_809F1E20:
    slti    $at, v0, 0x00C8
    bne     $at, $zero, lbl_809F1D20
    addiu   s0, s0, 0x004C             # s0 = 0001004C
lbl_809F1E2C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F1E40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    lw      v1, 0x1E10(v1)             # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F1E58:
    lbu     t6, 0x0000(v1)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809F1F20
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v1)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0004(v1)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t8, 0x0008(v1)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v1)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v1)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v1)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v1)             # 00010018
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v1)             # 0001001C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v1)             # 00010020
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(v1)             # 00010024
    lwc1    $f4, 0x0030($sp)
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x0034(v1)            # 00010034
    jal     func_80026D64
    sw      v1, 0x0018($sp)
    trunc.w.s $f10, $f0
    lw      v1, 0x0018($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t7, $f10
    nop
    addiu   t8, t7, 0x00C8             # t8 = 000000C8
    sh      t8, 0x002E(v1)             # 0000002E
    lh      t9, 0x0036($sp)
    jal     func_80026D64
    sh      t9, 0x0030(v1)             # 00000030
    trunc.w.s $f16, $f0
    lw      v1, 0x0018($sp)
    mfc1    t3, $f16
    beq     $zero, $zero, lbl_809F1F2C
    sb      t3, 0x0001(v1)             # 00000001
lbl_809F1F20:
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809F1E58
    addiu   v1, v1, 0x004C             # v1 = 0000004C
lbl_809F1F2C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F1F3C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     s0, 0x0001                 # s0 = 00010000
    addu    s0, s0, a0
    lw      s0, 0x1E10(s0)             # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F1F58:
    lbu     t6, 0x0000(s0)             # 00010000
    bne     t6, $zero, lbl_809F2054
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0000(s0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0004(s0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sw      t8, 0x0008(s0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t9, 0x000C(s0)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(s0)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(s0)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(s0)             # 00010018
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(s0)             # 0001001C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(s0)             # 00010020
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(s0)             # 00010024
    lwc1    $f4, 0x0030($sp)
    swc1    $f10, 0x0038(s0)           # 00010038
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x0034(s0)            # 00010034
    lwc1    $f18, 0x0034($sp)
    jal     func_80026D64
    swc1    $f18, 0x0040(s0)           # 00010040
    trunc.w.s $f4, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t7, $f4
    nop
    addiu   t8, t7, 0x00C8             # t8 = 000000C8
    sh      t8, 0x002E(s0)             # 0001002E
    lh      t9, 0x003A($sp)
    jal     func_80026D64
    sh      t9, 0x0030(s0)             # 00010030
    trunc.w.s $f6, $f0
    lwc1    $f12, 0x0018(s0)           # 00010018
    lwc1    $f14, 0x0010(s0)           # 00010010
    mfc1    t3, $f6
    jal     func_800AA670
    sb      t3, 0x0001(s0)             # 00010001
    lwc1    $f16, 0x0010(s0)           # 00010010
    lwc1    $f2, 0x0018(s0)            # 00010018
    swc1    $f0, 0x0048(s0)            # 00010048
    mul.s   $f8, $f16, $f16
    lwc1    $f14, 0x0014(s0)           # 00010014
    mul.s   $f10, $f2, $f2
    add.s   $f0, $f8, $f10
    jal     func_800AA670
    sqrt.s  $f12, $f0
    neg.s   $f18, $f0
    beq     $zero, $zero, lbl_809F206C
    swc1    $f18, 0x0044(s0)           # 00010044
lbl_809F2054:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809F1F58
    addiu   s0, s0, 0x004C             # s0 = 0001004C
lbl_809F206C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F2080:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    mtc1    a1, $f12                   # $f12 = 0.00
    sra     a2, a2, 16
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F20A0:
    lbu     t6, 0x0000(v0)             # 00010000
    bnel    t6, $zero, lbl_809F2130
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lui     v1, %hi(var_809FFDDC)      # v1 = 80A00000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   v1, v1, %lo(var_809FFDDC)  # v1 = 809FFDDC
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(v1)             # 809FFDDC
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f4                   # $f4 = -2000.00
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(v1)             # 809FFDE0
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(v1)             # 809FFDE4
    swc1    $f4, 0x0008(v0)            # 00010008
    div.s   $f8, $f12, $f6
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(v1)             # 809FFDDC
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(v1)             # 809FFDE0
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(v1)             # 809FFDE4
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(v1)             # 809FFDDC
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(v1)             # 809FFDE0
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(v1)             # 809FFDE4
    swc1    $f8, 0x0034(v0)            # 00010034
    sh      a2, 0x002E(v0)             # 0001002E
    sb      $zero, 0x0001(v0)          # 00010001
    jr      $ra
    sw      t3, 0x0024(v0)             # 00010024
lbl_809F212C:
    addiu   v1, v1, 0x0001             # v1 = 809FFDDD
lbl_809F2130:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x004B
    bne     $at, $zero, lbl_809F20A0
    addiu   v0, v0, 0x004C             # v0 = 0001004C
    jr      $ra
    nop


func_809F214C:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F2168:
    lbu     t6, 0x0000(v0)             # 00010000
    bnel    t6, $zero, lbl_809F21D4
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lui     v1, %hi(var_809FFDDC)      # v1 = 80A00000
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   v1, v1, %lo(var_809FFDDC)  # v1 = 809FFDDC
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(v1)             # 809FFDDC
    sw      t9, 0x0010(v0)             # 00010010
    lw      t8, 0x0004(v1)             # 809FFDE0
    sw      t8, 0x0014(v0)             # 00010014
    lw      t9, 0x0008(v1)             # 809FFDE4
    sw      t9, 0x0018(v0)             # 00010018
    lw      t1, 0x0000(v1)             # 809FFDDC
    sw      t1, 0x001C(v0)             # 0001001C
    lw      t0, 0x0004(v1)             # 809FFDE0
    sw      t0, 0x0020(v0)             # 00010020
    lw      t1, 0x0008(v1)             # 809FFDE4
    sh      $zero, 0x002E(v0)          # 0001002E
    swc1    $f12, 0x0034(v0)           # 00010034
    swc1    $f14, 0x0048(v0)           # 00010048
    sw      t1, 0x0024(v0)             # 00010024
    lwc1    $f4, 0x000C($sp)
    sb      $zero, 0x0001(v0)          # 00010001
    jr      $ra
    swc1    $f4, 0x003C(v0)            # 0001003C
lbl_809F21D0:
    addiu   v1, v1, 0x0001             # v1 = 809FFDDD
lbl_809F21D4:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809F2168
    addiu   v0, v0, 0x004C             # v0 = 0001004C
    jr      $ra
    nop


func_809F21F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F2210:
    lbu     t6, 0x0000(v0)             # 00010000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t6, $zero, lbl_809F22C8
    sra     v1, v1, 16
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     v1, %hi(var_809FFDDC)      # v1 = 80A00000
    addiu   v1, v1, %lo(var_809FFDDC)  # v1 = 809FFDDC
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(v1)             # 809FFDDC
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(v1)             # 809FFDE0
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(v1)             # 809FFDE4
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(v1)             # 809FFDDC
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(v1)             # 809FFDE0
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(v1)             # 809FFDE4
    swc1    $f14, 0x0034(v0)           # 00010034
    swc1    $f4, 0x0040(v0)            # 00010040
    sw      t3, 0x0024(v0)             # 00010024
    lwc1    $f6, 0x002C($sp)
    swc1    $f6, 0x0038(v0)            # 00010038
    jal     func_80026D64
    sw      v0, 0x0018($sp)
    lw      v0, 0x0018($sp)
    trunc.w.s $f8, $f0
    sh      $zero, 0x002C(v0)          # 0000002C
    lbu     v1, 0x002D(v0)             # 0000002D
    mfc1    t5, $f8
    sb      v1, 0x0001(v0)             # 00000001
    sh      v1, 0x002E(v0)             # 0000002E
    beq     $zero, $zero, lbl_809F22D4
    sh      t5, 0x0030(v0)             # 00000030
lbl_809F22C8:
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809F2210
    addiu   v0, v0, 0x004C             # v0 = 0000004C
lbl_809F22D4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F22E4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    a2, $f14                   # $f14 = 0.00
    lui     a2, %hi(var_809FFDDC)      # a2 = 80A00000
    addiu   a2, a2, %lo(var_809FFDDC)  # a2 = 809FFDDC
    sw      $ra, 0x0014($sp)
    sw      a3, 0x0034($sp)
    lh      t6, 0x003A($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    sll     t7, t6,  2
    addu    t7, t7, t6
    lw      v1, 0x1E10(v1)             # 00011E10
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addu    v0, v1, t7
    sb      t8, 0x0000(v0)             # 00000000
    lw      t0, 0x0000(a1)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sw      t0, 0x0004(v0)             # 00000004
    lw      t9, 0x0004(a1)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t9, 0x0008(v0)             # 00000008
    lw      t0, 0x0008(a1)             # 00000008
    sw      t0, 0x000C(v0)             # 0000000C
    lw      t2, 0x0000(a2)             # 809FFDDC
    sw      t2, 0x0010(v0)             # 00000010
    lw      t1, 0x0004(a2)             # 809FFDE0
    sw      t1, 0x0014(v0)             # 00000014
    lw      t2, 0x0008(a2)             # 809FFDE4
    sw      t2, 0x0018(v0)             # 00000018
    lw      t4, 0x0000(a2)             # 809FFDDC
    sw      t4, 0x001C(v0)             # 0000001C
    lw      t3, 0x0004(a2)             # 809FFDE0
    sw      t3, 0x0020(v0)             # 00000020
    lw      t4, 0x0008(a2)             # 809FFDE4
    swc1    $f14, 0x0034(v0)           # 00000034
    swc1    $f4, 0x0040(v0)            # 00000040
    sw      t4, 0x0024(v0)             # 00000024
    lwc1    $f6, 0x0034($sp)
    swc1    $f6, 0x0038(v0)            # 00000038
    jal     func_80026D64
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
    trunc.w.s $f8, $f0
    sh      $zero, 0x002C(v0)          # 0000002C
    lbu     v1, 0x002D(v0)             # 0000002D
    mfc1    t6, $f8
    sb      v1, 0x0001(v0)             # 00000001
    sh      v1, 0x002E(v0)             # 0000002E
    sh      t6, 0x0030(v0)             # 00000030
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809F23C8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F23E8:
    lbu     t6, 0x0000(v0)             # 00010000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t6, $zero, lbl_809F24A4
    sra     v1, v1, 16
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     v1, %hi(var_809FFDDC)      # v1 = 80A00000
    addiu   v1, v1, %lo(var_809FFDDC)  # v1 = 809FFDDC
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     $at, %hi(var_80A12BCC)     # $at = 80A10000
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(v1)             # 809FFDDC
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(v1)             # 809FFDE0
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(v1)             # 809FFDE4
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(v1)             # 809FFDDC
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(v1)             # 809FFDE0
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(v1)             # 809FFDE4
    sh      t4, 0x002C(v0)             # 0001002C
    sw      t3, 0x0024(v0)             # 00010024
    lwc1    $f4, %lo(var_80A12BCC)($at)
    swc1    $f14, 0x0034(v0)           # 00010034
    lui     $at, 0x42C8                # $at = 42C80000
    swc1    $f4, 0x0040(v0)            # 00010040
    lwc1    $f6, 0x002C($sp)
    mtc1    $at, $f12                  # $f12 = 100.00
    swc1    $f6, 0x0038(v0)            # 00010038
    jal     func_80026D64
    sw      v0, 0x0018($sp)
    trunc.w.s $f8, $f0
    lw      v0, 0x0018($sp)
    andi    t7, $zero, 0x00FF          # t7 = 00000000
    mfc1    t6, $f8
    sh      t7, 0x002E(v0)             # 0000002E
    sb      $zero, 0x0001(v0)          # 00000001
    beq     $zero, $zero, lbl_809F24B0
    sh      t6, 0x0030(v0)             # 00000030
lbl_809F24A4:
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809F23E8
    addiu   v0, v0, 0x004C             # v0 = 0000004C
lbl_809F24B0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F24C0:
    mtc1    a2, $f12                   # $f12 = 0.00
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F24D4:
    lbu     t6, 0x0000(v0)             # 00010000
    bne     t6, $zero, lbl_809F255C
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     v1, %hi(var_809FFDDC)      # v1 = 80A00000
    addiu   v1, v1, %lo(var_809FFDDC)  # v1 = 809FFDDC
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    div.s   $f8, $f12, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(v1)             # 809FFDDC
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(v1)             # 809FFDE0
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(v1)             # 809FFDE4
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(v1)             # 809FFDDC
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(v1)             # 809FFDE0
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(v1)             # 809FFDE4
    swc1    $f8, 0x0034(v0)            # 00010034
    sb      $zero, 0x0001(v0)          # 00010001
    sh      $zero, 0x002C(v0)          # 0001002C
    sh      $zero, 0x002E(v0)          # 0001002E
    swc1    $f4, 0x0038(v0)            # 00010038
    jr      $ra
    sw      t3, 0x0024(v0)             # 00010024
lbl_809F255C:
    addiu   v1, v1, 0x0001             # v1 = 809FFDDD
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809F24D4
    addiu   v0, v0, 0x004C             # v0 = 0001004C
    jr      $ra
    nop


func_809F257C:
    lwc1    $f4, 0x0000(a0)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0046(a1)             # 00000046
    lwc1    $f8, 0x0004(a0)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0048(a1)             # 00000048
    lwc1    $f16, 0x0008(a0)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x004A(a1)             # 0000004A
    jr      $ra
    nop


func_809F25C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sll     a1, a2, 16
    sra     a1, a1, 16
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      t6, 0x0018($sp)
    sll     t8, v0,  4
    addu    t8, t8, v0
    sw      v0, 0x013C(t6)             # 0000013C
    lw      t7, 0x001C($sp)
    sll     t8, t8,  2
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t9, t7, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lw      $ra, 0x0014($sp)
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809F2630:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lw      v1, 0x1C44(s1)             # 00001C44
    or      a0, s1, $zero              # a0 = 00000000
    slti    $at, t6, 0x0064
    beql    $at, $zero, lbl_809F284C
    lw      t3, 0x0004(s0)             # 00000004
    jal     func_800204D0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     a0, %hi(var_80A13F88)      # a0 = 80A10000
    lui     $at, 0x0001                # $at = 00010000
    addiu   a0, a0, %lo(var_80A13F88)  # a0 = 80A13F88
    addu    $at, $at, s1
    sw      a0, 0x1E10($at)            # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x004C          # v1 = 0000004C
lbl_809F2684:
    multu   v0, v1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x00C8
    mflo    t7
    addu    t8, a0, t7
    bne     $at, $zero, lbl_809F2684
    sb      $zero, 0x0000(t8)          # 00000000
    lui     $at, %hi(var_80A13F80)     # $at = 80A10000
    sw      s0, %lo(var_80A13F80)($at)
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    lui     a1, %hi(var_809FFDF4)      # a1 = 80A00000
    sb      t9, 0x00AF(s0)             # 000000AF
    addiu   a1, a1, %lo(var_809FFDF4)  # a1 = 809FFDF4
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f2
    mfc1    a3, $f2
    jal     func_8001EC20
    nop
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x00E8             # a2 = 060100E8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    addiu   a1, s0, 0x0600             # a1 = 00000600
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809FFD70)      # a3 = 80A00000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_809FFD70)  # a3 = 809FFD70
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a1, s1, $zero              # a1 = 00000000
    beq     t0, $at, lbl_809F2768
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809F2C38
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    beq     $zero, $zero, lbl_809F27E8
    sh      t1, 0x0708(s0)             # 00000708
lbl_809F2768:
    jal     func_8002049C
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    sltu    v1, $zero, v0
    beq     v1, $zero, lbl_809F27B8
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x00A4(s1)             # 000000A4
    xori    v1, v0, 0x004F             # v1 = 0000004F
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_809F27B8
    nop
    xori    v1, v0, 0x001A             # v1 = 0000001A
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_809F27B8
    nop
    xori    v1, v0, 0x000E             # v1 = 0000000E
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_809F27B8
    nop
    xori    v1, v0, 0x000F             # v1 = 0000000F
    sltiu   v1, v1, 0x0001
lbl_809F27B8:
    bne     v1, $zero, lbl_809F27D0
    nop
    jal     func_809F45A0
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809F27E0
    or      a0, s0, $zero              # a0 = 00000000
lbl_809F27D0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F2BC4
    lw      $ra, 0x003C($sp)
lbl_809F27E0:
    jal     func_809F45A0
    or      a1, s1, $zero              # a1 = 00000000
lbl_809F27E8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0028($sp)
    sw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x016F          # a3 = 0000016F
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    jal     func_800253F0
    swc1    $f0, 0x0018($sp)
    lui     $at, %hi(var_80A13F7C)     # $at = 80A10000
    sw      v0, %lo(var_80A13F7C)($at)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    beq     $zero, $zero, lbl_809F2BC4
    lw      $ra, 0x003C($sp)
    lw      t3, 0x0004(s0)             # 00000004
lbl_809F284C:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lh      v0, 0x001C(s0)             # 0000001C
    and     t4, t3, $at
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    slti    $at, v0, 0x00C8
    sw      t4, 0x0004(s0)             # 00000004
    bne     $at, $zero, lbl_809F2AA4
    swc1    $f4, 0x01BC(s0)            # 000001BC
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    bne     v0, $at, lbl_809F289C
    lui     t5, %hi(func_809FC2CC)     # t5 = 80A00000
    lui     t6, %hi(func_809FCDEC)     # t6 = 80A00000
    addiu   t5, t5, %lo(func_809FC2CC) # t5 = 809FC2CC
    addiu   t6, t6, %lo(func_809FCDEC) # t6 = 809FCDEC
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t5, 0x0130(s0)             # 00000130
    sw      t6, 0x0134(s0)             # 00000134
    beq     $zero, $zero, lbl_809F2BC0
    sh      t7, 0x0198(s0)             # 00000198
lbl_809F289C:
    addiu   $at, $zero, 0x0190         # $at = 00000190
    bne     v0, $at, lbl_809F28C8
    lui     t8, %hi(func_809FC2CC)     # t8 = 80A00000
    lui     t9, %hi(func_809FCDEC)     # t9 = 80A00000
    addiu   t8, t8, %lo(func_809FC2CC) # t8 = 809FC2CC
    addiu   t9, t9, %lo(func_809FCDEC) # t9 = 809FCDEC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t8, 0x0130(s0)             # 00000130
    sw      t9, 0x0134(s0)             # 00000134
    beq     $zero, $zero, lbl_809F2BC0
    sh      t0, 0x0198(s0)             # 00000198
lbl_809F28C8:
    slti    $at, v0, 0x0104
    bne     $at, $zero, lbl_809F2980
    lui     t1, %hi(func_809FD730)     # t1 = 80A00000
    lh      t4, 0x001C(s0)             # 0000001C
    lui     t2, %hi(func_809FE444)     # t2 = 80A00000
    addiu   t1, t1, %lo(func_809FD730) # t1 = 809FD730
    subu    t5, $zero, t4
    sll     t6, t5,  1
    addiu   t2, t2, %lo(func_809FE444) # t2 = 809FE444
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    addiu   t7, t6, 0x0208             # t7 = 809FCFF4
    sw      t1, 0x0130(s0)             # 00000130
    sw      t2, 0x0134(s0)             # 00000134
    sh      t3, 0x01B2(s0)             # 000001B2
    sh      t7, 0x0192(s0)             # 00000192
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
lbl_809F2910:
    multu   v0, v1
    lw      t1, 0x0000(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000F
    mflo    t8
    addu    t9, s0, t8
    sw      t1, 0x02DC(t9)             # 809FD0C8
    lw      t0, 0x0004(a0)             # 00000028
    sw      t0, 0x02E0(t9)             # 809FD0CC
    lw      t1, 0x0008(a0)             # 0000002C
    bne     $at, $zero, lbl_809F2910
    sw      t1, 0x02E4(t9)             # 809FD0D0
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sh      t2, 0x01A8(s0)             # 000001A8
    addiu   a1, s0, 0x0600             # a1 = 00000600
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809FFD9C)      # a3 = 80A00000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_809FFD9C)  # a3 = 809FFD9C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_809F2BC4
    lw      $ra, 0x003C($sp)
lbl_809F2980:
    slti    $at, v0, 0x00FA
    bne     $at, $zero, lbl_809F2A0C
    lui     t1, %hi(func_809FD100)     # t1 = 80A00000
    lui     t3, %hi(func_809FD730)     # t3 = 80A00000
    lui     t4, %hi(func_809FE444)     # t4 = 80A00000
    addiu   t3, t3, %lo(func_809FD730) # t3 = 809FD730
    addiu   t4, t4, %lo(func_809FE444) # t4 = 809FE444
    sw      t3, 0x0130(s0)             # 00000130
    sw      t4, 0x0134(s0)             # 00000134
    lui     $at, %hi(var_80A12BD0)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12BD0)($at)
    trunc.w.s $f6, $f0
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mfc1    t6, $f6
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    sh      t6, 0x0192(s0)             # 00000192
lbl_809F29CC:
    multu   v0, v1
    lw      t0, 0x0000(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000F
    mflo    t7
    addu    t8, s0, t7
    sw      t0, 0x02DC(t8)             # 000002DC
    lw      t9, 0x0004(a0)             # 00000028
    sw      t9, 0x02E0(t8)             # 000002E0
    lw      t0, 0x0008(a0)             # 0000002C
    bne     $at, $zero, lbl_809F29CC
    sw      t0, 0x02E4(t8)             # 000002E4
    beq     $zero, $zero, lbl_809F2BC0
    swc1    $f2, 0x01BC(s0)            # 000001BC
lbl_809F2A0C:
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f8                   # $f8 = 11.00
    lh      t3, 0x001C(s0)             # 0000001C
    lui     t2, %hi(func_809FD4F0)     # t2 = 80A00000
    addiu   t1, t1, %lo(func_809FD100) # t1 = FFFFD100
    addiu   t2, t2, %lo(func_809FD4F0) # t2 = 809FD4F0
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    sw      t1, 0x0130(s0)             # 00000130
    sw      t2, 0x0134(s0)             # 00000134
    bne     t3, $at, lbl_809F2A44
    swc1    $f8, 0x0068(s0)            # 00000068
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    beq     $zero, $zero, lbl_809F2A68
    sh      t4, 0x01A6(s0)             # 000001A6
lbl_809F2A44:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64
    nop
    trunc.w.s $f10, $f0
    mfc1    t8, $f10
    nop
    addiu   t9, t8, 0x0003             # t9 = 00000003
    sh      t9, 0x01A6(s0)             # 000001A6
lbl_809F2A68:
    lui     $at, %hi(var_80A12BD4)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12BD4)($at)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
lbl_809F2A78:
    multu   v0, v1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000F
    mflo    t0
    addu    t1, s0, t0
    bne     $at, $zero, lbl_809F2A78
    swc1    $f12, 0x02E0(t1)           # 000002E0
    beq     $zero, $zero, lbl_809F2BC4
    lw      $ra, 0x003C($sp)
lbl_809F2AA4:
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f18                  # $f18 = 12.00
    lui     t2, %hi(func_809FC2CC)     # t2 = 80A00000
    lui     t3, %hi(func_809FCDEC)     # t3 = 80A00000
    addiu   t2, t2, %lo(func_809FC2CC) # t2 = 809FC2CC
    addiu   t3, t3, %lo(func_809FCDEC) # t3 = 809FCDEC
    sw      t2, 0x0130(s0)             # 00000130
    sw      t3, 0x0134(s0)             # 00000134
    swc1    $f18, 0x0068(s0)           # 00000068
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f4, 0x0024(v1)            # 00000030
    lwc1    $f6, 0x0024(s0)            # 00000024
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0028(v1)            # 00000034
    sub.s   $f14, $f4, $f6
    lwc1    $f4, 0x0028(s0)            # 00000028
    add.s   $f18, $f8, $f10
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0058($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f8, 0x002C(v1)            # 00000038
    swc1    $f14, 0x005C($sp)
    sub.s   $f12, $f8, $f10
    jal     func_800AA4F8
    swc1    $f12, 0x0054($sp)
    lwc1    $f2, 0x005C($sp)
    lwc1    $f16, 0x0054($sp)
    sh      v0, 0x0032(s0)             # 00000032
    mul.s   $f18, $f2, $f2
    lwc1    $f14, 0x0058($sp)
    mul.s   $f4, $f16, $f16
    add.s   $f0, $f18, $f4
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0030(s0)             # 00000030
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_80A12BD8)     # $at = 80A10000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809F2B94
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    jal     func_80026D90
    lwc1    $f12, %lo(var_80A12BD8)($at)
    trunc.w.s $f6, $f0
    lh      t4, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80A12BDC)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12BDC)($at)
    mfc1    t8, $f6
    nop
    addu    t9, t4, t8
    jal     func_80026D90
    sh      t9, 0x0032(s0)             # 00000032
    trunc.w.s $f8, $f0
    lh      t0, 0x0030(s0)             # 00000030
    mfc1    t5, $f8
    nop
    addu    t6, t0, t5
    sh      t6, 0x0030(s0)             # 00000030
    addiu   t7, $zero, 0x0003          # t7 = 00000003
lbl_809F2B94:
    sh      t7, 0x01A8(s0)             # 000001A8
    addiu   a1, s0, 0x0600             # a1 = 00000600
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809FFD9C)      # a3 = 80A00000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_809FFD9C)  # a3 = 809FFD9C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
lbl_809F2BC0:
    lw      $ra, 0x003C($sp)
lbl_809F2BC4:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809F2BD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   a1, a2, 0x0600             # a1 = 00000600
    slti    $at, v0, 0x00C8
    bne     $at, $zero, lbl_809F2C04
    slti    $at, v0, 0x0104
    bnel    $at, $zero, lbl_809F2C18
    slti    $at, v0, 0x0064
lbl_809F2C04:
    jal     func_8004ABCC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      v0, 0x001C(a2)             # 0000001C
    slti    $at, v0, 0x0064
lbl_809F2C18:
    beq     $at, $zero, lbl_809F2C28
    addiu   a0, a2, 0x0140             # a0 = 00000140
    jal     func_8008D6D0
    lw      a1, 0x001C($sp)
lbl_809F2C28:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809F2C38:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x017D          # a1 = 0000017D
    lw      a0, 0x0024($sp)
    bgez    v0, lbl_809F2C84
    or      a3, v0, $zero              # a3 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F2D0C
    lw      $ra, 0x001C($sp)
lbl_809F2C84:
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80081688
    sw      a3, 0x0028($sp)
    beq     v0, $zero, lbl_809F2CFC
    lw      a3, 0x0028($sp)
    lui     t6, %hi(func_809F2DBC)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F2DBC) # t6 = 809F2DBC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0184(s0)             # 00000184
    sb      t7, 0x0188(s0)             # 00000188
    sw      a3, 0x013C(s0)             # 0000013C
    lw      t8, 0x0034($sp)
    sll     t9, a3,  4
    addu    t9, t9, a3
    sll     t9, t9,  2
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t0, t8, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a1, 0x0600                 # a1 = 06000000
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    addiu   a1, a1, 0x5FFC             # a1 = 06005FFC
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     $zero, $zero, lbl_809F2D0C
    lw      $ra, 0x001C($sp)
lbl_809F2CFC:
    lui     t3, %hi(func_809F2C38)     # t3 = 809F0000
    addiu   t3, t3, %lo(func_809F2C38) # t3 = 809F2C38
    sw      t3, 0x0184(s0)             # 00000184
    lw      $ra, 0x001C($sp)
lbl_809F2D0C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809F2D1C:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sll     t6, a1,  2
    subu    t6, t6, a1
    lui     t7, %hi(var_809FFE04)      # t7 = 80A00000
    addiu   t7, t7, %lo(var_809FFE04)  # t7 = 809FFE04
    sll     t6, t6,  2
    addu    v0, t6, t7
    lh      t8, 0x0000(v0)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0670(a0)            # 00000670
    lh      t9, 0x0002(v0)             # 00000002
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0674(a0)           # 00000674
    lh      t0, 0x0004(v0)             # 00000004
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0678(a0)           # 00000678
    lh      t1, 0x0006(v0)             # 00000006
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x067C(a0)            # 0000067C
    lh      t2, 0x0008(v0)             # 00000008
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0680(a0)           # 00000680
    lh      t3, 0x000A(v0)             # 0000000A
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0684(a0)           # 00000684
    jr      $ra
    nop


func_809F2DBC:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0038($sp)
    lui     v0, %hi(var_80A13F7C)      # v0 = 80A10000
    addiu   v0, v0, %lo(var_80A13F7C)  # v0 = 80A13F7C
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sb      $zero, 0x006F($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    lui     t0, 0x0001                 # t0 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x0068($sp)
    lw      t7, 0x013C(s0)             # 0000013C
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s0, 0x0140             # a0 = 00000140
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a1, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    lw      t2, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    swc1    $f4, 0x16A0(t2)            # 000016A0
    lw      t3, 0x0000(v0)             # 80A13F7C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    swc1    $f6, 0x16A4(t3)            # 000016A4
    lw      t4, 0x0000(v0)             # 80A13F7C
    swc1    $f8, 0x16A8(t4)            # 000016A8
    lw      t5, 0x0000(v0)             # 80A13F7C
    swc1    $f10, 0x16C0(t5)           # 000016C0
    lw      t6, 0x0664(s0)             # 00000664
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0664(s0)             # 00000664
    sw      a1, 0x0074($sp)
    jal     func_8008C9C0
    sw      a0, 0x004C($sp)
    lhu     t8, 0x0668(s0)             # 00000668
    sltiu   $at, t8, 0x0017
    beq     $at, $zero, lbl_809F4378
    sll     t8, t8,  2
    lui     $at, %hi(var_80A12BE0)     # $at = 80A10000
    addu    $at, $at, t8
    lw      t8, %lo(var_80A12BE0)($at)
    jr      t8
    nop
var_809F2E8C:
    lw      v0, 0x0068($sp)
    lui     $at, 0x43D7                # $at = 43D70000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f16                  # $f16 = 430.00
    lw      a0, 0x0074($sp)
    lui     $at, 0x42E0                # $at = 42E00000
    mtc1    $at, $f18                  # $f18 = 112.00
    swc1    $f0, 0x0024(v0)            # 00000024
    swc1    $f0, 0x0028(v0)            # 00000028
    swc1    $f16, 0x002C(v0)           # 0000002C
    lui     $at, %hi(var_80A12C3C)     # $at = 80A10000
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, %lo(var_80A12C3C)($at)
    lui     $at, %hi(var_80A12C40)     # $at = 80A10000
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    swc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f6, %lo(var_80A12C40)($at)
    sh      $zero, 0x00B6(s0)          # 000000B6
    jal     func_80052328
    swc1    $f6, 0x00BC(s0)            # 000000BC
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0
    lw      a0, 0x0074($sp)
    sh      v0, 0x066A(s0)             # 0000066A
    lw      a0, 0x0074($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0074($sp)
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t1, $zero, 0x0011          # t1 = 00000011
    swc1    $f8, 0x06E4(s0)            # 000006E4
    lhu     t9, -0x4B4E(t9)            # 8011B4B2
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t9, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_809F2FC4
    or      a1, $zero, $zero           # a1 = 00000000
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lw      t2, 0x0068($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x89F8             # a1 = 060089F8
    swc1    $f10, 0x002C(t2)           # 0000002C
    sb      $zero, 0x070A(s0)          # 0000070A
    lw      a0, 0x004C($sp)
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f16                  # $f16 = 1000.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    jal     func_809F2D1C
    swc1    $f16, 0x01BC(s0)           # 000001BC
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   t3, $zero, 0x006E          # t3 = 0000006E
    sb      v0, 0x0188(s0)             # 00000188
    sh      t3, 0x01AA(s0)             # 000001AA
    addiu   t4, $zero, 0x0140          # t4 = 00000140
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x1000                 # a0 = 10000000
    sh      t4, -0x460C($at)           # 8011B9F4
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    lw      a0, 0x0074($sp)
    beq     $zero, $zero, lbl_809F302C
    addiu   a0, a0, 0x1C24             # a0 = 00001C24
lbl_809F2FC4:
    jal     func_809F2D1C
    sb      t5, 0x070A(s0)             # 0000070A
    lw      a2, 0x0074($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0668(s0)             # 00000668
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f4                   # $f4 = 220.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f6                   # $f6 = -150.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t7, $zero, 0x2000          # t7 = 00002000
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0050($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0179          # a3 = 00000179
    swc1    $f4, 0x0014($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800253F0
    swc1    $f18, 0x0010($sp)
    lui     $at, %hi(var_80A13F84)     # $at = 80A10000
    sw      v0, %lo(var_80A13F84)($at)
    lw      a0, 0x0050($sp)
lbl_809F302C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0074($sp)
    addiu   a3, $zero, 0x015E          # a3 = 0000015E
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    jal     func_800253F0
    swc1    $f0, 0x0018($sp)
    lui     $at, 0x4264                # $at = 42640000
    lui     t9, %hi(var_80A13F7C)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F7C)(t9)
    mtc1    $at, $f8                   # $f8 = 57.00
    nop
    swc1    $f8, 0x169C(t9)            # 80A1169C
var_809F3078:
    lw      t1, 0x0664(s0)             # 00000664
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   $at, $zero, 0x0046         # $at = 00000046
    bne     t1, $at, lbl_809F4378
    sb      t0, 0x0190(s0)             # 00000190
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sh      t2, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F309C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      a0, 0x0074($sp)
    bne     v1, $at, lbl_809F30C8
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F30C8:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v1, $at, lbl_809F30EC
    lw      a0, 0x0068($sp)
    lw      t4, 0x0668(a0)             # 00000668
    lhu     a1, 0x0092(t4)             # 00000092
    addiu   a1, a1, 0x6816             # a1 = 00006816
    jal     func_80022F84
    andi    a1, a1, 0xFFFF             # a1 = 00006816
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F30EC:
    addiu   $at, $zero, 0x0023         # $at = 00000023
    bne     v1, $at, lbl_809F4378
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = 300.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t5, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lui     $at, %hi(var_80A12C44)     # $at = 80A10000
    swc1    $f16, 0x0674(s0)           # 00000674
    swc1    $f10, 0x0670(s0)           # 00000670
    swc1    $f18, 0x0678(s0)           # 00000678
    swc1    $f4, 0x067C(s0)            # 0000067C
    lwc1    $f6, %lo(var_80A12C44)($at)
    swc1    $f6, 0x06F4(s0)            # 000006F4
var_809F3134:
    sb      $zero, 0x0190(s0)          # 00000190
    lw      t6, 0x0074($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    jal     func_800CF470
    lwc1    $f12, 0x06F4(s0)           # 000006F4
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    lwc1    $f18, 0x0674(s0)           # 00000674
    lwc1    $f12, 0x06F4(s0)           # 000006F4
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    jal     func_800D2CD0
    swc1    $f4, 0x0680(s0)            # 00000680
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f6                   # $f6 = -300.00
    lwc1    $f10, 0x0678(s0)           # 00000678
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f8, $f0, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x06F4             # a0 = 000006F4
    lui     a1, 0x3E80                 # a1 = 3E800000
    lw      a3, 0x06A4(s0)             # 000006A4
    add.s   $f16, $f8, $f10
    jal     func_80064280
    swc1    $f16, 0x0684(s0)           # 00000684
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    addiu   a0, s0, 0x06A4             # a0 = 000006A4
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t7, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    lw      a0, 0x0074($sp)
    bne     t7, $at, lbl_809F4378
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sh      t8, 0x0668(s0)             # 00000668
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      $zero, 0x0664(s0)          # 00000664
var_809F31F4:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    beq     v1, $zero, lbl_809F3214
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    beq     v1, $at, lbl_809F3214
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_809F3240
lbl_809F3214:
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    lui     $at, 0x430E                # $at = 430E0000
    lwc1    $f18, 0x0674(s0)           # 00000674
    mtc1    $at, $f10                  # $f10 = 142.00
    lwc1    $f8, 0x0678(s0)            # 00000678
    add.s   $f6, $f18, $f4
    lw      v1, 0x0664(s0)             # 00000664
    sub.s   $f16, $f8, $f10
    swc1    $f6, 0x0674(s0)            # 00000674
    swc1    $f16, 0x0678(s0)           # 00000678
lbl_809F3240:
    sltiu   $at, v1, 0x0014
    bne     $at, $zero, lbl_809F3254
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F3258
    sb      t9, 0x0190(s0)             # 00000190
lbl_809F3254:
    sb      t0, 0x0190(s0)             # 00000190
lbl_809F3258:
    lw      t1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bnel    t1, $at, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    sh      t2, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F3280:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    sb      t3, 0x0190(s0)             # 00000190
    sltiu   $at, v1, 0x0032
    beq     $at, $zero, lbl_809F32B0
    lw      t4, 0x0074($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t4
    swc1    $f18, 0x0AFC($at)          # 00010AFC
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F32B0:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v1, $at, lbl_809F32CC
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x004B          # a2 = 0000004B
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F32CC:
    addiu   $at, $zero, 0x0046         # $at = 00000046
    bne     v1, $at, lbl_809F4378
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sh      t5, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    beq     $zero, $zero, lbl_809F4378
    sb      t6, 0x0190(s0)             # 00000190
var_809F32F8:
    lw      t8, 0x0664(s0)             # 00000664
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t8, $at, lbl_809F4378
    sb      t7, 0x0190(s0)             # 00000190
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sh      t9, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 100.00
    sh      $zero, 0x019E(s0)          # 0000019E
    addiu   a0, $zero, 0x28C1          # a0 = 000028C1
    swc1    $f4, 0x01D0(s0)            # 000001D0
    swc1    $f8, 0x01C4(s0)            # 000001C4
    swc1    $f6, 0x01C8(s0)            # 000001C8
    jal     func_800646F0
    swc1    $f10, 0x01CC(s0)           # 000001CC
    lw      t0, 0x0074($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t0
    swc1    $f16, 0x0AFC($at)          # 00010AFC
var_809F3370:
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t1, 0x0190(s0)             # 00000190
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4023                 # a3 = 40230000
    ori     a3, a3, 0x3333             # a3 = 40233333
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    lui     a1, 0x432A                 # a1 = 432A0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, 0x4348                 # a1 = 43480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t2, $zero, 0x0041          # t2 = 00000041
    or      a0, s0, $zero              # a0 = 00000000
    sltiu   $at, v1, 0x001E
    bnel    $at, $zero, lbl_809F33F8
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    sb      t2, 0x0190(s0)             # 00000190
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
lbl_809F33F8:
    bne     v1, $at, lbl_809F3414
    lw      t3, 0x0074($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    swc1    $f18, 0x0AFC($at)          # 00010AFC
lbl_809F3414:
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x0670(s0)            # 00000670
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f16                  # $f16 = -10.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4190                # $at = 41900000
    lwc1    $f10, 0x0678(s0)           # 00000678
    mtc1    $at, $f6                   # $f6 = 18.00
    lwc1    $f4, 0x067C(s0)            # 0000067C
    swc1    $f8, 0x0670(s0)            # 00000670
    add.s   $f18, $f10, $f16
    lw      t4, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0678(s0)           # 00000678
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    bne     t4, $at, lbl_809F4378
    swc1    $f8, 0x067C(s0)            # 0000067C
    sh      t5, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F3474:
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      t7, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    bne     t7, $at, lbl_809F4378
    or      a1, s0, $zero              # a1 = 00000000
    sh      t8, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lw      a0, 0x0074($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t9, %hi(var_80A13F84)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F84)(t9)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    sb      $zero, 0x03B8(t9)          # 80A103B8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x019E(s0)             # 0000019E
    addiu   a0, $zero, 0x28C1          # a0 = 000028C1
    swc1    $f10, 0x01D0(s0)           # 000001D0
    swc1    $f18, 0x01C4(s0)           # 000001C4
    swc1    $f16, 0x01C8(s0)           # 000001C8
    jal     func_800646F0
    swc1    $f4, 0x01CC(s0)            # 000001CC
    lw      t1, 0x0074($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    swc1    $f6, 0x0AFC($at)           # 00010AFC
var_809F350C:
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    sb      t2, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4023                 # a3 = 40230000
    ori     a3, a3, 0x3333             # a3 = 40233333
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    lui     a1, 0x432A                 # a1 = 432A0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, 0x4348                 # a1 = 43480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lui     t4, %hi(var_80A13F84)      # t4 = 80A10000
    bne     v1, $at, lbl_809F35A0
    addiu   t5, $zero, 0x004B          # t5 = 0000004B
    lw      t4, %lo(var_80A13F84)(t4)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x03B8(t4)             # 80A103B8
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F35A0:
    sltiu   $at, v1, 0x0020
    bne     $at, $zero, lbl_809F35B4
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sb      t5, 0x0190(s0)             # 00000190
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F35B4:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     v1, $at, lbl_809F35D8
    lw      t6, 0x0074($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F35D8:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v1, $at, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    sh      t7, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F35F0:
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      t9, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0028         # $at = 00000028
    addiu   t0, $zero, 0x000B          # t0 = 0000000B
    bnel    t9, $at, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t0, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    beq     $zero, $zero, lbl_809F4378
    swc1    $f10, 0x01C8(s0)           # 000001C8
var_809F362C:
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t1, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lw      t2, 0x0068($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f16, 0x002C(t2)           # 0000002C
    lw      v1, 0x0664(s0)             # 00000664
    lw      a0, 0x0074($sp)
    bnel    v1, $at, lbl_809F3680
    addiu   $at, $zero, 0x0019         # $at = 00000019
    jal     func_800218EC
    addiu   a2, $zero, 0x0017          # a2 = 00000017
    jal     func_8006D8E0
    addiu   a0, $zero, 0x000B          # a0 = 0000000B
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0019         # $at = 00000019
lbl_809F3680:
    bne     v1, $at, lbl_809F3694
    addiu   t3, $zero, 0x0140          # t3 = 00000140
    lui     $at, 0x8012                # $at = 80120000
    sh      t3, -0x460C($at)           # 8011B9F4
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3694:
    addiu   $at, $zero, 0x0064         # $at = 00000064
    bnel    v1, $at, lbl_809F36B0
    addiu   $at, $zero, 0x0078         # $at = 00000078
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0078         # $at = 00000078
lbl_809F36B0:
    bne     v1, $at, lbl_809F4378
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    sh      t4, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F36C4:
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lui     a0, 0x1001                 # a0 = 10010000
    bnel    v1, $at, lbl_809F3728
    sltiu   $at, v1, 0x001F
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4F64             # a0 = 06004F64
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4F64             # a1 = 06004F64
    cvt.s.w $f4, $f18
    lui     a2, 0xC0A0                 # a2 = C0A00000
    swc1    $f4, 0x01BC(s0)            # 000001BC
    jal     func_8008D21C
    lw      a0, 0x004C($sp)
    lw      v1, 0x0664(s0)             # 00000664
    sltiu   $at, v1, 0x001F
lbl_809F3728:
    bne     $at, $zero, lbl_809F3760
    lw      a0, 0x004C($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F3760
    lw      a0, 0x004C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6AF4             # a1 = 06006AF4
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    swc1    $f6, 0x01BC(s0)            # 000001BC
lbl_809F3760:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0050         # $at = 00000050
    lw      a0, 0x0074($sp)
    bne     v1, $at, lbl_809F3780
    addiu   a1, $zero, 0x70C8          # a1 = 000070C8
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3780:
    sltiu   $at, v1, 0x00B5
    bne     $at, $zero, lbl_809F4378
    lw      a0, 0x0074($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sh      t6, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    beq     $zero, $zero, lbl_809F4378
    sb      $zero, 0x070A(s0)          # 0000070A
var_809F37AC:
    sb      $zero, 0x0190(s0)          # 00000190
    lw      t7, 0x0074($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t7
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_809F2D1C
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      a0, 0x0074($sp)
    bne     v1, $at, lbl_809F37F0
    addiu   a1, $zero, 0x70C9          # a1 = 000070C9
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F37F0:
    sltiu   $at, v1, 0x0065
    bne     $at, $zero, lbl_809F4378
    lw      a0, 0x0074($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sh      t8, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sb      v0, 0x0188(s0)             # 00000188
    lui     t9, %hi(var_80A13F84)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F84)(t9)
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      v0, 0x03B8(t9)             # 80A103B8
    sh      t0, 0x01AA(s0)             # 000001AA
    beq     $zero, $zero, lbl_809F4378
    sb      t1, 0x0190(s0)             # 00000190
var_809F3848:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sb      t2, 0x0190(s0)             # 00000190
    sltiu   $at, v1, 0x0015
    beq     $at, $zero, lbl_809F389C
    lw      a0, 0x004C($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_809F38DC
    lw      a0, 0x004C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4304             # a1 = 06004304
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4304             # a0 = 06004304
    mtc1    v0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    beq     $zero, $zero, lbl_809F38DC
    swc1    $f16, 0x01BC(s0)           # 000001BC
lbl_809F389C:
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F38DC
    lw      a0, 0x0074($sp)
    addiu   a1, $zero, 0x70CA          # a1 = 000070CA
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x89F8             # a1 = 060089F8
    lw      a0, 0x004C($sp)
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    nop
    swc1    $f18, 0x01BC(s0)           # 000001BC
lbl_809F38DC:
    lw      t3, 0x0664(s0)             # 00000664
    lw      a0, 0x0074($sp)
    sltiu   $at, t3, 0x0065
    bnel    $at, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    addiu   t4, $zero, 0x0011          # t4 = 00000011
    sh      t4, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F4378
    sw      $zero, 0x0664(s0)          # 00000664
var_809F390C:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_809F3950
    sb      t5, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1F58             # a1 = 06001F58
    lw      a0, 0x004C($sp)
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1F58             # a0 = 06001F58
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0664(s0)             # 00000664
    cvt.s.w $f6, $f4
    swc1    $f6, 0x01BC(s0)            # 000001BC
lbl_809F3950:
    sltiu   $at, v1, 0x000B
    bne     $at, $zero, lbl_809F4378
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    bne     v1, $at, lbl_809F3978
    lui     t6, %hi(var_80A13F7C)      # t6 = 80A10000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lw      t6, %lo(var_80A13F7C)(t6)
    swc1    $f8, 0x16AC(t6)            # 80A116AC
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3978:
    addiu   $at, $zero, 0x0039         # $at = 00000039
    bne     v1, $at, lbl_809F398C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
lbl_809F398C:
    lwc1    $f0, 0x06DC(s0)            # 000006DC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f10, $f0, $f0
    addiu   a0, s0, 0x06E4             # a0 = 000006E4
    lui     a1, 0x42DC                 # a1 = 42DC0000
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, %hi(var_80A12C48)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12C48)($at)
    lwc1    $f16, 0x06DC(s0)           # 000006DC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0678             # a0 = 00000678
    lui     a1, 0xC391                 # a1 = C3910000
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x06DC             # a0 = 000006DC
    lui     a1, 0x3F40                 # a1 = 3F400000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t7, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0046         # $at = 00000046
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    bne     t7, $at, lbl_809F4378
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    sh      t8, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    jal     func_809F2D1C
    swc1    $f6, 0x06E4(s0)            # 000006E4
    lw      a0, 0x0074($sp)
    addiu   a1, $zero, 0x70CB          # a1 = 000070CB
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
var_809F3A3C:
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sb      t9, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F2D1C
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f10                  # $f10 = -6.00
    lwc1    $f8, 0x0674(s0)            # 00000674
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    add.s   $f16, $f8, $f10
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f18, 0x0678(s0)           # 00000678
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f8, 0x01BC(s0)            # 000001BC
    swc1    $f16, 0x0674(s0)           # 00000674
    add.s   $f6, $f18, $f4
    sub.s   $f16, $f8, $f10
    swc1    $f6, 0x0678(s0)            # 00000678
    lw      a0, 0x004C($sp)
    mfc1    a1, $f16
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_809F3AC0
    lw      a0, 0x004C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3018             # a1 = 06003018
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    nop
    swc1    $f18, 0x01BC(s0)           # 000001BC
lbl_809F3AC0:
    lw      t0, 0x0664(s0)             # 00000664
    lw      a0, 0x0074($sp)
    sltiu   $at, t0, 0x0033
    bnel    $at, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    addiu   t1, $zero, 0x0013          # t1 = 00000013
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lw      a0, 0x0074($sp)
    addiu   a1, $zero, 0x70CC          # a1 = 000070CC
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7268             # a1 = 06007268
    lw      a0, 0x004C($sp)
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 100.00
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sh      t2, 0x019E(s0)             # 0000019E
    swc1    $f4, 0x01D0(s0)            # 000001D0
    swc1    $f8, 0x01C4(s0)            # 000001C4
    swc1    $f6, 0x01C8(s0)            # 000001C8
    swc1    $f10, 0x01CC(s0)           # 000001CC
    lw      t3, 0x0074($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    swc1    $f16, 0x0AFC($at)          # 00010AFC
var_809F3B58:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sb      t4, 0x0190(s0)             # 00000190
    sltiu   $at, v1, 0x003C
    bne     $at, $zero, lbl_809F3B98
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_809F3B98
    sb      t5, 0x0190(s0)             # 00000190
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lw      t6, 0x0074($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    swc1    $f18, 0x0AFC($at)          # 00010AFC
lbl_809F3B98:
    jal     func_809F2D1C
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f6                   # $f6 = -6.00
    lui     $at, 0x40C0                # $at = 40C00000
    lwc1    $f4, 0x0674(s0)            # 00000674
    mtc1    $at, $f16                  # $f16 = 6.00
    lwc1    $f10, 0x0678(s0)           # 00000678
    lw      v1, 0x0664(s0)             # 00000664
    add.s   $f8, $f4, $f6
    sltiu   $at, v1, 0x001E
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0674(s0)            # 00000674
    bne     $at, $zero, lbl_809F3C48
    swc1    $f18, 0x0678(s0)           # 00000678
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    v1, $at, lbl_809F3BEC
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    jal     func_800646F0
    addiu   a0, $zero, 0x28C1          # a0 = 000028C1
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
lbl_809F3BEC:
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     a1, 0x3F19                 # a1 = 3F190000
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4023                 # a3 = 40230000
    ori     a3, a3, 0x3333             # a3 = 40233333
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    lui     a1, 0x432A                 # a1 = 432A0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, 0x4348                 # a1 = 43480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3C48:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v1, $at, lbl_809F3C68
    lw      a0, 0x004C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7A64             # a1 = 06007A64
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3C68:
    sltiu   $at, v1, 0x0051
    bne     $at, $zero, lbl_809F4378
    lw      a0, 0x0074($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f0                   # $f0 = 400.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f14                  # $f14 = 50.00
    lwc1    $f4, 0x0670(s0)            # 00000670
    lwc1    $f8, 0x0674(s0)            # 00000674
    lwc1    $f16, 0x0678(s0)           # 00000678
    sub.s   $f6, $f4, $f14
    lwc1    $f4, 0x067C(s0)            # 0000067C
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f10, $f8, $f12
    swc1    $f6, 0x06AC(s0)            # 000006AC
    lwc1    $f8, 0x0680(s0)            # 00000680
    add.s   $f18, $f16, $f0
    swc1    $f10, 0x06B0(s0)           # 000006B0
    lwc1    $f10, 0x0684(s0)           # 00000684
    add.s   $f6, $f4, $f0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    swc1    $f18, 0x06B4(s0)           # 000006B4
    swc1    $f6, 0x06C4(s0)            # 000006C4
    lui     $at, %hi(var_80A12C4C)     # $at = 80A10000
    swc1    $f0, 0x069C(s0)            # 0000069C
    swc1    $f0, 0x06A0(s0)            # 000006A0
    swc1    $f12, 0x0698(s0)           # 00000698
    swc1    $f14, 0x0694(s0)           # 00000694
    swc1    $f2, 0x06DC(s0)            # 000006DC
    swc1    $f8, 0x06C8(s0)            # 000006C8
    swc1    $f10, 0x06CC(s0)           # 000006CC
    lwc1    $f16, %lo(var_80A12C4C)($at)
    lui     $at, %hi(var_80A12C50)     # $at = 80A10000
    swc1    $f2, 0x01D4(s0)            # 000001D4
    swc1    $f16, 0x06E0(s0)           # 000006E0
    lwc1    $f18, %lo(var_80A12C50)($at)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39D5          # a1 = 000039D5
    jal     func_80022FD0
    swc1    $f18, 0x01D8(s0)           # 000001D8
    beq     $zero, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
var_809F3D2C:
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sb      t8, 0x0190(s0)             # 00000190
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     a1, 0x3E19                 # a1 = 3E190000
    lui     a3, 0x3C75                 # a3 = 3C750000
    sb      t9, 0x006F($sp)
    ori     a3, a3, 0xC28F             # a3 = 3C75C28F
    ori     a1, a1, 0x999A             # a1 = 3E19999A
    addiu   a0, s0, 0x06DC             # a0 = 000006DC
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0664(s0)             # 00000664
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    lui     a1, 0x437F                 # a1 = 437F0000
    sltiu   $at, v1, 0x0029
    beq     $at, $zero, lbl_809F3D98
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x40D0                 # a3 = 40D00000
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3D98:
    sltiu   $at, v1, 0x0015
    bne     $at, $zero, lbl_809F3DB0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3057          # a1 = 00003057
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3DB0:
    sltiu   $at, v1, 0x0015
    bne     $at, $zero, lbl_809F3DDC
    lw      a0, 0x0074($sp)
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_809F2080
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      a0, 0x0074($sp)
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_809F2080
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3DDC:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_809F3DF8
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x004A          # a2 = 0000004A
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3DF8:
    sltiu   $at, v1, 0x0033
    bne     $at, $zero, lbl_809F4378
    addiu   t0, $zero, 0x0015          # t0 = 00000015
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t0, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lui     $at, %hi(var_80A12C54)     # $at = 80A10000
    swc1    $f4, 0x01C8(s0)            # 000001C8
    lwc1    $f6, %lo(var_80A12C54)($at)
    beq     $zero, $zero, lbl_809F3E58
    swc1    $f6, 0x01D8(s0)            # 000001D8
var_809F3E24:
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    sb      t1, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3057          # a1 = 00003057
    lw      a0, 0x0074($sp)
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_809F2080
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      a0, 0x0074($sp)
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_809F2080
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_809F3E58:
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f8                   # $f8 = -30.00
    lui     $at, 0x4214                # $at = 42140000
    mtc1    $at, $f10                  # $f10 = 37.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f16                  # $f16 = -30.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f4                   # $f4 = 45.00
    lw      v1, 0x0664(s0)             # 00000664
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    swc1    $f8, 0x0670(s0)            # 00000670
    swc1    $f10, 0x0674(s0)           # 00000674
    swc1    $f16, 0x0678(s0)           # 00000678
    swc1    $f18, 0x067C(s0)           # 0000067C
    swc1    $f4, 0x0680(s0)            # 00000680
    bne     v1, $at, lbl_809F3EBC
    swc1    $f6, 0x0684(s0)            # 00000684
    lw      a0, 0x0074($sp)
    addiu   a1, $zero, 0x70CD          # a1 = 000070CD
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F3EBC:
    sltiu   $at, v1, 0x0079
    bnel    $at, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    lw      a0, 0x0074($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4378
    addiu   t2, $zero, 0x0016          # t2 = 00000016
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f8, 0x01EC(s0)            # 000001EC
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f18, 0x01F0(s0)           # 000001F0
    sub.s   $f16, $f8, $f10
    lui     $at, 0x437F                # $at = 437F0000
    lwc1    $f8, 0x01F4(s0)            # 000001F4
    add.s   $f6, $f18, $f4
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    addiu   t4, $zero, 0x00FE          # t4 = 000000FE
    sh      t2, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    sh      t3, 0x01AA(s0)             # 000001AA
    sh      t4, 0x0708(s0)             # 00000708
    swc1    $f16, 0x067C(s0)           # 0000067C
    swc1    $f6, 0x0680(s0)            # 00000680
    lui     $at, %hi(var_80A12C58)     # $at = 80A10000
    swc1    $f8, 0x0684(s0)            # 00000684
    swc1    $f10, 0x01D4(s0)           # 000001D4
    lwc1    $f16, %lo(var_80A12C58)($at)
    swc1    $f16, 0x01D8(s0)           # 000001D8
var_809F3F3C:
    lw      t5, 0x0664(s0)             # 00000664
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sltiu   $at, t5, 0x001F
    bne     $at, $zero, lbl_809F3F5C
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_809F3F60
    sb      $zero, 0x0190(s0)          # 00000190
lbl_809F3F5C:
    sb      t6, 0x0190(s0)             # 00000190
lbl_809F3F60:
    jal     func_800642F0
    lui     a2, 0x4120                 # a2 = 41200000
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f18                  # $f18 = -30.00
    lui     $at, 0x4309                # $at = 43090000
    mtc1    $at, $f4                   # $f4 = 137.00
    lui     $at, 0xC2DC                # $at = C2DC0000
    mtc1    $at, $f6                   # $f6 = -110.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x01F0(s0)            # 000001F0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f16, $f8, $f10
    addiu   a0, s0, 0x0680             # a0 = 00000680
    lui     a3, 0x41A0                 # a3 = 41A00000
    swc1    $f18, 0x0670(s0)           # 00000670
    mfc1    a1, $f16
    swc1    $f4, 0x0674(s0)            # 00000674
    jal     func_80064280
    swc1    $f6, 0x0678(s0)            # 00000678
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f18, 0x01EC(s0)           # 000001EC
    addiu   a0, s0, 0x067C             # a0 = 0000067C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    sub.s   $f6, $f18, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sw      a0, 0x0048($sp)
    lui     a3, 0x40A0                 # a3 = 40A00000
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $at, lbl_809F4054
    lw      a1, 0x0074($sp)
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8A88             # a1 = 06008A88
    lw      a0, 0x004C($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008C9C0
    lw      a0, 0x004C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4190                # $at = 41900000
    lui     t7, %hi(var_80A13F7C)      # t7 = 80A10000
    swc1    $f8, 0x00BC(s0)            # 000000BC
    lw      t7, %lo(var_80A13F7C)(t7)
    mtc1    $at, $f10                  # $f10 = 18.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f10, 0x16B4(t7)           # 80A116B4
    sb      $zero, 0x0188(s0)          # 00000188
    jal     func_800CAA70
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F4054:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_809F412C
    lw      a0, 0x0074($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    lw      t8, 0x0074($sp)
    sll     t9, v0,  4
    addu    t9, t9, v0
    sll     t9, t9,  2
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t0, t8, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    lui     v1, 0x8012                 # v1 = 80120000
    lui     $at, 0x8000                # $at = 80000000
    addiu   v1, v1, 0x0C38             # v1 = 80120C38
    addu    t2, t1, $at
    sw      t2, 0x0018(v1)             # 80120C50
    lui     a0, 0x8012                 # a0 = 80120000
    lhu     a0, -0x4B4E(a0)            # 8011B4B2
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0xCF00             # v0 = 0600CF00
    andi    t3, a0, 0x0100             # t3 = 00000000
    bne     t3, $zero, lbl_809F411C
    sll     t5, v0,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, v1, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0000(t8)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lw      a0, 0x0074($sp)
    lui     $at, 0x8000                # $at = 80000000
    addiu   t1, $zero, 0x00B4          # t1 = 000000B4
    addiu   t2, $zero, 0x0080          # t2 = 00000080
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    addu    a2, t9, t0
    addu    a2, a2, $at
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    jal     func_80020780
    addiu   a1, a0, 0x1D4C             # a1 = 80121D4C
    lui     a0, 0x8012                 # a0 = 80120000
    lhu     a0, -0x4B4E(a0)            # 8011B4B2
lbl_809F411C:
    ori     t4, a0, 0x0100             # t4 = 80120100
    lui     $at, 0x8012                # $at = 80120000
    sh      t4, -0x4B4E($at)           # 8011B4B2
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F412C:
    sltiu   $at, v1, 0x0014
    bne     $at, $zero, lbl_809F4270
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0189(s0)             # 00000189
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3056          # a1 = 00003056
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4364                 # a1 = 43640000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a1, 0xC366                 # a1 = C3660000
    jal     func_80064280
    lui     a3, 0x4080                 # a3 = 40800000
    lui     v0, %hi(var_80A13F7C)      # v0 = 80A10000
    addiu   v0, v0, %lo(var_80A13F7C)  # v0 = 80A13F7C
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f0                   # $f0 = -3.00
    lw      t6, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f16                  # $f16 = 0.25
    swc1    $f0, 0x16A0(t6)            # 000016A0
    lw      t7, 0x0000(v0)             # 80A13F7C
    swc1    $f16, 0x16A4(t7)           # 000016A4
    lw      t8, 0x0000(v0)             # 80A13F7C
    swc1    $f0, 0x16A8(t8)            # 000016A8
    lw      a0, 0x0664(s0)             # 00000664
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f18, 0x01B8(s0)           # 000001B8
    lui     $at, %hi(var_80A12C5C)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12C5C)($at)
    mul.s   $f4, $f18, $f0
    lw      a0, 0x0664(s0)             # 00000664
    lwc1    $f8, 0x0028(s0)            # 00000028
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    mul.s   $f2, $f4, $f6
    sll     a0, a0,  5
    addu    a0, a0, $at
    sll     a0, a0,  3
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f10, $f8, $f2
    swc1    $f2, 0x0060(s0)            # 00000060
    jal     func_80063684              # coss?
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x01B8(s0)           # 000001B8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mul.s   $f18, $f16, $f0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f14                  # $f14 = 50.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f6, 0x0100(s0)            # 00000100
    mfc1    a2, $f12
    mul.s   $f2, $f18, $f4
    mfc1    a3, $f12
    mfc1    a1, $f14
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    sub.s   $f8, $f2, $f6
    swc1    $f2, 0x0024(s0)            # 00000024
    jal     func_80064280
    swc1    $f8, 0x005C(s0)            # 0000005C
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F4270:
    sltiu   $at, v1, 0x001F
    bne     $at, $zero, lbl_809F4298
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t9, 0x0708(s0)             # 00000708
    addiu   t0, t9, 0xFFFB             # t0 = FFFFFFFB
    sh      t0, 0x0708(s0)             # 00000708
    lh      t1, 0x0708(s0)             # 00000708
    bgezl   t1, lbl_809F429C
    lw      t2, 0x0664(s0)             # 00000664
    sh      $zero, 0x0708(s0)          # 00000708
lbl_809F4298:
    lw      t2, 0x0664(s0)             # 00000664
lbl_809F429C:
    addiu   $at, $zero, 0x0078         # $at = 00000078
    bne     t2, $at, lbl_809F4344
    nop
    jal     func_8009D2F0
    lw      a0, 0x0074($sp)
    addiu   v1, s0, 0x0670             # v1 = 00000670
    lw      t4, 0x0000(v1)             # 00000670
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t4, 0x005C(v0)             # 0000005C
    lw      t3, 0x0004(v1)             # 00000674
    sw      t3, 0x0060(v0)             # 00000060
    lw      t4, 0x0008(v1)             # 00000678
    sw      t4, 0x0064(v0)             # 00000064
    lw      t6, 0x0000(v1)             # 00000670
    sw      t6, 0x0074(v0)             # 00000074
    lw      t5, 0x0004(v1)             # 00000674
    sw      t5, 0x0078(v0)             # 00000078
    lw      t6, 0x0008(v1)             # 00000678
    sw      t6, 0x007C(v0)             # 0000007C
    lw      t7, 0x0048($sp)
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0050(v0)             # 00000050
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0054(v0)             # 00000054
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0058(v0)             # 00000058
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D718
    lw      a0, 0x0074($sp)
    lw      a0, 0x0074($sp)
    sh      $zero, 0x066A(s0)          # 0000066A
    lh      t0, 0x066A(s0)             # 0000066A
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_80052340
    sh      t0, 0x0668(s0)             # 00000668
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F6FA8
    lw      a1, 0x0074($sp)
lbl_809F4344:
    lui     v1, %hi(var_80A13F84)      # v1 = 80A10000
    addiu   v1, v1, %lo(var_80A13F84)  # v1 = 80A13F84
    lw      v0, 0x0000(v1)             # 80A13F84
    beql    v0, $zero, lbl_809F437C
    lh      a1, 0x066A(s0)             # 0000066A
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f10                  # $f10 = 350.00
    swc1    $f0, 0x0024(v0)            # 00000024
    lw      t1, 0x0000(v1)             # 80A13F84
    swc1    $f10, 0x0028(t1)           # 00000028
    lw      t2, 0x0000(v1)             # 80A13F84
    swc1    $f0, 0x002C(t2)            # 0000002C
lbl_809F4378:
    lh      a1, 0x066A(s0)             # 0000066A
lbl_809F437C:
    addiu   t3, s0, 0x067C             # t3 = 0000067C
    beql    a1, $zero, lbl_809F44AC
    lw      $ra, 0x003C($sp)
    lbu     t5, 0x006F($sp)
    addiu   t4, s0, 0x0670             # t4 = 00000670
    sw      t4, 0x0044($sp)
    beq     t5, $zero, lbl_809F4488
    sw      t3, 0x0048($sp)
    lwc1    $f16, 0x0694(s0)           # 00000694
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a1, 0x06AC(s0)             # 000006AC
    lw      a2, 0x06E0(s0)             # 000006E0
    mul.s   $f4, $f16, $f18
    addiu   t6, s0, 0x0678             # t6 = 00000678
    addiu   t7, s0, 0x0680             # t7 = 00000680
    sw      t7, 0x004C($sp)
    sw      t6, 0x0050($sp)
    or      a0, t4, $zero              # a0 = 00000670
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x0698(s0)            # 00000698
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    addiu   a0, s0, 0x0674             # a0 = 00000674
    lw      a1, 0x06B0(s0)             # 000006B0
    mul.s   $f10, $f6, $f8
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x069C(s0)           # 0000069C
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a0, 0x0050($sp)
    lw      a1, 0x06B4(s0)             # 000006B4
    mul.s   $f4, $f16, $f18
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x06A0(s0)            # 000006A0
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    lw      a0, 0x0048($sp)
    lw      a1, 0x06C4(s0)             # 000006C4
    mul.s   $f10, $f6, $f8
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x06A4(s0)           # 000006A4
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a0, 0x004C($sp)
    lw      a1, 0x06C8(s0)             # 000006C8
    mul.s   $f4, $f16, $f18
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x06A8(s0)            # 000006A8
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    addiu   a0, s0, 0x0684             # a0 = 00000684
    lw      a1, 0x06CC(s0)             # 000006CC
    mul.s   $f10, $f6, $f8
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lh      a1, 0x066A(s0)             # 0000066A
lbl_809F4488:
    lw      a0, 0x0074($sp)
    lw      a2, 0x0048($sp)
    jal     func_8009D328
    lw      a3, 0x0044($sp)
    lw      a0, 0x0074($sp)
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D55C
    lw      a2, 0x06E4(s0)             # 000006E4
    lw      $ra, 0x003C($sp)
lbl_809F44AC:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_809F44BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x017D          # a1 = 0000017D
    lw      a0, 0x0024($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688
    sw      v0, 0x0028($sp)
    beq     v0, $zero, lbl_809F458C
    lw      v1, 0x0028($sp)
    sh      $zero, 0x0668(s0)          # 00000668
    lh      t7, 0x0668(s0)             # 00000668
    lui     t6, %hi(func_809F47E8)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F47E8) # t6 = 809F47E8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t6, 0x0184(s0)             # 00000184
    sb      t8, 0x0188(s0)             # 00000188
    sw      v1, 0x013C(s0)             # 0000013C
    sw      t7, 0x0664(s0)             # 00000664
    lw      t9, 0x0034($sp)
    sll     t0, v1,  4
    addu    t0, t0, v1
    sll     t0, t0,  2
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t1, t9, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a1, 0x0601                 # a1 = 06010000
    addu    t3, t2, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, 0x0C50($at)            # 80120C50
    addiu   a1, a1, 0xEA00             # a1 = 0600EA00
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEA00             # a0 = 0600EA00
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4
    swc1    $f8, 0x04F8(s0)            # 000004F8
    swc1    $f6, 0x01BC(s0)            # 000001BC
lbl_809F458C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809F45A0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x017D          # a1 = 0000017D
    lw      a0, 0x0024($sp)
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688
    sw      v0, 0x0028($sp)
    beq     v0, $zero, lbl_809F4684
    lw      v1, 0x0028($sp)
    sw      v1, 0x013C(s0)             # 0000013C
    lw      t6, 0x0034($sp)
    sll     t7, v1,  4
    addu    t7, t7, v1
    sll     t7, t7,  2
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t8, t6, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a1, 0x0601                 # a1 = 06010000
    addu    t0, t9, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    addiu   a1, a1, 0xEA00             # a1 = 0600EA00
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEA00             # a0 = 0600EA00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t1, %hi(func_809F47E8)     # t1 = 809F0000
    lui     v1, 0x8012                 # v1 = 80120000
    cvt.s.w $f6, $f4
    addiu   t1, t1, %lo(func_809F47E8) # t1 = 809F47E8
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      t1, 0x0184(s0)             # 00000184
    swc1    $f6, 0x01BC(s0)            # 000001BC
    sw      $zero, 0x0664(s0)          # 00000664
    sh      t2, 0x0668(s0)             # 00000668
    sb      t3, 0x0188(s0)             # 00000188
    lh      t4, 0x13F4(v1)             # 8011B9C4
    lh      t5, 0x002E(v1)             # 8011A5FE
    sb      t4, 0x0033(v1)             # 8011A603
    beq     $zero, $zero, lbl_809F4690
    sh      t5, 0x0030(v1)             # 8011A600
lbl_809F4684:
    lui     t6, %hi(func_809F45A0)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F45A0) # t6 = 809F45A0
    sw      t6, 0x0184(s0)             # 00000184
lbl_809F4690:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809F46A4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s4, 0x002C($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x00FF                 # a2 = 00FF0000
    ori     a2, a2, 0xFFFF             # a2 = 00FFFFFF
    addiu   a1, a1, 0x0C38             # a1 = 80120C38
    andi    s4, a0, 0x00FF             # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s7, 0x0038($sp)
    sw      s6, 0x0034($sp)
    sw      s5, 0x0030($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a0, 0x0040($sp)
    lui     a3, 0x8000                 # a3 = 80000000
    lui     v0, 0x0200                 # v0 = 02000000
    lui     v1, 0x0200                 # v1 = 02000000
    addiu   v0, v0, 0x6C18             # v0 = 02006C18
    addiu   v1, v1, 0x7418             # v1 = 02007418
    sll     t6, v0,  4
    sll     t3, v1,  4
    srl     t7, t6, 28
    srl     t4, t3, 28
    sll     t8, t7,  2
    sll     t5, t4,  2
    addu    t9, a1, t8
    addu    t6, a1, t5
    lw      t0, 0x0000(t9)             # 00000000
    lw      t7, 0x0000(t6)             # 00000000
    and     t1, v0, a2
    and     t8, v1, a2
    lui     $at, %hi(var_80A12C60)     # $at = 80A10000
    lui     s5, %hi(var_80A01718)      # s5 = 80A00000
    addu    t2, t0, t1
    addu    t9, t7, t8
    addu    s2, t2, a3
    addu    s3, t9, a3
    addiu   s5, s5, %lo(var_80A01718)  # s5 = 80A01718
    lwc1    $f20, %lo(var_80A12C60)($at)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $zero, 0x0001          # s7 = 00000001
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    addu    s1, s0, s2
lbl_809F475C:
    lbu     t0, 0x0000(s1)             # 00000000
    beql    t0, $zero, lbl_809F47A4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f20
    addu    t1, s5, s0
    bc1fl   lbl_809F47A4
    addiu   s0, s0, 0x0001             # s0 = 00000002
    lbu     t2, 0x0000(t1)             # 00000000
    addu    v0, s3, s0
    beql    t2, $zero, lbl_809F479C
    sb      s7, 0x0000(v0)             # 00000000
    bnel    s6, s4, lbl_809F47A4
    addiu   s0, s0, 0x0001             # s0 = 00000003
    sb      s7, 0x0000(v0)             # 00000000
lbl_809F479C:
    sb      s7, 0x0000(s1)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000004
lbl_809F47A4:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0800
    bnel    $at, $zero, lbl_809F475C
    addu    s1, s0, s2
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    lw      s6, 0x0034($sp)
    lw      s7, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809F47E8:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sb      $zero, 0x00B5($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    lui     t1, 0x0001                 # t1 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x00B0($sp)
    lw      t7, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x0140             # a0 = 00000140
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a1, t8
    addu    t1, t1, t9
    lw      t1, 0x17B4(t1)             # 000117B4
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    lw      t3, 0x0664(s0)             # 00000664
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x0664(s0)             # 00000664
    sw      a1, 0x00BC($sp)
    jal     func_8008C9C0
    sw      a0, 0x0054($sp)
    lh      a0, 0x0668(s0)             # 00000668
    slti    $at, a0, 0x0420
    bne     $at, $zero, lbl_809F487C
    or      v1, a0, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x0420         # $at = 00000420
    beq     v1, $at, lbl_809F5A64
    addiu   $at, $zero, 0x0421         # $at = 00000421
    beql    v1, $at, lbl_809F5B18
    lw      a0, 0x0664(s0)             # 00000664
    beq     $zero, $zero, lbl_809F6028
    slti    $at, a0, 0x0064
lbl_809F487C:
    slti    $at, v1, 0x006E
    bne     $at, $zero, lbl_809F489C
    addiu   t5, v1, 0xFF9C             # t5 = FFFFFF9C
    addiu   $at, $zero, 0x041F         # $at = 0000041F
    beql    v1, $at, lbl_809F59D0
    lw      a0, 0x0664(s0)             # 00000664
    beq     $zero, $zero, lbl_809F6028
    slti    $at, a0, 0x0064
lbl_809F489C:
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_809F48C8
    sll     t6, v1,  2
    sltiu   $at, t5, 0x000A
    beq     $at, $zero, lbl_809F6024
    sll     t5, t5,  2
    lui     $at, %hi(var_80A12C64)     # $at = 80A10000
    addu    $at, $at, t5
    lw      t5, %lo(var_80A12C64)($at)
    jr      t5
    nop
lbl_809F48C8:
    sltiu   $at, v1, 0x000A
    beq     $at, $zero, lbl_809F6024
    lui     $at, %hi(var_80A12C8C)     # $at = 80A10000
    addu    $at, $at, t6
    lw      t6, %lo(var_80A12C8C)($at)
    jr      t6
    nop
var_809F48E4:
    lw      a0, 0x00BC($sp)
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0
    lw      a0, 0x00BC($sp)
    sh      v0, 0x066A(s0)             # 0000066A
    lw      a0, 0x00BC($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x00BC($sp)
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f6                   # $f6 = -80.00
    lui     $at, %hi(var_80A12CB4)     # $at = 80A10000
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f2, 0x0024(s0)            # 00000024
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, %lo(var_80A12CB4)($at)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      $zero, 0x00B6(s0)          # 000000B6
    sh      t7, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    sb      t8, 0x070A(s0)             # 0000070A
    swc1    $f8, 0x00BC(s0)            # 000000BC
var_809F4970:
    lw      v0, 0x00B0($sp)
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    lui     $at, 0x42E6                # $at = 42E60000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f16                  # $f16 = 115.00
    addiu   t9, $zero, 0x8000          # t9 = FFFF8000
    sh      t9, 0x00B6(v0)             # 000000B6
    swc1    $f10, 0x0024(v0)           # 00000024
    swc1    $f2, 0x0028(v0)            # 00000028
    swc1    $f16, 0x002C(v0)           # 0000002C
    lw      v1, 0x0664(s0)             # 00000664
    addiu   t1, $zero, 0x000D          # t1 = 0000000D
    sb      t1, 0x0190(s0)             # 00000190
    sltiu   $at, v1, 0x001E
    beq     $at, $zero, lbl_809F49C4
    lw      t2, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2
    swc1    $f2, 0x0AFC($at)           # 00010AFC
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F49C4:
    sltiu   $at, v1, 0x0002
    bne     $at, $zero, lbl_809F49DC
    lw      t3, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_809F49DC:
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f0                   # $f0 = -50.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x01F0(s0)            # 000001F0
    lwc1    $f4, 0x01EC(s0)            # 000001EC
    lwc1    $f16, 0x01F4(s0)           # 000001F4
    add.s   $f10, $f6, $f8
    swc1    $f0, 0x0670(s0)            # 00000670
    swc1    $f0, 0x0678(s0)            # 00000678
    swc1    $f18, 0x0674(s0)           # 00000674
    swc1    $f10, 0x0680(s0)           # 00000680
    swc1    $f4, 0x067C(s0)            # 0000067C
    swc1    $f16, 0x0684(s0)           # 00000684
    lw      a0, 0x0054($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F4A4C
    lw      a0, 0x0054($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF19C             # a1 = 0600F19C
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F4A4C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4A54:
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f18                  # $f18 = -100.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f6                   # $f6 = -130.00
    lui     $at, 0x4220                # $at = 42200000
    swc1    $f18, 0x0670(s0)           # 00000670
    mtc1    $at, $f18                  # $f18 = 40.00
    lwc1    $f16, 0x01F4(s0)           # 000001F4
    lw      t6, 0x0664(s0)             # 00000664
    swc1    $f4, 0x0674(s0)            # 00000674
    add.s   $f4, $f16, $f18
    lwc1    $f8, 0x01EC(s0)            # 000001EC
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    sltiu   $at, t6, 0x001E
    sb      t5, 0x0190(s0)             # 00000190
    swc1    $f4, 0x0684(s0)            # 00000684
    swc1    $f6, 0x0678(s0)            # 00000678
    swc1    $f8, 0x067C(s0)            # 0000067C
    bne     $at, $zero, lbl_809F4ADC
    swc1    $f10, 0x0680(s0)           # 00000680
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sh      t7, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lw      a0, 0x00BC($sp)
    addiu   a1, $zero, 0x70CE          # a1 = 000070CE
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    swc1    $f6, 0x01BC(s0)            # 000001BC
lbl_809F4ADC:
    lh      t8, 0x0192(s0)             # 00000192
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x001F             # t9 = 00000000
    bne     t9, $zero, lbl_809F4AF8
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D1          # a1 = 000039D1
lbl_809F4AF8:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4B00:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f0, 0x01BC(s0)            # 000001BC
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    sb      t1, 0x0190(s0)             # 00000190
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_809F4B48
    lwc1    $f18, 0x01F0(s0)           # 000001F0
    lh      t2, 0x0192(s0)             # 00000192
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0x001F             # t3 = 00000000
    bnel    t3, $zero, lbl_809F4B48
    lwc1    $f18, 0x01F0(s0)           # 000001F0
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D1          # a1 = 000039D1
    lwc1    $f0, 0x01BC(s0)            # 000001BC
    lwc1    $f18, 0x01F0(s0)           # 000001F0
lbl_809F4B48:
    lwc1    $f16, 0x01EC(s0)           # 000001EC
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f14                  # $f14 = 7.00
    lui     $at, 0x4250                # $at = 42500000
    mtc1    $at, $f12                  # $f12 = 52.00
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f10                  # $f10 = -15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    sub.s   $f8, $f16, $f8
    lwc1    $f16, 0x01F4(s0)           # 000001F4
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f6, $f18, $f6
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    sub.s   $f18, $f6, $f18
    swc1    $f14, 0x0670(s0)           # 00000670
    swc1    $f12, 0x0674(s0)           # 00000674
    c.lt.s  $f4, $f0
    swc1    $f10, 0x0678(s0)           # 00000678
    swc1    $f8, 0x067C(s0)            # 0000067C
    swc1    $f18, 0x0680(s0)           # 00000680
    bc1f    lbl_809F4C14
    swc1    $f16, 0x0684(s0)           # 00000684
    lw      t4, 0x0664(s0)             # 00000664
    lw      a0, 0x00BC($sp)
    sltiu   $at, t4, 0x0065
    bnel    $at, $zero, lbl_809F4C18
    lui     $at, 0x4180                # $at = 41800000
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4C14
    lw      a0, 0x0054($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB668             # a1 = 0600B668
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xB668             # a0 = 0600B668
    mtc1    v0, $f10                   # $f10 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39D2          # a1 = 000039D2
    cvt.s.w $f16, $f10
    jal     func_80022FD0
    swc1    $f16, 0x01BC(s0)           # 000001BC
    beq     $zero, $zero, lbl_809F4D7C
    nop
lbl_809F4C14:
    lui     $at, 0x4180                # $at = 41800000
lbl_809F4C18:
    mtc1    $at, $f4                   # $f4 = 16.00
    lwc1    $f18, 0x01BC(s0)           # 000001BC
    lw      a0, 0x0054($sp)
    sub.s   $f6, $f18, $f4
    mfc1    a1, $f6
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_809F4D4C
    lui     t5, %hi(var_809FFEA0)      # t5 = 80A00000
    lui     t6, %hi(var_809FFEA4)      # t6 = 80A00000
    lw      t5, %lo(var_809FFEA0)(t5)
    lw      t6, %lo(var_809FFEA4)(t6)
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t5, 0x0090($sp)
    sw      t6, 0x008C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809F4C58:
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    sh      v0, 0x00B6($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_80026D90
    swc1    $f0, 0x00A0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x00A4($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    add.s   $f18, $f0, $f16
    mtc1    $at, $f4                   # $f4 = -1.00
    swc1    $f2, 0x0094($sp)
    swc1    $f2, 0x009C($sp)
    swc1    $f18, 0x00A8($sp)
    swc1    $f4, 0x0098($sp)
    lwc1    $f6, 0x01F8(s0)            # 000001F8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    swc1    $f6, 0x0080($sp)
    lwc1    $f8, 0x01FC(s0)            # 000001FC
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0084($sp)
    lwc1    $f18, 0x0200(s0)           # 00000200
    jal     func_80026D64
    swc1    $f18, 0x0088($sp)
    trunc.w.s $f4, $f0
    addiu   t7, $sp, 0x0090            # t7 = FFFFFFD8
    addiu   t8, $sp, 0x008C            # t8 = FFFFFFD4
    addiu   t5, $zero, 0x0011          # t5 = 00000011
    mfc1    t1, $f4
    sw      t5, 0x0020($sp)
    sw      t8, 0x0014($sp)
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, t3, 0x0032             # t4 = 00000032
    sw      t4, 0x0018($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x00BC($sp)
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFC8
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0094            # a3 = FFFFFFDC
    jal     func_8001BE64
    sw      $zero, 0x001C($sp)
    lh      v0, 0x00B6($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0028
    bnel    $at, $zero, lbl_809F4C58
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809F4D4C:
    lw      a0, 0x0054($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F4D7C
    lw      a0, 0x0054($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBE38             # a1 = 0600BE38
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F4D7C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4D84:
    lw      t8, 0x0664(s0)             # 00000664
    addiu   t7, $zero, 0x000E          # t7 = 0000000E
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t8, $at, lbl_809F4DB4
    sb      t7, 0x0190(s0)             # 00000190
    lw      a0, 0x00BC($sp)
    addiu   a1, $zero, 0x70CF          # a1 = 000070CF
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F4DB4:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4DBC:
    lw      t2, 0x0664(s0)             # 00000664
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    sb      t1, 0x0190(s0)             # 00000190
    sltiu   $at, t2, 0x0047
    bne     $at, $zero, lbl_809F4F08
    lw      a0, 0x00BC($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F4F08
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    sh      t3, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x0298             # a1 = 06010298
    lw      a0, 0x0054($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0298             # a0 = 06010298
    mtc1    v0, $f18                   # $f18 = 0.00
    lwc1    $f16, 0x01EC(s0)           # 000001EC
    lwc1    $f14, 0x01F0(s0)           # 000001F0
    cvt.s.w $f18, $f18
    lwc1    $f12, 0x0670(s0)           # 00000670
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f10                  # $f10 = 12.00
    lwc1    $f8, 0x0674(s0)            # 00000674
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f6                   # $f6 = 7.00
    swc1    $f18, 0x01BC(s0)           # 000001BC
    lui     $at, %hi(var_80A12CB8)     # $at = 80A10000
    sub.s   $f12, $f12, $f6
    lwc1    $f18, %lo(var_80A12CB8)($at)
    lwc1    $f4, 0x0678(s0)            # 00000678
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f2                   # $f2 = 70.00
    abs.s   $f12, $f12
    sub.s   $f8, $f8, $f10
    swc1    $f2, 0x06B4(s0)            # 000006B4
    lwc1    $f2, 0x06B4(s0)            # 000006B4
    lwc1    $f0, 0x01F4(s0)            # 000001F4
    lui     $at, 0x40A0                # $at = 40A00000
    abs.s   $f8, $f8
    sub.s   $f2, $f4, $f2
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x41F0                # $at = 41F00000
    swc1    $f0, 0x06CC(s0)            # 000006CC
    sub.s   $f4, $f16, $f4
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f0, 0x067C(s0)            # 0000067C
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f16, $f14, $f16
    mtc1    $at, $f14                  # $f14 = 10.00
    swc1    $f4, 0x06C4(s0)            # 000006C4
    lwc1    $f4, 0x06C4(s0)            # 000006C4
    sub.s   $f14, $f16, $f14
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f18, 0x06E0(s0)           # 000006E0
    lwc1    $f18, 0x0680(s0)           # 00000680
    abs.s   $f2, $f2
    sub.s   $f4, $f0, $f4
    swc1    $f14, 0x06C8(s0)           # 000006C8
    lwc1    $f14, 0x06C8(s0)           # 000006C8
    lwc1    $f0, 0x0684(s0)            # 00000684
    abs.s   $f4, $f4
    sub.s   $f14, $f18, $f14
    lwc1    $f18, 0x06CC(s0)           # 000006CC
    swc1    $f16, 0x06DC(s0)           # 000006DC
    swc1    $f6, 0x06AC(s0)            # 000006AC
    abs.s   $f14, $f14
    sub.s   $f18, $f0, $f18
    swc1    $f10, 0x06B0(s0)           # 000006B0
    swc1    $f12, 0x0694(s0)           # 00000694
    swc1    $f8, 0x0698(s0)            # 00000698
    abs.s   $f18, $f18
    swc1    $f2, 0x069C(s0)            # 0000069C
    swc1    $f4, 0x06A0(s0)            # 000006A0
    swc1    $f14, 0x06A4(s0)           # 000006A4
    swc1    $f18, 0x06A8(s0)           # 000006A8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D3          # a1 = 000039D3
lbl_809F4F08:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4F10:
    addiu   t4, $zero, 0x000E          # t4 = 0000000E
    sb      t4, 0x0190(s0)             # 00000190
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    sb      t5, 0x00B5($sp)
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    addiu   a0, s0, 0x06DC             # a0 = 000006DC
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a0, 0x0054($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F4F9C
    lw      a0, 0x0054($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x0514             # a1 = 06010514
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f6                   # $f6 = 1000.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    sh      t6, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    sh      $zero, 0x02D8(s0)          # 000002D8
    sb      t7, 0x0190(s0)             # 00000190
    swc1    $f0, 0x04F8(s0)            # 000004F8
    swc1    $f6, 0x01BC(s0)            # 000001BC
    lw      t8, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t8
    swc1    $f0, 0x0AFC($at)           # 00010AFC
lbl_809F4F9C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F4FA4:
    lw      v1, 0x0664(s0)             # 00000664
    lw      t9, 0x00BC($sp)
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sltiu   $at, v1, 0x000A
    beql    $at, $zero, lbl_809F4FD4
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
lbl_809F4FD4:
    bnel    v1, $at, lbl_809F5078
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    beq     $zero, $zero, lbl_809F5074
    swc1    $f10, 0x06FC(s0)           # 000006FC
var_809F4FF0:
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f16                  # $f16 = -60.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f4                   # $f4 = -130.00
    lw      a0, 0x0664(s0)             # 00000664
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f6                   # $f6 = 70.00
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    mtc1    $zero, $f0                 # $f0 = 0.00
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    sra     a0, a0, 16
    swc1    $f16, 0x0670(s0)           # 00000670
    swc1    $f18, 0x0674(s0)           # 00000674
    swc1    $f4, 0x0678(s0)            # 00000678
    swc1    $f6, 0x0684(s0)            # 00000684
    swc1    $f0, 0x067C(s0)            # 0000067C
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0680(s0)            # 00000680
    lui     $at, %hi(var_80A12CBC)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12CBC)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f10, $f0, $f8
    jal     func_800646F0
    swc1    $f10, 0x06FC(s0)           # 000006FC
lbl_809F5074:
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
lbl_809F5078:
    sb      t2, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3163          # a1 = 00003163
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
lbl_809F5090:
    sll     t3, v0,  1
    addiu   v0, v0, 0x0001             # v0 = 00000002
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000F
    addu    t4, s0, t3
    bne     $at, $zero, lbl_809F5090
    sh      v1, 0x04D4(t4)             # 000004D4
    addiu   t5, $zero, 0x4E20          # t5 = 00004E20
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    sh      t5, 0x02D6(s0)             # 000002D6
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x04F8             # a0 = 000004F8
    jal     func_80064280
    lui     a1, 0x40A0                 # a1 = 40A00000
    lw      t6, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    bne     t6, $at, lbl_809F5148
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f16                  # $f16 = -30.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lui     $at, 0x43F6                # $at = 43F60000
    mtc1    $at, $f6                   # $f6 = 492.00
    lui     $at, 0x422C                # $at = 422C0000
    mtc1    $at, $f8                   # $f8 = 43.00
    lui     $at, 0x4411                # $at = 44110000
    mtc1    $at, $f10                  # $f10 = 580.00
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f16, 0x0670(s0)           # 00000670
    swc1    $f18, 0x0674(s0)           # 00000674
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $at, $f18                  # $f18 = 10.00
    sh      t7, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    swc1    $f4, 0x0678(s0)            # 00000678
    swc1    $f6, 0x067C(s0)            # 0000067C
    swc1    $f8, 0x0680(s0)            # 00000680
    swc1    $f10, 0x0684(s0)           # 00000684
    swc1    $f16, 0x06DC(s0)           # 000006DC
    swc1    $f18, 0x0700(s0)           # 00000700
lbl_809F5148:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5150:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3163          # a1 = 00003163
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x00BC($sp)
    bne     v1, $at, lbl_809F517C
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F517C:
    sltiu   $at, v1, 0x0033
    bne     $at, $zero, lbl_809F526C
    addiu   a0, s0, 0x0700             # a0 = 00000700
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x06DC(s0)            # 000006DC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0670             # a0 = 00000670
    lui     a1, 0x4387                 # a1 = 43870000
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f10, 0x06DC(s0)           # 000006DC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f18, $f10, $f16
    addiu   a0, s0, 0x0678             # a0 = 00000678
    lui     a1, 0x4382                 # a1 = 43820000
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    lwc1    $f4, 0x06DC(s0)            # 000006DC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0680             # a0 = 00000680
    lui     a1, 0x42CE                 # a1 = 42CE0000
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f10, 0x06DC(s0)           # 000006DC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f18, $f10, $f16
    addiu   a0, s0, 0x0684             # a0 = 00000684
    lui     a1, 0x438C                 # a1 = 438C0000
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addiu   a0, s0, 0x06DC             # a0 = 000006DC
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F526C:
    sll     a0, v1,  2
    subu    a0, a0, v1
    sll     a0, a0,  3
    addu    a0, a0, v1
    sll     a0, a0,  2
    subu    a0, a0, v1
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f4, 0x0700(s0)            # 00000700
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f6, $f0, $f4
    jal     func_800646F0
    swc1    $f6, 0x06FC(s0)            # 000006FC
    lw      t8, 0x0664(s0)             # 00000664
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    sltiu   $at, t8, 0x0064
    beq     $at, $zero, lbl_809F52D0
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    sb      t9, 0x070B(s0)             # 0000070B
    beq     $zero, $zero, lbl_809F52D8
    sb      t1, 0x0190(s0)             # 00000190
lbl_809F52D0:
    sb      t2, 0x0190(s0)             # 00000190
    sb      t3, 0x070B(s0)             # 0000070B
lbl_809F52D8:
    lw      v1, 0x0664(s0)             # 00000664
    addiu   a0, s0, 0x0704             # a0 = 00000704
    lui     a1, 0x437F                 # a1 = 437F0000
    sltiu   $at, v1, 0x0082
    bne     $at, $zero, lbl_809F52FC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F52FC:
    addiu   $at, $zero, 0x00B4         # $at = 000000B4
    bne     v1, $at, lbl_809F5340
    lw      t5, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    lw      t7, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x043F          # t6 = 0000043F
    addu    $at, $at, t7
    sh      t6, 0x1E1A($at)            # 00011E1A
    lw      t9, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addu    $at, $at, t9
    sb      t8, 0x1E5E($at)            # 00011E5E
lbl_809F5340:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5348:
    lw      a0, 0x00BC($sp)
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0
    lw      a0, 0x00BC($sp)
    sh      v0, 0x066A(s0)             # 0000066A
    lw      a0, 0x00BC($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x00BC($sp)
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xADDC             # a1 = 0600ADDC
    lw      a0, 0x0054($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEA00             # a0 = 0600EA00
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      a2, 0x00BC($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f8
    addiu   t1, $zero, 0x0065          # t1 = 00000065
    sh      t1, 0x0668(s0)             # 00000668
    swc1    $f0, 0x015C(s0)            # 0000015C
    lui     $at, %hi(var_80A12CC0)     # $at = 80A10000
    addiu   t2, $zero, 0x2000          # t2 = 00002000
    swc1    $f10, 0x01BC(s0)           # 000001BC
    lwc1    $f16, %lo(var_80A12CC0)($at)
    sw      t2, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0179          # a3 = 00000179
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f0, 0x0018($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_800253F0
    swc1    $f16, 0x0014($sp)
    lui     $at, 0xC3EC                # $at = C3EC0000
    mtc1    $at, $f0                   # $f0 = -472.00
    lui     $at, %hi(var_80A12CC4)     # $at = 80A10000
    lwc1    $f2, %lo(var_80A12CC4)($at)
    lw      a0, 0x00B0($sp)
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    sw      v0, 0x0000(t0)             # 80A13F84
    lui     $at, %hi(var_80A12CC8)     # $at = 80A10000
    swc1    $f0, 0x0024(a0)            # 00000024
    lwc1    $f18, %lo(var_80A12CC8)($at)
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f4                   # $f4 = -130.00
    addiu   t3, $zero, 0x8000          # t3 = FFFF8000
    sh      t3, 0x00B6(a0)             # 000000B6
    swc1    $f18, 0x0028(a0)           # 00000028
    swc1    $f4, 0x002C(a0)            # 0000002C
    lui     $at, %hi(var_80A12CCC)     # $at = 80A10000
    swc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f6, %lo(var_80A12CCC)($at)
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f8                   # $f8 = -400.00
    lui     $at, %hi(var_80A12CD0)     # $at = 80A10000
    swc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f10, %lo(var_80A12CD0)($at)
    lui     $at, 0xC320                # $at = C3200000
    mtc1    $at, $f16                  # $f16 = -160.00
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f18                  # $f18 = -100.00
    lui     v1, %hi(var_80A13F7C)      # v1 = 80A10000
    addiu   v1, v1, %lo(var_80A13F7C)  # v1 = 80A13F7C
    sh      $zero, 0x00B6(s0)          # 000000B6
    lui     $at, 0xC000                # $at = C0000000
    swc1    $f0, 0x0670(s0)            # 00000670
    swc1    $f0, 0x067C(s0)            # 0000067C
    swc1    $f2, 0x0674(s0)            # 00000674
    swc1    $f2, 0x0680(s0)            # 00000680
    swc1    $f10, 0x00BC(s0)           # 000000BC
    swc1    $f16, 0x0678(s0)           # 00000678
    swc1    $f18, 0x0684(s0)           # 00000684
    lw      t4, 0x0000(v1)             # 80A13F7C
    mtc1    $at, $f4                   # $f4 = -2.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    swc1    $f4, 0x16A0(t4)            # 000016A0
    lw      t5, 0x0000(v1)             # 80A13F7C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    swc1    $f6, 0x16A4(t5)            # 000016A4
    lw      t6, 0x0000(v1)             # 80A13F7C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_80A12CD4)     # $at = 80A10000
    swc1    $f8, 0x16A8(t6)            # 000016A8
    lw      t7, 0x0000(v1)             # 80A13F7C
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    swc1    $f10, 0x16C0(t7)           # 000016C0
    lw      t8, 0x0000(v1)             # 80A13F7C
    lwc1    $f16, %lo(var_80A12CD4)($at)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    swc1    $f16, 0x169C(t8)           # 0000169C
    lw      t1, 0x0000(v1)             # 80A13F7C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t9, 0x16F4(t1)             # 000016F4
    swc1    $f18, 0x0704(s0)           # 00000704
    lw      t2, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2
    swc1    $f4, 0x0AFC($at)           # 00010AFC
var_809F5524:
    lui     $at, %hi(var_80A12CD8)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12CD8)($at)
    lw      t3, 0x00B0($sp)
    addiu   a0, s0, 0x0704             # a0 = 00000704
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_800642F0
    swc1    $f6, 0x0028(t3)            # FFFF8028
    lw      t4, 0x0664(s0)             # 00000664
    addiu   a0, s0, 0x0678             # a0 = 00000678
    lui     a1, 0xC402                 # a1 = C4020000
    sltiu   $at, t4, 0x0029
    bne     $at, $zero, lbl_809F5648
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_80064280
    lw      a3, 0x06DC(s0)             # 000006DC
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x06DC             # a0 = 000006DC
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0096         # $at = 00000096
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $at, lbl_809F55A0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      v1, 0x0664(s0)             # 00000664
    swc1    $f8, 0x015C(s0)            # 0000015C
lbl_809F55A0:
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    v1, $at, lbl_809F55BC
    addiu   $at, $zero, 0x00BB         # $at = 000000BB
    jal     func_80022FD0
    addiu   a1, $zero, 0x08C5          # a1 = 000008C5
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x00BB         # $at = 000000BB
lbl_809F55BC:
    bne     v1, $at, lbl_809F55D0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F55D0:
    addiu   $at, $zero, 0x00B4         # $at = 000000B4
    bne     v1, $at, lbl_809F55E8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F55E8:
    addiu   $at, $zero, 0x00BE         # $at = 000000BE
    bne     v1, $at, lbl_809F5634
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFBC
    lw      t6, 0x0024(s0)             # 00000024
    lui     $at, %hi(var_80A12CDC)     # $at = 80A10000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sw      t6, 0x0000(a1)             # FFFFFFBC
    lw      t5, 0x0028(s0)             # 00000028
    lui     a3, 0x3F33                 # a3 = 3F330000
    ori     a3, a3, 0x3333             # a3 = 3F333333
    sw      t5, 0x0004(a1)             # FFFFFFC0
    lw      t6, 0x002C(s0)             # 0000002C
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    sw      t6, 0x0008(a1)             # FFFFFFC4
    lwc1    $f10, %lo(var_80A12CDC)($at)
    lw      a0, 0x00BC($sp)
    jal     func_809F21F0
    swc1    $f10, 0x0078($sp)
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F5634:
    addiu   $at, $zero, 0x00E6         # $at = 000000E6
    bne     v1, $at, lbl_809F5648
    addiu   t7, $zero, 0x0066          # t7 = 00000066
    sh      t7, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F5648:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5650:
    lui     $at, 0xC3EC                # $at = C3EC0000
    mtc1    $at, $f0                   # $f0 = -472.00
    lui     $at, %hi(var_80A12CE0)     # $at = 80A10000
    lwc1    $f2, %lo(var_80A12CE0)($at)
    lui     $at, 0xC307                # $at = C3070000
    mtc1    $at, $f12                  # $f12 = -135.00
    lui     $at, %hi(var_80A12CE4)     # $at = 80A10000
    lwc1    $f16, %lo(var_80A12CE4)($at)
    lw      t8, 0x00B0($sp)
    lui     $at, 0xC3DD                # $at = C3DD0000
    mtc1    $at, $f18                  # $f18 = -442.00
    swc1    $f16, 0x0028(t8)           # 00000028
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0005         # $at = 00000005
    swc1    $f0, 0x067C(s0)            # 0000067C
    swc1    $f2, 0x0674(s0)            # 00000674
    swc1    $f2, 0x0680(s0)            # 00000680
    swc1    $f12, 0x0678(s0)           # 00000678
    swc1    $f12, 0x0684(s0)           # 00000684
    bne     v1, $at, lbl_809F56C0
    swc1    $f18, 0x0670(s0)           # 00000670
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x004C          # a2 = 0000004C
    lui     $at, 0xC3EC                # $at = C3EC0000
    mtc1    $at, $f0                   # $f0 = -472.00
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F56C0:
    addiu   $at, $zero, 0x0046         # $at = 00000046
    bne     v1, $at, lbl_809F56E4
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x004D          # a2 = 0000004D
    lui     $at, 0xC3EC                # $at = C3EC0000
    mtc1    $at, $f0                   # $f0 = -472.00
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F56E4:
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v1, $at, lbl_809F5734
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t9, $zero, 0x0067          # t9 = 00000067
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    sh      t9, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lw      t1, 0x0000(t0)             # 80A13F84
    lui     $at, 0x4588                # $at = 45880000
    mtc1    $at, $f4                   # $f4 = 4352.00
    swc1    $f0, 0x0024(t1)            # 00000024
    lw      t2, 0x0000(t0)             # 80A13F84
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f6                   # $f6 = -200.00
    swc1    $f4, 0x0028(t2)            # 00000028
    lw      t3, 0x0000(t0)             # 80A13F84
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    swc1    $f6, 0x002C(t3)            # 0000002C
    lw      t5, 0x0000(t0)             # 80A13F84
    sb      t4, 0x03B8(t5)             # 000003B8
lbl_809F5734:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F573C:
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      a0, 0x0000(t0)             # 80A13F84
    jal     func_80022FD0
    addiu   a1, $zero, 0x20D5          # a1 = 000020D5
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      a0, 0x0000(t0)             # 80A13F84
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x3000             # a1 = 45803000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     $at, 0xC372                # $at = C3720000
    mtc1    $at, $f8                   # $f8 = -242.00
    lui     $at, %hi(var_80A12CE8)     # $at = 80A10000
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    swc1    $f8, 0x0670(s0)            # 00000670
    lwc1    $f10, %lo(var_80A12CE8)($at)
    lui     $at, 0xC33E                # $at = C33E0000
    mtc1    $at, $f16                  # $f16 = -190.00
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    swc1    $f10, 0x0674(s0)           # 00000674
    swc1    $f16, 0x0678(s0)           # 00000678
    lw      t6, 0x0000(t0)             # 80A13F84
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f18, 0x0024(t6)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    swc1    $f18, 0x067C(s0)           # 0000067C
    lw      t7, 0x0000(t0)             # 80A13F84
    lw      t9, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    lwc1    $f4, 0x0028(t7)            # 00000028
    add.s   $f8, $f4, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0680(s0)           # 00000680
    lw      t8, 0x0000(t0)             # 80A13F84
    lwc1    $f18, 0x002C(t8)           # 0000002C
    bne     t9, $at, lbl_809F580C
    swc1    $f18, 0x0684(s0)           # 00000684
    lui     $at, %hi(var_80A12CEC)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12CEC)($at)
    lw      t1, 0x0000(t0)             # 80A13F84
    addiu   t2, $zero, 0x0068          # t2 = 00000068
    swc1    $f4, 0x0028(t1)            # 00000028
    sh      t2, 0x0668(s0)             # 00000668
    beq     $zero, $zero, lbl_809F5814
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F580C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
lbl_809F5814:
    lui     $at, 0xC3D8                # $at = C3D80000
    mtc1    $at, $f6                   # $f6 = -432.00
    lui     $at, %hi(var_80A12CF0)     # $at = 80A10000
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    swc1    $f6, 0x0670(s0)            # 00000670
    lwc1    $f8, %lo(var_80A12CF0)($at)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    swc1    $f8, 0x0674(s0)            # 00000674
    swc1    $f10, 0x0678(s0)           # 00000678
    lw      t3, 0x0000(t0)             # 80A13F84
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f16, 0x0024(t3)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    swc1    $f16, 0x067C(s0)           # 0000067C
    lw      t4, 0x0000(t0)             # 80A13F84
    lw      v1, 0x0664(s0)             # 00000664
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lwc1    $f18, 0x0028(t4)           # 00000028
    sltiu   $at, v1, 0x000A
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    add.s   $f6, $f18, $f4
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0680(s0)           # 00000680
    lw      t5, 0x0000(t0)             # 80A13F84
    lwc1    $f16, 0x002C(t5)           # 0000002C
    bne     $at, $zero, lbl_809F58B4
    swc1    $f16, 0x0684(s0)           # 00000684
    lw      a0, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    jal     func_800642F0
    addu    a0, a0, $at
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F58B4:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v1, $at, lbl_809F58D0
    addiu   t1, $zero, 0x0069          # t1 = 00000069
    lw      t7, 0x0000(t0)             # 80A13F84
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sb      t6, 0x03B8(t7)             # 000003B8
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F58D0:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v1, $at, lbl_809F58F0
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lw      t9, 0x0000(t0)             # 80A13F84
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sb      t8, 0x03B8(t9)             # 000003B8
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0064         # $at = 00000064
lbl_809F58F0:
    bne     v1, $at, lbl_809F5900
    nop
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F5900:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5908:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lui     $at, 0xC3E1                # $at = C3E10000
    mtc1    $at, $f18                  # $f18 = -450.00
    lui     $at, %hi(var_80A12CF4)     # $at = 80A10000
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    swc1    $f18, 0x0670(s0)           # 00000670
    lwc1    $f4, %lo(var_80A12CF4)($at)
    lui     $at, 0xC336                # $at = C3360000
    mtc1    $at, $f6                   # $f6 = -182.00
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    swc1    $f4, 0x0674(s0)            # 00000674
    swc1    $f6, 0x0678(s0)            # 00000678
    lw      t2, 0x0000(t0)             # 80A13F84
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    lwc1    $f8, 0x0024(t2)            # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    lw      v1, 0x0664(s0)             # 00000664
    sub.s   $f10, $f8, $f0
    addiu   a1, $zero, 0x70D0          # a1 = 000070D0
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f10, 0x067C(s0)           # 0000067C
    lw      t3, 0x0000(t0)             # 80A13F84
    mtc1    $at, $f10                  # $f10 = 25.00
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lwc1    $f16, 0x0028(t3)           # 00000028
    add.s   $f4, $f16, $f18
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x0680(s0)            # 00000680
    lw      t4, 0x0000(t0)             # 80A13F84
    lwc1    $f8, 0x002C(t4)            # 0000002C
    sub.s   $f16, $f8, $f10
    bne     v1, $at, lbl_809F59A0
    swc1    $f16, 0x0684(s0)           # 00000684
    jal     func_800DCE14
    lw      a0, 0x00BC($sp)
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F59A0:
    sltiu   $at, v1, 0x0065
    bne     $at, $zero, lbl_809F59C4
    lw      a0, 0x00BC($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F59C4
    addiu   t5, $zero, 0x041F          # t5 = 0000041F
    sh      t5, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F59C4:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
    lw      a0, 0x0664(s0)             # 00000664
lbl_809F59D0:
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A12CF8)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12CF8)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f4, $f0, $f18
    jal     func_800646F0
    swc1    $f4, 0x06FC(s0)            # 000006FC
    lw      v1, 0x0664(s0)             # 00000664
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    bne     v1, $at, lbl_809F5A48
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      t7, 0x0000(t0)             # 80A13F84
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    or      a1, s0, $zero              # a1 = 00000000
    sb      t6, 0x03B8(t7)             # 000003B8
    lw      a0, 0x00BC($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F5A48:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v1, $at, lbl_809F5A5C
    addiu   t8, $zero, 0x0420          # t8 = 00000420
    sh      t8, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F5A5C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
lbl_809F5A64:
    lw      a0, 0x0664(s0)             # 00000664
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A12CFC)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12CFC)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f8, $f0, $f6
    jal     func_800646F0
    swc1    $f8, 0x06FC(s0)            # 000006FC
    lui     $at, %hi(var_80A12D00)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12D00)($at)
    lui     $at, 0x4581                # $at = 45810000
    mtc1    $at, $f16                  # $f16 = 4128.00
    lui     $at, 0xC322                # $at = C3220000
    mtc1    $at, $f18                  # $f18 = -162.00
    lui     $at, 0xC3D0                # $at = C3D00000
    mtc1    $at, $f4                   # $f4 = -416.00
    lui     $at, %hi(var_80A12D04)     # $at = 80A10000
    swc1    $f10, 0x0670(s0)           # 00000670
    swc1    $f16, 0x0674(s0)           # 00000674
    swc1    $f18, 0x0678(s0)           # 00000678
    swc1    $f4, 0x067C(s0)            # 0000067C
    lwc1    $f6, %lo(var_80A12D04)($at)
    lw      t9, 0x0664(s0)             # 00000664
    lui     $at, 0xC296                # $at = C2960000
    mtc1    $at, $f8                   # $f8 = -75.00
    sltiu   $at, t9, 0x0029
    swc1    $f6, 0x0680(s0)            # 00000680
    bne     $at, $zero, lbl_809F5B0C
    swc1    $f8, 0x0684(s0)            # 00000684
    addiu   t1, $zero, 0x0421          # t1 = 00000421
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F5B0C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
    lw      a0, 0x0664(s0)             # 00000664
lbl_809F5B18:
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f16, 0x06E0(s0)           # 000006E0
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f4, $f0, $f18
    jal     func_800646F0
    swc1    $f4, 0x06FC(s0)            # 000006FC
    lui     $at, %hi(var_80A12D08)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12D08)($at)
    lwc1    $f6, 0x06E0(s0)            # 000006E0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0670             # a0 = 00000670
    lui     a1, 0xC496                 # a1 = C4960000
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x42E2                # $at = 42E20000
    mtc1    $at, $f18                  # $f18 = 113.00
    lwc1    $f16, 0x06E0(s0)           # 000006E0
    lui     a1, 0x4584                 # a1 = 45840000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f4, $f16, $f18
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x8800             # a1 = 45848800
    addiu   a0, s0, 0x0674             # a0 = 00000674
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lui     $at, %hi(var_80A12D0C)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12D0C)($at)
    lwc1    $f6, 0x06E0(s0)            # 000006E0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0678             # a0 = 00000678
    lui     a1, 0xC483                 # a1 = C4830000
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    addiu   a0, s0, 0x06E0             # a0 = 000006E0
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t2, 0x0664(s0)             # 00000664
    addiu   t3, $zero, 0x006A          # t3 = 0000006A
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    sltiu   $at, t2, 0x0051
    bne     $at, $zero, lbl_809F5C2C
    nop
    sh      t3, 0x0668(s0)             # 00000668
    sw      t4, 0x0664(s0)             # 00000664
lbl_809F5C2C:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5C34:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lui     $at, 0xC3E1                # $at = C3E10000
    mtc1    $at, $f16                  # $f16 = -450.00
    lui     $at, %hi(var_80A12D10)     # $at = 80A10000
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    swc1    $f16, 0x0670(s0)           # 00000670
    lwc1    $f18, %lo(var_80A12D10)($at)
    lui     $at, 0xC336                # $at = C3360000
    mtc1    $at, $f4                   # $f4 = -182.00
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    swc1    $f18, 0x0674(s0)           # 00000674
    swc1    $f4, 0x0678(s0)            # 00000678
    lw      t5, 0x0000(t0)             # 80A13F84
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f6, 0x0024(t5)            # 00000024
    lw      a0, 0x0664(s0)             # 00000664
    lui     $at, 0x41C8                # $at = 41C80000
    sub.s   $f8, $f6, $f0
    swc1    $f8, 0x067C(s0)            # 0000067C
    lw      t6, 0x0000(t0)             # 80A13F84
    mtc1    $at, $f8                   # $f8 = 25.00
    addu    $at, a0, $zero
    lwc1    $f10, 0x0028(t6)           # 00000028
    sll     a0, a0,  2
    subu    a0, a0, $at
    add.s   $f18, $f10, $f16
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    add.s   $f4, $f18, $f0
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    swc1    $f4, 0x0680(s0)            # 00000680
    lw      t7, 0x0000(t0)             # 80A13F84
    sra     a0, a0, 16
    lwc1    $f6, 0x002C(t7)            # 0000002C
    sub.s   $f10, $f6, $f8
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0684(s0)           # 00000684
    lui     $at, %hi(var_80A12D14)     # $at = 80A10000
    lwc1    $f16, %lo(var_80A12D14)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f18, $f0, $f16
    jal     func_800646F0
    swc1    $f18, 0x06FC(s0)           # 000006FC
    lw      v1, 0x0664(s0)             # 00000664
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   $at, $zero, 0x0046         # $at = 00000046
    bne     v1, $at, lbl_809F5D18
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      t9, 0x0000(t0)             # 80A13F84
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sb      t8, 0x03B8(t9)             # 000003B8
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F5D18:
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v1, $at, lbl_809F5D34
    lw      a0, 0x00BC($sp)
    addiu   a1, $zero, 0x70D1          # a1 = 000070D1
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0664(s0)             # 00000664
lbl_809F5D34:
    sltiu   $at, v1, 0x0097
    bne     $at, $zero, lbl_809F5D78
    lw      a0, 0x00BC($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_809F5D78
    addiu   t1, $zero, 0x006B          # t1 = 0000006B
    sh      t1, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
    lw      a0, 0x00BC($sp)
    addiu   a1, $zero, 0x70D2          # a1 = 000070D2
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0039          # a2 = 00000039
lbl_809F5D78:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5D80:
    lw      a0, 0x0664(s0)             # 00000664
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A12D18)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12D18)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f6, $f0, $f4
    jal     func_800646F0
    swc1    $f6, 0x06FC(s0)            # 000006FC
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lui     $at, 0xC3BE                # $at = C3BE0000
    mtc1    $at, $f8                   # $f8 = -380.00
    lui     $at, %hi(var_80A12D1C)     # $at = 80A10000
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    swc1    $f8, 0x0670(s0)            # 00000670
    lwc1    $f10, %lo(var_80A12D1C)($at)
    lui     $at, 0xC372                # $at = C3720000
    mtc1    $at, $f16                  # $f16 = -242.00
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    swc1    $f10, 0x0674(s0)           # 00000674
    swc1    $f16, 0x0678(s0)           # 00000678
    lw      t2, 0x0000(t0)             # 80A13F84
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f18, 0x0024(t2)           # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    sub.s   $f4, $f18, $f0
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t5, 0x0664(s0)             # 00000664
    sub.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    swc1    $f8, 0x067C(s0)            # 0000067C
    lw      t3, 0x0000(t0)             # 80A13F84
    lwc1    $f10, 0x0028(t3)           # 00000028
    add.s   $f18, $f10, $f16
    mtc1    $at, $f16                  # $f16 = 25.00
    lui     $at, 0x42A0                # $at = 42A00000
    add.s   $f4, $f18, $f0
    sub.s   $f8, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 80.00
    sltiu   $at, t5, 0x0033
    swc1    $f8, 0x0680(s0)            # 00000680
    lw      t4, 0x0000(t0)             # 80A13F84
    lwc1    $f10, 0x002C(t4)           # 0000002C
    sub.s   $f18, $f10, $f16
    add.s   $f6, $f18, $f4
    bne     $at, $zero, lbl_809F5EA0
    swc1    $f6, 0x0684(s0)            # 00000684
    lw      a0, 0x00BC($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    bne     v0, $zero, lbl_809F5EA0
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      t7, 0x0000(t0)             # 80A13F84
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t8, $zero, 0x006C          # t8 = 0000006C
    sb      t6, 0x03B8(t7)             # 000003B8
    sh      t8, 0x0668(s0)             # 00000668
    sw      $zero, 0x0664(s0)          # 00000664
lbl_809F5EA0:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F5EA8:
    lw      a0, 0x0664(s0)             # 00000664
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A12D20)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12D20)($at)
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    mul.s   $f10, $f0, $f8
    jal     func_800646F0
    swc1    $f10, 0x06FC(s0)           # 000006FC
    lui     t0, %hi(var_80A13F84)      # t0 = 80A10000
    addiu   t0, t0, %lo(var_80A13F84)  # t0 = 80A13F84
    lw      t9, 0x0000(t0)             # 80A13F84
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f16, 0x0024(t9)           # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    sub.s   $f18, $f16, $f0
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     $at, 0x41A0                # $at = 41A00000
    sub.s   $f6, $f18, $f4
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    lw      t3, 0x0664(s0)             # 00000664
    swc1    $f6, 0x067C(s0)            # 0000067C
    lw      t1, 0x0000(t0)             # 80A13F84
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f8, 0x0028(t1)            # 00000028
    add.s   $f16, $f8, $f10
    mtc1    $at, $f10                  # $f10 = 25.00
    lui     $at, 0x42A0                # $at = 42A00000
    add.s   $f18, $f16, $f0
    sub.s   $f6, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 80.00
    sltiu   $at, t3, 0x0033
    swc1    $f6, 0x0680(s0)            # 00000680
    lw      t2, 0x0000(t0)             # 80A13F84
    lwc1    $f8, 0x002C(t2)            # 0000002C
    sub.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    bne     $at, $zero, lbl_809F6010
    swc1    $f4, 0x0684(s0)            # 00000684
    jal     func_8009D2F0
    lw      a0, 0x00BC($sp)
    addiu   v1, s0, 0x0670             # v1 = 00000670
    lw      t5, 0x0000(v1)             # 00000670
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t5, 0x005C(v0)             # 0000005C
    lw      t4, 0x0004(v1)             # 00000674
    sw      t4, 0x0060(v0)             # 00000060
    lw      t5, 0x0008(v1)             # 00000678
    sw      t5, 0x0064(v0)             # 00000064
    lw      t7, 0x0000(v1)             # 00000670
    sw      t7, 0x0074(v0)             # 00000074
    lw      t6, 0x0004(v1)             # 00000674
    sw      t6, 0x0078(v0)             # 00000078
    lw      t7, 0x0008(v1)             # 00000678
    sw      t7, 0x007C(v0)             # 0000007C
    lw      t9, 0x067C(s0)             # 0000067C
    sw      t9, 0x0050(v0)             # 00000050
    lw      t8, 0x0680(s0)             # 00000680
    sw      t8, 0x0054(v0)             # 00000054
    lw      t9, 0x0684(s0)             # 00000684
    sw      t9, 0x0058(v0)             # 00000058
    lh      a1, 0x066A(s0)             # 0000066A
    jal     func_8009D718
    lw      a0, 0x00BC($sp)
    lw      a0, 0x00BC($sp)
    addiu   t1, $zero, 0x006D          # t1 = 0000006D
    sh      t1, 0x0668(s0)             # 00000668
    sh      $zero, 0x066A(s0)          # 0000066A
    jal     func_80052340
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x00BC($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x00BC($sp)
    jal     func_800204D0
    addiu   a1, $zero, 0x0037          # a1 = 00000037
lbl_809F6010:
    beq     $zero, $zero, lbl_809F6024
    lh      a0, 0x0668(s0)             # 00000668
var_809F6018:
    jal     func_800646F0
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    lh      a0, 0x0668(s0)             # 00000668
lbl_809F6024:
    slti    $at, a0, 0x0064
lbl_809F6028:
    bne     $at, $zero, lbl_809F6034
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sb      t2, 0x0190(s0)             # 00000190
lbl_809F6034:
    lh      t3, 0x066A(s0)             # 0000066A
    addiu   t4, s0, 0x0670             # t4 = 00000670
    beql    t3, $zero, lbl_809F6190
    lw      $ra, 0x003C($sp)
    lbu     t6, 0x00B5($sp)
    addiu   t5, s0, 0x067C             # t5 = 0000067C
    sw      t5, 0x0044($sp)
    beq     t6, $zero, lbl_809F614C
    sw      t4, 0x0058($sp)
    lwc1    $f6, 0x0694(s0)            # 00000694
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    lw      a1, 0x06AC(s0)             # 000006AC
    lw      a2, 0x06E0(s0)             # 000006E0
    mul.s   $f10, $f6, $f8
    addiu   t7, s0, 0x0678             # t7 = 00000678
    addiu   t8, s0, 0x0680             # t8 = 00000680
    addiu   t9, s0, 0x0684             # t9 = 00000684
    addiu   t1, s0, 0x0674             # t1 = 00000674
    sw      t1, 0x0048($sp)
    sw      t9, 0x004C($sp)
    mfc1    a3, $f10
    sw      t8, 0x0050($sp)
    sw      t7, 0x0054($sp)
    jal     func_80064280
    or      a0, t4, $zero              # a0 = 00000670
    lwc1    $f16, 0x0698(s0)           # 00000698
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a0, 0x0048($sp)
    lw      a1, 0x06B0(s0)             # 000006B0
    mul.s   $f4, $f16, $f18
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x069C(s0)            # 0000069C
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    lw      a0, 0x0054($sp)
    lw      a1, 0x06B4(s0)             # 000006B4
    mul.s   $f10, $f6, $f8
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x06A0(s0)           # 000006A0
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a0, 0x0044($sp)
    lw      a1, 0x06C4(s0)             # 000006C4
    mul.s   $f4, $f16, $f18
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x06A4(s0)            # 000006A4
    lwc1    $f8, 0x06DC(s0)            # 000006DC
    lw      a0, 0x0050($sp)
    lw      a1, 0x06C8(s0)             # 000006C8
    mul.s   $f10, $f6, $f8
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x06A8(s0)           # 000006A8
    lwc1    $f18, 0x06DC(s0)           # 000006DC
    lw      a0, 0x004C($sp)
    lw      a1, 0x06CC(s0)             # 000006CC
    mul.s   $f4, $f16, $f18
    lw      a2, 0x06E0(s0)             # 000006E0
    mfc1    a3, $f4
    jal     func_80064280
    nop
lbl_809F614C:
    lw      t2, 0x0044($sp)
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFAC
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0000(a2)             # FFFFFFAC
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0004(a2)             # FFFFFFB0
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(a2)             # FFFFFFB4
    lwc1    $f6, 0x0068($sp)
    lwc1    $f8, 0x06FC(s0)            # 000006FC
    lw      a3, 0x0058($sp)
    lw      a0, 0x00BC($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0068($sp)
    jal     func_8009D328
    lh      a1, 0x066A(s0)             # 0000066A
    lw      $ra, 0x003C($sp)
lbl_809F6190:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000
    jr      $ra
    nop


func_809F61A0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a1, 0x0004($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     t7, %hi(func_809F61DC)     # t7 = 809F0000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, t7, %lo(func_809F61DC) # t7 = 809F61DC
    sh      $zero, 0x01B2(a0)          # 000001B2
    swc1    $f0, 0x005C(a0)            # 0000005C
    swc1    $f0, 0x0060(a0)            # 00000060
    sh      t6, 0x01A6(a0)             # 000001A6
    sw      t7, 0x0184(a0)             # 00000184
    swc1    $f4, 0x01C0(a0)            # 000001C0
    jr      $ra
    nop


func_809F61DC:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x008C($sp)
    addiu   s0, s1, 0x0140             # s0 = 00000140
    jal     func_8008C9C0
    or      a0, s0, $zero              # a0 = 00000140
    lhu     t6, 0x01B2(s1)             # 000001B2
    sltiu   $at, t6, 0x0005
    beq     $at, $zero, lbl_809F6678
    sll     t6, t6,  2
    lui     $at, %hi(var_80A12D24)     # $at = 80A10000
    addu    $at, $at, t6
    lw      t6, %lo(var_80A12D24)($at)
    jr      t6
    nop
var_809F6228:
    lh      a0, 0x0192(s1)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x0192(s1)             # 00000192
    lwc1    $f4, 0x01C0(s1)            # 000001C0
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    mul.s   $f20, $f4, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f6, 0x01C0(s1)            # 000001C0
    mfc1    a1, $f20
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f8, $f6, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0024             # a0 = 00000024
    swc1    $f8, 0x0078($sp)
    jal     func_80064280
    lw      a3, 0x01B8(s1)             # 000001B8
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    lw      a1, 0x0078($sp)
    jal     func_80064280
    lw      a3, 0x01B8(s1)             # 000001B8
    addiu   a0, s1, 0x01C0             # a0 = 000001C0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    lh      v0, 0x01A6(s1)             # 000001A6
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_809F62E4
    slti    $at, v0, 0x000E
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CB          # a1 = 000039CB
    lh      v0, 0x01A6(s1)             # 000001A6
    slti    $at, v0, 0x000E
lbl_809F62E4:
    beq     $at, $zero, lbl_809F6334
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f20                  # $f20 = 250.00
    lui     $at, %hi(var_80A12D38)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12D38)($at)
    lui     $at, %hi(var_80A12D3C)     # $at = 80A10000
    lwc1    $f16, %lo(var_80A12D3C)($at)
    lwc1    $f10, 0x0248(s1)           # 00000248
    addiu   a0, s1, 0x0244             # a0 = 00000244
    add.s   $f18, $f0, $f16
    lui     a1, 0x40E0                 # a1 = 40E00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    add.s   $f4, $f10, $f18
    jal     func_80064280
    swc1    $f4, 0x0248(s1)            # 00000248
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_809F6340
    sb      t7, 0x0190(s1)             # 00000190
lbl_809F6334:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f20                  # $f20 = 200.00
    nop
lbl_809F6340:
    mfc1    a1, $f20
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    jal     func_80064280
    lw      a3, 0x0060(s1)             # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s1, 0x0060             # a0 = 00000060
    lui     a1, 0x41A0                 # a1 = 41A00000
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80064280
    nop
    lh      v0, 0x01A6(s1)             # 000001A6
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lui     a0, 0x0600                 # a0 = 06000000
    bne     v0, $at, lbl_809F63C0
    nop
    jal     func_8008A194
    addiu   a0, a0, 0x2D2C             # a0 = 06002D2C
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2D2C             # a1 = 06002D2C
    cvt.s.w $f8, $f6
    or      a0, s0, $zero              # a0 = 00000140
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    swc1    $f8, 0x01BC(s1)            # 000001BC
    mtc1    $zero, $f16                # $f16 = 0.00
    lh      v0, 0x01A6(s1)             # 000001A6
    swc1    $f16, 0x0060(s1)           # 00000060
lbl_809F63C0:
    bne     v0, $zero, lbl_809F6678
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t8, 0x01B2(s1)             # 000001B2
    beq     $zero, $zero, lbl_809F6678
    swc1    $f10, 0x0060(s1)           # 00000060
var_809F63D8:
    lui     $at, 0xBF80                # $at = BF800000
    lui     t9, %hi(var_80A13F7C)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F7C)(t9)
    mtc1    $at, $f18                  # $f18 = -1.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   a0, s1, 0x0060             # a0 = 00000060
    swc1    $f18, 0x16B8(t9)           # 80A116B8
    sb      t0, 0x0190(s1)             # 00000190
    lui     a1, 0xC248                 # a1 = C2480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lwc1    $f4, 0x0028(s1)            # 00000028
    lwc1    $f6, 0x0060(s1)            # 00000060
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    add.s   $f8, $f4, $f6
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f16, 0x0028(s1)           # 00000028
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_809F667C
    lh      v0, 0x018C(s1)             # 0000018C
    swc1    $f0, 0x0028(s1)            # 00000028
    sh      t1, 0x01B2(s1)             # 000001B2
    sh      t2, 0x01A6(s1)             # 000001A6
    jal     func_80026CF4
    lw      a1, 0x008C($sp)
    addiu   t3, $zero, 0x0023          # t3 = 00000023
    sh      t3, 0x018C(s1)             # 0000018C
    sb      $zero, 0x018E(s1)          # 0000018E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3915          # a1 = 00003915
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t6, 0x0250(s1)             # 00000250
    addiu   t4, $sp, 0x0060            # t4 = FFFFFFD8
    swc1    $f10, 0x0244(s1)           # 00000244
    sw      t6, 0x0000(t4)             # FFFFFFD8
    lw      t5, 0x0254(s1)             # 00000254
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    sw      t5, 0x0004(t4)             # FFFFFFDC
    lw      t6, 0x0258(s1)             # 00000258
    mtc1    $at, $f20                  # $f20 = 25.00
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t6, 0x0008(t4)             # FFFFFFE0
    swc1    $f18, 0x0064($sp)
lbl_809F64AC:
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f12                  # $f12 = 17.00
    jal     func_80026D64
    swc1    $f0, 0x006C($sp)
    swc1    $f0, 0x0070($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    jal     func_80026D64
    swc1    $f0, 0x0074($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f8                   # $f8 = 13.00
    add.s   $f6, $f0, $f4
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sw      t7, 0x0018($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    swc1    $f6, 0x0010($sp)
    lw      a0, 0x008C($sp)
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD8
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFE4
    jal     func_809F1F3C
    swc1    $f8, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0050
    bne     $at, $zero, lbl_809F64AC
    nop
    beq     $zero, $zero, lbl_809F667C
    lh      v0, 0x018C(s1)             # 0000018C
var_809F653C:
    lh      t9, 0x01A6(s1)             # 000001A6
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0190(s1)             # 00000190
    bne     t9, $zero, lbl_809F6678
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x343C             # a0 = 0600343C
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x343C             # a1 = 0600343C
    cvt.s.w $f10, $f16
    or      a0, s0, $zero              # a0 = 00000001
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    swc1    $f10, 0x01BC(s1)           # 000001BC
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t0, 0x01B2(s1)             # 000001B2
    sb      t1, 0x018F(s1)             # 0000018F
    beq     $zero, $zero, lbl_809F6678
    swc1    $f18, 0x0060(s1)           # 00000060
var_809F6594:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064280
    lw      a3, 0x0060(s1)             # 00000060
    addiu   a0, s1, 0x0060             # a0 = 00000060
    lui     a1, 0x41A0                 # a1 = 41A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F6678
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x8A88             # a0 = 06008A88
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8A88             # a1 = 06008A88
    cvt.s.w $f6, $f4
    or      a0, s0, $zero              # a0 = 00000001
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    swc1    $f6, 0x01BC(s1)            # 000001BC
    jal     func_8008C9C0
    or      a0, s0, $zero              # a0 = 00000001
    lui     $at, 0x4190                # $at = 41900000
    lui     t2, %hi(var_80A13F7C)      # t2 = 80A10000
    lw      t2, %lo(var_80A13F7C)(t2)
    mtc1    $at, $f8                   # $f8 = 18.00
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f8, 0x16B4(t2)            # 80A116B4
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    beq     $zero, $zero, lbl_809F6678
    sh      t3, 0x01B2(s1)             # 000001B2
var_809F6630:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064280
    lw      a3, 0x0060(s1)             # 00000060
    addiu   a0, s1, 0x0060             # a0 = 00000060
    lui     a1, 0x41A0                 # a1 = 41A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F6678
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809F6FA8
    lw      a1, 0x008C($sp)
lbl_809F6678:
    lh      v0, 0x018C(s1)             # 0000018C
lbl_809F667C:
    addiu   $at, $zero, 0x0023         # $at = 00000023
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFCC
    beq     v0, $at, lbl_809F669C
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beq     v0, $at, lbl_809F669C
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bnel    v0, $at, lbl_809F66E0
    addiu   $at, $zero, 0x0023         # $at = 00000023
lbl_809F669C:
    lw      t5, 0x0024(s1)             # 00000024
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      t5, 0x0000(a1)             # FFFFFFCC
    lw      t4, 0x0028(s1)             # 00000028
    lui     a3, 0x4040                 # a3 = 40400000
    sw      t4, 0x0004(a1)             # FFFFFFD0
    lw      t5, 0x002C(s1)             # 0000002C
    sw      t5, 0x0008(a1)             # FFFFFFD4
    swc1    $f16, 0x0058($sp)
    lh      t6, 0x018C(s1)             # 0000018C
    lw      a0, 0x008C($sp)
    addiu   t7, t6, 0xFFE7             # t7 = FFFFFFE7
    jal     func_809F22E4
    sw      t7, 0x0010($sp)
    lh      v0, 0x018C(s1)             # 0000018C
    addiu   $at, $zero, 0x0023         # $at = 00000023
lbl_809F66E0:
    bne     v0, $at, lbl_809F6718
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFC0
    lw      t9, 0x0024(s1)             # 00000024
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      t9, 0x0000(a1)             # FFFFFFC0
    lw      t8, 0x0028(s1)             # 00000028
    lui     a3, 0x4040                 # a3 = 40400000
    sw      t8, 0x0004(a1)             # FFFFFFC4
    lw      t9, 0x002C(s1)             # 0000002C
    sw      t9, 0x0008(a1)             # FFFFFFC8
    lw      a0, 0x008C($sp)
    jal     func_809F23C8
    swc1    $f10, 0x004C($sp)
lbl_809F6718:
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_809F6730:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sh      $zero, 0x01B2(a0)          # 000001B2
    swc1    $f0, 0x005C(a0)            # 0000005C
    swc1    $f0, 0x0060(a0)            # 00000060
    sh      t6, 0x01A6(a0)             # 000001A6
    lui     $at, %hi(var_80A12D40)     # $at = 80A10000
    swc1    $f4, 0x01C0(a0)            # 000001C0
    sw      a0, 0x0018($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12D40)($at)
    trunc.w.s $f6, $f0
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_809F67A0)     # t9 = 809F0000
    addiu   t9, t9, %lo(func_809F67A0) # t9 = 809F67A0
    mfc1    t8, $f6
    sh      $zero, 0x019C(a0)          # 0000019C
    sw      t9, 0x0184(a0)             # 00000184
    sh      t8, 0x019A(a0)             # 0000019A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809F67A0:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s1, 0x0048($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x009C($sp)
    addiu   a0, s1, 0x0140             # a0 = 00000140
    jal     func_8008C9C0
    sw      a0, 0x005C($sp)
    lh      a0, 0x0192(s1)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x0192(s1)             # 00000192
    lwc1    $f4, 0x01C0(s1)            # 000001C0
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    mul.s   $f20, $f4, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f6, 0x01C0(s1)            # 000001C0
    mfc1    a1, $f20
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f22, $f6, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0024             # a0 = 00000024
    jal     func_80064280
    lw      a3, 0x01B8(s1)             # 000001B8
    mfc1    a1, $f22
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    jal     func_80064280
    lw      a3, 0x01B8(s1)             # 000001B8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   a0, s1, 0x01C0             # a0 = 000001C0
    mfc1    a2, $f20
    mfc1    a1, $f22
    jal     func_80064280
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280
    lw      a3, 0x0060(s1)             # 00000060
    mfc1    a2, $f20
    mfc1    a3, $f20
    addiu   a0, s1, 0x0060             # a0 = 00000060
    jal     func_80064280
    lui     a1, 0x41A0                 # a1 = 41A00000
    lhu     t6, 0x01B2(s1)             # 000001B2
    sltiu   $at, t6, 0x0006
    beq     $at, $zero, lbl_809F6F8C
    sll     t6, t6,  2
    lui     $at, %hi(var_80A12D44)     # $at = 80A10000
    addu    $at, $at, t6
    lw      t6, %lo(var_80A12D44)($at)
    jr      t6
    nop
var_809F68BC:
    lh      t7, 0x01A6(s1)             # 000001A6
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x1B0C             # s0 = 06001B0C
    bnel    t7, $zero, lbl_809F6F90
    lw      $ra, 0x004C($sp)
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06001B0C
    mtc1    v0, $f8                    # $f8 = 0.00
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06001B0C
    cvt.s.w $f10, $f8
    swc1    $f10, 0x01BC(s1)           # 000001BC
    jal     func_8008D21C
    lw      a0, 0x005C($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_809F6F8C
    sh      t8, 0x01B2(s1)             # 000001B2
var_809F6900:
    lw      a0, 0x005C($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F6F8C
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x1FF8             # s0 = 06001FF8
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06001FF8
    mtc1    v0, $f16                   # $f16 = 0.00
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06001FF8
    cvt.s.w $f18, $f16
    swc1    $f18, 0x01BC(s1)           # 000001BC
    jal     func_8008D328
    lw      a0, 0x005C($sp)
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sh      t9, 0x01B2(s1)             # 000001B2
    beq     $zero, $zero, lbl_809F6F8C
    sh      t0, 0x01A6(s1)             # 000001A6
var_809F6950:
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0190(s1)             # 00000190
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x316C          # a1 = 0000316C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x02E0(s1)            # 000002E0
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f4, 0x02DC(s1)            # 000002DC
    add.s   $f10, $f6, $f8
    mtc1    $at, $f16                  # $f16 = 30.00
    swc1    $f4, 0x0268(s1)            # 00000268
    lwc1    $f4, 0x02E4(s1)            # 000002E4
    add.s   $f18, $f10, $f16
    addiu   a0, s1, 0x0274             # a0 = 00000274
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BC4                 # a3 = 3BC40000
    swc1    $f18, 0x026C(s1)           # 0000026C
    swc1    $f4, 0x0270(s1)            # 00000270
    sw      a0, 0x0054($sp)
    ori     a3, a3, 0x9BA6             # a3 = 3BC49BA6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_80064280
    lui     a1, 0x3E80                 # a1 = 3E800000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f0                   # $f0 = 255.00
    mfc1    a2, $f20
    addiu   a0, s1, 0x0278             # a0 = 00000278
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_80064280
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BC4                 # a3 = 3BC40000
    ori     a3, a3, 0x9BA6             # a3 = 3BC49BA6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x027C             # a0 = 0000027C
    jal     func_80064280
    lui     a1, 0x3E80                 # a1 = 3E800000
    lh      v0, 0x01A6(s1)             # 000001A6
    slti    $at, v0, 0x0015
    bne     $at, $zero, lbl_809F6A1C
    slti    $at, v0, 0x003C
    beq     $at, $zero, lbl_809F6A1C
    addiu   a0, s1, 0x0280             # a0 = 00000280
    mfc1    a2, $f20
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6A1C:
    bne     v0, $zero, lbl_809F6A7C
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x0540             # s0 = 06000540
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06000540
    mtc1    v0, $f6                    # $f6 = 0.00
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06000540
    cvt.s.w $f8, $f6
    swc1    $f8, 0x01BC(s1)            # 000001BC
    jal     func_8008D21C
    lw      a0, 0x005C($sp)
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    sh      t2, 0x01B2(s1)             # 000001B2
    sh      t3, 0x01A6(s1)             # 000001A6
    sh      t4, 0x01A8(s1)             # 000001A8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D5          # a1 = 000039D5
    beq     $zero, $zero, lbl_809F6F90
    lw      $ra, 0x004C($sp)
lbl_809F6A7C:
    lh      a1, 0x008A(s1)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      v0, 0x01A6(s1)             # 000001A6
    or      s0, $zero, $zero           # s0 = 00000000
    slti    $at, v0, 0xFFFC
    beq     $at, $zero, lbl_809F6AD8
    sll     t5, s0,  2
lbl_809F6AA0:
    addu    a0, s1, t5
    mfc1    a1, $f22
    mfc1    a2, $f20
    addiu   a0, a0, 0x0284             # a0 = 00000284
    jal     func_80064280
    lui     a3, 0x4220                 # a3 = 42200000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000F
    bnel    $at, $zero, lbl_809F6AA0
    sll     t5, s0,  2
    beq     $zero, $zero, lbl_809F6B48
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6AD8:
    slti    $at, v0, 0x0007
    bne     $at, $zero, lbl_809F6B44
    slti    $at, v0, 0x001A
    beql    $at, $zero, lbl_809F6B48
    lh      v0, 0x01A6(s1)             # 000001A6
    lh      v0, 0x019C(s1)             # 0000019C
    slti    $at, v0, 0x000F
    beq     $at, $zero, lbl_809F6B04
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x019C(s1)             # 0000019C
    lh      v0, 0x019C(s1)             # 0000019C
lbl_809F6B04:
    blez    v0, lbl_809F6B44
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t7, s0,  2
lbl_809F6B10:
    addu    a0, s1, t7
    mfc1    a2, $f20
    addiu   a0, a0, 0x0284             # a0 = 00000284
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280
    lui     a3, 0x4220                 # a3 = 42200000
    lh      t8, 0x019C(s1)             # 0000019C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, t8
    bnel    $at, $zero, lbl_809F6B10
    sll     t7, s0,  2
lbl_809F6B44:
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6B48:
    lw      a0, 0x0054($sp)
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_809F6B80
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     a3, 0x3C8B                 # a3 = 3C8B0000
    ori     a3, a3, 0x4396             # a3 = 3C8B4396
    mfc1    a2, $f20
    jal     func_80064280
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    lwc1    $f10, 0x0274(s1)           # 00000274
    lh      v0, 0x01A6(s1)             # 000001A6
    swc1    $f10, 0x027C(s1)           # 0000027C
lbl_809F6B80:
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_809F6BD4
    addiu   a0, s1, 0x02C0             # a0 = 000002C0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a1, 0x4234                 # a1 = 42340000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t3, 0x0268(s1)             # 00000268
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lui     t1, 0x8012                 # t1 = 80120000
    sh      t9, 0x065E(s1)             # 0000065E
    sb      t0, 0x065C(s1)             # 0000065C
    addiu   t1, t1, 0xBCE0             # t1 = 8011BCE0
    sw      t3, 0x0000(t1)             # 8011BCE0
    lw      t2, 0x026C(s1)             # 0000026C
    sw      t2, 0x0004(t1)             # 8011BCE4
    lw      t3, 0x0270(s1)             # 00000270
    sw      t3, 0x0008(t1)             # 8011BCE8
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6BD4:
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    bne     v0, $at, lbl_809F6BE8
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6BE8:
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    bne     v0, $at, lbl_809F6BFC
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sb      t5, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6BFC:
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bne     v0, $at, lbl_809F6C10
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6C10:
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    bne     v0, $at, lbl_809F6C24
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6C24:
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    bne     v0, $at, lbl_809F6C38
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sb      t8, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6C38:
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bne     v0, $at, lbl_809F6C4C
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sb      t9, 0x0264(s1)             # 00000264
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6C4C:
    slti    $at, v0, 0x001F
    bne     $at, $zero, lbl_809F6F8C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64
    swc1    $f22, 0x0074($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    swc1    $f22, 0x007C($sp)
    lui     $at, 0x4700                # $at = 47000000
    add.s   $f18, $f0, $f16
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80A12D5C)     # $at = 80A10000
    lwc1    $f16, %lo(var_80A12D5C)($at)
    swc1    $f18, 0x0078($sp)
    lh      t0, 0x008A(s1)             # 0000008A
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f12                  # $f12 = 65536.00
    jal     func_80026D64
    nop
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFDC
    jal     func_800AB958
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFD0
    lwc1    $f18, 0x0268(s1)           # 00000268
    lwc1    $f4, 0x0068($sp)
    lwc1    $f10, 0x006C($sp)
    lw      a0, 0x009C($sp)
    add.s   $f6, $f18, $f4
    lwc1    $f4, 0x0070($sp)
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFE8
    lui     a2, 0x41A0                 # a2 = 41A00000
    swc1    $f6, 0x0080($sp)
    lwc1    $f8, 0x026C(s1)            # 0000026C
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0084($sp)
    lwc1    $f18, 0x0270(s1)           # 00000270
    add.s   $f6, $f18, $f4
    jal     func_809F24C0
    swc1    $f6, 0x0088($sp)
    beq     $zero, $zero, lbl_809F6F90
    lw      $ra, 0x004C($sp)
var_809F6D1C:
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0190(s1)             # 00000190
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t2, s0,  2
lbl_809F6D2C:
    addu    a0, s1, t2
    mfc1    a1, $f22
    mfc1    a2, $f20
    addiu   a0, a0, 0x0284             # a0 = 00000284
    jal     func_80064280
    lui     a3, 0x4220                 # a3 = 42200000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000F
    bnel    $at, $zero, lbl_809F6D2C
    sll     t2, s0,  2
    lh      v0, 0x01A6(s1)             # 000001A6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t3, %hi(var_80A13F7C)      # t3 = 80A10000
    bne     v0, $at, lbl_809F6D8C
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lw      t3, %lo(var_80A13F7C)(t3)
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f8, 0x16B0(t3)            # 80A116B0
    lh      v0, 0x01A6(s1)             # 000001A6
lbl_809F6D8C:
    bne     v0, $zero, lbl_809F6E00
    addiu   a0, s1, 0x0274             # a0 = 00000274
    mfc1    a1, $f20
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    jal     func_800642F0
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    lwc1    $f10, 0x0274(s1)           # 00000274
    mfc1    a1, $f20
    addiu   a0, s1, 0x02C0             # a0 = 000002C0
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_800642F0
    swc1    $f10, 0x027C(s1)           # 0000027C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   a0, s1, 0x0268             # a0 = 00000268
    lw      a1, 0x01EC(s1)             # 000001EC
    mfc1    a2, $f20
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a2, $f20
    addiu   a0, s1, 0x026C             # a0 = 0000026C
    lw      a1, 0x01F0(s1)             # 000001F0
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a2, $f20
    addiu   a0, s1, 0x0270             # a0 = 00000270
    lw      a1, 0x01F4(s1)             # 000001F4
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
lbl_809F6E00:
    lh      t4, 0x01A8(s1)             # 000001A8
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x0FE8             # s0 = 06000FE8
    bnel    t4, $zero, lbl_809F6F90
    lw      $ra, 0x004C($sp)
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06000FE8
    mtc1    v0, $f16                   # $f16 = 0.00
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06000FE8
    cvt.s.w $f18, $f16
    swc1    $f18, 0x01BC(s1)           # 000001BC
    jal     func_8008D328
    lw      a0, 0x005C($sp)
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sh      t5, 0x01B2(s1)             # 000001B2
    swc1    $f22, 0x0278(s1)           # 00000278
    swc1    $f22, 0x0280(s1)           # 00000280
    swc1    $f22, 0x0274(s1)           # 00000274
    beq     $zero, $zero, lbl_809F6F8C
    swc1    $f22, 0x027C(s1)           # 0000027C
var_809F6E54:
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x0190(s1)             # 00000190
    lw      a0, 0x005C($sp)
    jal     func_8008D6A8
    lui     a1, 0x40A0                 # a1 = 40A00000
    beq     v0, $zero, lbl_809F6EF0
    lw      a2, 0x009C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0058($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    lwc1    $f4, 0x01EC(s1)            # 000001EC
lbl_809F6E80:
    addiu   t8, s0, 0x0104             # t8 = 00000104
    lw      a0, 0x0058($sp)
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x01F0(s1)            # 000001F0
    lw      a2, 0x009C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x01F4(s1)            # 000001F4
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    swc1    $f8, 0x0018($sp)
    lh      t7, 0x008A(s1)             # 0000008A
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    jal     func_800253F0
    sw      t7, 0x0020($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809F6E80
    lwc1    $f4, 0x01EC(s1)            # 000001EC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D4          # a1 = 000039D4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x396D          # a1 = 0000396D
lbl_809F6EF0:
    lw      a0, 0x005C($sp)
    jal     func_8008D6A8
    lui     a1, 0x4040                 # a1 = 40400000
    beq     v0, $zero, lbl_809F6F20
    lui     $at, 0x41D0                # $at = 41D00000
    lui     t9, %hi(var_80A13F7C)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F7C)(t9)
    mtc1    $at, $f10                  # $f10 = 26.00
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f10, 0x16B4(t9)           # 80A116B4
lbl_809F6F20:
    lw      a0, 0x005C($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F6F8C
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x1440             # s0 = 06001440
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06001440
    mtc1    v0, $f16                   # $f16 = 0.00
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06001440
    cvt.s.w $f18, $f16
    swc1    $f18, 0x01BC(s1)           # 000001BC
    jal     func_8008D328
    lw      a0, 0x005C($sp)
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    beq     $zero, $zero, lbl_809F6F8C
    sh      t0, 0x01B2(s1)             # 000001B2
var_809F6F68:
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0190(s1)             # 00000190
    lw      a0, 0x005C($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F6F8C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809F6FA8
    lw      a1, 0x009C($sp)
lbl_809F6F8C:
    lw      $ra, 0x004C($sp)
lbl_809F6F90:
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809F6FA8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9A14             # a1 = 06009A14
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_8008D328
    lui     a2, 0xC120                 # a2 = C1200000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_809F7030)     # t6 = 809F0000
    lui     $at, 0x4280                # $at = 42800000
    addiu   t6, t6, %lo(func_809F7030) # t6 = 809F7030
    mtc1    $at, $f12                  # $f12 = 64.00
    sw      t6, 0x0184(s0)             # 00000184
    jal     func_80026D64
    swc1    $f4, 0x01B8(s0)            # 000001B8
    trunc.w.s $f6, $f0
    sh      $zero, 0x01B2(s0)          # 000001B2
    lui     $at, 0x4000                # $at = 40000000
    lui     t2, %hi(var_80A13F7C)      # t2 = 80A10000
    mfc1    t0, $f6
    mtc1    $at, $f8                   # $f8 = 2.00
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    sh      t1, 0x01A6(s0)             # 000001A6
    lw      t2, %lo(var_80A13F7C)(t2)
    swc1    $f8, 0x169C(t2)            # 80A1169C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809F7030:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     $at, 0xC040                # $at = C0400000
    sw      s0, 0x0018($sp)
    lui     v0, %hi(var_80A13F7C)      # v0 = 80A10000
    mtc1    $at, $f0                   # $f0 = -3.00
    addiu   v0, v0, %lo(var_80A13F7C)  # v0 = 80A13F7C
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0189(s0)             # 00000189
    lw      t7, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    swc1    $f0, 0x16A0(t7)            # 000016A0
    lw      t8, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    swc1    $f4, 0x16A4(t8)            # 000016A4
    lw      t9, 0x0000(v0)             # 80A13F7C
    addiu   a0, s0, 0x0140             # a0 = 00000140
    swc1    $f0, 0x16A8(t9)            # 000016A8
    lw      t0, 0x0000(v0)             # 80A13F7C
    swc1    $f6, 0x16C0(t0)            # 000016C0
    sw      a1, 0x0034($sp)
    jal     func_8008C9C0
    sw      v1, 0x0020($sp)
    lh      t1, 0x01B2(s0)             # 000001B2
    lw      v1, 0x0020($sp)
    lw      a1, 0x0034($sp)
    bnel    t1, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
    lwc1    $f8, 0x0028(v1)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.lt.s  $f8, $f10
    nop
    bc1tl   lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
    lw      v0, 0x066C(v1)             # 0000066C
    andi    v0, v0, 0x2000             # v0 = 00000000
    bnel    v0, $zero, lbl_809F7128
    lh      t2, 0x01A6(s0)             # 000001A6
    lwc1    $f0, 0x0024(v1)            # 00000024
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f2                   # $f2 = 110.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809F7128
    lh      t2, 0x01A6(s0)             # 000001A6
    lwc1    $f0, 0x002C(v1)            # 0000002C
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809F7128
    lh      t2, 0x01A6(s0)             # 000001A6
    jal     func_809F61A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
    lh      t2, 0x01A6(s0)             # 000001A6
lbl_809F7128:
    bnel    t2, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
    bne     v0, $zero, lbl_809F7200
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64
    sw      a1, 0x0034($sp)
    trunc.w.s $f16, $f0
    lb      t8, 0x00AF(s0)             # 000000AF
    lw      a1, 0x0034($sp)
    mfc1    t6, $f16
    slti    $at, t8, 0x0014
    addiu   t7, t6, 0x001E             # t7 = 0000001E
    bne     $at, $zero, lbl_809F7174
    sh      t7, 0x01A6(s0)             # 000001A6
    jal     func_809F737C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
lbl_809F7174:
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lw      a1, 0x0034($sp)
    c.le.s  $f18, $f0
    nop
    bc1f    lbl_809F71F8
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x43AF                # $at = 43AF0000
    lw      a1, 0x0034($sp)
    c.le.s  $f4, $f0
    nop
    bc1t    lbl_809F71D8
    nop
    mtc1    $at, $f6                   # $f6 = 350.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8
    nop
    bc1f    lbl_809F71E8
    nop
lbl_809F71D8:
    jal     func_809F6730
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
lbl_809F71E8:
    jal     func_809F61A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F7204
    lh      a0, 0x0192(s0)             # 00000192
lbl_809F71F8:
    jal     func_809F737C
    or      a0, s0, $zero              # a0 = 00000000
lbl_809F7200:
    lh      a0, 0x0192(s0)             # 00000192
lbl_809F7204:
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    nop
    mul.s   $f16, $f0, $f10
    swc1    $f16, 0x002C($sp)
    lh      a0, 0x0192(s0)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f4, $f0, $f18
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x002C($sp)
    swc1    $f4, 0x0024($sp)
    jal     func_80064280
    lw      a3, 0x01B8(s0)             # 000001B8
    lui     $at, %hi(var_80A12D60)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12D60)($at)
    lwc1    $f6, 0x01B8(s0)            # 000001B8
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4316                 # a1 = 43160000
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0024($sp)
    jal     func_80064280
    lw      a3, 0x01B8(s0)             # 000001B8
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      a0, 0x0192(s0)             # 00000192
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0100(s0)           # 00000100
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0108(s0)            # 00000108
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    sub.s   $f4, $f16, $f18
    subu    a0, a0, $at
    sll     a0, a0,  2
    sub.s   $f10, $f6, $f8
    sll     a0, a0, 16
    swc1    $f4, 0x005C(s0)            # 0000005C
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0064(s0)           # 00000064
    lwc1    $f16, 0x01B8(s0)           # 000001B8
    lui     $at, %hi(var_80A12D64)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12D64)($at)
    mul.s   $f18, $f16, $f0
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    mul.s   $f2, $f18, $f4
    add.s   $f8, $f6, $f2
    swc1    $f2, 0x0060(s0)            # 00000060
    jal     func_80064624
    swc1    $f8, 0x0028(s0)            # 00000028
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x30A4          # a1 = 000030A4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809F737C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xAA24             # a0 = 0600AA24
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAA24             # a1 = 0600AA24
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C
    swc1    $f6, 0x01BC(s0)            # 000001BC
    lui     t6, %hi(func_809F73EC)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F73EC) # t6 = 809F73EC
    addiu   t7, $zero, 0x0019          # t7 = 00000019
    sw      t6, 0x0184(s0)             # 00000184
    sh      t7, 0x01A6(s0)             # 000001A6
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F73EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     v1, %hi(var_80A13F7C)      # v1 = 80A10000
    addiu   v1, v1, %lo(var_80A13F7C)  # v1 = 80A13F7C
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    lw      t6, 0x0000(v1)             # 80A13F7C
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f6                   # $f6 = 1.25
    swc1    $f4, 0x16A0(t6)            # 000016A0
    lw      t7, 0x0000(v1)             # 80A13F7C
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    swc1    $f6, 0x16A4(t7)            # 000016A4
    lw      t8, 0x0000(v1)             # 80A13F7C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    swc1    $f8, 0x16A8(t8)            # 000016A8
    lw      t9, 0x0000(v1)             # 80A13F7C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    swc1    $f10, 0x16C0(t9)           # 000016C0
    lh      v0, 0x01A6(s0)             # 000001A6
    slti    $at, v0, 0x0011
    beql    $at, $zero, lbl_809F7474
    addiu   $at, $zero, 0x0011         # $at = 00000011
    sb      t0, 0x0190(s0)             # 00000190
    lh      v0, 0x01A6(s0)             # 000001A6
    addiu   $at, $zero, 0x0011         # $at = 00000011
lbl_809F7474:
    bnel    v0, $at, lbl_809F74A4
    slti    $at, v0, 0x000A
    sh      t1, 0x025C(s0)             # 0000025C
    lui     $at, %hi(var_80A12D68)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12D68)($at)
    swc1    $f0, 0x0260(s0)            # 00000260
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3867          # a1 = 00003867
    lh      v0, 0x01A6(s0)             # 000001A6
    slti    $at, v0, 0x000A
lbl_809F74A4:
    beq     $at, $zero, lbl_809F74F8
    lui     $at, %hi(var_80A12D6C)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12D6C)($at)
    lui     $at, %hi(var_80A12D70)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12D70)($at)
    lwc1    $f16, 0x0248(s0)           # 00000248
    addiu   a0, s0, 0x0244             # a0 = 00000244
    add.s   $f4, $f0, $f18
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3FA0                 # a3 = 3FA00000
    add.s   $f6, $f16, $f4
    jal     func_80064280
    swc1    $f6, 0x0248(s0)            # 00000248
    lh      t2, 0x01A6(s0)             # 000001A6
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $zero, lbl_809F74FC
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_809F75A0
    lw      a1, 0x0024($sp)
lbl_809F74F8:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
lbl_809F74FC:
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x005C(s0)           # 0000005C
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0064(s0)            # 00000064
    add.s   $f18, $f8, $f10
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f6, $f16, $f4
    swc1    $f18, 0x0024(s0)           # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_800642F0
    swc1    $f6, 0x002C(s0)            # 0000002C
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      a0, 0x0192(s0)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    add.s   $f2, $f0, $f0
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f10, $f8, $f2
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809F75A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x738C             # a0 = 0600738C
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   a1, a1, 0x738C             # a1 = 0600738C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   a0, v1, 0x0140             # a0 = 00000140
    jal     func_8008D21C
    swc1    $f6, 0x01BC(v1)            # 000001BC
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_809F7608)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F7608) # t6 = 809F7608
    sw      t6, 0x0184(t7)             # 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809F7608:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_8008C9C0
    sw      a0, 0x0044($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0244             # a0 = 00000244
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lh      v0, 0x01B2(s0)             # 000001B2
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     v0, $zero, lbl_809F765C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_809F776C
    lbu     t5, 0x01B0(s0)             # 000001B0
    beq     $zero, $zero, lbl_809F781C
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
lbl_809F765C:
    sb      t6, 0x0190(s0)             # 00000190
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F768C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x01B2(s0)             # 000001B2
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9A14             # a1 = 06009A14
    lw      a0, 0x0044($sp)
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_809F768C:
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f0                   # $f0 = 12.00
    lwc1    $f4, 0x0158(s0)            # 00000158
    lui     t0, 0x8012                 # t0 = 80120000
    mfc1    a1, $f0
    c.le.s  $f4, $f0
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, t0, 0xBCE0             # t0 = 8011BCE0
    bc1f    lbl_809F76D8
    nop
    lw      t2, 0x0250(s0)             # 00000250
    sh      t8, 0x065E(s0)             # 0000065E
    sb      t9, 0x065C(s0)             # 0000065C
    sw      t2, 0x0000(t0)             # 8011BCE0
    lw      t1, 0x0254(s0)             # 00000254
    sw      t1, 0x0004(t0)             # 8011BCE4
    lw      t2, 0x0258(s0)             # 00000258
    sw      t2, 0x0008(t0)             # 8011BCE8
lbl_809F76D8:
    jal     func_8008D6A8
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_809F76F4
    lui     a1, 0x4130                 # a1 = 41300000
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x0244(s0)            # 00000244
lbl_809F76F4:
    jal     func_8008D6A8
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_809F7818
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39C9          # a1 = 000039C9
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3825          # a1 = 00003825
    lwc1    $f8, 0x0250(s0)            # 00000250
    lw      a2, 0x0054($sp)
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0254(s0)           # 00000254
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x0258(s0)           # 00000258
    sw      t4, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    beq     $zero, $zero, lbl_809F781C
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lbu     t5, 0x01B0(s0)             # 000001B0
lbl_809F776C:
    beql    t5, $zero, lbl_809F781C
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A12D74)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12D74)($at)
    lui     a0, %hi(var_809FFEA8)      # a0 = 80A00000
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     t7, v0, 16
    sra     t8, t7, 16
    sll     t9, t8,  2
    addu    a0, a0, t9
    lw      a0, %lo(var_809FFEA8)(a0)
    jal     func_8008A194
    sh      v0, 0x004E($sp)
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     a1, %hi(var_809FFEA8)      # a1 = 80A00000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    cvt.s.w $f10, $f8
    swc1    $f10, 0x01BC(s0)           # 000001BC
    lh      t0, 0x004E($sp)
    lw      a0, 0x0044($sp)
    sll     t1, t0,  2
    addu    a1, a1, t1
    jal     func_8008D21C
    lw      a1, %lo(var_809FFEA8)(a1)
    lh      t2, 0x004E($sp)
    lui     t4, %hi(var_809FFEB0)      # t4 = 80A00000
    lui     t5, %hi(var_80A13F7C)      # t5 = 80A10000
    sll     t3, t2,  1
    addu    t4, t4, t3
    lh      t4, %lo(var_809FFEB0)(t4)
    lw      t5, %lo(var_80A13F7C)(t5)
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t4, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    cvt.s.w $f18, $f16
    jal     func_80022FD0
    swc1    $f18, 0x16AC(t5)           # 80A116AC
    sb      $zero, 0x01B0(s0)          # 000001B0
lbl_809F7818:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
lbl_809F781C:
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x0064(s0)           # 00000064
    add.s   $f8, $f4, $f6
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0024(s0)            # 00000024
    mfc1    a1, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f18, 0x002C(s0)           # 0000002C
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0064             # a0 = 00000064
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lh      a0, 0x0192(s0)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    add.s   $f2, $f0, $f0
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f8, $f6, $f2
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809F78D8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0184(s0)             # 00000184
    lui     v0, %hi(func_809F7990)     # v0 = 809F0000
    addiu   v0, v0, %lo(func_809F7990) # v0 = 809F7990
    bne     v0, t6, lbl_809F7904
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x01B2(s0)             # 000001B2
    beq     t7, $zero, lbl_809F7944
lbl_809F7904:
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    jal     func_809F25C0
    sw      v0, 0x0024($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x9D5C             # a0 = 06009D5C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9D5C             # a1 = 06009D5C
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    swc1    $f6, 0x01BC(s0)            # 000001BC
    lw      t8, 0x0024($sp)
    sw      t8, 0x0184(s0)             # 00000184
lbl_809F7944:
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sh      t9, 0x01A6(s0)             # 000001A6
    lh      t0, 0x01A6(s0)             # 000001A6
    sh      $zero, 0x01B2(s0)          # 000001B2
    lui     t1, %hi(var_80A13F7C)      # t1 = 80A10000
    mtc1    t0, $f8                    # $f8 = 0.00
    lw      t1, %lo(var_80A13F7C)(t1)
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f10, 0x16B0(t1)           # 80A116B0
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0244(s0)           # 00000244
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809F7990:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0024($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   s1, s0, 0x0140             # s1 = 00000140
    sb      t6, 0x0614(s0)             # 00000614
    jal     func_8008C9C0
    or      a0, s1, $zero              # a0 = 00000140
    lui     v1, %hi(var_80A13F7C)      # v1 = 80A10000
    addiu   v1, v1, %lo(var_80A13F7C)  # v1 = 80A13F7C
    lui     $at, 0xC110                # $at = C1100000
    mtc1    $at, $f4                   # $f4 = -9.00
    lw      t7, 0x0000(v1)             # 80A13F7C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    swc1    $f4, 0x16A0(t7)            # 000016A0
    lw      t8, 0x0000(v1)             # 80A13F7C
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    swc1    $f6, 0x16A4(t8)            # 000016A4
    lw      t9, 0x0000(v1)             # 80A13F7C
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f10                  # $f10 = 13.00
    swc1    $f8, 0x16A8(t9)            # 000016A8
    lw      t0, 0x0000(v1)             # 80A13F7C
    lui     $at, 0xC150                # $at = C1500000
    swc1    $f10, 0x16C0(t0)           # 000016C0
    lh      t1, 0x01B2(s0)             # 000001B2
    bnel    t1, $zero, lbl_809F7A88
    mtc1    $at, $f6                   # $f6 = -13.00
    lh      t2, 0x01A6(s0)             # 000001A6
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    or      a0, s1, $zero              # a0 = 00000140
    bne     t2, $zero, lbl_809F7AAC
    lui     a1, 0x0601                 # a1 = 06010000
    sh      t3, 0x01B2(s0)             # 000001B2
    addiu   a1, a1, 0xA598             # a1 = 0600A598
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xA598             # a0 = 0600A598
    mtc1    v0, $f16                   # $f16 = 0.00
    or      a0, s1, $zero              # a0 = 00000140
    cvt.s.w $f18, $f16
    jal     func_8008C9C0
    swc1    $f18, 0x01BC(s0)           # 000001BC
    lui     v1, %hi(var_80A13F7C)      # v1 = 80A10000
    addiu   v1, v1, %lo(var_80A13F7C)  # v1 = 80A13F7C
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lw      t4, 0x0000(v1)             # 80A13F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f4, 0x16B4(t4)            # 000016B4
    beq     $zero, $zero, lbl_809F7AB0
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_809F7A88:
    lw      t5, 0x0000(v1)             # 00000000
    or      a0, s1, $zero              # a0 = 00000140
    swc1    $f6, 0x16A8(t5)            # 000016A8
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F7AAC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F6FA8
    lw      a1, 0x0024($sp)
lbl_809F7AAC:
    lwc1    $f8, 0x0024(s0)            # 00000024
lbl_809F7AB0:
    lwc1    $f10, 0x005C(s0)           # 0000005C
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0060(s0)            # 00000060
    add.s   $f16, $f8, $f10
    lwc1    $f10, 0x0064(s0)           # 00000064
    lwc1    $f8, 0x002C(s0)            # 0000002C
    add.s   $f6, $f18, $f4
    swc1    $f16, 0x0024(s0)           # 00000024
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x0028(s0)            # 00000028
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_800642F0
    swc1    $f16, 0x002C(s0)           # 0000002C
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809F7B20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x8128             # a0 = 06008128
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8128             # a1 = 06008128
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    swc1    $f6, 0x01BC(s0)            # 000001BC
    lui     a0, %hi(var_80A13F7C)      # a0 = 80A10000
    addiu   t6, $zero, 0x0046          # t6 = 00000046
    addiu   a0, a0, %lo(var_80A13F7C)  # a0 = 80A13F7C
    sh      t6, 0x01A6(s0)             # 000001A6
    lw      t7, 0x0000(a0)             # 80A13F7C
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     t3, %hi(func_809F7C14)     # t3 = 809F0000
    mtc1    $zero, $f0                 # $f0 = 0.00
    swc1    $f8, 0x16B0(t7)            # 000016B0
    lw      v1, 0x0000(a0)             # 80A13F7C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    lwc1    $f10, 0x16B0(v1)           # 000016B0
    addiu   t3, t3, %lo(func_809F7C14) # t3 = 809F7C14
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    swc1    $f10, 0x16AC(v1)           # 000016AC
    lui     v1, %hi(var_809FFDC8)      # v1 = 80A00000
    addiu   v1, v1, %lo(var_809FFDC8)  # v1 = 809FFDC8
lbl_809F7BB0:
    addu    t8, v1, v0
    sll     t0, v0,  1
    addiu   v0, v0, 0x0001             # v0 = 00000002
    sll     v0, v0, 16
    lbu     t9, 0x0000(t8)             # 00000000
    sra     v0, v0, 16
    slti    $at, v0, 0x000F
    addu    t1, s0, t0
    bne     $at, $zero, lbl_809F7BB0
    sh      t9, 0x04D4(t1)             # 000004D4
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    sh      t2, 0x02D6(s0)             # 000002D6
    sh      $zero, 0x02D8(s0)          # 000002D8
    sw      t3, 0x0184(s0)             # 00000184
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x005C(s0)            # 0000005C
    sh      $zero, 0x01B2(s0)          # 000001B2
    sh      t4, 0x0196(s0)             # 00000196
    swc1    $f16, 0x04F8(s0)           # 000004F8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809F7C14:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    addiu   a0, s3, 0x0140             # a0 = 00000140
    jal     func_8008C9C0
    sw      a0, 0x0048($sp)
    lh      v1, 0x01B2(s3)             # 000001B2
    or      a0, s2, $zero              # a0 = 00000000
    lui     a1, 0x44BB                 # a1 = 44BB0000
    bne     v1, $zero, lbl_809F7CB0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    ori     a1, a1, 0x8000             # a1 = 44BB8000
    jal     func_809F2080
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0048($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s3)             # 000001BC
    beq     v0, $zero, lbl_809F7E04
    lui     s0, 0x0601                 # s0 = 06010000
    addiu   s0, s0, 0x8F44             # s0 = 06008F44
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06008F44
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a1, s0, $zero              # a1 = 06008F44
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    cvt.s.w $f6, $f4
    swc1    $f6, 0x01BC(s3)            # 000001BC
    jal     func_8008D328
    lw      a0, 0x0048($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     $zero, $zero, lbl_809F7E04
    sh      t6, 0x01B2(s3)             # 000001B2
lbl_809F7CB0:
    bne     v1, $at, lbl_809F7D48
    lw      a0, 0x0048($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_809F2080
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t7, 0x01A6(s3)             # 000001A6
    lui     s0, 0x0601                 # s0 = 06010000
    addiu   s0, s0, 0x8A88             # s0 = 06008A88
    bnel    t7, $zero, lbl_809F7E08
    lh      a0, 0x0192(s3)             # 00000192
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06008A88
    mtc1    v0, $f8                    # $f8 = 0.00
    or      a1, s0, $zero              # a1 = 06008A88
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    cvt.s.w $f10, $f8
    swc1    $f10, 0x01BC(s3)           # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0048($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sh      t8, 0x01B2(s3)             # 000001B2
    jal     func_8008C9C0
    lw      a0, 0x0048($sp)
    lui     $at, 0x4190                # $at = 41900000
    lui     t9, %hi(var_80A13F7C)      # t9 = 80A10000
    lw      t9, %lo(var_80A13F7C)(t9)
    mtc1    $at, $f16                  # $f16 = 18.00
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f16, 0x16B4(t9)           # 80A116B4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CF          # a1 = 000039CF
    addiu   t0, $zero, 0x0082          # t0 = 00000082
    beq     $zero, $zero, lbl_809F7E04
    sh      t0, 0x01AA(s3)             # 000001AA
lbl_809F7D48:
    jal     func_8008D6A8
    lui     a1, 0x40E0                 # a1 = 40E00000
    beq     v0, $zero, lbl_809F7DE8
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f22                  # $f22 = 500.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f20                  # $f20 = 25.00
    addiu   s1, s3, 0x01EC             # s1 = 000001EC
lbl_809F7D6C:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0050($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0054($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    swc1    $f0, 0x0058($sp)
    add.s   $f18, $f0, $f22
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sw      t1, 0x0014($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    swc1    $f18, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 000001EC
    jal     func_809F1E40
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0064
    bne     $at, $zero, lbl_809F7D6C
    nop
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x0806          # a1 = 00000806
lbl_809F7DE8:
    lw      a0, 0x0048($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s3)             # 000001BC
    beq     v0, $zero, lbl_809F7E04
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_809F6FA8
    or      a1, s2, $zero              # a1 = 00000000
lbl_809F7E04:
    lh      a0, 0x0192(s3)             # 00000192
lbl_809F7E08:
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    add.s   $f2, $f0, $f0
    lwc1    $f4, 0x0028(s3)            # 00000028
    add.s   $f6, $f4, $f2
    swc1    $f2, 0x0060(s3)            # 00000060
    swc1    $f6, 0x0028(s3)            # 00000028
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809F7E6C:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s3, 0x0058($sp)
    sw      s1, 0x0050($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s2, 0x0054($sp)
    sw      s0, 0x004C($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t6, 0x0184(s1)             # 00000184
    lui     v0, %hi(func_809F803C)     # v0 = 80A00000
    addiu   v0, v0, %lo(func_809F803C) # v0 = 809F803C
    beq     v0, t6, lbl_809F8014
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    jal     func_809F25C0
    sw      v0, 0x0060($sp)
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x4884             # s0 = 06004884
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06004884
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f24                # $f24 = 0.00
    addiu   a0, s1, 0x0140             # a0 = 00000140
    cvt.s.w $f6, $f4
    mfc1    a2, $f24
    or      a1, s0, $zero              # a1 = 06004884
    jal     func_8008D21C
    swc1    $f6, 0x01BC(s1)            # 000001BC
    lui     v0, %hi(var_80A13F7C)      # v0 = 80A10000
    addiu   v0, v0, %lo(var_80A13F7C)  # v0 = 80A13F7C
    lw      t7, 0x0000(v0)             # 80A13F7C
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f16                  # $f16 = -4.00
    swc1    $f8, 0x16B0(t7)            # 000016B0
    lw      v1, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f18                  # $f18 = 0.75
    lwc1    $f10, 0x16B0(v1)           # 000016B0
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    swc1    $f10, 0x16AC(v1)           # 000016AC
    lw      t8, 0x0060($sp)
    swc1    $f24, 0x005C(s1)           # 0000005C
    swc1    $f24, 0x0060(s1)           # 00000060
    swc1    $f24, 0x0064(s1)           # 00000064
    sh      $zero, 0x01B2(s1)          # 000001B2
    sw      t8, 0x0184(s1)             # 00000184
    lw      t9, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    swc1    $f16, 0x16A0(t9)           # 000016A0
    lw      t0, 0x0000(v0)             # 80A13F7C
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f22                  # $f22 = 32768.00
    swc1    $f18, 0x16A4(t0)           # 000016A4
    lw      t1, 0x0000(v0)             # 80A13F7C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s3, 0x1C24             # s2 = 00001C24
    swc1    $f4, 0x16A8(t1)            # 000016A8
    lw      t2, 0x0000(v0)             # 80A13F7C
    swc1    $f6, 0x16C0(t2)            # 000016C0
lbl_809F7F74:
    jal     func_80026D90
    mov.s   $f12, $f22
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f22
    lwc1    $f8, 0x01EC(s1)            # 000001EC
    trunc.w.s $f18, $f20
    addiu   t1, s0, 0x00C8             # t1 = 000000C8
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x01F0(s1)           # 000001F0
    trunc.w.s $f4, $f0
    mfc1    t4, $f18
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x01F4(s1)           # 000001F4
    mfc1    t6, $f4
    sw      t4, 0x001C($sp)
    swc1    $f16, 0x0018($sp)
    lh      t9, 0x008A(s1)             # 0000008A
    sll     t7, t6, 16
    sra     t8, t7, 16
    addu    t0, t8, t9
    sw      t0, 0x0020($sp)
    sw      t1, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    jal     func_800253F0
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000A
    bne     $at, $zero, lbl_809F7F74
    nop
    sh      $zero, 0x0194(s1)          # 00000194
    swc1    $f24, 0x0278(s1)           # 00000278
    swc1    $f24, 0x0280(s1)           # 00000280
    swc1    $f24, 0x0274(s1)           # 00000274
    swc1    $f24, 0x027C(s1)           # 0000027C
lbl_809F8014:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809F803C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x0054($sp)
    lh      t6, 0x01AC(s1)             # 000001AC
    addiu   a0, s1, 0x0140             # a0 = 00000140
    bne     t6, $zero, lbl_809F8074
    nop
    lw      t7, 0x0004(s1)             # 00000004
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0004(s1)             # 00000004
lbl_809F8074:
    jal     func_8008C9C0
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0028(s1)            # 00000028
    lwc1    $f6, 0x0060(s1)            # 00000060
    lh      v1, 0x0194(s1)             # 00000194
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    add.s   $f8, $f4, $f6
    slti    $at, v1, 0x0028
    sb      t9, 0x0190(s1)             # 00000190
    beq     $at, $zero, lbl_809F80C4
    swc1    $f8, 0x0028(s1)            # 00000028
    lui     $at, %hi(var_80A12D78)     # $at = 80A10000
    lwc1    $f0, %lo(var_80A12D78)($at)
    addiu   a0, s1, 0x04F8             # a0 = 000004F8
    lui     a1, 0x4080                 # a1 = 40800000
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80064280
    nop
    lh      v1, 0x0194(s1)             # 00000194
lbl_809F80C4:
    slti    $at, v1, 0x0028
    bne     $at, $zero, lbl_809F80F4
    slti    $at, v1, 0x0037
    beql    $at, $zero, lbl_809F80F8
    mtc1    $zero, $f20                # $f20 = 0.00
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s1, 0x04F8             # a0 = 000004F8
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f20
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      v1, 0x0194(s1)             # 00000194
lbl_809F80F4:
    mtc1    $zero, $f20                # $f20 = 0.00
lbl_809F80F8:
    slti    $at, v1, 0x0037
    bne     $at, $zero, lbl_809F8124
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    addiu   a0, s1, 0x04F8             # a0 = 000004F8
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80064280
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x02D4(s1)             # 000002D4
lbl_809F8124:
    lhu     t1, 0x01B2(s1)             # 000001B2
    sltiu   $at, t1, 0x0009
    beq     $at, $zero, lbl_809F8590
    sll     t1, t1,  2
    lui     $at, %hi(var_80A12D7C)     # $at = 80A10000
    addu    $at, $at, t1
    lw      t1, %lo(var_80A12D7C)($at)
    jr      t1
    nop
var_809F8148:
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x4DA8             # s0 = 06004DA8
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06004DA8
    mtc1    v0, $f10                   # $f10 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 06004DA8
    cvt.s.w $f16, $f10
    swc1    $f16, 0x01BC(s1)           # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    beq     $zero, $zero, lbl_809F8594
    lw      $ra, 0x002C($sp)
var_809F8194:
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x3D40             # s0 = 06003D40
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t3, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06003D40
    mtc1    v0, $f18                   # $f18 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 06003D40
    cvt.s.w $f4, $f18
    swc1    $f4, 0x01BC(s1)            # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    beq     $zero, $zero, lbl_809F8594
    lw      $ra, 0x002C($sp)
var_809F81E0:
    lui     t4, %hi(var_80A13F7C)      # t4 = 80A10000
    lw      t4, %lo(var_80A13F7C)(t4)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    swc1    $f20, 0x16C0(t4)           # 80A116C0
    lwc1    $f16, 0x0028(s1)           # 00000028
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0060(s1)            # 00000060
    c.lt.s  $f16, $f0
    lui     s0, 0x0600                 # s0 = 06000000
    sub.s   $f10, $f6, $f8
    addiu   s0, s0, 0x63CC             # s0 = 060063CC
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    bc1f    lbl_809F8590
    swc1    $f10, 0x0060(s1)           # 00000060
    swc1    $f0, 0x0028(s1)            # 00000028
    swc1    $f20, 0x0060(s1)           # 00000060
    sh      t5, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060063CC
    mtc1    v0, $f18                   # $f18 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 060063CC
    cvt.s.w $f4, $f18
    swc1    $f4, 0x01BC(s1)            # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    lw      t7, 0x0004(s1)             # 00000004
    addiu   t6, $zero, 0x0046          # t6 = 00000046
    sh      t6, 0x01A6(s1)             # 000001A6
    ori     t8, t7, 0x0400             # t8 = 00000400
    beq     $zero, $zero, lbl_809F8590
    sw      t8, 0x0004(s1)             # 00000004
var_809F8268:
    lh      t9, 0x01A6(s1)             # 000001A6
    addiu   $at, $zero, 0x0044         # $at = 00000044
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bnel    t9, $at, lbl_809F8284
    lw      a0, 0x0038($sp)
    sb      t0, 0x018F(s1)             # 0000018F
    lw      a0, 0x0038($sp)
lbl_809F8284:
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x69A0             # s0 = 060069A0
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sh      t1, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060069A0
    mtc1    v0, $f6                    # $f6 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 060069A0
    cvt.s.w $f8, $f6
    swc1    $f8, 0x01BC(s1)            # 000001BC
    jal     func_8008D328
    lw      a0, 0x0038($sp)
    beq     $zero, $zero, lbl_809F8594
    lw      $ra, 0x002C($sp)
var_809F82CC:
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lui     a1, 0x40A0                 # a1 = 40A00000
    beq     v0, $zero, lbl_809F82E8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CE          # a1 = 000039CE
lbl_809F82E8:
    lh      t2, 0x01A6(s1)             # 000001A6
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x58C4             # s0 = 060058C4
    bne     t2, $zero, lbl_809F8590
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    sh      t3, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060058C4
    mtc1    v0, $f10                   # $f10 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 060058C4
    cvt.s.w $f16, $f10
    swc1    $f16, 0x01BC(s1)           # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    lui     $at, 0x4120                # $at = 41200000
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    mtc1    $at, $f20                  # $f20 = 10.00
    sh      t4, 0x02C4(s1)             # 000002C4
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_809F8338:
    jal     func_80026D64
    mov.s   $f12, $f20
    trunc.w.s $f18, $f0
    sll     t7, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000002
    sll     s0, s0, 16
    mfc1    t6, $f18
    sra     s0, s0, 16
    slti    $at, s0, 0x000F
    addu    t8, s1, t7
    bne     $at, $zero, lbl_809F8338
    sh      t6, 0x04D4(t8)             # 000004D4
    lw      t0, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    and     t1, t0, $at
    sh      t9, 0x02D6(s1)             # 000002D6
    sh      $zero, 0x02D8(s1)          # 000002D8
    beq     $zero, $zero, lbl_809F8590
    sw      t1, 0x0004(s1)             # 00000004
var_809F8388:
    lw      a0, 0x0054($sp)
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_809F2080
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x6028             # s0 = 06006028
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    sh      t2, 0x01B2(s1)             # 000001B2
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06006028
    mtc1    v0, $f4                    # $f4 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 06006028
    cvt.s.w $f6, $f4
    swc1    $f6, 0x01BC(s1)            # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    lui     t3, %hi(var_80A13F7C)      # t3 = 80A10000
    lw      t3, %lo(var_80A13F7C)(t3)
    mtc1    $at, $f8                   # $f8 = 20.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f8, 0x16C0(t3)            # 80A116C0
    beq     $zero, $zero, lbl_809F8590
    sb      t4, 0x018F(s1)             # 0000018F
var_809F83FC:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    sb      $zero, 0x0190(s1)          # 00000190
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280
    lui     a3, 0x447A                 # a3 = 447A0000
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    beq     $zero, $zero, lbl_809F8590
    sh      t5, 0x01B2(s1)             # 000001B2
var_809F8434:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    sb      $zero, 0x0190(s1)          # 00000190
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     s0, 0x0601                 # s0 = 06010000
    addiu   s0, s0, 0x8A88             # s0 = 06008A88
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06008A88
    mtc1    v0, $f10                   # $f10 = 0.00
    mfc1    a2, $f20
    or      a1, s0, $zero              # a1 = 06008A88
    cvt.s.w $f16, $f10
    swc1    $f16, 0x01BC(s1)           # 000001BC
    jal     func_8008D21C
    lw      a0, 0x0038($sp)
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sh      t7, 0x01B2(s1)             # 000001B2
    jal     func_8008C9C0
    lw      a0, 0x0038($sp)
    lui     $at, 0x4190                # $at = 41900000
    lui     t6, %hi(var_80A13F7C)      # t6 = 80A10000
    lw      t6, %lo(var_80A13F7C)(t6)
    mtc1    $at, $f18                  # $f18 = 18.00
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28C7          # a1 = 000028C7
    jal     func_80022FD0
    swc1    $f18, 0x16B4(t6)           # 80A116B4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CF          # a1 = 000039CF
    beq     $zero, $zero, lbl_809F8594
    lw      $ra, 0x002C($sp)
var_809F84C0:
    sb      $zero, 0x0190(s1)          # 00000190
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lui     a1, 0x40E0                 # a1 = 40E00000
    beq     v0, $zero, lbl_809F8574
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x41C8                # $at = 41C80000
    addiu   t8, s1, 0x01EC             # t8 = 000001EC
    mtc1    $at, $f20                  # $f20 = 25.00
    sw      t8, 0x0034($sp)
lbl_809F84E8:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0040($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0044($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    swc1    $f0, 0x0048($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    add.s   $f6, $f0, $f4
    sw      t9, 0x0014($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    lw      a0, 0x0054($sp)
    swc1    $f6, 0x0010($sp)
    lw      a1, 0x0034($sp)
    jal     func_809F1E40
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFF0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0064
    bne     $at, $zero, lbl_809F84E8
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x0806          # a1 = 00000806
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sh      t0, 0x01AC(s1)             # 000001AC
lbl_809F8574:
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s1)             # 000001BC
    beq     v0, $zero, lbl_809F8590
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809F6FA8
    lw      a1, 0x0054($sp)
lbl_809F8590:
    lw      $ra, 0x002C($sp)
lbl_809F8594:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809F85A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x96B0             # a0 = 060096B0
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   a1, a1, 0x96B0             # a1 = 060096B0
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   a0, v1, 0x0140             # a0 = 00000140
    jal     func_8008D21C
    swc1    $f6, 0x01BC(v1)            # 000001BC
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_809F8610)     # t6 = 80A00000
    addiu   t6, t6, %lo(func_809F8610) # t6 = 809F8610
    sw      t6, 0x0184(t7)             # 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809F8610:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0004(s0)             # 00000004
    addiu   a0, s0, 0x0140             # a0 = 00000140
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lh      t8, 0x0194(s0)             # 00000194
    addiu   a0, s0, 0x04F8             # a0 = 000004F8
    lui     a1, 0x40A0                 # a1 = 40A00000
    slti    $at, t8, 0x0037
    bne     $at, $zero, lbl_809F866C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    jal     func_80064280
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x02D4(s0)             # 000002D4
lbl_809F866C:
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x01BC(s0)             # 000001BC
    beq     v0, $zero, lbl_809F86BC
    lui     t0, %hi(func_809F803C)     # t0 = 80A00000
    addiu   t0, t0, %lo(func_809F803C) # t0 = 809F803C
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t0, 0x0184(s0)             # 00000184
    sh      t1, 0x01B2(s0)             # 000001B2
    jal     func_8008A194
    addiu   a0, a0, 0x69A0             # a0 = 060069A0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x69A0             # a1 = 060069A0
    cvt.s.w $f6, $f4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f6, 0x01BC(s0)            # 000001BC
    jal     func_8008D328
    lw      a0, 0x0024($sp)
lbl_809F86BC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809F86D0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s5, 0x0038($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x006C($sp)
    lbu     v1, 0x0611(s5)             # 00000611
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     t9, %hi(func_809F7C14)     # t9 = 809F0000
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809F8A70
    andi    t8, v1, 0xFFFD             # t8 = 00000000
    lw      v0, 0x0184(s5)             # 00000184
    addiu   t9, t9, %lo(func_809F7C14) # t9 = 809F7C14
    sh      t7, 0x02C4(s5)             # 000002C4
    sb      t8, 0x0611(s5)             # 00000611
    beq     t9, v0, lbl_809F873C
    lw      s3, 0x063C(s5)             # 0000063C
    lui     t0, %hi(func_809F67A0)     # t0 = 809F0000
    addiu   t0, t0, %lo(func_809F67A0) # t0 = 809F67A0
    bne     t0, v0, lbl_809F8774
    lui     t4, %hi(func_809F803C)     # t4 = 80A00000
lbl_809F873C:
    lw      t1, 0x0000(s3)             # 00000000
    or      a0, s5, $zero              # a0 = 00000000
    andi    t2, t1, 0x2000             # t2 = 00000000
    beql    t2, $zero, lbl_809F8A74
    lw      $ra, 0x003C($sp)
    jal     func_809F7E6C
    lw      a1, 0x006C($sp)
    sh      $zero, 0x01AA(s5)          # 000001AA
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CC          # a1 = 000039CC
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    beq     $zero, $zero, lbl_809F8A70
    sh      t3, 0x0196(s5)             # 00000196
lbl_809F8774:
    addiu   t4, t4, %lo(func_809F803C) # t4 = FFFF803C
    bnel    t4, v0, lbl_809F89AC
    lw      t5, 0x0000(s3)             # 00000000
    lh      t5, 0x01B2(s5)             # 000001B2
    slti    $at, t5, 0x0003
    bnel    $at, $zero, lbl_809F89AC
    lw      t5, 0x0000(s3)             # 00000000
    lw      t6, 0x0000(s3)             # 00000000
    or      s4, $zero, $zero           # s4 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    andi    t7, t6, 0x0080             # t7 = 00000000
    bne     t7, $zero, lbl_809F8A70
    addiu   s0, s5, 0x01EC             # s0 = 000001EC
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFE8
lbl_809F87B4:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0050($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0054($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    swc1    $f0, 0x0058($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    add.s   $f6, $f0, $f4
    sw      t8, 0x0014($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    lw      a0, 0x006C($sp)
    swc1    $f6, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 000001EC
    jal     func_809F1E40
    or      a2, s1, $zero              # a2 = FFFFFFE8
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x001E
    bne     $at, $zero, lbl_809F87B4
    nop
    jal     func_80051A34
    lw      a0, 0x0000(s3)             # 00000000
    bne     v0, $zero, lbl_809F8844
    andi    v1, v0, 0x00FF             # v1 = 00000000
    beq     $zero, $zero, lbl_809F8848
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_809F8844:
    addiu   s4, $zero, 0x0001          # s4 = 00000001
lbl_809F8848:
    lbu     v0, 0x00AF(s5)             # 000000AF
    lui     s3, %hi(var_80A13F7C)      # s3 = 80A10000
    addiu   s3, s3, %lo(var_80A13F7C)  # s3 = 80A13F7C
    sll     t9, v0, 24
    sra     t0, t9, 24
    slti    $at, t0, 0x0003
    beq     $at, $zero, lbl_809F886C
    or      s2, $zero, $zero           # s2 = 00000000
    beq     s4, $zero, lbl_809F8874
lbl_809F886C:
    subu    t1, v0, v1
    sb      t1, 0x00AF(s5)             # 000000AF
lbl_809F8874:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f20                  # $f20 = 15.00
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809F8884:
    jal     func_80026D90
    mov.s   $f12, $f20
    multu   s1, s4
    sll     t3, s2,  3
    subu    t3, t3, s2
    lw      t2, 0x0000(s3)             # 80A13F7C
    sll     t3, t3,  3
    addu    t3, t3, s2
    sll     t3, t3,  3
    addu    t4, t2, t3
    mov.s   $f12, $f20
    mflo    s0
    addu    t5, t4, s0
    jal     func_80026D90
    swc1    $f0, 0x0268(t5)            # 00000268
    sll     t7, s2,  3
    subu    t7, t7, s2
    lw      t6, 0x0000(s3)             # 80A13F7C
    sll     t7, t7,  3
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addu    t7, t7, s2
    sll     s1, s1, 16
    sll     t7, t7,  3
    sra     s1, s1, 16
    addu    t8, t6, t7
    slti    $at, s1, 0x000C
    addu    t9, t8, s0
    bne     $at, $zero, lbl_809F8884
    swc1    $f0, 0x0270(t9)            # 00000270
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000C
    bnel    $at, $zero, lbl_809F8884
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lb      t0, 0x00AF(s5)             # 000000AF
    lw      a1, 0x006C($sp)
    or      a0, s5, $zero              # a0 = 00000000
    bgtz    t0, lbl_809F896C
    nop
    jal     func_809F44BC
    or      a0, s5, $zero              # a0 = 00000000
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D0          # a1 = 000039D0
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3827          # a1 = 00003827
    lui     a0, %hi(var_809FFDDC)      # a0 = 80A00000
    addiu   a0, a0, %lo(var_809FFDDC)  # a0 = 809FFDDC
    jal     func_80064780
    addiu   a1, $zero, 0x388B          # a1 = 0000388B
    lui     a0, 0x1001                 # a0 = 10010000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    beq     $zero, $zero, lbl_809F8A70
    sh      t1, 0x01B4(s5)             # 000001B4
lbl_809F896C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CD          # a1 = 000039CD
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3919          # a1 = 00003919
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_809F85A8
    lw      a1, 0x006C($sp)
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    sh      t2, 0x0196(s5)             # 00000196
    lw      t4, 0x0000(s3)             # 80A13F7C
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x16F4(t4)             # 000016F4
    beq     $zero, $zero, lbl_809F8A74
    lw      $ra, 0x003C($sp)
    lw      t5, 0x0000(s3)             # 80A13F7C
lbl_809F89AC:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF8A4           # $at = 0001F8A4
    and     t6, t5, $at
    beq     t6, $zero, lbl_809F8A70
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x4170                # $at = 41700000
    lui     s3, %hi(var_80A13F7C)      # s3 = 80A10000
    mtc1    $at, $f20                  # $f20 = 15.00
    addiu   s3, s3, %lo(var_80A13F7C)  # s3 = 80A13F7C
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809F89E4:
    jal     func_80026D90
    mov.s   $f12, $f20
    multu   s1, s4
    sll     t8, s2,  3
    subu    t8, t8, s2
    lw      t7, 0x0000(s3)             # 80A13F7C
    sll     t8, t8,  3
    addu    t8, t8, s2
    sll     t8, t8,  3
    addu    t9, t7, t8
    mov.s   $f12, $f20
    mflo    s0
    addu    t0, t9, s0
    jal     func_80026D90
    swc1    $f0, 0x0268(t0)            # 00000268
    sll     t2, s2,  3
    subu    t2, t2, s2
    lw      t1, 0x0000(s3)             # 80A13F7C
    sll     t2, t2,  3
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addu    t2, t2, s2
    sll     s1, s1, 16
    sll     t2, t2,  3
    sra     s1, s1, 16
    addu    t3, t1, t2
    slti    $at, s1, 0x000C
    addu    t4, t3, s0
    bne     $at, $zero, lbl_809F89E4
    swc1    $f0, 0x0270(t4)            # 00000270
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000C
    bnel    $at, $zero, lbl_809F89E4
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809F8A70:
    lw      $ra, 0x003C($sp)
lbl_809F8A74:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809F8A98:
    addiu   $sp, $sp, 0xFED0           # $sp = FFFFFED0
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s4, 0x0068($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s1, 0x005C($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      v1, 0x0184(s5)             # 00000184
    lui     t6, %hi(func_809F2DBC)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F2DBC) # t6 = 809F2DBC
    beq     t6, v1, lbl_809F8B0C
    lw      s3, 0x1C44(s6)             # 00001C44
    lui     t7, %hi(func_809F47E8)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809F47E8) # t7 = 809F47E8
    beq     t7, v1, lbl_809F8B0C
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_809F25C0
    addiu   a2, $zero, 0x017C          # a2 = 0000017C
    beq     $zero, $zero, lbl_809F8B40
    lbu     a0, 0x070B(s5)             # 0000070B
lbl_809F8B0C:
    lw      t8, 0x013C(s5)             # 0000013C
    lui     t1, 0x0001                 # t1 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, s6, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    lbu     a0, 0x070B(s5)             # 0000070B
lbl_809F8B40:
    beql    a0, $zero, lbl_809F8C68
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_809F46A4
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    mtc1    $zero, $f24                # $f24 = 0.00
    lui     $at, %hi(var_80A12DA0)     # $at = 80A10000
    lwc1    $f22, %lo(var_80A12DA0)($at)
    lui     $at, %hi(var_80A12DA4)     # $at = 80A10000
    lwc1    $f20, %lo(var_80A12DA4)($at)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $sp, 0x00F4            # s2 = FFFFFFC4
    addiu   s0, $sp, 0x0100            # s0 = FFFFFFD0
    swc1    $f24, 0x00F8($sp)
    lui     $at, 0x4370                # $at = 43700000
lbl_809F8B80:
    mtc1    $at, $f12                  # $f12 = 240.00
    jal     func_80026D64
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    add.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0104($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    nop
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_809F8BF4
    swc1    $f20, 0x0108($sp)
    swc1    $f20, 0x0100($sp)
    jal     func_80026D64
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x0108($sp)
    swc1    $f0, 0x00F4($sp)
    jal     func_80026D64
    mov.s   $f12, $f26
    beq     $zero, $zero, lbl_809F8C1C
    swc1    $f0, 0x00FC($sp)
    swc1    $f20, 0x0108($sp)
lbl_809F8BF4:
    jal     func_80026D64
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x0100($sp)
    swc1    $f0, 0x00FC($sp)
    jal     func_80026D64
    mov.s   $f12, $f26
    swc1    $f0, 0x00F4($sp)
lbl_809F8C1C:
    lui     $at, %hi(var_80A12DA8)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12DA8)($at)
    lui     $at, %hi(var_80A12DAC)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12DAC)($at)
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = FFFFFFD0
    add.s   $f16, $f0, $f10
    or      a2, s2, $zero              # a2 = FFFFFFC4
    mfc1    a3, $f16
    jal     func_809F1D00
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x000A
    bnel    $at, $zero, lbl_809F8B80
    lui     $at, 0x4370                # $at = 43700000
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809F8C68:
    mtc1    $at, $f26                  # $f26 = 1.00
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sb      t3, 0x0614(s5)             # 00000614
    lui     $at, 0xC040                # $at = C0400000
    lui     t4, %hi(var_80A13F7C)      # t4 = 80A10000
    lw      t4, %lo(var_80A13F7C)(t4)
    mtc1    $at, $f18                  # $f18 = -3.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t1, %hi(func_809F7030)     # t1 = 809F0000
    swc1    $f18, 0x16B8(t4)           # 80A116B8
    lw      t5, 0x0004(s5)             # 00000004
    lh      t7, 0x0192(s5)             # 00000192
    lh      t9, 0x0194(s5)             # 00000194
    lw      v1, 0x0184(s5)             # 00000184
    mtc1    $zero, $f24                # $f24 = 0.00
    addiu   t1, t1, %lo(func_809F7030) # t1 = 809F7030
    and     t6, t5, $at
    addiu   t8, t7, 0x0001             # t8 = 00000001
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      $zero, 0x02D4(s5)          # 000002D4
    sw      t6, 0x0004(s5)             # 00000004
    sh      t8, 0x0192(s5)             # 00000192
    beq     t1, v1, lbl_809F8CD8
    sh      t0, 0x0194(s5)             # 00000194
    lui     t2, %hi(func_809F7990)     # t2 = 809F0000
    addiu   t2, t2, %lo(func_809F7990) # t2 = 809F7990
    bnel    t2, v1, lbl_809F8CF8
    or      a0, s5, $zero              # a0 = 00000000
lbl_809F8CD8:
    lbu     t3, 0x0A63(s3)             # 00000A63
    or      a0, s5, $zero              # a0 = 00000000
    beql    t3, $zero, lbl_809F8CF8
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_809F78D8
    or      a1, s6, $zero              # a1 = 00000000
    lw      v1, 0x0184(s5)             # 00000184
    or      a0, s5, $zero              # a0 = 00000000
lbl_809F8CF8:
    jalr    $ra, v1
    or      a1, s6, $zero              # a1 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    sll     t4, s1,  1
lbl_809F8D08:
    addu    v0, s5, t4
    lh      v1, 0x01A6(v0)             # 000001A6
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    beq     v1, $zero, lbl_809F8D28
    sra     s1, s1, 16
    addiu   t5, v1, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x01A6(v0)             # 000001A6
lbl_809F8D28:
    slti    $at, s1, 0x0005
    bnel    $at, $zero, lbl_809F8D08
    sll     t4, s1,  1
    lh      v0, 0x0196(s5)             # 00000196
    or      a0, s5, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809F8D48
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0196(s5)             # 00000196
lbl_809F8D48:
    lh      v0, 0x02C4(s5)             # 000002C4
    beq     v0, $zero, lbl_809F8D58
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x02C4(s5)             # 000002C4
lbl_809F8D58:
    lh      v0, 0x02D8(s5)             # 000002D8
    beq     v0, $zero, lbl_809F8D68
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x02D8(s5)             # 000002D8
lbl_809F8D68:
    lh      v0, 0x02D6(s5)             # 000002D6
    beq     v0, $zero, lbl_809F8D78
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02D6(s5)             # 000002D6
lbl_809F8D78:
    lh      v0, 0x018C(s5)             # 0000018C
    beq     v0, $zero, lbl_809F8D88
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x018C(s5)             # 0000018C
lbl_809F8D88:
    lh      t1, 0x0668(s5)             # 00000668
    bnel    t1, $zero, lbl_809F8E20
    lbu     t6, 0x0189(s5)             # 00000189
    jal     func_809F86D0
    or      a1, s6, $zero              # a1 = 00000000
    addiu   s0, s5, 0x0600             # s0 = 00000600
    or      a1, s0, $zero              # a1 = 00000600
    jal     func_809F257C
    addiu   a0, s5, 0x01EC             # a0 = 000001EC
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s1, s6, $at
    or      a1, s1, $zero              # a1 = 00000001
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 00000600
    lh      t2, 0x02C4(s5)             # 000002C4
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000001
    bnel    t2, $zero, lbl_809F8E20
    lbu     t6, 0x0189(s5)             # 00000189
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 00000600
    lw      v1, 0x0184(s5)             # 00000184
    lui     t3, %hi(func_809F7C14)     # t3 = 809F0000
    addiu   t3, t3, %lo(func_809F7C14) # t3 = 809F7C14
    beq     t3, v1, lbl_809F8E1C
    lui     t4, %hi(func_809F803C)     # t4 = 80A00000
    addiu   t4, t4, %lo(func_809F803C) # t4 = 809F803C
    beq     t4, v1, lbl_809F8E1C
    lui     t5, %hi(func_809F8610)     # t5 = 80A00000
    addiu   t5, t5, %lo(func_809F8610) # t5 = 809F8610
    beq     t5, v1, lbl_809F8E1C
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000001
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s0, $zero              # a2 = 00000600
lbl_809F8E1C:
    lbu     t6, 0x0189(s5)             # 00000189
lbl_809F8E20:
    beql    t6, $zero, lbl_809F8EE4
    mov.s   $f20, $f24
    lh      a0, 0x00B6(s5)             # 000000B6
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x00B6(s5)             # 000000B6
    mov.s   $f20, $f0
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f2, 0x0064(s5)            # 00000064
    lwc1    $f12, 0x005C(s5)           # 0000005C
    lui     $at, 0x4396                # $at = 43960000
    mul.s   $f4, $f2, $f20
    mtc1    $at, $f14                  # $f14 = 300.00
    neg.s   $f10, $f20
    mul.s   $f6, $f0, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f22, $f8, $f14
    nop
    mul.s   $f16, $f10, $f12
    nop
    mul.s   $f18, $f0, $f2
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f14
    swc1    $f6, 0x0120($sp)
    lh      a0, 0x0192(s5)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f8                   # $f8 = -500.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f16                  # $f16 = 500.00
    mul.s   $f10, $f0, $f8
    beq     $zero, $zero, lbl_809F8EEC
    sub.s   $f20, $f10, $f16
    mov.s   $f20, $f24
lbl_809F8EE4:
    mov.s   $f22, $f24
    swc1    $f24, 0x0120($sp)
lbl_809F8EEC:
    sb      $zero, 0x0189(s5)          # 00000189
    mfc1    a1, $f22
    mfc1    a2, $f26
    swc1    $f24, 0x0010($sp)
    addiu   a0, s5, 0x04FC             # a0 = 000004FC
    jal     func_80064178
    lui     a3, 0x4416                 # a3 = 44160000
    mfc1    a2, $f26
    addiu   a0, s5, 0x0500             # a0 = 00000500
    lw      a1, 0x0120($sp)
    lui     a3, 0x4416                 # a3 = 44160000
    jal     func_80064178
    swc1    $f24, 0x0010($sp)
    mfc1    a1, $f20
    mfc1    a2, $f26
    addiu   a0, s5, 0x0504             # a0 = 00000504
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f24, 0x0010($sp)
    lh      v0, 0x01AA(s5)             # 000001AA
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s5, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_809F8F5C
    addiu   $at, $zero, 0x0064         # $at = 00000064
    jal     func_80022FD0
    addiu   a1, $zero, 0x39C7          # a1 = 000039C7
    lh      v0, 0x01AA(s5)             # 000001AA
    addiu   $at, $zero, 0x0064         # $at = 00000064
lbl_809F8F5C:
    bne     v0, $at, lbl_809F8F70
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D6          # a1 = 000039D6
    sh      $zero, 0x01AA(s5)          # 000001AA
lbl_809F8F70:
    lh      t7, 0x02D6(s5)             # 000002D6
    lui     $at, %hi(var_80A12DB0)     # $at = 80A10000
    bnel    t7, $zero, lbl_809F8F90
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lh      t8, 0x02D8(s5)             # 000002D8
    beql    t8, $zero, lbl_809F902C
    lbu     t4, 0x018F(s5)             # 0000018F
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809F8F90:
    lwc1    $f20, %lo(var_80A12DB0)($at)
    sll     t9, s1,  1
lbl_809F8F98:
    addu    v0, s5, t9
    lh      v1, 0x04D4(v0)             # 000004D4
    sll     t2, s1,  2
    addu    a0, s5, t2
    beq     v1, $zero, lbl_809F8FD8
    addiu   t0, v1, 0xFFFF             # t0 = FFFFFFFF
    sll     t1, s1,  2
    sh      t0, 0x04D4(v0)             # 000004D4
    addu    a0, s5, t1
    mfc1    a2, $f26
    addiu   a0, a0, 0x048C             # a0 = 0000048C
    lw      a1, 0x04F8(s5)             # 000004F8
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    beq     $zero, $zero, lbl_809F8FEC
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_809F8FD8:
    mfc1    a1, $f26
    mfc1    a2, $f20
    jal     func_800642F0
    addiu   a0, a0, 0x048C             # a0 = 0000048C
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_809F8FEC:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0012
    bnel    $at, $zero, lbl_809F8F98
    sll     t9, s1,  1
    lh      t3, 0x02D8(s5)             # 000002D8
    addiu   a0, s3, 0x00E4             # a0 = 000000E4
    beql    t3, $zero, lbl_809F902C
    lbu     t4, 0x018F(s5)             # 0000018F
    jal     func_80064780
    addiu   a1, $zero, 0x0068          # a1 = 00000068
    or      a0, s6, $zero              # a0 = 00000000
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_809F2080
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t4, 0x018F(s5)             # 0000018F
lbl_809F902C:
    addiu   s0, $sp, 0x00E8            # s0 = FFFFFFB8
    or      a0, s6, $zero              # a0 = 00000000
    beql    t4, $zero, lbl_809F9094
    lh      v0, 0x025C(s5)             # 0000025C
    lw      t6, 0x0024(s5)             # 00000024
    sb      $zero, 0x018F(s5)          # 0000018F
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sw      t6, 0x0000(s0)             # FFFFFFB8
    lw      t5, 0x0028(s5)             # 00000028
    lui     a3, 0x3F33                 # a3 = 3F330000
    ori     a3, a3, 0x3333             # a3 = 3F333333
    sw      t5, 0x0004(s0)             # FFFFFFBC
    lw      t6, 0x002C(s5)             # 0000002C
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    or      a1, s0, $zero              # a1 = FFFFFFB8
    sw      t6, 0x0008(s0)             # FFFFFFC0
    jal     func_809F21F0
    swc1    $f24, 0x00EC($sp)
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_809F21F0
    or      a1, s0, $zero              # a1 = FFFFFFB8
    lh      v0, 0x025C(s5)             # 0000025C
lbl_809F9094:
    beq     v0, $zero, lbl_809F9114
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x025C(s5)             # 0000025C
    lh      t8, 0x025C(s5)             # 0000025C
    bne     t8, $zero, lbl_809F90C0
    nop
    mfc1    a1, $f26
    mfc1    a2, $f24
    mfc1    a3, $f24
    jal     func_809F214C
    or      a0, s6, $zero              # a0 = 00000000
lbl_809F90C0:
    lui     $at, %hi(var_80A12DB4)     # $at = 80A10000
    lwc1    $f20, %lo(var_80A12DB4)($at)
    jal     func_80026D90
    mov.s   $f12, $f20
    lh      t9, 0x025C(s5)             # 0000025C
    lui     $at, %hi(var_809FFEB4)     # $at = 80A00000
    lwc1    $f6, 0x0260(s5)            # 00000260
    sll     t0, t9,  2
    addu    $at, $at, t0
    lwc1    $f18, %lo(var_809FFEB4)($at)
    lui     $at, %hi(var_80A12DB8)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12DB8)($at)
    mul.s   $f4, $f18, $f20
    mfc1    a1, $f26
    add.s   $f16, $f0, $f10
    or      a0, s6, $zero              # a0 = 00000000
    mfc1    a3, $f16
    add.s   $f8, $f4, $f6
    mfc1    a2, $f8
    jal     func_809F214C
    nop
lbl_809F9114:
    lh      v0, 0x018C(s5)             # 0000018C
    beql    v0, $zero, lbl_809F9250
    lw      s0, 0x1C4C(s6)             # 00001C4C
    lbu     t1, 0x018E(s5)             # 0000018E
    slti    $at, t1, 0x0004
    beql    $at, $zero, lbl_809F9250
    lw      s0, 0x1C4C(s6)             # 00001C4C
    lbu     t2, 0x018A(s5)             # 0000018A
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    t2, $zero, lbl_809F91D0
    slti    $at, v0, 0x001E
    bne     v0, $at, lbl_809F91CC
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0xC334                # $at = C3340000
    mtc1    $at, $f22                  # $f22 = -180.00
    sb      t3, 0x018A(s5)             # 0000018A
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f20                  # $f20 = 120.00
    swc1    $f24, 0x00D0($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, $sp, 0x00CC            # s1 = FFFFFF9C
    swc1    $f22, 0x00CC($sp)
lbl_809F916C:
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f22, 0x00D4($sp)
lbl_809F9174:
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_809FC1E4
    or      a2, s1, $zero              # a2 = FFFFFF9C
    lwc1    $f18, 0x00D4($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    add.s   $f4, $f18, $f20
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bne     $at, $zero, lbl_809F9174
    swc1    $f4, 0x00D4($sp)
    lwc1    $f6, 0x00CC($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    add.s   $f8, $f6, $f20
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bne     $at, $zero, lbl_809F916C
    swc1    $f8, 0x00CC($sp)
    beq     $zero, $zero, lbl_809F9250
    lw      s0, 0x1C4C(s6)             # 00001C4C
lbl_809F91CC:
    slti    $at, v0, 0x001E
lbl_809F91D0:
    beql    $at, $zero, lbl_809F9250
    lw      s0, 0x1C4C(s6)             # 00001C4C
    swc1    $f24, 0x00D8($sp)
    swc1    $f24, 0x00DC($sp)
    lh      t4, 0x018C(s5)             # 0000018C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    mtc1    t4, $f16                   # $f16 = 0.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    cvt.s.w $f18, $f16
    lui     $at, %hi(var_80A12DBC)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12DBC)($at)
    sub.s   $f4, $f10, $f18
    mul.s   $f8, $f4, $f6
    jal     func_80026D64
    swc1    $f8, 0x00E0($sp)
    mov.s   $f12, $f0
    jal     func_800AAB94
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   s1, $sp, 0x00CC            # s1 = FFFFFF9C
    or      a1, s1, $zero              # a1 = FFFFFF9C
    jal     func_800AB958
    addiu   a0, $sp, 0x00D8            # a0 = FFFFFFA8
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    jal     func_809FC1E4
    or      a2, s1, $zero              # a2 = FFFFFF9C
    lbu     t5, 0x018E(s5)             # 0000018E
    addu    t6, t5, v0
    sb      t6, 0x018E(s5)             # 0000018E
    lw      s0, 0x1C4C(s6)             # 00001C4C
lbl_809F9250:
    lui     $at, %hi(var_80A12DC0)     # $at = 80A10000
    beq     s0, $zero, lbl_809F931C
    nop
    lwc1    $f22, %lo(var_80A12DC0)($at)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    addiu   s4, $sp, 0x00A4            # s4 = FFFFFF74
    addiu   s3, $sp, 0x00B0            # s3 = FFFFFF80
    addiu   s2, $sp, 0x00BC            # s2 = FFFFFF8C
    lh      t7, 0x001C(s0)             # 0000001D
lbl_809F9278:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t7, $at, lbl_809F9290
    or      s1, $zero, $zero           # s1 = 00000000
    beq     $zero, $zero, lbl_809F9314
    lw      s0, 0x0124(s0)             # 00000125
    or      s1, $zero, $zero           # s1 = 00000000
lbl_809F9290:
    mtc1    s1, $f16                   # $f16 = 0.00
lbl_809F9294:
    swc1    $f24, 0x00BC($sp)
    swc1    $f24, 0x00C0($sp)
    cvt.s.w $f10, $f16
    swc1    $f20, 0x00C4($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f12, $f10, $f22
    jal     func_800AAB94
    nop
    or      a0, s2, $zero              # a0 = FFFFFF8C
    jal     func_800AB958
    or      a1, s3, $zero              # a1 = FFFFFF80
    lwc1    $f18, 0x0024(s0)           # 00000025
    lwc1    $f4, 0x00B0($sp)
    lwc1    $f10, 0x00B8($sp)
    or      a0, s5, $zero              # a0 = 00000000
    add.s   $f6, $f18, $f4
    or      a1, s6, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFF74
    swc1    $f6, 0x00A4($sp)
    lwc1    $f8, 0x0028(s0)            # 00000029
    swc1    $f8, 0x00A8($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002D
    add.s   $f18, $f16, $f10
    jal     func_809FC1E4
    swc1    $f18, 0x00AC($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0008
    bnel    $at, $zero, lbl_809F9294
    mtc1    s1, $f16                   # $f16 = 0.00
    lw      s0, 0x0124(s0)             # 00000125
lbl_809F9314:
    bnel    s0, $zero, lbl_809F9278
    lh      t7, 0x001C(s0)             # 0000001D
lbl_809F931C:
    jal     func_809FE718
    or      a0, s6, $zero              # a0 = 00000000
    lw      v0, 0x1C64(s6)             # 00001C64
    lui     $at, 0x0001                # $at = 00010000
    addiu   v1, $zero, 0x0106          # v1 = 00000106
    beq     v0, $zero, lbl_809F936C
    addu    $at, $at, s6
    lh      t8, 0x0000(v0)             # 00000000
lbl_809F933C:
    beql    v1, t8, lbl_809F9350
    lbu     t9, 0x015E(v0)             # 0000015E
    beq     $zero, $zero, lbl_809F9364
    lw      v0, 0x0124(v0)             # 00000124
    lbu     t9, 0x015E(v0)             # 0000015E
lbl_809F9350:
    beq     t9, $zero, lbl_809F9360
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_809F936C
    sb      t0, 0x0190(s5)             # 00000190
lbl_809F9360:
    lw      v0, 0x0124(v0)             # 00000124
lbl_809F9364:
    bnel    v0, $zero, lbl_809F933C
    lh      t8, 0x0000(v0)             # 00000000
lbl_809F936C:
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    addu    $at, $at, s6
    sb      v1, 0x0B00($at)            # 00010B00
    lb      v0, 0x0190(s5)             # 00000190
    slti    $at, v0, 0x0042
    bne     $at, $zero, lbl_809F93B0
    addiu   t1, v0, 0x0001             # t1 = 00000001
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    beq     v0, $at, lbl_809F95A4
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
lbl_809F93B0:
    slti    $at, v0, 0x0024
    bne     $at, $zero, lbl_809F93CC
    addiu   $at, $zero, 0x0041         # $at = 00000041
    beq     v0, $at, lbl_809F9544
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
lbl_809F93CC:
    sltiu   $at, t1, 0x0025
    beq     $at, $zero, lbl_809F987C
    sll     t1, t1,  2
    lui     $at, %hi(var_80A12DC4)     # $at = 80A10000
    addu    $at, $at, t1
    lw      t1, %lo(var_80A12DC4)($at)
    jr      t1
    nop
var_809F93EC:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f24
    mfc1    a2, $f26
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9414:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F944C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9484:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f26, 0x0AFC($at)          # 00010AFC
var_809F94A4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f26, 0x0AFC($at)          # 00010AFC
var_809F94C0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f26, 0x0AFC($at)          # 00010AFC
var_809F94E0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sb      t6, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    lui     a2, 0x3D99                 # a2 = 3D990000
    ori     a2, a2, 0x999A             # a2 = 3D99999A
    jal     func_800642F0
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9524:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sb      t8, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f24, 0x0AFC($at)          # 00010AFC
lbl_809F9544:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    sb      t9, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    sb      t0, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9584:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    sb      t1, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f24, 0x0AFC($at)          # 00010AFC
lbl_809F95A4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    sb      t2, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    sb      t3, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F95E4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F962C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sb      t7, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9670:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    sb      t9, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F987C
    sh      $zero, 0x0194(s5)          # 00000194
var_809F96B8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    sb      t0, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    sb      t1, 0x0AE1($at)            # 00010AE1
    lh      a0, 0x0194(s5)             # 00000194
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    a0, s6, $at
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mtc1    $at, $f8                   # $f8 = 0.50
    mfc1    a2, $f26
    mul.s   $f6, $f0, $f4
    mfc1    a3, $f26
    add.s   $f16, $f6, $f8
    mfc1    a1, $f16
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9734:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    sb      t2, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sb      t3, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F977C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t4, $zero, 0x000D          # t4 = 0000000D
    sb      t4, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F97B4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t5, $zero, 0x000E          # t5 = 0000000E
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F987C
    swc1    $f26, 0x0AFC($at)          # 00010AFC
var_809F97D4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sb      t6, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    sb      t7, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    mfc1    a2, $f26
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    jal     func_80064280
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F981C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sb      t8, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sb      t9, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f26
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, s6, $at
    beq     $zero, $zero, lbl_809F9880
    lwc1    $f0, 0x0704(s5)            # 00000704
var_809F9860:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    sb      v1, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0AE1($at)            # 00010AE1
lbl_809F987C:
    lwc1    $f0, 0x0704(s5)            # 00000704
lbl_809F9880:
    mtc1    $zero, $f10                # $f10 = 0.00
    sb      $zero, 0x0190(s5)          # 00000190
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    c.eq.s  $f10, $f0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a2, 0x3E99                 # a2 = 3E990000
    bc1t    lbl_809F9948
    addiu   a0, s5, 0x0660             # a0 = 00000660
    cfc1    t1, $f31
    ctc1    t2, $f31
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s6, $at
    cvt.w.s $f18, $f0
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_809F9918
    mfc1    t2, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f18, $f0, $f18
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_809F990C
    nop
    mfc1    t2, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809F9924
    or      t2, t2, $at                # t2 = 80000000
lbl_809F990C:
    beq     $zero, $zero, lbl_809F9924
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f18
lbl_809F9918:
    nop
    bltz    t2, lbl_809F990C
    nop
lbl_809F9924:
    lui     $at, 0x0001                # $at = 00010000
    ctc1    t1, $f31
    sb      t2, 0x0B09(v0)             # 00000B09
    sb      v1, 0x0B08(v0)             # 00000B08
    sb      v1, 0x0B07(v0)             # 00000B07
    sb      v1, 0x0B06(v0)             # 00000B06
    addu    $at, $at, s6
    beq     $zero, $zero, lbl_809F99BC
    sb      t5, 0x0B05($at)            # 00010B05
lbl_809F9948:
    lh      t6, 0x01B4(s5)             # 000001B4
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s6, $at
    beq     t6, $zero, lbl_809F99B4
    addu    $at, $at, s6
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0B05($at)            # 00010B05
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s6, $at
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    sb      v1, 0x0B08(v0)             # 00000B08
    sb      v1, 0x0B07(v0)             # 00000B07
    sb      v1, 0x0B06(v0)             # 00000B06
    lh      t9, 0x01B4(s5)             # 000001B4
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_809F99A4
    sb      $zero, 0x0B09(v0)          # 00000B09
    beq     $zero, $zero, lbl_809F99A4
    sb      t1, 0x0B09(v0)             # 00000B09
    sb      $zero, 0x0B09(v0)          # 00000B09
lbl_809F99A4:
    lh      t2, 0x01B4(s5)             # 000001B4
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFE
    beq     $zero, $zero, lbl_809F99BC
    sh      t3, 0x01B4(s5)             # 000001B4
lbl_809F99B4:
    sb      $zero, 0x0B09(v0)          # 00000B09
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_809F99BC:
    lh      v1, 0x065E(s5)             # 0000065E
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x4120                 # a3 = 41200000
    beql    v1, $zero, lbl_809F9A30
    mfc1    a1, $f26
    lbu     v0, 0x065C(s5)             # 0000065C
    addiu   t5, v1, 0xFFFF             # t5 = 000000FE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809F99F4
    sh      t5, 0x065E(s5)             # 0000065E
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    beq     $zero, $zero, lbl_809F9A1C
    mfc1    a1, $f0
lbl_809F99F4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_809F9A0C
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f0                   # $f0 = 25.00
    beq     $zero, $zero, lbl_809F9A1C
    mfc1    a1, $f0
lbl_809F9A0C:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    nop
    mfc1    a1, $f0
lbl_809F9A1C:
    jal     func_80064280
    addiu   a0, s5, 0x0660             # a0 = 00000660
    beq     $zero, $zero, lbl_809F9A54
    lbu     t6, 0x065C(s5)             # 0000065C
    mfc1    a1, $f26
lbl_809F9A30:
    jal     func_800642F0
    lui     a2, 0x40A0                 # a2 = 40A00000
    lwc1    $f4, 0x0660(s5)            # 00000660
    c.eq.s  $f24, $f4
    nop
    bc1fl   lbl_809F9A54
    lbu     t6, 0x065C(s5)             # 0000065C
    sb      $zero, 0x065C(s5)          # 0000065C
    lbu     t6, 0x065C(s5)             # 0000065C
lbl_809F9A54:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    beq     t6, $zero, lbl_809F9AD0
    nop
    lui     $at, 0x8012                # $at = 80120000
    sb      t7, -0x4326($at)           # 8011BCDA
    lbu     t8, 0x065C(s5)             # 0000065C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_809F9AA0
    lwc1    $f6, 0x0660(s5)            # 00000660
    lw      t1, 0x0024(s5)             # 00000024
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0xBCE0             # t9 = 8011BCE0
    sw      t1, 0x0000(t9)             # 8011BCE0
    lw      t0, 0x0028(s5)             # 00000028
    sw      t0, 0x0004(t9)             # 8011BCE4
    lw      t1, 0x002C(s5)             # 0000002C
    sw      t1, 0x0008(t9)             # 8011BCE8
    lwc1    $f6, 0x0660(s5)            # 00000660
lbl_809F9AA0:
    lui     $at, 0x8012                # $at = 80120000
    trunc.w.s $f8, $f6
    mfc1    t3, $f8
    nop
    sh      t3, -0x4314($at)           # 8011BCEC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f16, -0x4310($at)         # 8011BCF0
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_809F9AD4
    sh      $zero, -0x430C($at)        # 8011BCF4
lbl_809F9AD0:
    sb      $zero, -0x4326($at)        # 8011BCDA
lbl_809F9AD4:
    lbu     v0, 0x0264(s5)             # 00000264
    lui     $at, 0x4248                # $at = 42480000
    beq     v0, $zero, lbl_809F9BC8
    addiu   s1, v0, 0xFFFF             # s1 = FFFFFFFF
    lwc1    $f18, 0x02E0(s5)           # 000002E0
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f10, 0x02DC(s5)           # 000002DC
    add.s   $f6, $f18, $f4
    mtc1    $at, $f8                   # $f8 = 30.00
    sll     s1, s1, 16
    sra     s1, s1, 16
    mtc1    s1, $f18                   # $f18 = NaN
    add.s   $f16, $f6, $f8
    swc1    $f10, 0x0268(s5)           # 00000268
    lwc1    $f10, 0x02E4(s5)           # 000002E4
    cvt.s.w $f20, $f18
    swc1    $f16, 0x026C(s5)           # 0000026C
    lui     $at, %hi(var_80A12E58)     # $at = 80A10000
    swc1    $f10, 0x0270(s5)           # 00000270
    lwc1    $f4, %lo(var_80A12E58)($at)
    mul.s   $f22, $f20, $f4
    jal     func_800CF470
    mov.s   $f12, $f22
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f6                   # $f6 = 600.00
    mov.s   $f12, $f22
    mul.s   $f24, $f0, $f6
    jal     func_800D2CD0
    nop
    lwc1    $f8, 0x01EC(s5)            # 000001EC
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f4                   # $f4 = 600.00
    add.s   $f16, $f8, $f24
    lui     $at, %hi(var_80A12E5C)     # $at = 80A10000
    mul.s   $f6, $f0, $f4
    addiu   t9, s1, 0x00FA             # t9 = 000000F9
    swc1    $f16, 0x0010($sp)
    lwc1    $f10, 0x01F0(s5)           # 000001F0
    lwc1    $f16, %lo(var_80A12E5C)($at)
    addiu   a0, s6, 0x1C24             # a0 = 00001C24
    swc1    $f10, 0x0014($sp)
    mul.s   $f10, $f20, $f16
    lwc1    $f18, 0x01F4(s5)           # 000001F4
    sw      t9, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    add.s   $f8, $f18, $f6
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    trunc.w.s $f4, $f10
    swc1    $f8, 0x0018($sp)
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    mfc1    t5, $f4
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    addiu   t8, t7, 0x6000             # t8 = 00006000
    jal     func_800253F0
    sw      t8, 0x0020($sp)
    sb      $zero, 0x0264(s5)          # 00000264
lbl_809F9BC8:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    lw      s5, 0x006C($sp)
    lw      s6, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0130           # $sp = 00000000


func_809F9C00:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   t6, a1, 0xFFF6             # t6 = FFFFFFF6
    sltiu   $at, t6, 0x0010
    beq     $at, $zero, lbl_809F9E34
    sll     t6, t6,  2
    lui     $at, %hi(var_80A12E60)     # $at = 80A10000
    addu    $at, $at, t6
    lw      t6, %lo(var_80A12E60)($at)
    jr      t6
    nop
var_809F9C2C:
    lw      v0, 0x0014($sp)
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xC9E8             # t8 = 0600C9E8
    lbu     t7, 0x070A(v0)             # 0000070A
    beql    t7, $zero, lbl_809F9E38
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_809F9E34
    sw      t8, 0x0000(a2)             # 00000000
var_809F9C4C:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t9, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x04FC(v0)            # 000004FC
    lwc1    $f6, 0x0504(v0)            # 00000504
    mtc1    t9, $f10                   # $f10 = 0.00
    lh      t2, 0x0004(v1)             # 00000004
    add.s   $f8, $f4, $f6
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f10, $f6
    add.s   $f18, $f16, $f8
    trunc.w.s $f4, $f18
    mfc1    t1, $f4
    nop
    sh      t1, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x0500(v0)           # 00000500
    add.s   $f8, $f10, $f16
    trunc.w.s $f18, $f8
    mfc1    t4, $f18
    beq     $zero, $zero, lbl_809F9E34
    sh      t4, 0x0004(v1)             # 00000004
var_809F9CA4:
    lw      v0, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v1, 0x0010($sp)
    lwc1    $f0, 0x0500(v0)            # 00000500
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_809F9E38
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t5, 0x0004(v1)             # 00000004
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    add.s   $f16, $f10, $f0
    trunc.w.s $f8, $f16
    mfc1    t7, $f8
    beq     $zero, $zero, lbl_809F9E34
    sh      t7, 0x0004(v1)             # 00000004
var_809F9CE8:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t8, 0x0002(v1)             # 00000002
    lwc1    $f18, 0x04FC(v0)           # 000004FC
    lwc1    $f4, 0x0504(v0)            # 00000504
    mtc1    t8, $f10                   # $f10 = 0.00
    lh      t1, 0x0004(v1)             # 00000004
    add.s   $f6, $f18, $f4
    mtc1    t1, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f10, $f4
    add.s   $f8, $f16, $f6
    trunc.w.s $f18, $f8
    mfc1    t0, $f18
    nop
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x0500(v0)           # 00000500
    add.s   $f6, $f10, $f16
    trunc.w.s $f8, $f6
    mfc1    t3, $f8
    beq     $zero, $zero, lbl_809F9E34
    sh      t3, 0x0004(v1)             # 00000004
var_809F9D40:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t4, 0x0002(v1)             # 00000002
    lwc1    $f18, 0x04FC(v0)           # 000004FC
    lwc1    $f4, 0x0504(v0)            # 00000504
    mtc1    t4, $f16                   # $f16 = 0.00
    lh      t7, 0x0004(v1)             # 00000004
    sub.s   $f10, $f18, $f4
    mtc1    t7, $f4                    # $f4 = 0.00
    cvt.s.w $f6, $f16
    cvt.s.w $f16, $f4
    add.s   $f8, $f6, $f10
    trunc.w.s $f18, $f8
    mfc1    t6, $f18
    nop
    sh      t6, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x0500(v0)            # 00000500
    add.s   $f10, $f16, $f6
    trunc.w.s $f8, $f10
    mfc1    t9, $f8
    beq     $zero, $zero, lbl_809F9E34
    sh      t9, 0x0004(v1)             # 00000004
var_809F9D98:
    lw      v0, 0x0014($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      v1, 0x0010($sp)
    lwc1    $f0, 0x0500(v0)            # 00000500
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_809F9E38
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t0, 0x0004(v1)             # 00000004
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f16, $f4
    add.s   $f6, $f16, $f0
    trunc.w.s $f10, $f6
    mfc1    t2, $f10
    beq     $zero, $zero, lbl_809F9E34
    sh      t2, 0x0004(v1)             # 00000004
var_809F9DDC:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t3, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x04FC(v0)            # 000004FC
    lwc1    $f18, 0x0504(v0)           # 00000504
    mtc1    t3, $f16                   # $f16 = 0.00
    lh      t6, 0x0004(v1)             # 00000004
    sub.s   $f4, $f8, $f18
    mtc1    t6, $f18                   # $f18 = NaN
    cvt.s.w $f6, $f16
    cvt.s.w $f16, $f18
    add.s   $f10, $f6, $f4
    trunc.w.s $f8, $f10
    mfc1    t5, $f8
    nop
    sh      t5, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x0500(v0)            # 00000500
    add.s   $f4, $f16, $f6
    trunc.w.s $f10, $f4
    mfc1    t8, $f10
    nop
    sh      t8, 0x0004(v1)             # 00000004
lbl_809F9E34:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F9E38:
    jr      $ra
    nop


func_809F9E40:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    lui     t6, %hi(var_809FFEF0)      # t6 = 80A00000
    addiu   t6, t6, %lo(var_809FFEF0)  # t6 = 809FFEF0
    addu    v0, a1, t6
    lb      a2, 0x0000(v0)             # 00000000
    lui     a0, %hi(var_809FFF28)      # a0 = 80A00000
    lw      v1, 0x0060($sp)
    bltz    a2, lbl_809F9E94
    addiu   a0, a0, %lo(var_809FFF28)  # a0 = 809FFF28
    sll     t7, a2,  2
    subu    t7, t7, a2
    sll     t7, t7,  2
    addu    a1, v1, t7
    addiu   a1, a1, 0x02DC             # a1 = 000002DC
    jal     func_800AB958
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
lbl_809F9E94:
    lui     t8, %hi(var_809FFEF2)      # t8 = 80A00000
    lui     a0, %hi(var_809FFF28)      # a0 = 80A00000
    addiu   t8, t8, %lo(var_809FFEF2)  # t8 = 809FFEF2
    addiu   a0, a0, %lo(var_809FFF28)  # a0 = 809FFF28
    bne     v0, t8, lbl_809F9EBC
    lw      v1, 0x0060($sp)
    jal     func_800AB958
    addiu   a1, v1, 0x01EC             # a1 = 000001EC
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809F9EBC:
    lui     t9, %hi(var_809FFF03)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_809FFF03)  # t9 = 809FFF03
    bne     v0, t9, lbl_809F9EDC
    lui     t0, %hi(var_809FFEFB)      # t0 = 80A00000
    jal     func_800AB958
    addiu   a1, v1, 0x0038             # a1 = 00000038
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809F9EDC:
    addiu   t0, t0, %lo(var_809FFEFB)  # t0 = FFFFFEFB
    bne     v0, t0, lbl_809F9F8C
    lui     t4, %hi(var_809FFEF6)      # t4 = 80A00000
    lw      t1, 0x0050($sp)
    addiu   a1, v1, 0x01F8             # a1 = 000001F8
    lw      a2, 0x0000(t1)             # 00000000
    jal     func_800AB958
    sw      a2, 0x0044($sp)
    lw      a2, 0x0044($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(a2)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0050($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x003C($sp)
    lw      a3, 0x003C($sp)
    lw      a2, 0x0044($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBE90             # a1 = 0600BE90
    sll     t7, a1,  4
    srl     t8, t7, 28
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a2)             # 000002D0
    sll     t9, t8,  2
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809F9F8C:
    addiu   t4, t4, %lo(var_809FFEF6)  # t4 = FFFFFEF6
    bne     v0, t4, lbl_809F9FB0
    lui     t5, %hi(var_809FFEFA)      # t5 = 80A00000
    lui     a0, %hi(var_809FFF34)      # a0 = 80A00000
    addiu   a0, a0, %lo(var_809FFF34)  # a0 = 809FFF34
    jal     func_800AB958
    addiu   a1, v1, 0x0228             # a1 = 00000228
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809F9FB0:
    addiu   t5, t5, %lo(var_809FFEFA)  # t5 = FFFFFEFA
    bne     v0, t5, lbl_809FA018
    lui     t8, %hi(var_809FFEF4)      # t8 = 80A00000
    lui     a0, %hi(var_809FFF40)      # a0 = 80A00000
    addiu   a0, a0, %lo(var_809FFF40)  # a0 = 809FFF40
    jal     func_800AB958
    addiu   a1, v1, 0x021C             # a1 = 0000021C
    lw      v1, 0x0060($sp)
    lui     a0, %hi(var_809FFF4C)      # a0 = 80A00000
    addiu   a0, a0, %lo(var_809FFF4C)  # a0 = 809FFF4C
    lbu     t6, 0x024C(v1)             # 0000024C
    bnel    t6, $zero, lbl_809F9FF4
    lh      t7, 0x019E(v1)             # 0000019E
    jal     func_800AB958
    addiu   a1, v1, 0x0250             # a1 = 00000250
    lw      v1, 0x0060($sp)
    lh      t7, 0x019E(v1)             # 0000019E
lbl_809F9FF4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sb      $zero, 0x024C(v1)          # 0000024C
    bne     t7, $at, lbl_809FA188
    lui     a0, %hi(var_809FFF58)      # a0 = 80A00000
    addiu   a0, a0, %lo(var_809FFF58)  # a0 = 809FFF58
    jal     func_800AB958
    addiu   a1, v1, 0x02C8             # a1 = 000002C8
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809FA018:
    addiu   t8, t8, %lo(var_809FFEF4)  # t8 = FFFFFEF4
    bne     v0, t8, lbl_809FA0CC
    lui     t2, %hi(var_809FFEF8)      # t2 = 80A00000
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFDC
    lui     t9, %hi(var_809FFF10)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_809FFF10)  # t9 = 809FFF10
    lw      t1, 0x0000(t9)             # 809FFF10
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t1, 0x0000(a0)             # FFFFFFDC
    lw      t0, 0x0004(t9)             # 809FFF14
    sw      t0, 0x0004(a0)             # FFFFFFE0
    lw      t1, 0x0008(t9)             # 809FFF18
    sw      t1, 0x0008(a0)             # FFFFFFE4
    lbu     v0, 0x0188(v1)             # 00000188
    lwc1    $f4, 0x002C($sp)
    bne     v0, $at, lbl_809FA08C
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f0                   # $f0 = -300.00
    lui     $at, 0x442F                # $at = 442F0000
    lwc1    $f8, 0x0030($sp)
    mtc1    $at, $f18                  # $f18 = 700.00
    lwc1    $f16, 0x0034($sp)
    add.s   $f6, $f4, $f0
    add.s   $f10, $f8, $f0
    swc1    $f6, 0x002C($sp)
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x0030($sp)
    beq     $zero, $zero, lbl_809FA0BC
    swc1    $f4, 0x0034($sp)
lbl_809FA08C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809FA0BC
    lwc1    $f6, 0x002C($sp)
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f0                   # $f0 = -300.00
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f16                  # $f16 = 700.00
    lwc1    $f10, 0x0034($sp)
    add.s   $f8, $f6, $f0
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x002C($sp)
    swc1    $f18, 0x0034($sp)
lbl_809FA0BC:
    jal     func_800AB958
    addiu   a1, v1, 0x0210             # a1 = 00000210
    beq     $zero, $zero, lbl_809FA18C
    lw      $ra, 0x0014($sp)
lbl_809FA0CC:
    addiu   t2, t2, %lo(var_809FFEF8)  # t2 = FFFFFEF8
    bne     v0, t2, lbl_809FA188
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFD0
    lui     t3, %hi(var_809FFF1C)      # t3 = 80A00000
    addiu   t3, t3, %lo(var_809FFF1C)  # t3 = 809FFF1C
    lw      t5, 0x0000(t3)             # 809FFF1C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t5, 0x0000(a0)             # FFFFFFD0
    lw      t4, 0x0004(t3)             # 809FFF20
    sw      t4, 0x0004(a0)             # FFFFFFD4
    lw      t5, 0x0008(t3)             # 809FFF24
    sw      t5, 0x0008(a0)             # FFFFFFD8
    lbu     v0, 0x0188(v1)             # 00000188
    lwc1    $f4, 0x0020($sp)
    bne     v0, $at, lbl_809FA13C
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f0                   # $f0 = -300.00
    lui     $at, 0xC42F                # $at = C42F0000
    lwc1    $f8, 0x0024($sp)
    mtc1    $at, $f18                  # $f18 = -700.00
    lwc1    $f16, 0x0028($sp)
    add.s   $f6, $f4, $f0
    add.s   $f10, $f8, $f0
    swc1    $f6, 0x0020($sp)
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x0024($sp)
    beq     $zero, $zero, lbl_809FA180
    swc1    $f4, 0x0028($sp)
lbl_809FA13C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809FA180
    lwc1    $f6, 0x0020($sp)
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f0                   # $f0 = -300.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    add.s   $f8, $f6, $f0
    lui     $at, 0xC42F                # $at = C42F0000
    lwc1    $f10, 0x0024($sp)
    mtc1    $at, $f6                   # $f6 = -700.00
    lwc1    $f4, 0x0028($sp)
    swc1    $f8, 0x0020($sp)
    add.s   $f18, $f10, $f16
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0024($sp)
    swc1    $f8, 0x0028($sp)
lbl_809FA180:
    jal     func_800AB958
    addiu   a1, v1, 0x0204             # a1 = 00000204
lbl_809FA188:
    lw      $ra, 0x0014($sp)
lbl_809FA18C:
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_809FA198:
    lui     $at, %hi(var_80A13F70)     # $at = 80A10000
    sw      a0, %lo(var_80A13F70)($at)
    lui     $at, %hi(var_80A13F74)     # $at = 80A10000
    sw      a1, %lo(var_80A13F74)($at)
    lui     $at, %hi(var_80A13F78)     # $at = 80A10000
    sw      a2, %lo(var_80A13F78)($at)
    jr      $ra
    nop


func_809FA1B8:
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_80A13F70)      # v0 = 80A10000
    lui     v1, %hi(var_80A13F74)      # v1 = 80A10000
    lui     a0, %hi(var_80A13F78)      # a0 = 80A10000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, a0, %lo(var_80A13F78)  # a0 = 80A13F78
    addiu   v1, v1, %lo(var_80A13F74)  # v1 = 80A13F74
    addiu   v0, v0, %lo(var_80A13F70)  # v0 = 80A13F70
    lw      t6, 0x0000(v0)             # 80A13F70
    addiu   $at, $zero, 0x763D         # $at = 0000763D
    lw      t9, 0x0000(v1)             # 80A13F74
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    div     $zero, t7, $at
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    subu    t0, t0, t9
    mfhi    t5
    sll     t0, t0,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    addiu   $at, $zero, 0x7663         # $at = 00007663
    div     $zero, t0, $at
    lw      t2, 0x0000(a0)             # 80A13F78
    mfhi    t6
    addiu   $at, $zero, 0x7673         # $at = 00007673
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  1
    div     $zero, t3, $at
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mfhi    t7
    cvt.s.w $f6, $f4
    sw      t5, 0x0000(v0)             # 80A13F70
    sw      t6, 0x0000(v1)             # 80A13F74
    sw      t7, 0x0000(a0)             # 80A13F78
    lui     $at, %hi(var_80A12EA0)     # $at = 80A10000
    cvt.s.w $f18, $f16
    lwc1    $f8, %lo(var_80A12EA0)($at)
    lui     $at, %hi(var_80A12EA4)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12EA4)($at)
    mtc1    t7, $f16                   # $f16 = 0.00
    div.s   $f10, $f6, $f8
    lui     $at, %hi(var_80A12EA8)     # $at = 80A10000
    div.s   $f6, $f18, $f4
    lwc1    $f4, %lo(var_80A12EA8)($at)
    cvt.s.w $f18, $f16
    add.s   $f8, $f10, $f6
    div.s   $f10, $f18, $f4
    add.s   $f2, $f8, $f10
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_809FA2D8
    abs.s   $f0, $f2
    sub.s   $f2, $f2, $f0
lbl_809FA2C4:
    c.le.s  $f0, $f2
    nop
    bc1tl   lbl_809FA2C4
    sub.s   $f2, $f2, $f0
    abs.s   $f0, $f2
lbl_809FA2D8:
    jr      $ra
    nop


func_809FA2E0:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s5, 0x0054($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a2, 0x0000(a1)             # 00000000
    or      s1, a2, $zero              # s1 = 00000000
    lh      t6, 0x02D8(s5)             # 000002D8
    or      a0, a2, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_809FA338
    nop
    lh      t7, 0x02D6(s5)             # 000002D6
    beql    t7, $zero, lbl_809FA648
    lw      $ra, 0x0064($sp)
lbl_809FA338:
    jal     func_8007E2C0
    sw      a1, 0x00BC($sp)
    lui     s6, 0xDE00                 # s6 = DE000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xFFFF                 # t3 = FFFF0000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, %hi(var_80A02F58)      # t5 = 80A00000
    addiu   t5, t5, %lo(var_80A02F58)  # t5 = 80A02F58
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lh      t6, 0x02D8(s5)             # 000002D8
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    lw      t4, 0x00BC($sp)
    beq     t6, $zero, lbl_809FA48C
    lui     $at, 0x0001                # $at = 00010000
    lw      v0, 0x00BC($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t7, v0, $at
    lw      s4, 0x1C44(v0)             # 00001C44
    lui     $at, %hi(var_80A12EAC)     # $at = 80A10000
    lui     s7, %hi(var_80A02FC8)      # s7 = 80A00000
    addiu   s7, s7, %lo(var_80A02FC8)  # s7 = 80A02FC8
    lwc1    $f20, %lo(var_80A12EAC)($at)
    sw      t7, 0x006C($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s8, $zero, 0x000C          # s8 = 0000000C
lbl_809FA3DC:
    multu   s2, s8
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t8
    addu    v0, s4, t8
    lwc1    $f12, 0x08F8(v0)           # 000008F8
    lwc1    $f14, 0x08FC(v0)           # 000008FC
    jal     func_800AA7F4
    lw      a2, 0x0900(v0)             # 00000900
    jal     func_800ABE54
    lw      a0, 0x006C($sp)
    sll     t9, s2,  2
    addu    t0, s5, t9
    lwc1    $f12, 0x048C(t0)           # 0000048C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_80026D90
    mov.s   $f12, $f20
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t2, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    sra     s2, s2, 16
    slti    $at, s2, 0x0012
    bne     $at, $zero, lbl_809FA3DC
    nop
    beq     $zero, $zero, lbl_809FA648
    lw      $ra, 0x0064($sp)
lbl_809FA48C:
    ori     $at, $at, 0x1DA0           # $at = 00001DA0
    addu    t5, t4, $at
    lui     $at, %hi(var_80A12EB0)     # $at = 80A10000
    lui     s7, 0xDB06                 # s7 = DB060000
    ori     s7, s7, 0x0020             # s7 = DB060020
    lwc1    $f20, %lo(var_80A12EB0)($at)
    sw      t5, 0x006C($sp)
    addiu   s8, $zero, 0x000C          # s8 = 0000000C
lbl_809FA4AC:
    multu   s2, s8
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t6
    addu    v0, s5, t6
    lwc1    $f12, 0x02DC(v0)           # 000002DC
    lwc1    $f14, 0x02E0(v0)           # 000002E0
    jal     func_800AA7F4
    lw      a2, 0x02E4(v0)             # 000002E4
    jal     func_800ABE54
    lw      a0, 0x006C($sp)
    sll     t7, s2,  2
    addu    t8, s5, t7
    lwc1    $f12, 0x048C(t8)           # 0000048C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lbu     t9, 0x02D4(s5)             # 000002D4
    bnel    t9, $zero, lbl_809FA514
    lw      s3, 0x02D0(s1)             # 000002D0
    jal     func_80026D90
    mov.s   $f12, $f20
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02D0(s1)             # 000002D0
lbl_809FA514:
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s3, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t1, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lbu     t2, 0x02D4(s5)             # 000002D4
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    beq     t2, $zero, lbl_809FA610
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s3, 0x02D0(s1)             # 000002D0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t3, s3, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0000(s3)             # 00000000
    lw      t4, 0x00BC($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    lw      a0, 0x0000(t4)             # 00000000
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lh      t8, 0x0192(s5)             # 00000192
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    lui     s4, %hi(var_80A108A8)      # s4 = 80A10000
    addu    t9, t8, s2
    subu    $at, $zero, t9
    sll     t0, $at,  4
    subu    t0, t0, $at
    sw      t0, 0x0020($sp)
    addiu   s4, s4, %lo(var_80A108A8)  # s4 = 80A108A8
    sw      t2, 0x0028($sp)
    jal     func_8007EB84
    sw      t1, 0x0024($sp)
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xC8FF                 # t5 = C8FF0000
    ori     t5, t5, 0xAAFF             # t5 = C8FFAAFF
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFFFF                 # t8 = FFFF0000
    ori     t8, t8, 0x0080             # t8 = FFFF0080
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_809FA630
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_809FA610:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, %hi(var_80A02FC8)      # t1 = 80A00000
    addiu   t1, t1, %lo(var_80A02FC8)  # t1 = 80A02FC8
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_809FA630:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bne     $at, $zero, lbl_809FA4AC
    nop
    lw      $ra, 0x0064($sp)
lbl_809FA648:
    ldc1    $f20, 0x0038($sp)
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
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_809FA678:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      a2, 0x0000(a1)             # 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    lwc1    $f6, 0x0244(s1)            # 00000244
    or      a0, a2, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809FA8B4
    lw      $ra, 0x001C($sp)
    jal     func_8007E2C0
    sw      a1, 0x004C($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lh      t9, 0x0192(s1)             # 00000192
    lui     t8, 0xDE00                 # t8 = DE000000
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_809FA714
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xFFFF                 # t3 = FFFF0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_809FA730
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809FA714:
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     t6, 0x64FF                 # t6 = 64FF0000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809FA730:
    lui     t9, %hi(var_80A02F58)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_80A02F58)  # t9 = 80A02F58
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0250(s1)           # 00000250
    lwc1    $f14, 0x0254(s1)           # 00000254
    jal     func_800AA7F4
    lw      a2, 0x0258(s1)             # 00000258
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, a0, $at
    lwc1    $f12, 0x0244(s1)           # 00000244
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0248(s1)           # 00000248
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     t0, 0xFA00                 # t0 = FA000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, %hi(var_80A02FC8)      # t4 = 80A00000
    addiu   t4, t4, %lo(var_80A02FC8)  # t4 = 80A02FC8
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lh      t5, 0x0192(s1)             # 00000192
    mtc1    $zero, $f14                # $f14 = 0.00
    addiu   $at, $zero, 0x9B00         # $at = FFFF9B00
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_809FA7FC
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_809FA800
    addiu   a1, $zero, 0x0064          # a1 = 00000064
lbl_809FA7FC:
    addiu   a1, $zero, 0x0050          # a1 = 00000050
lbl_809FA800:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    andi    t1, a1, 0x00FF             # t1 = 00000050
    or      t2, t1, $at                # t2 = FFFF9B50
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0250(s1)           # 00000250
    jal     func_800AA7F4
    lw      a2, 0x0258(s1)             # 00000258
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f10                  # $f10 = 0.75
    lwc1    $f8, 0x0244(s1)            # 00000244
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mul.s   $f12, $f8, $f10
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lw      t5, 0x004C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t5)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, %hi(var_80A11C08)      # t8 = 80A10000
    addiu   t8, t8, %lo(var_80A11C08)  # t8 = 80A11C08
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
lbl_809FA8B4:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_809FA8C4:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s4, 0x0078($sp)
    sw      s1, 0x006C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x008C($sp)
    sw      s8, 0x0088($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s5, 0x007C($sp)
    sw      s3, 0x0074($sp)
    sw      s2, 0x0070($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a2, 0x0000(s1)             # 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      s2, a2, $zero              # s2 = 00000000
    lwc1    $f6, 0x0274(s4)            # 00000274
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809FAF04
    lw      $ra, 0x008C($sp)
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0280(s4)            # 00000280
    lui     t2, 0xDB06                 # t2 = DB060000
    lui     t7, 0xFB00                 # t7 = FB000000
    trunc.w.s $f10, $f8
    ori     t2, t2, 0x0020             # t2 = DB060020
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t3, $f10
    nop
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFAA00
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xC8FF                 # t8 = C8FF0000
    ori     t8, t8, 0x0080             # t8 = C8FF0080
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s3, 0x02D0(s2)             # 000002D0
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0000(s3)             # 00000000
    lh      t0, 0x0192(s4)             # 00000192
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t6, t0,  2
    addu    t6, t6, t0
    sll     t6, t6,  1
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    subu    $at, $zero, t0
    sll     a2, $at,  1
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      t4, 0x0014($sp)
    jal     func_8007EB84
    sw      t3, 0x0010($sp)
    sw      v0, 0x0004(s3)             # 00000004
    lwc1    $f12, 0x0268(s4)           # 00000268
    lwc1    $f14, 0x026C(s4)           # 0000026C
    lw      a2, 0x0270(s4)             # 00000270
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s6, s1, $at
    jal     func_800ABE54
    or      a0, s6, $zero              # a0 = 00000000
    lwc1    $f12, 0x027C(s4)           # 0000027C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    lw      s3, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s3)             # 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, %hi(var_80A0DBA0)      # t3 = 80A10000
    addiu   t3, t3, %lo(var_80A0DBA0)  # t3 = 80A0DBA0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0268(s4)           # 00000268
    lwc1    $f14, 0x026C(s4)           # 0000026C
    lw      a2, 0x0270(s4)             # 00000270
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s6, $zero              # a0 = 00000000
    lwc1    $f12, 0x0274(s4)           # 00000274
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t4, s3, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lwc1    $f16, 0x0278(s4)           # 00000278
    ori     $at, $at, 0x6400           # $at = FF006400
    lui     t6, 0xDB06                 # t6 = DB060000
    trunc.w.s $f18, $f16
    ori     t6, t6, 0x0024             # t6 = DB060024
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    t2, $f18
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FF006400
    sw      t4, 0x0004(s0)             # 00000004
    lw      s5, 0x02D0(s2)             # 000002D0
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t5, s5, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s5)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lh      t2, 0x0192(s4)             # 00000192
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    subu    $at, $zero, t2
    sll     t3, $at,  2
    sw      t3, 0x0020($sp)
    sw      t4, 0x0024($sp)
    jal     func_8007EB84
    sw      t5, 0x0028($sp)
    sw      v0, 0x0004(s5)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, %hi(var_80A0DC90)      # t7 = 80A10000
    addiu   t7, t7, %lo(var_80A0DC90)  # t7 = 80A0DC90
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, 0x96AA                # $at = 96AA0000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x0278(s4)            # 00000278
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    trunc.w.s $f6, $f4
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t5, $f6
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = 96AA0000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s3, 0x02D0(s2)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s3)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lh      t0, 0x0192(s4)             # 00000192
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0028($sp)
    subu    $at, $zero, t0
    sll     t6, $at,  2
    addu    t6, t6, $at
    sll     t6, t6,  2
    sll     t5, t0,  1
    sw      t5, 0x001C($sp)
    sw      t6, 0x0020($sp)
    jal     func_8007EB84
    sw      t7, 0x0024($sp)
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, %hi(var_80A0DD38)      # t2 = 80A10000
    addiu   t2, t2, %lo(var_80A0DD38)  # t2 = 80A0DD38
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFFFF                 # t8 = FFFF0000
    ori     t8, t8, 0x6400             # t8 = FFFF6400
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, %hi(var_80A02F58)      # t2 = 80A00000
    addiu   t2, t2, %lo(var_80A02F58)  # t2 = 80A02F58
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0268(s4)           # 00000268
    lwc1    $f14, 0x026C(s4)           # 0000026C
    lw      a2, 0x0270(s4)             # 00000270
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s6, $zero              # a0 = 00000000
    lwc1    $f12, 0x02C0(s4)           # 000002C0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lh      t3, 0x0192(s4)             # 00000192
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f22                  # $f22 = 1000.00
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f16, $f10, $f20
    jal     func_800AAD4C
    div.s   $f12, $f16, $f22
    lw      s1, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, %hi(var_80A02FC8)      # t6 = 80A00000
    addiu   t6, t6, %lo(var_80A02FC8)  # t6 = 80A02FC8
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lh      a0, 0x019A(s4)             # 0000019A
    addiu   a1, $zero, 0x71AC          # a1 = 000071AC
    addiu   a2, $zero, 0x263A          # a2 = 0000263A
    jal     func_809FA198
    addiu   a0, a0, 0x0001             # a0 = 00000001
    lwc1    $f12, 0x0268(s4)           # 00000268
    lwc1    $f14, 0x026C(s4)           # 0000026C
    lw      a2, 0x0270(s4)             # 00000270
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t7, 0x0192(s4)             # 00000192
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f20
    jal     func_800AAB94
    div.s   $f12, $f6, $f22
    lui     $at, %hi(var_80A12EB4)     # $at = 80A10000
    lwc1    $f22, %lo(var_80A12EB4)($at)
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     t2, 0xC8FF                 # t2 = C8FF0000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lh      t3, 0x008A(s4)             # 0000008A
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f16                  # $f16 = 32768.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t4, 0x019C(s4)             # 0000019C
    lui     s5, %hi(var_80A0C148)      # s5 = 80A10000
    cvt.s.w $f10, $f8
    addiu   s5, s5, %lo(var_80A0C148)  # s5 = 80A0C148
    lui     $at, 0x3FC0                # $at = 3FC00000
    or      s3, $zero, $zero           # s3 = 00000000
    div.s   $f18, $f10, $f16
    mul.s   $f28, $f18, $f22
    blezl   t4, lbl_809FAF04
    lw      $ra, 0x008C($sp)
    mtc1    $at, $f30                  # $f30 = 1.50
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f26                  # $f26 = 4.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    addiu   s6, $zero, 0xFF00          # s6 = FFFFFF00
lbl_809FADF4:
    jal     func_809FA1B8
    nop
    sub.s   $f4, $f0, $f24
    lui     t6, 0xFA00                 # t6 = FA000000
    mul.s   $f6, $f4, $f22
    nop
    mul.s   $f20, $f6, $f30
    nop
    lw      s0, 0x02D0(s2)             # 000002D0
    sll     t7, s3,  2
    addu    t8, s4, t7
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0284(t8)            # 00000284
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, s6                 # t6 = FFFFFF00
    sw      t6, 0x0004(s0)             # 00000004
    jal     func_800AA6EC
    nop
    add.s   $f12, $f20, $f28
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_809FA1B8
    nop
    sub.s   $f16, $f0, $f24
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f22
    jal     func_800AA9E0
    nop
    mov.s   $f12, $f20
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0x4248                 # a2 = 42480000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    mov.s   $f14, $f12
    mov.s   $f12, $f26
    mov.s   $f14, $f26
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    jal     func_800AA724
    nop
    lh      t9, 0x019C(s4)             # 0000019C
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slt     $at, s3, t9
    bne     $at, $zero, lbl_809FADF4
    nop
    lw      $ra, 0x008C($sp)
lbl_809FAF04:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    ldc1    $f28, 0x0058($sp)
    ldc1    $f30, 0x0060($sp)
    lw      s0, 0x0068($sp)
    lw      s1, 0x006C($sp)
    lw      s2, 0x0070($sp)
    lw      s3, 0x0074($sp)
    lw      s4, 0x0078($sp)
    lw      s5, 0x007C($sp)
    lw      s6, 0x0080($sp)
    lw      s7, 0x0084($sp)
    lw      s8, 0x0088($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809FAF48:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0024($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x01C8(s0)            # 000001C8
    lw      t6, 0x0024($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809FB2F8
    lw      $ra, 0x001C($sp)
    jal     func_800AA6EC
    lw      s1, 0x0000(t6)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(a0)             # 00000000
    lwc1    $f8, 0x01C8(s0)            # 000001C8
    lwc1    $f16, 0x01C4(s0)           # 000001C4
    lui     $at, 0xFFFF                # $at = FFFF0000
    trunc.w.s $f10, $f8
    cfc1    t7, $f31
    ctc1    t8, $f31
    mfc1    t4, $f10
    cvt.w.s $f18, $f16
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = FFFF0000
    lui     t4, 0xFB00                 # t4 = FB000000
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_809FB03C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809FB034
    nop
    mfc1    t8, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809FB04C
    or      t8, t8, $at                # t8 = 80000000
lbl_809FB034:
    beq     $zero, $zero, lbl_809FB04C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_809FB03C:
    mfc1    t8, $f18
    nop
    bltz    t8, lbl_809FB034
    nop
lbl_809FB04C:
    andi    t0, t8, 0x00FF             # t0 = 000000FF
    sll     t1, t0,  8
    ctc1    t7, $f31
    or      t2, t6, t1                 # t2 = FFFF0000
    sw      t2, 0x0004(a0)             # 00000004
    lw      a1, 0x02D0(s1)             # 000002D0
    cfc1    t5, $f31
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t3, a1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(a1)             # 00000000
    ctc1    t7, $f31
    lwc1    $f4, 0x01CC(s0)            # 000001CC
    cvt.w.s $f6, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_809FB0DC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t7, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_809FB0D4
    nop
    mfc1    t7, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809FB0EC
    or      t7, t7, $at                # t7 = 80000000
lbl_809FB0D4:
    beq     $zero, $zero, lbl_809FB0EC
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_809FB0DC:
    mfc1    t7, $f6
    nop
    bltz    t7, lbl_809FB0D4
    nop
lbl_809FB0EC:
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    sll     t0, t9, 16
    lui     $at, 0xFF00                # $at = FF000000
    or      t6, t0, $at                # t6 = FF0000FF
    ctc1    t5, $f31
    ori     t1, t6, 0x0080             # t1 = FF0000FF
    sw      t1, 0x0004(a1)             # 00000004
    lh      a2, 0x019E(s0)             # 0000019E
    lw      t2, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a2, $zero, lbl_809FB17C
    nop
    lw      v0, 0x1C44(t2)             # FFFF1C44
    lui     $at, %hi(var_80A12EB8)     # $at = 80A10000
    lw      t4, 0x0988(v0)             # 00000988
    sw      t4, 0x02C8(s0)             # 000002C8
    lw      t3, 0x098C(v0)             # 0000098C
    lwc1    $f8, 0x02C8(s0)            # 000002C8
    sw      t3, 0x02CC(s0)             # 000002CC
    lw      t4, 0x0990(v0)             # 00000990
    lwc1    $f18, 0x02CC(s0)           # 000002CC
    sw      t4, 0x02D0(s0)             # 000002D0
    lwc1    $f10, %lo(var_80A12EB8)($at)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    add.s   $f16, $f8, $f10
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f10                  # $f10 = -2.00
    lwc1    $f8, 0x02D0(s0)            # 000002D0
    swc1    $f16, 0x02C8(s0)           # 000002C8
    add.s   $f6, $f18, $f4
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x02CC(s0)            # 000002CC
    swc1    $f16, 0x02D0(s0)           # 000002D0
    beq     $zero, $zero, lbl_809FB1CC
    lwc1    $f12, 0x02C8(s0)           # 000002C8
lbl_809FB17C:
    bne     a2, $at, lbl_809FB1C8
    lui     t5, %hi(var_80A13F84)      # t5 = 80A10000
    lw      t5, %lo(var_80A13F84)(t5)
    lui     $at, %hi(var_80A12EBC)     # $at = 80A10000
    lw      t8, 0x030C(t5)             # 80A1030C
    sw      t8, 0x02C8(s0)             # 000002C8
    lw      t7, 0x0310(t5)             # 80A10310
    sw      t7, 0x02CC(s0)             # 000002CC
    lw      t8, 0x0314(t5)             # 80A10314
    lwc1    $f18, 0x02CC(s0)           # 000002CC
    sw      t8, 0x02D0(s0)             # 000002D0
    lwc1    $f4, %lo(var_80A12EBC)($at)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lwc1    $f8, 0x02D0(s0)            # 000002D0
    add.s   $f6, $f18, $f4
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x02CC(s0)            # 000002CC
    swc1    $f16, 0x02D0(s0)           # 000002D0
lbl_809FB1C8:
    lwc1    $f12, 0x02C8(s0)           # 000002C8
lbl_809FB1CC:
    lwc1    $f14, 0x02CC(s0)           # 000002CC
    jal     func_800AA7F4
    lw      a2, 0x02D0(s0)             # 000002D0
    lh      a2, 0x019E(s0)             # 0000019E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a2, $zero, lbl_809FB210
    nop
    lui     $at, %hi(var_80A12EC0)     # $at = 80A10000
    jal     func_800AA9E0
    lwc1    $f12, %lo(var_80A12EC0)($at)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_809FB264
    lwc1    $f12, 0x01D0(s0)           # 000001D0
lbl_809FB210:
    bne     a2, $at, lbl_809FB250
    lw      a0, 0x0024($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f12                  # $f12 = 1.50
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A12EC4)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12EC4)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A12EC8)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12EC8)($at)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_809FB264
    lwc1    $f12, 0x01D0(s0)           # 000001D0
lbl_809FB250:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, a0, $at
    lwc1    $f12, 0x01D0(s0)           # 000001D0
lbl_809FB264:
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lw      t6, 0x0024($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t6)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     a1, %hi(var_80A01168)      # a1 = 80A00000
    addiu   a1, a1, %lo(var_80A01168)  # a1 = 80A01168
    sll     t3, a1,  4
    srl     t4, t3, 28
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sll     t5, t4,  2
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(v1)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    sw      t0, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x001C($sp)
lbl_809FB2F8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809FB308:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x0064($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x01D4(s1)            # 000001D4
    lw      t6, 0x0064($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809FB544
    lw      $ra, 0x003C($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t6)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t2, 0xDB06                 # t2 = DB060000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0064($sp)
    lh      t0, 0x0192(s1)             # 00000192
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    lw      a0, 0x0000(t3)             # 00000000
    subu    $at, $zero, t0
    sll     a2, $at,  3
    sll     t7, $at,  2
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t7, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      t9, 0x0028($sp)
    sw      t4, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t1, 0x004C($sp)
    lui     t4, 0x8200                 # t4 = 82000000
    lui     a2, 0xC316                 # a2 = C3160000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     $at, 0x6400                # $at = 64000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x01D4(s1)            # 000001D4
    ori     $at, $at, 0xC800           # $at = 6400C800
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 6400C800
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    ori     t4, t4, 0x0080             # t4 = 82000080
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lh      t5, 0x0668(s1)             # 00000668
    addiu   $at, $zero, 0x0015         # $at = 00000015
    or      a3, $zero, $zero           # a3 = 00000000
    beq     t5, $at, lbl_809FB46C
    lui     $at, 0x42D2                # $at = 42D20000
    mtc1    $at, $f14                  # $f14 = 105.00
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AA7F4
    lui     a2, 0xC3C8                 # a2 = C3C80000
    lui     $at, %hi(var_80A12ECC)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12ECC)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_809FB4A8
    lwc1    $f12, 0x01D8(s1)           # 000001D8
lbl_809FB46C:
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f12                  # $f12 = -50.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f14                  # $f14 = 50.00
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80A12ED0)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12ED0)($at)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80A12ED4)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12ED4)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x01D8(s1)           # 000001D8
lbl_809FB4A8:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0064($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a2, 0x0040($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     a1, %hi(var_80A12AB0)      # a1 = 80A10000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, %lo(var_80A12AB0)  # a1 = 80A12AB0
    sll     t3, a1,  4
    srl     t4, t3, 28
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sll     t5, t4,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(v1)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
lbl_809FB544:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809FB554:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sdc1    $f20, 0x0010($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    lui     $at, %hi(var_80A12ED8)     # $at = 80A10000
    lwc1    $f28, %lo(var_80A12ED8)($at)
    lui     $at, 0x4298                # $at = 42980000
    mtc1    $at, $f26                  # $f26 = 76.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f22                  # $f22 = 30.00
    mtc1    $zero, $f24                # $f24 = 0.00
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    lh      t2, 0x007E($sp)
    c.eq.s  $f20, $f24
lbl_809FB5B8:
    sll     t6, s2,  1
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD8
    bc1tl   lbl_809FB5E0
    c.lt.s  $f24, $f20
    lui     t2, %hi(var_809FFFA8)      # t2 = 80A00000
    addu    t2, t2, t6
    lh      t2, %lo(var_809FFFA8)(t2)
    bltzl   t2, lbl_809FB9B4
    addiu   s2, s2, 0x0001             # s2 = 00000001
    c.lt.s  $f24, $f20
lbl_809FB5E0:
    nop
    bc1f    lbl_809FB674
    nop
    multu   t2, s3
    mflo    t7
    addu    v0, s1, t7
    lwc1    $f4, 0x02DC(v0)            # 000002DC
    multu   s2, s3
    lwc1    $f10, 0x02E0(v0)           # 000002E0
    mflo    t8
    addu    v1, s1, t8
    lwc1    $f0, 0x02DC(v1)            # 000002DC
    lwc1    $f2, 0x02E0(v1)            # 000002E0
    lwc1    $f12, 0x02E4(v1)           # 000002E4
    sub.s   $f6, $f4, $f0
    sub.s   $f4, $f10, $f2
    mul.s   $f8, $f6, $f20
    add.s   $f14, $f8, $f0
    mul.s   $f6, $f4, $f20
    lwc1    $f8, 0x02E4(v0)            # 000002E4
    sub.s   $f10, $f8, $f12
    add.s   $f16, $f6, $f2
    lwc1    $f6, 0x0024(s1)            # 00000024
    mul.s   $f4, $f10, $f20
    sub.s   $f8, $f14, $f6
    swc1    $f8, 0x0068($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    add.s   $f18, $f4, $f12
    sub.s   $f4, $f16, $f10
    add.s   $f6, $f4, $f26
    add.s   $f8, $f6, $f22
    add.s   $f10, $f8, $f22
    swc1    $f10, 0x006C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sub.s   $f6, $f18, $f4
    beq     $zero, $zero, lbl_809FB6BC
    swc1    $f6, 0x0070($sp)
lbl_809FB674:
    multu   s2, s3
    lwc1    $f10, 0x0024(s1)           # 00000024
    mflo    t9
    addu    v1, s1, t9
    lwc1    $f8, 0x02DC(v1)            # 000002DC
    sub.s   $f4, $f8, $f10
    swc1    $f4, 0x0068($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f6, 0x02E0(v1)            # 000002E0
    sub.s   $f10, $f6, $f8
    add.s   $f4, $f10, $f26
    add.s   $f6, $f4, $f22
    add.s   $f8, $f6, $f22
    swc1    $f8, 0x006C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    lwc1    $f10, 0x02E4(v1)           # 000002E4
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x0070($sp)
lbl_809FB6BC:
    jal     func_800AB958
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFCC
    lwc1    $f0, 0x005C($sp)
    lwc1    $f2, 0x0060($sp)
    lui     $at, 0x4200                # $at = 42000000
    mul.s   $f0, $f0, $f28
    mtc1    $at, $f8                   # $f8 = 32.00
    lui     v0, %hi(var_809FFFC8)      # v0 = 80A00000
    mul.s   $f2, $f2, $f28
    addu    v0, v0, s2
    lbu     v0, %lo(var_809FFFC8)(v0)
    lui     t3, %hi(var_809FFF90)      # t3 = 80A00000
    lui     t4, %hi(var_809FFF80)      # t4 = 80A00000
    add.s   $f10, $f0, $f8
    lui     t5, %hi(var_809FFF70)      # t5 = 80A00000
    lui     $ra, %hi(var_809FFF64)     # $ra = 80A00000
    trunc.w.s $f6, $f2
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   $ra, $ra, %lo(var_809FFF64) # $ra = 809FFF64
    trunc.w.s $f4, $f10
    mfc1    t0, $f6
    addiu   t5, t5, %lo(var_809FFF70)  # t5 = 809FFF70
    addiu   t4, t4, %lo(var_809FFF80)  # t4 = 809FFF80
    mfc1    a3, $f4
    sll     t0, t0, 16
    sra     t0, t0, 16
    sll     t0, t0,  6
    sll     t0, t0, 16
    sll     a3, a3, 16
    addiu   t3, t3, %lo(var_809FFF90)  # t3 = 809FFF90
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    sra     a3, a3, 16
    sra     t0, t0, 16
    swc1    $f2, 0x0060($sp)
    bne     v0, $at, lbl_809FB7E0
    swc1    $f0, 0x005C($sp)
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFE80          # a1 = FFFFFE80
lbl_809FB754:
    sll     t8, t2,  1
    addu    a2, t3, t8
    lh      a0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_809FB7C4
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_809FB784:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FB7B0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FB7B0
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
lbl_809FB7B0:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_809FB784
    addu    t9, a3, v1
lbl_809FB7C4:
    addiu   a1, a1, 0x0040             # a1 = FFFFFEC0
    sll     a1, a1, 16
    slti    $at, t2, 0x000C
    bne     $at, $zero, lbl_809FB754
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_809FB9B4
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_809FB7E0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809FB87C
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFF00          # a1 = FFFFFF00
lbl_809FB7F0:
    sll     t8, t2,  1
    addu    a2, t4, t8
    lh      a0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_809FB860
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_809FB820:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FB84C
    addiu   v1, v1, 0x0001             # v1 = 00000002
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FB84C
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
lbl_809FB84C:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_809FB820
    addu    t9, a3, v1
lbl_809FB860:
    addiu   a1, a1, 0x0040             # a1 = FFFFFF40
    sll     a1, a1, 16
    slti    $at, t2, 0x0008
    bne     $at, $zero, lbl_809FB7F0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_809FB9B4
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_809FB87C:
    bne     v0, $zero, lbl_809FB920
    or      t2, $zero, $zero           # t2 = 00000000
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFF40          # a1 = FFFFFF40
lbl_809FB88C:
    sll     t8, t2,  1
    addu    a2, t5, t8
    lh      v0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   a0, v0, 0xFFFF             # a0 = 809FFFFF
    slt     $at, v1, a0
    beq     $at, $zero, lbl_809FB904
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_809FB8C0:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FB8F0
    addiu   v1, v1, 0x0001             # v1 = 00000003
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FB8F0
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
    addiu   a0, a0, 0xFFFF             # a0 = 809FFFFE
lbl_809FB8F0:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_809FB8C0
    addu    t9, a3, v1
lbl_809FB904:
    addiu   a1, a1, 0x0040             # a1 = FFFFFF80
    sll     a1, a1, 16
    slti    $at, t2, 0x0007
    bne     $at, $zero, lbl_809FB88C
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_809FB9B4
    addiu   s2, s2, 0x0001             # s2 = 00000004
lbl_809FB920:
    addiu   a1, $zero, 0xFF80          # a1 = FFFFFF80
lbl_809FB924:
    sll     t8, t2,  1
    addu    a2, $ra, t8
    lh      v0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000002
    sll     t2, t2, 16
    subu    v1, $zero, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   a0, v0, 0xFFFF             # a0 = 809FFFFF
    slt     $at, v1, a0
    beq     $at, $zero, lbl_809FB99C
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_809FB958:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FB988
    addiu   v1, v1, 0x0001             # v1 = 00000004
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FB988
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
    addiu   a0, a0, 0xFFFF             # a0 = 809FFFFE
lbl_809FB988:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_809FB958
    addu    t9, a3, v1
lbl_809FB99C:
    addiu   a1, a1, 0x0040             # a1 = FFFFFFC0
    sll     a1, a1, 16
    slti    $at, t2, 0x0006
    bne     $at, $zero, lbl_809FB924
    sra     a1, a1, 16
    addiu   s2, s2, 0x0001             # s2 = 00000005
lbl_809FB9B4:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bnel    $at, $zero, lbl_809FB5B8
    c.eq.s  $f20, $f24
    sh      t2, 0x007E($sp)
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809FB9FC:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x0050($sp)
    sw      s1, 0x0044($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a2, 0x00A0($sp)
    or      v0, s1, $zero              # v0 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
lbl_809FBA50:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0400
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     $at, $zero, lbl_809FBA50
    sw      $zero, -0x0004(v0)         # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_800AA9E0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f20                  # $f20 = 5.00
    or      s3, $zero, $zero           # s3 = 00000000
    mtc1    s3, $f4                    # $f4 = 0.00
lbl_809FBA8C:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f20
    mfc1    a2, $f8
    jal     func_809FB554
    nop
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0006
    bnel    $at, $zero, lbl_809FBA8C
    mtc1    s3, $f4                    # $f4 = 0.00
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f28                  # $f28 = 32.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f26                  # $f26 = 30.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f24                  # $f24 = 100.00
    lui     $at, 0x4298                # $at = 42980000
    mtc1    $at, $f22                  # $f22 = 76.00
    lui     $at, %hi(var_80A12EDC)     # $at = 80A10000
    lui     s5, %hi(var_80A13F7C)      # s5 = 80A10000
    addiu   s5, s5, %lo(var_80A13F7C)  # s5 = 80A13F7C
    lwc1    $f20, %lo(var_80A12EDC)($at)
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $sp, 0x0070            # s8 = FFFFFFD8
    addiu   s7, $sp, 0x007C            # s7 = FFFFFFE4
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    addiu   s0, $zero, 0x00FF          # s0 = 000000FF
    or      s2, $zero, $zero           # s2 = 00000000
lbl_809FBB08:
    multu   s2, s6
    sll     t7, s3,  3
    subu    t7, t7, s3
    lw      t6, 0x0000(s5)             # 80A13F7C
    sll     t7, t7,  3
    addu    t7, t7, s3
    sll     t7, t7,  3
    addu    t8, t6, t7
    lwc1    $f16, 0x0024(s4)           # 00000024
    or      a0, s7, $zero              # a0 = FFFFFFE4
    mflo    t9
    addu    v0, t8, t9
    lwc1    $f10, 0x0148(v0)           # 00000148
    or      a1, s8, $zero              # a1 = FFFFFFD8
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x007C($sp)
    lwc1    $f6, 0x0028(s4)            # 00000028
    lwc1    $f4, 0x014C(v0)            # 0000014C
    sub.s   $f8, $f4, $f6
    add.s   $f10, $f8, $f22
    add.s   $f16, $f10, $f24
    add.s   $f18, $f16, $f26
    swc1    $f18, 0x0080($sp)
    lwc1    $f6, 0x002C(s4)            # 0000002C
    lwc1    $f4, 0x0150(v0)            # 00000150
    sub.s   $f8, $f4, $f6
    jal     func_800AB958
    swc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x0070($sp)
    lwc1    $f18, 0x0074($sp)
    sll     t3, s3,  3
    mul.s   $f16, $f10, $f20
    subu    t3, t3, s3
    lw      t2, 0x0000(s5)             # 80A13F7C
    mul.s   $f4, $f18, $f20
    sll     t3, t3,  3
    addu    t3, t3, s3
    sll     t3, t3,  3
    addu    t4, t2, t3
    add.s   $f6, $f16, $f28
    swc1    $f16, 0x0070($sp)
    swc1    $f4, 0x0074($sp)
    trunc.w.s $f10, $f4
    addu    t5, t4, s2
    lbu     t6, 0x02F8(t5)             # 000002F8
    trunc.w.s $f8, $f6
    mfc1    a2, $f10
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    mfc1    a1, $f8
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a2, a2,  6
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    bne     t6, $zero, lbl_809FBC64
    sra     a2, a2, 16
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    addiu   a0, $zero, 0xFFC0          # a0 = FFFFFFC0
lbl_809FBBF8:
    addiu   v1, $zero, 0xFFFD          # v1 = FFFFFFFD
    addu    t7, a1, v1
lbl_809FBC00:
    addu    t8, t7, a2
    addu    v0, t8, a0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FBC28
    addiu   v1, v1, 0x0001             # v1 = FFFFFFFE
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FBC28
    addu    t9, s1, v0
    sb      s0, 0x0000(t9)             # 00000000
lbl_809FBC28:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_809FBC00
    addu    t7, a1, v1
    addiu   a3, a3, 0x0001             # a3 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    addiu   a0, a0, 0x0040             # a0 = 00000000
    sll     a0, a0, 16
    slti    $at, a3, 0x0002
    bne     $at, $zero, lbl_809FBBF8
    sra     a0, a0, 16
    beq     $zero, $zero, lbl_809FBCD4
    sra     s2, s2, 16
lbl_809FBC64:
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    addiu   a0, $zero, 0xFFC0          # a0 = FFFFFFC0
lbl_809FBC6C:
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    addu    t0, a1, v1
lbl_809FBC74:
    addu    t1, t0, a2
    addu    v0, t1, a0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FBC9C
    addiu   v1, v1, 0x0001             # v1 = 00000000
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809FBC9C
    addu    t2, s1, v0
    sb      s0, 0x0000(t2)             # 00000000
lbl_809FBC9C:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0002
    bnel    $at, $zero, lbl_809FBC74
    addu    t0, a1, v1
    addiu   a3, a3, 0x0001             # a3 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    addiu   a0, a0, 0x0040             # a0 = 00000000
    sll     a0, a0, 16
    slti    $at, a3, 0x0002
    bne     $at, $zero, lbl_809FBC6C
    sra     a0, a0, 16
    sra     s2, s2, 16
lbl_809FBCD4:
    slti    $at, s2, 0x000C
    bne     $at, $zero, lbl_809FBB08
    nop
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x000C
    bnel    $at, $zero, lbl_809FBB08
    or      s2, $zero, $zero           # s2 = 00000000
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
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809FBD3C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    or      s0, a0, $zero              # s0 = 00000000
    jal     func_8007E298
    sw      a1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lh      t4, 0x0668(a1)             # 00000668
    slti    $at, t4, 0x0064
    beq     $at, $zero, lbl_809FBE04
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(a1)            # 00000028
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x428C                # $at = 428C0000
    sub.s   $f8, $f4, $f6
    mtc1    $at, $f10                  # $f10 = 70.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f18                  # $f18 = -5.00
    add.s   $f16, $f8, $f10
    lwc1    $f8, 0x002C(a1)            # 0000002C
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f12, 0x0024(a1)           # 00000024
    mul.s   $f4, $f16, $f18
    or      a3, $zero, $zero           # a3 = 00000000
    div.s   $f6, $f4, $f2
    add.s   $f0, $f6, $f2
    add.s   $f10, $f8, $f0
    mfc1    a2, $f10
    jal     func_800AA7F4
    nop
    beq     $zero, $zero, lbl_809FBE30
    nop
lbl_809FBE04:
    lui     $at, %hi(var_80A12EE0)     # $at = 80A10000
    lwc1    $f14, %lo(var_80A12EE0)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f16, 0x002C(a1)           # 0000002C
    lwc1    $f12, 0x0024(a1)           # 00000024
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f4, $f16, $f18
    mfc1    a2, $f4
    jal     func_800AA7F4
    nop
lbl_809FBE30:
    lui     $at, %hi(var_80A12EE4)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12EE4)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0048($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a3, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t6, 0xF590                 # t6 = F5900000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, %hi(var_80A000D8)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_80A000D8)  # t9 = 80A000D8
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xFD90                 # t3 = FD900000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0040($sp)
    lui     t3, 0xF300                 # t3 = F3000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0709                 # t7 = 07090000
    ori     t7, t7, 0x8260             # t7 = 07098260
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xE600                 # t9 = E6000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x077F                 # t4 = 077F0000
    ori     t4, t4, 0xF100             # t4 = 077FF100
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t8, 0xF588                 # t8 = F5880000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0x0009                 # t9 = 00090000
    ori     t9, t9, 0x8260             # t9 = 00098260
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    ori     t8, t8, 0x1000             # t8 = F5881000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x000F                 # t4 = 000F0000
    ori     t4, t4, 0xC0FC             # t4 = 000FC0FC
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    lui     t3, 0xF200                 # t3 = F2000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, %hi(var_80A000F8)      # t6 = 80A00000
    addiu   t6, t6, %lo(var_80A000F8)  # t6 = 80A000F8
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_809FBF9C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    lw      a0, 0x0000(s1)             # 00000000
    lw      v0, 0x02C4(a0)             # 000002C4
    addiu   v0, v0, 0xF000             # v0 = FFFFF000
    sw      v0, 0x02C4(a0)             # 000002C4
    lw      a0, 0x0000(s1)             # 00000000
    sw      v0, 0x003C($sp)
    jal     func_8007E298
    or      s2, a0, $zero              # s2 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lh      t6, 0x0196(s0)             # 00000196
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809FC020
    lw      v1, 0x02D0(s2)             # 000002D0
    lw      a0, 0x02C0(s2)             # 000002C0
    addiu   t8, $zero, 0x0384          # t8 = 00000384
    addiu   t9, $zero, 0x044B          # t9 = 0000044B
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_8007DC40
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x02C0(s2)             # 000002C0
    lw      v1, 0x02D0(s2)             # 000002D0
lbl_809FC020:
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x9A20             # t0 = 06009A20
    sll     t3, t0,  4
    srl     t4, t3, 28
    lui     t2, 0xDB06                 # t2 = DB060000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    ori     t2, t2, 0x0020             # t2 = DB060020
    sll     t5, t4,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(v1)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0144(s0)             # 00000144
    lw      a2, 0x0160(s0)             # 00000160
    lbu     a3, 0x0142(s0)             # 00000142
    lui     t1, %hi(func_809F9C00)     # t1 = 80A00000
    lui     t2, %hi(func_809F9E40)     # t2 = 80A00000
    addiu   t2, t2, %lo(func_809F9E40) # t2 = 809F9E40
    addiu   t1, t1, %lo(func_809F9C00) # t1 = 809F9C00
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x02EC(s0)            # 000002EC
    lwc1    $f4, 0x02E8(s0)            # 000002E8
    lwc1    $f16, 0x02F0(s0)           # 000002F0
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x02DC(s0)            # 000002DC
    swc1    $f16, 0x02E4(s0)           # 000002E4
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f10, 0x02E0(s0)           # 000002E0
    jal     func_8009A574
    lw      a1, 0x02C0(s2)             # 000002C0
    sw      v0, 0x02C0(s2)             # 000002C0
    jal     func_809FEF40
    or      a0, s1, $zero              # a0 = 00000000
    lui     v0, %hi(var_80A13F7C)      # v0 = 80A10000
    addiu   v0, v0, %lo(var_80A13F7C)  # v0 = 80A13F7C
    lw      t3, 0x0000(v0)             # 80A13F7C
    lw      t5, 0x0024(s0)             # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t5, 0x0024(t3)             # 00000024
    lw      t4, 0x0028(s0)             # 00000028
    sw      t4, 0x0028(t3)             # 00000028
    lw      t5, 0x002C(s0)             # 0000002C
    sw      t5, 0x002C(t3)             # 0000002C
    lw      t6, 0x0000(v0)             # 80A13F7C
    lw      t8, 0x0204(s0)             # 00000204
    sw      t8, 0x16C4(t6)             # 000016C4
    lw      t7, 0x0208(s0)             # 00000208
    sw      t7, 0x16C8(t6)             # 000016C8
    lw      t8, 0x020C(s0)             # 0000020C
    sw      t8, 0x16CC(t6)             # 000016CC
    lw      t9, 0x0000(v0)             # 80A13F7C
    lw      t2, 0x0210(s0)             # 00000210
    sw      t2, 0x16D0(t9)             # 000016D0
    lw      t1, 0x0214(s0)             # 00000214
    sw      t1, 0x16D4(t9)             # 000016D4
    lw      t2, 0x0218(s0)             # 00000218
    sw      t2, 0x16D8(t9)             # 000016D8
    lw      t3, 0x0000(v0)             # 80A13F7C
    lw      t5, 0x021C(s0)             # 0000021C
    sw      t5, 0x16DC(t3)             # 000016DC
    lw      t4, 0x0220(s0)             # 00000220
    sw      t4, 0x16E0(t3)             # 000016E0
    lw      t5, 0x0224(s0)             # 00000224
    sw      t5, 0x16E4(t3)             # 000016E4
    lw      t8, 0x0228(s0)             # 00000228
    lw      t6, 0x0000(v0)             # 80A13F7C
    sw      t8, 0x16E8(t6)             # 000016E8
    lw      t7, 0x022C(s0)             # 0000022C
    sw      t7, 0x16EC(t6)             # 000016EC
    lw      t8, 0x0230(s0)             # 00000230
    jal     func_809FA2E0
    sw      t8, 0x16F0(t6)             # 000016F0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809FA678
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809FA8C4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809FAF48
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809FB308
    or      a1, s1, $zero              # a1 = 00000000
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_809FB9FC
    or      a2, s1, $zero              # a2 = 00000000
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_809FBD3C
    or      a2, s1, $zero              # a2 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809FC1E4:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sdc1    $f20, 0x0008($sp)
    lw      v1, 0x1C64(a1)             # 00001C64
    lui     $at, 0xC1A0                # $at = C1A00000
    beql    v1, $zero, lbl_809FC2C0
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f20                  # $f20 = -20.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    addiu   v0, $zero, 0x0106          # v0 = 00000106
lbl_809FC214:
    beq     v1, a0, lbl_809FC228
    nop
    lh      t6, 0x0000(v1)             # 00000000
    beql    v0, t6, lbl_809FC234
    lwc1    $f4, 0x0024(v1)            # 00000024
lbl_809FC228:
    beq     $zero, $zero, lbl_809FC2B4
    lw      v1, 0x0124(v1)             # 00000124
    lwc1    $f4, 0x0024(v1)            # 00000024
lbl_809FC234:
    lwc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0028(v1)            # 00000028
    lwc1    $f10, 0x0004(a2)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f6, 0x0008(a2)            # 00000008
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sub.s   $f12, $f8, $f10
    abs.s   $f0, $f2
    sub.s   $f14, $f4, $f6
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_809FC2B4
    lw      v1, 0x0124(v1)             # 00000124
    c.lt.s  $f12, $f18
    nop
    bc1fl   lbl_809FC2B4
    lw      v1, 0x0124(v1)             # 00000124
    c.lt.s  $f20, $f12
    nop
    bc1fl   lbl_809FC2B4
    lw      v1, 0x0124(v1)             # 00000124
    abs.s   $f0, $f14
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f0, $f16
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    bc1fl   lbl_809FC2B4
    lw      v1, 0x0124(v1)             # 00000124
    sb      t7, 0x015A(v1)             # 0000015A
    sb      t8, 0x015C(v1)             # 0000015C
    beq     $zero, $zero, lbl_809FC2C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      v1, 0x0124(v1)             # 00000124
lbl_809FC2B4:
    bne     v1, $zero, lbl_809FC214
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809FC2C0:
    ldc1    $f20, 0x0008($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_809FC2CC:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00C4($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t6, 0x00C4($sp)
    sh      $zero, 0x00BA($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a1, $zero, 0x30A0          # a1 = 000030A0
    sw      t7, 0x006C($sp)
    lh      t8, 0x0192(s1)             # 00000192
    lw      v1, 0x0118(s1)             # 00000118
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0192(s1)             # 00000192
    sb      a3, 0x0190(v1)             # 00000190
    lh      v0, 0x0198(s1)             # 00000198
    beq     v0, $zero, lbl_809FC400
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809FC354
    addiu   a0, s1, 0x01BC             # a0 = 000001BC
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x4120                 # a2 = 41200000
    addiu   a0, s1, 0x0050             # a0 = 00000050
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     $zero, $zero, lbl_809FC3D0
    or      a0, s1, $zero              # a0 = 00000000
lbl_809FC354:
    lh      t1, 0x00B6(s1)             # 000000B6
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0xBCE0             # t3 = 8011BCE0
    addiu   t2, t1, 0x1000             # t2 = 00001000
    sh      t2, 0x00B6(s1)             # 000000B6
    sh      a3, 0x065E(v1)             # 0000065E
    lw      t5, 0x0024(s1)             # 00000024
    addiu   a0, s1, 0x01BC             # a0 = 000001BC
    lui     a1, 0x3F80                 # a1 = 3F800000
    sw      t5, 0x0000(t3)             # 8011BCE0
    lw      t4, 0x0028(s1)             # 00000028
    lui     a2, 0x41F0                 # a2 = 41F00000
    sw      t4, 0x0004(t3)             # 8011BCE4
    lw      t5, 0x002C(s1)             # 0000002C
    jal     func_800642F0
    sw      t5, 0x0008(t3)             # 8011BCE8
    addiu   a0, s1, 0x0050             # a0 = 00000050
    lui     a1, 0x41A0                 # a1 = 41A00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     $at, %hi(var_80A12EE8)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12EE8)($at)
    lui     $at, %hi(var_80A12EEC)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12EEC)($at)
    lwc1    $f4, 0x01B8(s1)            # 000001B8
    add.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x01B8(s1)           # 000001B8
    or      a0, s1, $zero              # a0 = 00000000
lbl_809FC3D0:
    jal     func_80020F88
    lw      a1, 0x0050(s1)             # 00000050
    mtc1    $zero, $f20                # $f20 = 0.00
    lwc1    $f6, 0x01BC(s1)            # 000001BC
    c.eq.s  $f20, $f6
    nop
    bc1fl   lbl_809FCDD8
    lw      $ra, 0x0034($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809FCDD8
    lw      $ra, 0x0034($sp)
lbl_809FC400:
    jal     func_80022FD0
    sw      v1, 0x0064($sp)
    lh      t6, 0x0192(s1)             # 00000192
    lui     a1, 0x40C0                 # a1 = 40C00000
    or      a0, s1, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809FC430
    nop
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809FC438
    nop
lbl_809FC430:
    jal     func_80020F88
    lui     a1, 0x40A8                 # a1 = 40A80000
lbl_809FC438:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A12EF0)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12EF0)($at)
    lh      t8, 0x00B8(s1)             # 000000B8
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f8, $f0, $f4
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    addu    t4, t8, t3
    addiu   t5, t4, 0x4000             # t5 = 00004000
    sh      t5, 0x00B8(s1)             # 000000B8
    sll     t6, s0,  1
lbl_809FC470:
    addu    v0, s1, t6
    lh      v1, 0x01A6(v0)             # 000001A6
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_809FC490
    sra     s0, s0, 16
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01A6(v0)             # 000001A6
lbl_809FC490:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809FC470
    sll     t6, s0,  1
    lw      v0, 0x0064($sp)
    lwc1    $f12, 0x0024(s1)           # 00000024
    lw      v1, 0x006C($sp)
    lwc1    $f6, 0x01EC(v0)            # 000001EC
    lui     $at, 0x4220                # $at = 42200000
    or      a0, s1, $zero              # a0 = 00000000
    sub.s   $f4, $f6, $f12
    swc1    $f4, 0x0078($sp)
    lwc1    $f2, 0x0028(s1)            # 00000028
    lwc1    $f8, 0x01F0(v0)            # 000001F0
    sub.s   $f10, $f8, $f2
    swc1    $f10, 0x0074($sp)
    lwc1    $f0, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x01F4(v0)            # 000001F4
    sub.s   $f4, $f6, $f0
    mtc1    $at, $f6                   # $f6 = 40.00
    swc1    $f4, 0x0070($sp)
    lwc1    $f10, 0x0028(v1)           # 00000028
    lwc1    $f8, 0x0024(v1)            # 00000024
    add.s   $f4, $f10, $f6
    sub.s   $f20, $f8, $f12
    sub.s   $f8, $f4, $f2
    swc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x002C(v1)           # 0000002C
    sub.s   $f6, $f10, $f0
    jal     func_80021248
    swc1    $f6, 0x0080($sp)
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lhu     t9, 0x01B2(s1)             # 000001B2
    lwc1    $f16, 0x0078($sp)
    lwc1    $f18, 0x0070($sp)
    sltiu   $at, t9, 0x0005
    beq     $at, $zero, lbl_809FCA48
    sll     t9, t9,  2
    lui     $at, %hi(var_80A12EF4)     # $at = 80A10000
    addu    $at, $at, t9
    lw      t9, %lo(var_80A12EF4)($at)
    jr      t9
    nop
var_809FC53C:
    lw      t0, 0x006C($sp)
    lw      t3, 0x0064($sp)
    lw      t1, 0x066C(t0)             # 0000066C
    andi    t2, t1, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_809FC5D0
    lwc1    $f2, 0x0080($sp)
    lh      t4, 0x008A(t3)             # 0000008A
    lh      t8, 0x00B6(t0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t7, t4, $at
    subu    v0, t8, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_809FC580
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_809FC580
    or      v1, v0, $zero              # v1 = 00000000
lbl_809FC580:
    slti    $at, v1, 0x2000
    beq     $at, $zero, lbl_809FC5CC
    lwc1    $f12, 0x0084($sp)
    mul.s   $f4, $f20, $f20
    lwc1    $f2, 0x0080($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mul.s   $f8, $f12, $f12
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    mul.s   $f6, $f2, $f2
    add.s   $f10, $f4, $f8
    mtc1    $at, $f4                   # $f4 = 25.00
    add.s   $f0, $f10, $f6
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_809FC5D0
    lwc1    $f2, 0x0080($sp)
    beq     $zero, $zero, lbl_809FC5DC
    lbu     v0, 0x0611(s1)             # 00000611
lbl_809FC5CC:
    lwc1    $f2, 0x0080($sp)
lbl_809FC5D0:
    lwc1    $f12, 0x0084($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    lbu     v0, 0x0611(s1)             # 00000611
lbl_809FC5DC:
    or      s0, v1, $zero              # s0 = 00000000
    andi    t9, v0, 0x0002             # t9 = 00000000
    bne     t9, $zero, lbl_809FC5F4
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    beq     v1, $zero, lbl_809FC7B4
    nop
lbl_809FC5F4:
    lw      a0, 0x063C(s1)             # 0000063C
    bne     v1, $zero, lbl_809FC658
    sb      t1, 0x0611(s1)             # 00000611
    lw      t2, 0x0000(a0)             # 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sll     t3, t2, 11
    bgez    t3, lbl_809FC658
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sh      t4, 0x00BA($sp)
    sw      t5, 0x0014($sp)
    addiu   a0, $zero, 0x180C          # a0 = 0000180C
    addiu   a1, t0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lwc1    $f12, 0x008C(s1)           # 0000008C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    beq     $zero, $zero, lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
lbl_809FC658:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x00BA($sp)
    lwc1    $f12, 0x0070($sp)
    jal     func_800AA4F8
    lwc1    $f14, 0x0078($sp)
    lwc1    $f16, 0x0078($sp)
    lwc1    $f18, 0x0070($sp)
    sh      v0, 0x0032(s1)             # 00000032
    mul.s   $f8, $f16, $f16
    lwc1    $f14, 0x0074($sp)
    mul.s   $f10, $f18, $f18
    add.s   $f0, $f8, $f10
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    lh      t8, 0x0194(s1)             # 00000194
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sh      v0, 0x0030(s1)             # 00000030
    addiu   t7, t8, 0x0001             # t7 = 00000001
    sh      t7, 0x0194(s1)             # 00000194
    sh      t9, 0x01A8(s1)             # 000001A8
    lw      a1, 0x006C($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x182A          # a0 = 0000182A
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lwc1    $f12, 0x008C(s1)           # 0000008C
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    bne     s0, $zero, lbl_809FC77C
    lw      t2, 0x0064($sp)
    lui     $at, %hi(var_80A12F08)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12F08)($at)
    lwc1    $f4, 0x008C(t2)            # 0000008C
    c.lt.s  $f6, $f4
    nop
    bc1f    lbl_809FC728
    nop
    lh      t3, 0x0194(s1)             # 00000194
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    slti    $at, t3, 0x0003
    beq     $at, $zero, lbl_809FC728
    nop
    beq     $zero, $zero, lbl_809FC75C
    sh      t4, 0x01B2(s1)             # 000001B2
lbl_809FC728:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A12F0C)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12F0C)($at)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_809FC75C
    sh      t6, 0x01B2(s1)             # 000001B2
    beq     $zero, $zero, lbl_809FC75C
    sh      t5, 0x01B2(s1)             # 000001B2
    sh      t6, 0x01B2(s1)             # 000001B2
lbl_809FC75C:
    lw      t8, 0x006C($sp)
    lb      t7, 0x0832(t8)             # 00000832
    slti    $at, t7, 0x0018
    bne     $at, $zero, lbl_809FCA48
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    beq     $zero, $zero, lbl_809FCA48
    swc1    $f10, 0x0068(s1)           # 00000068
lbl_809FC77C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A12F10)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12F10)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_809FC7AC
    nop
    beq     $zero, $zero, lbl_809FCA48
    sh      t9, 0x01B2(s1)             # 000001B2
lbl_809FC7AC:
    beq     $zero, $zero, lbl_809FCA48
    sh      t1, 0x01B2(s1)             # 000001B2
lbl_809FC7B4:
    mul.s   $f4, $f20, $f20
    lui     $at, 0x41C8                # $at = 41C80000
    mul.s   $f8, $f12, $f12
    add.s   $f10, $f4, $f8
    mul.s   $f6, $f2, $f2
    mtc1    $at, $f4                   # $f4 = 25.00
    add.s   $f0, $f10, $f6
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f4
    nop
    bc1f    lbl_809FC878
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    mtc1    $zero, $f20                # $f20 = 0.00
    sh      t2, 0x00BA($sp)
    lh      a3, 0x0032(s1)             # 00000032
    addiu   t3, $zero, 0x0030          # t3 = 00000030
    sw      t3, 0x0014($sp)
    lw      a0, 0x00C4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_80022E7C
    swc1    $f20, 0x0010($sp)
    lw      a0, 0x00C4($sp)
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x390B          # a3 = 0000390B
    lw      v1, 0x0064($sp)
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    lui     v0, %hi(var_809FFDC8)      # v0 = 80A00000
    addiu   v0, v0, %lo(var_809FFDC8)  # v0 = 809FFDC8
    or      s0, $zero, $zero           # s0 = 00000000
    sh      t4, 0x01AA(v1)             # 000001AA
lbl_809FC838:
    addu    t5, v0, s0
    sll     t8, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    lbu     t6, 0x0000(t5)             # 00000000
    sra     s0, s0, 16
    slti    $at, s0, 0x0012
    addu    t7, v1, t8
    bne     $at, $zero, lbl_809FC838
    sh      t6, 0x04D4(t7)             # 000004D4
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sh      $zero, 0x02D6(v1)          # 000002D6
    sh      t9, 0x02D8(v1)             # 000002D8
    swc1    $f8, 0x04F8(v1)            # 000004F8
lbl_809FC878:
    beq     $zero, $zero, lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
var_809FC880:
    lw      t2, 0x0064($sp)
    lui     t1, %hi(func_809F7608)     # t1 = 809F0000
    addiu   t1, t1, %lo(func_809F7608) # t1 = 809F7608
    lw      t3, 0x0184(t2)             # 00000184
    bnel    t1, t3, lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
    lh      t4, 0x01B2(t2)             # 000001B2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lwc1    $f12, 0x0074($sp)
    bne     t4, $at, lbl_809FCA48
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f6                   # $f6 = 19.00
    lwc1    $f10, 0x0068(s1)           # 00000068
    mul.s   $f4, $f16, $f16
    lui     $at, 0x432A                # $at = 432A0000
    c.le.s  $f6, $f10
    mul.s   $f8, $f12, $f12
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lw      t8, 0x0064($sp)
    mul.s   $f6, $f18, $f18
    bc1f    lbl_809FC8E8
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f2                   # $f2 = 250.00
    beq     $zero, $zero, lbl_809FC8F4
    add.s   $f10, $f4, $f8
lbl_809FC8E8:
    mtc1    $at, $f2                   # $f2 = 250.00
    nop
    add.s   $f10, $f4, $f8
lbl_809FC8F4:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    add.s   $f0, $f10, $f6
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
    sb      t5, 0x01B0(t8)             # 000001B0
    sh      t6, 0x01A6(s1)             # 000001A6
    beq     $zero, $zero, lbl_809FCA48
    sh      t7, 0x01B2(s1)             # 000001B2
var_809FC920:
    lh      t9, 0x01A6(s1)             # 000001A6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bne     t9, $at, lbl_809FC994
    nop
    sh      t1, 0x00BA($sp)
    lwc1    $f12, 0x0080($sp)
    jal     func_800AA4F8
    mov.s   $f14, $f20
    sh      v0, 0x0032(s1)             # 00000032
    lwc1    $f4, 0x0080($sp)
    lwc1    $f14, 0x0084($sp)
    mul.s   $f8, $f4, $f4
    nop
    mul.s   $f10, $f20, $f20
    add.s   $f0, $f10, $f8
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      v0, 0x0030(s1)             # 00000030
    sh      t3, 0x01A8(s1)             # 000001A8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x182A          # a1 = 0000182A
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39CA          # a1 = 000039CA
    beq     $zero, $zero, lbl_809FCA48
    sh      $zero, 0x01B2(s1)          # 000001B2
lbl_809FC994:
    mul.s   $f6, $f16, $f16
    lwc1    $f2, 0x0074($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    mul.s   $f4, $f2, $f2
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    mul.s   $f8, $f18, $f18
    addiu   a3, $zero, 0x39CC          # a3 = 000039CC
    add.s   $f10, $f6, $f4
    mtc1    $at, $f6                   # $f6 = 30.00
    add.s   $f0, $f10, $f8
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
    sh      t2, 0x00BA($sp)
    lw      a0, 0x00C4($sp)
    jal     func_80058FF8
    sw      a1, 0x0040($sp)
    lw      a0, 0x00C4($sp)
    lw      a1, 0x0040($sp)
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x390B          # a3 = 0000390B
    beq     $zero, $zero, lbl_809FCA4C
    mtc1    $zero, $f20                # $f20 = 0.00
var_809FCA04:
    mul.s   $f4, $f16, $f16
    lwc1    $f2, 0x0074($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    lw      t8, 0x0064($sp)
    mul.s   $f10, $f2, $f2
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    mul.s   $f6, $f18, $f18
    add.s   $f8, $f4, $f10
    mtc1    $at, $f4                   # $f4 = 100.00
    add.s   $f0, $f8, $f6
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_809FCA48
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x01B0(t8)             # 000001B0
    sh      t6, 0x01B2(s1)             # 000001B2
lbl_809FCA48:
    mtc1    $zero, $f20                # $f20 = 0.00
lbl_809FCA4C:
    addiu   s0, s1, 0x0600             # s0 = 00000600
    or      a1, s0, $zero              # a1 = 00000600
    jal     func_80050B00
    or      a0, s1, $zero              # a0 = 00000000
    lh      t7, 0x01A8(s1)             # 000001A8
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x00C4($sp)
    bne     t7, $zero, lbl_809FCA7C
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 00000600
lbl_809FCA7C:
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809FCA80:
    lui     $at, %hi(var_80A12F14)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12F14)($at)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    swc1    $f20, 0x00A8($sp)
    swc1    $f20, 0x00A0($sp)
    swc1    $f20, 0x00B4($sp)
    swc1    $f20, 0x00B0($sp)
    swc1    $f20, 0x00AC($sp)
    jal     func_80026D90
    swc1    $f10, 0x00A4($sp)
    lwc1    $f8, 0x0024(s1)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f6, $f0, $f8
    jal     func_80026D90
    swc1    $f6, 0x0094($sp)
    lwc1    $f4, 0x0028(s1)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f10, $f0, $f4
    jal     func_80026D90
    swc1    $f10, 0x0098($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    add.s   $f6, $f0, $f8
    jal     func_80026D64
    swc1    $f6, 0x009C($sp)
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f4                   # $f4 = 700.00
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0014($sp)
    add.s   $f10, $f0, $f4
    lw      a0, 0x00C4($sp)
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFD4
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFFEC
    swc1    $f10, 0x0010($sp)
    jal     func_809F1E40
    addiu   a3, $sp, 0x00A0            # a3 = FFFFFFE0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0002
    bne     $at, $zero, lbl_809FCA80
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0028(s1)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    lw      a0, 0x00C4($sp)
    c.lt.s  $f8, $f6
    or      a1, s1, $zero              # a1 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    bc1fl   lbl_809FCB7C
    lwc1    $f0, 0x0024(s1)            # 00000024
    mtc1    $at, $f4                   # $f4 = 20.00
    mfc1    a2, $f20
    sw      t1, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lwc1    $f0, 0x0024(s1)            # 00000024
lbl_809FCB7C:
    lui     $at, %hi(var_80A12F18)     # $at = 80A10000
    lwc1    $f2, %lo(var_80A12F18)($at)
    abs.s   $f0, $f0
    lui     $at, 0x43FA                # $at = 43FA0000
    c.lt.s  $f2, $f0
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    bc1tl   lbl_809FCBD0
    sh      t3, 0x00BA($sp)
    mtc1    $at, $f10                  # $f10 = 500.00
    lwc1    $f8, 0x0028(s1)            # 00000028
    c.lt.s  $f10, $f8
    nop
    bc1tl   lbl_809FCBD0
    sh      t3, 0x00BA($sp)
    lwc1    $f0, 0x002C(s1)            # 0000002C
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_809FCBD4
    lh      t2, 0x00BA($sp)
    sh      t3, 0x00BA($sp)
lbl_809FCBD0:
    lh      t2, 0x00BA($sp)
lbl_809FCBD4:
    lh      t8, 0x00BA($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $zero, lbl_809FCBF4
    nop
    lhu     t4, 0x0088(s1)             # 00000088
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_809FCDD8
    lw      $ra, 0x0034($sp)
lbl_809FCBF4:
    bne     t8, $at, lbl_809FCC3C
    addiu   t7, s1, 0x0024             # t7 = 00000024
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64
    nop
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    add.s   $f4, $f0, $f6
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f20                  # $f20 = 25.00
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    swc1    $f4, 0x0058($sp)
    sh      t6, 0x004E($sp)
    beq     $zero, $zero, lbl_809FCC8C
    swc1    $f10, 0x0054($sp)
lbl_809FCC3C:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    sw      t7, 0x0040($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    add.s   $f6, $f0, $f8
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    swc1    $f6, 0x0058($sp)
    sh      t9, 0x004E($sp)
    lw      a0, 0x00C4($sp)
    lw      a1, 0x0040($sp)
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    addiu   a3, $zero, 0x390B          # a3 = 0000390B
    jal     func_80058FF8
    swc1    $f4, 0x0054($sp)
lbl_809FCC8C:
    lh      t1, 0x004E($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   t3, s1, 0x0024             # t3 = 00000024
    blezl   t1, lbl_809FCD50
    lh      t8, 0x00BA($sp)
    sw      t3, 0x0040($sp)
    lh      t2, 0x00BA($sp)
lbl_809FCCA8:
    beq     t2, $zero, lbl_809FCCD8
    nop
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00AC($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00B0($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    beq     $zero, $zero, lbl_809FCD00
    swc1    $f0, 0x00B4($sp)
lbl_809FCCD8:
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f12                  # $f12 = 25.00
    jal     func_80026D64
    swc1    $f0, 0x00AC($sp)
    swc1    $f0, 0x00B0($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00B4($sp)
lbl_809FCD00:
    lwc1    $f10, 0x0058($sp)
    lwc1    $f8, 0x0054($sp)
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    sw      t4, 0x0018($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    lw      a0, 0x00C4($sp)
    lw      a1, 0x0040($sp)
    addiu   a2, $sp, 0x00AC            # a2 = FFFFFFEC
    swc1    $f10, 0x0010($sp)
    jal     func_809F1F3C
    swc1    $f8, 0x0014($sp)
    lh      t5, 0x004E($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, t5
    bnel    $at, $zero, lbl_809FCCA8
    lh      t2, 0x00BA($sp)
    lh      t8, 0x00BA($sp)
lbl_809FCD50:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beql    t8, v0, lbl_809FCDD8
    lw      $ra, 0x0034($sp)
    sh      v0, 0x0198(s1)             # 00000198
    lh      t6, 0x00BA($sp)
    lw      a1, 0x00C4($sp)
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_809FCD80
    lh      t7, 0x00BA($sp)
    jal     func_809FC1E4
    addiu   a2, s1, 0x0024             # a2 = 00000024
    lh      t7, 0x00BA($sp)
lbl_809FCD80:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x0064($sp)
    bne     t7, $at, lbl_809FCDA0
    lw      a1, 0x00C4($sp)
    jal     func_809F7B20
    lw      a0, 0x0064($sp)
    beq     $zero, $zero, lbl_809FCDD8
    lw      $ra, 0x0034($sp)
lbl_809FCDA0:
    lw      t1, 0x0184(a0)             # 00000184
    lui     t9, %hi(func_809F7608)     # t9 = 809F0000
    addiu   t9, t9, %lo(func_809F7608) # t9 = 809F7608
    bnel    t9, t1, lbl_809FCDD8
    lw      $ra, 0x0034($sp)
    jal     func_809F6FA8
    lw      a1, 0x00C4($sp)
    lh      t3, 0x00BA($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t4, 0x0064($sp)
    bne     t3, $at, lbl_809FCDD4
    addiu   t2, $zero, 0x007D          # t2 = 0000007D
    sh      t2, 0x01A6(t4)             # 000001A6
lbl_809FCDD4:
    lw      $ra, 0x0034($sp)
lbl_809FCDD8:
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_809FCDEC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s8, 0x0040($sp)
    sw      s4, 0x0030($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      a0, 0x0000(s8)             # 00000000
    jal     func_8007E2C0
    or      s3, a0, $zero              # s3 = 00000000
    lh      t6, 0x0192(s4)             # 00000192
    lui     s2, 0xFA00                 # s2 = FA000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809FCE58
    lui     $at, %hi(var_80A12F1C)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12F1C)($at)
    lwc1    $f4, 0x01BC(s4)            # 000001BC
    mul.s   $f0, $f4, $f6
    beq     $zero, $zero, lbl_809FCE6C
    nop
lbl_809FCE58:
    lui     $at, %hi(var_80A12F20)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12F20)($at)
    lwc1    $f8, 0x01BC(s4)            # 000001BC
    mul.s   $f0, $f8, $f10
    nop
lbl_809FCE6C:
    trunc.w.s $f16, $f0
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   $at, $zero, 0x9B00         # $at = FFFF9B00
    mfc1    t2, $f16
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFF9B00
    sw      t4, 0x0004(s0)             # 00000004
    sw      s2, 0x0000(s0)             # 00000000
    jal     func_800AA6EC
    nop
    lwc1    $f12, 0x0024(s4)           # 00000024
    lwc1    $f14, 0x0080(s4)           # 00000080
    lw      a2, 0x002C(s4)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f0                   # $f0 = 0.75
    lwc1    $f18, 0x0050(s4)           # 00000050
    lwc1    $f4, 0x0058(s4)            # 00000058
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f12, $f18, $f0
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f4, $f0
    mfc1    a2, $f6
    jal     func_800AA8FC
    nop
    lui     s7, 0xDA38                 # s7 = DA380000
    ori     s7, s7, 0x0003             # s7 = DA380003
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    lui     s6, 0xDE00                 # s6 = DE000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, %hi(var_80A11C08)      # t7 = 80A10000
    addiu   t7, t7, %lo(var_80A11C08)  # t7 = 80A11C08
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    jal     func_800AA724
    nop
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, %hi(var_80A02F58)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_80A02F58)  # t9 = 80A02F58
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     s5, %hi(var_80A02FC8)      # s5 = 80A00000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   s5, s5, %lo(var_80A02FC8)  # s5 = 80A02FC8
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      s2, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x01BC(s4)            # 000001BC
    or      s2, $zero, $zero           # s2 = 00000000
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFFFF00
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    lui     t1, 0xFFFF                 # t1 = FFFF0000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lh      v0, 0x0198(s4)             # 00000198
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809FD050
    lui     $at, %hi(var_80A12F24)     # $at = 80A10000
    lwc1    $f20, %lo(var_80A12F24)($at)
lbl_809FCFCC:
    jal     func_800AA6EC
    nop
    mtc1    s2, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f20
    jal     func_800AAB94
    nop
    lwc1    $f12, 0x01B8(s4)           # 000001B8
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    jal     func_800AA724
    nop
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0008
    bne     $at, $zero, lbl_809FCFCC
    nop
    beq     $zero, $zero, lbl_809FD0D0
    lw      $ra, 0x0044($sp)
lbl_809FD050:
    bne     v0, $zero, lbl_809FD0CC
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s8, $at
    lh      t4, 0x00B8(s4)             # 000000B8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A12F28)     # $at = 80A10000
    lwc1    $f16, %lo(var_80A12F28)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAD4C
    nop
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, %hi(var_80A02FC8)      # t7 = 80A00000
    addiu   t7, t7, %lo(var_80A02FC8)  # t7 = 80A02FC8
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
lbl_809FD0CC:
    lw      $ra, 0x0044($sp)
lbl_809FD0D0:
    ldc1    $f20, 0x0018($sp)
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
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_809FD100:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a1, 0x00A4($sp)
    lh      t6, 0x0192(s1)             # 00000192
    lw      s2, 0x0118(s1)             # 00000118
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0192(s1)             # 00000192
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x40C0                 # a1 = 40C00000
    jal     func_80020F88
    sb      t8, 0x0190(s2)             # 00000190
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A12F2C)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12F2C)($at)
    lh      t9, 0x00B8(s1)             # 000000B8
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t3, $f8
    nop
    addu    t4, t9, t3
    addiu   t5, t4, 0x4000             # t5 = 00004000
    sh      t5, 0x00B8(s1)             # 000000B8
    sll     t6, s0,  1
lbl_809FD180:
    addu    v0, s1, t6
    lh      v1, 0x01A6(v0)             # 000001A6
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_809FD1A0
    sra     s0, s0, 16
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01A6(v0)             # 000001A6
lbl_809FD1A0:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809FD180
    sll     t6, s0,  1
    jal     func_80021248
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lh      t8, 0x0196(s1)             # 00000196
    addiu   t0, t8, 0x0001             # t0 = 00000001
    sh      t0, 0x0196(s1)             # 00000196
    lh      v0, 0x0196(s1)             # 00000196
    slti    $at, v0, 0x000F
    bnel    $at, $zero, lbl_809FD1E4
    sll     t1, v0,  2
    sh      $zero, 0x0196(s1)          # 00000196
    lh      v0, 0x0196(s1)             # 00000196
    sll     t1, v0,  2
lbl_809FD1E4:
    lw      t3, 0x0024(s1)             # 00000024
    subu    t1, t1, v0
    sll     t1, t1,  2
    addu    t2, s1, t1
    sw      t3, 0x02DC(t2)             # 000002DC
    lw      t9, 0x0028(s1)             # 00000028
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t9, 0x02E0(t2)             # 000002E0
    lw      t3, 0x002C(s1)             # 0000002C
    sw      t3, 0x02E4(t2)             # 000002E4
    lh      v1, 0x01B2(s1)             # 000001B2
    bne     v1, $zero, lbl_809FD230
    nop
    lh      t4, 0x01A6(s1)             # 000001A6
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    bnel    t4, $zero, lbl_809FD4D4
    lw      $ra, 0x0054($sp)
    beq     $zero, $zero, lbl_809FD4D0
    sh      t5, 0x01B2(s1)             # 000001B2
lbl_809FD230:
    bnel    v1, $at, lbl_809FD4C0
    lh      t1, 0x01A6(s1)             # 000001A6
    lwc1    $f10, 0x01EC(s2)           # 000001EC
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f8, 0x01F4(s2)            # 000001F4
    lwc1    $f4, 0x01F0(s2)            # 000001F0
    sub.s   $f20, $f10, $f18
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lwc1    $f6, 0x0028(s1)            # 00000028
    sub.s   $f14, $f8, $f10
    mov.s   $f12, $f20
    sub.s   $f22, $f4, $f6
    jal     func_800CD76C
    swc1    $f14, 0x0084($sp)
    lui     $at, %hi(var_80A12F30)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12F30)($at)
    lwc1    $f16, 0x0084($sp)
    mov.s   $f12, $f22
    mul.s   $f4, $f0, $f18
    nop
    mul.s   $f8, $f20, $f20
    nop
    mul.s   $f10, $f16, $f16
    trunc.w.s $f6, $f4
    add.s   $f2, $f8, $f10
    mfc1    s0, $f6
    nop
    sll     s0, s0, 16
    sra     s0, s0, 16
    sqrt.s  $f14, $f2
    jal     func_800CD76C
    swc1    $f2, 0x005C($sp)
    lui     $at, %hi(var_80A12F34)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12F34)($at)
    addiu   a0, s1, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f4, $f0, $f18
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    trunc.w.s $f6, $f4
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    jal     func_80064624
    sra     a1, a1, 16
    sll     a1, s0, 16
    sra     a1, a1, 16
    addiu   a0, s1, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    mul.s   $f10, $f22, $f22
    lwc1    $f8, 0x005C($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_809FD4D4
    lw      $ra, 0x0054($sp)
    lh      t1, 0x001C(s1)             # 0000001C
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t8, 0x01B2(s1)             # 000001B2
    sh      t0, 0x01A6(s1)             # 000001A6
    bne     t1, $at, lbl_809FD4A8
    swc1    $f4, 0x0068(s1)            # 00000068
    jal     func_800646F0
    addiu   a0, $zero, 0x39CD          # a0 = 000039CD
    jal     func_800646F0
    addiu   a0, $zero, 0x3827          # a0 = 00003827
    lui     $at, %hi(var_80A12F38)     # $at = 80A10000
    lwc1    $f22, %lo(var_80A12F38)($at)
    lui     $at, 0x41C8                # $at = 41C80000
    addiu   t2, s2, 0x01EC             # t2 = 000001EC
    mtc1    $at, $f20                  # $f20 = 25.00
    sw      t2, 0x005C($sp)
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809FD370:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0070($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0074($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f6, 0x0070($sp)
    lwc1    $f10, 0x0074($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mul.s   $f8, $f6, $f22
    mtc1    $at, $f12                  # $f12 = 500.00
    swc1    $f0, 0x0078($sp)
    mul.s   $f18, $f10, $f22
    nop
    mul.s   $f4, $f0, $f22
    swc1    $f8, 0x0064($sp)
    swc1    $f18, 0x0068($sp)
    jal     func_80026D64
    swc1    $f4, 0x006C($sp)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    add.s   $f8, $f0, $f6
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t9, 0x0018($sp)
    lw      a0, 0x00A4($sp)
    swc1    $f8, 0x0010($sp)
    lw      a1, 0x005C($sp)
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD0
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFC4
    jal     func_809F1F3C
    swc1    $f10, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0096
    bne     $at, $zero, lbl_809FD370
    nop
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   v0, $zero, 0x03E8          # v0 = 000003E8
lbl_809FD41C:
    sll     t3, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000002
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000F
    addu    t4, s2, t3
    bne     $at, $zero, lbl_809FD41C
    sh      v0, 0x04D4(t4)             # 000004D4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f4, 0x01EC(s2)            # 000001EC
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      v0, 0x02D6(s2)             # 000002D6
    sh      $zero, 0x02D8(s2)          # 000002D8
    sh      t5, 0x01B4(s2)             # 000001B4
    sh      t6, 0x065E(s2)             # 0000065E
    sb      t7, 0x065C(s2)             # 0000065C
    swc1    $f18, 0x04F8(s2)           # 000004F8
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x01F0(s2)            # 000001F0
    lw      a2, 0x00A4($sp)
    addiu   t0, $zero, 0x012C          # t0 = 0000012C
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x01F4(s2)            # 000001F4
    sw      t0, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
lbl_809FD4A8:
    lui     $at, %hi(var_80A12F3C)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12F3C)($at)
    swc1    $f10, 0x0028(s1)           # 00000028
    beq     $zero, $zero, lbl_809FD4D4
    lw      $ra, 0x0054($sp)
    lh      t1, 0x01A6(s1)             # 000001A6
lbl_809FD4C0:
    bnel    t1, $zero, lbl_809FD4D4
    lw      $ra, 0x0054($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_809FD4D0:
    lw      $ra, 0x0054($sp)
lbl_809FD4D4:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_809FD4F0:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s5, 0x005C($sp)
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      a0, 0x0000(s5)             # 00000000
    jal     func_8007E2C0
    or      s3, a0, $zero              # s3 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    lui     t1, 0xFFFF                 # t1 = FFFF0000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, %hi(var_80A02F58)      # t3 = 80A00000
    addiu   t3, t3, %lo(var_80A02F58)  # t3 = 80A02F58
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s7, s5, $at
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f30                  # $f30 = 32768.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f28                  # $f28 = 10.00
    lui     $at, %hi(var_80A12F40)     # $at = 80A10000
    lwc1    $f26, %lo(var_80A12F40)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, %hi(var_80A12F44)     # $at = 80A10000
    lui     s6, %hi(var_80A02FC8)      # s6 = 80A00000
    addiu   s6, s6, %lo(var_80A02FC8)  # s6 = 80A02FC8
    lwc1    $f22, %lo(var_80A12F44)($at)
    addiu   s2, $zero, 0x0009          # s2 = 00000009
    lh      t4, 0x0196(s1)             # 00000196
lbl_809FD5E4:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a3, $zero, $zero           # a3 = 00000000
    subu    v1, t4, s2
    addiu   v1, v1, 0x000F             # v1 = 0000000F
    div     $zero, v1, $at
    mfhi    v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    sll     t5, v1,  2
    subu    t5, t5, v1
    sll     t5, t5,  2
    addu    v0, s1, t5
    lwc1    $f12, 0x02DC(v0)           # 000002DC
    lwc1    $f14, 0x02E0(v0)           # 000002E0
    jal     func_800AA7F4
    lw      a2, 0x02E4(v0)             # 000002E4
    mtc1    s2, $f4                    # $f4 = 0.00
    lwc1    $f8, 0x0050(s1)            # 00000050
    lwc1    $f10, 0x0054(s1)           # 00000054
    cvt.s.w $f20, $f4
    lwc1    $f16, 0x0058(s1)           # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f20, $f26
    sub.s   $f0, $f24, $f6
    mul.s   $f12, $f8, $f0
    nop
    mul.s   $f14, $f10, $f0
    nop
    mul.s   $f18, $f16, $f0
    mfc1    a2, $f18
    jal     func_800AA8FC
    nop
    jal     func_800ABE54
    or      a0, s7, $zero              # a0 = 00000000
    lh      t6, 0x00B8(s1)             # 000000B8
    mul.s   $f0, $f20, $f22
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f0, $f0
    div.s   $f16, $f10, $f30
    div.s   $f6, $f4, $f28
    mul.s   $f18, $f16, $f22
    jal     func_800AAD4C
    add.s   $f12, $f6, $f18
    lw      s4, 0x02D0(s3)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s4, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0000(s4)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   s2, s2, 0xFFFF             # s2 = 00000008
    sll     s2, s2, 16
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    sra     s2, s2, 16
    bgezl   s2, lbl_809FD5E4
    lh      t4, 0x0196(s1)             # 00000196
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809FD730:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    sw      a1, 0x00A4($sp)
    lw      t6, 0x00A4($sp)
    sb      $zero, 0x009F($sp)
    lw      s2, 0x0118(s1)             # 00000118
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    sw      t7, 0x0070($sp)
    lh      t8, 0x0192(s1)             # 00000192
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    jal     func_80020F88
    sh      t9, 0x0192(s1)             # 00000192
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t0, s0,  1
lbl_809FD784:
    addu    v0, s1, t0
    lh      v1, 0x01A6(v0)             # 000001A6
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_809FD7A4
    sra     s0, s0, 16
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01A6(v0)             # 000001A6
lbl_809FD7A4:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809FD784
    sll     t0, s0,  1
    jal     func_80021248
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lh      t2, 0x0196(s1)             # 00000196
    addiu   t4, s1, 0x0024             # t4 = 00000024
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0196(s1)             # 00000196
    lh      v1, 0x0196(s1)             # 00000196
    slti    $at, v1, 0x000F
    bnel    $at, $zero, lbl_809FD7EC
    lui     $at, 0x4700                # $at = 47000000
    sh      $zero, 0x0196(s1)          # 00000196
    lh      v1, 0x0196(s1)             # 00000196
    lui     $at, 0x4700                # $at = 47000000
lbl_809FD7EC:
    sw      t4, 0x0050($sp)
    sll     t5, v1,  2
    mtc1    $at, $f0                   # $f0 = 32768.00
    lw      t9, 0x0000(t4)             # 00000024
    subu    t5, t5, v1
    lui     $at, %hi(var_80A12F48)     # $at = 80A10000
    sll     t5, t5,  2
    lwc1    $f2, %lo(var_80A12F48)($at)
    addu    t6, s1, t5
    sw      t9, 0x02DC(t6)             # 000002DC
    lw      t8, 0x0004(t4)             # 00000028
    sw      t8, 0x02E0(t6)             # 000002E0
    lw      t9, 0x0008(t4)             # 0000002C
    sw      t9, 0x02E4(t6)             # 000002E4
    lh      t0, 0x0030(s1)             # 00000030
    lh      t1, 0x0196(s1)             # 00000196
    mtc1    t0, $f4                    # $f4 = 0.00
    sll     t2, t1,  2
    subu    t2, t2, t1
    cvt.s.w $f6, $f4
    sll     t2, t2,  2
    addu    t3, s1, t2
    div.s   $f8, $f6, $f0
    mul.s   $f10, $f8, $f2
    swc1    $f10, 0x03B4(t3)           # 000003B5
    lh      t4, 0x0032(s1)             # 00000032
    lh      t5, 0x0196(s1)             # 00000196
    mtc1    t4, $f4                    # $f4 = 0.00
    sll     t6, t5,  2
    subu    t6, t6, t5
    cvt.s.w $f6, $f4
    sll     t6, t6,  2
    addu    t7, s1, t6
    div.s   $f8, $f6, $f0
    mul.s   $f10, $f8, $f2
    swc1    $f10, 0x03B8(t7)           # 000003B8
    lh      v0, 0x01B2(s1)             # 000001B2
    sltiu   $at, v0, 0x000D
    beq     $at, $zero, lbl_809FE264
    sll     t8, v0,  2
    lui     $at, %hi(var_80A12F4C)     # $at = 80A10000
    addu    $at, $at, t8
    lw      t8, %lo(var_80A12F4C)($at)
    jr      t8
    nop
var_809FD8A0:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   a0, s1, 0x01BC             # a0 = 000001BC
    lui     a1, 0x437F                 # a1 = 437F0000
    mfc1    a3, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    swc1    $f0, 0x0068(s1)            # 00000068
    lwc1    $f4, 0x0268(s2)            # 00000268
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x026C(s2)            # 0000026C
    lwc1    $f10, 0x0028(s1)           # 00000028
    sub.s   $f12, $f4, $f6
    sub.s   $f4, $f8, $f10
    swc1    $f4, 0x0094($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x0270(s2)            # 00000270
    swc1    $f12, 0x0098($sp)
    sub.s   $f14, $f6, $f8
    jal     func_800CD76C
    swc1    $f14, 0x0090($sp)
    lui     $at, %hi(var_80A12F80)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12F80)($at)
    lwc1    $f2, 0x0098($sp)
    lwc1    $f18, 0x0090($sp)
    mul.s   $f4, $f0, $f10
    lwc1    $f12, 0x0094($sp)
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f10, $f18, $f18
    trunc.w.s $f6, $f4
    add.s   $f4, $f8, $f10
    mfc1    t0, $f6
    sqrt.s  $f14, $f4
    swc1    $f4, 0x0058($sp)
    sh      t0, 0x0080($sp)
    jal     func_800CD76C
    swc1    $f14, 0x008C($sp)
    lui     $at, 0x45C0                # $at = 45C00000
    mtc1    $at, $f12                  # $f12 = 6144.00
    lui     $at, %hi(var_80A12F84)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12F84)($at)
    lui     $at, 0x442F                # $at = 442F0000
    lwc1    $f16, 0x008C($sp)
    mul.s   $f8, $f0, $f6
    mtc1    $at, $f4                   # $f4 = 700.00
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f6, $f16, $f4
    trunc.w.s $f10, $f8
    mtc1    $at, $f8                   # $f8 = 10.00
    nop
    div.s   $f14, $f6, $f8
    mfc1    s0, $f10
    nop
    sll     s0, s0, 16
    sra     s0, s0, 16
    c.lt.s  $f12, $f14
    nop
    bc1fl   lbl_809FD998
    lh      a0, 0x0192(s1)             # 00000192
    mov.s   $f14, $f12
    lh      a0, 0x0192(s1)             # 00000192
lbl_809FD998:
    swc1    $f14, 0x0084($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  4
    addu    a0, a0, $at
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f14, 0x0084($sp)
    mtc1    s0, $f10                   # $f10 = 0.00
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    mul.s   $f6, $f0, $f14
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    cvt.s.w $f4, $f10
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x06DC(s1)            # 000006DC
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    s0, $f10
    mfc1    a3, $f6
    sll     s0, s0, 16
    sra     s0, s0, 16
    sh      s0, 0x0030(s1)             # 00000030
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_80064624
    lh      a1, 0x0080($sp)
    addiu   a0, s1, 0x06DC             # a0 = 000006DC
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4380                 # a3 = 43800000
    lh      a0, 0x0192(s1)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t4, 0x00B6(s1)             # 000000B6
    lwc1    $f14, 0x0084($sp)
    lwc1    $f2, 0x0094($sp)
    mtc1    t4, $f10                   # $f10 = 0.00
    mul.s   $f8, $f0, $f14
    lui     $at, 0x4234                # $at = 42340000
    cvt.s.w $f4, $f10
    add.s   $f6, $f8, $f4
    mul.s   $f4, $f2, $f2
    trunc.w.s $f10, $f6
    mtc1    $at, $f6                   # $f6 = 45.00
    mfc1    t6, $f10
    nop
    sh      t6, 0x0032(s1)             # 00000032
    lwc1    $f8, 0x0058($sp)
    add.s   $f0, $f8, $f4
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_809FDAA4
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x01B2(s1)             # 000001B2
    swc1    $f10, 0x0068(s1)           # 00000068
lbl_809FDAA4:
    beq     $zero, $zero, lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
var_809FDAAC:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   a0, s1, 0x01BC             # a0 = 000001BC
    lui     a1, 0x3F80                 # a1 = 3F800000
    mfc1    a2, $f0
    jal     func_800642F0
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f4, 0x01BC(s1)            # 000001BC
    c.eq.s  $f8, $f4
    nop
    bc1f    lbl_809FDAE8
    nop
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_809FDAE8:
    beq     $zero, $zero, lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
var_809FDAF0:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    addiu   t9, $zero, 0x000E          # t9 = 0000000E
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t2, $zero, 0xFFF6          # t2 = FFFFFFF6
    sh      t8, 0x01B2(s1)             # 000001B2
    sh      t9, 0x01A6(s1)             # 000001A6
    sh      t0, 0x0640(s1)             # 00000640
    sh      t1, 0x0642(s1)             # 00000642
    sh      t2, 0x0644(s1)             # 00000644
    swc1    $f6, 0x0068(s1)            # 00000068
    swc1    $f10, 0x01BC(s1)           # 000001BC
    lw      t3, 0x0070($sp)
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lw      t5, 0x0024(t3)             # 00000024
    sw      t5, 0x01E0(s1)             # 000001E0
    lw      t4, 0x0028(t3)             # 00000028
    lwc1    $f8, 0x01E0(s1)            # 000001E0
    sw      t4, 0x01E4(s1)             # 000001E4
    lw      t5, 0x002C(t3)             # 0000002C
    sub.s   $f12, $f8, $f4
    sw      t5, 0x01E8(s1)             # 000001E8
    lwc1    $f6, 0x01E8(s1)            # 000001E8
    jal     func_800CD76C
    sub.s   $f14, $f6, $f10
    lui     $at, %hi(var_80A12F88)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12F88)($at)
    lh      t0, 0x001C(s1)             # 0000001C
    lui     $at, 0xFFDF                # $at = FFDF0000
    mul.s   $f4, $f0, $f8
    sll     t1, t0, 13
    ori     $at, $at, 0x4000           # $at = FFDF4000
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    nop
    addu    t2, t9, t1
    addu    t3, t2, $at
    sh      t3, 0x00B6(s1)             # 000000B6
var_809FDB9C:
    lh      t4, 0x01A6(s1)             # 000001A6
    lw      t5, 0x0070($sp)
    beql    t4, $zero, lbl_809FDC98
    lwc1    $f0, 0x008C(s1)            # 0000008C
    lw      t7, 0x0024(t5)             # 00000024
    lwc1    $f8, 0x0024(s1)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t7, 0x01E0(s1)             # 000001E0
    lw      t6, 0x0028(t5)             # 00000028
    lwc1    $f10, 0x01E0(s1)           # 000001E0
    mtc1    $at, $f6                   # $f6 = 30.00
    sw      t6, 0x01E4(s1)             # 000001E4
    lwc1    $f4, 0x01E4(s1)            # 000001E4
    sub.s   $f12, $f10, $f8
    lwc1    $f8, 0x0028(s1)            # 00000028
    lw      t7, 0x002C(t5)             # 0000002C
    add.s   $f10, $f4, $f6
    sw      t7, 0x01E8(s1)             # 000001E8
    sub.s   $f4, $f10, $f8
    swc1    $f4, 0x0094($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lwc1    $f6, 0x01E8(s1)            # 000001E8
    swc1    $f12, 0x0098($sp)
    sub.s   $f14, $f6, $f10
    jal     func_800CD76C
    swc1    $f14, 0x0090($sp)
    lui     $at, %hi(var_80A12F8C)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12F8C)($at)
    lwc1    $f2, 0x0098($sp)
    lwc1    $f18, 0x0090($sp)
    mul.s   $f4, $f0, $f8
    lwc1    $f12, 0x0094($sp)
    mul.s   $f10, $f2, $f2
    nop
    mul.s   $f8, $f18, $f18
    trunc.w.s $f6, $f4
    add.s   $f0, $f10, $f8
    mfc1    t0, $f6
    sqrt.s  $f14, $f0
    jal     func_800CD76C
    sh      t0, 0x0080($sp)
    lui     $at, %hi(var_80A12F90)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12F90)($at)
    lwc1    $f8, 0x06DC(s1)            # 000006DC
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    mul.s   $f6, $f0, $f4
    trunc.w.s $f4, $f8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mfc1    a3, $f4
    trunc.w.s $f10, $f6
    sll     a3, a3, 16
    sra     a3, a3, 16
    mfc1    t1, $f10
    nop
    sh      t1, 0x00B4(s1)             # 000000B4
    jal     func_80064624
    lh      a1, 0x0080($sp)
    addiu   a0, s1, 0x06DC             # a0 = 000006DC
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4380                 # a3 = 43800000
    lwc1    $f0, 0x008C(s1)            # 0000008C
lbl_809FDC98:
    lui     $at, 0x4658                # $at = 46580000
    mtc1    $at, $f12                  # $f12 = 13824.00
    sqrt.s  $f0, $f0
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f10, $f0, $f6
    div.s   $f14, $f10, $f8
    c.lt.s  $f12, $f14
    nop
    bc1fl   lbl_809FDCD4
    lh      a0, 0x0192(s1)             # 00000192
    mov.s   $f14, $f12
    lh      a0, 0x0192(s1)             # 00000192
lbl_809FDCD4:
    swc1    $f14, 0x0084($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0, 10
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f14, 0x0084($sp)
    lh      t3, 0x00B4(s1)             # 000000B4
    lui     $at, %hi(var_80A12F94)     # $at = 80A10000
    mul.s   $f4, $f0, $f14
    lwc1    $f6, %lo(var_80A12F94)($at)
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      a0, 0x0192(s1)             # 00000192
    addu    $at, a0, $zero
    mul.s   $f10, $f4, $f6
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  9
    cvt.s.w $f4, $f8
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f6, $f10, $f4
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    jal     func_800636C4              # sins?
    sh      t5, 0x0030(s1)             # 00000030
    lh      t6, 0x00B6(s1)             # 000000B6
    lwc1    $f14, 0x0084($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    mul.s   $f10, $f0, $f14
    cvt.s.w $f6, $f4
    add.s   $f8, $f10, $f6
    trunc.w.s $f4, $f8
    mfc1    t8, $f4
    nop
    sh      t8, 0x0032(s1)             # 00000032
    lw      t0, 0x0070($sp)
    lb      t9, 0x0833(t0)             # 00000833
    beql    t9, $zero, lbl_809FDE04
    lbu     v1, 0x0611(s1)             # 00000611
    lb      t1, 0x0832(t0)             # 00000832
    slti    $at, t1, 0x0018
    bne     $at, $zero, lbl_809FDE00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f10, 0x0090(s1)           # 00000090
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    lui     $at, 0xC1F0                # $at = C1F00000
    c.lt.s  $f10, $f6
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x01E0             # s0 = 000001E0
    bc1fl   lbl_809FDE04
    lbu     v1, 0x0611(s1)             # 00000611
    mtc1    $at, $f8                   # $f8 = -30.00
    sh      t2, 0x01B2(s1)             # 000001B2
    jal     func_80021248
    swc1    $f8, 0x0068(s1)            # 00000068
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lw      t4, 0x01EC(s2)             # 000001EC
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    sw      t4, 0x0000(s0)             # 000001E0
    lw      t3, 0x01F0(s2)             # 000001F0
    sw      t3, 0x0004(s0)             # 000001E4
    lw      t4, 0x01F4(s2)             # 000001F4
    sw      t4, 0x0008(s0)             # 000001E8
    sb      t5, 0x009F($sp)
    beq     $zero, $zero, lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
lbl_809FDE00:
    lbu     v1, 0x0611(s1)             # 00000611
lbl_809FDE04:
    andi    t6, v1, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_809FDF24
    addiu   s0, s1, 0x0600             # s0 = 00000600
    lw      v0, 0x063C(s1)             # 0000063C
    andi    t7, v1, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0611(s1)             # 00000611
    lw      t8, 0x0000(v0)             # 00000000
    sll     t9, t8, 11
    bgezl   t9, lbl_809FDE40
    lwc1    $f12, 0x008C(s1)           # 0000008C
    jal     func_80079B64
    lw      a0, 0x00A4($sp)
    beql    v0, $zero, lbl_809FDF24
    addiu   s0, s1, 0x0600             # s0 = 00000600
    lwc1    $f12, 0x008C(s1)           # 0000008C
lbl_809FDE40:
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f4                   # $f4 = -30.00
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    sh      t0, 0x01B2(s1)             # 000001B2
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021248
    swc1    $f4, 0x0068(s1)            # 00000068
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f12                  # $f12 = 700.00
    jal     func_80026D90
    nop
    lwc1    $f10, 0x01EC(s2)           # 000001EC
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    add.s   $f6, $f0, $f10
    jal     func_80026D90
    swc1    $f6, 0x01E0(s1)            # 000001E0
    lwc1    $f8, 0x01F0(s2)            # 000001F0
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f12                  # $f12 = 700.00
    add.s   $f4, $f0, $f8
    jal     func_80026D90
    swc1    $f4, 0x01E4(s1)            # 000001E4
    lwc1    $f2, 0x01E0(s1)            # 000001E0
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x01F4(s2)           # 000001F4
    lui     $at, 0x42C8                # $at = 42C80000
    sub.s   $f4, $f2, $f8
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f8, 0x0028(s1)            # 00000028
    add.s   $f6, $f0, $f10
    mul.s   $f10, $f4, $f16
    lwc1    $f14, 0x01E4(s1)           # 000001E4
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    swc1    $f6, 0x01E8(s1)            # 000001E8
    lwc1    $f12, 0x01E8(s1)           # 000001E8
    sub.s   $f4, $f14, $f8
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f6, $f2, $f10
    mul.s   $f10, $f4, $f16
    sub.s   $f4, $f12, $f8
    swc1    $f6, 0x01E0(s1)            # 000001E0
    add.s   $f6, $f14, $f10
    mul.s   $f10, $f4, $f16
    swc1    $f6, 0x01E4(s1)            # 000001E4
    add.s   $f6, $f12, $f10
    swc1    $f6, 0x01E8(s1)            # 000001E8
    sb      t1, 0x009F($sp)
    beq     $zero, $zero, lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
    addiu   s0, s1, 0x0600             # s0 = 00000600
lbl_809FDF24:
    or      a1, s0, $zero              # a1 = 00000600
    jal     func_80050B00
    or      a0, s1, $zero              # a0 = 00000000
    lh      t2, 0x01A8(s1)             # 000001A8
    bnel    t2, $zero, lbl_809FDF58
    lw      t4, 0x0070($sp)
    lw      a0, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    or      a2, s0, $zero              # a2 = 00000600
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      t4, 0x0070($sp)
lbl_809FDF58:
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f8, 0x0024(t4)            # 00000024
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f10, 0x0028(t4)           # 00000028
    sub.s   $f2, $f8, $f4
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f8, $f10, $f6
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lwc1    $f10, 0x002C(t4)           # 0000002C
    sub.s   $f14, $f8, $f4
    mul.s   $f8, $f2, $f2
    sub.s   $f12, $f10, $f6
    mul.s   $f4, $f12, $f12
    add.s   $f10, $f8, $f4
    mul.s   $f6, $f14, $f14
    mtc1    $at, $f8                   # $f8 = 30.00
    add.s   $f0, $f10, $f6
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_809FE060
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x01B2(s1)             # 000001B2
    swc1    $f4, 0x0068(s1)            # 00000068
    lh      t6, 0x01AA(s2)             # 000001AA
    lw      a0, 0x00A4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    bne     t6, $zero, lbl_809FE060
    lui     a2, 0x4040                 # a2 = 40400000
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      a3, 0x0032(s1)             # 00000032
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0014($sp)
    jal     func_80022E7C
    swc1    $f10, 0x0010($sp)
    lw      a0, 0x00A4($sp)
    lw      a1, 0x0050($sp)
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x390B          # a3 = 0000390B
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lui     v0, %hi(var_809FFDC8)      # v0 = 80A00000
    sh      t8, 0x01AA(s2)             # 000001AA
    addiu   v0, v0, %lo(var_809FFDC8)  # v0 = 809FFDC8
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809FE018:
    addu    t9, v0, s0
    sll     t1, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    lbu     t0, 0x0000(t9)             # 00000000
    sra     s0, s0, 16
    slti    $at, s0, 0x0012
    addu    t2, s2, t1
    bne     $at, $zero, lbl_809FE018
    sh      t0, 0x04D4(t2)             # 000004D4
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    sh      $zero, 0x02D6(s2)          # 000002D6
    sh      t3, 0x02D8(s2)             # 000002D8
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    swc1    $f6, 0x04F8(s2)            # 000004F8
    sb      t4, 0x009F($sp)
lbl_809FE060:
    beq     $zero, $zero, lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
var_809FE068:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f4, 0x01E0(s1)            # 000001E0
    lwc1    $f10, 0x0024(s1)           # 00000024
    swc1    $f8, 0x0068(s1)            # 00000068
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f6, 0x01E4(s1)            # 000001E4
    sub.s   $f12, $f4, $f10
    sub.s   $f4, $f6, $f8
    swc1    $f4, 0x0094($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lwc1    $f10, 0x01E8(s1)           # 000001E8
    swc1    $f12, 0x0098($sp)
    sub.s   $f14, $f10, $f6
    jal     func_800CD76C
    swc1    $f14, 0x0090($sp)
    lui     $at, %hi(var_80A12F98)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12F98)($at)
    lwc1    $f2, 0x0098($sp)
    lwc1    $f18, 0x0090($sp)
    mul.s   $f4, $f0, $f8
    lwc1    $f12, 0x0094($sp)
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f8, $f18, $f18
    trunc.w.s $f10, $f4
    add.s   $f0, $f6, $f8
    mfc1    t6, $f10
    sqrt.s  $f14, $f0
    sh      t6, 0x0080($sp)
    jal     func_800CD76C
    swc1    $f14, 0x008C($sp)
    lui     $at, 0x45C0                # $at = 45C00000
    mtc1    $at, $f12                  # $f12 = 6144.00
    lui     $at, %hi(var_80A12F9C)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12F9C)($at)
    lui     $at, 0x442F                # $at = 442F0000
    lwc1    $f16, 0x008C($sp)
    mul.s   $f10, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 700.00
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f4, $f16, $f8
    trunc.w.s $f6, $f10
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    div.s   $f14, $f4, $f10
    mfc1    s0, $f6
    nop
    sll     s0, s0, 16
    sra     s0, s0, 16
    c.lt.s  $f12, $f14
    nop
    bc1fl   lbl_809FE148
    lh      a0, 0x0192(s1)             # 00000192
    mov.s   $f14, $f12
    lh      a0, 0x0192(s1)             # 00000192
lbl_809FE148:
    swc1    $f14, 0x0084($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  4
    addu    a0, a0, $at
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t8, 0x0080($sp)
    lwc1    $f14, 0x0084($sp)
    mtc1    t8, $f6                    # $f6 = 0.00
    mul.s   $f4, $f0, $f14
    cvt.s.w $f8, $f6
    add.s   $f10, $f8, $f4
    trunc.w.s $f6, $f10
    mfc1    t1, $f6
    nop
    sh      t1, 0x0080($sp)
    lh      a0, 0x0192(s1)             # 00000192
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f14, 0x0084($sp)
    mtc1    s0, $f8                    # $f8 = 0.00
    lui     $at, 0x4234                # $at = 42340000
    mul.s   $f10, $f0, $f14
    or      a0, s2, $zero              # a0 = 00000000
    cvt.s.w $f4, $f8
    add.s   $f6, $f4, $f10
    lwc1    $f10, 0x0024(s1)           # 00000024
    trunc.w.s $f8, $f6
    mfc1    s0, $f8
    lwc1    $f8, 0x0028(s1)            # 00000028
    sll     s0, s0, 16
    sra     s0, s0, 16
    sh      s0, 0x0030(s1)             # 00000030
    lh      t2, 0x0080($sp)
    sh      t2, 0x0032(s1)             # 00000032
    lwc1    $f4, 0x01EC(s2)            # 000001EC
    lwc1    $f6, 0x01F0(s2)            # 000001F0
    sub.s   $f2, $f4, $f10
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lwc1    $f4, 0x01F4(s2)            # 000001F4
    sub.s   $f16, $f6, $f8
    mul.s   $f6, $f2, $f2
    sub.s   $f12, $f4, $f10
    mul.s   $f8, $f12, $f12
    add.s   $f4, $f6, $f8
    mul.s   $f10, $f16, $f16
    mtc1    $at, $f6                   # $f6 = 45.00
    add.s   $f0, $f4, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809FE264
    lh      v0, 0x01B2(s1)             # 000001B2
    jal     func_809F7B20
    lw      a1, 0x00A4($sp)
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t3, 0x01A6(s1)             # 000001A6
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    sb      t4, 0x009F($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x01B2(s1)             # 000001B2
    swc1    $f8, 0x0068(s1)            # 00000068
    lh      v0, 0x01B2(s1)             # 000001B2
lbl_809FE264:
    slti    $at, v0, 0x000B
    bne     $at, $zero, lbl_809FE364
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v0, $at, lbl_809FE288
    lwc1    $f12, 0x0024(s1)           # 00000024
    lui     $at, 0xC282                # $at = C2820000
    mtc1    $at, $f16                  # $f16 = -65.00
    beq     $zero, $zero, lbl_809FE290
    nop
lbl_809FE288:
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
lbl_809FE290:
    lui     $at, %hi(var_80A12FA0)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12FA0)($at)
    abs.s   $f0, $f12
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    add.s   $f2, $f4, $f16
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    c.lt.s  $f2, $f0
    nop
    bc1tl   lbl_809FE308
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f0, 0x002C(s1)            # 0000002C
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1tl   lbl_809FE308
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f0, 0x0028(s1)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x43E1                # $at = 43E10000
    c.lt.s  $f0, $f10
    nop
    bc1tl   lbl_809FE308
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f6                   # $f6 = 450.00
    nop
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_809FE368
    lbu     t9, 0x009F($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809FE308:
    sh      t6, 0x01B2(s1)             # 000001B2
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f8, 0x0068(s1)            # 00000068
    sb      t7, 0x009F($sp)
    lw      a2, 0x0050($sp)
    jal     func_809FC1E4
    lw      a1, 0x00A4($sp)
    lwc1    $f4, 0x0024(s1)            # 00000024
    lw      a2, 0x00A4($sp)
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    swc1    $f4, 0x0010($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00E8          # a3 = 000000E8
    swc1    $f10, 0x0014($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
lbl_809FE364:
    lbu     t9, 0x009F($sp)
lbl_809FE368:
    lw      a0, 0x00A4($sp)
    lw      a1, 0x0050($sp)
    beq     t9, $zero, lbl_809FE42C
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80058FF8
    addiu   a3, $zero, 0x38A2          # a3 = 000038A2
    lbu     v0, 0x009F($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    blezl   v0, lbl_809FE430
    lw      $ra, 0x0044($sp)
    sw      v0, 0x0058($sp)
    lui     $at, 0x41F0                # $at = 41F00000
lbl_809FE398:
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    swc1    $f0, 0x0060($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    swc1    $f0, 0x0064($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    swc1    $f0, 0x0068($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    add.s   $f4, $f0, $f8
    lui     a3, %hi(var_809FFDDC)      # a3 = 80A00000
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    sw      t1, 0x0018($sp)
    addiu   a3, a3, %lo(var_809FFDDC)  # a3 = 809FFDDC
    swc1    $f4, 0x0010($sp)
    lw      a0, 0x00A4($sp)
    lw      a1, 0x0050($sp)
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFC0
    jal     func_809F1F3C
    swc1    $f10, 0x0014($sp)
    lw      t0, 0x0058($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, t0
    bnel    $at, $zero, lbl_809FE398
    lui     $at, 0x41F0                # $at = 41F00000
lbl_809FE42C:
    lw      $ra, 0x0044($sp)
lbl_809FE430:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_809FE444:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      a0, 0x0000(a1)             # 00000000
    lw      s0, 0x02C4(a0)             # 000002C4
    addiu   s0, s0, 0xFD00             # s0 = FFFFFD00
    or      s3, s0, $zero              # s3 = FFFFFD00
    sw      s0, 0x02C4(a0)             # 000002C4
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x004C($sp)
    jal     func_8007E2C0
    or      s4, a0, $zero              # s4 = 00000000
    lw      v0, 0x02D0(s4)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x0080             # t7 = FA000080
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x01BC(s1)            # 000001BC
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lui     s7, %hi(var_809FFFD8)      # s7 = 80A00000
    trunc.w.s $f6, $f4
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   s7, s7, %lo(var_809FFFD8)  # s7 = 809FFFD8
    or      s2, $zero, $zero           # s2 = 00000000
    mfc1    t1, $f6
    lui     s8, 0xDE00                 # s8 = DE000000
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t3, t2, $at                # t3 = FFFFFF00
    sw      t3, 0x0004(v0)             # 00000004
    lw      a0, 0x02D0(s4)             # 000002D0
    lui     t6, 0x96FF                 # t6 = 96FF0000
    ori     t6, t6, 0x0080             # t6 = 96FF0080
    addiu   t4, a0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      t6, 0x0004(a0)             # 00000004
    sw      t5, 0x0000(a0)             # 00000000
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0034             # t8 = DB060034
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    sw      s0, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    or      a1, v1, $zero              # a1 = 00000000
    lui     $at, %hi(var_80A12FA4)     # $at = 80A10000
    lwc1    $f20, %lo(var_80A12FA4)($at)
    addiu   s5, $zero, 0x000F          # s5 = 0000000F
lbl_809FE530:
    lh      t9, 0x0196(s1)             # 00000196
    or      a3, $zero, $zero           # a3 = 00000000
    subu    t0, t9, s2
    addiu   t1, t0, 0x000F             # t1 = 0000000F
    div     $zero, t1, s5
    mfhi    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    multu   v0, s6
    bne     s5, $zero, lbl_809FE560
    nop
    break   # 0x01C00
lbl_809FE560:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s5, $at, lbl_809FE578
    lui     $at, 0x8000                # $at = 80000000
    bne     t1, $at, lbl_809FE578
    nop
    break   # 0x01800
lbl_809FE578:
    mflo    t2
    addu    s0, s1, t2
    lwc1    $f12, 0x02DC(s0)           # FFFFFFDC
    lwc1    $f14, 0x02E0(s0)           # FFFFFFE0
    jal     func_800AA7F4
    lw      a2, 0x02E4(s0)             # FFFFFFE4
    lwc1    $f12, 0x03B8(s0)           # 000000B8
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x03B4(s0)           # 000000B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lwc1    $f12, 0x0050(s1)           # 00000050
    lwc1    $f14, 0x0054(s1)           # 00000054
    lw      a2, 0x0058(s1)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f12, $f20
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AB8D8
    or      a0, s3, $zero              # a0 = FFFFFD00
    lw      a0, 0x02D0(s4)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, a0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s4)             # 000002D0
    sw      s3, 0x0004(a0)             # 00000004
    sw      t4, 0x0000(a0)             # 00000000
    lw      v1, 0x02D0(s4)             # 000002D0
    sll     t6, s2,  2
    addu    t7, s7, t6
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s4)             # 000002D0
    sw      s8, 0x0000(v1)             # 00000000
    lw      t8, 0x0000(t7)             # 00000000
    addiu   s2, s2, 0x0001             # s2 = 00000001
    or      a1, v1, $zero              # a1 = 00000000
    sw      t8, 0x0004(v1)             # 00000004
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000C
    bne     $at, $zero, lbl_809FE530
    addiu   s3, s3, 0x0040             # s3 = FFFFFD40
    lwc1    $f12, 0x0024(s1)           # 00000024
    lwc1    $f14, 0x0028(s1)           # 00000028
    lw      a2, 0x002C(s1)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, a0, $at
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, %hi(var_80A12FA8)     # $at = 80A10000
    jal     func_80026D90
    lwc1    $f12, %lo(var_80A12FA8)($at)
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s0, 0x0008             # t9 = FFFFFD08
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      t0, 0x0000(s0)             # FFFFFD00
    lw      t1, 0x004C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t1)             # 00000000
    sw      v0, 0x0004(s0)             # FFFFFD04
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t3, %hi(var_80A02F58)      # t3 = 80A00000
    addiu   t3, t3, %lo(var_80A02F58)  # t3 = 80A02F58
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      s8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s4)             # 000002D0
    lui     t5, %hi(var_80A02FC8)      # t5 = 80A00000
    addiu   t5, t5, %lo(var_80A02FC8)  # t5 = 80A02FC8
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      s8, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
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
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_809FE718:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s2, 0x0058($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a0, 0x00D0($sp)
    lw      t6, 0x00D0($sp)
    lui     s0, 0x0001                 # s0 = 00010000
    lui     $at, 0x3F80                # $at = 3F800000
    addu    s0, s0, t6
    lw      s0, 0x1E10(s0)             # 00011E10
    lw      s7, 0x1C44(t6)             # 00001C44
    lui     s5, %hi(var_80A13F80)      # s5 = 80A10000
    mtc1    $at, $f30                  # $f30 = 1.00
    swc1    $f0, 0x00A0($sp)
    swc1    $f0, 0x00A4($sp)
    addiu   s5, s5, %lo(var_80A13F80)  # s5 = 80A13F80
    or      s8, $zero, $zero           # s8 = 00000000
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    addiu   s4, $zero, 0x00FF          # s4 = 000000FF
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_809FE7A0:
    lbu     t7, 0x0000(s0)             # 00010000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    t7, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000001
    lwc1    $f0, 0x0010(s0)            # 00010010
    lwc1    $f4, 0x0004(s0)            # 00010004
    lwc1    $f2, 0x0014(s0)            # 00010014
    lwc1    $f8, 0x0008(s0)            # 00010008
    lwc1    $f12, 0x0018(s0)           # 00010018
    lwc1    $f16, 0x000C(s0)           # 0001000C
    add.s   $f6, $f4, $f0
    lwc1    $f4, 0x001C(s0)            # 0001001C
    lbu     t8, 0x0001(s0)             # 00010001
    add.s   $f10, $f8, $f2
    lwc1    $f8, 0x0020(s0)            # 00010020
    swc1    $f6, 0x0004(s0)            # 00010004
    add.s   $f18, $f16, $f12
    lwc1    $f16, 0x0024(s0)           # 00010024
    swc1    $f10, 0x0008(s0)           # 00010008
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x000C(s0)           # 0001000C
    lbu     v0, 0x0000(s0)             # 00010000
    add.s   $f10, $f2, $f8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0001(s0)             # 00010001
    add.s   $f18, $f12, $f16
    swc1    $f6, 0x0010(s0)            # 00010010
    swc1    $f10, 0x0014(s0)           # 00010014
    bne     v0, $at, lbl_809FE858
    swc1    $f18, 0x0018(s0)           # 00010018
    lui     $at, %hi(var_80A12FAC)     # $at = 80A10000
    lwc1    $f6, %lo(var_80A12FAC)($at)
    lwc1    $f4, 0x0044(s0)            # 00010044
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    add.s   $f8, $f4, $f6
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x0008(s0)            # 00010008
    lwc1    $f10, 0x0048(s0)           # 00010048
    swc1    $f8, 0x0044(s0)            # 00010044
    c.lt.s  $f4, $f6
    add.s   $f18, $f10, $f16
    bc1f    lbl_809FEEE0
    swc1    $f18, 0x0048(s0)           # 00010048
    beq     $zero, $zero, lbl_809FEEE0
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FE858:
    bne     s3, v0, lbl_809FE8C4
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     $at, %hi(var_80A12FB0)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12FB0)($at)
    lui     $at, %hi(var_80A12FB4)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12FB4)($at)
    lh      t0, 0x002E(s0)             # 0001002E
    lh      t1, 0x0030(s0)             # 00010030
    add.s   $f16, $f0, $f10
    lwc1    $f8, 0x003C(s0)            # 0001003C
    subu    t2, t0, t1
    sh      t2, 0x002E(s0)             # 0001002E
    add.s   $f18, $f8, $f16
    lh      v0, 0x002E(s0)             # 0001002E
    bgtz    v0, lbl_809FE8A8
    swc1    $f18, 0x003C(s0)           # 0001003C
    sh      $zero, 0x002E(s0)          # 0001002E
    lh      v0, 0x002E(s0)             # 0001002E
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FE8A8:
    sh      v0, 0x002C(s0)             # 0001002C
    lh      t3, 0x002C(s0)             # 0001002C
    slti    $at, t3, 0x0100
    bnel    $at, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000002
    beq     $zero, $zero, lbl_809FEEE0
    sh      s4, 0x002C(s0)             # 0001002C
lbl_809FE8C4:
    bne     v0, $at, lbl_809FE9C0
    nop
    lw      a1, 0x0000(s5)             # 80A13F80
    lwc1    $f6, 0x0004(s0)            # 00010004
    lwc1    $f18, 0x000C(s0)           # 0001000C
    lwc1    $f4, 0x0268(a1)            # 00000268
    lwc1    $f16, 0x0270(a1)           # 00000270
    lwc1    $f8, 0x0008(s0)            # 00010008
    sub.s   $f20, $f4, $f6
    lwc1    $f10, 0x026C(a1)           # 0000026C
    sub.s   $f22, $f16, $f18
    mov.s   $f12, $f20
    sub.s   $f24, $f10, $f8
    jal     func_800CD76C
    mov.s   $f14, $f22
    mul.s   $f26, $f20, $f20
    swc1    $f0, 0x00B0($sp)
    mov.s   $f12, $f24
    mul.s   $f28, $f22, $f22
    add.s   $f0, $f26, $f28
    jal     func_800CD76C
    sqrt.s  $f14, $f0
    lwc1    $f4, 0x0038(s0)            # 00010038
    neg.s   $f20, $f0
    lwc1    $f12, 0x00B0($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800AAB94
    swc1    $f4, 0x00A8($sp)
    mov.s   $f12, $f20
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFD0
    jal     func_800AB958
    addiu   a1, s0, 0x0010             # a1 = 00010010
    mfc1    a2, $f30
    addiu   a0, s0, 0x0038             # a0 = 00010038
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    mul.s   $f6, $f24, $f24
    lh      t4, 0x002C(s0)             # 0001002C
    addiu   t5, t4, 0x000A             # t5 = 0000000A
    sh      t5, 0x002C(s0)             # 0001002C
    lh      t6, 0x002C(s0)             # 0001002C
    add.s   $f10, $f26, $f6
    slti    $at, t6, 0x0100
    add.s   $f0, $f10, $f28
    bne     $at, $zero, lbl_809FE98C
    sqrt.s  $f0, $f0
    sh      s4, 0x002C(s0)             # 0001002C
lbl_809FE98C:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    nop
    c.lt.s  $f0, $f8
    nop
    bc1t    lbl_809FE9B8
    nop
    lbu     t7, 0x0001(s0)             # 00010001
    slti    $at, t7, 0x0047
    bnel    $at, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000003
lbl_809FE9B8:
    beq     $zero, $zero, lbl_809FEEE0
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FE9C0:
    bne     s6, v0, lbl_809FEA64
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     $at, %hi(var_80A12FB8)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12FB8)($at)
    lui     $at, %hi(var_80A12FBC)     # $at = 80A10000
    lwc1    $f18, %lo(var_80A12FBC)($at)
    lh      t8, 0x002E(s0)             # 0001002E
    lh      t9, 0x0030(s0)             # 00010030
    add.s   $f4, $f0, $f18
    lwc1    $f16, 0x003C(s0)           # 0001003C
    subu    t0, t8, t9
    sh      t0, 0x002E(s0)             # 0001002E
    add.s   $f6, $f16, $f4
    lh      v0, 0x002E(s0)             # 0001002E
    bgtz    v0, lbl_809FEA10
    swc1    $f6, 0x003C(s0)            # 0001003C
    sh      $zero, 0x002E(s0)          # 0001002E
    lh      v0, 0x002E(s0)             # 0001002E
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FEA10:
    sh      v0, 0x002C(s0)             # 0001002C
    lh      t1, 0x002C(s0)             # 0001002C
    slti    $at, t1, 0x0100
    bnel    $at, $zero, lbl_809FEA2C
    lui     $at, 0x4170                # $at = 41700000
    sh      s4, 0x002C(s0)             # 0001002C
    lui     $at, 0x4170                # $at = 41700000
lbl_809FEA2C:
    mtc1    $at, $f10                  # $f10 = 15.00
    lwc1    $f0, 0x0040(s0)            # 00010040
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    div.s   $f8, $f0, $f10
    mfc1    a2, $f30
    mfc1    a1, $f0
    addiu   a0, s0, 0x0038             # a0 = 00010038
    mul.s   $f16, $f8, $f18
    mfc1    a3, $f16
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000004
lbl_809FEA64:
    bnel    v0, $at, lbl_809FEBCC
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t2, 0x002E(s0)             # 0001002E
    lui     $at, %hi(var_80A12FC4)     # $at = 80A10000
    bne     t2, $zero, lbl_809FEB18
    nop
    lui     $at, %hi(var_80A12FC0)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12FC0)($at)
    trunc.w.s $f4, $f0
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    mfc1    s1, $f4
    nop
    sll     s1, s1, 16
    sra     s1, s1, 16
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    jal     func_80026D90
    sra     s1, s1, 16
    lw      t4, 0x0000(s5)             # 80A13F80
    sll     s2, s1,  2
    subu    s2, s2, s1
    sll     s2, s2,  2
    addu    t5, t4, s2
    lwc1    $f6, 0x02DC(t5)            # 000002DC
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f10, $f0, $f6
    jal     func_80026D90
    swc1    $f10, 0x0004(s0)           # 00010004
    lw      t6, 0x0000(s5)             # 80A13F80
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    addu    t7, t6, s2
    lwc1    $f8, 0x02E0(t7)            # 000002E0
    add.s   $f18, $f0, $f8
    jal     func_80026D90
    swc1    $f18, 0x0008(s0)           # 00010008
    lw      t8, 0x0000(s5)             # 80A13F80
    addu    t9, t8, s2
    lwc1    $f16, 0x02E4(t9)           # 000002E4
    add.s   $f4, $f0, $f16
    beq     $zero, $zero, lbl_809FEB8C
    swc1    $f4, 0x000C(s0)            # 0001000C
lbl_809FEB18:
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12FC4)($at)
    trunc.w.s $f6, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    s1, $f6
    nop
    sll     s1, s1, 16
    jal     func_80026D90
    sra     s1, s1, 16
    sll     t1, s1,  2
    subu    t1, t1, s1
    sll     t1, t1,  2
    addu    s2, s7, t1
    lwc1    $f10, 0x08F8(s2)           # 000008F8
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f12                  # $f12 = 15.00
    add.s   $f8, $f0, $f10
    jal     func_80026D90
    swc1    $f8, 0x0004(s0)            # 00010004
    lwc1    $f18, 0x08FC(s2)           # 000008FC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f16, $f0, $f18
    jal     func_80026D90
    swc1    $f16, 0x0008(s0)           # 00010008
    lwc1    $f4, 0x0900(s2)            # 00000900
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x000C(s0)            # 0001000C
lbl_809FEB8C:
    lui     $at, %hi(var_80A12FC8)     # $at = 80A10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A12FC8)($at)
    lui     $at, %hi(var_80A12FCC)     # $at = 80A10000
    lwc1    $f8, %lo(var_80A12FCC)($at)
    lwc1    $f10, 0x003C(s0)           # 0001003C
    lbu     t2, 0x0001(s0)             # 00010001
    add.s   $f18, $f0, $f8
    slti    $at, t2, 0x0015
    add.s   $f16, $f10, $f18
    bne     $at, $zero, lbl_809FEEE0
    swc1    $f16, 0x003C(s0)           # 0001003C
    sb      $zero, 0x0000(s0)          # 00010000
    beq     $zero, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000005
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809FEBCC:
    bnel    v0, $at, lbl_809FEC50
    addiu   $at, $zero, 0x0005         # $at = 00000005
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x003C(s0)            # 0001003C
    lw      a0, 0x00D0($sp)
    lui     $at, %hi(var_80A12FD4)     # $at = 80A10000
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_809FEC2C
    nop
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80049708
    or      a0, v0, $zero              # a0 = 00000000
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    cvt.s.w $f10, $f8
    lui     $at, %hi(var_80A12FD0)     # $at = 80A10000
    lwc1    $f4, %lo(var_80A12FD0)($at)
    div.s   $f16, $f10, $f18
    mul.s   $f6, $f16, $f4
    beq     $zero, $zero, lbl_809FEC34
    swc1    $f6, 0x0044(s0)            # 00010044
lbl_809FEC2C:
    lwc1    $f8, %lo(var_80A12FD4)($at)
    swc1    $f8, 0x0044(s0)            # 00010044
lbl_809FEC34:
    lbu     t3, 0x0001(s0)             # 00010001
    slti    $at, t3, 0x000D
    bnel    $at, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000006
    beq     $zero, $zero, lbl_809FEEE0
    sb      $zero, 0x0000(s0)          # 00010000
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_809FEC50:
    bne     v0, $at, lbl_809FED00
    addiu   a0, s0, 0x0034             # a0 = 00010034
    lh      t4, 0x0030(s0)             # 00010030
    lh      v0, 0x002E(s0)             # 0001002E
    mfc1    a2, $f30
    addiu   t5, t4, 0x0001             # t5 = 00000001
    bne     v0, $zero, lbl_809FEC98
    sh      t5, 0x0030(s0)             # 00010030
    lh      t6, 0x002C(s0)             # 0001002C
    addiu   t7, t6, 0x001A             # t7 = 0000001A
    sh      t7, 0x002C(s0)             # 0001002C
    lh      t8, 0x002C(s0)             # 0001002C
    slti    $at, t8, 0x0100
    bnel    $at, $zero, lbl_809FECD4
    lui     a3, 0x3C23                 # a3 = 3C230000
    sh      s4, 0x002C(s0)             # 0001002C
    beq     $zero, $zero, lbl_809FECD0
    sh      s3, 0x002E(s0)             # 0001002E
lbl_809FEC98:
    bne     s3, v0, lbl_809FECA8
    nop
    beq     $zero, $zero, lbl_809FECD0
    sh      s6, 0x002E(s0)             # 0001002E
lbl_809FECA8:
    bnel    s6, v0, lbl_809FECD4
    lui     a3, 0x3C23                 # a3 = 3C230000
    lh      t9, 0x002C(s0)             # 0001002C
    addiu   t0, t9, 0xFFE6             # t0 = FFFFFFE6
    sh      t0, 0x002C(s0)             # 0001002C
    lh      t1, 0x002C(s0)             # 0001002C
    bgezl   t1, lbl_809FECD4
    lui     a3, 0x3C23                 # a3 = 3C230000
    sh      $zero, 0x002C(s0)          # 0001002C
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FECD0:
    lui     a3, 0x3C23                 # a3 = 3C230000
lbl_809FECD4:
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    jal     func_80064280
    lw      a1, 0x0038(s0)             # 00010038
    mfc1    a2, $f30
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    addiu   a0, s0, 0x0040             # a0 = 00010040
    jal     func_80064280
    lui     a1, 0x4080                 # a1 = 40800000
    beq     $zero, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000007
lbl_809FED00:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_809FEDDC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    s8, $zero, lbl_809FED20
    lh      t2, 0x0030(s0)             # 00010030
    jal     func_800646F0
    addiu   a0, $zero, 0x3147          # a0 = 00003147
    lh      t2, 0x0030(s0)             # 00010030
lbl_809FED20:
    lh      v0, 0x002E(s0)             # 0001002E
    addiu   a0, s0, 0x0034             # a0 = 00010034
    addiu   t3, t2, 0x0001             # t3 = 00000001
    bne     v0, $zero, lbl_809FED5C
    sh      t3, 0x0030(s0)             # 00010030
    lh      t4, 0x002C(s0)             # 0001002C
    addiu   t5, t4, 0x0064             # t5 = 00000064
    sh      t5, 0x002C(s0)             # 0001002C
    lh      t6, 0x002C(s0)             # 0001002C
    slti    $at, t6, 0x0100
    bnel    $at, $zero, lbl_809FEDA8
    mfc1    a2, $f30
    sh      s4, 0x002C(s0)             # 0001002C
    beq     $zero, $zero, lbl_809FEDA4
    sh      s3, 0x002E(s0)             # 0001002E
lbl_809FED5C:
    bne     s3, v0, lbl_809FED7C
    nop
    lbu     t7, 0x0001(s0)             # 00010001
    slti    $at, t7, 0x0014
    bnel    $at, $zero, lbl_809FEDA8
    mfc1    a2, $f30
    beq     $zero, $zero, lbl_809FEDA4
    sh      s6, 0x002E(s0)             # 0001002E
lbl_809FED7C:
    bnel    s6, v0, lbl_809FEDA8
    mfc1    a2, $f30
    lh      t8, 0x002C(s0)             # 0001002C
    addiu   t9, t8, 0xFFE2             # t9 = FFFFFFE2
    sh      t9, 0x002C(s0)             # 0001002C
    lh      t0, 0x002C(s0)             # 0001002C
    bgezl   t0, lbl_809FEDA8
    mfc1    a2, $f30
    sh      $zero, 0x002C(s0)          # 0001002C
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FEDA4:
    mfc1    a2, $f30
lbl_809FEDA8:
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_80064280
    lw      a1, 0x0038(s0)             # 00010038
    mfc1    a1, $f30
    mfc1    a2, $f30
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    jal     func_80064280
    addiu   a0, s0, 0x0040             # a0 = 00010040
    beq     $zero, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000008
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_809FEDDC:
    bne     v0, $at, lbl_809FEEE0
    addiu   a0, s0, 0x0034             # a0 = 00010034
    lh      t3, 0x002C(s0)             # 0001002C
    lh      t1, 0x0030(s0)             # 00010030
    mfc1    a2, $f30
    addiu   t4, t3, 0xFFE2             # t4 = FFFFFFE2
    sh      t4, 0x002C(s0)             # 0001002C
    lh      t5, 0x002C(s0)             # 0001002C
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0030(s0)             # 00010030
    bgez    t5, lbl_809FEE14
    lui     a3, 0x3E05                 # a3 = 3E050000
    sh      $zero, 0x002C(s0)          # 0001002C
    sb      $zero, 0x0000(s0)          # 00010000
lbl_809FEE14:
    lw      a1, 0x0038(s0)             # 00010038
    jal     func_80064280
    ori     a3, a3, 0x1EB8             # a3 = 3E051EB8
    lbu     t6, 0x0001(s0)             # 00010001
    slti    $at, t6, 0x0096
    beql    $at, $zero, lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 00000009
    lwc1    $f0, 0x0028(s7)            # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 0000000A
    lwc1    $f18, 0x0004(s0)           # 00010004
    lwc1    $f16, 0x0024(s7)           # 00000024
    lwc1    $f4, 0x000C(s0)            # 0001000C
    lwc1    $f6, 0x002C(s7)            # 0000002C
    sub.s   $f2, $f18, $f16
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    sub.s   $f12, $f4, $f6
    mul.s   $f8, $f2, $f2
    lwc1    $f14, 0x0034(s0)           # 00010034
    lui     $at, 0x4396                # $at = 43960000
    mul.s   $f10, $f12, $f12
    add.s   $f0, $f8, $f10
    mul.s   $f16, $f14, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 0000000B
    mtc1    $at, $f4                   # $f4 = 300.00
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    lui     a2, 0x40E0                 # a2 = 40E00000
    mul.s   $f6, $f14, $f4
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809FEEE4
    addiu   s8, s8, 0x0001             # s8 = 0000000C
    sb      t7, 0x0001(s0)             # 00010001
    lw      a1, 0x0000(s5)             # 80A13F80
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      a0, 0x00D0($sp)
    lh      a3, 0x008A(a1)             # 0000008A
    sw      t8, 0x0014($sp)
    jal     func_80022E7C
    swc1    $f8, 0x0010($sp)
lbl_809FEEE0:
    addiu   s8, s8, 0x0001             # s8 = 0000000D
lbl_809FEEE4:
    sll     s8, s8, 16
    sra     s8, s8, 16
    slti    $at, s8, 0x00C8
    bne     $at, $zero, lbl_809FE7A0
    addiu   s0, s0, 0x004C             # s0 = 0001004C
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
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_809FEF40:
    addiu   $sp, $sp, 0xFEA0           # $sp = FFFFFEA0
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     s2, 0x0001                 # s2 = 00010000
    addu    s2, s2, a1
    lw      a0, 0x0000(a1)             # 00000000
    lw      s2, 0x1E10(s2)             # 00011E10
    or      s5, $zero, $zero           # s5 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      s2, 0x014C($sp)
    jal     func_8007E2C0
    sw      a1, 0x0160($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s8, 0xFA00                 # s8 = FA000000
    lui     s7, 0xDE00                 # s7 = DE000000
    addiu   s6, $zero, 0x0009          # s6 = 00000009
lbl_809FEFA8:
    lbu     t6, 0x0000(s2)             # 00010000
    lui     s3, %hi(var_80A01700)      # s3 = 80A00000
    or      a3, $zero, $zero           # a3 = 00000000
    bnel    s6, t6, lbl_809FF0E8
    addiu   s4, s4, 0x0001             # s4 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    bne     s5, $zero, lbl_809FF000
    addiu   s3, s3, %lo(var_80A01700)  # s3 = 80A01700
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, %hi(var_80A01658)      # t1 = 80A00000
    addiu   t1, t1, %lo(var_80A01658)  # t1 = 80A01658
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_809FF000:
    lbu     t2, 0x0001(s2)             # 00010001
    andi    t3, t2, 0x0007             # t3 = 00000000
    beql    t3, $zero, lbl_809FF054
    lw      s0, 0x02C0(s1)             # 000002C0
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      s8, 0x0000(s0)             # 00000000
    lbu     t9, 0x0029(s2)             # 00010029
    lbu     t6, 0x0028(s2)             # 00010028
    lbu     t4, 0x002A(s2)             # 0001002A
    sll     t1, t9, 16
    sll     t7, t6, 24
    or      t2, t7, t1                 # t2 = 80A01658
    sll     t5, t4,  8
    or      t6, t2, t5                 # t6 = 80A01658
    ori     t8, t6, 0x00FF             # t8 = 80A016FF
    sw      t8, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809FF06C
    lwc1    $f12, 0x0004(s2)           # 00010004
    lw      s0, 0x02C0(s1)             # 000002C0
lbl_809FF054:
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0004(s2)           # 00010004
lbl_809FF06C:
    lwc1    $f14, 0x0008(s2)           # 00010008
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 0001000C
    lwc1    $f12, 0x0034(s2)           # 00010034
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0048(s2)           # 00010048
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0044(s2)           # 00010044
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x0130($sp)
    lw      a1, 0x0130($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_809FF0E8:
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x00C8
    bne     $at, $zero, lbl_809FEFA8
    addiu   s2, s2, 0x004C             # s2 = 0001004C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
lbl_809FF110:
    lbu     t2, 0x0000(s2)             # 0001004C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s6, %hi(var_80A02FC8)      # s6 = 80A00000
    bne     t2, $at, lbl_809FF230
    addiu   s6, s6, %lo(var_80A02FC8)  # s6 = 80A02FC8
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     $at, 0x0001                # $at = 00010000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s3, 0x0160($sp)
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s5, $zero, lbl_809FF190
    addu    s3, s3, $at
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     t7, 0xFFFF                 # t7 = FFFF0000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, %hi(var_80A02F58)      # t3 = 80A00000
    addiu   t3, t3, %lo(var_80A02F58)  # t3 = 80A02F58
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_809FF190:
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t2, 0x002C(s2)             # 00010078
    andi    t5, t2, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 00010050
    lwc1    $f14, 0x0008(s2)           # 00010054
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 00010058
    jal     func_800ABE54
    or      a0, s3, $zero              # a0 = 80A01700
    lwc1    $f12, 0x0034(s2)           # 00010080
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x003C(s2)           # 00010088
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x0118($sp)
    lw      a1, 0x0118($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FF230:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF110
    addiu   s2, s2, 0x004C             # s2 = 00010098
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
lbl_809FF254:
    lbu     t1, 0x0000(s2)             # 00010098
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     s6, %hi(var_80A02FC8)      # s6 = 80A00000
    bne     t1, $at, lbl_809FF390
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    bne     s5, $zero, lbl_809FF2C8
    addiu   s6, s6, %lo(var_80A02FC8)  # s6 = 80A02FC8
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     t6, 0xFFFF                 # t6 = FFFF0000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, %hi(var_80A02F58)      # t9 = 80A00000
    addiu   t9, t9, %lo(var_80A02F58)  # t9 = 80A02F58
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    andi    s5, s5, 0x00FF             # s5 = 00000001
lbl_809FF2C8:
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t1, 0x002C(s2)             # 000100C4
    andi    t3, t1, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFFFF00
    sw      t4, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 0001009C
    lwc1    $f14, 0x0008(s2)           # 000100A0
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 000100A4
    lwc1    $f12, 0x0048(s2)           # 000100E0
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0044(s2)           # 000100DC
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s2)           # 000100D4
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s2)           # 000100CC
    lwc1    $f4, 0x0038(s2)            # 000100D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12
    mul.s   $f6, $f4, $f12
    mfc1    a2, $f6
    jal     func_800AA8FC
    nop
    lui     $at, %hi(var_80A12FD8)     # $at = 80A10000
    lwc1    $f12, %lo(var_80A12FD8)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x0100($sp)
    lw      a1, 0x0100($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FF390:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF254
    addiu   s2, s2, 0x004C             # s2 = 000100E4
    or      s5, $zero, $zero           # s5 = 00000000
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s6, $zero, 0x0003          # s6 = 00000003
lbl_809FF3B8:
    lbu     t8, 0x0000(s2)             # 000100E4
    lui     s3, %hi(var_80A11CD0)      # s3 = 80A10000
    or      a3, $zero, $zero           # a3 = 00000000
    bnel    s6, t8, lbl_809FF508
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bne     s5, $zero, lbl_809FF478
    addiu   s3, s3, %lo(var_80A11CD0)  # s3 = 80A11CD0
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lh      t1, 0x002E(s2)             # 00010112
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    s5, s5, 0x00FF             # s5 = 00000001
    bnel    t1, $at, lbl_809FF448
    lw      s0, 0x02D0(s1)             # 000002D0
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0x6400                 # t4 = 64000000
    ori     t4, t4, 0xC8FF             # t4 = 6400C8FF
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     t6, 0x8200                 # t6 = 82000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_809FF478
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
lbl_809FF448:
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    lui     t3, 0xFFFF                 # t3 = FFFF0000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
lbl_809FF478:
    lwc1    $f12, 0x0004(s2)           # 000100E8
    lwc1    $f14, 0x0008(s2)           # 000100EC
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 000100F0
    lwc1    $f12, 0x0034(s2)           # 00010118
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, %hi(var_80A12FDC)     # $at = 80A10000
    lwc1    $f10, %lo(var_80A12FDC)($at)
    lwc1    $f8, 0x003C(s2)            # 00010120
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AA9E0
    nop
    lwc1    $f12, 0x003C(s2)           # 00010120
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x00E4($sp)
    lw      a1, 0x00E4($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_809FF508:
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF3B8
    addiu   s2, s2, 0x004C             # s2 = 00010130
    lui     s6, 0xDB06                 # s6 = DB060000
    lw      s2, 0x014C($sp)
    ori     s6, s6, 0x0020             # s6 = DB060020
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, $zero, 0x0003          # s5 = 00000003
lbl_809FF530:
    lbu     t6, 0x0000(s2)             # 00010130
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t6, $at, lbl_809FF6F0
    addiu   s4, s4, 0x0001             # s4 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, %hi(var_80A0003C)      # t4 = 80A00000
    addiu   t4, t4, %lo(var_80A0003C)  # t4 = 80A0003C
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lbu     t1, 0x0001(s2)             # 00010131
    multu   t1, s5
    mflo    t3
    addu    v0, t3, t4
    lbu     t5, 0x0002(v0)             # 00000002
    lbu     t9, 0x0000(v0)             # 00000000
    lbu     t4, 0x0001(v0)             # 00000001
    sll     t6, t5,  8
    sll     t7, t9, 24
    or      t1, t6, t7                 # t1 = 00000008
    sll     t2, t4, 16
    or      t5, t1, t2                 # t5 = 00000008
    ori     t8, t5, 0x00FF             # t8 = 000000FF
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t4, %hi(var_80A00064)      # t4 = 80A00000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lbu     t7, 0x0001(s2)             # 00010131
    addiu   t4, t4, %lo(var_80A00064)  # t4 = 80A00064
    lui     s3, %hi(var_80A0C020)      # s3 = 80A10000
    multu   t7, s5
    addiu   s3, s3, %lo(var_80A0C020)  # s3 = 80A0C020
    lui     v0, %hi(var_80A13F80)      # v0 = 80A10000
    mflo    t3
    addu    v1, t3, t4
    lbu     t2, 0x0002(v1)             # 00000002
    lbu     t9, 0x0000(v1)             # 00000000
    lbu     t4, 0x0001(v1)             # 00000001
    sll     t5, t2,  8
    sll     t6, t9, 24
    or      t7, t5, t6                 # t7 = FB000008
    sll     t1, t4, 16
    or      t2, t7, t1                 # t2 = FB000008
    sw      t2, 0x0004(s0)             # 00000004
    lw      v0, %lo(var_80A13F80)(v0)
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0250(v0)           # 80A10250
    lwc1    $f14, 0x0254(v0)           # 80A10254
    jal     func_800AA7F4
    lw      a2, 0x0258(v0)             # 80A10258
    lwc1    $f12, 0x0048(s2)           # 00010178
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s2)           # 0001016C
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s2)           # 00010164
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0044(s2)           # 00010174
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x00D0($sp)
    lw      a2, 0x00D0($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, %hi(var_80A00008)      # a0 = 80A00000
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lbu     t6, 0x0001(s2)             # 00010131
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t6,  2
    addu    a0, a0, t3
    lw      a0, %lo(var_80A00008)(a0)
    sll     t7, a0,  4
    srl     t1, t7, 28
    sll     t2, t1,  2
    addu    t8, t8, t2
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t4, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t4, t8
    addu    t5, t9, $at
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_809FF6F0:
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF530
    addiu   s2, s2, 0x004C             # s2 = 0001017C
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, $zero, 0x0005          # s5 = 00000005
lbl_809FF710:
    lbu     t3, 0x0000(s2)             # 0001017C
    lui     s3, %hi(var_80A0F638)      # s3 = 80A10000
    lui     t5, 0xFB00                 # t5 = FB000000
    bne     s5, t3, lbl_809FF860
    addiu   s3, s3, %lo(var_80A0F638)  # s3 = 80A0F638
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t4, 0x002C(s2)             # 000101A8
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    andi    t8, t4, 0x00FF             # t8 = 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x6446                 # t6 = 64460000
    ori     t6, t6, 0x0080             # t6 = 64460080
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lbu     v0, 0x0001(s2)             # 0001017D
    lw      t7, 0x0160($sp)
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    $at, $zero, v0
    lw      a0, 0x0000(t7)             # 00000008
    sll     t9, $at,  2
    addu    t9, t9, $at
    sll     t9, t9,  2
    sll     t8, v0,  1
    sw      t8, 0x001C($sp)
    sw      t9, 0x0020($sp)
    sw      t6, 0x0028($sp)
    sw      t5, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    sw      s0, 0x00B8($sp)
    jal     func_8007EB84
    sll     a2, v0,  2
    lw      t0, 0x00B8($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 00010180
    lwc1    $f14, 0x0008(s2)           # 00010184
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 00010188
    lwc1    $f12, 0x0034(s2)           # 000101B0
    lwc1    $f16, 0x0040(s2)           # 000101BC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    mul.s   $f14, $f16, $f12
    jal     func_800AA8FC
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x00B4($sp)
    lw      a1, 0x00B4($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FF860:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF710
    addiu   s2, s2, 0x004C             # s2 = 000101C8
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, $zero, 0x0006          # s5 = 00000006
lbl_809FF884:
    lbu     t2, 0x0000(s2)             # 000101C8
    lui     s3, %hi(var_80A0F750)      # s3 = 80A10000
    lui     t1, 0xFB00                 # t1 = FB000000
    bne     s5, t2, lbl_809FF9DC
    addiu   s3, s3, %lo(var_80A0F750)  # s3 = 80A0F750
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t5, 0x002C(s2)             # 000101F4
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t3, t6, $at                # t3 = FFFFFF00
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xC864                 # t2 = C8640000
    ori     t2, t2, 0x0080             # t2 = C8640080
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lbu     v0, 0x0001(s2)             # 000101C9
    lw      t8, 0x0160($sp)
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    subu    $at, $zero, v0
    lw      a0, 0x0000(t8)             # E7000000
    sll     t7, $at,  2
    addu    t7, t7, $at
    sll     t7, t7,  2
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sll     t3, v0,  1
    sw      t3, 0x001C($sp)
    sw      t2, 0x0028($sp)
    sw      t7, 0x0020($sp)
    sw      t1, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      s0, 0x00A0($sp)
    jal     func_8007EB84
    sll     a2, v0,  2
    lw      t0, 0x00A0($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 000101CC
    lwc1    $f14, 0x0008(s2)           # 000101D0
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 000101D4
    lwc1    $f12, 0x0034(s2)           # 000101FC
    lwc1    $f18, 0x0040(s2)           # 00010208
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    mul.s   $f14, $f18, $f12
    jal     func_800AA8FC
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x009C($sp)
    lw      a1, 0x009C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FF9DC:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FF884
    addiu   s2, s2, 0x004C             # s2 = 00010214
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, $zero, 0x0007          # s5 = 00000007
lbl_809FFA00:
    lbu     t5, 0x0000(s2)             # 00010214
    lui     s3, %hi(var_80A0E7A0)      # s3 = 80A10000
    lui     t9, 0xFB00                 # t9 = FB000000
    bne     s5, t5, lbl_809FFB74
    addiu   s3, s3, %lo(var_80A0E7A0)  # s3 = 80A0E7A0
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t1, 0x002C(s2)             # 00010240
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t4, t2, $at                # t4 = FFFFAA00
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x96FF                 # t5 = 96FF0000
    ori     t5, t5, 0x0080             # t5 = 96FF0080
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t3, 0x0160($sp)
    lbu     a2, 0x0001(s2)             # 00010215
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    lw      a0, 0x0000(t3)             # E7000000
    addu    $at, a2, $zero
    sll     a2, a2,  2
    subu    a2, a2, $at
    sll     a2, a2,  3
    addu    a2, a2, $at
    sll     a2, a2,  2
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0028($sp)
    sw      a2, 0x001C($sp)
    sw      t4, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t7, 0x0010($sp)
    jal     func_8007EB84
    sw      s0, 0x0088($sp)
    lw      t0, 0x0088($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 00010218
    lwc1    $f14, 0x0008(s2)           # 0001021C
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 00010220
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f0                   # $f0 = 200.00
    lwc1    $f4, 0x0034(s2)            # 00010248
    lui     $at, %hi(var_80A12FE0)     # $at = 80A10000
    lwc1    $f2, %lo(var_80A12FE0)($at)
    mul.s   $f6, $f4, $f0
    lwc1    $f8, 0x0040(s2)            # 00010254
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f8, $f0
    div.s   $f12, $f6, $f2
    div.s   $f14, $f10, $f2
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x0084($sp)
    lw      a1, 0x0084($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FFB74:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FFA00
    addiu   s2, s2, 0x004C             # s2 = 00010260
    lw      s2, 0x014C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s6, $zero, 0x0008          # s6 = 00000008
lbl_809FFB98:
    lbu     t3, 0x0000(s2)             # 00010260
    lui     s5, %hi(var_80A0DD38)      # s5 = 80A10000
    addiu   s5, s5, %lo(var_80A0DD38)  # s5 = 80A0DD38
    bne     s6, t3, lbl_809FFD00
    or      a1, $zero, $zero           # a1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     $at, 0x96AA                # $at = 96AA0000
    lui     t1, 0xDB06                 # t1 = DB060000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lh      t4, 0x002C(s2)             # 0001028C
    ori     t1, t1, 0x0028             # t1 = DB060028
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t8, t4, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 96AA0000
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t3, $zero, 0xFF80          # t3 = FFFFFF80
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x0160($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x0000(t2)             # 00000008
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lbu     v0, 0x0001(s2)             # 00010261
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s3, t2, $at
    subu    $at, $zero, v0
    sll     t6, $at,  2
    addu    t6, t6, $at
    sll     t6, t6,  2
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sll     t5, v0,  1
    sw      t5, 0x001C($sp)
    sw      t3, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0020($sp)
    jal     func_8007EB84
    sw      s0, 0x0070($sp)
    lw      t0, 0x0070($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f12, 0x0004(s2)           # 00010264
    lwc1    $f14, 0x0008(s2)           # 00010268
    jal     func_800AA7F4
    lw      a2, 0x000C(s2)             # 0001026C
    jal     func_800ABE54
    or      a0, s3, $zero              # a0 = 80A0E7A0
    lwc1    $f12, 0x0034(s2)           # 00010294
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      s0, 0x006C($sp)
    lw      a1, 0x006C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_809FFD00:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0096
    bne     $at, $zero, lbl_809FFB98
    addiu   s2, s2, 0x004C             # s2 = 000102AC
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0038($sp)
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
    addiu   $sp, $sp, 0x0160           # $sp = 00000000
    nop

.section .data

var_809FFD50: .word 0x00E80900, 0x00000035, 0x00E10000, 0x0000070C
.word func_809F2630
.word func_809F2BD4
.word func_809F8A98
.word func_809FBF9C
var_809FFD70: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFE, 0x00000000, 0x01050100, \
0x00140050, 0xFFCE0000, 0x00000000
var_809FFD9C: .word \
0x0A110939, 0x10010000, 0x06000000, 0x00100700, \
0x00080000, 0x0D900740, 0x00000000, 0x01010100, \
0x0014001E, 0xFFF10000, 0x00000000
var_809FFDC8: .word \
0x000C0A0C, 0x0E100C0E, 0x100C0E10, 0x0C0E100A, \
0x100E0000
var_809FFDDC: .word 0x00000000, 0x00000000, 0x00000000
var_809FFDE8: .word 0xFFAF559B, 0xCD9B9B7D, 0x37000000
var_809FFDF4: .word 0x801F0005, 0x8917003D, 0xB86C0000, 0x304C0000
var_809FFE04: .word \
0x00000028, 0x00000000, 0x003201AE, 0xFFEC001E, \
0x0190000A, 0x003701B8, 0x0000003C, 0x012C0000, \
0x0111FF6A, 0x000000B4, 0xFEFC0000, 0x009BFED4, \
0xFFE2003C, 0x01B80014, 0x00190186, 0xFFCE008C, \
0xFE980032, 0x005CFE7A, 0xFFF60108, 0xFF870005, \
0x010AFF60, 0xFFF300C8, 0xFECA0000, 0x007DFE66, \
0x00000028, 0xFFCE0000, 0x002300E6, 0x0000008C, \
0xFF060000, 0x0073FDC6, 0xFE660096, 0xFF7E0032, \
0x009BFF56, 0x00000082, 0xFF1A0000, 0x007DF830, \
0xFFFE0093, 0xFEDBFF38, 0x0159F830
var_809FFEA0: .word 0x780000FF
var_809FFEA4: .word 0x780000FF
var_809FFEA8: .word 0x0600B4AC, 0x0600BC28
var_809FFEB0: .word 0x001A0014
var_809FFEB4: .word \
0x3F800000, 0x40400000, 0x00000000, 0x40E00000, \
0x41500000, 0x40800000, 0x40C00000, 0x41300000, \
0x40A00000, 0x40000000, 0x41000000, 0x41600000, \
0x41200000, 0x41400000, 0x41100000
var_809FFEF0: .byte 0xFF, 0xFF
var_809FFEF2: .byte 0x01, 0xFF
var_809FFEF4: .byte 0x03, 0x04
var_809FFEF6: .byte 0x05, 0xFF
var_809FFEF8: .byte 0x06, 0x07
var_809FFEFA: .byte 0x08
var_809FFEFB: .word 0xFFFFFFFF, 0xFFFFFFFF
var_809FFF03: .byte 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00
var_809FFF10: .word 0xC3FA0000, 0x43480000, 0xC3960000
var_809FFF1C: .word 0xC3FA0000, 0x43480000, 0x43960000
var_809FFF28: .word 0x00000000, 0x00000000, 0x00000000
var_809FFF34: .word 0x00000000, 0x00000000, 0x00000000
var_809FFF40: .word 0x00000000, 0x00000000, 0x00000000
var_809FFF4C: .word 0x44A28000, 0x00000000, 0x00000000
var_809FFF58: .word 0x44160000, 0x43D20000, 0x42C80000
var_809FFF64: .word 0x00010002, 0x00030003, 0x00020001
var_809FFF70: .word 0x00020003, 0x00040004, 0x00040003, 0x00020000
var_809FFF80: .word 0x00020003, 0x00040004, 0x00040004, 0x00030002
var_809FFF90: .word \
0x00020004, 0x00050005, 0x00060006, 0x00060006, \
0x00050005, 0x00040002
var_809FFFA8: .word \
0x0001FFFF, 0x00010001, 0x00030004, 0x00010006, \
0x00070002, 0x0009000A, 0x0002000C, 0x000D0000
var_809FFFC8: .word 0x03020201, 0x03030103, 0x03010003, 0x01000300
var_809FFFD8: .word var_80A11938
.word var_80A11900
.word var_80A118C8
.word var_80A11890
.word var_80A11858
.word var_80A11820
.word var_80A117E8
.word var_80A117B0
.word var_80A11778
.word var_80A11740
.word var_80A11708
.word var_80A116D0
var_80A00008: .word var_80A02FE0
.word var_80A02FE0
.word var_80A03BE0
.word var_80A047E0
.word var_80A053E0
.word var_80A05FE0
.word var_80A06BE0
.word var_80A077E0
.word var_80A083E0
.word var_80A08FE0
.word var_80A09BE0
.word var_80A0A7E0
.word var_80A0B3E0
var_80A0003C: .word \
0x000000FF, 0xFFFFE7FA, 0xE7D0F5D0, 0xB9F0B9A2, \
0xEBA28BE6, 0x8B73E173, 0x5CDC5C45, 0xD7452ED2, \
0x2E17CD17, 0x00C80000
var_80A00064: .word \
0x000000FF, 0xFF00F0E7, 0x17E2D02E, 0xD4B945C6, \
0xA25CB88B, 0x73AA738B, 0x9C5CA28E, 0x45B9802E, \
0xD07217E7, 0x6400FF00, 0x00000000, 0x00000000, \
0x00000000
var_80A00098: .word \
0xFF9C0000, 0xFF9C0000, 0x00000800, 0xFFFFFFFF, \
0x00640000, 0xFF9C0000, 0x08000800, 0xFFFFFFFF, \
0x00640000, 0x00640000, 0x08000000, 0xFFFFFFFF, \
0xFF9C0000, 0x00640000, 0x00000000, 0xFFFFFFFF
var_80A000D8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xDF000000, 0x00000000
var_80A000F8: .word \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A00098
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A00128: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000106, \
0x07010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000935, \
0x3D0B0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00011F93, \
0xA5290300, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x000D5BDB, \
0xE3731301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x042FB5F7, \
0xFAC84007, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x147AE7FE, \
0xFFEE931C, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000006, 0x40C8FAFF, \
0xFFFCD854, 0x0A000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000011C, 0x95EFFFFF, \
0xFFFFF3A3, 0x21020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000A54, 0xDBFDFFFF, \
0xFFFFFEDF, 0x600D0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000221A0, 0xF3FFFFFF, \
0xFFFFFFF6, 0xB52D0300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000E60DD, 0xFDFFFFFF, \
0xFFFFFFFE, 0xE7781501, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0432B5F6, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFAC94407, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x1884E9FE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFF09C20, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x48D0FBFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDDE5D, 0x0C000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0000011E, 0x9BF1FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF5A9, 0x23020000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000B56, 0xDBFDFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFEE0, 0x630F0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x000225A8, 0xF4FFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFF8, 0xBC340400, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x000F69E1, 0xFEFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFE, 0xEA831701, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0433BCF8, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFBCF4708, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x1985EAFE, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFF19D23, 0x02000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000000A, 0x52D5FCFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDDF67, 0x0E000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000222, 0xA3EDF8F9, 0xF9F9F9F9, 0xF9F9F9F9, \
0xF9F9F9F9, 0xF9F9F9F9, 0xF9F9F0AF, 0x26020000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000083D, 0xA4BBBCBC, 0xBCBCBCBC, 0xBCBCBCBC, \
0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBBA6, 0x450A0000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0001113E, 0x36262323, 0x23232323, 0x23232323, \
0x23232323, 0x23232323, 0x23232534, 0x44180300, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0008315C, 0x3A0B0101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010933, 0x5E3B0B00, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02185269, 0x59200400, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00021852, 0x69592104, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0B3A656B, 0x66430E01, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000B3A65, 0x6B66430E, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000004, \
0x225A6A69, 0x695E2C07, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x04225A6A, 0x69695E2B, \
0x06000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000110, \
0x48676A69, 0x69695118, 0x02000000, 0x00000000, \
0x00000000, 0x00000001, 0x1148676A, 0x696A684D, \
0x12010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000529, \
0x606A6969, 0x696A6437, 0x09000000, 0x00000000, \
0x00000000, 0x00000007, 0x2F616A69, 0x69696A62, \
0x2F070000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00011149, \
0x686A6969, 0x69696953, 0x18020000, 0x00000000, \
0x00000000, 0x00000215, 0x50686969, 0x69696969, \
0x51180200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00083161, \
0x6A696969, 0x69696A65, 0x3B0C0100, 0x00000000, \
0x00000000, 0x00000933, 0x626A6969, 0x6969696A, \
0x653B0C01, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x031B5569, \
0x69696969, 0x6969696A, 0x5B250500, 0x00000000, \
0x00000000, 0x00031B54, 0x69696969, 0x69696969, \
0x6A5B2505, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x0C3F666A, \
0x69696969, 0x6969696A, 0x67481001, 0x00000000, \
0x00000000, 0x010C3F66, 0x6A696969, 0x69696969, \
0x6A674810, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000005, 0x245B6A69, \
0x69696969, 0x69696969, 0x6A602E07, 0x00000000, \
0x00000000, 0x05245B6A, 0x69696969, 0x69696969, \
0x696A602D, 0x07000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000111, 0x49686A69, \
0x69696969, 0x69696969, 0x69695119, 0x03000000, \
0x00000002, 0x1349686A, 0x69696969, 0x69696969, \
0x696A684D, 0x14020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000072D, 0x616A6969, \
0x69696969, 0x69696969, 0x696A653B, 0x0A000000, \
0x00000008, 0x34626A69, 0x69696969, 0x69696969, \
0x69696A63, 0x34080000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002144C, 0x686A6969, \
0x69696969, 0x69696969, 0x69696A56, 0x1B030000, \
0x00000218, 0x54696969, 0x69696969, 0x69696969, \
0x69696969, 0x541A0300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00093362, 0x6A696969, \
0x69696969, 0x69696969, 0x69696A65, 0x3D0C0100, \
0x00000935, 0x646A6969, 0x69696969, 0x69696969, \
0x6969696A, 0x653D0C01, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x031D5469, 0x69696969, \
0x69696969, 0x69696969, 0x6969696A, 0x5C250500, \
0x00031D55, 0x69696969, 0x69696969, 0x69696969, \
0x69696969, 0x6A5C2505, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0E42676A, 0x69696969, \
0x69696969, 0x69696969, 0x6969696A, 0x684A1302, \
0x010E4267, 0x6A696969, 0x69696969, 0x69696969, \
0x69696969, 0x6A684B13, 0x02000000, 0x00000000, \
0x00000000, 0x00000006, 0x285E6A69, 0x69696969, \
0x69696969, 0x69696969, 0x69696969, 0x6A623308, \
0x06285E6A, 0x69696969, 0x69696969, 0x69696969, \
0x69696969, 0x696A6231, 0x08000000, 0x00000000, \
0x00000000, 0x00000212, 0x4C696B6A, 0x6A6A6A6A, \
0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A551A, \
0x154C696B, 0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A6A6A, \
0x6A6A6A6A, 0x6A6A6A50, 0x15020000, 0x00000000, \
0x00000000, 0x00000527, 0x58626261, 0x61616161, \
0x61616161, 0x61616161, 0x61616161, 0x61625D39, \
0x33596262, 0x61616161, 0x61616161, 0x61616161, \
0x61616161, 0x6161625B, 0x2D070000, 0x00000000, \
0x00000000, 0x00000419, 0x292A2A2A, 0x2A2A2A2A, \
0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A23, \
0x22292A2A, 0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A2A, \
0x2A2A2A2A, 0x2A2A2A29, 0x1C050000, 0x00000000, \
0x00000000, 0x00000104, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x04010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A01128: .word \
0xFFFBFFFB, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0005FFFB, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00050005, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFFB0005, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A01168: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A00128
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00098260, 0xF2000000, 0x000FC0FC, \
0xFC167E60, 0x350CF37F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A01128
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A011E8: .word \
0x0000FFFF, 0x318DDEF7, 0xCE73BDEF, 0xF7BDC631, \
0x4A53EF7B, 0x7BDFAD6B, 0xE739D6B5, 0xA5299CE7, \
0xB5AD4211, 0x6B5B39CF, 0x52958C63, 0x94A5739D, \
0x84215AD7, 0x294B6319, 0x21090001, 0x00010001
var_80A01228: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x001A021A, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02111408, \
0x13020000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000002, 0x08120A17, \
0x1B080200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00001314, 0x17150F0F, \
0x15171911, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0211190A, 0x160E0B0B, \
0x0B0F1812, 0x08130000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x0812180F, 0x10050505, \
0x05100B16, 0x0A191102, 0x00000000, 0x00000000, \
0x00000000, 0x00000214, 0x17160B05, 0x07040404, \
0x04070710, 0x0F181208, 0x13000000, 0x00000000, \
0x00000000, 0x00021417, 0x160B0504, 0x0D0C0C0C, \
0x0C030D07, 0x050B1617, 0x19110200, 0x00000000, \
0x00000000, 0x02081716, 0x0B050403, 0x09060101, \
0x06060603, 0x0407100F, 0x18121413, 0x1A000000, \
0x0000001A, 0x0812150B, 0x05040309, 0x01010101, \
0x01010106, 0x03040710, 0x0E160A1B, 0x111A0000, \
0x00001C13, 0x19180E10, 0x070D0C01, 0x01010101, \
0x01010106, 0x0C030407, 0x100E1617, 0x14020000, \
0x00000013, 0x1B150E05, 0x04030901, 0x01010101, \
0x01010101, 0x090C0D04, 0x050B0F0A, 0x08020000, \
0x00000002, 0x14180E05, 0x04030601, 0x01010101, \
0x01010101, 0x060C0304, 0x07100F17, 0x11000000, \
0x00000000, 0x080A0E05, 0x04030906, 0x01010101, \
0x01010101, 0x0609030D, 0x070B161B, 0x13000000, \
0x00000000, 0x11120F05, 0x04030906, 0x01010101, \
0x01010101, 0x06090304, 0x050E1814, 0x02000000, \
0x00000000, 0x02191510, 0x04030C06, 0x01010101, \
0x01010101, 0x060C0304, 0x050F1211, 0x00000000, \
0x00000000, 0x0008180B, 0x070D0C09, 0x06010101, \
0x01010106, 0x090C0D07, 0x10151902, 0x00000000, \
0x00000000, 0x00080A0E, 0x070D0309, 0x06010101, \
0x01010106, 0x09030D07, 0x0E0A0800, 0x00000000, \
0x00000000, 0x0013120F, 0x1004030C, 0x09060101, \
0x01010609, 0x0C030405, 0x0F121100, 0x00000000, \
0x00000000, 0x00021915, 0x0B070D03, 0x0C090606, \
0x06060909, 0x030D070B, 0x18140200, 0x00000000, \
0x00000000, 0x0000080A, 0x0E05070D, 0x030C0909, \
0x09090C03, 0x0D04100F, 0x12110000, 0x00000000, \
0x00000000, 0x00001312, 0x160B0507, 0x0D03030C, \
0x0C03030D, 0x04050B15, 0x19020000, 0x00000000, \
0x00000000, 0x00000214, 0x180E1005, 0x0704040D, \
0x0D0D0407, 0x05100F0A, 0x08000000, 0x00000000, \
0x00000000, 0x00000011, 0x12150F0E, 0x0B100507, \
0x07070505, 0x100E151B, 0x13000000, 0x00000000, \
0x00000000, 0x00000013, 0x1412170A, 0x150F0E0B, \
0x0B0B0E0E, 0x0F160A14, 0x02000000, 0x00000000, \
0x00000000, 0x0000001A, 0x13111108, 0x19120A0A, \
0x0A0A0A0A, 0x0A0A1B13, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02131108, \
0x08080808, 0x1414111A, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02021A00, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A01628: .word \
0x00000000, 0xFF880000, 0x01BFFE8C, 0xFFFFFFFF, \
0xFF980000, 0x003C0000, 0xFE3E0400, 0xFFFFFFFF, \
0x00680000, 0x003C0000, 0x068F0400, 0xFFFFFFFF
var_80A01658: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00008000, \
0xD7000002, 0xFFFFFFFF, 0xFD500000
.word var_80A01228
.word \
0xF5500000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5480800, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFD100000
.word var_80A011E8
.word \
0xE8000000, 0x00000000, 0xF5000100, 0x07000000, \
0xE6000000, 0x00000000, 0xF0000000, 0x073FC000, \
0xE7000000, 0x00000000, 0xFC121603, 0xFFFFFFF8, \
0xE200001C, 0xC8113078, 0xD9F1FBFF, 0x00000000, \
0xD9FFFFFF, 0x00010000, 0xDF000000, 0x00000000
var_80A01700: .word 0x01003006
.word var_80A01628
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A01718: .word \
0xAAA79161, 0x61163B00, 0x00000009, 0x05000000, \
0x00000000, 0x007B7300, 0x00000000, 0x0000008B, \
0x70AA3C41, 0xA9855000, 0x0000003B, 0x82000000, \
0x00000000, 0x009E7300, 0x00000000, 0x00009E8B, \
0xA7A7A761, 0x4311193B, 0x00000050, 0x0F700000, \
0x00000000, 0x009EF100, 0x00000000, 0x0000F98B, \
0xFC209161, 0x43112222, 0x03505003, 0x7912C500, \
0x00000000, 0x004E73F1, 0x00000000, 0x0000FFF9, \
0x203C9161, 0x606A0308, 0x3003791B, 0x1B122EB4, \
0x1F000000, 0x05013CF1, 0xF1000000, 0x00FB8B73, \
0x203CCC40, 0x43111E03, 0x42790000, 0x00000000, \
0x20071B1F, 0x7083CBE0, 0x7B73FBDF, 0xF1736F7B, \
0x4E264049, 0x071D1E03, 0x03500000, 0x00000000, \
0x007D07E0, 0x00000000, 0x4EAA1CAA, 0xE0000000, \
0x1C010111, 0x012D0303, 0x03240000, 0x00000000, \
0x00CF7274, 0x00000000, 0x0096A2E1, 0x00000000, \
0x15604F14, 0x0B0C3403, 0x03340000, 0x00000000, \
0x00CFFC70, 0x00000000, 0x00E07D96, 0x00000000, \
0x659B4040, 0x4F1D1E08, 0x03000000, 0x00000000, \
0x00D97270, 0x00000000, 0x00AACB96, 0x00000000, \
0x6545659B, 0x15111E08, 0x03000000, 0x00000000, \
0x00D97270, 0x00000000, 0x00707D95, 0x00000000, \
0x605F154F, 0x4F5B3408, 0x03000000, 0x00000000, \
0x00E0B4C7, 0x00000000, 0x00A87075, 0x00000000, \
0x4F8C2649, 0x15160308, 0x34000000, 0x00000000, \
0xB47282C7, 0x00000000, 0x00007054, 0x00000000, \
0x4FD34015, 0x143A0330, 0x03030000, 0x00000000, \
0xC53D501F, 0x00000000, 0x0000C574, 0xB8000000, \
0x1C161515, 0x393A1A6E, 0x087C0000, 0x0000BA3D, \
0x03003169, 0x5C000000, 0x000712C7, 0x74070000, \
0x3A161414, 0x14E61A6E, 0x30032F79, 0xC3C31E00, \
0x000000ED, 0x5C121F12, 0x390B090B, 0x4E7070B8, \
0x1D110E1C, 0x14682210, 0x00000834, 0x24800000, \
0x00000000, 0x000F5011, 0x68380000, 0x00263938, \
0x4F596876, 0x1C3A1900, 0x00000080, 0x02000000, \
0x00000000, 0x00E93800, 0x00000000, 0x0000710E, \
0x2E650C01, 0x163E9300, 0x0000000D, 0x1E000000, \
0x00000000, 0x00333800, 0x00000000, 0x00007158, \
0xD5D4593A, 0x1CAC1900, 0x0000000D, 0xBE000000, \
0x00000000, 0x000E1900, 0x00000000, 0x00008758, \
0x8CF05911, 0x0E3E0300, 0x00000004, 0x0D000000, \
0x00000000, 0xFA0F4600, 0x00000000, 0x00002658, \
0xAE235911, 0x763E1900, 0x00000004, 0x4D000000, \
0x000000FA, 0x77310E00, 0x00000000, 0x00002626, \
0xDA5638AC, 0x1159221A, 0x00004280, 0x4D000D00, \
0x000D8418, 0x0D224600, 0x00000000, 0x0000DD26, \
0x70B32D2D, 0x3F931A4C, 0x00002210, 0x0D0D0D21, \
0x2121BD0D, 0x0DBEE505, 0x00000000, 0x00007826, \
0x8CEE2D0C, 0xC43F2203, 0x034C2210, 0x08100835, \
0x21000000, 0x00000246, 0x00000000, 0x00B3DA39, \
0x268E091D, 0x01091A10, 0x10031E02, 0x02240D4D, \
0x00000000, 0x00000084, 0x46000039, 0xC1390E06, \
0x28EE3F1D, 0x853E1A00, 0x6E042400, 0x00002FBD, \
0x00000000, 0x0000002B, 0x4A313B46, 0x0FED3D3D, \
0x4F670C1D, 0x160C2500, 0x007C0000, 0x00000221, \
0x04000000, 0x000000B6, 0x3508031E, 0x00000000, \
0xD3650C5B, 0x010C1900, 0x00020000, 0x00000051, \
0x21000000, 0x0000004D, 0x211EED00, 0x00000000, \
0x8FD41B01, 0x161B1900, 0x301E0000, 0x00000002, \
0x18210000, 0x000000B6, 0x21180000, 0x00000000, \
0xD78D593A, 0x16AC2500, 0x08040000, 0x00000000, \
0x51BD0D00, 0x0000004D, 0x02020000, 0x00000000, \
0x8645593A, 0x165A2500, 0x80040000, 0x00000000, \
0x5151BD00, 0x00002121, 0x2F000000, 0x00000000, \
0x8F450911, 0x161B2500, 0x80040000, 0x00000000, \
0xF877210D, 0x00004D35, 0xAD000000, 0x00000000, \
0x05263E3A, 0x161B2500, 0x08340000, 0x002F512B, \
0x7F182404, 0x3535040D, 0xAD000000, 0x00000000, \
0x138D0CC4, 0x011B2210, 0x30042402, 0x2F625151, \
0x6262622F, 0x7C083008, 0x2402187C, 0x00000000, \
0x908D3FC4, 0x011B106E, 0x6E08242F, 0x7C000000, \
0x00000000, 0x7F040D24, 0x0D0D244A, 0x4A020202, \
0x05560985, 0x850C0808, 0x10046200, 0x00000000, \
0x00000000, 0x29020200, 0x00000000, 0x0D022436, \
0x40BF091D, 0x010C0400, 0x00361800, 0x00000000, \
0x00000000, 0x7F020000, 0x00000000, 0x00005184, \
0xF0F42D09, 0x113E0400, 0x00047C00, 0x00000000, \
0x00000000, 0x18020000, 0x00000000, 0x0000002B, \
0x23BF9393, 0x389A0800, 0x0000362F, 0x00000000, \
0x00000000, 0x2F020000, 0x00000000, 0x0000002B, \
0x45450906, 0x010E7908, 0x00000404, 0x2F000000, \
0x00000000, 0x02020000, 0x00000000, 0x0000002B, \
0xCCEE1B11, 0x6D070F36, 0x00080830, 0x04240000, \
0x00000029, 0x34020200, 0x00000000, 0x0000002B, \
0x26CC1D11, 0x05070F36, 0x00083030, 0x0436247C, \
0x2F2F7903, 0x10031802, 0x00000000, 0x000018A4, \
0x288D1B5B, 0x0E070F04, 0x08300000, 0x00000004, \
0x04105725, 0x25254C4A, 0x84A40000, 0x00002F18, \
0xAE671B01, 0x05050F22, 0x30000000, 0x00000004, \
0x361A4B00, 0x00000025, 0x4C4A0200, 0x00362104, \
0x5C4E1B01, 0x0E050B1B, 0x08000000, 0x00000004, \
0x34222500, 0x00000000, 0x25570304, 0x04040404, \
0x05BF5A46, 0x690B130F, 0x08000000, 0x00000008, \
0x03220000, 0x00000000, 0x001A1A6E, 0x10100000, \
0x86561B06, 0x0E0B0701, 0x03000000, 0x00000000, \
0x421A0000, 0x00000000, 0x00005710, 0x00000000, \
0xDC87799D, 0x0E0B0713, 0x01030000, 0x00000000, \
0x1A1A0000, 0x00000000, 0x00005710, 0x00000000, \
0x33233B46, 0x0F05072E, 0x43010300, 0x00000000, \
0x6E1A0000, 0x00000000, 0x00001A30, 0x00000000, \
0x2E3C3B46, 0x0F01122E, 0xA9A90E0F, 0xE5423010, \
0x301A6E00, 0x00000000, 0x00001010, 0x00000000, \
0xAEA23B06, 0x5B016D12, 0x07EA4913, 0x120E5B01, \
0x01111A00, 0x00000000, 0x001A1008, 0x00000000, \
0xF3B83C3C, 0x06110E0B, 0x39394928, 0x831F2E83, \
0x83490E0F, 0x0F010E01, 0x2D1B1D1D, 0x111D164F, \
0xD8811356, 0x1B060F05, 0x05132828, 0x28132E2E, \
0x5813071F, 0x07070707, 0x0C0B4F15, 0x14606060, \
0x86411367, 0x381B0F05, 0x0E0B1292, 0x13050707, \
0x13070B07, 0x12120707, 0x0C0B144F, 0x1414146D, \
0x12906B8E, 0x3F090601, 0x01050505, 0x05051C1C, \
0x0B051C6D, 0x0E0E0B01, 0xF716161C, 0x161C1C0B, \
0x2341814E, 0x4567381B, 0x0611010E, 0x0E0E0E01, \
0x010F0F01, 0x010E010F, 0x9A0C0101, 0xC4851D16, \
0x8EA31237, 0x1F453838, 0x1B060646, 0x46460606, \
0x06061B06, 0x06060909, 0x93F70C0C, 0x1B0C093E, \
0x58F31439, 0x28DD264E, 0x234E0909, 0x093B4126, \
0x4E263F79, 0x1B389B3C, 0x56452D2D, 0x3F2DEA40, \
0x925C1407, 0x90D58E87, 0x6123383B, 0x2D3F1567, \
0x4E60313B, 0x31311326, 0x45269A50, 0x2D2D268C, \
0x12AE5892, 0x69818112, 0x05135C8C, 0x8737282E, \
0xC9451540, 0x49130526, 0x2E26A326, 0x9B652892, \
0x282E0BB9, 0x1F133705, 0x075C0B8F, 0xDC281CD8, \
0x151C6BD3, 0x86158114, 0x0B151549, 0x2E120E47, \
0x050E3D07, 0x291CBA1F, 0x0B863A1C, 0x330B1C05, \
0xC190C937, 0x13431414, 0x39141314, 0x0E6B475A, \
0x5B3D0E05, 0x05FD92D7, 0x1512010B, 0xAB696B05, \
0x379005DC, 0x0505815F, 0x690E0533, 0x8F473346
var_80A01F18: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03040200, 0x00000000, 0x00000000, \
0x00000001, 0x00000104, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x04070401, 0x00000001, 0x00010101, \
0x00010102, 0x01000105, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x04080703, 0x01010101, 0x01030303, \
0x03030304, 0x01010305, 0x01000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000103, 0x05080A06, 0x03030303, 0x03040404, \
0x04040405, 0x03020604, 0x01010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000104, 0x05080C0B, 0x06040404, 0x05060606, \
0x05060707, 0x05060904, 0x02020200, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000204, 0x07090E11, 0x0A060607, 0x08080908, \
0x08080A09, 0x060A0C05, 0x04050301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010407, 0x07040200, 0x00010101, \
0x01010304, 0x07090E13, 0x100A0809, 0x0B0C0D0B, \
0x0B0C0D0C, 0x0A100D07, 0x07070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0001060C, 0x0F0E0A04, 0x01010303, \
0x04030405, 0x080C0F15, 0x17110D0D, 0x0F101110, \
0x0F11120F, 0x0E150C09, 0x0A080403, 0x01010000, \
0x01010102, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x0001040B, 0x1317160F, 0x09040404, \
0x05050607, 0x090C1016, 0x1D191412, 0x14171816, \
0x15171915, 0x15190F0D, 0x0C080504, 0x03030201, \
0x02040404, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000106, 0x101A201E, 0x170D0805, \
0x0708090A, 0x0C0E1318, 0x22241C1A, 0x1A1E1F1D, \
0x1C1E201B, 0x201B1513, 0x0F0B0806, 0x05050505, \
0x06070704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x08121E27, 0x281F140A, \
0x08090B0C, 0x0E11171D, 0x26302823, 0x24282927, \
0x26292A26, 0x32211C1A, 0x130E0B08, 0x07070809, \
0x0A0A0602, 0x00010203, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0208121F, 0x2C2F281B, \
0x100D0F11, 0x12151A22, 0x2B383930, 0x30333635, \
0x34383633, 0x3D2A261F, 0x19130F0D, 0x0C0C0E0F, \
0x0C080402, 0x03040606, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0002070F, 0x1D2D3734, \
0x27181316, 0x191C2028, 0x33404C41, 0x3E424646, \
0x45484443, 0x40353126, 0x1F191513, 0x12141411, \
0x0A060507, 0x0A0A0804, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010306, 0x0E1C3140, \
0x4133221C, 0x1F25282F, 0x3A495A58, 0x5154595A, \
0x595C575D, 0x4C433A2E, 0x26211D1D, 0x1D1D160E, \
0x0A0A0C0E, 0x0D090502, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x070D1B2E, \
0x44504733, 0x2A2E343A, 0x45556875, 0x6B6B7172, \
0x72746D70, 0x5E55473B, 0x312C2A2B, 0x281F1510, \
0x1114130E, 0x09050200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01020304, 0x07090E19, \
0x2F4C615D, 0x4A3E4149, 0x5362778E, 0x89868C90, \
0x8F918881, 0x75665649, 0x413D3C37, 0x2B1F1A1C, \
0x1D18110A, 0x06030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030405, 0x07090C11, \
0x1B2F5173, 0x7865575B, 0x667489A1, 0xABA6ABB0, \
0xAFB0A99B, 0x8F7B695C, 0x57544B3A, 0x2E2B2B26, \
0x1C120A06, 0x03010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030505, 0x080B0E12, \
0x17203356, 0x80948A79, 0x7C8B9EB7, 0xCCCACFD5, \
0xD3D1CCBB, 0xA8928278, 0x72655145, 0x423D3020, \
0x140D0704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040506, 0x080C1014, \
0x19202B3C, 0x5D8CB3B0, 0xA2A6B8D0, 0xE9EEF1F6, \
0xF5F4F2DF, 0xC5B0A398, 0x856F625D, 0x4D382619, \
0x100A0603, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x03040708, 0x090C1117, \
0x1D242F3C, 0x4D6B9ACA, 0xDBCFD8E9, 0xFAFDFEFF, \
0xFEFEFEF6, 0xE3D4C7B0, 0x9888775E, 0x422E2015, \
0x0F090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x01010304, 0x05060809, 0x0C0F1319, \
0x20293442, 0x526783AE, 0xE0F5FAFC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF5E1CA, 0xB3926F52, 0x3A2A1E15, \
0x0F0A0604, 0x03010000, 0x00000000, 0x00000000, \
0x00000001, 0x03040507, 0x08080B0C, 0x0F12161C, \
0x232D3A48, 0x5B708AA8, 0xD0F7FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D9, 0xAF88684F, 0x3C2C2118, \
0x110C0805, 0x04010100, 0x00000000, 0x00000000, \
0x00000001, 0x03040708, 0x0A0B0D10, 0x14181D24, \
0x2C364250, 0x647A95B3, 0xD5F6FEFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D2, 0xA9886C55, 0x4131251C, \
0x15100C09, 0x07050403, 0x01010000, 0x00000000, \
0x00000001, 0x03040608, 0x0A0C0F12, 0x161B222A, \
0x33404E5F, 0x7389A3C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF8D8, 0xB4937760, 0x4C3C3027, \
0x1E18130F, 0x0C0A0806, 0x04030201, 0x00000000, \
0x00000000, 0x01030405, 0x08090D10, 0x14192029, \
0x33405064, 0x7A94B3D3, 0xF3FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC7A88B72, 0x5C4A3B2F, \
0x241C1510, 0x0C090705, 0x03010100, 0x00000000, \
0x00000001, 0x02030405, 0x080A0D10, 0x14191F28, \
0x323E4E61, 0x7892B1D2, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC5A28469, 0x52403125, \
0x1B140E0A, 0x07040302, 0x01000000, 0x00000000, \
0x00000103, 0x0407080A, 0x0E101417, 0x1C222931, \
0x3C49596C, 0x819AB6D5, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDE8, 0xC6A4866B, 0x55423327, \
0x1C150E0B, 0x08050301, 0x00000000, 0x00000000, \
0x00000205, 0x06080A0C, 0x0F121417, 0x1A1F242B, \
0x333D4A5A, 0x6D85A1C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF6D8, 0xB5967C64, 0x51403227, \
0x1D16100C, 0x09060403, 0x01000000, 0x00000000, \
0x00000103, 0x04050708, 0x090B0C0E, 0x11141921, \
0x28323E4E, 0x627A96B7, 0xDEFBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDEDCA, 0xA6876D56, 0x43352920, \
0x19130E0B, 0x08050403, 0x01000000, 0x00000000, \
0x00000001, 0x01030304, 0x0507080A, 0x0C10151B, \
0x222D3A49, 0x5D7798BF, 0xE4FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFCEAC1, 0x9A7D644E, 0x3B2D2119, \
0x120D0906, 0x05040201, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x03050708, 0x0B0E1319, \
0x202B384A, 0x6180A3C0, 0xD4EAF7FC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF9EFD2, 0x9E755A46, 0x35281D15, \
0x0F0A0604, 0x03020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03040708, 0x0A0C1118, \
0x212D3C52, 0x6E8694A7, 0xC4D5DAE8, 0xFAFFFFFE, \
0xFFFDFEF8, 0xE3D0C8D5, 0xBE87593F, 0x2F231A13, \
0x0D090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040507, 0x0A0D131B, \
0x2635485B, 0x666D7E9A, 0xABADB7CD, 0xEEF7F7F6, \
0xF7F1EEE3, 0xC7B09EA1, 0xAEA27347, 0x2D1F1610, \
0x0B080503, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0C101722, \
0x303E4849, 0x4E627A84, 0x838A9BB6, 0xE2D7D6D4, \
0xD5CECACA, 0xAF958274, 0x75848565, 0x3C22150E, \
0x09070403, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0304070A, 0x0E16202C, \
0x3434333B, 0x4D606461, 0x657285A5, 0xD3B0B0AF, \
0xB1AAA5AD, 0x997F6B5D, 0x514F616B, 0x5A371D0F, \
0x08050301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03060A0E, 0x161E2527, \
0x25242C3E, 0x4B4C4749, 0x525E7299, 0xB390908F, \
0x908A8387, 0x846E584A, 0x40363646, 0x554D341C, \
0x0C050201, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000103, 0x060A1016, 0x1C1D1B17, \
0x1A24333B, 0x39333339, 0x4350699A, 0x8D737472, \
0x736E6767, 0x6E5E4C3D, 0x322B2424, 0x32424331, \
0x1A0B0401, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000206, 0x0B0F1517, 0x15121013, \
0x1D292E2A, 0x2423282F, 0x37456790, 0x665A5A59, \
0x5A58514F, 0x56504032, 0x27211D18, 0x17233135, \
0x2B1A0B03, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010409, 0x0F11110E, 0x0B0C0F18, \
0x2123201A, 0x171B1F26, 0x2E3F6975, 0x4A474645, \
0x46443E3C, 0x3F433529, 0x20191512, 0x0E0F1824, \
0x2B26190C, 0x04010000, 0x00000000, 0x00000000, \
0x00000000, 0x0003070A, 0x0C0B0907, 0x080E151B, \
0x1C171311, 0x1115191E, 0x27406A53, 0x36393534, \
0x3534302D, 0x2E352D23, 0x1B140F0D, 0x0B09090F, \
0x1B212017, 0x0C040100, 0x00000000, 0x00000000, \
0x00000000, 0x01030606, 0x06050506, 0x0C121615, \
0x120D0B0B, 0x0D111519, 0x24445C36, 0x282D2827, \
0x28282422, 0x2127271D, 0x15100B09, 0x08070505, \
0x0A121A1A, 0x150C0501, 0x00000000, 0x00000000, \
0x00000000, 0x00010201, 0x01020409, 0x0F12110D, \
0x0A080809, 0x0C0D1116, 0x26494422, 0x1E221D1D, \
0x1E1E1A18, 0x171B2119, 0x120D0906, 0x05050402, \
0x02060D13, 0x15110B04, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x0003080D, 0x0E0C0A07, \
0x05050507, 0x090A0E16, 0x2E482A15, 0x181A1615, \
0x17171411, 0x10121A17, 0x100B0704, 0x03030301, \
0x00010308, 0x0D0F0D07, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x0105080A, 0x09070503, \
0x03030405, 0x06080D19, 0x353E180E, 0x1212100F, \
0x10110F0D, 0x0C0C1114, 0x0E090603, 0x01010000, \
0x00000001, 0x04080A08, 0x04010000, 0x00000000, \
0x00000000, 0x00000000, 0x02050605, 0x04030101, \
0x01010304, 0x05070D1E, 0x392D0E0B, 0x0E0D0B0B, \
0x0C0D0B09, 0x08080A11, 0x0D080503, 0x01000000, \
0x00000000, 0x01020405, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x01020302, 0x01000000, \
0x00000103, 0x04070E23, 0x341B0809, 0x0B090808, \
0x08090705, 0x0505060C, 0x0C070503, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03071227, 0x280F0608, 0x09070605, \
0x06070504, 0x03030407, 0x0A070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03091827, 0x19070407, 0x07050404, \
0x04050403, 0x01010104, 0x07070301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x030B1D23, 0x0D020204, 0x04030303, \
0x03040301, 0x00000001, 0x04060301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x040F1E1C, 0x07010103, 0x02010001, \
0x01010100, 0x00000000, 0x02040300, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06121B11, 0x03000001, 0x01000000, \
0x00000000, 0x00000000, 0x00010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08131409, 0x01000001, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08110D03, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x080D0601, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06080200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A02F18: .word \
0xFFF9FFF9, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0007FFF9, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00070007, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFF90007, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A02F58: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A01F18
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00098260, 0xF2000000, 0x000FC0FC, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xDF000000, 0x00000000
var_80A02FC8: .word 0x01004008
.word var_80A02F18
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A02FE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010000, 0x00000001, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x01020100, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x01010401, \
0x00010000, 0x00010205, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020103, 0x04010100, \
0x00000000, 0x00010306, 0x01000000, 0x00000000, \
0x00000000, 0x00000204, 0x04080401, 0x01000000, \
0x00000000, 0x01010301, 0x00000000, 0x00000000, \
0x00000000, 0x01040D15, 0x07040201, 0x01010000, \
0x00000000, 0x01030A02, 0x00000000, 0x00000000, \
0x00000101, 0x04091829, 0x0B030201, 0x02010100, \
0x00000101, 0x05000200, 0x00000000, 0x00000000, \
0x00000101, 0x040A1D35, 0x1D070303, 0x03020100, \
0x0001040C, 0x12040000, 0x00000000, 0x00000000, \
0x00010101, 0x040B1C33, 0x411B0605, 0x04030200, \
0x0001070F, 0x09000000, 0x00000000, 0x00000000, \
0x00000101, 0x040B1A2E, 0x573F1007, 0x06050301, \
0x02030204, 0x00000000, 0x00000000, 0x00000000, \
0x00010101, 0x0308132A, 0x586C300D, 0x08070604, \
0x08080300, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x04070D27, 0x4D7B611A, 0x0B0A0B05, \
0x04030100, 0x00000000, 0x00000000, 0x00000000, \
0x00010103, 0x050C0E22, 0x3F6F8430, 0x100B0905, \
0x03020200, 0x00000000, 0x00000000, 0x00000000, \
0x00010103, 0x0A1A161C, 0x2F567E4F, 0x1A0C0906, \
0x04030200, 0x00000000, 0x00000000, 0x00000000, \
0x00010204, 0x0E1E2117, 0x23426072, 0x33110B08, \
0x05040200, 0x00000000, 0x00000000, 0x00000000, \
0x00010205, 0x11223827, 0x1C31477B, 0x50170C09, \
0x06040301, 0x00000000, 0x00000000, 0x00000000, \
0x00020305, 0x11234759, 0x27253D77, 0x7B26130B, \
0x08060301, 0x00000000, 0x00000000, 0x00000000, \
0x00020305, 0x0D235A9E, 0x5E273662, 0x82372914, \
0x0A070402, 0x01010000, 0x00000000, 0x00000000, \
0x00010305, 0x0B21518E, 0x954A375B, 0x7F443729, \
0x10090503, 0x02010100, 0x00000000, 0x00000000, \
0x00020405, 0x09193963, 0xAF8E4853, 0x703F333C, \
0x1E0B0604, 0x02020100, 0x00000000, 0x00000000, \
0x00010305, 0x070D2053, 0xB0C87558, 0x6F3C2F39, \
0x2B120805, 0x03020100, 0x00000000, 0x00000000, \
0x00010204, 0x060A153C, 0x78C0C182, 0x713B262B, \
0x33261007, 0x04030200, 0x00000000, 0x00000000, \
0x00010203, 0x0509112B, 0x4C8CDDD7, 0xA24E2623, \
0x2D39260C, 0x05040201, 0x01000000, 0x00000000, \
0x00010202, 0x04080D1A, 0x3263ACE7, 0xD9772D21, \
0x212D321A, 0x09040201, 0x01000000, 0x00000000, \
0x00000101, 0x03060A10, 0x1D3C69AD, 0xE0C96B31, \
0x2121292A, 0x19080402, 0x01010000, 0x00000000, \
0x00000001, 0x0205080B, 0x111E3E70, 0xA9EDCB78, \
0x311E212D, 0x280F0503, 0x02020100, 0x00000000, \
0x00000000, 0x01030608, 0x0C142848, 0x81ECF3D1, \
0x74302327, 0x2C150804, 0x03010000, 0x00000000, \
0x00000000, 0x00020305, 0x09101D33, 0x6CD5D7EA, \
0xCB662D25, 0x29120905, 0x03020100, 0x00000000, \
0x00000000, 0x00020204, 0x070D1726, 0x57AFB8CA, \
0xE7943629, 0x2C160B06, 0x04030200, 0x00000000, \
0x00000000, 0x00010203, 0x050A111E, 0x4B8DA2A7, \
0xECCF5534, 0x23150D07, 0x04030100, 0x00000000, \
0x00000000, 0x00010102, 0x04080D19, 0x4176B0C1, \
0xEEE97F47, 0x26180F08, 0x05030100, 0x00000000, \
0x00000000, 0x00000101, 0x03070B14, 0x345FAFDE, \
0xF7F5B151, 0x271B120A, 0x07050200, 0x00000000, \
0x00000000, 0x00000101, 0x0306090F, 0x21355A98, \
0xDDFEE16E, 0x2F1F160E, 0x0A070401, 0x01000001, \
0x00000000, 0x00000001, 0x0205080B, 0x13213664, \
0xA5F2F6AE, 0x56291B12, 0x0D0A0502, 0x02010101, \
0x00000000, 0x00000101, 0x0205070A, 0x0E192952, \
0x96EEFFE1, 0xA35B3218, 0x110B0602, 0x02010202, \
0x00000000, 0x00000101, 0x0205080A, 0x1123448C, \
0xDDF2DDB5, 0xB9B68D3F, 0x150C0703, 0x02020202, \
0x00000000, 0x00010101, 0x0306090E, 0x1F3E88DD, \
0xE39D6B5F, 0x7FAAB470, 0x200D0703, 0x02020202, \
0x00000000, 0x00010102, 0x04080E1A, 0x3C7EDADD, \
0x8D483239, 0x4B6DA88A, 0x280E0803, 0x02020202, \
0x00000000, 0x00010203, 0x050C1C39, 0x83D6D380, \
0x412A2628, 0x355498A0, 0x45160803, 0x02010102, \
0x00000000, 0x01020405, 0x0815337A, 0xD7CC662F, \
0x24211F1E, 0x274885AB, 0x692A0B03, 0x02020201, \
0x00000001, 0x02030509, 0x112A63D1, 0xD266271F, \
0x1D1B1918, 0x1E3A6A9B, 0x7E370D03, 0x02020202, \
0x00000101, 0x02050810, 0x22529BCD, 0x7C291B1A, \
0x18151312, 0x16315E90, 0x90340A03, 0x02020202, \
0x00000102, 0x03060C1E, 0x459FC985, 0x361C1815, \
0x12100F0E, 0x1337628B, 0x9C370A02, 0x02020202, \
0x00010203, 0x0509153A, 0x88D09A3C, 0x1F191612, \
0x100F1019, 0x274B5067, 0x963D0C02, 0x02020202, \
0x00010304, 0x08142E6D, 0xC9AB451C, 0x1A161310, \
0x10172333, 0x32344069, 0x84330A03, 0x02020202, \
0x00020306, 0x0C2662BB, 0xBC4F1C18, 0x17141010, \
0x1833402C, 0x1E2D6480, 0x4C140602, 0x02020202, \
0x00020407, 0x0F2F7BCD, 0x922F1A17, 0x15120F18, \
0x2D422A19, 0x23468B69, 0x230B0603, 0x02020201, \
0x00020406, 0x0D2865B0, 0xB2591F18, 0x15131120, \
0x3932171A, 0x34627131, 0x0F090502, 0x02020202, \
0x00020305, 0x091B3E71, 0xBA96361A, 0x1815131E, \
0x361C1623, 0x4E693310, 0x0B080402, 0x02020101, \
0x00020304, 0x0711264C, 0x8FAB722A, 0x19191921, \
0x371D1E3A, 0x523B110C, 0x09060402, 0x01020201, \
0x00010203, 0x050A1535, 0x5D8FAB61, 0x291C1F24, \
0x3B273952, 0x2E120C0A, 0x08060301, 0x01010101, \
0x00010103, 0x04080D1D, 0x3766AAAF, 0x6C37272A, \
0x4445503D, 0x160E0B09, 0x06040201, 0x01000001, \
0x00000102, 0x0306090F, 0x1E3B6099, 0xAF945C45, \
0x5B593B1D, 0x120E0A08, 0x05040200, 0x00000000, \
0x00000001, 0x02040709, 0x0D18305B, 0x8EBDBA99, \
0x844A2217, 0x130E0A07, 0x04030200, 0x00000000, \
0x00000000, 0x01030406, 0x090E1A2D, 0x4C82C2DC, \
0xB455261A, 0x16100B07, 0x05030100, 0x00000000, \
0x00000000, 0x01020304, 0x060A0E16, 0x2A4A7EC4, \
0xE5B1682D, 0x1A140F0A, 0x07050200, 0x00000000, \
0x00000000, 0x01010203, 0x04070A0C, 0x14243F7B, \
0xCCECD47B, 0x2E18120C, 0x08060301, 0x01000001, \
0x00000000, 0x00010102, 0x03040608, 0x0C152442, \
0x75B8E3CE, 0x5D23140F, 0x0A080401, 0x00010101, \
0x00000000, 0x00000001, 0x02030406, 0x090F1629, \
0x4986CDD5, 0x662A1711, 0x0C090401, 0x00010101, \
0x00000000, 0x00000001, 0x01020304, 0x080D1320, \
0x4089DDB7, 0x784B2C16, 0x0E090502, 0x01010101, \
0x00000000, 0x00000000, 0x00020203, 0x070C1326, \
0x4BA1D76A, 0x49526038, 0x140B0602, 0x01010100, \
0x00000000, 0x00000000, 0x00010203, 0x060B1434, \
0x67C6BE46, 0x3644635F, 0x340D0601, 0x01010100, \
0x00000000, 0x00000000, 0x00020304, 0x070D1A4E, \
0x98D78734, 0x2C3A5061, 0x57190501, 0x01010101, \
0x00000000, 0x00000000, 0x01020305, 0x0A11215F, \
0xBEBB5842, 0x4C5D6953, 0x320C0501, 0x01010100, \
0x00000000, 0x00000000, 0x01030507, 0x0C1A3276, \
0xD79C5E77, 0x8965371E, 0x10080502, 0x01010101, \
0x00000000, 0x00000000, 0x0103060A, 0x132C5FB2, \
0xEAA68969, 0x442A180F, 0x0A070401, 0x01010101, \
0x00000000, 0x00000000, 0x01050A12, 0x28579CE8, \
0xD97E492F, 0x1F17110B, 0x08050301, 0x01010101, \
0x00000000, 0x00000001, 0x02070F1F, 0x52B0EAE9, \
0x7636221D, 0x17120D08, 0x06040301, 0x01010000, \
0x00000000, 0x00000101, 0x03091327, 0x65D2FBD3, \
0x49241D18, 0x130E0905, 0x04020100, 0x00000000, \
0x00000000, 0x00010102, 0x040A1329, 0x69C7ECA2, \
0x38221B14, 0x100B0704, 0x03020100, 0x00000000, \
0x00000000, 0x00000102, 0x040A1124, 0x68C3E584, \
0x32221B14, 0x0F0B0703, 0x02010000, 0x00000000, \
0x00000000, 0x00000202, 0x040B1225, 0x74DEF093, \
0x3B241C14, 0x0F0A0603, 0x02010000, 0x00000000, \
0x00000000, 0x00000102, 0x050C162D, 0x7DECF3A7, \
0x5D2D1C14, 0x0F0A0602, 0x01000000, 0x00000000, \
0x00000000, 0x00010102, 0x050D1D3A, 0x86EDE39D, \
0x964E2115, 0x0F0A0502, 0x01010000, 0x00000000, \
0x00000000, 0x00010102, 0x050C2144, 0x91EBCF80, \
0xA25E2718, 0x120C0702, 0x01000000, 0x00000000, \
0x00000000, 0x00000102, 0x050C1F43, 0x95F0E39C, \
0xA262291C, 0x150F0803, 0x02010000, 0x00000000, \
0x00000000, 0x00010102, 0x050B1731, 0x7DDCF9D9, \
0xBD7D3220, 0x18110A03, 0x02010100, 0x00000000, \
0x00000000, 0x00010102, 0x040A1223, 0x5AA2F1F8, \
0xE0A94424, 0x1B130C05, 0x02020100, 0x00000000, \
0x00000000, 0x00000101, 0x03080D18, 0x3D79DEFF, \
0xF5C04E28, 0x1E160D05, 0x03020000, 0x00000000, \
0x00000000, 0x00000001, 0x02060A11, 0x2551A2EC, \
0xFCD96A30, 0x21180F06, 0x04020000, 0x00000000, \
0x00000000, 0x00000000, 0x0205080C, 0x173C7BD0, \
0xF9ED8236, 0x23191006, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x0104070A, 0x133067C5, \
0xF9EE8036, 0x241A1007, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030609, 0x112D63C6, \
0xF9EE7E34, 0x241A1007, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030507, 0x0F2B5FC0, \
0xF8EF8633, 0x22191007, 0x04030200, 0x00000000, \
0x00000000, 0x00000000, 0x01030406, 0x0D2657B5, \
0xF7F28E34, 0x21170F07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x00020405, 0x0B234FA4, \
0xF4EC822D, 0x1C140D06, 0x04030200, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x091C428B, \
0xDBC76624, 0x16100A05, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x0711213F, \
0x5D402214, 0x100C0804, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x04090F17, \
0x1D120E0C, 0x0A070503, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x03050709, \
0x0A080808, 0x07050302, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02030405, \
0x05050505, 0x05030202, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020203, \
0x03020202, 0x03020101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A03BE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010101, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010202, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000103, 0x04010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010101, \
0x00000102, 0x05020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000102, \
0x02010101, 0x02020100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x03050405, 0x04060501, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x0103040A, 0x0A090903, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01010202, 0x02020303, \
0x0404060A, 0x1117190D, 0x03010000, 0x00000000, \
0x00000000, 0x00000001, 0x01020303, 0x04050709, \
0x0C121720, 0x2C332E16, 0x05020100, 0x00000000, \
0x00000000, 0x00000102, 0x02030507, 0x090F1925, \
0x354E5A57, 0x381E130D, 0x04030100, 0x00000000, \
0x00000000, 0x01020304, 0x0509121F, 0x2D425B6E, \
0x746A4B2E, 0x160C1119, 0x09020100, 0x00000000, \
0x00000102, 0x03050A0F, 0x19254169, 0x8EA1956F, \
0x4022150E, 0x0A0C1412, 0x05020100, 0x00000000, \
0x00010203, 0x0710254C, 0x748D9E9E, 0x8B6A452C, \
0x190F0C0A, 0x090A0F08, 0x03020100, 0x00000000, \
0x00010305, 0x0D225BA8, 0xC0A67F59, 0x42331E15, \
0x110E0C09, 0x09080704, 0x03020100, 0x00000000, \
0x00020407, 0x153783C8, 0xB25E3C35, 0x32211512, \
0x0F0D0B09, 0x07060402, 0x02020000, 0x00000000, \
0x00020508, 0x132F6FBD, 0xBC6C4633, 0x24181410, \
0x0E0C0A0B, 0x07050402, 0x01010000, 0x00000000, \
0x00030609, 0x11295CA6, 0xD0A74F25, 0x1B16120E, \
0x0C0C1313, 0x08040302, 0x01010000, 0x00000000, \
0x0104080D, 0x1832649E, 0xC0B25A22, 0x1915120E, \
0x0F1E220F, 0x04030201, 0x01010000, 0x00000000, \
0x02060D1B, 0x33667476, 0x88AF9034, 0x1B191A1F, \
0x27321805, 0x04030100, 0x00000000, 0x00000000, \
0x03081531, 0x69B66C48, 0x6498AD54, 0x2623344A, \
0x3B1C0704, 0x03020100, 0x00000000, 0x00000000, \
0x03091734, 0x70DB9A4A, 0x4C7CAD7C, 0x3D46574E, \
0x220B0705, 0x04030100, 0x00000000, 0x00000000, \
0x040A1630, 0x6DDED872, 0x466697A5, 0x69674324, \
0x100B0805, 0x03020100, 0x00000000, 0x00000000, \
0x04091227, 0x68C7EC9F, 0x485985C4, 0x946B2915, \
0x100C0805, 0x03020100, 0x00000000, 0x00000000, \
0x04080F1D, 0x5199F1DB, 0x6A4F6CB5, 0xA16C3018, \
0x110D0905, 0x03020100, 0x00000000, 0x00000000, \
0x03080E19, 0x417EE8F7, 0xB36C5D96, 0xAE713E1C, \
0x120E0905, 0x03020100, 0x00000000, 0x00000000, \
0x03080D16, 0x386DCAFA, 0xEDAB687A, 0xAE724C20, \
0x140F0905, 0x03020100, 0x00000000, 0x00000000, \
0x02060B11, 0x254C94E5, 0xFFEAAB8F, 0xB07A5A2D, \
0x18110B06, 0x04030100, 0x00000000, 0x00000000, \
0x0105080D, 0x153063AD, 0xEDFFEBC6, 0xC696603B, \
0x1D130D07, 0x04030200, 0x00000000, 0x00000000, \
0x01030609, 0x0F20437B, 0xC5F9FFF2, 0xDDA65D4D, \
0x2A160F08, 0x05040200, 0x00000000, 0x00000000, \
0x00030407, 0x0C182E57, 0x95E7FFFF, 0xF4C05E52, \
0x4721120A, 0x06040200, 0x00000000, 0x00000000, \
0x00010305, 0x09121D39, 0x64B0EBFF, 0xFFE3784E, \
0x5431190E, 0x0A060401, 0x01000000, 0x00000000, \
0x00010304, 0x070E1522, 0x3A6CB0ED, 0xFFF8BB73, \
0x4E3C2613, 0x0C090502, 0x02010000, 0x00000000, \
0x00000203, 0x050A0F15, 0x234177C0, 0xF7FFF6CB, \
0x6E3A2818, 0x0F0B0603, 0x02010000, 0x00000000, \
0x00000102, 0x03070A0E, 0x16285296, 0xEEFFFFF6, \
0xB65F2E23, 0x170E0904, 0x02020100, 0x00000000, \
0x00000001, 0x0205080B, 0x12204581, 0xE1FCFFFF, \
0xEEA94B33, 0x27150D06, 0x04030100, 0x00000000, \
0x00000001, 0x01030609, 0x0E1B3C76, 0xD7FCFCFD, \
0xFFE47F3F, 0x351D1008, 0x05030100, 0x00000000, \
0x00000000, 0x00020406, 0x0B17366C, 0xCBF6ECEB, \
0xFDF7B550, 0x2F1D1209, 0x06040200, 0x00000000, \
0x00000000, 0x00020305, 0x09143368, 0xC8F6DFCE, \
0xF5FEDE6C, 0x3322160B, 0x08050200, 0x00000000, \
0x00000000, 0x00010203, 0x07122F61, 0xBEF5EBE3, \
0xFBFFED81, 0x3A26190E, 0x09070301, 0x00000000, \
0x00000000, 0x00010203, 0x06102751, 0xA5ECFCFB, \
0xFFFFF091, 0x3F2A1D11, 0x0B080401, 0x00010001, \
0x00000000, 0x00010102, 0x050D1B32, 0x66B1EBFF, \
0xFFFFF6AF, 0x4E2E2014, 0x0E0A0502, 0x01010101, \
0x00000000, 0x00010102, 0x050B121E, 0x3B6AAAE6, \
0xFEFFFCD8, 0x7D3B2617, 0x110C0602, 0x01010102, \
0x00000000, 0x00010102, 0x050A1016, 0x263D62A8, \
0xEEFEFFF7, 0xC46E4122, 0x150F0803, 0x02020202, \
0x00000000, 0x00000102, 0x04090E14, 0x203B6DBA, \
0xF6FFF1F1, 0xEEC99751, 0x1F110904, 0x03030303, \
0x00000000, 0x00000102, 0x04080D15, 0x2959ADEC, \
0xFEDAA3A8, 0xD7E9D494, 0x35150A04, 0x03030303, \
0x00000000, 0x00010203, 0x060B1527, 0x549FE8F9, \
0xCC755667, 0x90C1DEAE, 0x3D150B04, 0x03030303, \
0x00000000, 0x00010305, 0x080F254C, 0x9CE5F2BC, \
0x67383843, 0x5C8DC9B5, 0x51180A04, 0x03030303, \
0x00000001, 0x01020507, 0x0A163C8B, 0xE1F1AC5A, \
0x312B292B, 0x3A5F9DB1, 0x6D1D0A04, 0x03030303, \
0x00000101, 0x02040609, 0x112869D9, 0xF8B8552D, \
0x29241F1D, 0x25406B9B, 0x87280B04, 0x03030303, \
0x00000101, 0x02060A11, 0x2151A4F2, 0xD0652B25, \
0x221E1B18, 0x1E345D8E, 0x932A0A04, 0x03030303, \
0x00010202, 0x04090F1E, 0x4297E6DC, 0x7930211E, \
0x1B181616, 0x20406C84, 0x912F0903, 0x03020203, \
0x00010202, 0x050C193B, 0x87E0E88E, 0x3D231D18, \
0x1514171F, 0x3B585E5F, 0x80350C03, 0x02020202, \
0x00010203, 0x07122C6D, 0xD9F5AD47, 0x27201A14, \
0x12141E36, 0x5347365A, 0x752B0802, 0x02020202, \
0x00020304, 0x081E4FA5, 0xF2D6612C, 0x261F1916, \
0x1725373F, 0x342E4D6A, 0x3C0F0602, 0x02020202, \
0x00020204, 0x09205DC0, 0xF4C54F29, 0x261F1A1A, \
0x2240402E, 0x263B775C, 0x1B090602, 0x02020202, \
0x00010204, 0x091D458B, 0xE4EA923A, 0x26201B1F, \
0x2840241E, 0x304D5F2B, 0x0E080502, 0x01010101, \
0x00010304, 0x07142E60, 0xB1EEDA6B, 0x30211D21, \
0x283C2128, 0x51613713, 0x0C080401, 0x01010101, \
0x00010203, 0x060D1C3F, 0x74C1F1C3, 0x662E2228, \
0x31443352, 0x6B40160E, 0x0B070401, 0x01010101, \
0x00000102, 0x040A1020, 0x4085D0EF, 0xB2613032, \
0x42575F77, 0x45190F0C, 0x09060301, 0x01010101, \
0x00000101, 0x03070C14, 0x275494E3, 0xF2C16F4B, \
0x537C8968, 0x2714100B, 0x08060301, 0x01010101, \
0x00000001, 0x0205080D, 0x1732599D, 0xE2F9D7A0, \
0x87A88239, 0x1C16110C, 0x09060301, 0x01010100, \
0x00000000, 0x0104070A, 0x0E192D4E, 0x93DEFBEF, \
0xD5B45929, 0x211A130D, 0x09070401, 0x01010101, \
0x00000000, 0x00030507, 0x0A10192A, 0x4F8BD6FC, \
0xF3C16B35, 0x261E160E, 0x0A070401, 0x01010100, \
0x00000000, 0x00010204, 0x060A0F15, 0x284D93DD, \
0xFEF6D17A, 0x3F221810, 0x0C080501, 0x00010101, \
0x00000000, 0x00010102, 0x04070A0E, 0x182F5498, \
0xE0FFFEDE, 0x8B331C14, 0x0E090501, 0x01010101, \
0x00000000, 0x00010102, 0x0305080B, 0x111F3358, \
0x96E8FFF5, 0xA43A2118, 0x120C0602, 0x01010100, \
0x00000000, 0x00000001, 0x02030508, 0x0C15203B, \
0x6CCEF8F3, 0xA741261D, 0x160F0803, 0x02020202, \
0x00000000, 0x00000000, 0x01020305, 0x09111B3E, \
0x78E5FFF8, 0xBF6A3621, 0x19110903, 0x02020202, \
0x00000000, 0x00000000, 0x00010204, 0x09111E4A, \
0x8EEFFEE8, 0xC3AF7232, 0x1B120A04, 0x02020202, \
0x00000000, 0x00000000, 0x00020305, 0x0A122261, \
0xBDF8F4AE, 0x93ABAC62, 0x28120A04, 0x02020303, \
0x00000000, 0x00000000, 0x00020305, 0x0B152A77, \
0xE5FFEA7A, 0x7598CFA3, 0x4B1B0B04, 0x03030303, \
0x00000000, 0x00000000, 0x00020306, 0x0D1C3989, \
0xEFFFEC91, 0xA4CAD093, 0x34140B04, 0x03030303, \
0x00000000, 0x00000000, 0x01040508, 0x112751A5, \
0xF4FFFFEA, 0xDCB3703C, 0x1A110904, 0x02030302, \
0x00000000, 0x00000000, 0x0205080C, 0x163268C9, \
0xF9FFFAD7, 0x9658331F, 0x150E0803, 0x02020202, \
0x00000000, 0x00000001, 0x03060C15, 0x265091E9, \
0xFFFBCD7D, 0x49302216, 0x100B0602, 0x02020202, \
0x00000000, 0x00000001, 0x03081222, 0x49A2E3FF, \
0xFFEF904C, 0x36291C11, 0x0C080402, 0x01010101, \
0x00000000, 0x00000101, 0x03091123, 0x5DC9FCFF, \
0xFFEC7642, 0x3226190E, 0x0A070301, 0x01010101, \
0x00000000, 0x00000101, 0x04091020, 0x5AB1F5FF, \
0xFEE26A3D, 0x2F23170C, 0x09060200, 0x00000000, \
0x00000000, 0x00000102, 0x040A1121, 0x5AA3F2FF, \
0xF9CC5B39, 0x2D21150A, 0x06050200, 0x00000000, \
0x00000000, 0x00010102, 0x050C1324, 0x65BFF7FF, \
0xFAC95D37, 0x2C201409, 0x05030100, 0x00000000, \
0x00000000, 0x00010102, 0x050C1527, 0x75E5FFFF, \
0xFCDB8541, 0x2C201409, 0x06040200, 0x00000000, \
0x00000000, 0x00000102, 0x050D182F, 0x82EFFFFF, \
0xFFF3B854, 0x2F21150A, 0x06040200, 0x00000000, \
0x00000000, 0x00010102, 0x050E1D3A, 0x90F1FFFF, \
0xFFFACE5E, 0x3222150A, 0x07040200, 0x00000000, \
0x00000000, 0x00010101, 0x050E2144, 0x99F3FFFF, \
0xFFFBCF59, 0x3022160A, 0x07050200, 0x00000000, \
0x00000000, 0x00000101, 0x050C1933, 0x82E7FFFF, \
0xFFFACC56, 0x3022150A, 0x06040200, 0x00000000, \
0x00000000, 0x00000001, 0x040A1224, 0x66BEF7FF, \
0xFFFACC56, 0x3023160A, 0x06040200, 0x00000000, \
0x00000000, 0x00000101, 0x04090F1D, 0x5096F1FF, \
0xFFFCD356, 0x3022160B, 0x07040200, 0x00000000, \
0x00000000, 0x00000001, 0x03070C16, 0x3B7BE4FF, \
0xFFFCD14B, 0x2A1F1309, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x02050A10, 0x2659B1EE, \
0xFFF3B13E, 0x221A1008, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x0204070B, 0x163873B8, \
0xDBB55D25, 0x1A130C07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030406, 0x0C1D3851, \
0x583F2218, 0x140F0905, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x070C1318, \
0x19151311, 0x0E0B0703, 0x02010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x04070A0C, \
0x0D0D0D0C, 0x0A080502, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x02030506, \
0x07070706, 0x05040201, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010102, \
0x02020202, 0x02010000, 0x00000000, 0x00000000
var_80A047E0: .word \
0x00000000, 0x00000000, 0x00000101, 0x00010102, \
0x03010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x01010104, \
0x02010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010206, \
0x02000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x01010103, \
0x02010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x01010203, \
0x07040100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000102, 0x04030507, \
0x0A060100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01020507, 0x0A060304, \
0x05050200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x0710120C, 0x06030203, \
0x02040703, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000108, 0x1829241A, 0x0E080505, \
0x060A0E0B, 0x03030202, 0x01000100, 0x00000000, \
0x00000000, 0x0001020A, 0x1A32444D, 0x3C29180D, \
0x0C0D1013, 0x0B050403, 0x03020100, 0x01010001, \
0x00000000, 0x00010206, 0x0C182D4F, 0x69735E38, \
0x23171314, 0x180A0604, 0x03020101, 0x01010100, \
0x00000000, 0x00010203, 0x050D192B, 0x3E5D7A81, \
0x75583D29, 0x29140A08, 0x06040301, 0x01010101, \
0x00000000, 0x00010202, 0x03060A0F, 0x172B4B76, \
0x9CA49672, 0x56371E11, 0x0B070402, 0x01010202, \
0x00000000, 0x00010101, 0x02040709, 0x0E18263B, \
0x5880A4B7, 0xB08E633A, 0x170B0603, 0x02020202, \
0x00000000, 0x00000101, 0x02040608, 0x0B0F1623, \
0x365271A3, 0xCCCEB987, 0x39120803, 0x02020202, \
0x00000000, 0x00010202, 0x0305080A, 0x0E131B29, \
0x43576AA1, 0xE3F4E2A9, 0x44150803, 0x02020203, \
0x00000000, 0x01020304, 0x06090C11, 0x18254061, \
0x8FACCCEB, 0xF8E8CC90, 0x32120904, 0x03030203, \
0x00000101, 0x02030406, 0x090E1727, 0x415D9ED4, \
0xEEEFEFEA, 0xD1A07148, 0x1E120A03, 0x03030302, \
0x00000102, 0x0305080B, 0x10224079, 0xBEDAF2F6, \
0xE0C59F77, 0x59494E3C, 0x20130B04, 0x03030303, \
0x00010203, 0x060C1B30, 0x4B7EB4E4, 0xFAFDF5C0, \
0x7857463C, 0x38415930, 0x19110904, 0x03030303, \
0x00020405, 0x09173E8D, 0xCBEAF7FF, 0xFFF6BF68, \
0x372E2B2E, 0x3D504720, 0x140E0803, 0x02020202, \
0x01030507, 0x0C225AB8, 0xF3F9FEFF, 0xF3BE6235, \
0x2C28272E, 0x4B633316, 0x0F0A0602, 0x02020202, \
0x0204070A, 0x122E66B7, 0xF3FEFFE9, 0xB467382F, \
0x2A272C3E, 0x5B551D0E, 0x0B070401, 0x01020101, \
0x02060B11, 0x214893E3, 0xFFFFEC98, 0x5C3C322C, \
0x292E496A, 0x5E32110C, 0x09060301, 0x01010101, \
0x03091324, 0x509BE2FF, 0xFFF1D16B, 0x40352E2B, \
0x314A6964, 0x37150C0A, 0x08050301, 0x01000101, \
0x040B1C3E, 0x90E4FFFF, 0xE3C6C176, 0x3E302C31, \
0x48675C2F, 0x150D0A08, 0x06040200, 0x00000000, \
0x050E2555, 0xAFF7FFEC, 0x918FB5A1, 0x51313149, \
0x63552A12, 0x0E0B0906, 0x05030200, 0x00000000, \
0x050F2551, 0xA0F3FFEC, 0x85758FB7, 0x77404B5A, \
0x4D27130E, 0x0B090605, 0x03030100, 0x00000000, \
0x050E2144, 0x8CEFFFF5, 0xAD707BC4, 0xAC666240, \
0x21130F0B, 0x09070403, 0x02020000, 0x00000000, \
0x050D1931, 0x7BE5FFFC, 0xD57677C8, 0xCF7F4222, \
0x18120D09, 0x07050302, 0x01010000, 0x00000000, \
0x050D1628, 0x67C0F8FF, 0xEFA180C0, 0xD690351F, \
0x18120D07, 0x05030201, 0x00000000, 0x00000000, \
0x040B1321, 0x5094F0FF, 0xFFE4B3CE, 0xE8B24823, \
0x1A140D07, 0x04030200, 0x00000000, 0x00000000, \
0x0409101B, 0x417EDFFF, 0xFFFFEBDE, 0xEFC9602B, \
0x1D150E07, 0x04030100, 0x00000000, 0x00000000, \
0x02070D15, 0x2D549AE3, 0xFFFFFFF8, 0xFBD66D2E, \
0x20170F08, 0x04030200, 0x00000000, 0x00000000, \
0x02060B0F, 0x192F569E, 0xE4FFFFFF, 0xFEE88838, \
0x241B1108, 0x05030200, 0x00000000, 0x00000000, \
0x0105080B, 0x111F3662, 0xA4E5FFFF, 0xFFF3A747, \
0x2B20150B, 0x07040301, 0x00000000, 0x00000000, \
0x01030608, 0x0C15213D, 0x64A4E8FF, 0xFFF9C459, \
0x3225190F, 0x0A060401, 0x00000000, 0x00000000, \
0x00020405, 0x080E1521, 0x3766B0F0, 0xFFFFEB99, \
0x4B2C1D12, 0x0C080402, 0x01000000, 0x00000000, \
0x00010203, 0x050A0F16, 0x22427FD2, 0xFBFFFFDF, \
0x813B2317, 0x100B0702, 0x01000000, 0x00000000, \
0x00000202, 0x04070C11, 0x182C5DA9, 0xF4FFFFFD, \
0xCF6D321E, 0x16100903, 0x02020100, 0x00000000, \
0x00000101, 0x0205080C, 0x13224C90, 0xF0FFFFFF, \
0xF2A9552A, 0x1D150C05, 0x03020100, 0x00000000, \
0x00000000, 0x01030508, 0x0E1D498F, 0xF0FFFFFF, \
0xFFE6963E, 0x24190F07, 0x04020100, 0x00000000, \
0x00000000, 0x00020406, 0x0B1A4A95, 0xF2FFF8F8, \
0xFFFFDA5B, 0x2A1D1209, 0x05030100, 0x00000000, \
0x00000000, 0x00010305, 0x0A184187, 0xEEF7D2CF, \
0xF8FFEB6C, 0x3121160B, 0x07050301, 0x00000000, \
0x00000000, 0x00020304, 0x09163F86, 0xECEAB1B0, \
0xECFFEE83, 0x3824190E, 0x0A070301, 0x01010001, \
0x00000000, 0x00010304, 0x08143C81, 0xE6E3A9A6, \
0xCFF8F5A8, 0x43281C11, 0x0C080402, 0x01010001, \
0x00000000, 0x00010203, 0x07123679, 0xD5F0E0D3, \
0xD2F7FBCD, 0x542C2014, 0x0E090502, 0x01010101, \
0x00000000, 0x00010202, 0x050F264C, 0x85BEE6FA, \
0xF7FFFFE8, 0x74352317, 0x110B0602, 0x01020201, \
0x00000000, 0x00010102, 0x050B131F, 0x37619DE3, \
0xFFFFFFF2, 0x933F261B, 0x140D0703, 0x02020201, \
0x00000000, 0x00010102, 0x05090E14, 0x223B61A8, \
0xF1FFFFF5, 0xB05C2F1E, 0x160F0702, 0x02010202, \
0x00000000, 0x00010202, 0x050A0F15, 0x243D6BB7, \
0xF6FFF8F4, 0xD8A35B28, 0x17100803, 0x03020302, \
0x00000000, 0x00010203, 0x050B121C, 0x356BB7EE, \
0xFFE8C7C3, 0xCAB69551, 0x1C100903, 0x03030303, \
0x00000000, 0x00010203, 0x060D1A30, 0x6ABAF1FE, \
0xDA937280, 0x99889787, 0x2B110A04, 0x03030303, \
0x00000000, 0x00010304, 0x0710295D, 0xB8F1FACD, \
0x77444654, 0x6D879298, 0x38120904, 0x03030302, \
0x00000000, 0x01030507, 0x0C1946A2, 0xEDF8BD67, \
0x382F3138, 0x4D7E8D8F, 0x42140803, 0x02020203, \
0x00000000, 0x0104070B, 0x153172E0, 0xFCC45D30, \
0x2B272325, 0x335C878E, 0x49130803, 0x03020303, \
0x00000000, 0x0205090F, 0x2256A9F4, 0xE2743027, \
0x231F1A17, 0x1E3D6C85, 0x57160703, 0x02030302, \
0x00000101, 0x03070D1B, 0x398BE3F6, 0xAF442722, \
0x1E191412, 0x18356682, 0x66180703, 0x02020202, \
0x00000002, 0x0409122E, 0x65CFFDE0, 0x7532251F, \
0x1A161415, 0x1E426770, 0x6A180702, 0x02020202, \
0x00010103, 0x050D1C4A, 0x9AEFF19D, 0x482B221C, \
0x1715171B, 0x314B526E, 0x701D0702, 0x02020202, \
0x00010203, 0x06163775, 0xDFFDDE60, 0x33292019, \
0x16151925, 0x3640647E, 0x45100703, 0x02020202, \
0x00010203, 0x07183B7B, 0xE2FFE778, 0x3B2B221B, \
0x18192031, 0x375A8F6D, 0x200B0602, 0x02020202, \
0x00010203, 0x060E2256, 0xA8F0FBC7, 0x6A332622, \
0x21262633, 0x61937831, 0x100A0602, 0x02020201, \
0x00010202, 0x050B173C, 0x78D0FCF8, 0xC263322B, \
0x2D373958, 0x93863816, 0x0F0B0602, 0x01020201, \
0x00000102, 0x040A1228, 0x4D93E1FF, 0xF4B35F38, \
0x37485893, 0x92431814, 0x0F0A0502, 0x02020102, \
0x00000102, 0x03080D17, 0x2B5397E7, 0xFFEFB065, \
0x475F82AD, 0x6C271713, 0x0E0A0501, 0x01010101, \
0x00000101, 0x02060A0F, 0x183161B5, 0xEEFFF1BF, \
0x8189B494, 0x41201812, 0x0E090502, 0x01010100, \
0x00000000, 0x01040609, 0x0F1B3B73, 0xBBEFFFF9, \
0xE7DFC85E, 0x2E221911, 0x0D090501, 0x01010101, \
0x00000000, 0x00020305, 0x0A11213D, 0x76BBF0FF, \
0xFFF6CA53, 0x31261B12, 0x0C090502, 0x01010101, \
0x00000000, 0x00010203, 0x070C1421, 0x4379C2F4, \
0xFFFFE585, 0x452B2015, 0x0F0A0602, 0x01020101, \
0x00000000, 0x00010202, 0x05090E14, 0x224482CF, \
0xFAFFFFDC, 0x84392419, 0x130D0703, 0x02020202, \
0x00000000, 0x00000101, 0x03060A0E, 0x162B529B, \
0xE7FFFFFB, 0xC7512B1E, 0x17100803, 0x02020202, \
0x00000000, 0x00000000, 0x01030508, 0x0F1C3266, \
0xAEF4FFFF, 0xE3532E23, 0x1A120A03, 0x03030303, \
0x00000000, 0x00000000, 0x01020406, 0x0C152448, \
0x86EEFFFF, 0xE75A3329, 0x1F150C05, 0x04030404, \
0x00000000, 0x00000000, 0x00020305, 0x0B142146, \
0x84EEFFFF, 0xEC80442F, 0x24180D05, 0x04040403, \
0x00000000, 0x00000000, 0x00020204, 0x09121F4D, \
0x92F1FFFF, 0xFCCE7F44, 0x281C0F06, 0x05050504, \
0x00000000, 0x00000000, 0x00010203, 0x08112054, \
0xA1F3FFFF, 0xFFF8CF80, 0x371E1106, 0x05050505, \
0x00000000, 0x00000000, 0x00010204, 0x0912225D, \
0xB5F6FFFF, 0xFFFFF5B8, 0x4B211006, 0x05050505, \
0x00000000, 0x00000000, 0x00020204, 0x0A142567, \
0xCAF9FFFF, 0xFFFFF1AF, 0x401C0F06, 0x04040405, \
0x00000000, 0x00000000, 0x00010305, 0x0C162A74, \
0xE1FDFFFF, 0xFFF0B464, 0x2B1C0F06, 0x04040404, \
0x00000000, 0x00000000, 0x00020407, 0x0E1C3687, \
0xEDFFFFFF, 0xEFB26237, 0x261A0E05, 0x04040304, \
0x00000000, 0x00000000, 0x01040509, 0x132856AF, \
0xF5FFFFF7, 0xB9643A2C, 0x21170C04, 0x04030303, \
0x00000000, 0x00000000, 0x0104070C, 0x1F4AA5EB, \
0xFFFFFFF2, 0x9A4B3325, 0x1C130A04, 0x03030303, \
0x00000000, 0x00000000, 0x0205080F, 0x2A64D6FE, \
0xFFFFFFF0, 0x88442D1F, 0x17100903, 0x02020203, \
0x00000000, 0x00000000, 0x02050911, 0x2F66CBFA, \
0xFFFFFFE5, 0x6839281A, 0x130D0702, 0x02020101, \
0x00000000, 0x00000000, 0x0205090E, 0x2355ACF4, \
0xFFFFFBCC, 0x58352516, 0x100B0502, 0x02020101, \
0x00000000, 0x00000000, 0x0105080C, 0x1A4A9EF2, \
0xFFFFF4AA, 0x4B302113, 0x0E090401, 0x00000101, \
0x00000000, 0x00000000, 0x0104080C, 0x1A4BA1F3, \
0xFFFFF18E, 0x432C1E10, 0x0B080301, 0x00000000, \
0x00000000, 0x00000000, 0x0104070B, 0x1D52B4F6, \
0xFFFFEA6D, 0x3526190D, 0x09060300, 0x00000000, \
0x00000000, 0x00000000, 0x0103060B, 0x1D57C3FC, \
0xFFFFD95B, 0x2C1F140A, 0x07050200, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x153A88D9, \
0xF1DB8A35, 0x1F180F08, 0x05040200, 0x00000000, \
0x00000000, 0x00000000, 0x00020406, 0x0D214168, \
0x8067351C, 0x16100A06, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x070D151B, \
0x231C1614, 0x100B0704, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x05080A0E, \
0x0F0E0E0E, 0x0B080503, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x03040508, \
0x08080807, 0x06050301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010203, \
0x02020202, 0x01010000, 0x00000000, 0x00000000
var_80A053E0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00010001, 0x02020301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x01010102, 0x04020100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010403, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x01040803, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000102, \
0x04070401, 0x02010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000103, \
0x07050101, 0x02020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000104, \
0x08030101, 0x03070300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x01010304, \
0x04030406, 0x0A0F0802, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01020203, 0x0305090F, \
0x0A111C25, 0x2D260F03, 0x02010000, 0x00000000, \
0x00000000, 0x00000101, 0x02020304, 0x060A1628, \
0x253B5C64, 0x4B220904, 0x02020100, 0x00000000, \
0x00000000, 0x00010102, 0x03040609, 0x0E1D3862, \
0x78867045, 0x220F0705, 0x03020100, 0x00000000, \
0x00000000, 0x00010203, 0x050C1624, 0x385F87A2, \
0x98713B1B, 0x0F0C0805, 0x04020100, 0x00000000, \
0x00000000, 0x01020408, 0x0F244776, 0xA0B8B08D, \
0x5B331911, 0x0E0C0805, 0x04030100, 0x00000000, \
0x00000000, 0x01040B1C, 0x397AB4CB, 0xBF966542, \
0x2E261811, 0x0E0B0804, 0x03020100, 0x00000000, \
0x00000000, 0x02060E29, 0x5FC5F0E8, 0xB56A3D2C, \
0x241F1812, 0x0E0B0704, 0x03020100, 0x00000000, \
0x00000001, 0x02050D29, 0x62CEF7F9, 0xE1AD7B4C, \
0x32252017, 0x110D0906, 0x04030200, 0x00000000, \
0x00000000, 0x02050B1C, 0x3D89C4E3, 0xF4F1D8AC, \
0x7B4E3423, 0x18120D09, 0x07040301, 0x00010101, \
0x00000000, 0x0205080E, 0x1D40648B, 0xBEE2F2F2, \
0xDBB08658, 0x311B130D, 0x0A060402, 0x01020102, \
0x00000000, 0x0104070B, 0x12213042, 0x5B7BB2E1, \
0xF3F5E7BF, 0x81442314, 0x0D090502, 0x02020102, \
0x00000000, 0x01030609, 0x0D141D27, 0x3446638A, \
0xC1F7FFF4, 0xD3A76F3A, 0x180C0702, 0x02020202, \
0x00000000, 0x00030507, 0x0B10161C, 0x232D3B64, \
0xAFF2FFED, 0xEBE6CA8D, 0x47140903, 0x02020202, \
0x00000000, 0x00020305, 0x080D1116, 0x1E2D458E, \
0xE1FFECA8, 0xBBE3F1D0, 0x89270C04, 0x03020303, \
0x00000000, 0x00020305, 0x070A0E12, 0x1E3B7ADA, \
0xFFFEF5D6, 0xE9F1EFCF, 0x81260D04, 0x03030303, \
0x00000000, 0x01030507, 0x0A0E141B, 0x316AC0FA, \
0xFFFFF9E9, 0xD9B9AA8E, 0x4A1B0D04, 0x03030302, \
0x00000002, 0x0305080B, 0x11182841, 0x72B5F1FF, \
0xFDE7C594, 0x73718F71, 0x32170C04, 0x03030303, \
0x00000102, 0x04070D18, 0x2A486CA4, 0xE0F7FFFD, \
0xCD845F4C, 0x51687F4E, 0x21120A04, 0x03030303, \
0x00010203, 0x050B1735, 0x77C4E7F4, 0xFFFFFCD3, \
0x73473E3D, 0x52715E2C, 0x160F0904, 0x03030303, \
0x01030507, 0x0B162C63, 0xD1FAFFFF, 0xFFF2C775, \
0x40383437, 0x4F683619, 0x120D0703, 0x03020203, \
0x0104070A, 0x12264A90, 0xEDFFFFFF, 0xE8A7623C, \
0x35313038, 0x544A1E12, 0x0D090502, 0x02020202, \
0x0205090F, 0x214689DD, 0xFFFFFFEC, 0xA55E3C33, \
0x2E2C3140, 0x4824100C, 0x09060402, 0x02020201, \
0x02070F1D, 0x4699E0FF, 0xFFFFF9CF, 0x7C48392F, \
0x2C334342, 0x240D0B08, 0x06040301, 0x01010101, \
0x0309152D, 0x70DFFFFF, 0xFFF2F8DD, 0x934E362F, \
0x344A4822, 0x0C0A0806, 0x05040201, 0x00010000, \
0x030B1935, 0x7EEEFFFF, 0xF2BAD6F4, 0xCA703B37, \
0x464C290E, 0x0A080604, 0x03020100, 0x00000000, \
0x030C1832, 0x7CEAFFFF, 0xF2A5AAEF, 0xE18C4333, \
0x3727120B, 0x08060402, 0x02010000, 0x00000000, \
0x040D1629, 0x70D5FCFF, 0xF5B39EF0, 0xF1B25C2D, \
0x22170F0A, 0x06050301, 0x01000000, 0x00000000, \
0x030C1425, 0x64B6F6FF, 0xF9CBA2EF, 0xFACF6E2E, \
0x1F181009, 0x06040200, 0x00000000, 0x00000000, \
0x030A1221, 0x569BF2FF, 0xFEE8BCEF, 0xFCE08335, \
0x22191009, 0x05030200, 0x00000000, 0x00000000, \
0x0409101C, 0x4383E4FF, 0xFFFEF2FC, 0xFEF0A143, \
0x261B1109, 0x05030100, 0x00000000, 0x00000000, \
0x03080E16, 0x2E5BADEA, 0xFFFFFFFF, 0xFFF9C364, \
0x301F140A, 0x05040200, 0x00000000, 0x00000000, \
0x02060B10, 0x1C396DB1, 0xEBFFFFFF, 0xFFFBD274, \
0x3422160C, 0x07040200, 0x00000000, 0x00000000, \
0x0104080B, 0x12203A6B, 0xB1EAFFFF, 0xFFFCDF80, \
0x3A25180E, 0x08060301, 0x00000000, 0x00000000, \
0x00020507, 0x0C15213E, 0x6AACE7FF, 0xFFFFEB83, \
0x3D291B0F, 0x09070401, 0x00000000, 0x00000000, \
0x00020305, 0x080F1722, 0x3765A4E7, 0xFFFFEF94, \
0x432D1F12, 0x0C090502, 0x00000000, 0x00000000, \
0x00010203, 0x060C1218, 0x223C6AAF, 0xF2FFFDD0, \
0x69332317, 0x110C0702, 0x01010000, 0x00000000, \
0x00010203, 0x04080C10, 0x17264982, 0xDEFDFFF4, \
0xAD4C281C, 0x150F0803, 0x02010000, 0x00000000, \
0x00000101, 0x02040709, 0x0F1A335D, 0xB5F5FFFF, \
0xE5823620, 0x19110A04, 0x03020100, 0x00000000, \
0x00000000, 0x01030406, 0x0B162D53, 0xA4F3FFFF, \
0xFBC65F28, 0x1D150D06, 0x03030100, 0x00000000, \
0x00000000, 0x01020405, 0x09132A51, 0xA2F2F6F2, \
0xFFF1A63E, 0x21180F08, 0x05040200, 0x00000000, \
0x00000000, 0x00010304, 0x07112952, 0xA1DFB8B3, \
0xEBFFE05F, 0x291B120A, 0x07040200, 0x00000000, \
0x00000000, 0x00010203, 0x060F2A54, 0x9CC27883, \
0xC3F8EC77, 0x301F160C, 0x08050300, 0x00000000, \
0x00000000, 0x00010203, 0x050F2B58, 0x97AD5167, \
0x9EF1F4A0, 0x3B22190F, 0x0B070401, 0x00000000, \
0x00000000, 0x00010202, 0x050E2D5D, 0x9DA24A5A, \
0x8FEFFAC6, 0x48251B12, 0x0D080401, 0x01010100, \
0x00000000, 0x00010202, 0x040C2858, 0x9A9D625A, \
0x84E5FEE3, 0x642B1E15, 0x0F0A0502, 0x01010100, \
0x00000000, 0x00000202, 0x040B1F3C, 0x607F8F89, \
0x9ADBFAF2, 0x94372118, 0x110C0602, 0x01010101, \
0x00000000, 0x00000202, 0x0409131F, 0x2C4776AA, \
0xD9F8FFF8, 0xB13E221A, 0x130C0602, 0x02010201, \
0x00000000, 0x00010202, 0x04080D13, 0x1D33568E, \
0xD5F9FFF6, 0xB040241B, 0x140E0702, 0x01020202, \
0x00000000, 0x00000102, 0x04080C11, 0x1D325BAC, \
0xEFFFFBEA, 0xAE57311F, 0x150F0803, 0x02020202, \
0x00000000, 0x00010203, 0x05090E17, 0x3061A5E9, \
0xFFEED0B5, 0xA38D6937, 0x180F0803, 0x02020202, \
0x00000000, 0x00010304, 0x070D192E, 0x67B7ECFF, \
0xE1A27D84, 0x77708C65, 0x1F0E0803, 0x02020202, \
0x00000000, 0x00020305, 0x09122A58, 0xB7F0FFD9, \
0x884E475B, 0x5D5B8A7F, 0x230D0702, 0x02020202, \
0x00000000, 0x00020407, 0x0C1C438C, 0xE7FFD97E, \
0x45333439, 0x42577681, 0x260D0703, 0x02020202, \
0x00000000, 0x01040609, 0x112B6ACE, 0xFCE98440, \
0x312B2826, 0x2E5C7E93, 0x39100703, 0x02020202, \
0x00000001, 0x0205090E, 0x1C489EF0, 0xFBC64E2F, \
0x2A241F1C, 0x24486D8D, 0x44120702, 0x02020202, \
0x00000101, 0x02070B14, 0x2B6FD6FD, 0xF2923B2A, \
0x241E1915, 0x1C3B698D, 0x54140703, 0x02020201, \
0x00000101, 0x03080F1F, 0x439BF0FF, 0xD8582C25, \
0x1F1A1410, 0x15315D90, 0x6D190703, 0x02020201, \
0x00010101, 0x03091230, 0x68CEFBF2, 0x9C3E2B24, \
0x1F191411, 0x19315F92, 0x731C0703, 0x02020201, \
0x00010102, 0x040A1540, 0x87ECFFEA, 0x7D392D26, \
0x211C191F, 0x314C8B9E, 0x59160703, 0x02020202, \
0x00000102, 0x040A1643, 0x87EAFFF6, 0xAE543029, \
0x24202330, 0x4D80AE7E, 0x2C0E0703, 0x02020201, \
0x00000102, 0x040A1435, 0x6AC6FAFF, 0xEA9C442B, \
0x26252F4A, 0x85AF893B, 0x160E0703, 0x02020202, \
0x00000102, 0x04091022, 0x428AE0FF, 0xFFDF793D, \
0x31364E85, 0xBA9D481D, 0x130D0702, 0x02020202, \
0x00000001, 0x02060B13, 0x24519FEB, 0xFFFCCD7A, \
0x495184CE, 0xB45B2418, 0x120C0703, 0x02020202, \
0x00000000, 0x0105080C, 0x153069C1, 0xF7FFFAD0, \
0x8B7AB1CE, 0x7A341E16, 0x110C0602, 0x02020202, \
0x00000000, 0x01030508, 0x0E1D4285, 0xD7FDFFFD, \
0xE4C4E1C4, 0x51291F16, 0x100B0602, 0x02020202, \
0x00000000, 0x00020406, 0x0B132546, 0x92E3FFFF, \
0xFFF5F7B9, 0x4C2D2218, 0x120D0602, 0x02020202, \
0x00000000, 0x00010204, 0x080E182A, 0x58A3E9FF, \
0xFFFFF3B0, 0x5032261B, 0x140D0703, 0x02020202, \
0x00000000, 0x00010203, 0x050A0F18, 0x3265B3EF, \
0xFFFFFEDE, 0x803E2A1E, 0x160F0803, 0x02020202, \
0x00000000, 0x00000001, 0x02060A0E, 0x1C3B70C0, \
0xF5FFFFF9, 0xC3603021, 0x18100903, 0x02020203, \
0x00000000, 0x00000001, 0x0205080B, 0x1427458A, \
0xD7FCFFFF, 0xEC883B25, 0x1B120A04, 0x02030202, \
0x00000000, 0x00000000, 0x01040609, 0x101B2E64, \
0xAAF2FFFF, 0xF08B3D28, 0x1E150C05, 0x03030303, \
0x00000000, 0x00000000, 0x01030507, 0x0D17275E, \
0xA9F3FFFF, 0xEF823F2C, 0x21170D05, 0x04040403, \
0x00000000, 0x00000000, 0x00020305, 0x0B152767, \
0xC8F9FFFF, 0xEA763D2F, 0x23180D05, 0x04040404, \
0x00000000, 0x00000000, 0x00020305, 0x0C172C78, \
0xE7FFFFFF, 0xF29B492F, 0x24180D05, 0x04040404, \
0x00000000, 0x00000000, 0x00020406, 0x0E1D3987, \
0xEFFFFFFF, 0xFCCE6734, 0x25190E05, 0x04040404, \
0x00000000, 0x00000000, 0x01030507, 0x10244899, \
0xF1FFFFFF, 0xFDE37E3A, 0x251A0E05, 0x04040404, \
0x00000000, 0x00000000, 0x01030508, 0x122C5DBC, \
0xF7FFFFFF, 0xFDDE6F34, 0x24190D05, 0x04040404, \
0x00000000, 0x00000000, 0x01040608, 0x143678E5, \
0xFFFFFFFF, 0xF9BE4F2A, 0x20160C04, 0x03030303, \
0x00000000, 0x00000000, 0x0104060A, 0x174290F0, \
0xFFFFFFFF, 0xE6873B26, 0x1C130A04, 0x03030202, \
0x00000000, 0x00000000, 0x0104070C, 0x1C51B1F6, \
0xFFFFFFF8, 0xB3552F21, 0x18110903, 0x03020203, \
0x00000000, 0x00000000, 0x0104070C, 0x225ECFFB, \
0xFFFFFFDB, 0x6C36281B, 0x130D0702, 0x01010201, \
0x00000000, 0x00000000, 0x0104060B, 0x215ED1FD, \
0xFFFFEB98, 0x432B1F15, 0x0F0A0502, 0x01010101, \
0x00000000, 0x00000000, 0x01030508, 0x1644A0E2, \
0xF1E3B14E, 0x2A20170F, 0x0B070301, 0x00000101, \
0x00000000, 0x00000000, 0x00020406, 0x0E285479, \
0x85674323, 0x1C160F0A, 0x07040200, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x08101C23, \
0x261F1A18, 0x130F0A06, 0x04020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x05090D11, \
0x11111110, 0x0D0A0704, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x03050709, \
0x0A090909, 0x08050402, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020203, \
0x03030203, 0x02020100, 0x00000000, 0x00000000
var_80A05FE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010303, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01010100, 0x02040703, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x02020405, 0x06060300, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x0506090B, 0x06020000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010204, 0x0B0B0703, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02040A0A, 0x130E0403, 0x02010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x040C1A12, 0x1B1F0805, 0x03020101, 0x01010001, \
0x00000000, 0x00000000, 0x00000000, 0x00010204, \
0x09141A1D, 0x37491708, 0x05040201, 0x01010101, \
0x00000000, 0x00000000, 0x00000000, 0x00010308, \
0x131F1924, 0x4C73320D, 0x07060301, 0x01010001, \
0x00000001, 0x01000000, 0x01010100, 0x0103060F, \
0x211B1B30, 0x63975619, 0x0B080401, 0x01010101, \
0x00000101, 0x02010101, 0x01010101, 0x03060B13, \
0x241B264B, 0x83B07927, 0x100A0602, 0x01020202, \
0x00000206, 0x09040202, 0x02020303, 0x0509101A, \
0x1E2C58A1, 0xD1CB872F, 0x140D0703, 0x02020202, \
0x0001050D, 0x17140704, 0x05050606, 0x080E1A33, \
0x4278BEE9, 0xEAC2762A, 0x140D0703, 0x02020202, \
0x0001040A, 0x1C2E1F0D, 0x090A0B0D, 0x12203D6E, \
0xA4D6E6D9, 0xB87F3D1B, 0x120C0602, 0x02010201, \
0x00020308, 0x18344434, 0x20151318, 0x2A5190D0, \
0xE9E2BD87, 0x56331D16, 0x110B0602, 0x01010101, \
0x00010307, 0x132A5378, 0x76533544, 0x78BEDFE0, \
0xC38E533B, 0x2C221A15, 0x100A0501, 0x01010102, \
0x00010306, 0x0E1F4491, 0xDCDEBCC3, 0xD8DDC096, \
0x6E5E372B, 0x251F1913, 0x0E0A0501, 0x01010101, \
0x00010304, 0x07142E6A, 0xC2EEF7F9, 0xF3C37D59, \
0x51604B31, 0x241E1811, 0x0D080501, 0x01010101, \
0x00010203, 0x060D1B39, 0x6AA7E5FA, 0xFFF4CF93, \
0x706B704D, 0x2A1C150F, 0x0B070401, 0x01010101, \
0x00010203, 0x050A1222, 0x3A5F95CA, 0xEBFDFCEF, \
0xDBAF9D78, 0x421F150F, 0x0A070401, 0x01010101, \
0x00010203, 0x04090D13, 0x1B284167, 0x95D5EEFC, \
0xFEF4ECC5, 0x7D2F1B13, 0x0E0A0502, 0x02020102, \
0x00000101, 0x03070A0D, 0x121A2638, 0x4D7197D5, \
0xF2FFFFF8, 0xD25D291A, 0x140E0703, 0x02020202, \
0x00000001, 0x01040609, 0x0D12181F, 0x293C588D, \
0xBFF5FFFF, 0xF095512A, 0x19110904, 0x02020302, \
0x00000000, 0x00020305, 0x080C1116, 0x1D2A3F7A, \
0xC3F7FFFF, 0xEFD8A964, 0x2E140B04, 0x03030202, \
0x00000000, 0x00020405, 0x080C1116, 0x20355EAF, \
0xEDFFFFE5, 0xB7CBD8B0, 0x5D1E0B04, 0x03030303, \
0x00000000, 0x01030406, 0x080D1319, 0x2A509CE7, \
0xFFFFF4CB, 0xC9E4EAB7, 0x521A0B04, 0x03030303, \
0x00000000, 0x01020406, 0x090F1622, 0x458CE0FF, \
0xFFFFFFEF, 0xE1C6AC7A, 0x2E160C04, 0x03030303, \
0x00000101, 0x02030609, 0x0D162648, 0x84DBFFFF, \
0xFFF5E6C6, 0x8C6C6F5E, 0x28150B04, 0x03030303, \
0x00010102, 0x03070D16, 0x263F62A9, 0xE3FFFFFF, \
0xE2AA7459, 0x494C603D, 0x1B110903, 0x03030202, \
0x00010203, 0x050D1B3A, 0x83C5E4F6, 0xFFFFFFDA, \
0x8758423A, 0x3C434622, 0x130D0703, 0x02020202, \
0x00010204, 0x08152F6B, 0xDAFBFFFF, 0xFFFFD686, \
0x493A312C, 0x30372312, 0x0D090502, 0x01010201, \
0x00020406, 0x0C1F4589, 0xEEFFFFFF, 0xFCD37547, \
0x3B312922, 0x211C110C, 0x09060301, 0x01010101, \
0x0103070A, 0x143170C1, 0xF9FFFFFC, 0xD57A443B, \
0x332B2626, 0x27150D09, 0x07040201, 0x01000000, \
0x0105090F, 0x2757B4F0, 0xFFFFFFF7, 0xC4603E34, \
0x2C262826, 0x190C0906, 0x05030100, 0x00000000, \
0x02060B16, 0x4182E7FF, 0xFFFFFFFD, 0xE18C4530, \
0x2A2E2D1D, 0x0C080604, 0x03020100, 0x00000000, \
0x02060C17, 0x478AF0FF, 0xFFFDF7FF, 0xF9C7633A, \
0x3F40260F, 0x08060402, 0x02010000, 0x00000000, \
0x01070D17, 0x4486EEFF, 0xFDECCFF7, 0xFDE28655, \
0x4F31160B, 0x07050302, 0x01010000, 0x00000000, \
0x01070D17, 0x3D7CE7FE, 0xFDE3AEE9, 0xFFF6BA6C, \
0x3D1F130B, 0x07050301, 0x01000000, 0x00000000, \
0x02070D14, 0x316BD0FB, 0xFDE396BF, 0xF6F9C153, \
0x291D130A, 0x06040200, 0x00000000, 0x00000000, \
0x02060B11, 0x2451A9F4, 0xFFEDA4AF, 0xF3F8C254, \
0x2A1E140B, 0x07050300, 0x00000000, 0x00000000, \
0x0105090D, 0x19408FE8, 0xFFFFE8D6, 0xF8FACC6B, \
0x3121160C, 0x07050200, 0x00000000, 0x00000000, \
0x0103070A, 0x122D64B2, 0xEBFFFFF8, 0xFFFCDA83, \
0x3622170C, 0x08050300, 0x00000000, 0x00000000, \
0x00030508, 0x0D1A3568, 0xAAE5FFFF, 0xFFFEEC9F, \
0x3F24190D, 0x09060300, 0x00000000, 0x00000000, \
0x00020406, 0x09121F39, 0x5D97E0FB, 0xFFFFF09D, \
0x3D261B10, 0x0A060300, 0x00000000, 0x00000000, \
0x00010304, 0x070D141F, 0x32548ECF, 0xF3FFF6B2, \
0x45281C12, 0x0C080401, 0x00000000, 0x00000000, \
0x00010102, 0x04090E13, 0x1B2A487B, 0xBBF4FDD5, \
0x5F2D1F15, 0x0F0B0602, 0x01010000, 0x00000000, \
0x00000001, 0x0205080B, 0x101A2C49, 0x8ADEFDF0, \
0x9B3E2218, 0x120C0703, 0x01010000, 0x00000000, \
0x00000001, 0x01030608, 0x0C141E31, 0x6CC2F7FF, \
0xDD682A1C, 0x160F0904, 0x03010100, 0x00000000, \
0x00000000, 0x01030406, 0x0A101727, 0x61B3F4FF, \
0xF1963821, 0x1A130B05, 0x03020100, 0x00000000, \
0x00000000, 0x00010204, 0x070C1220, 0x54A4E2F4, \
0xFDD15F29, 0x1F160E06, 0x04020200, 0x00000000, \
0x00000000, 0x00010102, 0x05090F1C, 0x4B9DAFC1, \
0xF6F2A43C, 0x22191008, 0x05030100, 0x00000000, \
0x00000000, 0x00010102, 0x04091120, 0x4DA07B97, \
0xE7FFDD55, 0x271C130A, 0x07040100, 0x00000000, \
0x00000000, 0x00010102, 0x0409162B, 0x56924F74, \
0xBCF6EC73, 0x2F1F150C, 0x08050201, 0x00000101, \
0x00000000, 0x00010102, 0x040A1D3B, 0x66753D61, \
0x9CF1F399, 0x3921170F, 0x0A070301, 0x00000101, \
0x00000000, 0x00010102, 0x040B234C, 0x7E523054, \
0x8AEDF7B9, 0x42241A11, 0x0C080402, 0x01000101, \
0x00000000, 0x00000102, 0x030A2554, 0x94603D51, \
0x7FE3FDE0, 0x5F2A1D13, 0x0E090502, 0x02010201, \
0x00000000, 0x00000101, 0x030A224A, 0x8A958577, \
0x85DCFCF0, 0x87342016, 0x100B0602, 0x01020202, \
0x00000000, 0x00000101, 0x03081427, 0x436BA6C7, \
0xC4EDFEF6, 0xA23C2218, 0x120D0702, 0x02020202, \
0x00000000, 0x00000101, 0x03070D15, 0x274476BC, \
0xEDFEFFED, 0x9139241A, 0x130D0702, 0x01020202, \
0x00000000, 0x00010102, 0x04080D13, 0x203864B3, \
0xF4FFF8D6, 0x843F251A, 0x140E0703, 0x02020202, \
0x00000000, 0x00010102, 0x05090F18, 0x2E5DA8E9, \
0xFFF7DECD, 0xB884421C, 0x140E0703, 0x02020202, \
0x00000000, 0x00010203, 0x060B1322, 0x4FA1E8FF, \
0xF3C58F85, 0x98A87C2B, 0x140E0803, 0x02020202, \
0x00000000, 0x00020304, 0x070F1E3A, 0x88E2FFF4, \
0xB56A4E5B, 0x6F90973E, 0x160E0803, 0x01020202, \
0x00000000, 0x00020406, 0x0A143064, 0xC9FBFBBE, \
0x623A343B, 0x4F6CA15D, 0x1C0D0702, 0x01020101, \
0x00000000, 0x00020407, 0x0D1D4795, 0xEBFFDD69, \
0x352E2828, 0x3B559F78, 0x220E0703, 0x02020202, \
0x00000000, 0x0003060A, 0x122D6CDA, 0xFFF5AE45, \
0x2F282122, 0x3656A79A, 0x350F0703, 0x02020202, \
0x00000000, 0x0104080C, 0x1B458FEE, 0xFFF18C3F, \
0x2E261E1C, 0x2A5096AB, 0x57160703, 0x02020202, \
0x00000000, 0x0205090F, 0x256CD5FD, 0xFFDA5B34, \
0x2D261D17, 0x1D4382B8, 0x7C1E0804, 0x03020303, \
0x00000001, 0x02060B15, 0x3288EEFF, 0xF3AA4533, \
0x2D251D17, 0x1F4081C1, 0x9B2C0A04, 0x03030303, \
0x00000101, 0x03070C19, 0x40A2F6FF, 0xF2A64C34, \
0x2D262122, 0x3665AFC6, 0x8C2A0A04, 0x03030303, \
0x00000001, 0x02060C18, 0x3A92ECFF, 0xFFE18846, \
0x352F303F, 0x6CB6D4A1, 0x4E160903, 0x03020303, \
0x00000000, 0x01050912, 0x2B71C7FA, 0xFFFED984, \
0x4843578D, 0xC2D5A358, 0x22100803, 0x02020303, \
0x00000000, 0x0104070C, 0x1D498DE4, 0xFFFFFDD3, \
0x846A97DC, 0xE9B25225, 0x17100803, 0x02020203, \
0x00000000, 0x01040609, 0x112959AA, 0xECFFFFFE, \
0xDFB8DFF7, 0xC66C2D1D, 0x160F0703, 0x02020201, \
0x00000000, 0x00030507, 0x0D1A396D, 0xBCF6FFFF, \
0xFFF3FDE7, 0x8A3E251B, 0x150E0702, 0x01010101, \
0x00000000, 0x00020405, 0x09122341, 0x89E1FEFF, \
0xFFFFFBD3, 0x5C312419, 0x130D0703, 0x02010101, \
0x00000000, 0x00010203, 0x060D182A, 0x63B1F5FF, \
0xFFFFFBCC, 0x55322417, 0x100B0602, 0x01020101, \
0x00000000, 0x00000102, 0x040A111D, 0x4688E5FF, \
0xFFFFF9C4, 0x53332416, 0x100B0602, 0x01010100, \
0x00000000, 0x00000101, 0x03080E15, 0x2F62B4F5, \
0xFFFFFACB, 0x5A342517, 0x100B0602, 0x01010001, \
0x00000000, 0x00000001, 0x02060B11, 0x20478AE4, \
0xFFFFFFE7, 0x7B3A2618, 0x110B0602, 0x00010001, \
0x00000000, 0x00000000, 0x0205080C, 0x183667B9, \
0xF6FFFFF4, 0x98412618, 0x110B0602, 0x00000100, \
0x00000000, 0x00000000, 0x0104070B, 0x15305DAC, \
0xF3FFFFF0, 0x873C2517, 0x110B0602, 0x01010101, \
0x00000000, 0x00000000, 0x0104080B, 0x163775D7, \
0xFDFFFFE3, 0x62332316, 0x100A0602, 0x01010101, \
0x00000000, 0x00000000, 0x0104080C, 0x18418EED, \
0xFFFFFAC7, 0x52302114, 0x0E090501, 0x01010101, \
0x00000000, 0x00000000, 0x0104080B, 0x1B50AFF6, \
0xFFFFF4A5, 0x472D1F12, 0x0D090502, 0x01010101, \
0x00000000, 0x00000000, 0x0104070B, 0x1E5BCDFB, \
0xFFFFF086, 0x3C271A0F, 0x0A070401, 0x01010101, \
0x00000000, 0x00000000, 0x0104060A, 0x1E5BD0FD, \
0xFFFFDC60, 0x2D20150C, 0x09060301, 0x01010100, \
0x00000000, 0x00000000, 0x01030509, 0x1A49A3E4, \
0xF1DF9939, 0x21181109, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x01020407, 0x112B5781, \
0x886A3B1E, 0x17110C06, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x080F1822, \
0x251E1715, 0x110D0905, 0x03020000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x05080C0F, \
0x100F0F0F, 0x0C090603, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x03040608, \
0x08090908, 0x06040302, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010203, \
0x03030303, 0x02020100, 0x00000000, 0x00000000
var_80A06BE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010102, 0x04010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010306, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00020504, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010305, 0x05010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010304, 0x06050200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010505, 0x05080601, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010307, 0x04040201, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000020A, 0x0A020102, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00020711, 0x1C080304, 0x06060401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x01041124, 0x3F1B0605, 0x0506080A, 0x01010101, \
0x00000000, 0x00000000, 0x00000000, 0x00010000, \
0x02061B34, 0x5B380D08, 0x090D151A, 0x06010001, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0208213E, 0x6C5D170C, 0x0C111610, 0x03010101, \
0x00000000, 0x00000001, 0x01010201, 0x00000101, \
0x03092141, 0x757D2A10, 0x0D0E0903, 0x02010101, \
0x00000000, 0x01010101, 0x02060602, 0x00010101, \
0x040A1F3E, 0x77914015, 0x0D0A0502, 0x02020201, \
0x00000001, 0x01020405, 0x10110601, 0x01020202, \
0x050B1E40, 0x7BA35C1E, 0x100A0602, 0x02020201, \
0x00010202, 0x03060815, 0x1D0E0302, 0x02020303, \
0x060B2248, 0x81B47F2E, 0x140C0703, 0x02010102, \
0x01020305, 0x0B111F2B, 0x17060403, 0x03030408, \
0x0C122045, 0x8AC09336, 0x150D0703, 0x02020202, \
0x0103060B, 0x17313B23, 0x0A050403, 0x0304050C, \
0x15262443, 0x8FC69A36, 0x170E0803, 0x02020302, \
0x02050C1B, 0x3B533111, 0x09070604, 0x04050810, \
0x222D253F, 0x86C89F33, 0x17100904, 0x03030202, \
0x040A1E50, 0x85682110, 0x0E0C0A08, 0x080B1322, \
0x41282039, 0x77BF9E32, 0x18100903, 0x02030303, \
0x050E3488, 0xD9A9481B, 0x15120E0C, 0x0C13243B, \
0x4323264B, 0x90C69A30, 0x17100903, 0x03030303, \
0x05103586, 0xE3EDAA51, 0x23181310, 0x111C3C58, \
0x3530579B, 0xCDBA7D2B, 0x160F0803, 0x02030203, \
0x07102A5A, 0xA7EFF1B6, 0x5E261915, 0x1B2E5F75, \
0x5276AABC, 0xA75F331C, 0x140E0803, 0x02020202, \
0x060C172F, 0x6EC9F7F2, 0xB25D3324, 0x2D4481A8, \
0xB0C0A663, 0x3B221A17, 0x120C0703, 0x02020102, \
0x050A111E, 0x427ECCFB, 0xF7D89C64, 0x5C75B8CC, \
0xB27B492B, 0x201B1612, 0x0E0A0602, 0x01020102, \
0x04080D15, 0x284A8DDF, 0xFFFFF2E1, 0xD7DBD3AF, \
0x8C562D22, 0x1D18140F, 0x0B080401, 0x01010201, \
0x02070B10, 0x182D5092, 0xDCF3FFFE, 0xFCEEB18C, \
0x7E703F25, 0x1D17110C, 0x08060301, 0x01010101, \
0x0205080C, 0x111C2F4C, 0x79A7E3FB, 0xFFFFF1E1, \
0xB19A6636, 0x251D160F, 0x0B070401, 0x01010102, \
0x01040609, 0x0C121A26, 0x3A5B8ECA, 0xEBFAFFFF, \
0xF3E7AE68, 0x39241B13, 0x0E0A0602, 0x01020202, \
0x01030405, 0x080C1016, 0x1F2F4364, 0x8FCBEFFF, \
0xFFFFF3D0, 0x83352118, 0x110C0702, 0x02020202, \
0x00010203, 0x04070B0F, 0x141C2737, 0x537CADE6, \
0xFBFFFFFD, 0xD761301D, 0x160F0803, 0x03020202, \
0x00000102, 0x0305080B, 0x0F151C24, 0x3042619F, \
0xDEFBFFFF, 0xF3A26839, 0x20130A04, 0x03020302, \
0x00000101, 0x02030608, 0x0B10161B, 0x23304784, \
0xD6FAFFFF, 0xF8EDCB8F, 0x4F1E0D04, 0x03030304, \
0x00000000, 0x01020406, 0x080C1014, 0x1C2F4E9C, \
0xEBFFFFF2, 0xE1F8F6D8, 0xA13F1305, 0x04040404, \
0x00000000, 0x01020305, 0x070B0E13, 0x1D3B7ADC, \
0xFFFFF9E4, 0xECFEFEE8, 0xAD3C1205, 0x04040404, \
0x00000001, 0x01030508, 0x0B11171E, 0x3364B6F7, \
0xFFFFFFF9, 0xFEFBE7BF, 0x74270F05, 0x04040404, \
0x00000101, 0x0205080B, 0x111F3045, 0x6CA7EBFF, \
0xFFFFFEF4, 0xE6C48661, 0x36190D04, 0x04030304, \
0x00000101, 0x03070B12, 0x204778AD, 0xE0F4FFFF, \
0xFDF0DCA6, 0x725A4732, 0x20150B04, 0x03030303, \
0x00010102, 0x050B1632, 0x6CB6E6F5, 0xFFFFFFF0, \
0xD4987158, 0x49483F26, 0x19110903, 0x03030302, \
0x00010303, 0x07112865, 0xCEF6FFFF, 0xFFFFE19F, \
0x6C4D413C, 0x3F462B1A, 0x140E0803, 0x02030202, \
0x00020304, 0x0918397B, 0xE7FFFFFF, 0xFFDD8F58, \
0x42383534, 0x3E391D13, 0x0E0A0602, 0x02020201, \
0x00020305, 0x0A1D4281, 0xDBFAFFFF, 0xE98E523F, \
0x362F303A, 0x4924110C, 0x09060301, 0x01010101, \
0x00020406, 0x0C2255AB, 0xEFFFFFFA, 0xD671453A, \
0x33303A4B, 0x3E160C08, 0x06050201, 0x01010101, \
0x00030507, 0x0E2E77E3, 0xFFFFF5FE, 0xE8954C38, \
0x37455B57, 0x2A0F0A07, 0x05030201, 0x01000101, \
0x00020508, 0x0F3281EF, 0xFFF5C7EC, 0xF7BF623F, \
0x4B655D2E, 0x120B0805, 0x04020200, 0x00000000, \
0x00020508, 0x10307CE7, 0xFFEE95BA, 0xEEDA8059, \
0x6E5F3112, 0x0C090603, 0x02010100, 0x00000000, \
0x00030608, 0x0F2D6CC8, 0xF8ED8390, 0xD0EBB17D, \
0x6033190F, 0x0B080603, 0x02010100, 0x00000000, \
0x00020507, 0x0E2861B9, 0xF7EC7F74, 0xAFEDC576, \
0x391E160D, 0x09070502, 0x01010000, 0x00000000, \
0x00020407, 0x0C2354A6, 0xF4F2A177, 0xA0DFBB58, \
0x281C140C, 0x08050402, 0x02010000, 0x00000000, \
0x00020305, 0x0B1D4287, 0xE6FFE9C2, 0xC5C8B95F, \
0x2B1C140C, 0x08050301, 0x01000000, 0x00000000, \
0x00010304, 0x08142E61, 0xB1E7FFF6, 0xEABEB465, \
0x2D1F160E, 0x09060301, 0x00000000, 0x00000000, \
0x00010304, 0x070E1931, 0x5896DFFE, 0xFFEED683, \
0x37231910, 0x0A070401, 0x00000000, 0x00000000, \
0x00010103, 0x0509101B, 0x2E5390DB, 0xF7FFEDA3, \
0x43261C12, 0x0C090501, 0x01000000, 0x00000000, \
0x00000002, 0x03070B10, 0x182D4F89, 0xC4F6FFE0, \
0x73301F14, 0x0E0A0602, 0x01010000, 0x00000000, \
0x00000001, 0x0205080B, 0x111C2F4C, 0x8BDBFCF2, \
0x9D3E2319, 0x130D0803, 0x02010000, 0x00000000, \
0x00000001, 0x02040608, 0x0C141E30, 0x66B4F6FE, \
0xD8672B1E, 0x17100A04, 0x03020000, 0x00000000, \
0x00000000, 0x01020305, 0x080E1523, 0x4F93F0FF, \
0xF09A3923, 0x1B140C05, 0x03020100, 0x00000000, \
0x00000000, 0x00010203, 0x060B111D, 0x4A91ECF9, \
0xFFD86029, 0x1F170E07, 0x04030100, 0x00000000, \
0x00000000, 0x00010202, 0x050A0F1B, 0x4991C8D8, \
0xF9F4A13A, 0x22191108, 0x05040200, 0x00000000, \
0x00000000, 0x00000101, 0x04090E1B, 0x4B9496B1, \
0xEEFDD148, 0x261C130B, 0x07050200, 0x00000000, \
0x00000000, 0x00000101, 0x0308101F, 0x4EA17688, \
0xC7F8E763, 0x2D1F150C, 0x09050200, 0x00000000, \
0x00000000, 0x00000101, 0x0308162B, 0x56935369, \
0xA9F4EE81, 0x3421170F, 0x0A070300, 0x00000000, \
0x00000000, 0x00000101, 0x030A2040, 0x69793D5D, \
0x9AF1F39F, 0x3B231911, 0x0C080301, 0x00000000, \
0x00000000, 0x00010102, 0x030B2853, 0x82663759, \
0x91F0FAC4, 0x47261B12, 0x0D090401, 0x00010101, \
0x00000000, 0x00000102, 0x040D2C61, 0x97653A53, \
0x89EDFFE3, 0x5B2A1D14, 0x0F0A0502, 0x01010101, \
0x00000000, 0x00010102, 0x040C295A, 0x969F7460, \
0x82E5FDEB, 0x712F1F16, 0x100B0602, 0x02020101, \
0x00000000, 0x00000101, 0x040A1A35, 0x609CB6B1, \
0xB2EDFEF2, 0x8C382117, 0x100B0602, 0x01020102, \
0x00000000, 0x00000101, 0x03080E1A, 0x37649DDA, \
0xF1FEFFE1, 0x75342218, 0x120C0703, 0x01020202, \
0x00000000, 0x00000001, 0x03070C12, 0x274883D3, \
0xF9FFF4B6, 0x5A332419, 0x120D0703, 0x02020202, \
0x00000000, 0x00000101, 0x03080D16, 0x2E5DAFEF, \
0xFFFFF0D0, 0x8E4D261A, 0x130D0703, 0x02020202, \
0x00000000, 0x00000102, 0x040A101B, 0x4796E6FF, \
0xFFE3C3D4, 0xC7802F1A, 0x140E0702, 0x01020202, \
0x00000000, 0x00010102, 0x050B1323, 0x6BD8FEFF, \
0xE28D738F, 0xBCAA421D, 0x150E0803, 0x02020202, \
0x00000000, 0x00010203, 0x060D1930, 0x83EDFFF4, \
0xA4585873, 0xA7B95E22, 0x160F0803, 0x02020202, \
0x00000000, 0x00020204, 0x08112448, 0xA6F3FFE6, \
0x68434F6D, 0x9EC7892F, 0x170F0803, 0x02020302, \
0x00000000, 0x00020305, 0x0A173875, 0xE0FFFDD7, \
0x583F4255, 0x8AC0983C, 0x1A100904, 0x03020303, \
0x00000000, 0x00020406, 0x0C1E4D9C, 0xF1FFF6AC, \
0x4E393746, 0x7EB7A855, 0x1E110904, 0x02020302, \
0x00000000, 0x00020507, 0x0F2967CF, 0xFBFFEA78, \
0x43383239, 0x66A0B774, 0x25110A03, 0x02030303, \
0x00000000, 0x00030508, 0x153B7DEA, 0xFFFEE367, \
0x433C3843, 0x71A1C998, 0x32140A04, 0x03030303, \
0x00000000, 0x00030508, 0x184486EF, 0xFFFEE883, \
0x4B434766, 0xA0D0DA9B, 0x2E120A04, 0x03030303, \
0x00000000, 0x00030507, 0x123374DE, 0xFFFFF8BE, \
0x65536EB6, 0xE2EAB967, 0x22130B04, 0x03030303, \
0x00000000, 0x00020407, 0x0D2454A3, 0xEEFFFFEC, \
0xA17B9FE9, 0xF7C96D32, 0x1B120A04, 0x03030303, \
0x00000000, 0x00010306, 0x0B193B73, 0xCDFBFFFF, \
0xEACEE9FB, 0xD67D3520, 0x170F0903, 0x02020203, \
0x00000000, 0x00020305, 0x0913274B, 0x9CEEFFFF, \
0xFFF8FEE0, 0x9646261A, 0x140D0702, 0x02010202, \
0x00000000, 0x00010204, 0x080F1B33, 0x7CD5FCFF, \
0xFFFFF3A4, 0x56312216, 0x100A0602, 0x01010102, \
0x00000000, 0x00000103, 0x060D1525, 0x5DA5F2FF, \
0xFFFFEB7B, 0x412E2013, 0x0D080401, 0x01010000, \
0x00000000, 0x00000102, 0x050B1220, 0x5496F1FF, \
0xFFFFEA73, 0x3E2C1E11, 0x0C080401, 0x00010101, \
0x00000000, 0x00010102, 0x04090F1C, 0x4C8EF0FF, \
0xFFFEE875, 0x3D2A1C0F, 0x0A070401, 0x00000000, \
0x00000000, 0x00000001, 0x03080D17, 0x4082EEFF, \
0xFFFFEA6E, 0x39281A0D, 0x09060300, 0x00000000, \
0x00000000, 0x00000001, 0x03070B12, 0x3072E4FF, \
0xFFFFEA63, 0x3223160B, 0x07050200, 0x00000000, \
0x00000000, 0x00000000, 0x0205080D, 0x2158BCF8, \
0xFFFFD24C, 0x271D1209, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030609, 0x143A84D9, \
0xECD7812D, 0x1D160E07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01020305, 0x0B1F3F61, \
0x6959301B, 0x15100A05, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x070C141A, \
0x1E1A1512, 0x0F0C0804, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x04070A0D, \
0x0E0D0E0D, 0x0A080502, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x03030507, \
0x07070707, 0x06040201, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010101, \
0x02020202, 0x02010000, 0x00000000, 0x00000000
var_80A077E0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000103, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01010405, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x00000001, 0x03070803, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000203, \
0x00000002, 0x060A0400, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000205, \
0x02000002, 0x07040000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000307, \
0x07020101, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0001030A, \
0x15120C05, 0x03020201, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010513, \
0x2C3C3015, 0x09050303, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020617, \
0x33574F29, 0x180A0504, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020614, \
0x28547149, 0x1E0C0706, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x0203040A, \
0x1B427377, 0x41190D0D, 0x07050301, 0x00000000, \
0x00000000, 0x00000000, 0x00000102, 0x02030508, \
0x16326099, 0x8341191B, 0x11090401, 0x00000001, \
0x00000000, 0x00000000, 0x00010102, 0x04060A0D, \
0x16264E92, 0xAE7B271B, 0x1B120602, 0x01010001, \
0x00000000, 0x00010101, 0x01020406, 0x09141D17, \
0x11194485, 0xBE9E331A, 0x17110802, 0x01010101, \
0x00000000, 0x01020303, 0x04060B12, 0x20342812, \
0x0C14396C, 0xB2A23819, 0x130E0E07, 0x02010101, \
0x00000101, 0x02030405, 0x09122035, 0x4641190A, \
0x0C14315A, 0xA0A64B1E, 0x1513100B, 0x04020102, \
0x00000102, 0x0304060A, 0x16376882, 0x54240D0B, \
0x0D13294A, 0x88AD642F, 0x24200D04, 0x02020202, \
0x00020304, 0x05080D21, 0x488ACFAB, 0x3C120D0C, \
0x0E12213D, 0x7DB9814C, 0x2C160803, 0x02020202, \
0x01020507, 0x090F1F50, 0xA3E3D362, 0x1C120F0C, \
0x0E141F3A, 0x7BB9923E, 0x1B0E0803, 0x02020201, \
0x02040709, 0x102352A3, 0xE8D77C2A, 0x18141010, \
0x15243C5F, 0x8BA39A3A, 0x180E0803, 0x02020202, \
0x0305090F, 0x26509DE7, 0xE183371F, 0x1A161216, \
0x234B6461, 0x6B829133, 0x160F0803, 0x02020202, \
0x0509101F, 0x58A1E6EA, 0x9A41231D, 0x1915131C, \
0x33655337, 0x5482882C, 0x150E0803, 0x02020101, \
0x07122A61, 0xB5ECF0AB, 0x5029211B, 0x16131321, \
0x3D522A25, 0x4E7B7D28, 0x130D0703, 0x02020202, \
0x0A1F50B5, 0xF1F9C45D, 0x30271F19, 0x14141628, \
0x4F3E1C24, 0x4C746822, 0x110C0703, 0x02020202, \
0x0E2B64CC, 0xFDF5B95C, 0x35292018, 0x13171E2D, \
0x4A25192A, 0x587C551D, 0x100B0703, 0x02020201, \
0x0B214892, 0xE3FFECAC, 0x6032251D, 0x19202F42, \
0x3F2A3E62, 0x928D3F16, 0x0E0A0602, 0x01010102, \
0x09142C58, 0xA5E8FFF1, 0xBD653224, 0x222A415E, \
0x4A558CAB, 0x95501B11, 0x0D090502, 0x02020101, \
0x070F1C33, 0x68ADECFF, 0xF6C2723C, 0x30385583, \
0x96B5AA74, 0x3F1F1410, 0x0C080502, 0x01010101, \
0x070D1520, 0x4173BDF0, 0xFFFBDC97, 0x6D628CC6, \
0xC6A56033, 0x2019130F, 0x0B070401, 0x01010101, \
0x050A1016, 0x24437BBD, 0xEBFFFFF1, 0xE2CFE5DA, \
0x95502E26, 0x1F19130E, 0x0A070401, 0x00000101, \
0x04080C10, 0x1726406B, 0xA7E3F8FF, 0xFFF9F6C2, \
0x7A493028, 0x221A130E, 0x0A070401, 0x01000101, \
0x0205080B, 0x0F16223B, 0x5E8DC1F2, 0xFFFFFFF0, \
0xC9934B2F, 0x241C150E, 0x09070401, 0x01010101, \
0x01030506, 0x090F1620, 0x2F4B7FC4, 0xEBFDFFFF, \
0xFAE3965E, 0x35211911, 0x0C090502, 0x02010201, \
0x00020304, 0x070C1116, 0x1E2E476A, 0x98D6F2FF, \
0xFFFFF1D8, 0x8C3D2219, 0x130D0703, 0x02020202, \
0x00020203, 0x05080C0F, 0x131B2635, 0x547EABE4, \
0xF9FFFFFF, 0xDE813D25, 0x1A120A04, 0x02030303, \
0x00000102, 0x03040608, 0x0C11161D, 0x2B3E5B91, \
0xCCF9FFFF, 0xFBCE8350, 0x2C190D04, 0x03040404, \
0x00000001, 0x01020304, 0x070B1015, 0x1D2A406F, \
0xB1F3FFFF, 0xFEFAE2BB, 0x73371105, 0x05050504, \
0x00000000, 0x00010303, 0x05090D12, 0x1A263A75, \
0xC6F8FFF4, 0xF4FEFCEE, 0xBE6F1D06, 0x04050404, \
0x00000000, 0x00010203, 0x04080C10, 0x18284494, \
0xE9FFF5D2, 0xDFFAFFFB, 0xD7791C06, 0x04050505, \
0x00000000, 0x00000102, 0x04070B0F, 0x19356CC6, \
0xF9FFFFF5, 0xFAFFFEF1, 0xCA6E1D07, 0x05050505, \
0x00000000, 0x00010304, 0x070B1019, 0x2C61ADF0, \
0xFFFFFFFE, 0xF7EEDFA9, 0x71321106, 0x05050505, \
0x00000000, 0x00020509, 0x0D142240, 0x73BEF0FF, \
0xFFF7EFE0, 0xBB957D4F, 0x331B0E05, 0x04040404, \
0x00000001, 0x01050912, 0x1F3F6CAE, 0xE2FAFFF1, \
0xE2B78C71, 0x6866462B, 0x1F150B04, 0x04040404, \
0x00000001, 0x02060C1F, 0x46A4E0F7, 0xFFFFE09B, \
0x6F514442, 0x5761301D, 0x160F0904, 0x03030303, \
0x00000102, 0x03081130, 0x6AD5FDFF, 0xFFDA8B54, \
0x42393C47, 0x5E482117, 0x110C0703, 0x02030203, \
0x00010102, 0x040A153A, 0x75D3F9FF, 0xDF804537, \
0x33323A50, 0x58291611, 0x0D090502, 0x01010201, \
0x00010202, 0x050C1946, 0x99EBFFEE, 0xAB4A332E, \
0x2B2D3A5A, 0x4419100C, 0x09060301, 0x01010101, \
0x00010202, 0x050E2063, 0xD5FDF2DE, 0xB4552F28, \
0x2831424E, 0x260E0A08, 0x06040200, 0x00000000, \
0x00010203, 0x06102670, 0xEAF6C0A8, 0xAF73352B, \
0x304D5333, 0x120A0806, 0x04030100, 0x00000000, \
0x00010204, 0x07122B75, 0xECF29F74, 0x878A4736, \
0x49563414, 0x0B080604, 0x03020100, 0x00000000, \
0x00010204, 0x0816357B, 0xEDF08A55, 0x6385614A, \
0x5236170D, 0x09070503, 0x02010100, 0x00000000, \
0x00010204, 0x08193C7F, 0xEEEA7040, 0x5A839960, \
0x371B110C, 0x09060401, 0x01000000, 0x00000000, \
0x00010304, 0x07173879, 0xECED8752, 0x5B7A9E5C, \
0x2619120D, 0x09070401, 0x01000000, 0x00000000, \
0x00010203, 0x06122C68, 0xD5FAE5B5, 0x92909A6F, \
0x2B1B140E, 0x0A070402, 0x01000000, 0x00000000, \
0x00010203, 0x050D1C41, 0x82C8F0F7, 0xE0A89295, \
0x381E160F, 0x0B070502, 0x00000000, 0x00000000, \
0x00010102, 0x04091224, 0x3E6EABE5, 0xF9E8C7BC, \
0x4B231912, 0x0D090502, 0x01000000, 0x00000000, \
0x00010101, 0x03070C12, 0x1E385E8F, 0xC9F8F7E6, \
0x7C311E16, 0x110C0703, 0x01010000, 0x00000000, \
0x00000101, 0x0205080B, 0x101A2B47, 0x86DBF8FD, \
0xCB59251B, 0x150F0904, 0x02010000, 0x00000000, \
0x00000000, 0x00020407, 0x0A101A29, 0x4F97D0F9, \
0xEF913520, 0x19120B04, 0x02020100, 0x00000000, \
0x00000000, 0x00010204, 0x060B121A, 0x3369BAF6, \
0xFCCC5327, 0x1E150D06, 0x04030100, 0x00000000, \
0x00000000, 0x00010202, 0x05090E16, 0x2B59B2F2, \
0xFFE97A30, 0x21180F08, 0x05030100, 0x00000000, \
0x00000000, 0x00000102, 0x04070C13, 0x2A4B97D4, \
0xF2F5AB3D, 0x241A1109, 0x06040200, 0x00000000, \
0x00000000, 0x00000101, 0x03060B12, 0x2C4C95B6, \
0xCDF8D95A, 0x281D130B, 0x07050300, 0x00000000, \
0x00000000, 0x00000101, 0x03060A14, 0x3663A99E, \
0xA0F0EF8A, 0x3520160D, 0x09060300, 0x00000000, \
0x00000000, 0x00000102, 0x03070C18, 0x417C9073, \
0x8BEFF6AD, 0x3D22180F, 0x0B070401, 0x00000000, \
0x00000000, 0x00010102, 0x04081021, 0x54A4775B, \
0x87EFFAC6, 0x45251B11, 0x0D090401, 0x01010001, \
0x00000000, 0x00010102, 0x040A1934, 0x6AA85852, \
0x86EEFDDA, 0x4C271D14, 0x0F0A0502, 0x01010101, \
0x00000000, 0x00010102, 0x040C2450, 0x8C9B4553, \
0x8AEFFFE5, 0x52291E15, 0x100A0502, 0x01010100, \
0x00000000, 0x00010102, 0x040D3279, 0xAD843E59, \
0x90F0FFE7, 0x572B1F16, 0x100B0502, 0x01010101, \
0x00000000, 0x00010202, 0x040E3784, 0xBAA36468, \
0x95F0FFE9, 0x5E2F2016, 0x100B0502, 0x01010101, \
0x00000000, 0x00000102, 0x050E2956, 0x87B1B1AC, \
0xBAF4FFE4, 0x572E2115, 0x100A0502, 0x01010101, \
0x00000000, 0x00010102, 0x040B182D, 0x538ECCF1, \
0xF4FFFCC6, 0x502E2116, 0x100A0602, 0x01010102, \
0x00000000, 0x00010102, 0x050A121E, 0x3761A9F1, \
0xFFFFEB86, 0x412E2117, 0x100B0602, 0x02020101, \
0x00000000, 0x00010102, 0x050A1019, 0x356DC0F8, \
0xFFFFF09F, 0x5D302217, 0x100B0602, 0x01020202, \
0x00000000, 0x00010102, 0x050A111F, 0x55ACEEFF, \
0xFFF2EDE2, 0xA3402317, 0x110C0602, 0x01010202, \
0x00000000, 0x00000102, 0x050C1325, 0x73E2FFFF, \
0xECBAC4EC, 0xBD4D251A, 0x130D0703, 0x02020202, \
0x00000000, 0x00010102, 0x060D172D, 0x80EEFFF7, \
0xC288A8E7, 0xC8642A1C, 0x140E0703, 0x02020202, \
0x00000000, 0x00010203, 0x060F1E3B, 0x8CF0FFF2, \
0xA16E9BDF, 0xD582301E, 0x160F0803, 0x02020202, \
0x00000000, 0x00010203, 0x07102447, 0x9AF1FFEF, \
0x8B6599D4, 0xDF9E361F, 0x18100803, 0x02020202, \
0x00000000, 0x00010203, 0x07122A58, 0xBDF8FFEB, \
0x746098CD, 0xE6B13B20, 0x18100902, 0x02020202, \
0x00000000, 0x00020203, 0x08133166, 0xD5FCFFE9, \
0x69608DBF, 0xE8BF4A22, 0x19100903, 0x02020202, \
0x00000000, 0x00010203, 0x07143570, 0xE4FEFFE9, \
0x6D628DB7, 0xEBCB6228, 0x19110903, 0x02020202, \
0x00000000, 0x00020204, 0x0713346F, 0xDFFEFFEE, \
0x9073A9CD, 0xF0CA6128, 0x19110802, 0x02020202, \
0x00000000, 0x00010202, 0x06112A58, 0xB6F6FFFF, \
0xE1B6DAF2, 0xEDA6401E, 0x160F0702, 0x02010101, \
0x00000000, 0x00010203, 0x050E1F3E, 0x8CE8FFFF, \
0xFFF3FBFB, 0xCD65291B, 0x140D0702, 0x02020101, \
0x00000000, 0x00010202, 0x050B1428, 0x68BDF7FF, \
0xFFFFFFEC, 0x9B402318, 0x110B0602, 0x01010101, \
0x00000000, 0x00010102, 0x04090F1B, 0x468AE8FF, \
0xFFFFF8B5, 0x562B1E13, 0x0E090501, 0x01010101, \
0x00000000, 0x00000101, 0x03070B12, 0x2B61BFF8, \
0xFFFFD264, 0x2E211810, 0x0B070401, 0x00010101, \
0x00000000, 0x00000000, 0x0205080C, 0x183D85D6, \
0xE8D0762E, 0x2019120B, 0x07040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0D21405A, \
0x5848291B, 0x16110C07, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00020305, 0x070D1419, \
0x1A161412, 0x100C0805, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x05080B0D, \
0x0E0E0E0D, 0x0B080503, 0x02010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x03040507, \
0x07070707, 0x06050302, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010102, \
0x02020202, 0x02010100, 0x00000000, 0x00000000
var_80A083E0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00010302, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000102, \
0x03000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x03010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000000, \
0x01030100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000000, \
0x00010001, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000002, 0x04010000, \
0x00000103, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x05030000, \
0x00000103, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000002, 0x04090100, \
0x00000001, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000204, 0x0B1C0703, \
0x03020201, 0x01010001, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010509, 0x1A3C1A07, \
0x04030201, 0x02020405, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002040A, 0x244E370E, \
0x06050303, 0x060C0E05, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002040A, 0x264A5B25, \
0x0A070505, 0x0D1A0E02, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x0002040B, 0x24416F47, \
0x140A0807, 0x0C110602, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x0002050A, 0x1F3A7775, \
0x280E0B0A, 0x0A090403, 0x02020000, 0x00000000, \
0x00000000, 0x00000000, 0x01030509, 0x18347397, \
0x4E1C1011, 0x0B080503, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x01030407, 0x102B66AB, \
0x9D531E12, 0x0D0B0805, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x01020406, 0x0C214A89, \
0xBB9D5322, 0x150F0A07, 0x05040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030406, 0x0A18305F, \
0xA7B69657, 0x2F190F09, 0x07040200, 0x01010101, \
0x00000000, 0x00000000, 0x01030406, 0x0A132249, \
0x8EAAAC99, 0x5F311E0F, 0x08060301, 0x01010101, \
0x00000000, 0x00000001, 0x02040608, 0x0D1B3066, \
0xACA886AB, 0x95573422, 0x10070402, 0x02010101, \
0x00000000, 0x00010102, 0x0306090C, 0x182F6CBE, \
0xD28A5E85, 0x9D8B4538, 0x27130602, 0x02020202, \
0x00000000, 0x00010203, 0x05080D19, 0x3878D3E1, \
0x8E443E57, 0x7D963E34, 0x3D351C07, 0x02020202, \
0x00000000, 0x00010204, 0x070E1E3E, 0x84D8EEA5, \
0x46283243, 0x71A24A2A, 0x2F434022, 0x08020202, \
0x00000001, 0x02030507, 0x0C1C4593, 0xDFF3A94C, \
0x26242733, 0x5F975223, 0x243C4742, 0x19050202, \
0x00000102, 0x0305090E, 0x1D4795E3, 0xF4B85124, \
0x221F1F2A, 0x507E682E, 0x38575545, 0x16040202, \
0x00010203, 0x04080E1F, 0x418DE0F4, 0xB3562521, \
0x1E1C1A23, 0x466D824C, 0x5A5C3416, 0x05020202, \
0x00010304, 0x060B1944, 0x90DFF9B9, 0x5A29231E, \
0x1B191821, 0x45709B6F, 0x46220D04, 0x02020202, \
0x01040608, 0x0D1D418C, 0xDFFECE65, 0x2E241F1A, \
0x191B2333, 0x57778E57, 0x230D0703, 0x02020202, \
0x0205090E, 0x1E418BDE, 0xFFD46F2E, 0x25201A17, \
0x19253E4D, 0x504D7441, 0x170C0703, 0x02020102, \
0x03080E1B, 0x4590DFFF, 0xD97D3625, 0x211B1515, \
0x1C30322A, 0x34488D42, 0x150B0703, 0x02010101, \
0x040B1C3E, 0x8DDFFFE1, 0x84402A23, 0x1E181316, \
0x24321E1D, 0x395B8F32, 0x110C0703, 0x02010202, \
0x040E2B6C, 0xDBFFF3AA, 0x4A312921, 0x1C17131E, \
0x322A1824, 0x4E858D2B, 0x120C0703, 0x02010201, \
0x040E2E71, 0xDCFFF5B0, 0x50302820, 0x1A16141B, \
0x2B1C1D33, 0x6BA37A25, 0x120C0703, 0x02020202, \
0x050E264D, 0x94E4FFE6, 0x9244281F, 0x1917181D, \
0x28263D6B, 0xA3AF5F20, 0x120C0703, 0x02020202, \
0x050C1629, 0x5CAAECFE, 0xD9813922, 0x1D1E242E, \
0x2E4F90CA, 0xC28B3818, 0x120C0703, 0x02020202, \
0x040A111B, 0x3B6DBAEE, 0xFEDB8340, 0x2B2B385E, \
0x77B3D1BC, 0x773B1B15, 0x100B0603, 0x02020101, \
0x03080D13, 0x224177B8, 0xF4FFE2A1, 0x6B516DAC, \
0xD5DFB364, 0x331E1612, 0x0E090502, 0x02020201, \
0x0205090D, 0x1323427D, 0xD2F3FFF4, 0xDFBEDBF3, \
0xDCA66031, 0x241D1610, 0x0C080402, 0x01020101, \
0x01030609, 0x0D162745, 0x75AEE5F9, 0xFFF5FEEE, \
0x9C58392D, 0x261E1610, 0x0B080401, 0x01010101, \
0x00020506, 0x0A101824, 0x375B8DC6, 0xF8FFFFFA, \
0xC77A4932, 0x2A211811, 0x0D090501, 0x01020102, \
0x00020404, 0x060B1016, 0x1E2F4E86, 0xD7F3FFFF, \
0xFADE9956, 0x36251B13, 0x0E0A0602, 0x02020202, \
0x00010203, 0x04060A0D, 0x111B2E49, 0x78ACE5FA, \
0xFFFFEEC3, 0x7F351E15, 0x100B0602, 0x02020202, \
0x00000101, 0x02040609, 0x0C131B26, 0x3C5E90C9, \
0xEDFCFFFB, 0xD8662C1B, 0x140E0803, 0x03030302, \
0x00000100, 0x01030506, 0x090E131A, 0x2534496F, \
0xA0DFFCFF, 0xF1995631, 0x1D120A04, 0x03030302, \
0x00000000, 0x01020304, 0x060A0D11, 0x18202C4B, \
0x7ACAF7FF, 0xF5DCB782, 0x481D0C05, 0x03030304, \
0x00000000, 0x00000102, 0x0305070A, 0x10172349, \
0x88E5FFE9, 0xD2D9E3D6, 0x9C491205, 0x04040404, \
0x00000000, 0x00000001, 0x0205070A, 0x0F192B62, \
0xB9F7E2A6, 0xA29FC4EB, 0xCD771D05, 0x03040304, \
0x00000000, 0x00010101, 0x0205080B, 0x1224428D, \
0xE6E8AB92, 0xC1D1E3E3, 0xAE5A1605, 0x03030303, \
0x00000000, 0x00010202, 0x0306090C, 0x173781DB, \
0xF6CDBCD9, 0xE7DEAB7A, 0x47210D05, 0x03030304, \
0x00000000, 0x00010203, 0x05090D13, 0x2B6BD2FE, \
0xF2D0C7B6, 0x9492593A, 0x24150B04, 0x03030303, \
0x00000000, 0x00020305, 0x09111C35, 0x66B4F3E2, \
0xB98D6A5B, 0x5E623122, 0x19100904, 0x03020202, \
0x00000000, 0x01030507, 0x0E235098, 0xD9F0C673, \
0x473C3A42, 0x53422119, 0x130D0703, 0x02020201, \
0x00000001, 0x0204060B, 0x1749A7E8, 0xF9C36232, \
0x28263147, 0x56271410, 0x0C090502, 0x01010201, \
0x00000101, 0x02050810, 0x255FC0F5, 0xD2682D26, \
0x22212E48, 0x3E160D0A, 0x08050301, 0x01010101, \
0x00000101, 0x02060B1B, 0x3B87E6DF, 0x8A362522, \
0x21232B3D, 0x1E0D0A08, 0x05040201, 0x01010101, \
0x00000101, 0x03070F27, 0x50A4E7A4, 0x713F241F, \
0x20273533, 0x140A0705, 0x04030200, 0x00000000, \
0x00000001, 0x03081131, 0x5DADE073, 0x60582B1D, \
0x20323C20, 0x0B070603, 0x03020100, 0x00000000, \
0x00010102, 0x03091235, 0x65BADB54, 0x4D6A4824, \
0x2C3C270D, 0x08060402, 0x02010000, 0x00000000, \
0x00010102, 0x03091339, 0x70CED84A, 0x4256683D, \
0x372E150B, 0x08060402, 0x01010000, 0x00000000, \
0x00000102, 0x0409133C, 0x73D0D64D, 0x4353805D, \
0x371C100B, 0x08060402, 0x01010000, 0x00000000, \
0x00010102, 0x0409143D, 0x78DEE577, 0x51507A6A, \
0x2A17110B, 0x08060402, 0x01010000, 0x00000000, \
0x00000002, 0x04081233, 0x69C9F4D9, 0xA3757D83, \
0x311A140D, 0x0A070401, 0x01010000, 0x00000000, \
0x00000001, 0x03070D1F, 0x3C7AC2EB, 0xEEC49594, \
0x46211812, 0x0D090602, 0x01010000, 0x00000000, \
0x00000101, 0x02050A12, 0x203C689F, 0xE2F6E8D2, \
0x80311D16, 0x100C0702, 0x01010000, 0x00000000, \
0x00000101, 0x0103060A, 0x0F1B3358, 0x8FCDF3F4, \
0xBE57241A, 0x140E0803, 0x02010000, 0x00000000, \
0x00000001, 0x01030507, 0x0A111D2E, 0x497ABDF3, \
0xEFA4391F, 0x19110A04, 0x03020000, 0x00000000, \
0x00000000, 0x01020305, 0x080D131A, 0x2B4F8EDF, \
0xFADA5727, 0x1D150D06, 0x04030100, 0x00000000, \
0x00000000, 0x00010203, 0x05090D12, 0x1C3D7FEA, \
0xFFEE8434, 0x22191008, 0x05030100, 0x00000000, \
0x00000000, 0x00000102, 0x0306090D, 0x16367AED, \
0xF8F6B041, 0x271D1209, 0x06040100, 0x00000000, \
0x00000000, 0x00000001, 0x0205070C, 0x183981E7, \
0xD6F7D956, 0x2B1F140B, 0x07050200, 0x00000000, \
0x00000000, 0x00000001, 0x0205080D, 0x1E4196E2, \
0xB8F3E96A, 0x2F20150C, 0x08050200, 0x00000000, \
0x00000000, 0x00000101, 0x02050810, 0x2951B4D7, \
0xACF1F18C, 0x3822170E, 0x09060300, 0x00000000, \
0x00000000, 0x00000101, 0x02060911, 0x305ABAB7, \
0xA9F2F39C, 0x3B23180F, 0x0A070300, 0x00000000, \
0x00000000, 0x00000101, 0x02060A14, 0x3867AE90, \
0xA0F2F39F, 0x3C241A10, 0x0B070401, 0x00000000, \
0x00000000, 0x00000101, 0x03070C18, 0x4889A479, \
0x9BF1F4A3, 0x3E261B11, 0x0B070401, 0x01010101, \
0x00000000, 0x00000101, 0x03080F20, 0x58A89472, \
0x9EF2F6AE, 0x41271B10, 0x0C070401, 0x01010101, \
0x00000000, 0x00000101, 0x0308162C, 0x6BB88573, \
0xA4F3F7B5, 0x43271C11, 0x0C080502, 0x01010101, \
0x00000000, 0x00000101, 0x03091837, 0x80C18E7F, \
0xA9F3F8BA, 0x45281C11, 0x0C080401, 0x00010101, \
0x00000000, 0x00000101, 0x0308172F, 0x69AFBBB6, \
0xC5F6F8B4, 0x47281B10, 0x0B080401, 0x00000000, \
0x00000000, 0x00000101, 0x0308101E, 0x447EC6F1, \
0xF6FFEB8D, 0x3E281C10, 0x0A060300, 0x00000000, \
0x00000000, 0x00000101, 0x03070C15, 0x2F5BA7F3, \
0xFFFACB5D, 0x36291B0F, 0x0A060300, 0x00000000, \
0x00000000, 0x00000001, 0x03070C11, 0x2554AAF3, \
0xFFF7C05F, 0x38291B0F, 0x0A070300, 0x00000000, \
0x00000000, 0x00000001, 0x03080C15, 0x3373E0FF, \
0xFFFCDB87, 0x3F291B0F, 0x0A070300, 0x00000000, \
0x00000000, 0x00000001, 0x03070C16, 0x3D7FEEFF, \
0xFFFEEB9D, 0x44291B0E, 0x0A060300, 0x00000000, \
0x00000000, 0x00000001, 0x03070C15, 0x3A7DEEFF, \
0xFFFEEA95, 0x41291B0E, 0x09050300, 0x00000000, \
0x00000000, 0x00000001, 0x03070A13, 0x3577EAFF, \
0xFFFDE388, 0x3E271A0D, 0x09050300, 0x00000000, \
0x00000000, 0x00000000, 0x02060911, 0x2C6BDAFD, \
0xFFFCD974, 0x3825180C, 0x08050200, 0x00000000, \
0x00000000, 0x00000000, 0x0205090D, 0x1F58BCF7, \
0xFFFCD869, 0x3523160C, 0x07050200, 0x00000000, \
0x00000000, 0x00000000, 0x0103070B, 0x17489FF3, \
0xFFFAC84C, 0x291F140A, 0x07050200, 0x00000000, \
0x00000000, 0x00000000, 0x01030609, 0x123A84E1, \
0xFAECA93B, 0x21191008, 0x06030100, 0x00000000, \
0x00000000, 0x00000000, 0x01020506, 0x0D265391, \
0xB6954F21, 0x19130C06, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x08142839, \
0x42311C15, 0x110D0904, 0x03030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000103, 0x05080D11, \
0x12110F0E, 0x0C090603, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x03050708, \
0x090A0A0A, 0x08060402, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02030404, \
0x06060606, 0x05040201, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x02020202, 0x01010000, 0x00000000, 0x00000000
var_80A08FE0: .word \
0x00000000, 0x00000000, 0x00000102, 0x01000100, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000202, 0x02010301, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000104, 0x06010100, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x04010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x01040100, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000102, 0x01040300, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000104, 0x02020402, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000030A, 0x09010203, \
0x02000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010715, 0x1F070203, \
0x05020100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030D20, 0x340C0404, \
0x08030201, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0104132C, 0x4B130609, \
0x0C060201, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x0206193B, 0x601E0909, \
0x0B0A0402, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x03072149, 0x6F2B0C09, \
0x08070403, 0x03010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x0308234D, 0x733E110B, \
0x0A070809, 0x0B030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x030B2651, 0x81641B0E, \
0x0C090A0B, 0x11050100, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x040D2A57, 0x918F3012, \
0x0D0B0906, 0x06030400, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x040B2145, 0x799C4918, \
0x100D0907, 0x070D0C03, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x04091831, 0x5D966C24, \
0x130F0B09, 0x0E180A02, 0x01010000, 0x00000000, \
0x00000000, 0x00000101, 0x03081021, 0x4E879652, \
0x1C120E0C, 0x0D0B0402, 0x01000000, 0x00000000, \
0x00000000, 0x00010101, 0x03070C17, 0x3E6DB2A6, \
0x461A1824, 0x200D0604, 0x03010100, 0x00000000, \
0x00000000, 0x00000102, 0x03060A11, 0x2C5AB2D3, \
0x8A312C42, 0x240E0805, 0x03020100, 0x00000000, \
0x00000000, 0x00000101, 0x0306090D, 0x1D428AC8, \
0xC7624C41, 0x1D100B07, 0x04030200, 0x00000000, \
0x00000000, 0x00000101, 0x0205070B, 0x1431629E, \
0xE2A9783D, 0x1D140E09, 0x06030100, 0x00000000, \
0x00000000, 0x00000101, 0x0205070A, 0x10244684, \
0xE6E8AD61, 0x361B110B, 0x08050200, 0x00000000, \
0x00000000, 0x00000101, 0x02040609, 0x0F1C346D, \
0xC5F4D89B, 0x7138180F, 0x0A070301, 0x00000000, \
0x00000000, 0x00000001, 0x02040609, 0x0F1D367A, \
0xCCF0C7A3, 0x9F6F3315, 0x0C080401, 0x01010100, \
0x00000000, 0x00000101, 0x02040609, 0x132C68BC, \
0xEEC77C6D, 0x8C8B5C2A, 0x150A0501, 0x01010101, \
0x00000000, 0x00010102, 0x04080C13, 0x2B68BEF3, \
0xD06F4146, 0x5E7B6D42, 0x30130602, 0x02020102, \
0x00000000, 0x01020304, 0x060C172B, 0x6BC7F5D0, \
0x6B302930, 0x465E6D3B, 0x38261203, 0x02020202, \
0x00000001, 0x01020406, 0x0A143177, 0xCFF9CB6F, \
0x3025232A, 0x404B7339, 0x2B363114, 0x03010202, \
0x00000001, 0x02040609, 0x132D70D5, 0xFDD06C33, \
0x26221E24, 0x3B498049, 0x2327261D, 0x07020202, \
0x00010102, 0x04070A13, 0x2762BEFA, 0xD4732E24, \
0x201D1A1E, 0x33467E61, 0x2C28160A, 0x02020202, \
0x00010203, 0x050A1229, 0x59ACF0D8, 0x7331211E, \
0x1B181515, 0x233C7784, 0x2F150902, 0x02020202, \
0x00020304, 0x07112557, 0xA8EBDD86, 0x3B251F19, \
0x15131111, 0x1B377092, 0x320F0702, 0x02020202, \
0x00020406, 0x0C1F499E, 0xE8E2873D, 0x29211B15, \
0x11101215, 0x233B7390, 0x34100702, 0x02020202, \
0x0103060B, 0x1D4290E3, 0xEA9C4427, 0x231E1712, \
0x1013161A, 0x294FA393, 0x270C0703, 0x02020201, \
0x01050911, 0x3782DEEF, 0xA64C2622, 0x1E19130F, \
0x0F151218, 0x3363B98A, 0x240D0703, 0x02020202, \
0x02060B17, 0x5AC4F5CC, 0x582A231E, 0x1914100C, \
0x0E13111B, 0x407BA85B, 0x1A0D0703, 0x02020202, \
0x02060C18, 0x59BCF5E2, 0x6F2F231D, 0x18141211, \
0x1812172A, 0x66A99B36, 0x140D0803, 0x02020202, \
0x02060B15, 0x407FCEF5, 0xB84B2420, 0x1B191919, \
0x2D1F2D5B, 0xA3BC7A28, 0x130D0703, 0x02020202, \
0x0205090F, 0x254A92E4, 0xE98A3622, 0x1F1E2023, \
0x3E3B6FB6, 0xC695411A, 0x120D0703, 0x02020202, \
0x0205090D, 0x173060AB, 0xEEDA6F37, 0x23242A3B, \
0x6081BCC4, 0x8A431C15, 0x110B0603, 0x02020202, \
0x0104070A, 0x0F1D3A72, 0xC1E9C88A, 0x45313F6E, \
0xA4CABE80, 0x3D1E1813, 0x0F0B0602, 0x01020202, \
0x01030508, 0x0B13203F, 0x6EACE0E1, 0xA7707CBD, \
0xCAA15F37, 0x221A1611, 0x0C080502, 0x01010102, \
0x00020405, 0x070C1322, 0x396090C8, 0xE7E9EAE8, \
0xAA543026, 0x1F19130E, 0x0A070402, 0x01010101, \
0x00010202, 0x04080C12, 0x192A497D, 0xBBF2FFF1, \
0xAC553126, 0x1F18120B, 0x08060301, 0x01010101, \
0x00000101, 0x0205090C, 0x10192B45, 0x79C6EEFC, \
0xE9A66337, 0x251A130C, 0x09060301, 0x01010100, \
0x00000000, 0x01040608, 0x0B111825, 0x416C9ED3, \
0xEEF4D48D, 0x4A21170F, 0x0C080401, 0x01010101, \
0x00000000, 0x00020405, 0x070B0F13, 0x1E2C446B, \
0x9DE4FCE4, 0x91321A12, 0x0E090502, 0x01010101, \
0x00000000, 0x00000102, 0x0306090B, 0x111B273C, \
0x60A6EAF0, 0xA74C2315, 0x100A0501, 0x01010101, \
0x00000000, 0x00000001, 0x02040609, 0x0E151D2E, \
0x4D97EAD7, 0xA27B4F23, 0x130C0602, 0x02010202, \
0x00000000, 0x00000001, 0x01030608, 0x0C121C36, \
0x66CBE091, 0x5E64744D, 0x2C120703, 0x02020202, \
0x00000000, 0x00000000, 0x00020407, 0x0B122049, \
0x8FDAA96D, 0x473E5061, 0x5E2A0B03, 0x02020201, \
0x00000000, 0x00000000, 0x00020407, 0x0C172D6A, \
0xCABB645F, 0x56475875, 0x5B230903, 0x02020202, \
0x00000000, 0x00000101, 0x0104070A, 0x1228529D, \
0xCB7D5375, 0x85745D46, 0x240E0602, 0x02010202, \
0x00000000, 0x00010101, 0x03070A10, 0x224692D4, \
0xA5696A78, 0x66412E1E, 0x100A0502, 0x02010101, \
0x00000000, 0x00010202, 0x0409101D, 0x4382DDDC, \
0x895A4542, 0x43231711, 0x0C080401, 0x01010101, \
0x00000000, 0x00010203, 0x0711264A, 0x8BCED678, \
0x3C2F2E34, 0x421C100C, 0x09060401, 0x01010101, \
0x00000000, 0x00010305, 0x0B2254A0, 0xD0D98537, \
0x231F242F, 0x36160D09, 0x07050201, 0x01000100, \
0x00000000, 0x00020407, 0x113064CE, 0xE59D3D22, \
0x1F1C2231, 0x210E0907, 0x05030200, 0x00000000, \
0x00000000, 0x00020508, 0x163E74E5, 0xDA622520, \
0x1D1A1A24, 0x10080504, 0x02010000, 0x00000000, \
0x00000000, 0x0003060A, 0x194377E8, 0xCE6D2B1F, \
0x1B171418, 0x0A050302, 0x01000000, 0x00000000, \
0x00000000, 0x01040609, 0x184070E2, 0xBC824622, \
0x1A140E0C, 0x07050302, 0x01010000, 0x00000000, \
0x00000000, 0x00030609, 0x184071DC, 0x9B67663A, \
0x1C160E09, 0x06040201, 0x00000000, 0x00000000, \
0x00000000, 0x0003060A, 0x194988DB, 0x8147554E, \
0x251E1109, 0x06040200, 0x00000000, 0x00000000, \
0x00000000, 0x00030609, 0x1A4F92D3, 0x713D5776, \
0x341A100B, 0x07050301, 0x00000000, 0x00000000, \
0x00000000, 0x00030508, 0x194D94E2, 0x9C515A79, \
0x471D140E, 0x0A070401, 0x01000000, 0x00000000, \
0x00000000, 0x00020507, 0x143D7CD9, 0xE0A17A70, \
0x632A1811, 0x0D090502, 0x01010000, 0x00000000, \
0x00000000, 0x00010306, 0x0D214583, 0xCAE4C091, \
0x8C3F1D15, 0x100B0703, 0x01010000, 0x00000000, \
0x00000000, 0x00020304, 0x08112747, 0x7FCEF5E8, \
0xCA622619, 0x140E0803, 0x02010000, 0x00000000, \
0x00000000, 0x00010203, 0x060B1221, 0x4587DCFA, \
0xEC92331F, 0x19120B05, 0x02010100, 0x00000000, \
0x00000000, 0x00000102, 0x04080C13, 0x294B8AD0, \
0xF6CA4F27, 0x1E150D06, 0x04020100, 0x00000000, \
0x00000000, 0x00000101, 0x03060A0E, 0x193566B6, \
0xF5E76A2F, 0x22180F06, 0x04020100, 0x00000000, \
0x00000000, 0x00000001, 0x0205090D, 0x18346EC3, \
0xF7F08836, 0x241A1107, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x0204080C, 0x17387BE6, \
0xFFF4A53C, 0x261C1209, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x0204070C, 0x193C82EE, \
0xF1FCCD49, 0x281D130A, 0x07050200, 0x00000000, \
0x00000000, 0x00000000, 0x0104070D, 0x204798E1, \
0xB9F1E456, 0x2C1F150B, 0x08050200, 0x00000000, \
0x00000000, 0x00000000, 0x0104080E, 0x254CA1D4, \
0x9FEFE85B, 0x2D21160C, 0x08050200, 0x00000000, \
0x00000000, 0x00000000, 0x0104080F, 0x294EA2CD, \
0x9FEEEA69, 0x2F21160C, 0x09060300, 0x00000000, \
0x00000000, 0x00000000, 0x01040811, 0x2E59BAE0, \
0xB0F2EF7E, 0x3522180D, 0x0A060300, 0x00000000, \
0x00000000, 0x00000000, 0x01050912, 0x335CBADD, \
0xBEF5EF82, 0x3623180E, 0x0A060300, 0x00000000, \
0x00000000, 0x00000000, 0x01050913, 0x3660BDD1, \
0xBFF5ED7C, 0x3523180E, 0x0A070300, 0x00000000, \
0x00000000, 0x00000000, 0x01050912, 0x3362CAD6, \
0xC2F6EF84, 0x3824190E, 0x0A060300, 0x00000000, \
0x00000000, 0x00000000, 0x01050811, 0x3165D1E5, \
0xD1F7EF84, 0x3925180E, 0x0A070300, 0x00000000, \
0x00000000, 0x00000000, 0x0104080F, 0x2A5ABBF6, \
0xF7FFED74, 0x3624180E, 0x09060300, 0x00000000, \
0x00000000, 0x00000000, 0x0104070C, 0x20448FEE, \
0xFFFFE355, 0x2E22160C, 0x08060300, 0x00000000, \
0x00000000, 0x00000000, 0x01040609, 0x163674DA, \
0xFEFCD14A, 0x2B20140B, 0x07040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x102B5BB4, \
0xF3F5AB3F, 0x281E1309, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030507, 0x0E285DBF, \
0xFAF29537, 0x231A1008, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x00020305, 0x0B2250A5, \
0xE7D97B2D, 0x1B140C06, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x08162E53, \
0x7D602F18, 0x130E0904, 0x03010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x050C1720, \
0x291C120F, 0x0C090502, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x0306080B, \
0x0D0C0B0A, 0x08070402, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02040507, \
0x07070707, 0x05040301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010204, \
0x04040304, 0x03020101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x01010001, 0x00000000, 0x00000000, 0x00000000
var_80A09BE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x00000000, 0x00000000, \
0x00000100, 0x00010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01000000, 0x00000000, \
0x00010401, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02010000, 0x00000001, \
0x00000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02050200, 0x00000104, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000104, 0x070F0D03, 0x02010202, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010207, 0x0E1C260B, 0x06050202, \
0x01010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010204, 0x0C223F1E, 0x08080402, \
0x02010100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010204, 0x0C223C3B, 0x12070503, \
0x02010100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00020204, 0x0B1F3054, 0x2E0A0604, \
0x03020200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010304, 0x09172A5C, 0x5C190707, \
0x05030200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00020408, 0x0810295A, 0x812E0E0C, \
0x07040300, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01030B14, 0x120F2855, 0x8833100B, \
0x07050301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01040D15, 0x1E132853, 0x802C0F0B, \
0x08060401, 0x00010000, 0x00000000, 0x00000000, \
0x00000001, 0x01050C17, 0x2C212A52, 0x7D2D100C, \
0x09070502, 0x01010101, 0x00000000, 0x00000000, \
0x00000001, 0x01040812, 0x2435344F, 0x7734130D, \
0x0C0A0B05, 0x02020101, 0x01000000, 0x00000000, \
0x00000001, 0x01030716, 0x346E7161, 0x7236150F, \
0x0E131D15, 0x08030201, 0x01010000, 0x00000000, \
0x00000000, 0x01030718, 0x30639DA6, 0x943E1712, \
0x11121A23, 0x1B080303, 0x02010100, 0x00000000, \
0x00000000, 0x0103050E, 0x1D356DBA, 0xC1622115, \
0x13121624, 0x2A160703, 0x03020100, 0x00000000, \
0x00000000, 0x01030509, 0x10224175, 0xA6A65623, \
0x15121519, 0x21260F05, 0x03020100, 0x00000000, \
0x00000000, 0x00020506, 0x0A11213C, 0x76C2A55A, \
0x21141315, 0x1F321005, 0x03020100, 0x00000000, \
0x00000000, 0x00020405, 0x080C1526, 0x549CCAAD, \
0x521C1A1F, 0x2E290D05, 0x03030100, 0x00000000, \
0x00000000, 0x00020203, 0x060A0E19, 0x3D6DA7A4, \
0x872E202E, 0x3D1B0906, 0x04020100, 0x00000000, \
0x00000000, 0x00000102, 0x04070B13, 0x2B509196, \
0xC051293A, 0x29100A06, 0x04030200, 0x00000000, \
0x00000000, 0x00000101, 0x03060A0E, 0x1F3C7896, \
0xD88C3F3C, 0x1F110C07, 0x05040200, 0x00000000, \
0x00000000, 0x00000101, 0x0204080B, 0x15264B8A, \
0xDDD06D31, 0x1B140F09, 0x07050201, 0x01010101, \
0x00000000, 0x00000000, 0x01040608, 0x0F192C66, \
0xB0EAB551, 0x2518110B, 0x08060301, 0x01010101, \
0x00000000, 0x00000000, 0x01030407, 0x0B132252, \
0x8EEEEA8E, 0x4922140D, 0x09060401, 0x01010101, \
0x00000000, 0x00000000, 0x01030507, 0x0C142553, \
0x9CF0E3A3, 0x7A491F0F, 0x0B070401, 0x01010101, \
0x00000000, 0x00000000, 0x01040609, 0x101F3D85, \
0xDEDA8960, 0x73774E1C, 0x0D090502, 0x01010101, \
0x00000000, 0x00000001, 0x0205070D, 0x1E3E83D7, \
0xD67D443F, 0x526A7E3F, 0x130A0502, 0x01010101, \
0x00000000, 0x00010102, 0x03060B17, 0x3B84D6D1, \
0x7433282F, 0x41558E60, 0x1E0C0602, 0x01010101, \
0x00000000, 0x01020304, 0x060C1C39, 0x80D3C16A, \
0x2F212025, 0x354B846F, 0x1E0B0602, 0x01020102, \
0x00000000, 0x01030406, 0x0A17347E, 0xC7BC602A, \
0x1F1C1A1B, 0x26417C7C, 0x200B0602, 0x02020202, \
0x00000000, 0x0104060A, 0x132C6CCE, 0xB757241D, \
0x1A171412, 0x18366F8B, 0x2E0C0502, 0x02020202, \
0x00010102, 0x03060A17, 0x2D6ABFC9, 0x6A261A19, \
0x1614110E, 0x1330648B, 0x42100502, 0x02020202, \
0x00010203, 0x0509132B, 0x5DBECD70, 0x2D1A1714, \
0x12101010, 0x1A36698E, 0x5F150602, 0x02020202, \
0x00020304, 0x07112651, 0xA2C97E2E, 0x1C171310, \
0x0E0E111D, 0x323D5888, 0x711B0703, 0x02020202, \
0x00020406, 0x0C214F91, 0xC37F351D, 0x1914100C, \
0x0B10121F, 0x27396D99, 0x5F160703, 0x02020201, \
0x00020508, 0x173A91CB, 0x90381D1A, 0x17130F0C, \
0x111C1113, 0x21459585, 0x2D0B0602, 0x02010102, \
0x0003050B, 0x2654ACBC, 0x481F1A18, 0x15110D0F, \
0x17110C15, 0x2E578C46, 0x130A0602, 0x02010202, \
0x0003050B, 0x224999BE, 0x5D231916, 0x13100E13, \
0x21100F1B, 0x41746523, 0x0F0A0502, 0x01010202, \
0x00030609, 0x14306DA3, 0x9B461A15, 0x12101017, \
0x28121427, 0x60803713, 0x0D080502, 0x01010101, \
0x00020507, 0x0D1F426E, 0xB48B2F16, 0x14151B21, \
0x2B192A5B, 0x7D56190F, 0x0B070401, 0x01010101, \
0x00020305, 0x08122746, 0x83AB6829, 0x171A2431, \
0x33315373, 0x4F1F0F0D, 0x0A070301, 0x01000001, \
0x00010304, 0x060A132E, 0x528E9F6A, 0x36262A40, \
0x42697040, 0x19100D0A, 0x08060301, 0x00000000, \
0x00010203, 0x04070C1A, 0x2D4D7FA5, 0x9D704C61, \
0x686D3D18, 0x120F0C09, 0x06040200, 0x00000000, \
0x00000102, 0x0306080D, 0x162C476C, 0x9EB5A79B, \
0x743A1B17, 0x14100C08, 0x06040200, 0x00000000, \
0x00000001, 0x02040609, 0x0C151E2E, 0x5A97D9CF, \
0x8738201A, 0x16120C08, 0x06040200, 0x00000000, \
0x00000001, 0x01020405, 0x070B0F19, 0x355EA5C0, \
0xBE8C5027, 0x18130D09, 0x06040200, 0x00000000, \
0x00000000, 0x00010102, 0x04070B10, 0x1E335878, \
0xABCBAA69, 0x27140F0A, 0x07040200, 0x00000000, \
0x00000000, 0x00010101, 0x0305080B, 0x111B2C48, \
0x76AFB7B3, 0x4A1A100B, 0x08050301, 0x00000000, \
0x00000000, 0x00000001, 0x02040608, 0x0C11192D, \
0x4E84AAB4, 0x4B1D140D, 0x0A060301, 0x00010101, \
0x00000000, 0x00000000, 0x01020405, 0x090D121D, \
0x3877BB90, 0x54382916, 0x0B070401, 0x01010101, \
0x00000000, 0x00000000, 0x00020304, 0x070B1120, \
0x3F90BD55, 0x36424934, 0x18090401, 0x01010101, \
0x00000000, 0x00000000, 0x00010304, 0x070C1330, \
0x61B59240, 0x2A2D374B, 0x45180501, 0x01010101, \
0x00000000, 0x00000000, 0x00020305, 0x080D1A49, \
0x96A44C32, 0x22263149, 0x541E0501, 0x01010101, \
0x00000000, 0x00000000, 0x00020305, 0x0A162C62, \
0xBB713845, 0x3841432D, 0x200A0401, 0x01010101, \
0x00000000, 0x00000000, 0x01030508, 0x0F244E8E, \
0xAF554C65, 0x56342112, 0x0B070301, 0x01010100, \
0x00000000, 0x00000000, 0x0204080C, 0x1A3A89CE, \
0x9D6F5636, 0x28170F0A, 0x08050201, 0x01000001, \
0x00000000, 0x00000001, 0x03070E1C, 0x3A60BEBC, \
0x5C362719, 0x140E0B07, 0x05040200, 0x00000000, \
0x00000000, 0x00000101, 0x0309193F, 0x83A7C967, \
0x271B1612, 0x0E0B0805, 0x04020100, 0x00000000, \
0x00000000, 0x00000001, 0x040B2458, 0xACCD9435, \
0x1D18140F, 0x0B090603, 0x03020100, 0x00000000, \
0x00000000, 0x00010102, 0x040D2857, 0xA4D15E24, \
0x1C17120C, 0x09070502, 0x01010000, 0x00000000, \
0x00000000, 0x00010102, 0x050E2D5C, 0x9CB84B20, \
0x1B16100A, 0x07050301, 0x00010000, 0x00000000, \
0x00000000, 0x00010102, 0x0610336A, 0xB2C16D2D, \
0x1A150F08, 0x05040200, 0x00000000, 0x00000000, \
0x00000000, 0x00010203, 0x06113978, 0xC6AA6B44, \
0x20171309, 0x06040300, 0x00000000, 0x00000000, \
0x00000000, 0x00010203, 0x06123E8A, 0xD98A6064, \
0x2A17110A, 0x07050301, 0x00000000, 0x00000000, \
0x00000000, 0x00020204, 0x081647A4, 0xDC755670, \
0x3B1A120C, 0x08060301, 0x01000000, 0x00000000, \
0x00000000, 0x00010304, 0x08164BB0, 0xE69E5C5F, \
0x5625140E, 0x0A070401, 0x01000000, 0x00000000, \
0x00000000, 0x00010203, 0x0611377B, 0xC6D98C5D, \
0x6F3B1A12, 0x0E0A0602, 0x01010000, 0x00000000, \
0x00000000, 0x00010202, 0x050C2140, 0x7FD2DA9F, \
0x8C5F2417, 0x110C0702, 0x01000000, 0x00000000, \
0x00000000, 0x00000101, 0x03080F20, 0x4D89D8E4, \
0xBD90341B, 0x150F0803, 0x01010000, 0x00000000, \
0x00000000, 0x00000101, 0x02060B12, 0x2B55A7E7, \
0xEEBE4923, 0x18110903, 0x02010000, 0x00000000, \
0x00000000, 0x00000001, 0x0206090E, 0x193668AB, \
0xEECB4924, 0x1B130B04, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x0104080B, 0x12244795, \
0xE6C34024, 0x1C140C05, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x01040609, 0x0F20439B, \
0xEFD74E27, 0x1E160D05, 0x04020100, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0E244EAA, \
0xF2E3632B, 0x20170E06, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030507, 0x102C67D2, \
0xF0ED8132, 0x21180F06, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x14337AD8, \
0xC3E89937, 0x21190F07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x143A87D0, \
0xAEE7A73B, 0x22191008, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01030507, 0x12357CCE, \
0xCFEC9F37, 0x22190F08, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x01020406, 0x0F2C65C1, \
0xF1F29035, 0x20180E07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x01020305, 0x0D2653A6, \
0xF4E8682B, 0x1E160E06, 0x04020100, 0x00000000, \
0x00000000, 0x00000000, 0x00020305, 0x0C21468F, \
0xEDD64822, 0x1B140C05, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x0A1E458E, \
0xECC84720, 0x17110B04, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x08193B7B, \
0xCB9B3718, 0x120D0803, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x050E1C32, \
0x452C1510, 0x0D090603, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x03070B13, \
0x140D0A09, 0x08060401, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x02040508, \
0x08070706, 0x06040201, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02020304, \
0x05040404, 0x04030201, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010102, \
0x02020202, 0x01010100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A0A7E0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000100, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000200, \
0x00000000, 0x00000103, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x02000000, \
0x00000000, 0x00000001, 0x00000000, 0x00000000, \
0x00000000, 0x00000103, 0x01040201, 0x01000000, \
0x00000000, 0x00000200, 0x00000000, 0x00000000, \
0x00000000, 0x0103070D, 0x03020100, 0x01000000, \
0x00000000, 0x01020602, 0x00000000, 0x00000000, \
0x00000001, 0x03060D14, 0x06010101, 0x01010000, \
0x00000000, 0x03000200, 0x00000000, 0x00000000, \
0x00000001, 0x02061220, 0x16050202, 0x02010100, \
0x00000104, 0x0B030000, 0x00000000, 0x00000000, \
0x00000000, 0x0106101C, 0x260C0303, 0x02020100, \
0x00000101, 0x03000000, 0x00000000, 0x00000000, \
0x00000101, 0x02050D1B, 0x37230804, 0x03030201, \
0x03000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x02040A12, 0x252D1005, 0x04040405, \
0x0B030000, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x01030613, 0x233B2E0A, 0x06060503, \
0x04000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x01030613, 0x24435A1A, 0x07060402, \
0x01010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x0205060D, 0x1932542B, 0x0C070503, \
0x02020000, 0x00000000, 0x00000000, 0x00000000, \
0x00000100, 0x01040608, 0x11273A3D, 0x150C0604, \
0x03020100, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x02070D11, 0x1022314F, 0x2D1A0B06, \
0x04020200, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x040D223A, 0x1A1A233A, 0x3C190E07, \
0x05030200, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x05133865, 0x3B151E36, 0x4F201F0F, \
0x06040201, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x05122D49, 0x58241E34, 0x4D20231C, \
0x0A050301, 0x00000000, 0x00000000, 0x00000000, \
0x00010103, 0x050E2039, 0x6E532631, 0x471D1A1F, \
0x0B060402, 0x01000000, 0x00000000, 0x00000000, \
0x00010102, 0x03071130, 0x6984452D, 0x3E1A171E, \
0x120A0503, 0x02010000, 0x00000000, 0x00000000, \
0x00010102, 0x02060C26, 0x49787747, 0x401B151C, \
0x251F0A03, 0x02020000, 0x00000000, 0x00000000, \
0x00000001, 0x02050A1A, 0x2E538D83, 0x5D1F1417, \
0x1F291707, 0x03020100, 0x00000000, 0x00000000, \
0x00000101, 0x0205080E, 0x1C376CA0, 0x8D3A1714, \
0x141D210F, 0x05020100, 0x00000000, 0x00000000, \
0x00000001, 0x02040609, 0x10223965, 0x8C783B19, \
0x1314160A, 0x05040201, 0x00000000, 0x00000000, \
0x00000000, 0x01020407, 0x0911253F, 0x649E8543, \
0x19110E09, 0x06040301, 0x01010000, 0x00000000, \
0x00000000, 0x00020304, 0x070C192D, 0x4B94AC91, \
0x44160F0B, 0x0B060402, 0x01010000, 0x00000000, \
0x00000000, 0x00010103, 0x0509111E, 0x3C727A98, \
0x8E311413, 0x160A0503, 0x02010000, 0x00000000, \
0x00000000, 0x00010202, 0x04070B13, 0x2D5E6272, \
0xAD5D1F16, 0x120A0703, 0x02010000, 0x00000000, \
0x00000000, 0x00010101, 0x03060910, 0x2A4C6363, \
0xA1842916, 0x100B0804, 0x02010000, 0x00000000, \
0x00000000, 0x00000101, 0x0305070E, 0x243F6F70, \
0x839E441C, 0x120E0904, 0x02010100, 0x00000000, \
0x00000000, 0x00000001, 0x0204060B, 0x1D315E86, \
0x8DB2742E, 0x17100B06, 0x03020100, 0x00000000, \
0x00000000, 0x00000001, 0x01030508, 0x121E3262, \
0x8DB7A037, 0x17110C08, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x00020406, 0x0A121E3A, \
0x62A1C761, 0x2B160F0A, 0x07050201, 0x01010101, \
0x00000000, 0x00000000, 0x00020406, 0x090E182C, \
0x53A3D08F, 0x6132160C, 0x08060301, 0x01010101, \
0x00000000, 0x00000000, 0x00020406, 0x0B152749, \
0x86A27955, 0x6C5F3915, 0x0A060401, 0x01010101, \
0x00000000, 0x00000001, 0x01030508, 0x11224783, \
0x95582E30, 0x475C6436, 0x0F070401, 0x00010101, \
0x00000000, 0x00000101, 0x0204070E, 0x2048838D, \
0x491C1A1E, 0x263B6157, 0x18080401, 0x01010101, \
0x00000000, 0x00000102, 0x03060F1C, 0x41848446, \
0x18141414, 0x192E576F, 0x270A0401, 0x01010100, \
0x00000000, 0x00020203, 0x050B1B3A, 0x717F3B15, \
0x1211110F, 0x12284C71, 0x3A160601, 0x01010101, \
0x00000000, 0x01020305, 0x0916306D, 0x783B1211, \
0x100F0D0C, 0x0F213D59, 0x431F0801, 0x01010101, \
0x00000001, 0x01020408, 0x112C6081, 0x49150E0E, \
0x0C0B0A09, 0x0B1A304A, 0x50160401, 0x01010101, \
0x00000001, 0x0204060E, 0x20608848, 0x170F0D0B, \
0x09080706, 0x091A2441, 0x57140301, 0x01010100, \
0x00000101, 0x03050C20, 0x4C8B651C, 0x110E0B09, \
0x08070607, 0x142C1E33, 0x5D1B0601, 0x01010101, \
0x00000102, 0x040A1A36, 0x64592610, 0x0F0C0A08, \
0x07090B07, 0x0D1A1A39, 0x51150301, 0x01010101, \
0x00010202, 0x05123059, 0x6B2B100E, 0x0C0B0908, \
0x0C181A09, 0x09162E40, 0x27070301, 0x01010101, \
0x00010203, 0x05133961, 0x43120E0D, 0x0B09080C, \
0x181C0F06, 0x09193227, 0x0C050201, 0x01010101, \
0x00010203, 0x05122E4D, 0x4E230E0E, 0x0C0A090F, \
0x1A0E070A, 0x0E1B190E, 0x07040201, 0x00010001, \
0x00010203, 0x050D2036, 0x5E531D0E, 0x0D0B0A0C, \
0x180A0B10, 0x25341408, 0x05030200, 0x00000000, \
0x00000102, 0x04091528, 0x4B684116, 0x0E0E0E12, \
0x200F1127, 0x371E0706, 0x04030100, 0x00000000, \
0x00000101, 0x03050B21, 0x3652693C, 0x15101113, \
0x1F12213B, 0x26090605, 0x04030100, 0x00000000, \
0x00000101, 0x02040711, 0x22437774, 0x411D1213, \
0x1D18201B, 0x0B070505, 0x03020100, 0x00000000, \
0x00000001, 0x01030408, 0x11283E5F, 0x76592C1F, \
0x2E1C140C, 0x09080504, 0x03020100, 0x00000000, \
0x00000000, 0x01020305, 0x070F1E34, 0x54756B4E, \
0x4727120C, 0x0A080503, 0x02020100, 0x00000000, \
0x00000000, 0x00010203, 0x0508101B, 0x27466F88, \
0x692A130D, 0x0B090604, 0x03020100, 0x00000000, \
0x00000000, 0x00010102, 0x0305080C, 0x15284E80, \
0x86593B18, 0x0E0B0805, 0x04030100, 0x00000000, \
0x00000000, 0x00000001, 0x02040507, 0x0A122144, \
0x6E7B7E49, 0x140D0906, 0x05030200, 0x00000000, \
0x00000000, 0x00000000, 0x01020304, 0x060B121E, \
0x354E7382, 0x290F0B08, 0x06030100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x05070B10, \
0x20406B89, 0x3B120C09, 0x07040200, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x04060A0F, \
0x1E447A63, 0x461A0F0A, 0x08050200, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x03060A15, \
0x275A8A3A, 0x23171A14, 0x0A050200, 0x00000100, \
0x00000000, 0x00000000, 0x00000102, 0x03050B1E, \
0x3E877A27, 0x181A232D, 0x23080301, 0x01010101, \
0x00000000, 0x00000000, 0x00010102, 0x03070F2B, \
0x538E4C1D, 0x181F323A, 0x40120401, 0x01010000, \
0x00000000, 0x00000000, 0x00010203, 0x050A153C, \
0x777B3526, 0x2C33533A, 0x1F060301, 0x01000101, \
0x00000000, 0x00000000, 0x00020304, 0x070F1F4A, \
0x93583443, 0x54302313, 0x08050200, 0x00000000, \
0x00000000, 0x00000000, 0x01030406, 0x0B1A3364, \
0xA85B4839, 0x29160E09, 0x06040200, 0x00000000, \
0x00000000, 0x00000000, 0x01030509, 0x152C5B8E, \
0x9347281B, 0x120E0A07, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x0104060D, 0x24539CA5, \
0x451C1411, 0x0E0B0805, 0x03020100, 0x00000000, \
0x00000000, 0x00000001, 0x02040913, 0x3874A47E, \
0x2815110E, 0x0B080503, 0x02020100, 0x00000000, \
0x00000000, 0x00000101, 0x02050A15, 0x3967A34F, \
0x1D14100C, 0x09060402, 0x01000000, 0x00000000, \
0x00000000, 0x00000101, 0x02060A15, 0x3D62AA47, \
0x1B14120C, 0x09060301, 0x01000000, 0x00000000, \
0x00000000, 0x00000101, 0x03060A15, 0x477EB466, \
0x2417190E, 0x09060301, 0x01000000, 0x00000000, \
0x00000000, 0x00000001, 0x03060A16, 0x509BAD7A, \
0x361C1E0F, 0x09060401, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x02060A17, 0x54AD9358, \
0x431E150D, 0x09070401, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02060A16, 0x52A88147, \
0x5D2B150F, 0x0B080502, 0x01000000, 0x00000000, \
0x00000000, 0x00000101, 0x02060A16, 0x4F9A9056, \
0x6D441B11, 0x0D090602, 0x01010000, 0x00000000, \
0x00000000, 0x00000001, 0x02060916, 0x4882AD87, \
0x6E552013, 0x0F0B0702, 0x01010000, 0x00000000, \
0x00000000, 0x00000101, 0x02050811, 0x33589BC0, \
0x86692516, 0x110C0702, 0x02010000, 0x00000000, \
0x00000000, 0x00000001, 0x0205070B, 0x1B3D80D2, \
0xAB772919, 0x130D0803, 0x02010100, 0x00000000, \
0x00000000, 0x00000000, 0x02040508, 0x11316ABB, \
0xD39A361C, 0x15100903, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x01020306, 0x0D254A89, \
0xD2B6401F, 0x17110A04, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00020305, 0x0A173588, \
0xDFC34520, 0x18120B04, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010305, 0x0A153084, \
0xE3C34A21, 0x18110A04, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x08152E79, \
0xE4C1451F, 0x17110A04, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x08163177, \
0xE5C34A1F, 0x160F0A04, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x08193977, \
0xE0B5451C, 0x130E0803, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010103, 0x07163460, \
0xA3722B15, 0x0E0B0603, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x030A1621, \
0x301E100D, 0x0A070502, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x02040709, \
0x0A080807, 0x06040301, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02030304, \
0x05050505, 0x04030201, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010202, \
0x03030303, 0x03020201, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010101, \
0x02010201, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A0B3E0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000201, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000002, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00020101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01000101, \
0x00010300, 0x03070501, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02020102, \
0x05060F06, 0x06030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010305, 0x0A0B0B09, \
0x11060602, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010202, 0x03040B14, 0x2025220D, \
0x08020101, 0x01000100, 0x00000000, 0x00000000, \
0x00000000, 0x0002060C, 0x11111B1B, 0x110D0C05, \
0x03010101, 0x03030501, 0x00000000, 0x00000000, \
0x00000000, 0x01051027, 0x2E1F100A, 0x06080503, \
0x03020101, 0x03010100, 0x00000000, 0x00000000, \
0x00000101, 0x02091A2E, 0x1F0C0905, 0x04050403, \
0x02020101, 0x01000000, 0x00000000, 0x00000000, \
0x00000101, 0x0207111E, 0x1C111108, 0x04040303, \
0x02010101, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x03060A0F, 0x1B170C04, 0x03030302, \
0x02010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000103, 0x0509100F, 0x17110703, 0x02020201, \
0x01040000, 0x00000000, 0x00000000, 0x00000000, \
0x00000307, 0x09111B0E, 0x11191706, 0x03030404, \
0x070C0300, 0x00000000, 0x00000000, 0x00000000, \
0x0001050B, 0x0E190E08, 0x0A14200C, 0x04040507, \
0x09050000, 0x00000000, 0x00000000, 0x00000000, \
0x00010307, 0x11230C06, 0x080A100E, 0x07090404, \
0x04010100, 0x00000000, 0x00000000, 0x00000000, \
0x00010205, 0x0E161006, 0x070B0E15, 0x0F170702, \
0x02010100, 0x00000000, 0x00000000, 0x00000000, \
0x00010204, 0x0E19280F, 0x08101524, 0x1A150502, \
0x02010100, 0x00000000, 0x00000000, 0x00000000, \
0x00010204, 0x0D17261C, 0x090B1325, 0x201D0802, \
0x02020100, 0x00000000, 0x00000000, 0x00000000, \
0x00010204, 0x0A101C2E, 0x0E080C15, 0x19180703, \
0x03010000, 0x00000000, 0x00000000, 0x00000000, \
0x00010102, 0x050C1A2C, 0x180C080A, 0x0D0A0604, \
0x03020100, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x03081225, 0x3F32120D, 0x140C0A05, \
0x03020100, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x03050B17, 0x31412D17, 0x20140B08, \
0x03020100, 0x00000000, 0x00000000, 0x00000000, \
0x00000101, 0x02030711, 0x1B304526, 0x20190F12, \
0x06030200, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x0203050A, 0x12192828, 0x261E0D0A, \
0x05040200, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x01020305, 0x080E1F41, 0x3F1C0A07, \
0x07090401, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010304, 0x050A1631, 0x3B1B0A08, \
0x07060402, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010202, 0x0407121F, 0x2B2E1E0F, \
0x08060402, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x03050B15, 0x2A514E34, \
0x12070503, 0x03010100, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x0204080F, 0x254D3E45, \
0x33120706, 0x0A040200, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0103060B, 0x1E422734, \
0x4D300E08, 0x0B050301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01020408, 0x1B391B2C, \
0x4D421209, 0x09050301, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020307, 0x1A391929, \
0x3E4E180B, 0x09060401, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020307, 0x1C3D272A, \
0x3958290E, 0x0A060401, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00020206, 0x162D332D, \
0x33463E14, 0x0B070502, 0x01010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010204, 0x0D121623, \
0x3E4B531B, 0x0C090603, 0x02010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x06080C1B, \
0x34556026, 0x10090704, 0x03010100, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x04060A16, \
0x28525F36, 0x220C0705, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x04070C19, \
0x3C513529, 0x39170E07, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x050A132A, \
0x3F261319, 0x201E2417, 0x06030100, 0x00000000, \
0x00000000, 0x00000000, 0x00010205, 0x0D1A2F3B, \
0x220B0C0F, 0x131E1F1E, 0x08030100, 0x00000000, \
0x00000000, 0x00000000, 0x01020408, 0x183A361E, \
0x0A080808, 0x0A121923, 0x08030200, 0x00000000, \
0x00000000, 0x00000001, 0x02030810, 0x2C3E1C09, \
0x08070606, 0x070D1827, 0x0D030100, 0x00000000, \
0x00000000, 0x00000101, 0x02040E2A, 0x42220908, \
0x07060503, 0x040B1624, 0x1B050200, 0x00000000, \
0x00000000, 0x00000202, 0x040C1A36, 0x21090706, \
0x05050403, 0x040A111A, 0x21080100, 0x00000000, \
0x00000000, 0x00010204, 0x0A162325, 0x0D060505, \
0x04030302, 0x03080D0F, 0x10020100, 0x00000000, \
0x00000000, 0x00010409, 0x11243416, 0x07060504, \
0x03020202, 0x03050911, 0x1D060100, 0x00000000, \
0x00000000, 0x00020710, 0x212A1A07, 0x06050302, \
0x02010205, 0x06030612, 0x26080100, 0x00000000, \
0x00000000, 0x01050D19, 0x31180806, 0x06050402, \
0x02010308, 0x05030609, 0x11030100, 0x00000000, \
0x00000000, 0x01050E1D, 0x3E190706, 0x06040302, \
0x01010104, 0x02030503, 0x03010000, 0x00000000, \
0x00000001, 0x01040B12, 0x28250B05, 0x05040302, \
0x01020202, 0x01020202, 0x01000000, 0x00000000, \
0x00000001, 0x0103070F, 0x1E2E1408, 0x05040302, \
0x02020405, 0x08010101, 0x01000000, 0x00000000, \
0x00000001, 0x0102040A, 0x111B201A, 0x0A040403, \
0x02030611, 0x19070101, 0x01000000, 0x00000000, \
0x00000000, 0x00020303, 0x070D1927, 0x1D0A0504, \
0x03050B18, 0x0E020201, 0x00000000, 0x00000000, \
0x00000000, 0x00010202, 0x0409122A, 0x311F0805, \
0x0509070A, 0x04020201, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x02050C17, 0x1F29100C, \
0x07090404, 0x03020201, 0x01010000, 0x00000000, \
0x00000000, 0x00000101, 0x01030509, 0x0B141220, \
0x1C160905, 0x04040202, 0x01010000, 0x00000000, \
0x00000000, 0x00000001, 0x00010203, 0x06090C1C, \
0x2C1D0A07, 0x06050302, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x0305091D, \
0x4345280D, 0x07060402, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02050A16, \
0x293C4428, 0x0A060503, 0x02020100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0204070F, \
0x1C2F4450, 0x15070504, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01030408, \
0x152E4B5B, 0x1D080604, 0x03020100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020407, \
0x122E4E2F, 0x1B0D0705, 0x03030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01020409, \
0x13284219, 0x130C0B08, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0103050D, \
0x182E2E14, 0x11131C1C, 0x06030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01030718, \
0x2A491E0E, 0x0F15273A, 0x10030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0103081E, \
0x33581D13, 0x18131918, 0x05030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0204091D, \
0x32542725, 0x34140B06, 0x04030100, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x02050A21, \
0x414B2E1A, 0x16090604, 0x03020000, 0x00000000, \
0x00000000, 0x00000000, 0x00000102, 0x03060D32, \
0x69421B0E, 0x0A080603, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010102, 0x040B1A45, \
0x75290F0C, 0x0A070502, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x0611233C, \
0x6921130C, 0x09070502, 0x02010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x08193747, \
0x581C120B, 0x08060402, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x08193A52, \
0x3B110C09, 0x08060402, 0x01010000, 0x00000000, \
0x00000000, 0x00000000, 0x00020304, 0x081A3E62, \
0x36170B09, 0x08050301, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x091D4B69, \
0x2F2A1109, 0x08050301, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020305, 0x0F214F55, \
0x2F3D1C0C, 0x08050301, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020308, 0x17295237, \
0x26341C0C, 0x08060401, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020308, 0x1A294B36, \
0x232E1D0C, 0x08050401, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010306, 0x13234759, \
0x2A291B0C, 0x07050301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x0B1C4171, \
0x3E2C180B, 0x07050300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010203, 0x0718375A, \
0x53341108, 0x07040200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010202, 0x040F203A, \
0x64390F08, 0x06040200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010101, 0x03060E22, \
0x46210906, 0x04030200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000101, 0x0103060B, \
0x14090404, 0x03020100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010203, \
0x04030202, 0x02020100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x02020102, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000101, \
0x01010102, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A0BFE0: .word \
0xFFE20000, 0x00000000, 0x00000C00, 0xFFFFFFFF, \
0x001E0000, 0x00000000, 0x04000C00, 0xFFFFFFFF, \
0x001E00F0, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFE200F0, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A0C020: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x08000000, \
0xF5900000, 0x0709C250, 0xE6000000, 0x00000000, \
0xF3000000, 0x075FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0009C250, 0xF2000000, 0x0007C17C, \
0xFC30FFFF, 0x5FFEF238, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A0BFE0
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A0C0A0: .word \
0x00000000, 0x01F40000, 0x00000000, 0xFFFFFF00, \
0x00050000, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFFB0000, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000000, 0x00000000, 0xFC35C7FF, 0x5FFEFE38, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0x01003006
.word var_80A0C0A0
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A0C118: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x00050000, 0x01F40000, 0x00000000, 0xFFFFFF00, \
0xFFFB0000, 0x01F40000, 0x00000000, 0xFFFFFF00
var_80A0C148: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000000, 0x00000000, 0xFC35C7FF, 0x5FFEFE38, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0x01003006
.word var_80A0C118
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A0C190: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x00050007, 0x0009000A, \
0x000A0009, 0x00070006, 0x00030000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000002, 0x0007000B, 0x00100014, 0x00170019, \
0x00190017, 0x00140011, 0x000C0008, 0x00030000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x0005000B, 0x0012001A, 0x00210028, 0x002E0030, \
0x0030002E, 0x00290022, 0x001B0013, 0x000C0007, \
0x00010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010006, \
0x000D0016, 0x0021002E, 0x003A0644, 0x0C4A104F, \
0x10500D4C, 0x0745003B, 0x00300024, 0x00190010, \
0x00080002, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0006000D, \
0x001A0027, 0x00380748, 0x1A584265, 0x676F7C75, \
0x7D756B70, 0x49671D5A, 0x0A4C003B, 0x002B001D, \
0x00120009, 0x00030000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000005, 0x000D0019, \
0x0029003C, 0x13514D67, 0x977BD38B, 0xEA96EF9B, \
0xEF9CEC97, 0xDC8DA17D, 0x5E6C1B57, 0x01430030, \
0x001F0012, 0x00090002, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002000B, 0x00160027, \
0x003C1854, 0x6C6FC387, 0xF09EFDAF, 0xFFBCFFC1, \
0xFFC2FFBD, 0xFFB2F5A1, 0xDA8D8376, 0x265D0146, \
0x0030001E, 0x00110007, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00070012, 0x00210038, \
0x1251696E, 0xD48CFAA6, 0xFFBEFFCF, 0xFFDBFFE0, \
0xFFE1FFDC, 0xFFD2FFC2, 0xFFADE395, 0x8D79255D, \
0x0143002B, 0x001A000C, 0x00030000, 0x00000000, \
0x00000000, 0x00000003, 0x000B001A, 0x002E0648, \
0x4A66C287, 0xFAA6FFC2, 0xFFD8FFE8, 0xFFF2FFF7, \
0xFFF7FFF4, 0xFFEBFFDD, 0xFFCAFFB0, 0xE2947E75, \
0x1756003A, 0x00240012, 0x00070000, 0x00000000, \
0x00000000, 0x00000006, 0x00110021, 0x003A1B58, \
0x967BF09E, 0xFFBEFFD8, 0xFFECFFFB, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDFFF2, 0xFFE0FFC8, 0xFDABCD8A, \
0x4B670747, 0x002C0017, 0x000A0001, 0x00000000, \
0x00000000, 0x00000008, 0x00150029, 0x06444566, \
0xD48BFDAF, 0xFFCFFFE8, 0xFFFBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFF0FFD9, 0xFFBDED99, \
0x80761152, 0x0033001C, 0x000C0002, 0x00000000, \
0x00000000, 0x00010009, 0x0017002F, 0x0D4C6B70, \
0xEB97FFBC, 0xFFDBFFF3, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFF8FFE5, 0xFFC8F6A5, \
0xA47F1759, 0x0039001F, 0x000D0003, 0x00000000, \
0x00000000, 0x0001000A, 0x001A0031, 0x11518176, \
0xF09CFFC2, 0xFFE1FFF8, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFFEA, 0xFFCEF9AB, \
0xB8841D5D, 0x013B0020, 0x000F0003, 0x00000000, \
0x00000000, 0x0001000A, 0x001A0032, 0x11518577, \
0xF19EFFC3, 0xFFE2FFF8, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFEB, 0xFFCEF9AB, \
0xBA841D5D, 0x013B0020, 0x000F0003, 0x00000000, \
0x00000000, 0x00010009, 0x0019002F, 0x0F4E7572, \
0xEE99FFBF, 0xFFDEFFF6, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDFFE8, 0xFFCBF7A8, \
0xAD81195A, 0x0039001E, 0x000D0003, 0x00000000, \
0x00000000, 0x00000008, 0x0015002A, 0x0947556B, \
0xE290FFB6, 0xFFD6FFEF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFF6FFE1, 0xFFC3F2A0, \
0x8F791353, 0x0033001B, 0x000B0002, 0x00000000, \
0x00000000, 0x00000006, 0x00120025, 0x013E285E, \
0xB683F9A8, 0xFFC8FFE2, 0xFFF5FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFC, 0xFFECFFD5, 0xFFB7E494, \
0x636E0C4A, 0x002E0017, 0x00090001, 0x00000000, \
0x00000000, 0x00000003, 0x000D001D, 0x00331051, \
0x7472E495, 0xFFB5FFD1, 0xFFE5FFF4, 0xFFFCFFFF, \
0xFFFFFFFF, 0xFFF8FFEC, 0xFFDCFFC3, 0xF9A5B483, \
0x2D5F023F, 0x00260012, 0x00070000, 0x00000000, \
0x00000000, 0x00000001, 0x00090015, 0x00280140, \
0x275D9D7D, 0xED9CFFB8, 0xFFCEFFDE, 0xFFE9FFEF, \
0xFFEFFFEB, 0xFFE3FFD6, 0xFFC4FFAC, 0xDC8E6A6F, \
0x0E4F0033, 0x001D000D, 0x00030000, 0x00000000, \
0x00000000, 0x00000000, 0x0005000F, 0x001D0031, \
0x06494264, 0xA981EC9A, 0xFFB2FFC2, 0xFFCDFFD3, \
0xFFD4FFCF, 0xFFC7FFB9, 0xF9A6DC8F, 0x80751C58, \
0x003D0027, 0x00150009, 0x00010000, 0x00000000, \
0x00000000, 0x00000000, 0x00010008, 0x00130021, \
0x0034094C, 0x3D63967B, 0xDF8FF4A0, 0xFAABFDB0, \
0xFDB2FAAD, 0xF5A3E796, 0xB7846B6F, 0x1C580042, \
0x002C001B, 0x000D0005, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x000A0015, \
0x00220034, 0x04471F5A, 0x606D977B, 0xBE85D38A, \
0xD68BC286, 0xA07D7071, 0x36621050, 0x003E002C, \
0x001D0011, 0x00070001, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0003000B, \
0x00140020, 0x002F003D, 0x0B4A1657, 0x245E3463, \
0x3563255E, 0x17580E4E, 0x04420034, 0x0027001B, \
0x00100008, 0x00020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000003, \
0x000A0012, 0x001B0025, 0x002F0036, 0x013D043F, \
0x043F013D, 0x00380030, 0x0027001E, 0x0015000D, \
0x00070001, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00020007, 0x000C0013, 0x0019001E, 0x00220024, \
0x00240021, 0x001E001A, 0x0014000F, 0x00090005, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00030007, 0x000A000D, 0x00100011, \
0x00110010, 0x000D000B, 0x00080005, 0x00010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020003, 0x00050006, \
0x00050005, 0x00030002, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A0C990: .word \
0xABBACDFF, 0xEDCA9877, 0x8ABCDEFE, 0xDCCBAAA9, \
0xABABCFFF, 0xEDCBA977, 0x89ACDEFD, 0xCDDDB988, \
0xACCBCEFF, 0xEDCA9777, 0x8ABCEFFE, 0xCCCBAAA9, \
0xABBBDFFF, 0xEDCBA977, 0x8ABDEFFE, 0xDEEDA888, \
0xADDCDEFF, 0xFECA8778, 0x9ACDFFFD, 0xBBBA9AB9, \
0xABBCDFFF, 0xDCBA9878, 0x9ACDFFFF, 0xEEFEB988, \
0xADEDDEFF, 0xFECA8778, 0xABCEFFFD, 0xBAA99AA9, \
0xABBCDFFE, 0xDCBA8878, 0xABDEFFFF, 0xFFFEC999, \
0xADEEEEFF, 0xFFDB9889, 0xACDFFFFC, 0xBAA989A9, \
0xABBCDFFE, 0xCBB98789, 0xACDFFFFF, 0xFFFEC999, \
0xADEFEFFE, 0xFFDBA889, 0xBCEFFFFD, 0xBAA99AAA, \
0xABCDEFFD, 0xCCB9778A, 0xBDEFFFFF, 0xFFEEDA99, \
0xBDEFFFEE, 0xEDCBA99A, 0xCDFFFFFE, 0xCBBBBBCC, \
0xCCDEEFED, 0xCCB9789A, 0xCDFFFFFF, 0xFEDEDA9A, \
0xBCEFFFED, 0xCCBAA9AB, 0xCEFFFFFF, 0xEDCCCCCC, \
0xDDDEFFED, 0xDDC988AB, 0xDEFFFFFE, 0xDDDEEB9A, \
0xBCDFFFEC, 0xBA99AABC, 0xDFFFFFFF, 0xFEEEDDDD, \
0xDEEEFFDD, 0xEEDA89AC, 0xDFFFFFED, 0xCCDFEBAA, \
0xBCEFFFEC, 0xA889ABCD, 0xEFFFFFFF, 0xFFFEDDDD, \
0xEFFFFEDD, 0xFFDB9ABD, 0xEFFFFFFD, 0xDDEEECBB, \
0xCDEFFFEB, 0xA889BCDD, 0xFFFFFFFF, 0xFFFECCDD, \
0xEFFFFEDD, 0xFFECBBCD, 0xFFFFFFFE, 0xEDEEEDCC, \
0xDEEFFFDB, 0xA99ACDEE, 0xFFFFFFFF, 0xFFFECCDE, \
0xFFFFFEDD, 0xFFFECCDE, 0xFFFFFFFF, 0xFEEEEDDD, \
0xEEFFFECB, 0xBBABDEFF, 0xFFFFFFFF, 0xFFFDCCEE, \
0xFFFFFEDD, 0xEFFFDCDE, 0xFFFFFFFF, 0xFEEEEDDD, \
0xFFFFFECB, 0xCCBCEFFF, 0xFFFFFFFF, 0xFFEDCDEF, \
0xFFFFEDDC, 0xDFFFEDEF, 0xEFFFFFFF, 0xFEDDDCCD, \
0xFFFFFECB, 0xCCCDFFFF, 0xFFEEFFFF, 0xFEEDDEFF, \
0xFFFFEDCC, 0xCEFFEEFF, 0xEDEFFFFF, 0xFECCCBBD, \
0xFFFFFFDC, 0xCCCEFFFF, 0xFFEDEFFF, 0xFEDDEEFF, \
0xFFFFECBB, 0xCEFFFEFF, 0xDDDEFFFF, 0xFDCBBAAC, \
0xFFFFFFEC, 0xCCDFFFFF, 0xFFDDDFFF, 0xFEDEEFFF, \
0xFFFFDBBB, 0xCEFFFFFF, 0xDCCEFFFF, 0xEDBBBAAC, \
0xFFFFFFFD, 0xCCDFFFFF, 0xFEDCDFFF, 0xFDDEFEEF, \
0xFFFFEBAA, 0xCEFFFFFE, 0xCCCEFFFE, 0xEDBBBAAC, \
0xFFFFFFFE, 0xCDEFFFFF, 0xEDCCDFFF, 0xFDDEEDCE, \
0xFFFFECBB, 0xCEFFFFFD, 0xCCDFFFEE, 0xEDCBBAAD, \
0xFFFEFFFF, 0xDDFFFFFE, 0xDBBCEFFF, 0xEDCDDCBD, \
0xFFFFFDCB, 0xCFFFFFED, 0xCDFFFFEE, 0xEEDCB9AE, \
0xFFFDDFFF, 0xEEFFFEED, 0xBAACEFFF, 0xECBCCA9C, \
0xFFFFFEDC, 0xDFFFFEDC, 0xCEFFFEDD, 0xEEDCB9BF, \
0xFFECDEFF, 0xFFFFFEDC, 0xAAADFFFE, 0xDBAAA99B, \
0xEFFFFFFE, 0xEFFFEDCB, 0xCEFFEEDD, 0xEEDCA9CF, \
0xFFDCDDFF, 0xFFFFFEDC, 0xBABDFEED, 0xCB99999A, \
0xDFFFFFFF, 0xFFFFECBA, 0xBEFFEDCC, 0xDDDCA9CF, \
0xFFCCEEEF, 0xFFFEEECB, 0xCBCEEDDC, 0xBA9999AA, \
0xCFFFFFFF, 0xFFFEDCBA, 0xAEFFEDCC, 0xCCCBA9DF, \
0xFDABEEEF, 0xFFEEEDBB, 0xCCDEEDCB, 0xBA9999BA, \
0xBEFFFFFF, 0xFFEEDBA9, 0xADFFEDDB, 0xBBBBA9CF, \
0xEC9BEEEF, 0xFFEDDCAB, 0xCDDEEDCB, 0xAA9999AB, \
0xADFFFFFF, 0xFFEDCBA9, 0x9BEEDDDC, 0xAABCBABE, \
0xCA8ADEFF, 0xFFEDCBAA, 0xBCCDDDCB, 0xAAAB99AA, \
0xADFFFEEF, 0xFFDDCA98, 0x8ADDDDDC, 0xBABDCBAC, \
0xBA89CEFF, 0xFFEDCBA9, 0xAABCCDDB, 0xAACDB99A, \
0x9CFFFDDD, 0xFEDCBA98, 0x79BCCCDD, 0xCCCEECAA, \
0xAA88ADFF, 0xFFEDDCB9, 0x99ABCDDC, 0xABEFC989, \
0x9CFFFDBC, 0xEECBA987, 0x78ACCCCE, 0xEDDFFEB9, \
0x9A879DFF, 0xFFFEEDBA, 0x889AACED, 0xBDFFEA89, \
0x9CFFFDAA, 0xDEDBB987, 0x78ACCCCE, 0xFEDEFFC9, \
0xAA878CFF, 0xFFFEEECA, 0x889AACEE, 0xDFFFFB99, \
0x9BFFFDAA, 0xCEDCCA98, 0x78ACDDDE, 0xFDCDEEC9, \
0xAA888CFF, 0xFFFEFFDB, 0x99BAACEE, 0xFFFFFB99, \
0x9BEFFD99, 0xCEEDDCA8, 0x78ACDDEE, 0xDCBBCCB9, \
0xBA888CFF, 0xEEEEFFDB, 0x9ACCBDEF, 0xFFFFFC99, \
0x9ADFFC9A, 0xCEEEEDC9, 0x88ACEEFE, 0xCA999AA9, \
0xBA889CFF, 0xEEEEFFEB, 0x9BDDCEEF, 0xFFFFFC89, \
0x99CFFC9A, 0xDEFFFECA, 0x99BCEFFE, 0xA8778889, \
0xBA888CFF, 0xEEEEFFEB, 0x9BEEDEFF, 0xFFFFFC88, \
0x88BDDBAB, 0xDFFFFEDB, 0x9ABCEFFE, 0xA778878A, \
0xA9888BFF, 0xDEEEFFFC, 0xACEFEFFF, 0xFFFFFC98, \
0x88ABCBBB, 0xDEFFEDCB, 0xBBBCEFFE, 0xA889A889, \
0x99889BEF, 0xEEEEFFFD, 0xBCEFFFFF, 0xFFFFFC98, \
0x789ABCCC, 0xEEFFECCC, 0xCCCCEFFF, 0xB99BC989, \
0x88999BEF, 0xEEFFFFFD, 0xBCEFFFFF, 0xFFFFFC88, \
0x7889ADCC, 0xDEFEDCCD, 0xDDCDEFFF, 0xCABEDA88, \
0x8899ABEF, 0xEEFFFFFE, 0xCCEFFFFF, 0xFFFFFC88, \
0x8889ADDD, 0xEEFECCDE, 0xFEDDEFFF, 0xDBDFFB88, \
0x998ABCDE, 0xEEEFFFFE, 0xCCDFFFFF, 0xFFFFFB88, \
0x8989ACDD, 0xEEFECCEF, 0xFEDEEEFF, 0xEDFFFCAA, \
0xB99ACCDE, 0xEEEFFFFE, 0xDCDFFFFF, 0xFFFFFB89, \
0x9A99ACDD, 0xEFFECDFF, 0xFFEEEEEF, 0xFEFFFECB, \
0xCA9BCCDE, 0xEEEFFFFE, 0xDDEFFFFF, 0xFFFFFCAA, \
0xBBAAACDD, 0xEFFECDFF, 0xFFEFEDEF, 0xFFFFFFED, \
0xDBACCCDE, 0xEFFFFFFE, 0xDDEFFFFF, 0xFFFFFEDD, \
0xCBAABCED, 0xEFFFCDFF, 0xFFFFFEFF, 0xFFFFFFFF, \
0xECCCCCEE, 0xFFFFFFFE, 0xDEFFFFEF, 0xFFFFFFFE, \
0xDCAABCEE, 0xEFFFCCFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xEDDDCCEF, 0xFFFFFFFE, 0xDEFFFFDE, 0xFFFFFFFF, \
0xEBAABDEE, 0xFFFFDCEF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFEEEDCEF, 0xFFFFFFFE, 0xEEFFFECE, 0xFFFFFFFF, \
0xEBABCEEE, 0xFFFFDDEF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFEEDDEF, 0xFFFFFFFF, 0xEFFFECBC, 0xFFFFFFFF, \
0xDBBCDEEF, 0xFFFFEDEF, 0xFFFEEFFF, 0xFFFFFFFF, \
0xFEEDDDEF, 0xFFFFFFFF, 0xFEEDCB9B, 0xEFFFFFFF, \
0xDBCDDDEF, 0xFFFFFFFF, 0xFFFEDEFF, 0xEEFFFFFF, \
0xEDDCCCDF, 0xFFFFFFFF, 0xFEDCA98A, 0xDFFFFFEE, \
0xCBDEDDDF, 0xFFFFFFFF, 0xFFFDBCFF, 0xDDEFFFFF, \
0xDCBBBBCE, 0xFFFFFFFF, 0xEDCA9889, 0xCFFFFFEE, \
0xCBDEDCDF, 0xFFFFFFFF, 0xFFFCABDE, 0xDCDFFFFE, \
0xCBA999BE, 0xFFFFFFFF, 0xEDBA8778, 0xBEFFFFEE, \
0xCCDEDCDF, 0xFFFFFFFF, 0xFFFC9ACD, 0xCCDFFFFD, \
0xBA9999AD, 0xFFFFFFFE, 0xDCB98779, 0xBEFFFEEE, \
0xDCDEDDEF, 0xFFFFFFFE, 0xFFFB89CD, 0xDDEFFEEC, \
0xBA988ABC, 0xFFFFFFFE, 0xDCA98789, 0xBEFFFEDE, \
0xECDEEEFF, 0xFFFFFFFE, 0xEFEB89BD, 0xDEEFEDDB, \
0xAA889ABD, 0xFFFFFFED, 0xCBA9878A, 0xBEFFFEDE, \
0xEDDEFFFF, 0xFFFFFFED, 0xDEDA89BD, 0xEEFFEDCB, \
0xA9879BCE, 0xFFFFFFED, 0xCBA9989A, 0xCEFFEEDE, \
0xEEDFFFFF, 0xFFFFFFDC, 0xBCB989CE, 0xFFFEDCBA, \
0x99879BEF, 0xFFFFFEDC, 0xCBAAA9AB, 0xDEFEDDDE, \
0xEEEFFFFF, 0xFFFFFEDB, 0xAAA889CF, 0xFFFEDBBA, \
0x98779CFF, 0xFFFFFECB, 0xBBAABAAC, 0xDFEDDCDE, \
0xEFFFFFFF, 0xFFFFFDCA, 0x98888ACF, 0xFFFECBAA, \
0x87779CFF, 0xFFFFEDBA, 0xBAABBBBD, 0xEFEDCCCD, \
0xEFFFFFFF, 0xFFFFEDBA, 0x88889ADF, 0xFFEDCBBA, \
0x87789DFF, 0xFFFFDCBA, 0xAAABCBCD, 0xFFEDBBBC, \
0xEFFFFFFF, 0xFFFFDCB9, 0x8788ABDF, 0xFEEDCCB9, \
0x8788ADFF, 0xFFFEDBA9, 0x9ABBCCDE, 0xFFECBAAB, \
0xEEDEFFFF, 0xFFFEDBA8, 0x7789ACEF, 0xFEEDDCB9, \
0x8789ADFF, 0xFFFDCB98, 0x9ABBCCDF, 0xFFDCBA9A, \
0xDDCCFFFF, 0xFFFECA98, 0x778ABDEF, 0xEDDEEDB8, \
0x8889ADFF, 0xFFEDBA88, 0x89BBCCEF, 0xFEDCBA9A, \
0xCCABDFFF, 0xFFFDBA88, 0x779ACDEE, 0xDDDEEDA8, \
0x8999BDFF, 0xFFDCB987, 0x89BBCDEF, 0xFECBAA99, \
0xBBAADFFF, 0xFEEDB987, 0x789ACDEE, 0xDCCDDC98, \
0x9AAABDFF, 0xFECBA877, 0x89BBCEFF, 0xEDCBAA99, \
0xBBAACFFF, 0xFEDCB987, 0x78ABCEED, 0xCCDDCA88
var_80A0D190: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001000, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001000, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001000, \
0x12000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00002001, \
0x23000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00012001, \
0x24100000, 0x00000010, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00013012, \
0x34100000, 0x00000010, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00013123, \
0x45211000, 0x00010011, 0x01000000, 0x00000000, \
0x00000000, 0x00000010, 0x00000000, 0x00014134, \
0x56311000, 0x00010021, 0x02000000, 0x00000000, \
0x00000000, 0x00000010, 0x01000000, 0x10024235, \
0x66322000, 0x00020032, 0x13100000, 0x00000000, \
0x00000000, 0x00000020, 0x01000000, 0x10025345, \
0x67422000, 0x00020132, 0x23100000, 0x00000000, \
0x01100000, 0x00000030, 0x12001000, 0x10036456, \
0x77533001, 0x00131242, 0x24201000, 0x00000010, \
0x01100000, 0x00000131, 0x13001100, 0x10036467, \
0x77544101, 0x00141253, 0x35201000, 0x00000010, \
0x01100000, 0x00000241, 0x24112100, 0x20147567, \
0x77645112, 0x00242353, 0x46301000, 0x00000020, \
0x01100000, 0x00000252, 0x34113101, 0x20157677, \
0x87655213, 0x00253464, 0x56312000, 0x00000131, \
0x02100000, 0x00100352, 0x35224102, 0x21267777, \
0x87756213, 0x11363565, 0x57413000, 0x10000131, \
0x12101000, 0x00100462, 0x46235102, 0x21367778, \
0x88766324, 0x11464675, 0x67524001, 0x10000242, \
0x13102001, 0x00211563, 0x56345113, 0x31478878, \
0x88776424, 0x22565676, 0x77534102, 0x10100353, \
0x23213101, 0x01311674, 0x66356214, 0x32478888, \
0x88877534, 0x22575776, 0x77545103, 0x10110463, \
0x34223102, 0x01422674, 0x67466225, 0x42578988, \
0x88987535, 0x33676777, 0x77655103, 0x10211464, \
0x45334112, 0x12523775, 0x77567236, 0x53678988, \
0x89A87645, 0x44676787, 0x77766214, 0x21321575, \
0x55435213, 0x13634775, 0x77577346, 0x54788A88, \
0x9AA87756, 0x55776788, 0x88767225, 0x21422675, \
0x66546224, 0x23645776, 0x77677457, 0x65789B89, \
0x9BB88756, 0x55777888, 0x88877325, 0x21433676, \
0x67656335, 0x24755777, 0x77777567, 0x65789B89, \
0xABC88767, 0x66777898, 0x88987436, 0x32543776, \
0x77667345, 0x35756777, 0x88777567, 0x6678AC9A, \
0xBCC88767, 0x667778A9, 0x88987546, 0x33654777, \
0x77777456, 0x46767787, 0x89887677, 0x7678BD9B, \
0xCDD89877, 0x767878AA, 0x89987656, 0x44665777, \
0x77777567, 0x46777888, 0x89888778, 0x8778CD9C, \
0xDED99877, 0x777888BA, 0x99A87666, 0x44766788, \
0x88887577, 0x56777899, 0x89888888, 0x8788CD9D, \
0xEED9A888, 0x878888CB, 0x9AA87767, 0x55777788, \
0x88887677, 0x677888AA, 0x8A988988, 0x9888DDAD, \
0xFEDAB988, 0x988988DC, 0xABB88877, 0x56777789, \
0x88987677, 0x678888AA, 0x8AA89A88, 0xA889DDAE, \
0xFFDAC988, 0x988988DD, 0xACB88877, 0x66787899, \
0x88987777, 0x778988BB, 0x9BA89B88, 0xB88AEDBE, \
0xFFDBDA88, 0xA88A89ED, 0xBDC88987, 0x6789889A, \
0x88A88777, 0x778A88CB, 0x9CB8AC88, 0xC98AFDCF, \
0xFFECEB89, 0xB89B89ED, 0xCEC89A87, 0x778988AB, \
0x89A88788, 0x788B89DC, 0x9CC9BC88, 0xDA8BFECF, \
0xFFECEB8A, 0xC9AC9AEE, 0xCED89A87, 0x778A88BC, \
0x9AB89888, 0x788B8AED, 0x9DC9CD89, 0xEB8CFEDF, \
0xFFFDFC9B, 0xD9BD9AFE, 0xDFE9AB88, 0x778A88CD, \
0x9BC8A988, 0x889C9AED, 0xADD9DE89, 0xEB9CFEEF, \
0xFFFEFD9B, 0xD9BDABFE, 0xDFE9BC88, 0x888B98DD, \
0xABC9AA88, 0x88AD9BED, 0xBEE9DE99, 0xEC9DFEFF, \
0xFFFFFDAC, 0xE9CEACFE, 0xDFE9CC89, 0x888C99EE, \
0xACC9BB88, 0x88AE9BFD, 0xBFE9EE99, 0xEC9DFFFF, \
0xFFFFFDAD, 0xE9DEBDFE, 0xEFEADD99, 0x889DA9EE, \
0xADDACC89, 0x88BEACFE, 0xCFEAEEAA, 0xED9EFFFF, \
0xFFFFFEBE, 0xEADFCEFE, 0xEFEBED9A, 0x88ADAAFE, \
0xBEDADC99, 0x98CEBDFE, 0xDFEAFFAB, 0xFDAEFFFF, \
0xFFFFFECE, 0xDAEFCEFE, 0xFFFCED9A, 0x88BEBBFE, \
0xBEDBEDAA, 0xA9DFBDFD, 0xEFEBFFBC, 0xFEBEFFFF, \
0xFFFFFEDF, 0xEBEFDFFF, 0xFFFDFC9B, 0x99CEBCFE, \
0xCFECFEBB, 0xB9EFCEFD, 0xEFECFFCD, 0xFECEFEFF, \
0xFFFFFEDF, 0xECEFDFFF, 0xFFFDFCAC, 0xAACECDFE, \
0xDFECFECC, 0xBAEFDEED, 0xFFEDFFDD, 0xEECFEEFF, \
0xFFFFFEEF, 0xECEFEFFF, 0xFFFEFCBC, 0xABDDDDFE, \
0xDFEDFECD, 0xCBFFEEEC, 0xFFDDFFEE, 0xEEDFEEFF, \
0xFFFFFEEF, 0xEDFFEFFF, 0xFFFFFCCD, 0xACEDDEFE, \
0xEFFEFEDE, 0xDCFFEFEC, 0xFFDEFFFF, 0xEEEFEEFF, \
0xFFFFFFFF, 0xEEFFFFFF, 0xFFFFFCCD, 0xADFDDFFE, \
0xEFFFFEEE, 0xEDFFFFEC, 0xFFDFFEFF, 0xEFFFEFFF, \
0xFFFFFFFF, 0xEEFEFFFF, 0xFFFFFCDD, 0xBEFDEFFF, \
0xFFFFFEEF, 0xEDFFFFEB, 0xFFDFFEFF, 0xEFFFEFFF, \
0xFFFFEFFF, 0xFFFEFFFF, 0xFFFFFDEE, 0xBEFDEFFF, \
0xFFFFFEFF, 0xEEFFFFEB, 0xFFDFFEFF, 0xEFFFEFFF, \
0xFFFFEFFF, 0xFFFDFFFF, 0xFFFFFDFE, 0xBFFDFFFF, \
0xFFFFFEEF, 0xEEFFFFFC, 0xFFEFFEFF, 0xEFFFEFFF, \
0xFFFFEFFF, 0xFFFDFFFF, 0xFFFFFEFF, 0xAFFEFFFF, \
0xFFEFFEEF, 0xEEFFFFFC, 0xFFEFFEFF, 0xEFFFEFFF, \
0xFFFFDFFF, 0xFFFCFFFF, 0xFFFFFFFF, 0xAFFEFFFF, \
0xFFEFFEEF, 0xEEFFFFFC, 0xFFEFFEFF, 0xFFFFFFFF, \
0xFFFFDFFF, 0xFFFCFFFF, 0xFFFFFFFE, 0xAEFEFFFF, \
0xFFEFFFEF, 0xEDFFFFFC, 0xFFFFFEFF, 0xFFFFFFFF
var_80A0D990: .word \
0x0208012C, 0x00000000, 0x10000000, 0xFFFFFFFF, \
0x012C0208, 0x00000000, 0x14000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x12000800, 0xFFFFFFFF, \
0x00000258, 0x00000000, 0x18000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x16000800, 0xFFFFFFFF, \
0xFED40208, 0x00000000, 0x1C000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x1A000800, 0xFFFFFFFF, \
0xFDF8012C, 0x00000000, 0x20000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x1E000800, 0xFFFFFFFF, \
0xFDA80000, 0x00000000, 0x24000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x22000800, 0xFFFFFFFF, \
0xFDF8FED4, 0x00000000, 0x28000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x26000800, 0xFFFFFFFF, \
0xFED4FDF8, 0x00000000, 0x2C000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x2A000800, 0xFFFFFFFF, \
0x0000FDA8, 0x00000000, 0x30000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x2E000800, 0xFFFFFFFF, \
0x0000FDA8, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x012CFDF8, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x02000800, 0xFFFFFFFF, \
0x0208FED4, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x06000800, 0xFFFFFFFF, \
0x02580000, 0x00000000, 0x0C000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x0A000800, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x0E000800, 0xFFFFFFFF
var_80A0DB20: .word \
0xFED7FED7, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x0129FED7, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x01290129, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFED70129, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A0DB60: .word \
0xFED4FED4, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x012CFED4, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x012C012C, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFED4012C, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A0DBA0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A0D190
.word \
0xF5900000, 0x0705806F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5800800, 0x0005806F, 0xF2000000, 0x000FC0FC, \
0xFD900000, 0x040224B0, 0xF5900100, 0x0701B86E, \
0xE6000000, 0x00000000, 0xF3000000, 0x073FF200, \
0xE7000000, 0x00000000, 0xF5800900, 0x0101B86E, \
0xF2000000, 0x010FC0FC, 0xFC262A60, 0x350CE37F, \
0xE200001C, 0x0C1849D8, 0xD9F0FFFF, 0x00000000, \
0xD9FFFFFF, 0x00000400, 0xDE000000, 0x08000000, \
0x01019032
.word var_80A0D990
.word \
0x06000204, 0x00020608, 0x06060A0C, 0x000A0E10, \
0x060E1214, 0x00121618, 0x06161A1C, 0x001A1E20, \
0x06222426, 0x0024282A, 0x06282C2E, 0x002C0030, \
0xDF000000, 0x00000000
var_80A0DC90: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD700000
.word var_80A0C190
.word \
0xF5700000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5701000, 0x00094250, 0xF2000000, 0x0007C07C, \
0xE8000000, 0x00000000, 0xF5701000, 0x01097A5F, \
0xF2000000, 0x0107C07C, 0xFC762BE0, 0x130DE3BF, \
0xE200001C, 0x0C1849D8, 0xD9F0FFFF, 0x00000000, \
0xD9FFFFFF, 0x00000400, 0xDE000000, 0x09000000, \
0x01004008
.word var_80A0DB20
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A0DD38: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD700000
.word var_80A0C190
.word \
0xF5700000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5701000, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFD900000
.word var_80A0C990
.word \
0xF5900100, 0x0701B86F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5800900, 0x0101B86F, 0xF2000000, 0x010FC0FC, \
0xFC212A60, 0xFF0CE3FF, 0xE200001C, 0x0C1849D8, \
0xD9F0FFFF, 0x00000000, 0xD9FFFFFF, 0x00000400, \
0xDE000000, 0x0A000000, 0x01004008
.word var_80A0DB60
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A0DE00: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04080908, 0x05020204, 0x05050402, 0x01000104, \
0x04030201, 0x03050706, 0x04040708, 0x05020306, \
0x09090602, 0x04060704, 0x03020203, 0x04030100, \
0x00010204, 0x07080707, 0x06050302, 0x02030201, \
0x06090806, 0x05060705, 0x04030100, 0x0206090A, \
0x07040101, 0x05050202, 0x09101314, 0x0E08080C, \
0x0B080505, 0x06050505, 0x0405070A, 0x09040404, \
0x07080705, 0x0507090C, 0x0B090606, 0x05020001, \
0x01050A0E, 0x13120A03, 0x00000102, 0x04060604, \
0x02010405, 0x04060C12, 0x1B232216, 0x0A03080B, \
0x08040101, 0x060A0A08, 0x07090C0A, 0x05050A10, \
0x12100C08, 0x0401050A, 0x08090B0B, 0x07050401, \
0x14141718, 0x15110A06, 0x04030102, 0x02010103, \
0x090C0F11, 0x11101215, 0x15100806, 0x0C141D1B, \
0x0F050911, 0x0F0B0908, 0x0D0F1215, 0x0D03080E, \
0x10121210, 0x0B050303, 0x0506070A, 0x0C0B1012, \
0x211A120C, 0x0B0B1115, 0x15130F0D, 0x0A0A0804, \
0x0B1A1109, 0x09070500, 0x00000209, 0x1721170A, \
0x0A131414, 0x11090300, 0x07150F03, 0x00000002, \
0x0A110F0A, 0x07050202, 0x0202060B, 0x10192227, \
0x0E060003, 0x0A11171B, 0x1C1A1711, 0x0B020D19, \
0x2E3E4426, 0x14090106, 0x05030509, 0x0A08060D, \
0x16202727, 0x211E1D1A, 0x1E20130B, 0x06020609, \
0x0E100B03, 0x02080808, 0x0E0F0E12, 0x10111615, \
0x01030201, 0x04070A0B, 0x0C0D0C0D, 0x031F54AC, \
0xCFB18971, 0x5A452E1C, 0x05000101, 0x00000207, \
0x0D0D1B38, 0x464E6260, 0x564F4232, 0x1E0A070B, \
0x06060911, 0x1C272A2D, 0x3938322A, 0x1E120602, \
0x00000100, 0x01040403, 0x0400082B, 0x70B6CCA2, \
0x7E718791, 0x96855D35, 0x190A0300, 0x04060504, \
0x132F527C, 0x93A0AEB2, 0xACA27B51, 0x39231410, \
0x0E111E29, 0x3B566573, 0x827F7360, 0x371B0C00, \
0x1404090D, 0x0F100708, 0x28588EB0, 0x99681F08, \
0x182C476C, 0x7C867F68, 0x45302828, 0x262F3245, \
0x77A1BCD3, 0xE5F0F5E7, 0xD7C7A988, 0x76655246, \
0x2F2B3C50, 0x6D97B1B7, 0xC0B19780, 0x5E38291E, \
0x4C312D1B, 0x17325378, 0x9BA59664, 0x20080000, \
0x0300122A, 0x41474E4E, 0x6166725E, 0x48536B99, \
0xCFEEF9FF, 0xFEEEE8E9, 0xE8E5DDCE, 0xC6A78579, \
0x7A8196B1, 0xD4EEEBE1, 0xE0DFD9CE, 0xB7A48C69, \
0x7B514D52, 0x627C8E84, 0x733E1300, 0x0113252A, \
0x2720110B, 0x00071D47, 0x5A565B62, 0x6082B7DE, \
0xF8FFFFF0, 0xDDD7E0F2, 0xFAFEFEF6, 0xE2D0D2DF, \
0xD9D8E9F0, 0xF2F3F5F6, 0xFEFFFBFA, 0xEFDBBF9C, \
0xBDABA4A3, 0x9D84512E, 0x140C142F, 0x5267756A, \
0x523B1D0A, 0x0D1B2B36, 0x43547097, 0xC3ECF9FA, \
0xF4E4D0C5, 0xCEDAE7F6, 0xFDFEF9ED, 0xECEFF4FB, \
0xF7EEE8E6, 0xDCD1D3DE, 0xE9FBFFF6, 0xF1EEDECF, \
0xEEDEDAB0, 0x7B5A5049, 0x4C557599, 0xA0A3A08D, \
0x725A473D, 0x50574E57, 0x739DCAE1, 0xF2FFFCEB, \
0xCDBDC1C3, 0xC3CAD2DE, 0xEDF4F6F7, 0xF6FEFCF7, \
0xF3E9D8C7, 0xAB97A1B6, 0xBCC1D0E1, 0xF5FDFCF4, \
0xF5F2DCC8, 0xBAB09078, 0x8899989B, 0xA4A28F7D, \
0x7882878C, 0x92919CB8, 0xC8D6E7F1, 0xF8F1D5B1, \
0xA0A19F9F, 0xA0A2ADC4, 0xD7DFECF0, 0xECE9EEEA, \
0xE9DABBA0, 0x89766B6A, 0x6D8BB3CF, 0xEBF7F4F4, \
0xE0E9EFF1, 0xE6D9D8D7, 0xD1BDB4A7, 0x8E726367, \
0x7890A4AB, 0xBDCAD8ED, 0xF3F5F7F5, 0xEED2AF93, \
0x86888F8F, 0x9CABAAA8, 0xAEA89890, 0x98B7C4B5, \
0xA6968276, 0x66565158, 0x5E72899D, 0xB1C8D1DA, \
0xC9EDEFF8, 0xFAFEF7ED, 0xE5D7C3A5, 0x735B647E, \
0x90A3B8D6, 0xEAF1F7FC, 0xF9F1EBE6, 0xCEA88678, \
0x7A858E98, 0x92888D93, 0x79524F66, 0x71716044, \
0x42494A4F, 0x5350514B, 0x433C4257, 0x8098A2B0, \
0xC0DEE7ED, 0xE7E2EAEA, 0xEADAB396, 0x97A0A8A1, \
0xA4C2E6F9, 0xFFFEFDF7, 0xEFE3D4BB, 0x9579808C, \
0x95999081, 0x8A9F9570, 0x53434448, 0x3727180A, \
0x10212B3A, 0x3F39322F, 0x2432546A, 0x655C779E, \
0x9DB2C2DB, 0xEAE9F3FB, 0xE6D3D1E0, 0xE6E1D6D4, \
0xE7FEFFFD, 0xF8F4EEE5, 0xDDCCAC9C, 0x999CA8AF, \
0xA48D7674, 0x827F6757, 0x4E493822, 0x0F030306, \
0x111C211F, 0x170B0B19, 0x33424A4A, 0x494D6F8A, \
0x7A8E9EAD, 0xB3B6BFC0, 0xC3CFE8FD, 0xF9EDF6FD, \
0xFFFDF8EB, 0xDCD9D2BC, 0xAE9F8D87, 0x8D949180, \
0x66606563, 0x65696260, 0x5F4B260D, 0x1814121C, \
0x130C0400, 0x0010212D, 0x3634343E, 0x5C737571, \
0x5F6E6564, 0x68636D83, 0xA8D8EAEB, 0xE7E4EDFE, \
0xFAE6CDB7, 0xA0978973, 0x6B645E67, 0x6D605041, \
0x31303639, 0x302B384B, 0x433E4A52, 0x6B50341B, \
0x02001231, 0x48677E6C, 0x4A28334F, 0x61665B59, \
0x2E332B26, 0x29305486, 0xACC3CECA, 0xE3F9F4DF, \
0xC2997C67, 0x4F484437, 0x343A4146, 0x412D1E12, \
0x090A0900, 0x0009141A, 0x1443555F, 0x616C5C4C, \
0x60788BA3, 0xA19F6633, 0x1C263030, 0x2D282427, \
0x05080307, 0x0F1F3246, 0x5164829F, 0xBDC0AD95, \
0x774D3122, 0x17191512, 0x171F1E1E, 0x190D0502, \
0x00000002, 0x03030103, 0x07041A3A, 0x4C556F96, \
0xC9CEAA74, 0x3F100D13, 0x17140E08, 0x05060103, \
0x03070908, 0x0804080E, 0x0E24455C, 0x6364554A, \
0x3113080B, 0x0805070A, 0x1017130B, 0x06010001, \
0x03080A09, 0x05040404, 0x04040208, 0x0B275572, \
0x6F521C0D, 0x0803040A, 0x09090807, 0x0B0B0701, \
0x10090B0D, 0x0E0E0905, 0x0A121E1F, 0x3039290F, \
0x0301080C, 0x06010715, 0x18140F0B, 0x090A0A07, \
0x0A0A0503, 0x03040606, 0x06090B0B, 0x080B1B0F, \
0x0B090200, 0x05102025, 0x201B1A17, 0x0A02060E, \
0x0F090B0E, 0x11110A05, 0x01030E19, 0x0F040009, \
0x13181B18, 0x14131E23, 0x190E0D14, 0x19180D06, \
0x01000107, 0x0A0A0806, 0x0B121A1E, 0x19171B14, \
0x05010512, 0x2631271D, 0x1A140902, 0x0B181B15, \
0x07050D16, 0x0F060505, 0x07080602, 0x0A191D1E, \
0x2327190D, 0x1829271C, 0x0D030D14, 0x0D050100, \
0x040D1211, 0x0B040106, 0x0C120F0B, 0x11120908, \
0x0B0A1113, 0x0E090A0B, 0x0B100F0E, 0x0D0F0C0B, \
0x0E1C1F1A, 0x1208070D, 0x10111419, 0x1E222320, \
0x1D171D22, 0x241E140B, 0x090B0A09, 0x04020913, \
0x1A1B140A, 0x06080807, 0x05030606, 0x03071015, \
0x16140C04, 0x03030910, 0x14120A03, 0x01010306, \
0x0E11110E, 0x06050909, 0x090B101A, 0x1D1C1919, \
0x1C1E170F, 0x08060709, 0x10130D05, 0x080E171B, \
0x160A0402, 0x03050608, 0x0F12110F, 0x0D0B0D10, \
0x0C09070B, 0x0D0C0B09, 0x06050607, 0x04000004, \
0x060B0B0B, 0x0B080402, 0x040A1213, 0x0D080705, \
0x04010000, 0x0107090A, 0x07040102, 0x060A0603, \
0x00010101, 0x03040405, 0x070B0D0A, 0x09050505, \
0x09070709, 0x07060302, 0x04070A0A, 0x07060404, \
0x05040505, 0x03010102, 0x070B0907, 0x05040200, \
0x00020609, 0x0B0A0804, 0x01010101, 0x0203070A, \
0x08040506, 0x09090501, 0x03040709, 0x080B1111, \
0x0B060402, 0x02020202, 0x04050607, 0x08080705, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A0E600: .word \
0x0513FF83, 0xFD120000, 0x1C000400, 0xFFFFFFFF, \
0x05130177, 0xFD120000, 0x1C000000, 0xFFFFFFFF, \
0x05DC0177, 0x00000000, 0x18000000, 0xFFFFFFFF, \
0x05DCFF83, 0x00000000, 0x18000400, 0xFFFFFFFF, \
0x02EEFF83, 0xFAED0000, 0x20000400, 0xFFFFFFFF, \
0x02EE0177, 0xFAED0000, 0x20000000, 0xFFFFFFFF, \
0x0000FF83, 0xFA240000, 0x24000400, 0xFFFFFFFF, \
0x00000177, 0xFA240000, 0x24000000, 0xFFFFFFFF, \
0xFD12FF83, 0xFAED0000, 0x28000400, 0xFFFFFFFF, \
0xFD120177, 0xFAED0000, 0x28000000, 0xFFFFFFFF, \
0xFAEDFF83, 0xFD120000, 0x2C000400, 0xFFFFFFFF, \
0xFAED0177, 0xFD120000, 0x2C000000, 0xFFFFFFFF, \
0xFA24FF83, 0x00000000, 0x30000400, 0xFFFFFFFF, \
0xFA240177, 0x00000000, 0x30000000, 0xFFFFFFFF, \
0xFAEDFF83, 0x02EE0000, 0x04000400, 0xFFFFFFFF, \
0xFAED0177, 0x02EE0000, 0x04000000, 0xFFFFFFFF, \
0xFA240177, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFA24FF83, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0xFD12FF83, 0x05130000, 0x08000400, 0xFFFFFFFF, \
0xFD120177, 0x05130000, 0x08000000, 0xFFFFFFFF, \
0x0000FF83, 0x05DC0000, 0x0C000400, 0xFFFFFFFF, \
0x00000177, 0x05DC0000, 0x0C000000, 0xFFFFFFFF, \
0x02EEFF83, 0x05130000, 0x10000400, 0xFFFFFFFF, \
0x02EE0177, 0x05130000, 0x10000000, 0xFFFFFFFF, \
0x0513FF83, 0x02EE0000, 0x14000400, 0xFFFFFFFF, \
0x05130177, 0x02EE0000, 0x14000000, 0xFFFFFFFF
var_80A0E7A0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A0DE00
.word \
0xF5900000, 0x0709406F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x0009406F, 0xF2000000, 0x000FC07C, \
0xE8000000, 0x00000000, 0xF5881000, 0x0109406E, \
0xF2000000, 0x010FC07C, 0xFC262A60, 0x350C937F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDE000000, 0x08000000, 0x0101A034
.word var_80A0E600
.word \
0x06000204, 0x00000406, 0x06080A02, 0x00080200, \
0x060C0E0A, 0x000C0A08, 0x0610120E, 0x00100E0C, \
0x06141612, 0x00141210, 0x06181A16, 0x00181614, \
0x061C1E20, 0x001C2022, 0x0624261E, 0x00241E1C, \
0x06282A26, 0x00282624, 0x062C2E2A, 0x002C2A28, \
0x0630322E, 0x00302E2C, 0x06060432, 0x00063230, \
0xDF000000, 0x00000000
var_80A0E898: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00000000, \
0x00000102, 0x01000001, 0x00000000, 0x00000000, \
0x00010000, 0x00000000, 0x00000001, 0x00000000, \
0x00000204, 0x02000101, 0x00000000, 0x00000000, \
0x00010101, 0x00000001, 0x00000001, 0x00000000, \
0x00000307, 0x03010102, 0x00000000, 0x00000000, \
0x01010102, 0x00000002, 0x01010001, 0x00000000, \
0x00010509, 0x04010103, 0x01000000, 0x00000000, \
0x01020202, 0x00000104, 0x03020101, 0x00000000, \
0x0001060C, 0x06010103, 0x01000000, 0x00000000, \
0x02020202, 0x00000206, 0x05040101, 0x00000000, \
0x0001080F, 0x07010103, 0x01000001, 0x00000000, \
0x03030202, 0x00010408, 0x07060201, 0x00000000, \
0x00010911, 0x08010103, 0x01000001, 0x00000001, \
0x04040303, 0x0101050B, 0x0A080301, 0x00000000, \
0x00020B14, 0x0A010103, 0x01000001, 0x00010102, \
0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, \
0x00030D17, 0x0B020103, 0x01010001, 0x00010205, \
0x09080503, 0x0205090E, 0x0E0D0501, 0x00000000, \
0x01050F18, 0x0C020102, 0x01010001, 0x00010408, \
0x0D0B0502, 0x03070B0F, 0x0F0F0601, 0x00000000, \
0x02081219, 0x0D030102, 0x00010001, 0x0001050B, \
0x130F0702, 0x04080B0F, 0x10110801, 0x00000000, \
0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, \
0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001, \
0x05121719, 0x0E040100, 0x00010102, 0x01020A13, \
0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, \
0x08181B19, 0x0F050201, 0x01020102, 0x02040D18, \
0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, \
0x0B1E1E19, 0x10070403, 0x02030202, 0x0408111D, \
0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, \
0x0E242119, 0x11090606, 0x04040304, 0x070C1623, \
0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, \
0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29, \
0x413B291B, 0x13101216, 0x181B1209, 0x08080304, \
0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, \
0x4A433223, 0x1813161D, 0x1D1E140B, 0x0A0A0608, \
0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, \
0x534C3B2B, 0x1E161C25, 0x2221160D, 0x0B0C0A0E, \
0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, \
0x5C564534, 0x251B242F, 0x2924190F, 0x0E0E0F17, \
0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, \
0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520, \
0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, \
0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, \
0x3D4D483F, 0x31231A14, 0x171E252E, 0x38444F5B, \
0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, \
0x4957524A, 0x3A2A1D15, 0x1A252E37, 0x43505B66, \
0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, \
0x57625D54, 0x43312216, 0x1F2D3741, 0x4D5B6671, \
0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, \
0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B, \
0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, \
0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, \
0xA2A08B76, 0x685D5651, 0x3F343A43, 0x484D5F70, \
0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, \
0xACA99581, 0x72655B53, 0x42394450, 0x585E6D7C, \
0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, \
0xB4B09E8C, 0x7C6E6155, 0x46414F5F, 0x676E7B87, \
0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, \
0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791, \
0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, \
0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, \
0xA5A99D90, 0x8478695E, 0x5F697F93, 0x9DA6ACB2, \
0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, \
0xADB2A89C, 0x8F83766C, 0x6A718AA1, 0xA9AFB2B8, \
0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, \
0xB5BBB3A9, 0x9B8E8279, 0x737693AE, 0xB4B6B9BE, \
0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, \
0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5, \
0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, \
0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, \
0xE0D4D3D1, 0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, \
0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, \
0xE5DBDAD8, 0xD0C4B6AB, 0xA6A8B1B8, 0xAEA4B5C7, \
0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, \
0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC, 0xB1A7B9CE, \
0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, \
0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5, \
0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, \
0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, \
0xEBF3F8F5, 0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, \
0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, \
0xF0F5FBF7, 0xE3CACACC, 0xBBB0C5DC, 0xE5ECF4F6, \
0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, \
0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0, 0xE9F1F9FB, \
0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, \
0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE, \
0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, \
0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, \
0xFEFDFCF6, 0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, \
0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, \
0xFEFDFDF8, 0xFCFDFDFA, 0xF1EAE9E7, 0xD9CFE7F9, \
0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, \
0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE, 0xE0D5ECFB, \
0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, \
0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD, \
0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, \
0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, \
0xFFFEFBF5, 0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, \
0xFFFEFCF7, 0xF4F3FAFE, 0xFBF6F8FB, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, \
0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC, 0xFFFFFFFF, \
0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, \
0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF, \
0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, \
0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A0F098: .word \
0x6E737D89, 0x99A8B4BD, 0xC1C1C2C4, 0xC8CBCCC9, \
0xC2B9B1AB, 0xA9A6A199, 0x90867D74, 0x6F6D6C6C, \
0x727A8698, 0xACC0CED5, 0xD5D0CBC7, 0xC7CACAC8, \
0xC2B9B2AE, 0xADACA8A1, 0x988D837B, 0x75716F6F, \
0x777E8CA1, 0xB8CDDBE1, 0xDDD5CCC5, 0xC4C8CAC8, \
0xC1B6AFAC, 0xACADABA6, 0xA19A928B, 0x847D7775, \
0x797E8DA2, 0xBACEDBDE, 0xDAD1C7C3, 0xC4C9CBC8, \
0xBDB1A8A5, 0xA6AAADAE, 0xAEACA9A3, 0x9A8F847C, \
0x7A7D899E, 0xB5C8D3D5, 0xD1C9C3C3, 0xC8CDCDC4, \
0xB6A89F9C, 0xA0A8B1BA, 0xC1C6C6C0, 0xB3A39081, \
0x797A8599, 0xAEBFC7C9, 0xC6C2C3C6, 0xCDD1CBBD, \
0xAB9C9596, 0x9EABBCCC, 0xD9E2E3DB, 0xC9B19883, \
0x76778394, 0xA7B5BBBD, 0xBDBFC5CD, 0xD3D1C4B1, \
0x9F928E93, 0xA2B6CDE2, 0xF0F7F7ED, 0xD7B99A82, \
0x72748090, 0x9FA9AFB3, 0xB8BFC9D2, 0xD4CCBAA5, \
0x948A8B96, 0xABC5E0F4, 0xFDFFFFF3, 0xD9B7967D, \
0x70747F8B, 0x979FA5AC, 0xB6C2CED5, 0xD2C4B19C, \
0x8E878C9D, 0xB8D6EFFD, 0xFFFFFEEF, 0xD1AD8D78, \
0x6F747D88, 0x9198A0AB, 0xB8C6D2D6, 0xD0C2AE9B, \
0x8D8991A6, 0xC5E3F9FF, 0xFFFFF9E3, 0xC29E8374, \
0x6F747D87, 0x8F97A1AF, 0xBECED8DA, 0xD4C6B4A2, \
0x938F98AF, 0xD0EDFEFF, 0xFFFDEED1, 0xAF8F7A70, \
0x7178828C, 0x949EAAB9, 0xC9D8E2E4, 0xDFD3C2AE, \
0x9F99A3BB, 0xD9F4FFFF, 0xFFF4DCBC, 0x9B82736F, \
0x77818C97, 0xA1ACB8C7, 0xD7E5EFF1, 0xEEE4D3BF, \
0xAFA9B2C8, 0xE3F9FFFF, 0xF9E5C7A7, 0x8B797171, \
0x83909DA9, 0xB3BDC9D6, 0xE4F1FAFD, 0xFBF3E4D2, \
0xC3BFC7D9, 0xEFFDFFFD, 0xEED3B396, 0x81767479, \
0x96A5B1BB, 0xC4CCD6E0, 0xEBF6FEFF, 0xFFFDF3E5, \
0xDAD7DFED, 0xFAFFFFF5, 0xDFC1A48C, 0x7D797D88, \
0xADBAC3C9, 0xCDD2D7DF, 0xE7F0F9FF, 0xFFFFFDF6, \
0xEFEEF4FB, 0xFFFFFCEC, 0xD2B49B8A, 0x82848F9E, \
0xBFC6C8C9, 0xC9CACCD0, 0xD7E1EEF9, 0xFFFFFFFF, \
0xFDFDFEFF, 0xFFFFF7E2, 0xC8AE9A8F, 0x8E96A5B4, \
0xC6C5C0BD, 0xBAB8B7BB, 0xC1CEDEF0, 0xFDFFFFFF, \
0xFFFFFFFF, 0xFFFDF0DA, 0xC3AEA09B, 0xA0ACB9C2, \
0xBFB7AFA8, 0xA4A09FA3, 0xACBBD0E7, 0xF9FFFFFF, \
0xFFFFFFFF, 0xFFF8E8D5, 0xC1B2ACAD, 0xB5BFC6C6, \
0xB3A69C93, 0x8F8B8B90, 0x9CAEC7DF, 0xF2FDFEFE, \
0xFEFFFFFF, 0xFBF0E0D0, 0xC2BAB9BE, 0xC6CAC8BF, \
0xA6978B82, 0x7E7C7D83, 0x91A6C0D8, 0xEBF6F8F7, \
0xF7FAFBFA, 0xF3E8D9CB, 0xC2BFC3CA, 0xCFCDC4B6, \
0x9D8C7F78, 0x7372747C, 0x8CA2BCD3, 0xE5EEF0F1, \
0xF2F4F6F2, 0xEADDD0C6, 0xC0C0C6CC, 0xCEC9BEAE, \
0x97857771, 0x6E6E7078, 0x889EB8CF, 0xE0E9EDEF, \
0xF2F3F1EA, 0xDED0C4BC, 0xB9BBC1C7, 0xC8C3B8A9, \
0x927F736D, 0x6C6C6E75, 0x849AB3C9, 0xDAE5ECF0, \
0xF3F1EADE, 0xD0C1B6AF, 0xADB0B7BE, 0xC0BEB4A6, \
0x8C7A706C, 0x6C6C6D73, 0x7F93AAC1, 0xD4E2ECF1, \
0xF2ECE0D1, 0xC0B1A6A0, 0x9EA1A9B3, 0xB9B9B1A0, \
0x84756E6C, 0x6C6C6C70, 0x7A8BA0B7, 0xCCDEE9EF, \
0xECE2D3C2, 0xB1A39891, 0x90949DA9, 0xB3B4AB98, \
0x7C716C6C, 0x6C6C6C6E, 0x758295AC, 0xC3D6E4E8, \
0xE2D5C4B4, 0xA5978C85, 0x848994A0, 0xABACA18F, \
0x766E6C6C, 0x6C6C6C6C, 0x707B8DA4, 0xBBCFDCDE, \
0xD6C8B8A9, 0x9B8F857E, 0x7C818A96, 0x9F9F9584, \
0x716C6C6C, 0x6C6C6C6D, 0x7079889F, 0xB6CAD5D5, \
0xCCBEAFA2, 0x978C837C, 0x797C838C, 0x9290877A, \
0x6D6C6C6C, 0x6D6E7072, 0x767F8EA2, 0xB7C8D0CF, \
0xC5B9ABA0, 0x968E857E, 0x7A7A7E82, 0x84817A72, \
0x6C6C6D70, 0x74787D82, 0x88909DAD, 0xBDC9CECB, \
0xC3B7ABA2, 0x9A948C85, 0x807C7A79, 0x7875716E, \
0x6C6F737A, 0x838D969E, 0xA4AAB1BA, 0xC4CBCDCA, \
0xC2B8ADA6, 0xA29D9790, 0x88807A75, 0x716F6D6C
var_80A0F498: .word \
0xFF9C0000, 0xFF530000, 0x0D550800, 0xFFFFFFFF, \
0xFF9C0064, 0xFF530000, 0x0D550000, 0xFFFFFFFF, \
0x00000064, 0xFF380000, 0x0C000000, 0xFFFFFFFF, \
0x00000000, 0xFF380000, 0x0C000800, 0xFFFFFFFF, \
0xFF530000, 0xFF9C0000, 0x0EAB0800, 0xFFFFFFFF, \
0xFF530064, 0xFF9C0000, 0x0EAB0000, 0xFFFFFFFF, \
0xFF380000, 0x00000000, 0x10000800, 0xFFFFFFFF, \
0xFF380064, 0x00000000, 0x10000000, 0xFFFFFFFF, \
0xFF530000, 0x00640000, 0x01550800, 0xFFFFFFFF, \
0xFF530064, 0x00640000, 0x01550000, 0xFFFFFFFF, \
0xFF380064, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFF380000, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0xFF9C0000, 0x00AD0000, 0x02AB0800, 0xFFFFFFFF, \
0xFF9C0064, 0x00AD0000, 0x02AB0000, 0xFFFFFFFF, \
0x00000000, 0x00C80000, 0x04000800, 0xFFFFFFFF, \
0x00000064, 0x00C80000, 0x04000000, 0xFFFFFFFF, \
0x00640000, 0x00AD0000, 0x05550800, 0xFFFFFFFF, \
0x00640064, 0x00AD0000, 0x05550000, 0xFFFFFFFF, \
0x00AD0000, 0x00640000, 0x06AB0800, 0xFFFFFFFF, \
0x00AD0064, 0x00640000, 0x06AB0000, 0xFFFFFFFF, \
0x00C80000, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00C80064, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0x00AD0000, 0xFF9C0000, 0x09550800, 0xFFFFFFFF, \
0x00AD0064, 0xFF9C0000, 0x09550000, 0xFFFFFFFF, \
0x00640000, 0xFF530000, 0x0AAB0800, 0xFFFFFFFF, \
0x00640064, 0xFF530000, 0x0AAB0000, 0xFFFFFFFF
var_80A0F638: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A0E898
.word \
0xF5900000, 0x07098452, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098452, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A0F098
.word \
0xF5900100, 0x0701405F, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0101405F, 0xF2000000, 0x0107C07C, \
0xFC30ABFF, 0x5F0EE23F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xDE000000, 0x08000000, \
0x0101A034
.word var_80A0F498
.word \
0x06000204, 0x00000406, 0x06080A02, 0x00080200, \
0x060C0E0A, 0x000C0A08, 0x06101214, 0x00101416, \
0x06181A12, 0x00181210, 0x061C1E1A, 0x001C1A18, \
0x0620221E, 0x00201E1C, 0x06242622, 0x00242220, \
0x06282A26, 0x00282624, 0x062C2E2A, 0x002C2A28, \
0x0630322E, 0x00302E2C, 0x06060432, 0x00063230, \
0xDF000000, 0x00000000
var_80A0F750: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A0E898
.word \
0xF5900000, 0x07098451, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098451, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A0F098
.word \
0xF5900100, 0x0701405E, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0101405E, 0xF2000000, 0x0107C07C, \
0xFC30ABFF, 0x5F0EE23F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xDE000000, 0x08000000, \
0x0101A034
.word var_80A0F498
.word \
0x06000204, 0x00000406, 0x06080A02, 0x00080200, \
0x060C0E0A, 0x000C0A08, 0x06101214, 0x00101416, \
0x06181A12, 0x00181210, 0x061C1E1A, 0x001C1A18, \
0x0620221E, 0x00201E1C, 0x06242622, 0x00242220, \
0x06282A26, 0x00282624, 0x062C2E2A, 0x002C2A28, \
0x0630322E, 0x00302E2C, 0x06060432, 0x00063230, \
0xDF000000, 0x00000000
var_80A0F868: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00010101, \
0x01010101, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x01020303, \
0x03030201, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000102, 0x03040506, \
0x06060503, 0x02010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x06080A0B, \
0x0B0A0806, 0x05030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0B0E1011, \
0x12100E0B, 0x08050301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0205090D, 0x12151819, \
0x19181612, 0x0D090502, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x04080E13, 0x191D2021, \
0x21201E1A, 0x140E0904, 0x01000000, 0x00000000, \
0x00000000, 0x00000103, 0x070D141A, 0x21252829, \
0x29282522, 0x1C150E08, 0x03010000, 0x00000000, \
0x00000000, 0x00000206, 0x0B131C23, 0x2A2E3032, \
0x32302E2A, 0x241D140C, 0x06020000, 0x00000000, \
0x00000000, 0x00010409, 0x111A252C, 0x3337393B, \
0x3B3A3733, 0x2D261C12, 0x09040100, 0x00000000, \
0x00000000, 0x0002060D, 0x17232E36, 0x3C404243, \
0x4342403D, 0x372F2418, 0x0E060200, 0x00000000, \
0x00000000, 0x00030912, 0x1F2C373F, 0x454A4C4E, \
0x4E4C4A46, 0x40382E20, 0x140A0401, 0x00000000, \
0x00000000, 0x01050C19, 0x28364149, 0x4F545658, \
0x58575550, 0x4A423729, 0x1A0E0601, 0x00000000, \
0x00000000, 0x02071120, 0x313F4B53, 0x595E6062, \
0x62615F5A, 0x554C4233, 0x22130802, 0x00000000, \
0x00000000, 0x030A1728, 0x3A49545C, 0x63676A6C, \
0x6C6B6865, 0x5F564B3C, 0x2A190B04, 0x01000000, \
0x00000001, 0x050E1D30, 0x44535F66, 0x6D717475, \
0x7574726E, 0x68605546, 0x331F0F05, 0x01000000, \
0x00000002, 0x06112338, 0x4D5D6971, 0x777A7C7D, \
0x7D7D7B77, 0x726A5F4F, 0x3B251207, 0x02000000, \
0x00000003, 0x08162A41, 0x5667737B, 0x7F828484, \
0x8484827F, 0x7B746959, 0x442C1709, 0x02000000, \
0x00000003, 0x0A1A314A, 0x60717C84, 0x888B8C8D, \
0x8D8D8A88, 0x857E7363, 0x4E341C0B, 0x03000000, \
0x00000004, 0x0D1F3954, 0x6A7B868D, 0x91949596, \
0x96959391, 0x8E877D6C, 0x573C220E, 0x04000000, \
0x00000004, 0x0F24415D, 0x74848F95, 0x9A9D9FA0, \
0xA09E9D9A, 0x97918676, 0x61452711, 0x06010000, \
0x00000105, 0x122A4966, 0x7D8E989D, 0xA2A6A8AA, \
0xAAA9A6A3, 0x9F998F7F, 0x694C2D14, 0x07010000, \
0x00000107, 0x1630516F, 0x8696A1A7, 0xACB0B4B6, \
0xB6B5B1AD, 0xA8A29989, 0x72543217, 0x08020000, \
0x00000208, 0x18345878, 0x909FAAB0, 0xB6BCBFC0, \
0xC1C0BCB7, 0xB1AAA192, 0x7B5C381A, 0x09020000, \
0x00000209, 0x1B3A5F80, 0x98A8B3BA, 0xC0C6CACB, \
0xCBCAC6C1, 0xBBB4AB9B, 0x84633E1E, 0x0B030000, \
0x0000020A, 0x1E3F6587, 0xA1B1BCC3, 0xCAD0D3D5, \
0xD5D4D0CA, 0xC5BDB3A3, 0x8B694321, 0x0C030000, \
0x0000020B, 0x1F426C8F, 0xA9BAC5CD, 0xD4DADCDE, \
0xDEDDDAD5, 0xCEC6BBAB, 0x93704723, 0x0D040100, \
0x0001020B, 0x21467296, 0xB0C2CED7, 0xDFE4E6E7, \
0xE7E7E4DF, 0xD8CFC4B3, 0x9A774C25, 0x0D030100, \
0x0001020C, 0x234A789D, 0xB8CAD7DF, 0xE7EDEEEF, \
0xEFEFECE8, 0xE1D8CCBB, 0xA17C4F27, 0x0E040100, \
0x0001020D, 0x244D7CA3, 0xC0D2DFE8, 0xF0F5F6F7, \
0xF7F7F5F1, 0xEAE1D5C3, 0xA8805228, 0x0F040100, \
0x0001020D, 0x254E7EA8, 0xC5D9E7F1, 0xF8FCFEFE, \
0xFEFEFDF9, 0xF2E9DBC8, 0xAD835328, 0x0E030100, \
0x0000020D, 0x244D7EA8, 0xC6DAE9F3, 0xFAFEFFFF, \
0xFFFFFEFB, 0xF5EBDDCA, 0xAD835328, 0x0E040100, \
0x0000020C, 0x234B7CA6, 0xC6DBEAF4, 0xFBFEFFFF, \
0xFFFFFFFB, 0xF5ECDECA, 0xAC815127, 0x0E040000, \
0x0000020B, 0x224878A4, 0xC5DBEBF5, 0xFBFFFFFF, \
0xFFFFFFFC, 0xF6ECDEC8, 0xA97D4D24, 0x0C030000, \
0x0000020A, 0x1F4575A1, 0xC3DBEBF5, 0xFCFFFFFF, \
0xFFFFFFFC, 0xF7ECDDC6, 0xA57A4A22, 0x0C030000, \
0x00000209, 0x1C41719E, 0xC1DAEAF5, 0xFBFFFFFF, \
0xFFFFFFFC, 0xF7ECDCC4, 0xA275451F, 0x0B020000, \
0x00000107, 0x193C6B99, 0xBDD7E9F5, 0xFBFFFFFF, \
0xFFFFFFFC, 0xF6EBDAC0, 0x9C6F401C, 0x09020000, \
0x00000106, 0x16366392, 0xB8D4E8F5, 0xFBFFFFFF, \
0xFFFFFFFB, 0xF5EAD8BC, 0x96683A18, 0x07010000, \
0x00000105, 0x13305B89, 0xB2D0E5F3, 0xFBFEFFFF, \
0xFFFFFFFB, 0xF5E8D4B6, 0x8F603415, 0x06010000, \
0x00000105, 0x102A5380, 0xABCBE3F2, 0xFAFEFFFF, \
0xFFFFFEFA, 0xF2E5CFAF, 0x87582D12, 0x05010000, \
0x00000004, 0x0D234977, 0xA2C4DEEE, 0xF8FDFFFF, \
0xFFFFFEF9, 0xEFE0C9A7, 0x7C4E260F, 0x04000000, \
0x00000003, 0x0A1D3F6B, 0x98BCD8EA, 0xF5FBFEFF, \
0xFFFEFCF6, 0xECDAC19D, 0x7144200C, 0x03000000, \
0x00000002, 0x0818365F, 0x8CB3D1E5, 0xF3FAFDFE, \
0xFEFDFAF3, 0xE7D3B791, 0x653B1A09, 0x02000000, \
0x00000001, 0x05132D53, 0x7FA7C8DF, 0xEEF7FBFD, \
0xFDFCF8F0, 0xE1CBAC84, 0x59311506, 0x01000000, \
0x00000000, 0x030E2446, 0x7099BCD5, 0xE7F2F8FB, \
0xFBF9F3E9, 0xD9C09F76, 0x4B271005, 0x01000000, \
0x00000000, 0x020A1C39, 0x6089AECA, 0xDFECF3F7, \
0xF7F4EDE0, 0xCDB28E65, 0x3D1F0C03, 0x01000000, \
0x00000000, 0x0107142C, 0x4F779DBB, 0xD3E3ECF0, \
0xF0EDE4D5, 0xBFA17C54, 0x30170802, 0x00000000, \
0x00000000, 0x00040D20, 0x3F6489A9, 0xC3D5E0E5, \
0xE6E1D7C5, 0xAD8D6842, 0x230F0401, 0x00000000, \
0x00000000, 0x00020917, 0x2F507394, 0xB0C4D1D7, \
0xD8D2C6B2, 0x98775433, 0x190A0300, 0x00000000, \
0x00000000, 0x00010610, 0x223D5D7C, 0x9AAFBDC4, \
0xC5BEB19C, 0x81614125, 0x12060100, 0x00000000, \
0x00000000, 0x0001030A, 0x182D4865, 0x8297A6AE, \
0xAFA89A84, 0x6A4C301A, 0x0C040100, 0x00000000, \
0x00000000, 0x00000106, 0x1020364E, 0x687E8D95, \
0x958F816B, 0x52392210, 0x06020000, 0x00000000, \
0x00000000, 0x00000003, 0x0A152639, 0x50637178, \
0x79726652, 0x3C28170A, 0x03000000, 0x00000000, \
0x00000000, 0x00000001, 0x050D1827, 0x3949555B, \
0x5C564B3A, 0x291A0E06, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x02070E18, 0x25323B41, \
0x413C3327, 0x1A0F0702, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0103070E, 0x171F252A, \
0x2A261F17, 0x0F080301, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01010307, 0x0C111618, \
0x1916120D, 0x08030101, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010103, 0x06090B0D, \
0x0D0B0906, 0x03010100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x02030506, \
0x06050302, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010102, \
0x02020101, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A10068: .word \
0x2F3E56AB, 0xA4582102, 0x10417AB0, 0x805C312A, \
0x32376DD4, 0xA2633907, 0x0B387DA2, 0x6D81470C, \
0x3C5C60AC, 0xA5571801, 0x154C97B9, 0x68533236, \
0x304276D6, 0x9B533108, 0x154A96B7, 0x7C9B400B, \
0x3E756FAE, 0xAF5D1301, 0x1D59B4BF, 0x53432C38, \
0x2F487DCC, 0x8A4A2406, 0x1F5DB0C8, 0x90B55110, \
0x408B7FAA, 0xB76D1503, 0x286ACCBE, 0x43312030, \
0x2B4C82BA, 0x77431607, 0x2B70C7D5, 0xA6B95B13, \
0x409C93A6, 0xB87D1D08, 0x367FE1C1, 0x3C261629, \
0x2A508AAB, 0x69410C0C, 0x3986DDDB, 0xB5AE6316, \
0x40A0A7A1, 0xAA7D2610, 0x4596F1CD, 0x47281E36, \
0x365C97A3, 0x63450713, 0x499DF0D8, 0xB49E721A, \
0x409AB59F, 0x8A662D1C, 0x57AEFBDF, 0x6B404456, \
0x536EA49B, 0x6A4D061E, 0x5CB6FCC6, 0x9A8E7F20, \
0x428EBEA0, 0x623F2E2A, 0x69C6FFF0, 0x9A686569, \
0x6F83AC92, 0x7F5D0B2A, 0x70CDFFB2, 0x77848D29, \
0x4787C4A0, 0x401D2E3E, 0x7ED9FFFC, 0xC48F7973, \
0x8598AE86, 0x9A701339, 0x85E1FFA6, 0x5E859534, \
0x5189C99B, 0x2C0B3455, 0x92E9FFFA, 0xDCAB8071, \
0x94ACAD7A, 0xB1882249, 0x9AF1FFB0, 0x6A8F9746, \
0x6394CD8D, 0x290C416F, 0xA5EEFFF4, 0xDCB46B6D, \
0xA1BFAD77, 0xB6A43A58, 0xAAF8FFC8, 0x84959963, \
0x7BA4CE78, 0x351A588E, 0xB5E3F9F1, 0xCFAC6077, \
0xABCFAC77, 0xA8C05A6A, 0xB2F3FFE1, 0xA3959471, \
0x94B9D065, 0x473274A9, 0xBDCDECEF, 0xC2A05F86, \
0xBADDAC78, 0x92D87C7D, 0xAFDEFDF1, 0xBC8C8971, \
0xA6D2D45A, 0x584B95BB, 0xC1B3D5ED, 0xB8956697, \
0xC5E9A670, 0x7AE6978F, 0xA4BEF0EF, 0xB9797360, \
0xB1E8DD5D, 0x5D5FAFC7, 0xC49CB8E3, 0xAF8C78A5, \
0xCBF19D5F, 0x6AE5A6A3, 0x9398DBE7, 0xB46A5841, \
0xB8F2E871, 0x586DC1CD, 0xC78C9DD5, 0xAA878CB1, \
0xD8F89249, 0x63DCABB3, 0x8576C5D8, 0xA95E4430, \
0xC0EBEE91, 0x5378CACE, 0xC58087C5, 0xA4859EAE, \
0xE1FD8A36, 0x60D0ACBD, 0x7765B9C5, 0x9C563A2B, \
0xCED7E7B4, 0x5484C7CC, 0xB66F7CBB, 0x9F81A898, \
0xE3FF8D2E, 0x63C8B0BA, 0x6D69B8B0, 0x93573B2E, \
0xE0C2CED2, 0x6898C0C3, 0x97587EBC, 0x9D749570, \
0xDEFF9D36, 0x67C8B4A8, 0x6682BD9B, 0x93643E37, \
0xF0B4A8DE, 0x86A9B6B0, 0x70448BBE, 0x99617545, \
0xD1FFB84E, 0x70CAB48C, 0x64A4BD8D, 0x96763D41, \
0xFAAC82DA, 0xA7B6AE9A, 0x4D359AC0, 0x90494F27, \
0xC0FFD675, 0x80CCAD6D, 0x63C1B681, 0x9C85374E, \
0xFFA069C9, 0xC1BAA785, 0x3936A4B6, 0x7D342E18, \
0xA9FFEEA5, 0x9AC59F56, 0x60D0A873, 0x9288315E, \
0xFB8669B6, 0xD0B6A473, 0x3C47A39A, 0x6228241B, \
0x8BFFF6CD, 0xB7BB8F47, 0x57CFA169, 0x77782C6B, \
0xE56478AA, 0xD6AC9E64, 0x4E61977C, 0x4B232428, \
0x6FFFEBE5, 0xD0AF813C, 0x44C2A266, 0x5B61296E, \
0xC04188A8, 0xD4A09051, 0x5D788B61, 0x3E202234, \
0x58F9D7DF, 0xDEA27332, 0x31AE9A6C, 0x3E4B2F62, \
0x902688B3, 0xD0937A3F, 0x5D7D8B58, 0x37241F35, \
0x46F2C5BF, 0xD7956528, 0x1E918E76, 0x3442424A, \
0x601774C3, 0xCB8F6630, 0x48698261, 0x333C2729, \
0x3CECBF95, 0xC2885420, 0x11717B78, 0x4952673A, \
0x3D1153CD, 0xC994602F, 0x2D496F6D, 0x31674418, \
0x32E7CA6C, 0xA77D4318, 0x09526672, 0x6B6F963E, \
0x2B1036D0, 0xCAA26E3C, 0x1B2A5A7B, 0x3798700F, \
0x2BDFD94D, 0x8C773712, 0x043C606C, 0x9086B955, \
0x281225C9, 0xC7AD8954, 0x141B4085, 0x53CB9C10, \
0x26D3E63A, 0x757A3B11, 0x0131666F, 0xAB87BA6A, \
0x2E151FBF, 0xC1AEA16A, 0x1721388C, 0x81ECBB17, \
0x23C1EE30, 0x6688561E, 0x02317381, 0xA36A9566, \
0x3B171FB9, 0xB5A5AF7A, 0x1B384395, 0xABFBC81D, \
0x20AAEB28, 0x61987838, 0x05358299, 0x85405D4E, \
0x45181FB5, 0xA695B083, 0x1C55569C, 0xCEFFCF1E, \
0x1A8CDA24, 0x62A39755, 0x0A398FAE, 0x601A2A2C, \
0x49161FB1, 0x9A8BAC8A, 0x23736DA0, 0xE0FFD61E, \
0x136BAF23, 0x70ABAD6D, 0x143D95BD, 0x41030D16, \
0x41151DAA, 0x938BAA94, 0x2E8A8BA7, 0xE6FFD921, \
0x0C4A7D2D, 0x7CACAB70, 0x244093C3, 0x38020F11, \
0x2F151CA3, 0x9293ABA1, 0x3995AAB7, 0xEDF7D924, \
0x072F5842, 0x83AE9C66, 0x3F498EC7, 0x420D2812, \
0x1E151F9B, 0x989CB0B2, 0x4697C5CE, 0xF5F0D626, \
0x061B435B, 0x85B18A5B, 0x5F568BCD, 0x54245213, \
0x12172593, 0x9FA1BAC0, 0x5291D4E1, 0xFAF0D123, \
0x0711416F, 0x82B2765B, 0x84668FCB, 0x684D8212, \
0x1318308A, 0xA3A2C2C6, 0x5F88D3EE, 0xFEF6C81B, \
0x0B104276, 0x85B06A72, 0xA97896C3, 0x7C81AC19, \
0x24194083, 0xA2A0C6C4, 0x6A82CCF1, 0xFFFFB910, \
0x14173E77, 0x8BAE6992, 0xC6879BB4, 0x92B3C933, \
0x3C1D4F7D, 0x9DA2CCBE, 0x7381C6E6, 0xFFFFB111, \
0x26233975, 0x92AF6DAF, 0xDB949AA3, 0xADDBDD64, \
0x5927597B, 0x99AAD4B9, 0x7687C6D5, 0xFCFFB736, \
0x432D3A78, 0x98B371BD, 0xE5A0989E, 0xCCF2EAA0, \
0x753C5C80, 0x9DB9E3BC, 0x7896CFBF, 0xF6FFCB72, \
0x64323F81, 0x9CBC70B4, 0xE3AC9EAD, 0xE6FBF6CF, \
0x8B5C5C85, 0xA7C8F4C2, 0x7AA6D9A3, 0xF0FFE2A9, \
0x8032448D, 0xA4C970A0, 0xDBB5AAC6, 0xF7FEFDE7, \
0xA3806187, 0xB0D6FFC9, 0x7FB5D686, 0xE7FFF0D2, \
0x8D2F4E98, 0xABD7768D, 0xCFB9B4E1, 0xF8F8FFE7, \
0xB29B7089, 0xB7E4FFCD, 0x8CB8BF65, 0xD5FFF0D7, \
0x8D34609D, 0xB4E48385, 0xC3BAB0F1, 0xE2E8FEDC, \
0xB5A07A8D, 0xBDEFFFD0, 0x9AAB9543, 0xB9FFE9C3, \
0x80447497, 0xC0EF9C90, 0xBDB997E5, 0xC2CCFBD4, \
0xAB8F7387, 0xC8F8FFD4, 0xA4936324, 0x98FFE5B3, \
0x6F577E8A, 0xCEFABCA8, 0xC0BC71C7, 0x9EADF4D2, \
0x916D5D7B, 0xD4FEFFD6, 0xA575390F, 0x76FFE4A6, \
0x656A7F7D, 0xDDFFDABF, 0xC8BF4CA1, 0x8095E8CC, \
0x744A3B66, 0xDAFFFFD6, 0x9D5B1E04, 0x5DFDDF9A, \
0x6075787A, 0xECFFF1CD, 0xCEC42E7C, 0x7087D6BF, \
0x5A311F49, 0xD4FFFFD0, 0x8E4B1100, 0x50F7D892, \
0x68767788, 0xF6FFFDCE, 0xCDC31E65, 0x6E88C3A8, \
0x4922153A, 0xC3FFFDC4, 0x7F410B03, 0x4BEED08B, \
0x747682A0, 0xFDFFFEBF, 0xBCB61456, 0x7792B18B, \
0x3E19153D, 0xB5FFF8B2, 0x733B0908, 0x4DE0C487, \
0x827797BC, 0xFFFFF8AB, 0x9E9B0E50, 0x869E9F6E, \
0x3714184D, 0xB5FFF09E, 0x67380C11, 0x56CFB285, \
0x8F7EADD4, 0xFFFFED96, 0x78730A53, 0x9CA98F57, \
0x310F1C69, 0xC8FFE18A, 0x5D35161D, 0x64BC9E84, \
0x978BBFE7, 0xFFFFDD81, 0x5348075A, 0xB5B07F48, \
0x290A2088, 0xE1FFCF75, 0x5335272B, 0x74AD877F, \
0x9C9DCFF3, 0xFFFEC86E, 0x35260864, 0xC6B16F3E, \
0x200422A6, 0xF8FCB95F, 0x47373A3C, 0x86A36F73, \
0x9FB0D9FA, 0xFFF7B15B, 0x21110E70, 0xCDAB6139, \
0x160027C1, 0xFFF09F4C, 0x3B3A4B4D, 0x989D5B5D, \
0x9DB5D9FE, 0xFFEA994C, 0x1509177B, 0xC8A15C3C, \
0x0E022BD1, 0xFFE1873B, 0x2F3E5460, 0xA8954F44, \
0x96A6CEFF, 0xFFD7823C, 0x0C0A2784, 0xB9956343, \
0x0B0731DB, 0xFFCE722C, 0x22415672, 0xB58C4A31, \
0x8A88BAFF, 0xFAC56E2E, 0x060F398F, 0xA989764A, \
0x0A0C3AE1, 0xFFB85F20, 0x17425787, 0xBF824826, \
0x775FA3FF, 0xF1B66121, 0x03164B98, 0x9A818E4A, \
0x0A1040D4, 0xE8974D14, 0x11405495, 0xBB74401F, \
0x603D86F1, 0xD7A35414, 0x02195694, 0x8476943E, \
0x171A46C5, 0xCC7D3D0C, 0x0D3E599E, 0xAE6C371C, \
0x4A2D72E3, 0xC38F4C0E, 0x03205F96, 0x766A792A, \
0x242B4FB8, 0xB66A2E06, 0x0D3E66AA, 0x9B663322, \
0x3B2D6CDD, 0xB47B450A, 0x062B6E9C, 0x6E705D17
var_80A10868: .word \
0xFFF9FFF7, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0007FFF7, 0x00000000, 0x04000800, 0xFFFFFFFF, \
0x00070009, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFF90009, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A108A8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A0F868
.word \
0xF5900000, 0x07098250, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098250, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A10068
.word \
0xF5900100, 0x0701BC50, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0101BC50, 0xF2000000, 0x0107C0FC, \
0xFC262A60, 0x350CE37F, 0xE200001C, 0x0C1849D8, \
0xD9F0FFFF, 0x00000000, 0xD9FFFFFF, 0x00000400, \
0xDE000000, 0x08000000, 0x01004008
.word var_80A10868
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A10970: .word \
0x00000000, 0x00000000, 0x00030405, 0x06050301, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002090D, 0x0E0E0B05, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000511, 0x1D262C2F, 0x2F2F2B27, \
0x24222020, 0x1D181413, 0x120F0B0A, 0x0C121617, \
0x120A0200, 0x00000001, 0x06111A1E, 0x1C19140C, \
0x04000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x04132840, 0x55626D72, 0x72706E6B, \
0x6A676560, 0x58514D4A, 0x4A463F3D, 0x40485153, \
0x4A3A2718, 0x1110141C, 0x26303432, 0x2D262019, \
0x110A0705, 0x03000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000020E, 0x2644617B, 0x909DA8AC, 0xACABABAB, \
0xADAEABA6, 0x9C938E8C, 0x8C8C8785, 0x868C9395, \
0x8F816E5C, 0x514C4F55, 0x5859544D, 0x47413B36, \
0x302A251F, 0x1C181612, 0x0E0C0C0C, 0x0B0A0808, \
0x08090A0A, 0x09070402, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00011232, 0x587D9AAF, 0xBDC5CACC, 0xCCCDCFD3, \
0xD9DDDDD8, 0xCFC6BFBC, 0xBDBFC1C2, 0xC2C3C4C4, \
0xC2BEB5AB, 0xA29C9692, 0x8C81766D, 0x6764625F, \
0x5B57514B, 0x4845423F, 0x3B383737, 0x35322D2A, \
0x2A2C2E2C, 0x28221C17, 0x130F0A07, 0x06050402, \
0x00000000, 0x00000000, 0x00000001, 0x01010000, \
0x010F2F57, 0x81A9C5D3, 0xD8D8D6D5, 0xD6D9E0E7, \
0xECEFEFEA, 0xE3DCD5D2, 0xD5DAE0E5, 0xE5E1DBD7, \
0xD7DBDEE1, 0xDED9CEC2, 0xB4A4958B, 0x85838383, \
0x8383807A, 0x76726F6E, 0x6D6D6E6E, 0x6C675F59, \
0x5755534F, 0x47413C3A, 0x37332D26, 0x211F1E1A, \
0x120B0503, 0x02010000, 0x00000306, 0x08060100, \
0x0D21436C, 0x98C1DDE7, 0xE7E1DCD9, 0xDBE2EBF2, \
0xF5F3EDE7, 0xE1DCDADC, 0xE0E6EDF2, 0xF1EAE0D7, \
0xD5DCE7F0, 0xF5F3EADD, 0xCFBFB2A7, 0x9F999595, \
0x9A9FA09F, 0x99938E8E, 0x91969A99, 0x948C827A, \
0x736D665D, 0x55504C4D, 0x4F4F4C48, 0x45454440, \
0x392E2217, 0x0F0A0605, 0x060A0D10, 0x120F0902, \
0x182F537E, 0xABD4EDF5, 0xF3EDE6E3, 0xE5ECF6FC, \
0xFCF7F1EA, 0xE4E2E2E5, 0xE9EFF5F7, 0xF5EEE4D8, \
0xD2D6DEE9, 0xF3F7F5EE, 0xE4D9CFC5, 0xBAAFA7A3, \
0xA6AEB4B6, 0xB2ABA4A2, 0xA5A9ABA9, 0xA2989088, \
0x80756A61, 0x57535458, 0x5E636462, 0x6161615F, \
0x594E4033, 0x29211B18, 0x18181716, 0x14110E06, \
0x1D37608F, 0xBDE2F7FD, 0xFBF7F2F0, 0xF2F7FCFF, \
0xFFFDF8F3, 0xF0F0F0F0, 0xF3F5F9FB, 0xFAF4EBE0, \
0xD6D4D5DD, 0xE6F0F6F6, 0xF3EEE5DD, 0xD3C6BAB1, \
0xAEB2B8BD, 0xBEBCB7B1, 0xAAA39E99, 0x958F8B86, \
0x7F766C61, 0x58565961, 0x69707576, 0x726E6C69, \
0x62594E42, 0x382F2722, 0x1E1A1714, 0x100C0803, \
0x17346294, 0xC3E8FCFF, 0xFFFEFCFB, 0xFBFDFFFF, \
0xFFFFFFFE, 0xFEFEFCFC, 0xFCFDFEFF, 0xFEFBF6EF, \
0xE5DCD7D7, 0xDEE9F3F9, 0xFBF8F5EF, 0xE6D9C9BB, \
0xB0AAABB1, 0xB7BCBAB1, 0xA291837E, 0x7B7C7C7B, \
0x76706A61, 0x5A585961, 0x6B727574, 0x6F69625D, \
0x564F473B, 0x322A211A, 0x140F0B07, 0x04010100, \
0x0F254E7F, 0xAFD9F4FE, 0xFFFFFFFF, 0xFFFEFCFB, \
0xFBFBFDFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFD, \
0xF5EBE2DC, 0xDEE3EAEE, 0xEFEDEAE5, 0xDED4C4B0, \
0x9E8F888B, 0x92999C97, 0x89786A62, 0x61636668, \
0x6765615C, 0x57545254, 0x585A5A58, 0x544E4641, \
0x3B352D23, 0x1B140E0A, 0x05020100, 0x00000000, \
0x030E2B53, 0x82B1D5EC, 0xF7FDFDFD, 0xF9F3ECE6, \
0xE4E4E6E8, 0xEDF2F5F6, 0xF4F1F0F1, 0xF4F6F6F2, \
0xEBE2D9D0, 0xCAC8C6C4, 0xC1BFBBB8, 0xB2AB9F8B, \
0x735E514E, 0x51575E61, 0x5E564D46, 0x4546494D, \
0x504F4E4C, 0x48443E39, 0x342F2B29, 0x2724201B, \
0x16120C07, 0x05030201, 0x00000000, 0x00000000, \
0x00000C27, 0x4D79A2C1, 0xD5E0E4E2, 0xDACFC3BA, \
0xB4B1B0B1, 0xB6BDC4C9, 0xCACACBCC, 0xCCCAC6C0, \
0xB7ADA298, 0x9089827D, 0x7A777472, 0x6E6B6557, \
0x432E1E16, 0x16191F26, 0x2C2D2C2B, 0x2B2E3031, \
0x3332302E, 0x2B282119, 0x110B0807, 0x07060504, \
0x03010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000009, 0x1F3F607C, 0x93A0A5A3, 0x9A8E8177, \
0x6E676362, 0x656B747E, 0x868B8E8D, 0x8880786F, \
0x655B5047, 0x403B3632, 0x302E2C2A, 0x2A292822, \
0x1A0E0300, 0x00000104, 0x070B1014, 0x181C1B1A, \
0x1713100E, 0x0D0A0803, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0411202F, 0x3F4B504E, 0x4840382F, \
0x27201D1B, 0x1B1E252F, 0x3A424543, 0x3C322921, \
0x1B16100A, 0x07060505, 0x04030301, 0x02020203, \
0x03010000, 0x00000000, 0x00000105, 0x0A0D0C09, \
0x03000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000003, 0x0A0E1212, 0x0F0B0703, \
0x00000000, 0x00000003, 0x0B0F1210, 0x0B050100, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A10F70: .word \
0x05DC0000, 0xFB1E0000, 0x0B000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x0B000200, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x0B000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x0B000000, 0x000078FF
var_80A10FB0: .word \
0x05DC0000, 0x04E10000, 0x0C000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x0C000000, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x0C000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x0C000000, 0x000078FF, \
0x05DCFB1F, 0x00000000, 0x0C000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x0C000000, 0x000078FF
var_80A11010: .word \
0x05DC0000, 0xFB1E0000, 0x09FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x09FF0200, 0x007800FF, \
0x05DCFB1E, 0x00000000, 0x09FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09FF0000, 0x000078FF
var_80A11050: .word \
0x05DC0000, 0xFB1E0000, 0x0B000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x0B000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x0B000000, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x0B000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x0B000000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x0B000000, 0x000078FF
var_80A110B0: .word \
0x05DC0000, 0xFB1E0000, 0x09000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x09000200, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x09000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09000000, 0x000078FF
var_80A110F0: .word \
0x05DC0000, 0xFB1E0000, 0x09FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x09FF0200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x09FF0000, 0x007800FF, \
0x05DCFB1E, 0x00000000, 0x09FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09FF0000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09FF0000, 0x000078FF
var_80A11150: .word \
0x05DC0000, 0xFB1E0000, 0x08000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x08000200, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x08000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x08000000, 0x000078FF
var_80A11190: .word \
0x05DC0000, 0xFB1E0000, 0x09000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x09000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x09000000, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x09000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09000000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x09000000, 0x000078FF
var_80A111F0: .word \
0x05DC0000, 0xFB1E0000, 0x06FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x06FF0200, 0x007800FF, \
0x05DCFB1E, 0x00000000, 0x06FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06FF0000, 0x000078FF
var_80A11230: .word \
0x05DC0000, 0xFB1E0000, 0x08000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x08000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x08000000, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x08000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x08000000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x08000000, 0x000078FF
var_80A11290: .word \
0x05DC0000, 0xFB1E0000, 0x06000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x06000200, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x06000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06000000, 0x000078FF
var_80A112D0: .word \
0x05DC0000, 0xFB1E0000, 0x06FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x06FF0200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x06FF0000, 0x007800FF, \
0x05DCFB1E, 0x00000000, 0x06FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06FF0000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06FF0000, 0x000078FF
var_80A11330: .word \
0x05DC0000, 0x04E10000, 0x05000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x05000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x05000000, 0x000078FF, \
0x05DCFB1F, 0x00000000, 0x05000200, 0x000078FF
var_80A11370: .word \
0x05DC0000, 0xFB1E0000, 0x06000000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x06000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x06000000, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x06000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06000000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x06000000, 0x000078FF
var_80A113D0: .word \
0x05DC0000, 0xFB1E0000, 0x03FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x03FF0200, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x03FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x03FF0000, 0x000078FF
var_80A11410: .word \
0x05DC0000, 0x04E10000, 0x05000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x05000000, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x05000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x05000000, 0x000078FF, \
0x05DCFB1F, 0x00000000, 0x05000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x05000000, 0x000078FF
var_80A11470: .word \
0x05DC0000, 0x04E10000, 0x03000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x03000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x03000000, 0x000078FF, \
0x05DCFB1F, 0x00000000, 0x03000200, 0x000078FF
var_80A114B0: .word \
0x05DC0000, 0xFB1E0000, 0x03FF0000, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x03FF0200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x03FF0000, 0x007800FF, \
0x05DCFB1F, 0x00000000, 0x03FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x03FF0000, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x03FF0000, 0x000078FF
var_80A11510: .word \
0x05DC0000, 0x04E10000, 0x02000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x02000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x02000000, 0x000078FF, \
0x05DCFB1E, 0x00000000, 0x02000200, 0x000078FF
var_80A11550: .word \
0x05DC0000, 0x04E10000, 0x03000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x03000000, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x03000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x03000000, 0x000078FF, \
0x05DCFB1F, 0x00000000, 0x03000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x03000000, 0x000078FF
var_80A115B0: .word \
0x05DC0000, 0x04E10000, 0x00FF0200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x00FF0000, 0x007800FF, \
0x05DCFB1E, 0x00000000, 0x00FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x00FF0000, 0x000078FF
var_80A115F0: .word \
0x05DC0000, 0x04E10000, 0x02000200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x02000000, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x02000000, 0x007800FF, \
0x05DC04E2, 0x00000000, 0x02000000, 0x000078FF, \
0x05DCFB1E, 0x00000000, 0x02000200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x02000000, 0x000078FF
var_80A11650: .word \
0xFA250000, 0x04E20000, 0x00000200, 0x007800FF, \
0x05DC0000, 0x04E10000, 0x00FF0200, 0x007800FF, \
0x05DC0000, 0xFB1E0000, 0x00FF0000, 0x007800FF, \
0xFA240000, 0xFB1F0000, 0x00000000, 0x007800FF, \
0xFA24FB1E, 0x00000000, 0x00000200, 0x000078FF, \
0x05DCFB1E, 0x00000000, 0x00FF0200, 0x000078FF, \
0x05DC04E2, 0x00000000, 0x00FF0000, 0x000078FF, \
0xFA2404E2, 0x00000000, 0x00000000, 0x000078FF
var_80A116D0: .word 0xDA380003, 0x0D000280, 0x01004008
.word var_80A10F70
.word 0xDA380003, 0x0D0002C0, 0x01006014
.word var_80A10FB0
.word \
0x0602080A, 0x00020C00, 0x06040E06, 0x00041012, \
0xDF000000, 0x00000000
var_80A11708: .word 0xDA380003, 0x0D000240, 0x01004008
.word var_80A11010
.word 0xDA380003, 0x0D000280, 0x01006014
.word var_80A11050
.word \
0x06020800, 0x00020A0C, 0x06040E10, 0x00041206, \
0xDF000000, 0x00000000
var_80A11740: .word 0xDA380003, 0x0D000200, 0x01004008
.word var_80A110B0
.word 0xDA380003, 0x0D000240, 0x01006014
.word var_80A110F0
.word \
0x06020800, 0x00020A0C, 0x06040E10, 0x00041206, \
0xDF000000, 0x00000000
var_80A11778: .word 0xDA380003, 0x0D0001C0, 0x01004008
.word var_80A11150
.word 0xDA380003, 0x0D000200, 0x01006014
.word var_80A11190
.word \
0x06020800, 0x00020A0C, 0x06040E10, 0x00041206, \
0xDF000000, 0x00000000
var_80A117B0: .word 0xDA380003, 0x0D000180, 0x01004008
.word var_80A111F0
.word 0xDA380003, 0x0D0001C0, 0x01006014
.word var_80A11230
.word \
0x06020800, 0x00020A0C, 0x06040E10, 0x00041206, \
0xDF000000, 0x00000000
var_80A117E8: .word 0xDA380003, 0x0D000140, 0x01004008
.word var_80A11290
.word 0xDA380003, 0x0D000180, 0x01006014
.word var_80A112D0
.word \
0x06020800, 0x00020A0C, 0x06040E10, 0x00041206, \
0xDF000000, 0x00000000
var_80A11820: .word 0xDA380003, 0x0D000100, 0x01004008
.word var_80A11330
.word 0xDA380003, 0x0D000140, 0x01006014
.word var_80A11370
.word \
0x06000802, 0x00000A0C, 0x06060E10, 0x00061204, \
0xDF000000, 0x00000000
var_80A11858: .word 0xDA380003, 0x0D0000C0, 0x01004008
.word var_80A113D0
.word 0xDA380003, 0x0D000100, 0x01006014
.word var_80A11410
.word \
0x0602080A, 0x00020C00, 0x06040E06, 0x00041012, \
0xDF000000, 0x00000000
var_80A11890: .word 0xDA380003, 0x0D000080, 0x01004008
.word var_80A11470
.word 0xDA380003, 0x0D0000C0, 0x01006014
.word var_80A114B0
.word \
0x06000802, 0x00000A0C, 0x06060E10, 0x00061204, \
0xDF000000, 0x00000000
var_80A118C8: .word 0xDA380003, 0x0D000040, 0x01004008
.word var_80A11510
.word 0xDA380003, 0x0D000080, 0x01006014
.word var_80A11550
.word \
0x0600080A, 0x00000C02, 0x06060E04, 0x00061012, \
0xDF000000, 0x00000000
var_80A11900: .word 0xDA380003, 0x0D000000, 0x01004008
.word var_80A115B0
.word 0xDA380003, 0x0D000040, 0x01006014
.word var_80A115F0
.word \
0x0600080A, 0x00000C02, 0x06040E06, 0x00041012, \
0xDF000000, 0x00000000
var_80A11938: .word \
0xD7000002, 0xFFFFFFFF, 0xE7000000, 0x00000000, \
0xE200001C, 0x0C1849D8, 0xFC3097FF, 0x5FFEFE38, \
0xE3001001, 0x00000000, 0xFD900000
.word var_80A10970
.word \
0xF5900000, 0x07090270, 0xE6000000, 0x00000000, \
0xF3000000, 0x072FF0AB, 0xE7000000, 0x00000000, \
0xF5881800, 0x00090270, 0xF2000000, 0x0017C03C, \
0xF2000000, 0x0017C03C, 0xD9FCFFFF, 0x00000000, \
0xD9FFFBFF, 0x00000000, 0xD9F3FFFF, 0x00000000, \
0x01008010
.word var_80A11650
.word \
0x06000204, 0x00000406, 0x06080A0C, 0x00080C0E, \
0xDF000000, 0x00000000
var_80A119D8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000111, 0x11100000, 0x00000000, \
0x00000000, 0x00111222, 0x22211100, 0x00000000, \
0x00000000, 0x11223444, 0x44432211, 0x00000000, \
0x00000001, 0x22345566, 0x66554322, 0x10000000, \
0x00000012, 0x34566778, 0x87766543, 0x21000000, \
0x00000123, 0x45678999, 0x99987654, 0x32100000, \
0x00001234, 0x6789AABB, 0xBBAA9876, 0x43210000, \
0x00001345, 0x789BBCDD, 0xDDCBB987, 0x54310000, \
0x00012356, 0x89BCDEEE, 0xEEEDCB98, 0x65321000, \
0x00013467, 0x9BCDEFFF, 0xFFFEDCB9, 0x76431000, \
0x00023568, 0xABDEFFFF, 0xFFFFEDBA, 0x86532000, \
0x00124579, 0xBCEFFFFF, 0xFFFFFECB, 0x97542100, \
0x00124679, 0xBDEFFFFF, 0xFFFFFEDB, 0x97642100, \
0x00134689, 0xBDEFFFFF, 0xFFFFFEDB, 0x98643100, \
0x00134689, 0xBDEFFFFF, 0xFFFFFEDB, 0x98643100, \
0x00124679, 0xBDEFFFFF, 0xFFFFFEDB, 0x97642100, \
0x00124579, 0xBCEFFFFF, 0xFFFFFECB, 0x97542100, \
0x00023568, 0xACDEFFFF, 0xFFFFEDCA, 0x86532000, \
0x00012467, 0x9BCDEFFF, 0xFFFEDCB9, 0x76421000, \
0x00012356, 0x89BCDEEE, 0xEEEDCB98, 0x65321000, \
0x00001345, 0x789BBCDD, 0xDDCBB987, 0x54310000, \
0x00001234, 0x6789ABBB, 0xBBBA9876, 0x43210000, \
0x00000123, 0x45678999, 0x99987654, 0x32100000, \
0x00000012, 0x34566778, 0x87766543, 0x21000000, \
0x00000001, 0x23345566, 0x66554332, 0x10000000, \
0x00000000, 0x11233444, 0x44433211, 0x00000000, \
0x00000000, 0x00112223, 0x32221100, 0x00000000, \
0x00000000, 0x00000111, 0x11100000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A11BD8: .word \
0xFFEC0000, 0x000A0000, 0xFE000400, 0xFFFFFFFF, \
0x00140000, 0x000A0000, 0x06000400, 0xFFFFFFFF, \
0x00000000, 0xFFE40000, 0x0200FC66, 0xFFFFFFFF
var_80A11C08: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A119D8
.word \
0xF5900000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF400, 0xE7000000, 0x00000000, \
0xF5800400, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFC1197FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FFFF, 0x00000000, 0xD9FFFFFF, 0x00000400, \
0x01003006
.word var_80A11BD8
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A11C90: .word \
0xFFF6FFF6, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x000AFFF6, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x000A000A, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFF6000A, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A11CD0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A11D50
.word \
0xF5900000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00054150, 0xF2000000, 0x0007C07C, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A11C90
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A11D50: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x005B3000, 0x00000000, 0x00000000, \
0x00000000, 0x000B0000, 0x07000000, 0x00000000, \
0x00000000, 0x005BB64B, 0x3A000000, 0x00000000, \
0x00000000, 0x005B0000, 0x00000000, 0x00000000, \
0x00000000, 0x001E00B6, 0xFF5B0000, 0x00000000, \
0x00000000, 0x00251F0C, 0x07000000, 0x0A000000, \
0x00000000, 0x00000000, 0xB6FF0000, 0x00000000, \
0x00000000, 0x00255B00, 0x071F1E14, 0x0A000000, \
0x00000000, 0x00000000, 0x00457350, 0x00000000, \
0x00000000, 0x00295B8C, 0x5B5B0000, 0x00000000, \
0x00000000, 0x00000000, 0x00455C39, 0x0F000000, \
0x00000000, 0x0000A1FF, 0x5B000000, 0x00000000, \
0x00000000, 0x00000000, 0x005B5B00, 0x00000000, \
0x00000000, 0x005B311C, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x5BB60000, 0x00000000, \
0x00000000, 0x5BB63100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0xFFB60000, 0x00000000, \
0x00000046, 0xEA310000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0072B646, 0x00000000, \
0x0000B6A1, 0x81000000, 0x00000000, 0x00000000, \
0x00000000, 0x000C0000, 0x00172E19, 0xBDAB5D41, \
0x366BEAEA, 0x81000000, 0x00000000, 0x00000000, \
0x00000000, 0x06000000, 0x00000074, 0xFFFF0500, \
0x0A2342B6, 0xFF000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x005B0000, \
0x03030100, 0x00FF0700, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00020503, \
0x00000000, 0x00466200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00076200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00002962, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00003EA1, 0x62000000, 0x00000000, \
0x00000000, 0x0000002E, 0xB6350000, 0x00000000, \
0x00000000, 0x000000EA, 0x46000000, 0x00000000, \
0x00000000, 0x00002EFF, 0xFF5A0000, 0x00000000, \
0x00000000, 0x000000FF, 0xFF001700, 0x00000000, \
0x00000000, 0x01015BFF, 0xA1A10000, 0x00000000, \
0x00000000, 0x00030046, 0x97732100, 0x00000000, \
0x00000000, 0x040CB65E, 0x4A5B4600, 0x00000000, \
0x00000003, 0x0C0E8C46, 0x1C035C00, 0x00000000, \
0x00000017, 0x134F5B00, 0x00000046, 0x46000000, \
0x00000000, 0x34D20000, 0x0401005B, 0x00000000, \
0x00000000, 0x5BB60000, 0x00000000, 0x30FCB600, \
0x0000A1E7, 0x00000001, 0x0100141E, 0x5B000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000A1FF, \
0x5B46FF00, 0x00000100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x000000FC, \
0xFFA13100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0xB6000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A12150: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00000000, 0x00000000, 0x00000001, 0x01000000, \
0x00000102, 0x02010000, 0x00000001, 0x01010202, \
0x00000000, 0x00000000, 0x00000202, 0x02000000, \
0x01010205, 0x07050200, 0x00000001, 0x01010304, \
0x02010000, 0x00000000, 0x00000305, 0x04010001, \
0x05030307, 0x0A090401, 0x00000101, 0x01020206, \
0x05030200, 0x00000000, 0x01010408, 0x08030003, \
0x08080607, 0x09090602, 0x01000001, 0x01010104, \
0x05060603, 0x02010002, 0x0505060A, 0x0C080404, \
0x07090707, 0x06050709, 0x07010000, 0x01010101, \
0x05080B0A, 0x06020205, 0x090A0A0C, 0x0F0E0A05, \
0x05080905, 0x05040810, 0x10060000, 0x00010102, \
0x050A1113, 0x0E080608, 0x0A0C0D10, 0x1514120D, \
0x0E0C0D0B, 0x09080B15, 0x190F0402, 0x01000308, \
0x0A0F161A, 0x180F0A0A, 0x0A0B0B12, 0x191B2A20, \
0x221B1F1B, 0x1815141C, 0x22170806, 0x03030611, \
0x1A1F201E, 0x1C140E0E, 0x0D0E0F11, 0x181D2F3D, \
0x3F333532, 0x2C261F24, 0x2E230F0D, 0x0A090E18, \
0x242E2D24, 0x1B141010, 0x11161813, 0x1618274A, \
0x4E464948, 0x42383030, 0x39311712, 0x16151F24, \
0x2331362A, 0x1B111013, 0x191D201C, 0x1E273145, \
0x4F51565B, 0x584C4140, 0x4A3F1C14, 0x1E202D32, \
0x242B3631, 0x22140F14, 0x1D23221D, 0x273C4A4E, \
0x675F636D, 0x70645452, 0x564C2616, 0x2D363842, \
0x38333F3F, 0x35241817, 0x242C2A25, 0x2F4F656C, \
0x948A7E81, 0x887D6A63, 0x60583B2F, 0x4454575F, \
0x5B555C5E, 0x56493E34, 0x39414644, 0x49627089, \
0xBBBAA89B, 0x9B917A70, 0x67595152, 0x677A8184, \
0x857F7A7C, 0x756D6A63, 0x5C5D626E, 0x767F8795, \
0xC4D1CABB, 0xB5A68C82, 0x7D706B76, 0x8B969DA7, \
0xAEA69592, 0x928C8B8A, 0x857D8094, 0xA5AAA8A5, \
0xC4CEC9C7, 0xC2B69E94, 0x948F8991, 0x9EA4A9B7, \
0xBEBDAFA2, 0xA2A49F9A, 0x99959BB7, 0xC9CECAC4, \
0xD7CDC8C8, 0xCBC8B6AB, 0xAAAAA7A0, 0xA0A2ACBD, \
0xC6CCC9BD, 0xB4BAB6A8, 0xA3A3AECF, 0xE3E4E0DE, \
0xE6DBD4CE, 0xD0D0C6BA, 0xB6B6B3A7, 0x9FA7B4C7, \
0xD5D7D8D3, 0xC9C9CDBF, 0xB1B2BED9, 0xF2ECE3E5, \
0xECEAE1DA, 0xDBDDD7CB, 0xC2BFBCB4, 0xADB4C4D7, \
0xE4E7E4DD, 0xD6D6E0DC, 0xC7BABFD4, 0xE9E8DFE2, \
0xF0F4EDE8, 0xE6E7E7DD, 0xCFC9CAC9, 0xC8CEDCEA, \
0xF3F6F1E7, 0xE0DEE3E7, 0xDAC2C3D6, 0xE4E8E3E5, \
0xF7FBF8F1, 0xECEAEFEB, 0xDFDCDDE0, 0xE2E4E7EF, \
0xF7FCFAF4, 0xEFE9E5E7, 0xE2CDC8D7, 0xE5E9EAEE, \
0xFDFEFCF7, 0xF1EBEDF0, 0xE9E8EDF1, 0xF3F0EEF0, \
0xF5FBFBF8, 0xF7F3E9E2, 0xDDD6D3E1, 0xEBEBEBF4, \
0xFCFEFEFC, 0xF6F0F1F4, 0xEDEAF3FA, 0xFCF5EBEA, \
0xF0F8F8F6, 0xF7F6EEE6, 0xE2E0E4ED, 0xEDE9E1EE, \
0xFAFFFDFD, 0xFAF7F7F7, 0xF2EFF6FB, 0xFBF2E1DF, \
0xEEF8F6F2, 0xF4F6F2EE, 0xEAE7ECF2, 0xEEE6E0E5, \
0xF6FCFCFD, 0xFDFCFCF9, 0xF2F0F5FA, 0xFAF3DED8, \
0xE8F7F7F3, 0xF4F8F7F6, 0xF2EEEEF0, 0xECE5E2E5, \
0xF8FBF5F7, 0xFAFBFAF5, 0xEBE7F4FC, 0xFAF6E8DD, \
0xE8F8FCF8, 0xF8F9FAFA, 0xF9F4EEE9, 0xE4DFE0E9, \
0xF9FAF1EE, 0xF2F5F7F5, 0xEBE1EDFB, 0xFBFAF5EF, \
0xF4FCFEFD, 0xFBF8F8FB, 0xFBF7F2EA, 0xE4DCD8E5, \
0xF6FBF0EA, 0xECEFF3F2, 0xEDE5EAF9, 0xFDFCFDFC, \
0xFCFDFDFC, 0xF9F5F7FA, 0xFCF9F6F2, 0xEBE0D6E1, \
0xEDF9F5EE, 0xEDEEF0F0, 0xEEEBEFFA, 0xFEFEFFFC, \
0xF9F6F8FB, 0xFAF7F6FA, 0xFDFDFBFA, 0xF7E8DCDB, \
0xECF7F9F4, 0xF3F1F0EF, 0xECECF3FC, 0xFEFEFEF9, \
0xF1EDEEF7, 0xFBFAF9FC, 0xFEFEFDFC, 0xFBF3DFE0, \
0xF0F5FBFA, 0xF7F3F3F4, 0xF1EFF2F8, 0xFAFCFEFA, \
0xF1EAE7F0, 0xFAFEFDFE, 0xFFFEFEFD, 0xFDFBE7E9, \
0xF6FBFDFB, 0xF8F3F2F7, 0xF9F4EFF0, 0xF3F6FBFB, \
0xF5EEEDF0, 0xFAFFFFFF, 0xFEFDFDFE, 0xFEFDF7F0, \
0xF9FDFCFA, 0xF5ECEAF4, 0xFCF8ECE8, 0xEBEFF7FC, \
0xF8F6F7F6, 0xF9FCFEFD, 0xFBFAF8FB, 0xFEFFFEF7, \
0xF3FAFCF7, 0xEFE4E1EA, 0xF7F8EBE1, 0xE4EAEDF5, \
0xF6F3F7F8, 0xF7F9FAF9, 0xF5F3F1F0, 0xF4FBFFFA, \
0xECEEF6F4, 0xECE1DBE1, 0xEFF5EDE0, 0xE0E2E0E6, \
0xEDEBEFF2, 0xF3F6F6F5, 0xEEECEDE6, 0xE2EEFEFA, \
0xEAE3E6E6, 0xE5E2DEDF, 0xE7EDE7DD, 0xDBDDD8DA, \
0xE5E6E8ED, 0xEEF2F4EF, 0xE3D9DFE4, 0xDDE2F7FB, \
0xF2E5D8D2, 0xD4DDE3DB, 0xD7DCDCD4, 0xCFD1D5DC, \
0xE6E7E8E8, 0xE5E9EBE3, 0xD1C5CEE0, 0xE2E2F3FD, \
0xF8EAD6C2, 0xC1CDDCD7, 0xC5BFC4C1, 0xB7B9CCE7, \
0xF0EDE2DD, 0xD8D4D7CA, 0xB4AFBFD6, 0xE4EBF2FC, \
0xEEEAD8C2, 0xBABECCCF, 0xB9A1A3AA, 0xA6A2B0DB, \
0xF0E9D8CE, 0xC6BFBDAE, 0x9292ACCC, 0xE0E4E3EB, \
0xCFD5CFBF, 0xB3AEB1B6, 0xA68D8A95, 0x9A99A1C2, \
0xE3DBC6BA, 0xB4ACA292, 0x757299C0, 0xD7D8CBC6, \
0xA5B3BAB0, 0xA59A9293, 0x8C7A757E, 0x889198AE, \
0xCACAB7A7, 0xA09C9480, 0x63597696, 0xAEC0BEA8, \
0x8C959F97, 0x89807772, 0x6752536B, 0x79808896, \
0xAEB8A894, 0x827E796B, 0x59556374, 0x849EB6A5, \
0x918F8D7B, 0x6A676A66, 0x53363453, 0x6A6D6E76, \
0x8A9D9E90, 0x73625D58, 0x5157605F, 0x5E749CA7, \
0x96898163, 0x4E506064, 0x4A2A1E36, 0x565D5B5F, \
0x697D8D8C, 0x714E4240, 0x44525E59, 0x5161869C, \
0x81776D54, 0x3D3A4D5A, 0x46281B22, 0x363E424A, \
0x545D6E7B, 0x714F3630, 0x313E4E4C, 0x44537384, \
0x625B4E3E, 0x2E293646, 0x37201C20, 0x1E1D1F2D, \
0x3E454A59, 0x5F4D2D20, 0x2229363E, 0x3B4A6A70, \
0x453C3329, 0x211F2835, 0x2A1A1B20, 0x1307050F, \
0x242C2933, 0x43442C18, 0x15151C2A, 0x3140655C, \
0x251B1F1B, 0x15161F27, 0x261D1C20, 0x15040005, \
0x141E1516, 0x26312716, 0x0E0C0D19, 0x28385556, \
0x170D1511, 0x0A0B141E, 0x2222201F, 0x170B0403, \
0x0D190F0B, 0x151F1B10, 0x0B08050C, 0x17264546, \
0x130C140C, 0x03030C12, 0x13181F1C, 0x16100A07, \
0x090E0F09, 0x11160F08, 0x0C0F0A09, 0x0F1B2E32, \
0x12171D11, 0x0301070D, 0x0B0D1414, 0x110F110F, \
0x0A07070A, 0x11150B04, 0x0C15130F, 0x0E0E1B23, \
0x10172113, 0x0401050C, 0x0E09090B, 0x09090E13, \
0x10090505, 0x0D120C04, 0x07141911, 0x0C0A1016, \
0x09101811, 0x05020308, 0x0D090606, 0x0504060C, \
0x110F0903, 0x060B0804, 0x030A100D, 0x0A090B0C, \
0x05060A06, 0x01010204, 0x07080403, 0x02010307, \
0x0A0D0B04, 0x02020302, 0x02030606, 0x04040708, \
0x02020200, 0x00000201, 0x02030200, 0x00000102, \
0x05060704, 0x01000001, 0x01020201, 0x00010406, \
0x01000201, 0x00000000, 0x00000000, 0x00000001, \
0x02020202, 0x01000000, 0x00000101, 0x00000102, \
0x00000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000001, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A12950: .word \
0x009F0000, 0xFF010000, 0x03330800, 0xFFFFFFFF, \
0x01B50BB8, 0xFE8E0000, 0x02CD0000, 0xFFFFFFFF, \
0x01010000, 0xFF9F0000, 0x02660800, 0xFFFFFFFF, \
0x021C0BB8, 0x00000000, 0x02000000, 0xFFFFFFFF, \
0x00000000, 0xFEC50000, 0x04000800, 0xFFFFFFFF, \
0x00A70BB8, 0xFDA90000, 0x039A0000, 0xFFFFFFFF, \
0xFF610000, 0xFF010000, 0x04CD0800, 0xFFFFFFFF, \
0xFF590BB8, 0xFDA90000, 0x04660000, 0xFFFFFFFF, \
0xFEFF0000, 0xFF9F0000, 0x059A0800, 0xFFFFFFFF, \
0xFE4B0BB8, 0xFE8E0000, 0x05330000, 0xFFFFFFFF, \
0xFEFF0000, 0x00610000, 0x06660800, 0xFFFFFFFF, \
0xFDE40BB8, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFF610000, 0x00FF0000, 0x07330800, 0xFFFFFFFF, \
0xFE4B0BB8, 0x01720000, 0x06CD0000, 0xFFFFFFFF, \
0x00000000, 0x013B0000, 0x08000800, 0xFFFFFFFF, \
0xFF590BB8, 0x02570000, 0x079A0000, 0xFFFFFFFF, \
0x009F0000, 0x00FF0000, 0x00CD0800, 0xFFFFFFFF, \
0x00A70BB8, 0x02570000, 0x00660000, 0xFFFFFFFF, \
0x00000000, 0x013B0000, 0x00000800, 0xFFFFFFFF, \
0x00A70BB8, 0x02570000, 0x08660000, 0xFFFFFFFF, \
0x01010000, 0x00610000, 0x019A0800, 0xFFFFFFFF, \
0x01B50BB8, 0x01720000, 0x01330000, 0xFFFFFFFF
var_80A12AB0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A12150
.word \
0xF5900000, 0x0701805F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0001805F, 0xF2000000, 0x0007C0FC, \
0xFD900000, 0x04033130, 0xF5900100, 0x07014051, \
0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, \
0xE7000000, 0x00000000, 0xF5880900, 0x01014051, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x350CE37F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDE000000, 0x08000000, 0x0101602C
.word var_80A12950
.word \
0x06000204, 0x00020604, 0x06080A00, 0x000A0200, \
0x060C0E08, 0x000E0A08, 0x0610120C, 0x00120E0C, \
0x06141610, 0x00161210, 0x06181A14, 0x001A1614, \
0x061C1E18, 0x001E1A18, 0x06202224, 0x00261E1C, \
0x06282A20, 0x002A2220, 0x06040628, 0x00062A28, \
0xDF000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A12BC0: .word 0x40C8F5C3
var_80A12BC4: .word 0x40C8F5C3
var_80A12BC8: .word 0x403F5C29
var_80A12BCC: .word 0x3F19999A
var_80A12BD0: .word 0x461C4000
var_80A12BD4: .word 0x459C4000
var_80A12BD8: .word 0x459C4000
var_80A12BDC: .word 0x459C4000
var_80A12BE0: .word var_809F2E8C
.word var_809F3078
.word var_809F309C
.word var_809F3134
.word var_809F31F4
.word var_809F3280
.word var_809F32F8
.word var_809F3370
.word var_809F3474
.word var_809F350C
.word var_809F35F0
.word var_809F362C
.word var_809F36C4
.word lbl_809F4378
.word lbl_809F4378
.word var_809F37AC
.word var_809F3848
.word var_809F390C
.word var_809F3A3C
.word var_809F3B58
.word var_809F3D2C
.word var_809F3E24
.word var_809F3F3C
var_80A12C3C: .word 0xC3A68000
var_80A12C40: .word 0xC5DAC000
var_80A12C44: .word 0x3FA0D97C
var_80A12C48: .word 0x4019999A
var_80A12C4C: .word 0x3E4CCCCD
var_80A12C50: .word 0x3DCCCCCD
var_80A12C54: .word 0x3E23D70A
var_80A12C58: .word 0x3E4CCCCD
var_80A12C5C: .word 0x3D23D70A
var_80A12C60: .word 0x3CF5C28F
var_80A12C64: .word var_809F5348
.word var_809F5524
.word var_809F5650
.word var_809F573C
.word lbl_809F5814
.word var_809F5908
.word var_809F5C34
.word var_809F5D80
.word var_809F5EA8
.word var_809F6018
var_80A12C8C: .word var_809F48E4
.word var_809F4970
.word var_809F4A54
.word var_809F4B00
.word var_809F4D84
.word var_809F4DBC
.word var_809F4F10
.word var_809F4FA4
.word var_809F4FF0
.word var_809F5150
var_80A12CB4: .word 0xC5DAC000
var_80A12CB8: .word 0x3D4CCCCD
var_80A12CBC: .word 0x3E4CCCCD
var_80A12CC0: .word 0x45BB8000
var_80A12CC4: .word 0x4581C000
var_80A12CC8: .word 0x45803000
var_80A12CCC: .word 0x45826000
var_80A12CD0: .word 0xC5DAC000
var_80A12CD4: .word 0x45804000
var_80A12CD8: .word 0x45803000
var_80A12CDC: .word 0x45803000
var_80A12CE0: .word 0x4581C000
var_80A12CE4: .word 0x45803000
var_80A12CE8: .word 0x4580D000
var_80A12CEC: .word 0x45803000
var_80A12CF0: .word 0x45819800
var_80A12CF4: .word 0x4581D000
var_80A12CF8: .word 0x3E99999A
var_80A12CFC: .word 0x3E99999A
var_80A12D00: .word 0xC3FB8000
var_80A12D04: .word 0x4582A800
var_80A12D08: .word 0x442E4000
var_80A12D0C: .word 0x445D8000
var_80A12D10: .word 0x4581D000
var_80A12D14: .word 0x3E99999A
var_80A12D18: .word 0x3F4CCCCD
var_80A12D1C: .word 0x4581D000
var_80A12D20: .word 0x3F4CCCCD
var_80A12D24: .word var_809F6228
.word var_809F63D8
.word var_809F653C
.word var_809F6594
.word var_809F6630
var_80A12D38: .word 0x3FC90FDB
var_80A12D3C: .word 0x3FC90FDB
var_80A12D40: .word 0x469C4000
var_80A12D44: .word var_809F68BC
.word var_809F6900
.word var_809F6950
.word var_809F6D1C
.word var_809F6E54
.word var_809F6F68
var_80A12D5C: .word 0x40490FDB
var_80A12D60: .word 0x3E4CCCCD
var_80A12D64: .word 0x3D23D70A
var_80A12D68: .word 0x40490FDB
var_80A12D6C: .word 0x3FC90FDB
var_80A12D70: .word 0x3FC90FDB
var_80A12D74: .word 0x3FFEB852
var_80A12D78: .word 0x3DCCCCCD
var_80A12D7C: .word var_809F8148
.word var_809F8194
.word var_809F81E0
.word var_809F8268
.word var_809F82CC
.word var_809F8388
.word var_809F83FC
.word var_809F8434
.word var_809F84C0
var_80A12DA0: .word 0x43E78000
var_80A12DA4: .word 0x43E78000
var_80A12DA8: .word 0x3D99999A
var_80A12DAC: .word 0x3DA3D70A
var_80A12DB0: .word 0x3E4CCCCD
var_80A12DB4: .word 0x3F20D97C
var_80A12DB8: .word 0x3FC90FDB
var_80A12DBC: .word 0x40C90FDB
var_80A12DC0: .word 0x3F490FDB
var_80A12DC4: .word lbl_809F987C
.word var_809F93EC
.word var_809F9414
.word var_809F944C
.word var_809F9484
.word var_809F94C0
.word var_809F94E0
.word var_809F9524
.word var_809F9584
.word var_809F95E4
.word var_809F962C
.word var_809F9670
.word var_809F96B8
.word var_809F9734
.word var_809F977C
.word var_809F97B4
.word var_809F97D4
.word var_809F981C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word var_809F9860
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word lbl_809F987C
.word var_809F94A4
var_80A12E58: .word 0x3FA0D97C
var_80A12E5C: .word 0x464CCCCD
var_80A12E60: .word var_809F9C2C
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word lbl_809F9E34
.word var_809F9C4C
.word var_809F9CA4
.word var_809F9CE8
.word var_809F9D40
.word var_809F9D98
.word var_809F9DDC
var_80A12EA0: .word 0x46EC7A00
var_80A12EA4: .word 0x46ECC600
var_80A12EA8: .word 0x46ECE600
var_80A12EAC: .word 0x40490FDB
var_80A12EB0: .word 0x40490FDB
var_80A12EB4: .word 0x40490FDB
var_80A12EB8: .word 0xBF19999A
var_80A12EBC: .word 0x3FE66666
var_80A12EC0: .word 0xBFB33333
var_80A12EC4: .word 0x3F8CCCCD
var_80A12EC8: .word 0xBF7FFFFF
var_80A12ECC: .word 0x3FC90FDB
var_80A12ED0: .word 0x3EA0D97C
var_80A12ED4: .word 0x3FC90FDB
var_80A12ED8: .word 0x3ECCCCCD
var_80A12EDC: .word 0x3E8F5C29
var_80A12EE0: .word 0x45803000
var_80A12EE4: .word 0x3F733334
var_80A12EE8: .word 0x3F490FDB
var_80A12EEC: .word 0x3FC90FDB
var_80A12EF0: .word 0x469C4000
var_80A12EF4: .word var_809FC53C
.word var_809FC880
.word var_809FC920
.word var_809FCA04
.word lbl_809FC994
var_80A12F08: .word 0x47742400
var_80A12F0C: .word 0x3F333333
var_80A12F10: .word 0x3F666666
var_80A12F14: .word 0x3E4CCCCD
var_80A12F18: .word 0x43E88000
var_80A12F1C: .word 0x3ECCCCCD
var_80A12F20: .word 0x3EB33333
var_80A12F24: .word 0x3EC90FDB
var_80A12F28: .word 0x40490FF9
var_80A12F2C: .word 0x469C4000
var_80A12F30: .word 0x4622F983
var_80A12F34: .word 0x4622F983
var_80A12F38: .word 0xBCF5C28F
var_80A12F3C: .word 0x459C4000
var_80A12F40: .word 0x3D8F5C2A
var_80A12F44: .word 0x40490FDB
var_80A12F48: .word 0x40490FDB
var_80A12F4C: .word var_809FD8A0
.word var_809FDAAC
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word lbl_809FE264
.word var_809FDAF0
.word var_809FDB9C
.word var_809FE068
var_80A12F80: .word 0x4622F983
var_80A12F84: .word 0x4622F983
var_80A12F88: .word 0x4622F983
var_80A12F8C: .word 0x4622F983
var_80A12F90: .word 0x4622F983
var_80A12F94: .word 0x3DCCCCCD
var_80A12F98: .word 0x4622F983
var_80A12F9C: .word 0x4622F983
var_80A12FA0: .word 0x43E88000
var_80A12FA4: .word 0x3FC90FDB
var_80A12FA8: .word 0x40490FDB
var_80A12FAC: .word 0x3E99999A
var_80A12FB0: .word 0x3FC90FDB
var_80A12FB4: .word 0x3FC90FDB
var_80A12FB8: .word 0x3FC90FDB
var_80A12FBC: .word 0x3FC90FDB
var_80A12FC0: .word 0x415E6666
var_80A12FC4: .word 0x418F3333
var_80A12FC8: .word 0x3FC90FDB
var_80A12FCC: .word 0x3FC90FDB
var_80A12FD0: .word 0x40490FDB
var_80A12FD4: .word 0x3FC90FDB
var_80A12FD8: .word 0x3FC90FDB
var_80A12FDC: .word 0x3FA66666
var_80A12FE0: .word 0x44BB8000, 0x00000000, 0x00000000, 0x00000000

.bss

var_80A13F70: .space 0x04
var_80A13F74: .space 0x04
var_80A13F78: .space 0x04
var_80A13F7C: .space 0x04
var_80A13F80: .space 0x04
var_80A13F84: .space 0x04
var_80A13F88: .space 0x3B68
