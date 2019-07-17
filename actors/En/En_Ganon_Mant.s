.section .text
func_80AE8820:
    sw      a1, 0x0004($sp)
    lw      t6, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80AE883C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AE884C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sdc1    $f24, 0x0028($sp)
    lui     $at, 0x4200                # $at = 42000000
    sw      s2, 0x0040($sp)
    mtc1    $at, $f24                  # $f24 = 32.00
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    jal     func_80026D64
    mov.s   $f12, $f24
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f26                  # $f26 = 64.00
    swc1    $f0, 0x0050($sp)
    jal     func_80026D64
    mov.s   $f12, $f26
    lui     $at, %hi(var_80AEC910)     # $at = 80AF0000
    lwc1    $f12, %lo(var_80AEC910)($at)
    jal     func_80026D64
    swc1    $f0, 0x004C($sp)
    mov.s   $f22, $f0
    jal     func_800CF470
    mov.s   $f12, $f0
    mov.s   $f20, $f0
    jal     func_800D2CD0
    mov.s   $f12, $f22
    lui     $at, %hi(var_80AEC914)     # $at = 80AF0000
    mov.s   $f22, $f0
    jal     func_80026D64
    lwc1    $f12, %lo(var_80AEC914)($at)
    trunc.w.s $f4, $f0
    lui     t4, %hi(var_80AE97F4)      # t4 = 80AF0000
    addiu   t4, t4, %lo(var_80AE97F4)  # t4 = 80AE97F4
    lwc1    $f2, 0x0050($sp)
    mfc1    t7, $f4
    lwc1    $f14, 0x004C($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t8, t7, 16
    sra     t9, t8, 16
    sll     t3, t9,  3
    addu    v0, t3, t4
    lh      t1, 0x0004(v0)             # 00000004
    lw      t2, 0x0000(v0)             # 00000000
    lui     a3, %hi(var_80AE9A08)      # a3 = 80AF0000
    blez    t1, lbl_80AE8A10
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a3, a3, %lo(var_80AE9A08)  # a3 = 80AE9A08
lbl_80AE8918:
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_80AE89F4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    c.lt.s  $f2, $f24
    nop
    bc1fl   lbl_80AE89F4
    addiu   s0, s0, 0x0001             # s0 = 00000002
    c.le.s  $f0, $f14
    nop
    bc1fl   lbl_80AE89F4
    addiu   s0, s0, 0x0001             # s0 = 00000003
    c.lt.s  $f14, $f26
    sll     t5, s0,  1
    addu    a2, t2, t5
    bc1fl   lbl_80AE89F4
    addiu   s0, s0, 0x0001             # s0 = 00000004
    lh      a0, 0x0000(a2)             # 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    bltzl   a0, lbl_80AE89F4
    addiu   s0, s0, 0x0001             # s0 = 00000005
lbl_80AE896C:
    bltz    a0, lbl_80AE89D8
    or      v1, $zero, $zero           # v1 = 00000000
    trunc.w.s $f8, $f14
    trunc.w.s $f6, $f2
    mfc1    t6, $f8
    mfc1    t9, $f6
    sll     t7, t6,  5
    addu    t8, t9, t7
    sll     t3, t8, 16
    sra     t4, t3, 16
    addu    a1, t4, t0
    sll     t5, v1,  5
lbl_80AE899C:
    addu    v0, a1, t5
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0800
    beq     $at, $zero, lbl_80AE89C4
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     t6, v0,  1
    addu    t9, a3, t6
    sh      $zero, 0x0000(t9)          # 00000000
    lh      a0, 0x0000(a2)             # 00000000
lbl_80AE89C4:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, a0, v1
    beql    $at, $zero, lbl_80AE899C
    sll     t5, v1,  5
lbl_80AE89D8:
    addiu   t0, t0, 0x0001             # t0 = 00000001
    sll     t0, t0, 16
    sra     t0, t0, 16
    slt     $at, a0, t0
    beq     $at, $zero, lbl_80AE896C
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000006
lbl_80AE89F4:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, t1
    add.s   $f2, $f2, $f20
    bne     $at, $zero, lbl_80AE8918
    add.s   $f14, $f14, $f22
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80AE8A10:
    lui     $at, %hi(var_80AEC918)     # $at = 80AF0000
    lwc1    $f22, %lo(var_80AEC918)($at)
lbl_80AE8A18:
    jal     func_80026D64
    mov.s   $f12, $f22
    mov.s   $f20, $f0
    jal     func_80026D64
    mov.s   $f12, $f22
    trunc.w.s $f10, $f0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    trunc.w.s $f16, $f20
    mfc1    t8, $f10
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    sll     t3, t8, 16
    sra     t4, t3, 16
    sll     t5, t4,  3
    mfc1    t7, $f16
    subu    t5, t5, t4
    sll     t5, t5,  3
    addu    t5, t5, t4
    sll     t5, t5,  3
    sll     t8, t7, 16
    sra     t3, t8, 16
    addu    t6, s2, t5
    addu    t4, t6, t3
    bne     $at, $zero, lbl_80AE8A18
    sb      s1, 0x02F8(t4)             # 000002F8
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80AE8AA8:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s8, 0x0068($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    or      s0, a3, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    or      s8, a2, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00E0($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x0023         # $at = 00000023
    swc1    $f4, 0x00A4($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    bne     t6, $at, lbl_80AE8BBC
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = -30.00
    lui     $at, 0x4700                # $at = 47000000
    swc1    $f6, 0x00A0($sp)
    swc1    $f8, 0x00A8($sp)
    lh      t7, 0x00B6(s2)             # 000000B6
    mtc1    $at, $f18                  # $f18 = 32768.00
    lui     $at, %hi(var_80AEC91C)     # $at = 80AF0000
    mtc1    t7, $f10                   # $f10 = 0.00
    lwc1    $f6, %lo(var_80AEC91C)($at)
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f16, $f10
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
    addiu   s5, $sp, 0x00A0            # s5 = FFFFFFC0
    or      a0, s5, $zero              # a0 = FFFFFFC0
    jal     func_800AB958
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFB4
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
lbl_80AE8B6C:
    multu   s4, v1
    lwc1    $f10, 0x0094($sp)
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x000C
    mflo    t8
    addu    v0, t8, s0
    lwc1    $f8, 0x0000(v0)            # 00000000
    lwc1    $f18, 0x0008(v0)           # 00000008
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f4, 0x009C($sp)
    add.s   $f6, $f18, $f4
    bne     $at, $zero, lbl_80AE8B6C
    swc1    $f6, 0x0008(v0)            # 00000008
    lui     $at, 0x40D0                # $at = 40D00000
    mtc1    $at, $f8                   # $f8 = 6.50
    beq     $zero, $zero, lbl_80AE8BCC
    swc1    $f8, 0x00AC($sp)
lbl_80AE8BBC:
    lui     $at, 0x4118                # $at = 41180000
    mtc1    $at, $f10                  # $f10 = 9.50
    addiu   s5, $sp, 0x00A0            # s5 = FFFFFFC0
    swc1    $f10, 0x00AC($sp)
lbl_80AE8BCC:
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f30                  # $f30 = -5.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f28                  # $f28 = 5.00
    or      s4, $zero, $zero           # s4 = 00000000
    lw      s7, 0x00F0($sp)
    lw      s6, 0x00F4($sp)
    lw      s1, 0x00F8($sp)
lbl_80AE8BEC:
    bne     s4, $zero, lbl_80AE8C10
    lh      v0, 0x00FE($sp)
    lwc1    $f16, 0x0000(s8)           # 00000000
    swc1    $f16, 0x0000(s0)           # 00000000
    lwc1    $f18, 0x0004(s8)           # 00000004
    swc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f4, 0x0008(s8)            # 00000008
    beq     $zero, $zero, lbl_80AE8FE8
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_80AE8C10:
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80AEC920)     # $at = 80AF0000
    cvt.s.w $f8, $f6
    lwc1    $f10, %lo(var_80AEC920)($at)
    lui     $at, %hi(var_80AEC924)     # $at = 80AF0000
    lwc1    $f18, %lo(var_80AEC924)($at)
    lui     $at, %hi(var_80AEC928)     # $at = 80AF0000
    cvt.s.w $f6, $f4
    mul.s   $f16, $f8, $f10
    lwc1    $f8, %lo(var_80AEC928)($at)
    lui     $at, 0x4130                # $at = 41300000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f10, $f6, $f8
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x3F80                 # a1 = 3F800000
    div.s   $f20, $f16, $f18
    mtc1    $at, $f16                  # $f16 = 11.00
    jal     func_800642F0
    div.s   $f22, $f10, $f16
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0004             # a0 = 00000004
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0008             # a0 = 00000008
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    mtc1    $zero, $f18                # $f18 = 0.00
    mov.s   $f12, $f20
    jal     func_800CF470
    swc1    $f18, 0x00A0($sp)
    lwc1    $f6, 0x16A4(s2)            # 000016A4
    lwc1    $f4, 0x16A0(s2)            # 000016A0
    sll     s3, s4,  2
    mul.s   $f8, $f0, $f6
    lui     $at, %hi(var_80AE9814)     # $at = 80AF0000
    addu    $at, $at, s3
    lwc1    $f16, %lo(var_80AE9814)($at)
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f10, $f4, $f8
    mul.s   $f18, $f16, $f10
    swc1    $f18, 0x00A8($sp)
    jal     func_800AAB94
    lwc1    $f12, 0x16BC(s2)           # 000016BC
    or      a0, s5, $zero              # a0 = FFFFFFC0
    jal     func_800AB958
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFA8
    jal     func_800D2CD0
    mov.s   $f12, $f22
    lwc1    $f4, 0x16A8(s2)            # 000016A8
    lui     $at, %hi(var_80AE9860)     # $at = 80AF0000
    addu    $at, $at, s3
    mul.s   $f8, $f0, $f4
    lwc1    $f6, %lo(var_80AE9860)($at)
    mtc1    $zero, $f10                # $f10 = 0.00
    or      a0, s5, $zero              # a0 = FFFFFFC0
    addiu   a1, $sp, 0x007C            # a1 = FFFFFF9C
    swc1    $f10, 0x00A8($sp)
    mul.s   $f16, $f6, $f8
    jal     func_800AB958
    swc1    $f16, 0x00A0($sp)
    lwc1    $f18, 0x0000(s0)           # 00000000
    lwc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f8, -0x000C(s0)           # FFFFFFF4
    lwc1    $f10, 0x0088($sp)
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x007C($sp)
    lwc1    $f0, 0x16B8(s2)            # 000016B8
    sub.s   $f16, $f6, $f8
    lwc1    $f8, 0x0004(s1)            # 00000004
    lwc1    $f6, 0x0004(s0)            # 00000004
    add.s   $f4, $f10, $f18
    lwc1    $f18, -0x0008(s0)          # FFFFFFF8
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x0008(s1)            # 00000008
    add.s   $f20, $f16, $f4
    lwc1    $f4, 0x0008(s0)            # 00000008
    sub.s   $f16, $f10, $f18
    lwc1    $f10, -0x0004(s0)          # FFFFFFFC
    mov.s   $f14, $f20
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0084($sp)
    add.s   $f24, $f16, $f0
    lwc1    $f16, 0x0090($sp)
    sub.s   $f18, $f8, $f10
    add.s   $f6, $f16, $f4
    add.s   $f22, $f18, $f6
    jal     func_800AA670
    mov.s   $f12, $f22
    mul.s   $f8, $f20, $f20
    mov.s   $f26, $f0
    mov.s   $f14, $f24
    mul.s   $f10, $f22, $f22
    add.s   $f0, $f8, $f10
    jal     func_800AA670
    sqrt.s  $f12, $f0
    neg.s   $f20, $f0
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f20, -0x000C(s6)          # FFFFFFF4
    lwc1    $f4, 0x00AC($sp)
    mov.s   $f12, $f26
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f16, 0x00A0($sp)
    jal     func_800AAB94
    swc1    $f4, 0x00A8($sp)
    mov.s   $f12, $f20
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s5, $zero              # a0 = FFFFFFC0
    jal     func_800AB958
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFB4
    lwc1    $f18, -0x000C(s0)          # FFFFFFF4
    lwc1    $f6, 0x0094($sp)
    lwc1    $f20, 0x0000(s0)           # 00000000
    lwc1    $f10, -0x0008(s0)          # FFFFFFF8
    add.s   $f8, $f18, $f6
    lwc1    $f24, 0x0004(s0)           # 00000004
    lwc1    $f18, -0x0004(s0)          # FFFFFFFC
    lwc1    $f22, 0x0008(s0)           # 00000008
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f16, 0x0098($sp)
    lui     t9, %hi(var_80AE98A8)      # t9 = 80AF0000
    addiu   t9, t9, %lo(var_80AE98A8)  # t9 = 80AE98A8
    add.s   $f4, $f10, $f16
    lwc1    $f10, 0x0000(s0)           # 00000000
    addu    v0, s3, t9
    swc1    $f4, 0x0004(s0)            # 00000004
    lwc1    $f6, 0x009C($sp)
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x0008(s0)            # 00000008
    lwc1    $f16, 0x0024(s2)           # 00000024
    lwc1    $f18, 0x002C(s2)           # 0000002C
    lwc1    $f4, 0x0008(s0)            # 00000008
    sub.s   $f14, $f10, $f16
    lwc1    $f16, 0x16C0(s2)           # 000016C0
    lwc1    $f10, 0x0000(v0)           # 00000000
    sub.s   $f12, $f4, $f18
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f12, $f12
    add.s   $f0, $f6, $f8
    mul.s   $f4, $f10, $f16
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_80AE8EC0
    nop
    jal     func_800AA670
    sw      v0, 0x0070($sp)
    lw      v0, 0x0070($sp)
    lwc1    $f6, 0x16C0(s2)            # 000016C0
    mov.s   $f12, $f0
    lwc1    $f18, 0x0000(v0)           # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f8, $f18, $f6
    jal     func_800AAB94
    swc1    $f8, 0x00A8($sp)
    or      a0, s5, $zero              # a0 = FFFFFFC0
    jal     func_800AB958
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFB4
    lwc1    $f10, 0x0024(s2)           # 00000024
    lwc1    $f16, 0x0094($sp)
    add.s   $f4, $f10, $f16
    swc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x009C($sp)
    lwc1    $f18, 0x002C(s2)           # 0000002C
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_80AE8EC0:
    lwc1    $f0, 0x169C(s2)            # 0000169C
    lwc1    $f10, 0x0004(s0)           # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80AE8EE4
    lwc1    $f16, 0x0000(s0)           # 00000000
    swc1    $f0, 0x0004(s0)            # 00000004
    lwc1    $f16, 0x0000(s0)           # 00000000
lbl_80AE8EE4:
    mtc1    $at, $f0                   # $f0 = 100.00
    lui     $at, 0x42A0                # $at = 42A00000
    sub.s   $f4, $f16, $f20
    mtc1    $at, $f2                   # $f2 = 80.00
    addiu   $at, $zero, 0x0023         # $at = 00000023
    mul.s   $f18, $f4, $f2
    div.s   $f6, $f18, $f0
    swc1    $f6, 0x0000(s1)            # 00000000
    lwc1    $f8, 0x0004(s0)            # 00000004
    sub.s   $f10, $f8, $f24
    mul.s   $f16, $f10, $f2
    div.s   $f4, $f16, $f0
    swc1    $f4, 0x0004(s1)            # 00000004
    lwc1    $f18, 0x0008(s0)           # 00000008
    sub.s   $f6, $f18, $f22
    mul.s   $f8, $f6, $f2
    div.s   $f10, $f8, $f0
    swc1    $f10, 0x0008(s1)           # 00000008
    lh      t0, 0x001C(s2)             # 0000001C
    beql    t0, $at, lbl_80AE8FCC
    lwc1    $f16, 0x0000(s0)           # 00000000
    lwc1    $f0, 0x0000(s1)            # 00000000
    c.lt.s  $f28, $f0
    nop
    bc1fl   lbl_80AE8F58
    c.lt.s  $f0, $f30
    beq     $zero, $zero, lbl_80AE8F68
    swc1    $f28, 0x0000(s1)           # 00000000
    c.lt.s  $f0, $f30
lbl_80AE8F58:
    nop
    bc1fl   lbl_80AE8F6C
    lwc1    $f0, 0x0004(s1)            # 00000004
    swc1    $f30, 0x0000(s1)           # 00000000
lbl_80AE8F68:
    lwc1    $f0, 0x0004(s1)            # 00000004
lbl_80AE8F6C:
    c.lt.s  $f28, $f0
    nop
    bc1fl   lbl_80AE8F88
    c.lt.s  $f0, $f30
    beq     $zero, $zero, lbl_80AE8F98
    swc1    $f28, 0x0004(s1)           # 00000004
    c.lt.s  $f0, $f30
lbl_80AE8F88:
    nop
    bc1fl   lbl_80AE8F9C
    lwc1    $f0, 0x0008(s1)            # 00000008
    swc1    $f30, 0x0004(s1)           # 00000004
lbl_80AE8F98:
    lwc1    $f0, 0x0008(s1)            # 00000008
lbl_80AE8F9C:
    c.lt.s  $f28, $f0
    nop
    bc1fl   lbl_80AE8FB8
    c.lt.s  $f0, $f30
    beq     $zero, $zero, lbl_80AE8FC8
    swc1    $f28, 0x0008(s1)           # 00000008
    c.lt.s  $f0, $f30
lbl_80AE8FB8:
    nop
    bc1fl   lbl_80AE8FCC
    lwc1    $f16, 0x0000(s0)           # 00000000
    swc1    $f30, 0x0008(s1)           # 00000008
lbl_80AE8FC8:
    lwc1    $f16, 0x0000(s0)           # 00000000
lbl_80AE8FCC:
    lwc1    $f4, 0x0000(s7)            # 00000000
    lwc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f6, 0x0008(s7)            # 00000008
    sub.s   $f14, $f16, $f4
    jal     func_800AA670
    sub.s   $f12, $f18, $f6
    swc1    $f0, -0x0008(s6)           # FFFFFFF8
lbl_80AE8FE8:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x000C
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    addiu   s6, s6, 0x000C             # s6 = 0000000C
    bne     $at, $zero, lbl_80AE8BEC
    addiu   s7, s7, 0x000C             # s7 = 0000000C
    sw      s7, 0x00F0($sp)
    sw      s1, 0x00F8($sp)
    lwc1    $f8, 0x007C(s6)            # 00000088
    lwc1    $f10, 0x0078(s6)           # 00000084
    swc1    $f8, 0x0088(s6)            # 00000094
    swc1    $f10, 0x0084(s6)           # 00000090
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
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80AE906C:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lbu     t6, 0x16F6(a0)             # 000016F6
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   s5, a0, 0x013C             # s5 = 0000013C
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80AE90F0
    addiu   s8, $sp, 0x004C            # s8 = FFFFFFD4
    lui     v1, %hi(var_80AEB208)      # v1 = 80AF0000
    addiu   v1, v1, %lo(var_80AEB208)  # v1 = 80AEB208
    sll     t8, v1,  4
    srl     t9, t8, 28
    sll     t0, t9,  2
    lui     t1, 0x8012                 # t1 = 80120000
    addu    t1, t1, t0
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t1, 0x0C38(t1)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, t1, t2
    addu    v0, v0, $at
    beq     $zero, $zero, lbl_80AE912C
    sw      v0, 0x006C($sp)
lbl_80AE90F0:
    lui     v0, %hi(var_80AEC008)      # v0 = 80AF0000
    addiu   v0, v0, %lo(var_80AEC008)  # v0 = 80AEC008
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x006C($sp)
lbl_80AE912C:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    swc1    $f0, 0x0058($sp)
    swc1    $f0, 0x0060($sp)
    sh      $zero, 0x0076($sp)
    addiu   s7, $sp, 0x0058            # s7 = FFFFFFE0
    addiu   s6, $zero, 0x000C          # s6 = 0000000C
    swc1    $f4, 0x005C($sp)
lbl_80AE914C:
    lh      v1, 0x0076($sp)
    lui     t1, %hi(var_80AE98DC)      # t1 = 80AF0000
    addiu   t1, t1, %lo(var_80AE98DC)  # t1 = 80AE98DC
    sll     t0, v1,  1
    addu    s4, t0, t1
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80AE9168:
    multu   s2, s6
    sll     t2, s3,  1
    addu    t3, s4, t2
    lhu     t4, 0x0000(t3)             # 00000000
    lw      v0, 0x006C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sll     t5, t4,  4
    addu    s0, t5, v0
    mflo    t6
    addu    s1, s5, t6
    lwc1    $f6, 0x000C(s1)            # 0000000C
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sh      t8, 0x0000(s0)             # 00000000
    lwc1    $f10, 0x0010(s1)           # 00000010
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    sh      t0, 0x0002(s0)             # 00000002
    lwc1    $f18, 0x0014(s1)           # 00000014
    trunc.w.s $f4, $f18
    mfc1    t2, $f4
    nop
    sh      t2, 0x0004(s0)             # 00000004
    jal     func_800AAB94
    lwc1    $f12, 0x00A0(s1)           # 000000A0
    lwc1    $f12, 0x009C(s1)           # 0000009C
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s7, $zero              # a0 = FFFFFFE0
    jal     func_800AB958
    or      a1, s8, $zero              # a1 = FFFFFFD4
    lwc1    $f6, 0x004C($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    trunc.w.s $f8, $f6
    sra     s2, s2, 16
    addiu   s3, s3, 0x000C             # s3 = 0000000C
    sll     s3, s3, 16
    mfc1    t4, $f8
    slti    $at, s2, 0x000C
    sra     s3, s3, 16
    sb      t4, 0x000C(s0)             # 0000000C
    lwc1    $f10, 0x0050($sp)
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    sb      t6, 0x000D(s0)             # 0000000D
    lwc1    $f18, 0x0054($sp)
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    bne     $at, $zero, lbl_80AE9168
    sb      t8, 0x000E(s0)             # 0000000E
    lh      t9, 0x0076($sp)
    addiu   s5, s5, 0x01C8             # s5 = 00000304
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sll     t1, t0, 16
    sra     t2, t1, 16
    slti    $at, t2, 0x000C
    bne     $at, $zero, lbl_80AE914C
    sh      t0, 0x0076($sp)
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
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80AE9290:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f2                 # $f2 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f0, 0x16B0(a0)            # 000016B0
    lbu     t7, 0x16F6(a0)             # 000016F6
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.eq.s  $f2, $f0
    addiu   t8, t7, 0x0001             # t8 = 00000001
    lw      v1, 0x0118(a0)             # 00000118
    sb      t6, 0x16F5(a0)             # 000016F5
    bc1f    lbl_80AE92D4
    sb      t8, 0x16F6(a0)             # 000016F6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_80AE92EC
    lwc1    $f0, 0x16AC(a0)            # 000016AC
lbl_80AE92D4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    nop
    sub.s   $f4, $f0, $f12
    swc1    $f4, 0x16B0(a0)            # 000016B0
    lwc1    $f0, 0x16AC(a0)            # 000016AC
lbl_80AE92EC:
    c.eq.s  $f2, $f0
    nop
    bc1tl   lbl_80AE9308
    lwc1    $f0, 0x16B4(a0)            # 000016B4
    sub.s   $f6, $f0, $f12
    swc1    $f6, 0x16AC(a0)            # 000016AC
    lwc1    $f0, 0x16B4(a0)            # 000016B4
lbl_80AE9308:
    c.eq.s  $f2, $f0
    nop
    bc1tl   lbl_80AE9324
    lbu     v0, 0x16F4(a0)             # 000016F4
    sub.s   $f8, $f0, $f12
    swc1    $f8, 0x16B4(a0)            # 000016B4
    lbu     v0, 0x16F4(a0)             # 000016F4
lbl_80AE9324:
    lh      t9, 0x00B6(v1)             # 000000B6
    beq     v0, $zero, lbl_80AE933C
    sh      t9, 0x00B6(a0)             # 000000B6
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    jal     func_80AE884C
    sb      t0, 0x16F4(a0)             # 000016F4
lbl_80AE933C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AE934C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    mfc1    a2, $f12
    mov.s   $f14, $f12
    lw      t0, 0x0000(t6)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    sw      t0, 0x0020($sp)
    lw      t0, 0x0020($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      t0, 0x0020($sp)
    lui     a2, 0xDE00                 # a2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t2, %hi(var_80AEBB08)      # t2 = 80AF0000
    addiu   t2, t2, %lo(var_80AEBB08)  # t2 = 80AEBB08
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      t3, 0x002C($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t1, 0xDB06                 # t1 = DB060000
    lbu     t4, 0x16F6(t3)             # 000016F6
    ori     t7, t7, 0x0030             # t7 = DB060030
    ori     t1, t1, 0x0030             # t1 = DB060030
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80AE9420
    lw      v1, 0x02C0(t0)             # 000002C0
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, %hi(var_80AEB208)      # t8 = 80AF0000
    addiu   t8, t8, %lo(var_80AEB208)  # t8 = 80AEB208
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80AE943C
    lw      v1, 0x02C0(t0)             # 000002C0
    lw      v1, 0x02C0(t0)             # 000002C0
lbl_80AE9420:
    lui     t2, %hi(var_80AEC008)      # t2 = 80AF0000
    addiu   t2, t2, %lo(var_80AEC008)  # t2 = 80AEC008
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
lbl_80AE943C:
    lui     t4, %hi(var_80AEBBB8)      # t4 = 80AF0000
    addiu   t4, t4, %lo(var_80AEBBB8)  # t4 = 80AEBBB8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AE9464:
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s6, 0x0070($sp)
    sw      s2, 0x0060($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s5, 0x006C($sp)
    sw      s4, 0x0068($sp)
    sw      s3, 0x0064($sp)
    sw      s1, 0x005C($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lbu     t6, 0x16F5(s2)             # 000016F5
    beql    t6, $zero, lbl_80AE9748
    or      a0, s6, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v0, s2, 0x16C4             # v0 = 000016C4
    lwc1    $f4, 0x16AC(s2)            # 000016AC
    lui     $at, 0xC150                # $at = C1500000
    c.eq.s  $f0, $f4
    nop
    bc1tl   lbl_80AE94E8
    lwc1    $f8, 0x16B0(s2)            # 000016B0
    mtc1    $at, $f6                   # $f6 = -13.00
    addiu   v1, s2, 0x16E8             # v1 = 000016E8
    beq     $zero, $zero, lbl_80AE9540
    swc1    $f6, 0x16B8(s2)            # 000016B8
    lwc1    $f8, 0x16B0(s2)            # 000016B0
lbl_80AE94E8:
    addiu   v0, s2, 0x16DC             # v0 = 000016DC
    lui     $at, 0xC150                # $at = C1500000
    c.eq.s  $f0, $f8
    nop
    bc1tl   lbl_80AE9514
    lwc1    $f4, 0x16B4(s2)            # 000016B4
    mtc1    $at, $f10                  # $f10 = -13.00
    addiu   v1, s2, 0x16D0             # v1 = 000016D0
    beq     $zero, $zero, lbl_80AE9540
    swc1    $f10, 0x16B8(s2)           # 000016B8
    lwc1    $f4, 0x16B4(s2)            # 000016B4
lbl_80AE9514:
    lui     $at, 0xC040                # $at = C0400000
    addiu   v0, s2, 0x16C4             # v0 = 000016C4
    c.eq.s  $f0, $f4
    addiu   v1, s2, 0x16D0             # v1 = 000016D0
    bc1t    lbl_80AE9540
    nop
    mtc1    $at, $f6                   # $f6 = -3.00
    addiu   v0, s2, 0x16DC             # v0 = 000016DC
    addiu   v1, s2, 0x16E8             # v1 = 000016E8
    beq     $zero, $zero, lbl_80AE9540
    swc1    $f6, 0x16B8(s2)            # 000016B8
lbl_80AE9540:
    lwc1    $f0, 0x0000(v0)            # 000016DC
    lwc1    $f8, 0x0000(v1)            # 000016E8
    lwc1    $f2, 0x0004(v0)            # 000016E0
    lwc1    $f10, 0x0004(v1)           # 000016EC
    sub.s   $f20, $f8, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    sub.s   $f24, $f10, $f2
    lwc1    $f16, 0x0008(v0)           # 000016E4
    lwc1    $f4, 0x0008(v1)            # 000016F0
    mul.s   $f6, $f20, $f18
    mov.s   $f14, $f20
    sub.s   $f22, $f4, $f16
    mul.s   $f8, $f24, $f18
    nop
    mul.s   $f4, $f22, $f18
    mov.s   $f12, $f22
    add.s   $f30, $f0, $f6
    add.s   $f10, $f2, $f8
    add.s   $f6, $f16, $f4
    swc1    $f10, 0x0090($sp)
    jal     func_800AA670
    swc1    $f6, 0x0094($sp)
    mul.s   $f28, $f20, $f20
    mov.s   $f26, $f0
    mov.s   $f14, $f24
    mul.s   $f2, $f22, $f22
    add.s   $f0, $f28, $f2
    swc1    $f2, 0x007C($sp)
    jal     func_800AA670
    sqrt.s  $f12, $f0
    mul.s   $f8, $f24, $f24
    lwc1    $f2, 0x007C($sp)
    neg.s   $f20, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mov.s   $f12, $f26
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f10, $f28, $f8
    add.s   $f0, $f10, $f2
    sqrt.s  $f0, $f0
    mul.s   $f22, $f0, $f4
    jal     func_800AAB94
    nop
    mov.s   $f12, $f20
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80AEC92C)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AEC92C)($at)
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $zero, $f28                # $f28 = 0.00
    sub.s   $f8, $f26, $f6
    mtc1    $at, $f26                  # $f26 = 11.00
    lui     $at, %hi(var_80AEC930)     # $at = 80AF0000
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f8, 0x16BC(s2)            # 000016BC
    lwc1    $f24, %lo(var_80AEC930)($at)
    addiu   s5, $sp, 0x00B4            # s5 = FFFFFFDC
    addiu   s4, $sp, 0x00C0            # s4 = FFFFFFE8
    addiu   s3, $zero, 0x01C8          # s3 = 000001C8
lbl_80AE9630:
    jal     func_800AA6EC
    nop
    mtc1    s0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f6, $f4, $f24
    div.s   $f20, $f6, $f26
    jal     func_800CF470
    mov.s   $f12, $f20
    mul.s   $f8, $f0, $f22
    swc1    $f28, 0x00C4($sp)
    mov.s   $f12, $f20
    jal     func_800D2CD0
    swc1    $f8, 0x00C0($sp)
    neg.s   $f10, $f0
    or      a0, s4, $zero              # a0 = FFFFFFE8
    mul.s   $f4, $f10, $f22
    or      a1, s5, $zero              # a1 = FFFFFFDC
    jal     func_800AB958
    swc1    $f4, 0x00C8($sp)
    multu   s0, s3
    lwc1    $f6, 0x00B4($sp)
    addiu   s1, s0, 0x0001             # s1 = 00000001
    sll     t8, s1, 16
    add.s   $f8, $f30, $f6
    sra     t9, t8, 16
    sll     v1, s1, 16
    slti    $at, t9, 0x000C
    sra     v1, v1, 16
    mflo    t7
    addu    v0, s2, t7
    swc1    $f8, 0x013C(v0)            # 0000013C
    lwc1    $f4, 0x00B8($sp)
    lwc1    $f10, 0x0090($sp)
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0140(v0)            # 00000140
    lwc1    $f10, 0x00BC($sp)
    lwc1    $f8, 0x0094($sp)
    add.s   $f4, $f8, $f10
    bne     $at, $zero, lbl_80AE96E0
    swc1    $f4, 0x0144(v0)            # 00000144
    addiu   v1, s0, 0xFFFF             # v1 = FFFFFFFF
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80AE96E0:
    multu   v1, s3
    addiu   t3, v0, 0x01D8             # t3 = 000001D8
    addiu   t4, v0, 0x0268             # t4 = 00000268
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, v0, 0x013C             # a2 = 0000013C
    addiu   a3, v0, 0x0148             # a3 = 00000148
    sw      s0, 0x001C($sp)
    mflo    t0
    addu    t1, s2, t0
    addiu   t2, t1, 0x0148             # t2 = 00000148
    jal     func_80AE8AA8
    sw      t2, 0x0010($sp)
    jal     func_800AA724
    nop
    sll     s0, s1, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000C
    bne     $at, $zero, lbl_80AE9630
    nop
    jal     func_80AE906C
    or      a0, s2, $zero              # a0 = 00000000
    sb      $zero, 0x16F5(s2)          # 000016F5
    or      a0, s6, $zero              # a0 = 00000000
lbl_80AE9748:
    jal     func_80AE934C
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    ldc1    $f30, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    lw      s5, 0x006C($sp)
    lw      s6, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8

.section .data

var_80AE9790: .word 0x016F0900, 0x00000030, 0x00010000, 0x000016F8
.word func_80AE8820
.word func_80AE883C
.word func_80AE9290
.word func_80AE9464
var_80AE97B0: .word \
0x00000000, 0x00000001, 0x00010001, 0x00010001, \
0x00000000
var_80AE97C4: .word \
0x00000000, 0x00000000, 0x00010001, 0x00020002, \
0x00020001, 0x00010000, 0x00000000, 0x00000000
var_80AE97E4: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80AE97F4: .word var_80AE97B0
.word 0x000A0000
.word var_80AE97B0
.word 0x000A0000
.word var_80AE97C4
.word 0x000F0000
.word var_80AE97E4
.word 0x00070000
var_80AE9814: .word \
0x00000000, 0x3F800000, 0x3F000000, 0x3E800000, \
0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000
var_80AE9860: .word \
0x00000000, 0x3F800000, 0x3F666666, 0x3F4CCCCD, \
0x3F333333, 0x3F19999A, 0x3F000000, 0x3ECCCCCD, \
0x3E99999A, 0x3E4CCCCD, 0x3DCCCCCD, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000
var_80AE98A8: .word \
0x00000000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F8CCCCD, 0x3F99999A, 0x3FA66666, \
0x3FB33333, 0x3FC00000, 0x3FCCCCCD, 0x3FD9999A, \
0x3FE66666
var_80AE98DC: .word \
0x000B0017, 0x0023002F, 0x003B0047, 0x0053005F, \
0x006B0077, 0x0083008F, 0x000A0016, 0x0022002E, \
0x003A0046, 0x0052005E, 0x006A0076, 0x0082008E, \
0x00090015, 0x0021002D, 0x00390045, 0x0051005D, \
0x00690075, 0x0081008D, 0x00080014, 0x0020002C, \
0x00380044, 0x0050005C, 0x00680074, 0x0080008C, \
0x00070013, 0x001F002B, 0x00370043, 0x004F005B, \
0x00670073, 0x007F008B, 0x00060012, 0x001E002A, \
0x00360042, 0x004E005A, 0x00660072, 0x007E008A, \
0x00050011, 0x001D0029, 0x00350041, 0x004D0059, \
0x00650071, 0x007D0089, 0x00040010, 0x001C0028, \
0x00340040, 0x004C0058, 0x00640070, 0x007C0088, \
0x0003000F, 0x001B0027, 0x0033003F, 0x004B0057, \
0x0063006F, 0x007B0087, 0x0002000E, 0x001A0026, \
0x0032003E, 0x004A0056, 0x0062006E, 0x007A0086, \
0x0001000D, 0x00190025, 0x0031003D, 0x00490055, \
0x0061006D, 0x00790085, 0x0000000C, 0x00180024, \
0x0030003C, 0x00480054, 0x0060006C, 0x00780084, \
0x00000000, 0x00000000, 0x00000000
var_80AE9A08: .word \
0x7001A801, 0x78014801, 0x48017001, 0x90018801, \
0x88017801, 0x50015001, 0x58016001, 0x68018801, \
0x70015801, 0x48014001, 0x38014001, 0x60018001, \
0x9001A801, 0x88015001, 0x40014001, 0x48015801, \
0x7001A801, 0x78015801, 0x50016001, 0x90019001, \
0x90018001, 0x58015801, 0x58015801, 0x60019001, \
0x78016801, 0x48014001, 0x40014001, 0x68018801, \
0x9801A001, 0x98016001, 0x40014001, 0x48015801, \
0x7001B001, 0x98017001, 0x50016001, 0x98019001, \
0x90018001, 0x58015801, 0x58016001, 0x68018801, \
0x80017001, 0x50014801, 0x40014801, 0x58018001, \
0x9801A001, 0xA8016801, 0x40014001, 0x48016001, \
0x6801A801, 0xA0017001, 0x48016001, 0x90018801, \
0x88017801, 0x60015801, 0x58016801, 0x78018001, \
0x80017801, 0x60015001, 0x40014801, 0x58016001, \
0x80019801, 0xA0017801, 0x48014801, 0x48016001, \
0x7001A801, 0x98018801, 0x50015801, 0x78018801, \
0x88017801, 0x60015801, 0x60016801, 0x80018001, \
0x80017801, 0x68015001, 0x48015001, 0x58016001, \
0x80019801, 0x98018001, 0x50014801, 0x50016001, \
0x7001A001, 0x90018801, 0x60016001, 0x78018801, \
0x88017801, 0x60015801, 0x60016801, 0x78018001, \
0x88018001, 0x68015801, 0x48015001, 0x58016801, \
0x68018801, 0x98019001, 0x50015001, 0x50016001, \
0x70019001, 0x80017801, 0x68016001, 0x78018801, \
0x80017001, 0x60016001, 0x60017801, 0x80018001, \
0x88018801, 0x78016001, 0x48015001, 0x60017001, \
0x70018801, 0x98019801, 0x58015001, 0x58016801, \
0x70018001, 0x78016801, 0x68016801, 0x78018801, \
0x80016801, 0x60016001, 0x60017801, 0x80017801, \
0x88018801, 0x80016801, 0x50015801, 0x68017001, \
0x70018801, 0x90019801, 0x58015001, 0x58017001, \
0x70017801, 0xBB417001, 0x70016801, 0x80018001, \
0x78016801, 0x60016801, 0x68017001, 0x78017801, \
0x80018801, 0x88017001, 0x50015801, 0x68017001, \
0x70018801, 0x90019801, 0x60015001, 0x60017801, \
0x70017001, 0xFE43BB41, 0x78017801, 0x80017801, \
0x70017001, 0x60016001, 0x68017001, 0x78017801, \
0x78018001, 0x90017001, 0x58016001, 0x68017001, \
0x70018801, 0x90019801, 0x60015001, 0x60017001, \
0x70017001, 0xFE43FE43, 0x70018801, 0x80017801, \
0x70017001, 0x60016001, 0x68017001, 0x78017801, \
0x78018001, 0x90017801, 0x60016001, 0x68017001, \
0x70018801, 0x90019801, 0x68015801, 0x68017001, \
0x70017001, 0xFE437001, 0x70018801, 0x80017001, \
0x70017001, 0x68016001, 0x68017001, 0x70017801, \
0x78018001, 0x90017801, 0x60016801, 0x68017001, \
0x70018801, 0x88019001, 0x68015801, 0x68017001, \
0x70017001, 0x70017001, 0x78018001, 0x78017001, \
0x70016801, 0x68016001, 0x68017001, 0x70017801, \
0x78018801, 0x90017801, 0x60016801, 0x68017001, \
0x70017801, 0x88019001, 0x68015801, 0x68017001, \
0x70017001, 0xFFE17001, 0x78017801, 0x78017001, \
0x70016801, 0x68016801, 0x68017001, 0x70017001, \
0x78018801, 0x88017801, 0x60016801, 0x68017001, \
0x70017801, 0x80019001, 0x68015801, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x68017001, 0x70017001, 0x70017801, \
0x80018801, 0x88017801, 0x68016801, 0x68017001, \
0x78017001, 0x80019001, 0x68016001, 0x70017001, \
0x70017001, 0xFFF77001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017801, \
0x80018801, 0x80017801, 0x68016801, 0x70017001, \
0x78017001, 0x80018801, 0x68016001, 0x70017001, \
0x70017001, 0xFFDB7001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017801, \
0x80018001, 0x80017001, 0x68017001, 0x70017801, \
0x78017001, 0x80018801, 0x68016801, 0x70017001, \
0x70017001, 0x81037001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017801, \
0x80018001, 0x78017001, 0x68017001, 0x78018001, \
0x80017001, 0x80018001, 0x68016801, 0x70017001, \
0x70017001, 0xFF8D7001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x80018001, 0x80017001, 0x70017001, 0x78018001, \
0x80017001, 0x78018001, 0x68016801, 0x70017001, \
0x70017001, 0xFDC17001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x80018001, 0x78017001, 0x70017001, 0x78018001, \
0x80017001, 0x78017801, 0x68017001, 0x70017001, \
0x70017001, 0xFDC18901, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x80018001, 0x78017001, 0x70017001, 0x78017801, \
0x80017001, 0x78017801, 0x68017001, 0x70017001, \
0x70017001, 0xFDC1A201, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x78017801, 0x70017001, 0x70017001, 0x78017801, \
0x80017001, 0x78017801, 0x68017001, 0x70017001, \
0x70017001, 0xFDC1DC41, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x78017801, 0x78017801, 0x70017001, \
0x70017001, 0x78017801, 0x68017001, 0x70017001, \
0x70017001, 0xDC41FF8B, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x78017801, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xA201FE85, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017801, 0x78017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017841, 0x8081FE43, 0xCB817001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x78017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xBAC1FDC1, 0xFF8B7001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xFF8B7001, 0xFDC17001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xFE85FDC1, 0xBAC17001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xFE437001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x7001DD89, 0xFF8BFFFF, \
0x70017001, 0xFF8BF541, 0x89417001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x7001BBC5, 0xFF8BEDC5, 0xDD03AB01, \
0x70017001, 0xE4C17001, 0xFF8B7001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xBBC5FF8B, 0xEE05DD01, 0xE541E541, \
0x70017001, 0x8941E4C1, 0xF6457001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x7001BBC5, 0xFF8BEEC5, 0xCC81C441, 0xA2837001, \
0x70017001, 0x70017001, 0xED837001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x7001FF8B, 0xFE01BB01, 0x70017001, 0x70017001, \
0x70017001, 0x7881BB81, 0xC4017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0xBBC5FE01, 0xBB017001, 0x70017001, 0x70017001, \
0x70017001, 0x9A817001, 0xFF8B7001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0xFF8BFE01, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xFF8B8A01, 0x78817001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0xFE01DC81, 0x70017001, 0x70017001, 0x7001FFFF, \
0x70017001, 0xCC017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x700180C1, \
0xDD89FF8B, 0xFFFFDD89, 0x70017001, 0x70017001, \
0xFE01C341, 0x70017001, 0xFFFF7001, 0x7001FF8B, \
0x70017001, 0xCC01FF8B, 0x79017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x7001BB01, \
0xFE01FE01, 0xFE01FE01, 0xFF8B7001, 0x70017001, \
0xFE0199C1, 0x7001FF8B, 0xFE01FF8B, 0x7001FF8B, \
0x70017001, 0xBB817001, 0x82017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x9181FE01, \
0xB381A281, 0xAB01CC81, 0xFE01FFFF, 0x70017001, \
0xFF8BBBC5, 0x70017001, 0xFE017001, 0x7001F645, \
0x70017001, 0x78819241, 0xFF8B7001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xCBC1ED41, \
0xB2817001, 0x70017001, 0xDC81FE01, 0xBB017001, \
0xBBC5E5C9, 0x70017001, 0x70017001, 0xFFFFF5C3, \
0x70017001, 0x70017001, 0xDCC17001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xFE01DC81, \
0x7001FF8B, 0xFFFF91C3, 0x7001EE07, 0xFFFF7001, \
0x7001F709, 0x7001BBC5, 0xFF8BFF8B, 0xFF8BF5C3, \
0x70017001, 0x8901E4C1, 0xFF8B7001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xBB01FE01, \
0xDC817001, 0xFE01FF8B, 0x7001CC03, 0xFF8BBBC5, \
0x7001BB01, 0x70017001, 0x70017001, 0xED41FEC7, \
0x70017001, 0xD4817001, 0xD4817001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x7001DC81, \
0xFE01FE01, 0xCC81BBC1, 0x70017001, 0xDD89FF8B, \
0xBB017001, 0xFE017001, 0xFFFF7001, 0x7001FF09, \
0x70017001, 0xCC41FF8B, 0x89417001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0xC3C1BBC1, 0xC3C17001, 0x70017001, 0x7001DD47, \
0xFE017001, 0x7001FE01, 0xFE01FF8B, 0x7001FF8B, \
0x70017001, 0x7001DC81, 0x70017001, 0x7001FF8B, \
0xBBC57001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0xBB01FE01, 0x70017001, 0xFE017001, 0x7001FF8B, \
0x70017001, 0xBB01F5C1, 0x7001DCC1, 0x700191C3, \
0xFFFFBB41, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x7001BB01, 0xFE017001, 0x7001FFED, 0x7001FFFF, \
0x70017001, 0xE541BB01, 0xDCC1FF8B, 0xBB417001, \
0xFF8BFE43, 0x70017001, 0xBBC5FF8B, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xBB01FF8B, \
0xFFFFBBC5, 0x70017001, 0xFE017001, 0x7001FF8B, \
0x70017001, 0xFF8B7001, 0xFFFF7001, 0xFF8B7001, \
0xEDC1BB41, 0x7001FFFF, 0xFF8BBBC5, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xFE01FE01, \
0xBBC5FFFF, 0x7001BBC5, 0x70017001, 0xFE01FFD3, \
0x70017001, 0xFEC57001, 0xFE43BB41, 0x7001EEC5, \
0xE4C17001, 0xBB41E4C1, 0xCC017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xFE01BB01, \
0x7001FF8B, 0x7001FF8B, 0x7001FE01, 0xFFD3FFED, \
0x70017001, 0xFF8BFDC1, 0x7001FE43, 0xFE437001, \
0x700191C3, 0xFF8BBB41, 0x70017001, 0x70017001, \
0x70017001, 0x70017001, 0x70017001, 0xBB01FE01, \
0x7001C481, 0xA241FF8B, 0x70017001, 0xBC09BDC3, \
0x70017001, 0xBBC5FF8B, 0xFFFFBB41, 0x70017001, \
0x91C3FF8B, 0x91C37001, 0xBB41FFFF, 0xBB417001, \
0x70017001, 0x70017001, 0x70017001, 0x7001DC81, \
0x7001BB01, 0xDC81FE01, 0xFFD3BC09, 0xFE017001, \
0x70017001, 0x7001BBC5, 0xFF8B7001, 0xFFFFFFFF, \
0xFF8BBBC5, 0x7001FF8B, 0xEDC1EEC5, 0xEE47B303, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0xFE017001, 0xFE01FFD3, 0x7001FFFF, \
0x70017001, 0xFFDD7001, 0xFF8B7001, 0xFF8BFF8B, \
0xFD817001, 0x7001FE43, 0x70017001, 0x9181FE43, \
0x70017001, 0x70017001, 0x70017001, 0x70017001, \
0x70017001, 0x7001BBC1, 0x7001FE01, 0xBBC1FFD3, \
0x70017001, 0xFD817001, 0xFD817001, 0xFD81CC01, \
0xB3417001, 0xFFFF7001, 0xFF8BBB41, 0x70017001, \
0x70017001, 0x70017001, 0x7001EDC3, 0xFFFF7001, \
0x70017001, 0x70017001, 0x7001BBC1, 0xDD01FFD3, \
0x70017001, 0x7001BBC5, 0xCC01FFFF, 0x70017001, \
0x7001BB41, 0xFE43FF8B, 0x7001FD81, 0x7001DD45, \
0xFF8BD505, 0x7001FE83, 0x70017001, 0x70017001, \
0xBB817001, 0xA241BBC1, 0x82017001, 0x7001BDDD, \
0x70017001, 0xBBC5FFFF, 0x7001E4C1, 0xB341D601, \
0xEF4DFFDD, 0x7001FD81, 0xCC017001, 0xFF8BFE01, \
0xF5C3FEC9, 0xFF8B7001, 0xBB81EDC3, 0xFE83BB81, \
0x7001FE83, 0xE5438A01, 0x7001BC17, 0xFFEDDC81, \
0x70017001, 0xFF8BFD81, 0xFD81BBC5, 0x70017001, \
0xBC09FD81, 0xFF8B7001, 0x7001FF8B, 0xFF8BBBC5, \
0x7001AA41, 0xDD41CC01, 0x70017001, 0x70017001, \
0xFE83BBC1, 0x8A018A01, 0xED41ED41, 0xFFD37001, \
0x70017001, 0xB341CC01, 0xA3017001, 0xFD81FFD3, \
0x7001BBC5, 0xE4C1CC01, 0xE4C1F605, 0xBBC57001, \
0x70017001, 0x7001A283, 0xC3C3EE89, 0xFF8BFE83, \
0xCC419241, 0x70017001, 0x8201CC01, 0xDC81FFD3, \
0x70015001, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50017001, 0x70017001, \
0x70017001, 0x70017001, 0x50015001, 0x50015001, \
0x50015001, 0x70017001, 0x50015001, 0x5001ED41, \
0x80018001, 0x80018001, 0x80018001, 0x80018001, \
0x80018001, 0x80018001, 0x80018001, 0x80018001, \
0x80018001, 0x80018001, 0x80018001, 0x80018001, \
0x80018001, 0x80018001, 0x80018001, 0x80018001, \
0x20012001, 0x18011801, 0x18011801, 0x18011801, \
0x18011801, 0x18011801, 0x18011801, 0x18011801, \
0x18011801, 0x18011801, 0x18011801, 0x18011801, \
0x18011801, 0x18011801, 0x18011801, 0x18011801, \
0xFC8181C1, 0x9A414841, 0xAAC158C1, 0xBB019241, \
0xFDC181C1, 0xCB817141, 0xFC819241, 0xC34189C1, \
0xFC8189C1, 0xDBC189C1, 0xFC817181, 0xDBC19241, \
0xFE019A41, 0xC3419A41, 0xFC81AAC1, 0xFC816941, \
0xFFC1E401, 0xFFEFE401, 0xFEC1E401, 0xFFC1E401, \
0xFFC9E401, 0xFFEFE401, 0xFFEFE401, 0xFDC1CB81, \
0xFF87E401, 0xFE41E401, 0xFF87E401, 0xFE41E401, \
0xFFEFE401, 0xFF87E401, 0xFE41E401, 0xFFEFE401
var_80AEAA08: .word \
0x58019001, 0x60014001, 0x30014801, 0x78017001, \
0x70016001, 0x38013801, 0x40014001, 0x40017001, \
0x60015001, 0x28012001, 0x20012801, 0x48017001, \
0x80018001, 0x80014001, 0x20012001, 0x28014001, \
0x48019001, 0x80015801, 0x30014001, 0x70017001, \
0x68015801, 0x40014001, 0x40014801, 0x60016001, \
0x60015801, 0x40013001, 0x28013001, 0x38014801, \
0x68018001, 0x80015801, 0x30012801, 0x30014001, \
0x50018001, 0x70016801, 0x40014001, 0x58016801, \
0x68015801, 0x40013801, 0x48014801, 0x60016801, \
0x68016001, 0x50013801, 0x28013001, 0x40014801, \
0x50016801, 0x80017001, 0x38013001, 0x38014801, \
0x50017001, 0x70015801, 0x48014801, 0x60016801, \
0x60015001, 0x40014001, 0x48015801, 0x60016001, \
0x68016801, 0x68014801, 0x30014001, 0x48015801, \
0x50016801, 0x78017801, 0x40013001, 0x40015001, \
0x50016801, 0x68015801, 0x58015801, 0x60016001, \
0x58015001, 0x48014801, 0x48015801, 0x58015801, \
0x60016801, 0x70015801, 0x38014001, 0x48015001, \
0x58017001, 0x78017801, 0x48013801, 0x48015801, \
0x50016001, 0x60015801, 0x50016801, 0x60015801, \
0x50015001, 0x48014801, 0x50015801, 0x58015801, \
0x60016801, 0x70015801, 0x48014801, 0x50015001, \
0x58016801, 0x68017801, 0x48013801, 0x50015001, \
0x50015801, 0x60015001, 0x58016001, 0x58015801, \
0x50015001, 0x48014801, 0x50015001, 0x50015801, \
0x60016801, 0x70015801, 0x48014801, 0x50015801, \
0x58015801, 0x68017801, 0x48014001, 0x50015001, \
0x50015801, 0x58015801, 0x58015801, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x68016801, 0x68015801, 0x48015001, 0x50015001, \
0x50015801, 0x60017001, 0x48014801, 0x50015001, \
0x00004801, 0x58015801, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x68016801, 0x60015801, 0x50015001, 0x58015001, \
0x50015001, 0x60016001, 0x48014801, 0x50015001, \
0x00005001, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x60016801, 0x60015801, 0x50015801, 0x58015001, \
0x50015001, 0x58016001, 0x48015001, 0x50015001, \
0x00003001, 0x48015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x60016001, 0x58015801, 0x50015801, 0x58015001, \
0x50015001, 0x58015801, 0x50015001, 0x50015001, \
0x00000000, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x58015801, \
0x58015801, 0x58015001, 0x50015801, 0x50015001, \
0x50015001, 0x58015801, 0x50015001, 0x50015001, \
0x00000000, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x58015801, 0x58015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015001, \
0x20001801, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015801, \
0x58015001, 0x50015801, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50014801, \
0x40004001, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x58015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015001, \
0x38004801, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50014801, \
0x20004801, 0x50015001, 0x50015001, 0x50014801, \
0x20013001, 0x30005001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x50013001, \
0x48015001, 0x50015001, 0x50015001, 0x50015001, \
0x28002800, 0x50015001, 0x50015001, 0x50014001, \
0x50010000, 0x18004800, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x38011000, \
0x48015001, 0x50015001, 0x50015001, 0x50014001, \
0x00000000, 0x00000000, 0x50015001, 0x50015001, \
0x50013801, 0x38002801, 0x48015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x18001000, \
0x48015001, 0x50015001, 0x50015001, 0x50013801, \
0x00000000, 0x18003801, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x48013801, 0x18005001, \
0x50015001, 0x50015001, 0x50014001, 0x00000000, \
0x10004001, 0x50015001, 0x50015001, 0x50015001, \
0x18012800, 0x38014801, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x48013801, 0x30001801, \
0x50015001, 0x50015001, 0x50014000, 0x00000000, \
0x00000800, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x40010800, \
0x00005001, 0x50015001, 0x40013000, 0x18000000, \
0x50015001, 0x50015001, 0x50014001, 0x00000000, \
0x00000000, 0x50015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x40000000, \
0x00005001, 0x50015001, 0x38000000, 0x00003000, \
0x48015001, 0x50015001, 0x50012801, 0x00000000, \
0x00002001, 0x28015001, 0x50015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x38010000, \
0x00005001, 0x50015001, 0x40010800, 0x00003001, \
0x40015001, 0x50015001, 0x50014001, 0x40010000, \
0x28014001, 0x38014801, 0x48015001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x28010000, \
0x00000000, 0x50015001, 0x38012000, 0x00000000, \
0x38015001, 0x50015001, 0x48014000, 0x20014801, \
0x38013001, 0x18012000, 0x10013801, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x10000000, \
0x00000000, 0x48014801, 0x28011800, 0x00000000, \
0x20015001, 0x50015001, 0x38011800, 0x18003001, \
0x40014001, 0x18010000, 0x00005001, 0x50015001, \
0x50015001, 0x50015001, 0x50015001, 0x00000000, \
0x00000000, 0x30014001, 0x18000000, 0x00000000, \
0x00003801, 0x50015001, 0x00000000, 0x00003801, \
0x40014801, 0x00000000, 0x00000000, 0x50015001, \
0x50014801, 0x00000000, 0x50010000, 0x00000000, \
0x00000000, 0x18002801, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00003801, \
0x48015001, 0x00000000, 0x00000000, 0x38015001, \
0x50011001, 0x00000000, 0x50010000, 0x00000000, \
0x00005000, 0x00000800, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00002000, \
0x48015001, 0x00000000, 0x00000000, 0x30014801, \
0x50010000, 0x00000000, 0x00000000, 0x00000000, \
0x50000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00005000, 0x00000000, \
0x30013800, 0x00000000, 0x00000000, 0x20003801, \
0x50010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001801, \
0x08000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80AEB208: .word \
0x03E80000, 0x00000000, 0x00BA0878, 0x007800FF, \
0x03E80000, 0x03E80000, 0x00BA0788, 0x007800FF, \
0x03E80000, 0x07D00000, 0x00BA0697, 0x007800FF, \
0x03E80000, 0x0BB80000, 0x00BA05A6, 0x007800FF, \
0x03E80000, 0x0FA00000, 0x00BA04B5, 0x007800FF, \
0x03E80000, 0x13880000, 0x00BA03C4, 0x007800FF, \
0x03E80000, 0x17700000, 0x00BA02D3, 0x007800FF, \
0x03E80000, 0x1B580000, 0x00BA01E2, 0x007800FF, \
0x03E80000, 0x1F400000, 0x00BA00F1, 0x007800FF, \
0x03E80000, 0x23280000, 0x00BA0000, 0x007800FF, \
0x03E80000, 0x27100000, 0x00BAFF0F, 0x007800FF, \
0x03E80000, 0x2AF80000, 0x00BAFE1E, 0x007800FF, \
0x00000000, 0x00000000, 0x00000878, 0x007800FF, \
0x00000000, 0x03E80000, 0x00000788, 0x007800FF, \
0x00000000, 0x07D00000, 0x00000697, 0x007800FF, \
0x00000000, 0x0BB80000, 0x000005A6, 0x007800FF, \
0x00000000, 0x0FA00000, 0x000004B5, 0x007800FF, \
0x00000000, 0x13880000, 0x000003C4, 0x007800FF, \
0x00000000, 0x17700000, 0x000002D3, 0x007800FF, \
0x00000000, 0x1B580000, 0x000001E2, 0x007800FF, \
0x00000000, 0x1F400000, 0x000000F1, 0x007800FF, \
0x00000000, 0x23280000, 0x00000000, 0x007800FF, \
0x00000000, 0x27100000, 0x0000FF0F, 0x007800FF, \
0x00000000, 0x2AF80000, 0x0000FE1E, 0x007800FF, \
0x07D00000, 0x00000000, 0x01740878, 0x007800FF, \
0x07D00000, 0x03E80000, 0x01740788, 0x007800FF, \
0x07D00000, 0x07D00000, 0x01740697, 0x007800FF, \
0x07D00000, 0x0BB80000, 0x017405A6, 0x007800FF, \
0x07D00000, 0x0FA00000, 0x017404B5, 0x007800FF, \
0x07D00000, 0x13880000, 0x017403C4, 0x007800FF, \
0x07D00000, 0x17700000, 0x017402D3, 0x007800FF, \
0x07D00000, 0x1B580000, 0x017401E2, 0x007800FF, \
0x07D00000, 0x1F400000, 0x017400F1, 0x007800FF, \
0x07D00000, 0x23280000, 0x01740000, 0x007800FF, \
0x07D00000, 0x27100000, 0x0174FF0F, 0x007800FF, \
0x07D00000, 0x2AF80000, 0x0174FE1E, 0x007800FF, \
0x0BB80000, 0x00000000, 0x022F0878, 0x007800FF, \
0x0BB80000, 0x03E80000, 0x022F0788, 0x007800FF, \
0x0BB80000, 0x07D00000, 0x022F0697, 0x007800FF, \
0x0BB80000, 0x0BB80000, 0x022F05A6, 0x007800FF, \
0x0BB80000, 0x0FA00000, 0x022F04B5, 0x007800FF, \
0x0BB80000, 0x13880000, 0x022F03C4, 0x007800FF, \
0x0BB80000, 0x17700000, 0x022F02D3, 0x007800FF, \
0x0BB80000, 0x1B580000, 0x022F01E2, 0x007800FF, \
0x0BB80000, 0x1F400000, 0x022F00F1, 0x007800FF, \
0x0BB80000, 0x23280000, 0x022F0000, 0x007800FF, \
0x0BB80000, 0x27100000, 0x022FFF0F, 0x007800FF, \
0x0BB80000, 0x2AF80000, 0x022FFE1E, 0x007800FF, \
0x0FA00000, 0x00000000, 0x02E90878, 0x007800FF, \
0x0FA00000, 0x03E80000, 0x02E90788, 0x007800FF, \
0x0FA00000, 0x07D00000, 0x02E90697, 0x007800FF, \
0x0FA00000, 0x0BB80000, 0x02E905A6, 0x007800FF, \
0x0FA00000, 0x0FA00000, 0x02E904B5, 0x007800FF, \
0x0FA00000, 0x13880000, 0x02E903C4, 0x007800FF, \
0x0FA00000, 0x17700000, 0x02E902D3, 0x007800FF, \
0x0FA00000, 0x1B580000, 0x02E901E2, 0x007800FF, \
0x0FA00000, 0x1F400000, 0x02E900F1, 0x007800FF, \
0x0FA00000, 0x23280000, 0x02E90000, 0x007800FF, \
0x0FA00000, 0x27100000, 0x02E9FF0F, 0x007800FF, \
0x0FA00000, 0x2AF80000, 0x02E9FE1E, 0x007800FF, \
0x13880000, 0x00000000, 0x03A30878, 0x007800FF, \
0x13880000, 0x03E80000, 0x03A30788, 0x007800FF, \
0x13880000, 0x07D00000, 0x03A30697, 0x007800FF, \
0x13880000, 0x0BB80000, 0x03A305A6, 0x007800FF, \
0x13880000, 0x0FA00000, 0x03A304B5, 0x007800FF, \
0x13880000, 0x13880000, 0x03A303C4, 0x007800FF, \
0x13880000, 0x17700000, 0x03A302D3, 0x007800FF, \
0x13880000, 0x1B580000, 0x03A301E2, 0x007800FF, \
0x13880000, 0x1F400000, 0x03A300F1, 0x007800FF, \
0x13880000, 0x23280000, 0x03A30000, 0x007800FF, \
0x13880000, 0x27100000, 0x03A3FF0F, 0x007800FF, \
0x13880000, 0x2AF80000, 0x03A3FE1E, 0x007800FF, \
0x17700000, 0x00000000, 0x045D0878, 0x007800FF, \
0x17700000, 0x03E80000, 0x045D0788, 0x007800FF, \
0x17700000, 0x07D00000, 0x045D0697, 0x007800FF, \
0x17700000, 0x0BB80000, 0x045D05A6, 0x007800FF, \
0x17700000, 0x0FA00000, 0x045D04B5, 0x007800FF, \
0x17700000, 0x13880000, 0x045D03C4, 0x007800FF, \
0x17700000, 0x17700000, 0x045D02D3, 0x007800FF, \
0x17700000, 0x1B580000, 0x045D01E2, 0x007800FF, \
0x17700000, 0x1F400000, 0x045D00F1, 0x007800FF, \
0x17700000, 0x23280000, 0x045D0000, 0x007800FF, \
0x17700000, 0x27100000, 0x045DFF0F, 0x007800FF, \
0x17700000, 0x2AF80000, 0x045DFE1E, 0x007800FF, \
0x1B580000, 0x00000000, 0x05170878, 0x007800FF, \
0x1B580000, 0x03E80000, 0x05170788, 0x007800FF, \
0x1B580000, 0x07D00000, 0x05170697, 0x007800FF, \
0x1B580000, 0x0BB80000, 0x051705A6, 0x007800FF, \
0x1B580000, 0x0FA00000, 0x051704B5, 0x007800FF, \
0x1B580000, 0x13880000, 0x051703C4, 0x007800FF, \
0x1B580000, 0x17700000, 0x051702D3, 0x007800FF, \
0x1B580000, 0x1B580000, 0x051701E2, 0x007800FF, \
0x1B580000, 0x1F400000, 0x051700F1, 0x007800FF, \
0x1B580000, 0x23280000, 0x05170000, 0x007800FF, \
0x1B580000, 0x27100000, 0x0517FF0F, 0x007800FF, \
0x1B580000, 0x2AF80000, 0x0517FE1E, 0x007800FF, \
0x1F400000, 0x00000000, 0x05D10878, 0x007800FF, \
0x1F400000, 0x03E80000, 0x05D10788, 0x007800FF, \
0x1F400000, 0x07D00000, 0x05D10697, 0x007800FF, \
0x1F400000, 0x0BB80000, 0x05D105A6, 0x007800FF, \
0x1F400000, 0x0FA00000, 0x05D104B5, 0x007800FF, \
0x1F400000, 0x13880000, 0x05D103C4, 0x007800FF, \
0x1F400000, 0x17700000, 0x05D102D3, 0x007800FF, \
0x1F400000, 0x1B580000, 0x05D101E2, 0x007800FF, \
0x1F400000, 0x1F400000, 0x05D100F1, 0x007800FF, \
0x1F400000, 0x23280000, 0x05D10000, 0x007800FF, \
0x1F400000, 0x27100000, 0x05D1FF0F, 0x007800FF, \
0x1F400000, 0x2AF80000, 0x05D1FE1E, 0x007800FF, \
0x23280000, 0x00000000, 0x068C0878, 0x007800FF, \
0x23280000, 0x03E80000, 0x068C0788, 0x007800FF, \
0x23280000, 0x07D00000, 0x068C0697, 0x007800FF, \
0x23280000, 0x0BB80000, 0x068C05A6, 0x007800FF, \
0x23280000, 0x0FA00000, 0x068C04B5, 0x007800FF, \
0x23280000, 0x13880000, 0x068C03C4, 0x007800FF, \
0x23280000, 0x17700000, 0x068C02D3, 0x007800FF, \
0x23280000, 0x1B580000, 0x068C01E2, 0x007800FF, \
0x23280000, 0x1F400000, 0x068C00F1, 0x007800FF, \
0x23280000, 0x23280000, 0x068C0000, 0x007800FF, \
0x23280000, 0x27100000, 0x068CFF0F, 0x007800FF, \
0x23280000, 0x2AF80000, 0x068CFE1E, 0x007800FF, \
0x27100000, 0x00000000, 0x07460878, 0x007800FF, \
0x27100000, 0x03E80000, 0x07460788, 0x007800FF, \
0x27100000, 0x07D00000, 0x07460697, 0x007800FF, \
0x27100000, 0x0BB80000, 0x074605A6, 0x007800FF, \
0x27100000, 0x0FA00000, 0x074604B5, 0x007800FF, \
0x27100000, 0x13880000, 0x074603C4, 0x007800FF, \
0x27100000, 0x17700000, 0x074602D3, 0x007800FF, \
0x27100000, 0x1B580000, 0x074601E2, 0x007800FF, \
0x27100000, 0x1F400000, 0x074600F1, 0x007800FF, \
0x27100000, 0x23280000, 0x07460000, 0x007800FF, \
0x27100000, 0x27100000, 0x0746FF0F, 0x007800FF, \
0x27100000, 0x2AF80000, 0x0746FE1E, 0x007800FF, \
0x2AF80000, 0x00000000, 0x08000878, 0x007800FF, \
0x2AF80000, 0x03E80000, 0x08000788, 0x007800FF, \
0x2AF80000, 0x07D00000, 0x08000697, 0x007800FF, \
0x2AF80000, 0x0BB80000, 0x080005A6, 0x007800FF, \
0x2AF80000, 0x0FA00000, 0x080004B5, 0x007800FF, \
0x2AF80000, 0x13880000, 0x080003C4, 0x007800FF, \
0x2AF80000, 0x17700000, 0x080002D3, 0x007800FF, \
0x2AF80000, 0x1B580000, 0x080001E2, 0x007800FF, \
0x2AF80000, 0x1F400000, 0x080000F1, 0x007800FF, \
0x2AF80000, 0x23280000, 0x08000000, 0x007800FF, \
0x2AF80000, 0x27100000, 0x0800FF0F, 0x007800FF, \
0x2AF80000, 0x2AF80000, 0x0800FE1E, 0x007800FF
var_80AEBB08: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD100000
.word var_80AE9A08
.word \
0xF5100000, 0x07098150, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00098150, 0xF2000000, 0x0007C0FC, \
0xDF000000, 0x00000000, 0xE7000000, 0x00000000, \
0xE3001001, 0x00000000, 0xD7000002, 0xFFFFFFFF, \
0xFD100000
.word var_80AEAA08
.word \
0xF5100000, 0x07098150, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00098150, 0xF2000000, 0x0007C0FC, \
0xDF000000, 0x00000000
var_80AEBBB8: .word \
0xFC127E03, 0xFFFFF3F8, 0xE200001C, 0xC8113078, \
0xD9F3FBFF, 0x00000000, 0xD9FFFFFF, 0x00030000, \
0xFA000000, 0xFFFFFFFF, 0x01018030, 0x0C000000, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000180, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000240, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000300, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C0003C0, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000480, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000540, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000600, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C0006C0, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000780, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000840, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0xDF000000, 0x00000000
var_80AEC008: .word \
0x03E80000, 0x00000000, 0x00BA0878, 0x007800FF, \
0x03E80000, 0x03E80000, 0x00BA0788, 0x007800FF, \
0x03E80000, 0x07D00000, 0x00BA0697, 0x007800FF, \
0x03E80000, 0x0BB80000, 0x00BA05A6, 0x007800FF, \
0x03E80000, 0x0FA00000, 0x00BA04B5, 0x007800FF, \
0x03E80000, 0x13880000, 0x00BA03C4, 0x007800FF, \
0x03E80000, 0x17700000, 0x00BA02D3, 0x007800FF, \
0x03E80000, 0x1B580000, 0x00BA01E2, 0x007800FF, \
0x03E80000, 0x1F400000, 0x00BA00F1, 0x007800FF, \
0x03E80000, 0x23280000, 0x00BA0000, 0x007800FF, \
0x03E80000, 0x27100000, 0x00BAFF0F, 0x007800FF, \
0x03E80000, 0x2AF80000, 0x00BAFE1E, 0x007800FF, \
0x00000000, 0x00000000, 0x00000878, 0x007800FF, \
0x00000000, 0x03E80000, 0x00000788, 0x007800FF, \
0x00000000, 0x07D00000, 0x00000697, 0x007800FF, \
0x00000000, 0x0BB80000, 0x000005A6, 0x007800FF, \
0x00000000, 0x0FA00000, 0x000004B5, 0x007800FF, \
0x00000000, 0x13880000, 0x000003C4, 0x007800FF, \
0x00000000, 0x17700000, 0x000002D3, 0x007800FF, \
0x00000000, 0x1B580000, 0x000001E2, 0x007800FF, \
0x00000000, 0x1F400000, 0x000000F1, 0x007800FF, \
0x00000000, 0x23280000, 0x00000000, 0x007800FF, \
0x00000000, 0x27100000, 0x0000FF0F, 0x007800FF, \
0x00000000, 0x2AF80000, 0x0000FE1E, 0x007800FF, \
0x07D00000, 0x00000000, 0x01740878, 0x007800FF, \
0x07D00000, 0x03E80000, 0x01740788, 0x007800FF, \
0x07D00000, 0x07D00000, 0x01740697, 0x007800FF, \
0x07D00000, 0x0BB80000, 0x017405A6, 0x007800FF, \
0x07D00000, 0x0FA00000, 0x017404B5, 0x007800FF, \
0x07D00000, 0x13880000, 0x017403C4, 0x007800FF, \
0x07D00000, 0x17700000, 0x017402D3, 0x007800FF, \
0x07D00000, 0x1B580000, 0x017401E2, 0x007800FF, \
0x07D00000, 0x1F400000, 0x017400F1, 0x007800FF, \
0x07D00000, 0x23280000, 0x01740000, 0x007800FF, \
0x07D00000, 0x27100000, 0x0174FF0F, 0x007800FF, \
0x07D00000, 0x2AF80000, 0x0174FE1E, 0x007800FF, \
0x0BB80000, 0x00000000, 0x022F0878, 0x007800FF, \
0x0BB80000, 0x03E80000, 0x022F0788, 0x007800FF, \
0x0BB80000, 0x07D00000, 0x022F0697, 0x007800FF, \
0x0BB80000, 0x0BB80000, 0x022F05A6, 0x007800FF, \
0x0BB80000, 0x0FA00000, 0x022F04B5, 0x007800FF, \
0x0BB80000, 0x13880000, 0x022F03C4, 0x007800FF, \
0x0BB80000, 0x17700000, 0x022F02D3, 0x007800FF, \
0x0BB80000, 0x1B580000, 0x022F01E2, 0x007800FF, \
0x0BB80000, 0x1F400000, 0x022F00F1, 0x007800FF, \
0x0BB80000, 0x23280000, 0x022F0000, 0x007800FF, \
0x0BB80000, 0x27100000, 0x022FFF0F, 0x007800FF, \
0x0BB80000, 0x2AF80000, 0x022FFE1E, 0x007800FF, \
0x0FA00000, 0x00000000, 0x02E90878, 0x007800FF, \
0x0FA00000, 0x03E80000, 0x02E90788, 0x007800FF, \
0x0FA00000, 0x07D00000, 0x02E90697, 0x007800FF, \
0x0FA00000, 0x0BB80000, 0x02E905A6, 0x007800FF, \
0x0FA00000, 0x0FA00000, 0x02E904B5, 0x007800FF, \
0x0FA00000, 0x13880000, 0x02E903C4, 0x007800FF, \
0x0FA00000, 0x17700000, 0x02E902D3, 0x007800FF, \
0x0FA00000, 0x1B580000, 0x02E901E2, 0x007800FF, \
0x0FA00000, 0x1F400000, 0x02E900F1, 0x007800FF, \
0x0FA00000, 0x23280000, 0x02E90000, 0x007800FF, \
0x0FA00000, 0x27100000, 0x02E9FF0F, 0x007800FF, \
0x0FA00000, 0x2AF80000, 0x02E9FE1E, 0x007800FF, \
0x13880000, 0x00000000, 0x03A30878, 0x007800FF, \
0x13880000, 0x03E80000, 0x03A30788, 0x007800FF, \
0x13880000, 0x07D00000, 0x03A30697, 0x007800FF, \
0x13880000, 0x0BB80000, 0x03A305A6, 0x007800FF, \
0x13880000, 0x0FA00000, 0x03A304B5, 0x007800FF, \
0x13880000, 0x13880000, 0x03A303C4, 0x007800FF, \
0x13880000, 0x17700000, 0x03A302D3, 0x007800FF, \
0x13880000, 0x1B580000, 0x03A301E2, 0x007800FF, \
0x13880000, 0x1F400000, 0x03A300F1, 0x007800FF, \
0x13880000, 0x23280000, 0x03A30000, 0x007800FF, \
0x13880000, 0x27100000, 0x03A3FF0F, 0x007800FF, \
0x13880000, 0x2AF80000, 0x03A3FE1E, 0x007800FF, \
0x17700000, 0x00000000, 0x045D0878, 0x007800FF, \
0x17700000, 0x03E80000, 0x045D0788, 0x007800FF, \
0x17700000, 0x07D00000, 0x045D0697, 0x007800FF, \
0x17700000, 0x0BB80000, 0x045D05A6, 0x007800FF, \
0x17700000, 0x0FA00000, 0x045D04B5, 0x007800FF, \
0x17700000, 0x13880000, 0x045D03C4, 0x007800FF, \
0x17700000, 0x17700000, 0x045D02D3, 0x007800FF, \
0x17700000, 0x1B580000, 0x045D01E2, 0x007800FF, \
0x17700000, 0x1F400000, 0x045D00F1, 0x007800FF, \
0x17700000, 0x23280000, 0x045D0000, 0x007800FF, \
0x17700000, 0x27100000, 0x045DFF0F, 0x007800FF, \
0x17700000, 0x2AF80000, 0x045DFE1E, 0x007800FF, \
0x1B580000, 0x00000000, 0x05170878, 0x007800FF, \
0x1B580000, 0x03E80000, 0x05170788, 0x007800FF, \
0x1B580000, 0x07D00000, 0x05170697, 0x007800FF, \
0x1B580000, 0x0BB80000, 0x051705A6, 0x007800FF, \
0x1B580000, 0x0FA00000, 0x051704B5, 0x007800FF, \
0x1B580000, 0x13880000, 0x051703C4, 0x007800FF, \
0x1B580000, 0x17700000, 0x051702D3, 0x007800FF, \
0x1B580000, 0x1B580000, 0x051701E2, 0x007800FF, \
0x1B580000, 0x1F400000, 0x051700F1, 0x007800FF, \
0x1B580000, 0x23280000, 0x05170000, 0x007800FF, \
0x1B580000, 0x27100000, 0x0517FF0F, 0x007800FF, \
0x1B580000, 0x2AF80000, 0x0517FE1E, 0x007800FF, \
0x1F400000, 0x00000000, 0x05D10878, 0x007800FF, \
0x1F400000, 0x03E80000, 0x05D10788, 0x007800FF, \
0x1F400000, 0x07D00000, 0x05D10697, 0x007800FF, \
0x1F400000, 0x0BB80000, 0x05D105A6, 0x007800FF, \
0x1F400000, 0x0FA00000, 0x05D104B5, 0x007800FF, \
0x1F400000, 0x13880000, 0x05D103C4, 0x007800FF, \
0x1F400000, 0x17700000, 0x05D102D3, 0x007800FF, \
0x1F400000, 0x1B580000, 0x05D101E2, 0x007800FF, \
0x1F400000, 0x1F400000, 0x05D100F1, 0x007800FF, \
0x1F400000, 0x23280000, 0x05D10000, 0x007800FF, \
0x1F400000, 0x27100000, 0x05D1FF0F, 0x007800FF, \
0x1F400000, 0x2AF80000, 0x05D1FE1E, 0x007800FF, \
0x23280000, 0x00000000, 0x068C0878, 0x007800FF, \
0x23280000, 0x03E80000, 0x068C0788, 0x007800FF, \
0x23280000, 0x07D00000, 0x068C0697, 0x007800FF, \
0x23280000, 0x0BB80000, 0x068C05A6, 0x007800FF, \
0x23280000, 0x0FA00000, 0x068C04B5, 0x007800FF, \
0x23280000, 0x13880000, 0x068C03C4, 0x007800FF, \
0x23280000, 0x17700000, 0x068C02D3, 0x007800FF, \
0x23280000, 0x1B580000, 0x068C01E2, 0x007800FF, \
0x23280000, 0x1F400000, 0x068C00F1, 0x007800FF, \
0x23280000, 0x23280000, 0x068C0000, 0x007800FF, \
0x23280000, 0x27100000, 0x068CFF0F, 0x007800FF, \
0x23280000, 0x2AF80000, 0x068CFE1E, 0x007800FF, \
0x27100000, 0x00000000, 0x07460878, 0x007800FF, \
0x27100000, 0x03E80000, 0x07460788, 0x007800FF, \
0x27100000, 0x07D00000, 0x07460697, 0x007800FF, \
0x27100000, 0x0BB80000, 0x074605A6, 0x007800FF, \
0x27100000, 0x0FA00000, 0x074604B5, 0x007800FF, \
0x27100000, 0x13880000, 0x074603C4, 0x007800FF, \
0x27100000, 0x17700000, 0x074602D3, 0x007800FF, \
0x27100000, 0x1B580000, 0x074601E2, 0x007800FF, \
0x27100000, 0x1F400000, 0x074600F1, 0x007800FF, \
0x27100000, 0x23280000, 0x07460000, 0x007800FF, \
0x27100000, 0x27100000, 0x0746FF0F, 0x007800FF, \
0x27100000, 0x2AF80000, 0x0746FE1E, 0x007800FF, \
0x2AF80000, 0x00000000, 0x08000878, 0x007800FF, \
0x2AF80000, 0x03E80000, 0x08000788, 0x007800FF, \
0x2AF80000, 0x07D00000, 0x08000697, 0x007800FF, \
0x2AF80000, 0x0BB80000, 0x080005A6, 0x007800FF, \
0x2AF80000, 0x0FA00000, 0x080004B5, 0x007800FF, \
0x2AF80000, 0x13880000, 0x080003C4, 0x007800FF, \
0x2AF80000, 0x17700000, 0x080002D3, 0x007800FF, \
0x2AF80000, 0x1B580000, 0x080001E2, 0x007800FF, \
0x2AF80000, 0x1F400000, 0x080000F1, 0x007800FF, \
0x2AF80000, 0x23280000, 0x08000000, 0x007800FF, \
0x2AF80000, 0x27100000, 0x0800FF0F, 0x007800FF, \
0x2AF80000, 0x2AF80000, 0x0800FE1E, 0x007800FF, \
0x00000000, 0x00000000

.section .rodata

var_80AEC910: .word 0x40C90FDB
var_80AEC914: .word 0x407F5C29
var_80AEC918: .word 0x413E6666
var_80AEC91C: .word 0x40490FDB
var_80AEC920: .word 0x40C90FDB
var_80AEC924: .word 0x40066666
var_80AEC928: .word 0x40490FDB
var_80AEC92C: .word 0x3FC90FDB
var_80AEC930: .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000

