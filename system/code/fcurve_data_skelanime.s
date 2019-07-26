# "FCurve Animation Data" part of the code file
#
# Seems to handle FCurve animation computations for different actors.
#
# Starts at VRAM: 80059990 / VROM: ACF8F0
#

.section .text
func_80059990:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    mul.s   $f2, $f12, $f12
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f16, $f2, $f12
    nop
    mul.s   $f6, $f2, $f4
    mtc1    $at, $f4                   # $f4 = 1.00
    add.s   $f18, $f16, $f16
    swc1    $f6, 0x0004($sp)
    lwc1    $f8, 0x0004($sp)
    sub.s   $f10, $f18, $f8
    add.s   $f6, $f10, $f4
    lwc1    $f10, 0x0040($sp)
    mul.s   $f4, $f6, $f10
    sub.s   $f6, $f8, $f18
    lwc1    $f10, 0x0044($sp)
    mul.s   $f8, $f6, $f10
    add.s   $f10, $f2, $f2
    add.s   $f6, $f4, $f8
    sub.s   $f4, $f16, $f10
    lwc1    $f10, 0x0048($sp)
    add.s   $f8, $f4, $f12
    mul.s   $f4, $f8, $f10
    nop
    mul.s   $f8, $f4, $f14
    sub.s   $f4, $f16, $f2
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x004C($sp)
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f4, $f8, $f14
    add.s   $f0, $f10, $f4
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80059A28:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sdc1    $f20, 0x0018($sp)
    mov.s   $f20, $f12
    sw      $ra, 0x0024($sp)
    lh      t6, 0x0002(a1)             # 00000002
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    c.le.s  $f20, $f6
    nop
    bc1f    lbl_80059A64
    nop
    b       lbl_80059BB4
    lwc1    $f0, 0x0008(a1)            # 00000008
lbl_80059A64:
    multu   a2, t0
    or      v1, $zero, $zero           # v1 = 00000000
    mflo    t7
    addu    v0, a1, t7
    lh      t8, -0x000A(v0)            # FFFFFFF6
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.le.s  $f10, $f20
    nop
    bc1fl   lbl_80059AA0
    or      v0, a1, $zero              # v0 = 00000000
    b       lbl_80059BB4
    lwc1    $f0, -0x0004(v0)           # FFFFFFFC
    or      v0, a1, $zero              # v0 = 00000000
lbl_80059AA0:
    lh      t9, 0x000E(v0)             # 0000000E
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    c.lt.s  $f20, $f4
    nop
    bc1fl   lbl_80059BAC
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lhu     a2, 0x0000(v0)             # 00000000
    andi    t1, a2, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80059AD8
    andi    t2, a2, 0x0002             # t2 = 00000000
    b       lbl_80059BB4
    lwc1    $f0, 0x0008(v0)            # 00000008
lbl_80059AD8:
    beq     t2, $zero, lbl_80059B30
    addiu   a0, v1, 0x0001             # a0 = 00000002
    multu   a0, t0
    lh      t4, 0x0002(v0)             # 00000002
    lwc1    $f2, 0x0008(v0)            # 00000008
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f16, $f6
    mflo    t3
    addu    v1, a1, t3
    lh      t5, 0x0002(v1)             # 00000003
    sub.s   $f8, $f20, $f16
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    lwc1    $f10, 0x0008(v1)           # 00000009
    sub.s   $f4, $f18, $f16
    sub.s   $f18, $f10, $f2
    div.s   $f6, $f8, $f4
    mul.s   $f8, $f18, $f6
    b       lbl_80059BB4
    add.s   $f0, $f8, $f2
