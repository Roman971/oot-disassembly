.section .text
func_8096F4C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    lui     $at, 0x4220                # $at = 42200000
    bgtz    v0, lbl_8096F4E8
    sra     t6, v0, 11
    jal     func_80020EB4
    nop
    beq     $zero, $zero, lbl_8096F5E8
    lw      $ra, 0x0014($sp)
lbl_8096F4E8:
    lh      t2, 0x0034(a0)             # 00000034
    mtc1    $at, $f8                   # $f8 = 0.00
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    $at, $f16                  # $f16 = 120.00
    andi    t7, t6, 0x001F             # t7 = 00000000
    cvt.s.w $f6, $f4
    lw      t3, 0x0004(a0)             # 00000004
    sh      t7, 0x0144(a0)             # 00000144
    sra     t8, v0,  6
    andi    t0, v0, 0x003F             # t0 = 00000000
    lh      v0, 0x0144(a0)             # 00000144
    mul.s   $f10, $f6, $f8
    sh      $zero, 0x0148(a0)          # 00000148
    lh      t1, 0x0148(a0)             # 00000148
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t9, t8, 0x001F             # t9 = 00000000
    and     t4, t3, $at
    sh      t9, 0x0140(a0)             # 00000140
    add.s   $f0, $f10, $f16
    sh      t0, 0x0146(a0)             # 00000146
    sw      t4, 0x0004(a0)             # 00000004
    sh      t1, 0x0142(a0)             # 00000142
    beq     v0, $zero, lbl_8096F578
    swc1    $f0, 0x0158(a0)            # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8096F5B4
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8096F5C8
    lui     t5, %hi(func_8096FAE8)     # t5 = 80970000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_8096F5CC
    lh      t3, 0x00A4(a1)             # 000000A4
    beq     $zero, $zero, lbl_8096F5E8
    lw      $ra, 0x0014($sp)
lbl_8096F578:
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t5, 0x0154(a0)             # 00000154
    sh      t6, 0x0140(a0)             # 00000140
    lh      t7, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x005E         # $at = 0000005E
    lui     t0, %hi(func_8096F5F4)     # t0 = 80970000
    bne     t7, $at, lbl_8096F5AC
    addiu   t0, t0, %lo(func_8096F5F4) # t0 = 8096F5F4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sb      t8, 0x0156(a0)             # 00000156
    sh      t9, 0x0140(a0)             # 00000140
lbl_8096F5AC:
    beq     $zero, $zero, lbl_8096F5E4
    sw      t0, 0x013C(a0)             # 0000013C
lbl_8096F5B4:
    lui     t2, %hi(func_8096F950)     # t2 = 80970000
    addiu   t2, t2, %lo(func_8096F950) # t2 = 8096F950
    sh      t1, 0x0140(a0)             # 00000140
    beq     $zero, $zero, lbl_8096F5E4
    sw      t2, 0x013C(a0)             # 0000013C
lbl_8096F5C8:
    lh      t3, 0x00A4(a1)             # 000000A4
lbl_8096F5CC:
    addiu   $at, $zero, 0x0051         # $at = 00000051
    addiu   t4, $zero, 0x2710          # t4 = 00002710
    bne     t3, $at, lbl_8096F5E0
    addiu   t5, t5, %lo(func_8096FAE8) # t5 = FFFFFB06
    sh      t4, 0x0146(a0)             # 00000146
lbl_8096F5E0:
    sw      t5, 0x013C(a0)             # 0000013C
lbl_8096F5E4:
    lw      $ra, 0x0014($sp)
lbl_8096F5E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096F5F4:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s6, 0x0054($sp)
    sw      s0, 0x003C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s7, 0x0058($sp)
    sw      s5, 0x0050($sp)
    sw      s4, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t8, 0x0024(s0)             # 00000024
    lw      s3, 0x1C44(s6)             # 00001C44
    sh      $zero, 0x014A(s0)          # 0000014A
    addiu   t6, $sp, 0x0078            # t6 = FFFFFFE0
    sw      t8, 0x0000(t6)             # FFFFFFE0
    lw      t7, 0x0028(s0)             # 00000028
    sw      t7, 0x0004(t6)             # FFFFFFE4
    lw      t8, 0x002C(s0)             # 0000002C
    sw      t8, 0x0008(t6)             # FFFFFFE8
    lh      t9, 0x0154(s0)             # 00000154
    bnel    t9, $zero, lbl_8096F924
    lw      $ra, 0x005C($sp)
    lbu     t0, 0x1D6C(s6)             # 00001D6C
    bnel    t0, $zero, lbl_8096F924
    lw      $ra, 0x005C($sp)
    lh      v0, 0x0142(s0)             # 00000142
    lh      t1, 0x0140(s0)             # 00000140
    slt     $at, t1, v0
    bne     $at, $zero, lbl_8096F920
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_8096F920
    addiu   a0, s6, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s3)             # 00000078
    lbu     a2, 0x007D(s3)             # 0000007D
    jal     func_800343D4
    sw      a0, 0x0060($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8096F6B4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_8096F6B4
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    v0, $at, lbl_8096F6B8
    lbu     v0, 0x0156(s0)             # 00000156
    beq     $zero, $zero, lbl_8096F920
    sh      $zero, 0x0150(s0)          # 00000150
lbl_8096F6B4:
    lbu     v0, 0x0156(s0)             # 00000156
lbl_8096F6B8:
    lui     $at, %hi(var_8096FFB0)     # $at = 80970000
    beq     v0, $zero, lbl_8096F6DC
    nop
    lwc1    $f4, %lo(var_8096FFB0)($at)
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8096F924
    lw      $ra, 0x005C($sp)
lbl_8096F6DC:
    beq     v0, $zero, lbl_8096F6E8
    addiu   s7, $zero, 0x0005          # s7 = 00000005
    addiu   s7, $zero, 0x0003          # s7 = 00000003
lbl_8096F6E8:
    lh      v0, 0x0142(s0)             # 00000142
    lh      t2, 0x0140(s0)             # 00000140
    slt     $at, v0, t2
    beq     $at, $zero, lbl_8096F920
    slt     $at, v0, s7
    beql    $at, $zero, lbl_8096F924
    lw      $ra, 0x005C($sp)
    lh      t3, 0x0154(s0)             # 00000154
    lui     s5, %hi(var_8096FF70)      # s5 = 80970000
    addiu   s5, s5, %lo(var_8096FF70)  # s5 = 8096FF70
    bne     t3, $zero, lbl_8096F920
    lui     s4, %hi(var_8096FF7C)      # s4 = 80970000
    addiu   s4, s4, %lo(var_8096FF7C)  # s4 = 8096FF7C
    lh      v0, 0x0152(s0)             # 00000152
lbl_8096F720:
    lh      t9, 0x00B6(s3)             # 000000B6
    lh      t0, 0x014E(s0)             # 0000014E
    sll     t6, v0,  1
    addu    t7, s5, t6
    lh      t8, 0x0000(t7)             # 00000000
    sll     t4, v0,  2
    addu    t5, s4, t4
    addu    s1, t8, t9
    sll     s1, s1, 16
    slti    $at, t0, 0x000A
    lwc1    $f20, 0x0000(t5)           # 00000000
    sra     s1, s1, 16
    bne     $at, $zero, lbl_8096F77C
    or      s2, $zero, $zero           # s2 = 00000000
    lw      t1, 0x015C(s0)             # 0000015C
    bnel    t1, $zero, lbl_8096F780
    sll     a0, s1, 16
    sh      $zero, 0x0150(s0)          # 00000150
    lh      t2, 0x0150(s0)             # 00000150
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    sh      t2, 0x014E(s0)             # 0000014E
    lh      s1, 0x0000(s5)             # 8096FF70
    lwc1    $f20, 0x0008(s4)           # 8096FF84
lbl_8096F77C:
    sll     a0, s1, 16
lbl_8096F780:
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f20
    lwc1    $f10, 0x0024(s3)           # 00000024
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0078($sp)
    lwc1    $f18, 0x0080(s3)           # 00000080
    add.s   $f6, $f18, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x007C($sp)
    mul.s   $f8, $f0, $f20
    lwc1    $f10, 0x002C(s3)           # 0000002C
    addiu   t3, $sp, 0x0078            # t3 = FFFFFFE0
    sw      t3, 0x0010($sp)
    lw      a0, 0x0060($sp)
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD8
    add.s   $f16, $f8, $f10
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x0080($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f18                  # $f18 = -32000.00
    mov.s   $f2, $f0
    addiu   a0, s6, 0x1C24             # a0 = 00001C24
    c.le.s  $f0, $f18
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x001C          # a3 = 0000001C
    bc1tl   lbl_8096F924
    lw      $ra, 0x005C($sp)
    lwc1    $f4, 0x0078($sp)
    lwc1    $f6, 0x0080($sp)
    swc1    $f2, 0x007C($sp)
    swc1    $f2, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      s2, 0x0028($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    beq     v0, $zero, lbl_8096F920
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    lh      t4, 0x0142(s0)             # 00000142
    lh      t6, 0x0152(s0)             # 00000152
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0142(s0)             # 00000142
    sh      t6, 0x0270(v0)             # 00000270
    lh      t7, 0x0152(s0)             # 00000152
    addiu   t4, $zero, 0x012C          # t4 = 0000012C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0152(s0)             # 00000152
    lh      t9, 0x0152(s0)             # 00000152
    slti    $at, t9, 0x0005
    bnel    $at, $zero, lbl_8096F87C
    lh      t0, 0x0150(s0)             # 00000150
    sh      $zero, 0x0152(s0)          # 00000152
    lh      t0, 0x0150(s0)             # 00000150
lbl_8096F87C:
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0150(s0)             # 00000150
    lh      t2, 0x0150(s0)             # 00000150
    slti    $at, t2, 0x000C
    bne     $at, $zero, lbl_8096F89C
    nop
    sh      t3, 0x0154(s0)             # 00000154
    sh      $zero, 0x0150(s0)          # 00000150
lbl_8096F89C:
    beq     s2, $zero, lbl_8096F8AC
    lui     $at, %hi(var_8096FFB8)     # $at = 80970000
    sh      t4, 0x0154(s0)             # 00000154
    sw      v0, 0x015C(s0)             # 0000015C
lbl_8096F8AC:
    lbu     t5, 0x0156(s0)             # 00000156
    bne     t5, $zero, lbl_8096F8DC
    nop
    lui     $at, %hi(var_8096FFB4)     # $at = 80970000
    jal     func_80026D64
    lwc1    $f12, %lo(var_8096FFB4)($at)
    trunc.w.s $f8, $f0
    mfc1    t9, $f8
    nop
    addiu   t0, t9, 0x0002             # t0 = 00000002
    beq     $zero, $zero, lbl_8096F8F8
    sh      t0, 0x0140(s0)             # 00000140
lbl_8096F8DC:
    jal     func_80026D64
    lwc1    $f12, %lo(var_8096FFB8)($at)
    trunc.w.s $f10, $f0
    mfc1    t4, $f10
    nop
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0140(s0)             # 00000140
lbl_8096F8F8:
    lh      v0, 0x0142(s0)             # 00000142
    lh      t6, 0x0140(s0)             # 00000140
    slt     $at, v0, t6
    beq     $at, $zero, lbl_8096F920
    slt     $at, v0, s7
    beql    $at, $zero, lbl_8096F924
    lw      $ra, 0x005C($sp)
    lh      t7, 0x0154(s0)             # 00000154
    beql    t7, $zero, lbl_8096F720
    lh      v0, 0x0152(s0)             # 00000152
lbl_8096F920:
    lw      $ra, 0x005C($sp)
lbl_8096F924:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    lw      s4, 0x004C($sp)
    lw      s5, 0x0050($sp)
    lw      s6, 0x0054($sp)
    lw      s7, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_8096F950:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0064($sp)
    lh      t7, 0x0154(s0)             # 00000154
    lw      t6, 0x0064($sp)
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    bne     t7, $zero, lbl_8096FAD4
    lw      v0, 0x1C44(t6)             # 00001C44
    sh      t8, 0x0154(s0)             # 00000154
    lwc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f8, $f0
    nop
    bc1tl   lbl_8096F9C0
    lh      t9, 0x014A(s0)             # 0000014A
    lwc1    $f10, 0x0158(s0)           # 00000158
    lwc1    $f16, 0x0090(s0)           # 00000090
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_8096F9D0
    lh      t1, 0x0142(s0)             # 00000142
    lh      t9, 0x014A(s0)             # 0000014A
lbl_8096F9C0:
    addiu   t0, t9, 0x0001             # t0 = 00000001
    beq     $zero, $zero, lbl_8096FAD4
    sh      t0, 0x014A(s0)             # 0000014A
    lh      t1, 0x0142(s0)             # 00000142
lbl_8096F9D0:
    lh      t2, 0x0140(s0)             # 00000140
    sh      $zero, 0x014A(s0)          # 0000014A
    slt     $at, t1, t2
    beql    $at, $zero, lbl_8096FAD8
    lw      $ra, 0x003C($sp)
    lh      t3, 0x0148(s0)             # 00000148
    lh      t4, 0x0146(s0)             # 00000146
    slt     $at, t3, t4
    beq     $at, $zero, lbl_8096FAD4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90
    nop
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    add.s   $f4, $f0, $f18
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    swc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f10, $f6, $f8
    jal     func_80026D90
    swc1    $f10, 0x004C($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lw      a0, 0x0064($sp)
    addiu   t5, $sp, 0x0048            # t5 = FFFFFFE8
    add.s   $f18, $f0, $f16
    sw      t5, 0x0010($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF8
    swc1    $f18, 0x0050($sp)
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    mov.s   $f2, $f0
    or      a1, s0, $zero              # a1 = 00000000
    c.le.s  $f0, $f4
    addiu   a3, $zero, 0x001B          # a3 = 0000001B
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    bc1tl   lbl_8096FAD8
    lw      $ra, 0x003C($sp)
    lw      a2, 0x0064($sp)
    lwc1    $f6, 0x0048($sp)
    lwc1    $f8, 0x0050($sp)
    swc1    $f2, 0x004C($sp)
    swc1    $f2, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      t7, 0x0028($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0010($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    beql    v0, $zero, lbl_8096FAD8
    lw      $ra, 0x003C($sp)
    lh      t8, 0x0142(s0)             # 00000142
    lh      t0, 0x0148(s0)             # 00000148
    addiu   t9, t8, 0x0001             # t9 = 00000001
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t9, 0x0142(s0)             # 00000142
    sh      t1, 0x0148(s0)             # 00000148
lbl_8096FAD4:
    lw      $ra, 0x003C($sp)
lbl_8096FAD8:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_8096FAE8:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s6, 0x0070($sp)
    sw      s4, 0x0068($sp)
    sw      s1, 0x005C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s6, $zero, 0x0051          # s6 = 00000051
    sw      $ra, 0x0074($sp)
    sw      s5, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lh      t6, 0x00A4(s4)             # 000000A4
    lw      s2, 0x1C44(s4)             # 00001C44
    beq     s6, t6, lbl_8096FB88
    nop
    lwc1    $f4, 0x0028(s2)            # 00000028
    lwc1    $f6, 0x0028(s1)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f8, $f0
    nop
    bc1tl   lbl_8096FB7C
    lh      t7, 0x014A(s1)             # 0000014A
    lwc1    $f10, 0x0158(s1)           # 00000158
    lwc1    $f16, 0x0090(s1)           # 00000090
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_8096FBB8
    lw      t3, 0x0024(s1)             # 00000024
    lh      t7, 0x014A(s1)             # 0000014A
lbl_8096FB7C:
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_8096FF04
    sh      t8, 0x014A(s1)             # 0000014A
lbl_8096FB88:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    beq     t9, $zero, lbl_8096FBAC
    nop
    jal     func_80079B44
    or      a0, s4, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_8096FBB8
    lw      t3, 0x0024(s1)             # 00000024
lbl_8096FBAC:
    beq     $zero, $zero, lbl_8096FF04
    sh      $zero, 0x014E(s1)          # 0000014E
    lw      t3, 0x0024(s1)             # 00000024
lbl_8096FBB8:
    sh      $zero, 0x014A(s1)          # 0000014A
    addiu   t1, $sp, 0x0098            # t1 = FFFFFFE0
    sw      t3, 0x0000(t1)             # FFFFFFE0
    lw      t2, 0x0028(s1)             # 00000028
    sw      t2, 0x0004(t1)             # FFFFFFE4
    lw      t3, 0x002C(s1)             # 0000002C
    sw      t3, 0x0008(t1)             # FFFFFFE8
    lh      v1, 0x0140(s1)             # 00000140
    lh      v0, 0x0142(s1)             # 00000142
    slt     $at, v0, v1
    beql    $at, $zero, lbl_8096FF08
    lw      $ra, 0x0074($sp)
    lh      a0, 0x0148(s1)             # 00000148
    lh      a1, 0x0146(s1)             # 00000146
    slt     $at, a0, a1
    beq     $at, $zero, lbl_8096FF04
    slt     $at, v0, v1
    beq     $at, $zero, lbl_8096FF04
    slt     $at, a0, a1
    beq     $at, $zero, lbl_8096FF04
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f26                  # $f26 = -32000.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f24                  # $f24 = 40.00
    addiu   s5, $zero, 0x000A          # s5 = 0000000A
    lh      t4, 0x00A4(s4)             # 000000A4
lbl_8096FC20:
    bnel    s6, t4, lbl_8096FDAC
    lh      t7, 0x0144(s1)             # 00000144
    lhu     t5, 0x088E(s2)             # 0000088E
    addiu   s3, s4, 0x07C0             # s3 = 000007C0
    beql    t5, $zero, lbl_8096FC6C
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    lbu     t6, 0x007D(s2)             # 0000007D
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t6, $at, lbl_8096FC6C
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    lhu     t7, 0x0088(s2)             # 00000088
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_8096FC6C
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    lw      t9, 0x066C(s2)             # 0000066C
    sll     t1, t9,  4
    bgez    t1, lbl_8096FC74
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
lbl_8096FC6C:
    beq     $zero, $zero, lbl_8096FF04
    sh      t2, 0x014C(s1)             # 0000014C
lbl_8096FC74:
    lh      v0, 0x014C(s1)             # 0000014C
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v0, $at, lbl_8096FC8C
    nop
    sh      t3, 0x0140(s1)             # 00000140
    lh      v0, 0x014C(s1)             # 0000014C
lbl_8096FC8C:
    beq     v0, $zero, lbl_8096FC9C
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_8096FF04
    sh      t4, 0x014C(s1)             # 0000014C
lbl_8096FC9C:
    jal     func_80026D90
    mov.s   $f12, $f24
    lh      t5, 0x0142(s1)             # 00000142
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    lh      s0, 0x00B6(s2)             # 000000B6
    beq     t5, $zero, lbl_8096FCE0
    add.s   $f22, $f0, $f18
    subu    s0, $zero, s0
    sll     s0, s0, 16
    sra     s0, s0, 16
    jal     func_80026D90
    mov.s   $f12, $f24
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    nop
    add.s   $f22, $f0, $f4
lbl_8096FCE0:
    sll     a0, s0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    mul.s   $f8, $f20, $f22
    lwc1    $f6, 0x0024(s2)            # 00000024
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f10, $f6, $f8
    add.s   $f16, $f0, $f10
    swc1    $f16, 0x0098($sp)
    lwc1    $f18, 0x0080(s2)           # 00000080
    add.s   $f6, $f18, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x009C($sp)
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    mul.s   $f10, $f20, $f22
    lwc1    $f8, 0x002C(s2)            # 0000002C
    addiu   t6, $sp, 0x0098            # t6 = FFFFFFE0
    sw      t6, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 000007C0
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFD8
    add.s   $f16, $f8, $f10
    or      a3, s1, $zero              # a3 = 00000000
    add.s   $f18, $f0, $f16
    jal     func_8002F4B8              # Raycast
    swc1    $f18, 0x00A0($sp)
    c.le.s  $f0, $f26
    nop
    bc1tl   lbl_8096FF08
    lw      $ra, 0x0074($sp)
    lwc1    $f2, 0x0084(s2)            # 00000084
    c.eq.s  $f26, $f2
    nop
    bc1tl   lbl_8096FDA8
    swc1    $f0, 0x009C($sp)
    lwc1    $f4, 0x0028(s2)            # 00000028
    sub.s   $f6, $f4, $f2
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_8096FF08
    lw      $ra, 0x0074($sp)
    swc1    $f0, 0x009C($sp)
lbl_8096FDA8:
    lh      t7, 0x0144(s1)             # 00000144
lbl_8096FDAC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s0, s4, 0x1C24             # s0 = 00001C24
    bne     t7, $at, lbl_8096FDC8
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x01AF          # a3 = 000001AF
    beq     $zero, $zero, lbl_8096FE64
    addiu   t0, $zero, 0xFF00          # t0 = FFFFFF00
lbl_8096FDC8:
    lh      v0, 0x014E(s1)             # 0000014E
    addiu   a3, $zero, 0x01B0          # a3 = 000001B0
    or      t0, $zero, $zero           # t0 = 00000000
    div     $zero, v0, s5
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    bne     s5, $zero, lbl_8096FDF0
    nop
    break   # 0x01C00
lbl_8096FDF0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s5, $at, lbl_8096FE08
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_8096FE08
    nop
    break   # 0x01800
lbl_8096FE08:
    addiu   t8, v0, 0x0001             # t8 = 00000001
    blezl   a0, lbl_8096FE64
    sh      t8, 0x014E(s1)             # 0000014E
    div     $zero, v0, s5
    mfhi    v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    bne     s5, $zero, lbl_8096FE30
    nop
    break   # 0x01C00
lbl_8096FE30:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s5, $at, lbl_8096FE48
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_8096FE48
    nop
    break   # 0x01800
lbl_8096FE48:
    bnel    v1, $zero, lbl_8096FE64
    sh      t8, 0x014E(s1)             # 0000014E
    sll     t0, a0,  2
    addu    t0, t0, a0
    sll     t0, t0, 16
    sra     t0, t0, 16
    sh      t8, 0x014E(s1)             # 0000014E
lbl_8096FE64:
    lwc1    $f8, 0x0098($sp)
    lwc1    $f10, 0x009C($sp)
    lwc1    $f16, 0x00A0($sp)
    or      a0, s0, $zero              # a0 = 00001C24
    or      a2, s4, $zero              # a2 = 00000000
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      t0, 0x0028($sp)
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    beq     v0, $zero, lbl_8096FF04
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    lh      t9, 0x0142(s1)             # 00000142
    lh      t3, 0x0140(s1)             # 00000140
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sh      t1, 0x0142(s1)             # 00000142
    lh      t2, 0x0142(s1)             # 00000142
    slt     $at, t2, t3
    bnel    $at, $zero, lbl_8096FEC8
    lh      t5, 0x00A4(s4)             # 000000A4
    sh      t4, 0x014C(s1)             # 0000014C
    lh      t5, 0x00A4(s4)             # 000000A4
lbl_8096FEC8:
    beql    s6, t5, lbl_8096FEE0
    lh      v0, 0x0142(s1)             # 00000142
    lh      t6, 0x0148(s1)             # 00000148
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0148(s1)             # 00000148
    lh      v0, 0x0142(s1)             # 00000142
lbl_8096FEE0:
    lh      v1, 0x0140(s1)             # 00000140
    slt     $at, v0, v1
    beql    $at, $zero, lbl_8096FF08
    lw      $ra, 0x0074($sp)
    lh      t8, 0x0148(s1)             # 00000148
    lh      t9, 0x0146(s1)             # 00000146
    slt     $at, t8, t9
    bnel    $at, $zero, lbl_8096FC20
    lh      t4, 0x00A4(s4)             # 000000A4
lbl_8096FF04:
    lw      $ra, 0x0074($sp)
lbl_8096FF08:
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
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_8096FF3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0154(a0)             # 00000154
    beq     v0, $zero, lbl_8096FF54
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0154(a0)             # 00000154
lbl_8096FF54:
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_8096FF70: .word 0x00002710, 0x71488EB8, 0xD8F00000
var_8096FF7C: .word \
0x43480000, 0x432A0000, 0x42F00000, 0x42F00000, \
0x432A0000
var_8096FF90: .word 0x00A70600, 0x08000010, 0x00010000, 0x00000160
.word func_8096F4C0
.word 0x00000000
.word func_8096FF3C
.word 0x00000000

.section .rodata

var_8096FFB0: .word 0x44A28000
var_8096FFB4: .word 0x407F5C29
var_8096FFB8: .word 0x403F5C29, 0x00000000