lbl_80059B30:
    multu   a0, t0
    lh      t6, 0x0002(v0)             # 00000002
    lh      t9, 0x0006(v0)             # 00000006
    lw      a2, 0x0008(v0)             # 00000008
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x78F0($at)           # 801078F0
    cvt.s.w $f16, $f4
    mtc1    t9, $f4                    # $f4 = 0.00
    mflo    t7
    addu    v1, a1, t7
    lh      t8, 0x0002(v1)             # 00000003
    lw      a3, 0x0008(v1)             # 00000009
    sub.s   $f6, $f20, $f16
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    cvt.s.w $f10, $f4
    sub.s   $f0, $f18, $f16
    swc1    $f10, 0x0010($sp)
    lh      t1, 0x0004(v1)             # 00000005
    div.s   $f12, $f6, $f0
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18
    mul.s   $f14, $f0, $f8
    jal     func_80059990
    swc1    $f6, 0x0014($sp)
    b       lbl_80059BB8
    lw      $ra, 0x0024($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_80059BAC:
    b       lbl_80059AA0
    addiu   v0, v0, 0x000C             # v0 = 0000000C
lbl_80059BB4:
    lw      $ra, 0x0024($sp)
lbl_80059BB8:
    ldc1    $f20, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop


func_80059BD0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    sb      $zero, 0x0000(a0)          # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    sw      $zero, 0x0008(a0)          # 00000008
    swc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f0, 0x0014(a0)            # 00000014
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f0, 0x000C(a0)            # 0000000C
    sw      $zero, 0x001C(a0)          # 0000001C
    jr      $ra
    nop


func_80059C00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a3, 0x0024($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    lui     t0, 0x00FF                 # t0 = 00FF0000
    ori     t0, t0, 0xFFFF             # t0 = 00FFFFFF
    addiu   a3, a3, 0x0C38             # a3 = 80120C38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    sll     t6, a2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, a3, t8
    lw      t2, 0x0000(t9)             # 00000000
    and     t3, a2, t0
    addu    t4, t2, t3
    addu    v0, t4, t1
    lbu     t5, 0x0004(v0)             # 00000004
    sb      t5, 0x0000(a1)             # 00000000
    lw      v1, 0x0000(v0)             # 00000000
    lbu     a0, 0x0000(a1)             # 00000000
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, a3, t8
    lw      t2, 0x0000(t9)             # 00000000
    and     t3, v1, t0
    addu    $at, a0, $zero
    addu    t4, t2, t3
    addu    t5, t4, t1
    sll     a0, a0,  3
    sw      t5, 0x0004(a1)             # 00000004
    addu    a0, a0, $at
    sll     a0, a0,  1
    jal     func_80066C10              # zelda_malloc?
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      v0, 0x001C(a1)             # 0000001C
    swc1    $f4, 0x0018(a1)            # 00000018
    lw      $ra, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80059CB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x001C(a1)             # 0000001C
    beql    a0, $zero, lbl_80059CD4
    lw      $ra, 0x0014($sp)
    jal     func_80066C90
    nop
    lw      $ra, 0x0014($sp)
lbl_80059CD4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80059CE0:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0014(a0)            # 00000014
    swc1    $f14, 0x0010(a0)           # 00000010
    sub.s   $f6, $f12, $f4
    swc1    $f6, 0x000C(a0)            # 0000000C
    lwc1    $f8, 0x0010($sp)
    swc1    $f8, 0x0018(a0)            # 00000018
    lwc1    $f10, 0x0014($sp)
    sw      a1, 0x0008(a0)             # 00000008
    swc1    $f10, 0x0014(a0)           # 00000014
    jr      $ra
    nop


func_80059D18:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    mtc1    $zero, $f12                # $f12 = 0.00
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t6, 0x0074($sp)
    sw      $zero, 0x0058($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    lw      v1, 0x0008(t6)             # 00000008
    lwc1    $f2, 0x0014(t6)            # 00000014
    mtc1    $at, $f10                  # $f10 = 0.50
    sll     t7, v1,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t3, t0, t9
    lw      t4, 0x0000(t3)             # 00000000
    and     t5, v1, t1
    lwc1    $f18, 0x0018(t6)           # 00000018
    addu    t7, t4, t5
    addu    v0, t7, t2
    lw      a0, 0x0000(v0)             # 00000000
    lw      a2, 0x0004(v0)             # 00000004
    lw      a3, 0x0008(v0)             # 00000008
    sll     t8, a0,  4
    srl     t9, t8, 28
    sll     t3, t9,  2
    addu    t4, t0, t3
    lw      t5, 0x0000(t4)             # 00000000
    sll     t9, a2,  4
    srl     t3, t9, 28
    and     t7, a0, t1
    sll     t4, t3,  2
    addu    t8, t5, t7
    addu    t5, t0, t4
    sll     t3, a3,  4
    lw      t7, 0x0000(t5)             # 00000000
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    s3, t8, t2
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    and     t8, a2, t1
    addu    t9, t7, t8
    addu    t7, t0, t5
    lh      t5, 0x0110(t4)             # 80120110
    c.le.s  $f12, $f2
    lw      t8, 0x0000(t7)             # 00000000
    mtc1    t5, $f4                    # $f4 = 0.00
    addu    s4, t9, t2
    and     t9, a3, t1
    cvt.s.w $f6, $f4
    addu    t3, t8, t9
    addu    s5, t3, t2
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   s7, $zero, 0x000C          # s7 = 0000000C
    mul.s   $f8, $f2, $f6
    lw      s0, 0x001C(t6)             # 0000001C
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f18, $f16
    bc1f    lbl_80059E70
    swc1    $f4, 0x0018(t6)            # 00000018
    lw      t7, 0x0074($sp)
    lwc1    $f0, 0x0010(t7)            # 00000010
    lwc1    $f6, 0x0018(t7)            # 00000018
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_80059E9C
    lw      t9, 0x0074($sp)
lbl_80059E70:
    c.lt.s  $f2, $f12
    lw      t8, 0x0074($sp)
    bc1fl   lbl_80059EAC
    lw      t4, 0x0074($sp)
    lwc1    $f0, 0x0010(t8)            # 00000010
    lwc1    $f8, 0x0018(t8)            # 00000018
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_80059EAC
    lw      t4, 0x0074($sp)
    lw      t9, 0x0074($sp)
lbl_80059E9C:
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    swc1    $f0, 0x0018(t9)            # 00000018
    sw      t3, 0x0058($sp)
    lw      t4, 0x0074($sp)
lbl_80059EAC:
    sw      $zero, 0x005C($sp)
    lbu     t5, 0x0000(t4)             # 80120000
    blezl   t5, lbl_80059FCC
    lw      v0, 0x0058($sp)
    mtc1    $at, $f24                  # $f24 = 100.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f22, 0x7900($at)          # 80107900
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f20                  # $f20 = 1024.00
    addiu   s6, $zero, 0x0003          # s6 = 00000003
    or      s2, $zero, $zero           # s2 = 00000000
lbl_80059ED8:
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80059EDC:
    lbu     a2, 0x0000(s3)             # 00000000
lbl_80059EE0:
    lw      t9, 0x0074($sp)
    or      a1, s4, $zero              # a1 = 00000000
    bne     a2, $zero, lbl_80059F24
    nop
    lhu     t6, 0x0000(s5)             # 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f10                   # $f10 = 0.00
    bgez    t6, lbl_80059F10
    cvt.s.w $f0, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f0, $f0, $f18
lbl_80059F10:
    trunc.w.s $f16, $f0
    addiu   s5, s5, 0x0002             # s5 = 00000002
    mfc1    t8, $f16
    b       lbl_80059F88
    sh      t8, 0x0000(s0)             # 00000000
lbl_80059F24:
    jal     func_80059A28
    lwc1    $f12, 0x0018(t9)           # 00000018
    lbu     t3, 0x0000(s3)             # 00000000
    multu   t3, s7
    mflo    t4
    addu    s4, s4, t4
    bne     s2, $zero, lbl_80059F58
    nop
    mul.s   $f4, $f0, $f20
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    b       lbl_80059F88
    sh      t6, 0x0000(s0)             # 00000000
lbl_80059F58:
    bne     s2, s8, lbl_80059F74
    nop
    mul.s   $f8, $f0, $f22
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    b       lbl_80059F88
    sh      t8, 0x0000(s0)             # 00000000
lbl_80059F74:
    mul.s   $f18, $f0, $f24
    trunc.w.s $f16, $f18
    mfc1    t3, $f16
    nop
    sh      t3, 0x0000(s0)             # 00000000
lbl_80059F88:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x0002             # s0 = 00000002
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s6, lbl_80059EE0
    lbu     a2, 0x0000(s3)             # 00000001
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bnel    s2, s6, lbl_80059EDC
    or      s1, $zero, $zero           # s1 = 00000000
    lw      t4, 0x005C($sp)
    lw      t6, 0x0074($sp)
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x005C($sp)
    lbu     t7, 0x0000(t6)             # 00000000
    slt     $at, t5, t7
    bnel    $at, $zero, lbl_80059ED8
    or      s2, $zero, $zero           # s2 = 00000000
    lw      v0, 0x0058($sp)
lbl_80059FCC:
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_8005A008:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    sw      a2, 0x0090($sp)
    sw      a3, 0x0094($sp)
    lw      t6, 0x0090($sp)
    lw      t8, 0x008C($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t7, 0x0004(t6)             # 00000004
    sll     t9, t8,  2
    lui     $at, 0x00FF                # $at = 00FF0000
    addu    t0, t7, t9
    lw      v0, 0x0000(t0)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      t7, 0x0088($sp)
    sll     t2, v0,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t1, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t1, t5
    addu    t8, t6, $at
    sw      t8, 0x0084($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t7)             # 00000000
    lw      t9, 0x0094($sp)
    beql    t9, $zero, lbl_8005A0A8
    lui     $at, 0x3A80                # $at = 3A800000
    beq     t9, $zero, lbl_8005A2C4
    lw      a0, 0x0088($sp)
    lw      a1, 0x0090($sp)
    lw      a2, 0x008C($sp)
    jalr    $ra, t9
    lw      a3, 0x00A0($sp)
    beq     v0, $zero, lbl_8005A2C4
    lui     $at, 0x3A80                # $at = 3A800000
lbl_8005A0A8:
    mtc1    $at, $f0                   # $f0 = 0.00
    lw      t0, 0x0090($sp)
    lw      t3, 0x008C($sp)
    lw      t2, 0x001C(t0)             # 0000001C
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFD4
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  1
    addu    v0, t2, t4
    lh      t1, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFE0
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0070($sp)
    lh      t5, -0x000A(v0)            # 00000002
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0074($sp)
    lh      t6, -0x0008(v0)            # 00000004
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0078($sp)
    lh      t8, -0x0006(v0)            # 00000006
    sh      t8, 0x0068($sp)
    lh      t7, -0x0004(v0)            # 00000008
    sh      t7, 0x006A($sp)
    lh      t9, -0x0002(v0)            # 0000000A
    sh      t9, 0x006C($sp)
    lh      t0, 0x0000(v0)             # 0000000C
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x005C($sp)
    lh      t3, 0x0002(v0)             # 0000000E
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0060($sp)
    lh      t2, 0x0004(v0)             # 00000010
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    jal     func_800AB1BC
    swc1    $f8, 0x0064($sp)
    lwc1    $f12, 0x0070($sp)
    lwc1    $f14, 0x0074($sp)
    lw      a2, 0x0078($sp)
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t4, 0x009C($sp)
    lw      t1, 0x0084($sp)
    lw      t0, 0x009C($sp)
    bne     t4, $zero, lbl_8005A200
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0004(t1)             # 00000004
    beql    a1, $zero, lbl_8005A2C8
    lw      s0, 0x0098($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x0088($sp)
    lw      a0, 0x0000(t8)             # 00000000
    sw      a1, 0x0058($sp)
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a2, 0x004C($sp)
    lw      a1, 0x0058($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      a1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    b       lbl_8005A2C8
    lw      s0, 0x0098($sp)
lbl_8005A200:
    bne     t0, $at, lbl_8005A2C4
    lw      t3, 0x0084($sp)
    lw      a1, 0x0004(t3)             # 00000004
    beql    a1, $zero, lbl_8005A268
    lw      t8, 0x0084($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t1, 0x0088($sp)
    lw      a0, 0x0000(t1)             # 00000000
    sw      a1, 0x0058($sp)
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a2, 0x0040($sp)
    lw      a1, 0x0058($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      a1, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x0084($sp)
lbl_8005A268:
    lw      a1, 0x0008(t8)             # 00000008
    beql    a1, $zero, lbl_8005A2C8
    lw      s0, 0x0098($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x0088($sp)
    lw      a0, 0x0000(t0)             # 00000000
    sw      a1, 0x0058($sp)
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      a2, 0x0038($sp)
    lw      a1, 0x0058($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
lbl_8005A2C4:
    lw      s0, 0x0098($sp)
lbl_8005A2C8:
    lw      a0, 0x0088($sp)
    lw      a1, 0x0090($sp)
    beq     s0, $zero, lbl_8005A2E0
    lw      a2, 0x008C($sp)
    jalr    $ra, s0
    lw      a3, 0x00A0($sp)
lbl_8005A2E0:
    lw      t4, 0x0084($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0088($sp)
    lbu     a1, 0x0000(t4)             # 00000000
    lw      a2, 0x0090($sp)
    lw      a3, 0x0094($sp)
    beq     a1, $at, lbl_8005A318
    nop
    lw      t1, 0x009C($sp)
    lw      t5, 0x00A0($sp)
    sw      s0, 0x0010($sp)
    sw      t1, 0x0014($sp)
    jal     func_8005A008
    sw      t5, 0x0018($sp)
lbl_8005A318:
    jal     func_800AA724
    nop
    lw      t6, 0x0084($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0088($sp)
    lbu     a1, 0x0001(t6)             # 00000001
    lw      a2, 0x0090($sp)
    lw      a3, 0x0094($sp)
    beql    a1, $at, lbl_8005A35C
    lw      $ra, 0x002C($sp)
    lw      t8, 0x009C($sp)
    lw      t7, 0x00A0($sp)
    sw      s0, 0x0010($sp)
    sw      t8, 0x0014($sp)
    jal     func_8005A008
    sw      t7, 0x0018($sp)
    lw      $ra, 0x002C($sp)
lbl_8005A35C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    jr      $ra
    nop


func_8005A36C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a0, 0x0028($sp)
    or      a0, a1, $zero              # a0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x001C(a2)             # 0000001C
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x0038($sp)
    beql    t6, $zero, lbl_8005A3AC
    lw      $ra, 0x0024($sp)
    lw      t8, 0x003C($sp)
    lw      t9, 0x0040($sp)
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    jal     func_8005A008
    sw      t9, 0x0018($sp)
    lw      $ra, 0x0024($sp)
lbl_8005A3AC:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
