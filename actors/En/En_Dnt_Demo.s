.section .text
func_80B4CF20:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B4CF30:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    lui     s1, %hi(var_80B4DAFC)      # s1 = 80B50000
    addiu   s1, s1, %lo(var_80B4DAFC)  # s1 = 80B4DAFC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s8, s6, 0x1C24             # s8 = 00001C24
    or      s2, s5, $zero              # s2 = 00000000
    or      s0, s5, $zero              # s0 = 00000000
    addiu   s3, s5, 0x0150             # s3 = 00000150
    addiu   s7, $zero, 0x0009          # s7 = 00000009
lbl_80B4CF84:
    lw      t7, 0x0000(s1)             # 80B4DAFC
    addiu   s4, v0, 0x0001             # s4 = 00000001
    or      a0, s8, $zero              # a0 = 00001C24
    sw      t7, 0x0000(s3)             # 00000150
    lw      t6, 0x0004(s1)             # 80B4DB00
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    sw      t6, 0x0004(s3)             # 00000154
    lw      t7, 0x0008(s1)             # 80B4DB04
    addiu   a3, $zero, 0x01A3          # a3 = 000001A3
    sw      t7, 0x0008(s3)             # 00000158
    lwc1    $f4, 0x0150(s0)            # 00000150
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0154(s0)            # 00000154
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x0158(s0)            # 00000158
    sw      s4, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    sw      v0, 0x01C8(s2)             # 000001C8
    or      v0, s4, $zero              # v0 = 00000001
    addiu   s1, s1, 0x000C             # s1 = 80B4DB08
    addiu   s2, s2, 0x0004             # s2 = 00000004
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    bne     s4, s7, lbl_80B4CF84
    addiu   s3, s3, 0x000C             # s3 = 0000015C
    lui     $at, %hi(var_80B4DB70)     # $at = 80B50000
    lwc1    $f0, %lo(var_80B4DB70)($at)
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f2                   # $f2 = -20.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    swc1    $f0, 0x01BC(s5)            # 000001BC
    swc1    $f2, 0x01C0(s5)            # 000001C0
    swc1    $f12, 0x01C4(s5)           # 000001C4
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a0, s8, $zero              # a0 = 00001C24
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x01A2          # a3 = 000001A2
    swc1    $f0, 0x0010($sp)
    swc1    $f2, 0x0014($sp)
    jal     func_800253F0
    swc1    $f12, 0x0018($sp)
    lw      t8, 0x0004(s5)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t0, %hi(func_80B4D0A0)     # t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4D0A0) # t0 = 80B4D0A0
    and     t9, t8, $at
    sw      v0, 0x01EC(s5)             # 000001EC
    sh      $zero, 0x014E(s5)          # 0000014E
    sw      t9, 0x0004(s5)             # 00000004
    sw      t0, 0x013C(s5)             # 0000013C
    lw      $ra, 0x005C($sp)
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
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80B4D0A0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      a2, 0x0148(s0)             # 00000148
    lui     $at, 0x41F0                # $at = 41F00000
    beql    a2, $zero, lbl_80B4D1A8
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      t6, 0x01C8(s0)             # 000001C8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   v0, s0, 0x0004             # v0 = 00000004
    sh      a2, 0x0260(t6)             # 00000260
    lw      t8, 0x01C8(s0)             # 000001C8
    lh      t7, 0x014A(s0)             # 0000014A
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sh      t7, 0x0264(t8)             # 00000264
    lw      t9, 0x01C8(s0)             # 000001C8
    sb      $zero, 0x0268(t9)          # 00000268
lbl_80B4D0EC:
    lh      t4, 0x0148(s0)             # 00000148
    lw      t5, 0x01C8(v0)             # 000001CC
    addiu   v1, v1, 0x0004             # v1 = 00000005
    addiu   v0, v0, 0x0010             # v0 = 00000014
    sh      t4, 0x0260(t5)             # 00000260
    lh      t6, 0x014A(s0)             # 0000014A
    lw      t7, 0x01B8(v0)             # 000001CC
    sh      t6, 0x0264(t7)             # 00000264
    lw      t8, 0x01B8(v0)             # 000001CC
    sb      $zero, 0x0268(t8)          # 00000268
    lh      t9, 0x0148(s0)             # 00000148
    lw      t4, 0x01BC(v0)             # 000001D0
    sh      t9, 0x0260(t4)             # 00000260
    lh      t5, 0x014A(s0)             # 0000014A
    lw      t6, 0x01BC(v0)             # 000001D0
    sh      t5, 0x0264(t6)             # 00000264
    lw      t7, 0x01BC(v0)             # 000001D0
    sb      $zero, 0x0268(t7)          # 00000268
    lh      t8, 0x0148(s0)             # 00000148
    lw      t9, 0x01C0(v0)             # 000001D4
    sh      t8, 0x0260(t9)             # 00000260
    lh      t4, 0x014A(s0)             # 0000014A
    lw      t5, 0x01C0(v0)             # 000001D4
    sh      t4, 0x0264(t5)             # 00000264
    lw      t6, 0x01C0(v0)             # 000001D4
    sb      $zero, 0x0268(t6)          # 00000268
    lw      t8, 0x01C4(v0)             # 000001D8
    lh      t7, 0x0148(s0)             # 00000148
    sh      t7, 0x0260(t8)             # 00000260
    lw      t4, 0x01C4(v0)             # 000001D8
    lh      t9, 0x014A(s0)             # 0000014A
    sh      t9, 0x0264(t4)             # 00000264
    lw      t5, 0x01C4(v0)             # 000001D8
    bne     v1, t1, lbl_80B4D0EC
    sb      $zero, 0x0268(t5)          # 00000268
    lw      v0, 0x01EC(s0)             # 000001EC
    lui     t8, %hi(func_80B4D6C0)     # t8 = 80B50000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lbu     t6, 0x022C(v0)             # 00000240
    addiu   t8, t8, %lo(func_80B4D6C0) # t8 = 80B4D6C0
    beql    t6, $zero, lbl_80B4D19C
    sh      $zero, 0x0148(s0)          # 00000148
    sh      t7, 0x023E(v0)             # 00000252
    sh      $zero, 0x0148(s0)          # 00000148
lbl_80B4D19C:
    beq     $zero, $zero, lbl_80B4D6AC
    sw      t8, 0x013C(s0)             # 0000013C
    mtc1    $at, $f4                   # $f4 = 30.00
lbl_80B4D1A8:
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_80B4D1D0
    lh      t9, 0x0146(s0)             # 00000146
    jal     func_80079B44
    lw      a0, 0x003C($sp)
    bne     v0, $zero, lbl_80B4D23C
    nop
    lh      t9, 0x0146(s0)             # 00000146
lbl_80B4D1D0:
    lh      t5, 0x014E(s0)             # 0000014E
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    addiu   t4, t9, 0x0001             # t4 = 00000001
    beq     t5, $zero, lbl_80B4D1E8
    sh      t4, 0x0146(s0)             # 00000146
    sh      $zero, 0x014E(s0)          # 0000014E
lbl_80B4D1E8:
    lh      t6, 0x0140(s0)             # 00000140
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    t6, $zero, lbl_80B4D6B0
    lw      $ra, 0x0024($sp)
    lw      t7, 0x01C8(s0)             # 000001C8
    addiu   v0, s0, 0x0004             # v0 = 00000004
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sh      a0, 0x0260(t7)             # 00000260
lbl_80B4D208:
    lw      t8, 0x01C8(v0)             # 000001CC
    addiu   v1, v1, 0x0004             # v1 = 00000005
    addiu   v0, v0, 0x0010             # v0 = 00000014
    sh      a0, 0x0260(t8)             # 00000260
    lw      t9, 0x01BC(v0)             # 000001D0
    sh      a0, 0x0260(t9)             # 00000260
    lw      t4, 0x01C0(v0)             # 000001D4
    sh      a0, 0x0260(t4)             # 00000261
    lw      t5, 0x01C4(v0)             # 000001D8
    bne     v1, t1, lbl_80B4D208
    sh      a0, 0x0260(t5)             # 00000260
    beq     $zero, $zero, lbl_80B4D6AC
    sh      $zero, 0x0140(s0)          # 00000140
lbl_80B4D23C:
    jal     func_80079B44
    lw      a0, 0x003C($sp)
    beql    v0, $zero, lbl_80B4D274
    lh      v0, 0x0140(s0)             # 00000140
    lh      t6, 0x014E(s0)             # 0000014E
    lw      a0, 0x003C($sp)
    addiu   a1, $zero, 0x08AC          # a1 = 000008AC
    bne     t6, $zero, lbl_80B4D270
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      a3, 0x01D4(s0)             # 000001D4
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    sh      v0, 0x014E(s0)             # 0000014E
lbl_80B4D270:
    lh      v0, 0x0140(s0)             # 00000140
lbl_80B4D274:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    sh      $zero, 0x0146(s0)          # 00000146
    bne     v0, $at, lbl_80B4D2C8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      t7, 0x01C8(s0)             # 000001C8
    or      v1, t0, $zero              # v1 = 00000001
    addiu   v0, s0, 0x0004             # v0 = 00000004
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sh      t0, 0x0260(t7)             # 00000260
lbl_80B4D298:
    lw      t8, 0x01C8(v0)             # 000001CC
    addiu   v1, v1, 0x0004             # v1 = 00000005
    addiu   v0, v0, 0x0010             # v0 = 00000014
    sh      t0, 0x0260(t8)             # 00000260
    lw      t9, 0x01BC(v0)             # 000001D0
    sh      t0, 0x0260(t9)             # 00000260
    lw      t4, 0x01C0(v0)             # 000001D4
    sh      t0, 0x0260(t4)             # 00000260
    lw      t5, 0x01C4(v0)             # 000001D8
    bne     v1, t1, lbl_80B4D298
    sh      t0, 0x0260(t5)             # 00000260
    lh      v0, 0x0140(s0)             # 00000140
lbl_80B4D2C8:
    slti    $at, v0, 0x0029
    bne     $at, $zero, lbl_80B4D2E4
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x205D          # a1 = 0000205D
    jal     func_800C50AC
    lui     a2, 0x4000                 # a2 = 40000000
    lh      v0, 0x0140(s0)             # 00000140
lbl_80B4D2E4:
    slti    $at, v0, 0x0078
    beq     $at, $zero, lbl_80B4D2F8
    addiu   t6, v0, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80B4D6AC
    sh      t6, 0x0140(s0)             # 00000140
lbl_80B4D2F8:
    sb      $zero, 0x002D($sp)
    lw      a0, 0x003C($sp)
    sh      $zero, 0x0034($sp)
    jal     func_80079B44
    sh      $zero, 0x0036($sp)
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x0008
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    beq     $at, $zero, lbl_80B4D5DC
    lh      t3, 0x0036($sp)
    sll     t7, t7,  2
    lui     $at, %hi(var_80B4DB74)     # $at = 80B50000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B4DB74)($at)
    jr      t7
    nop
var_80B4D340:
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t8, -0x4B3E(t8)            # 8011B4C2
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    andi    t9, t8, 0x4000             # t9 = 00000000
    bne     t9, $zero, lbl_80B4D380
    addiu   a0, $zero, 0x003E          # a0 = 0000003E
    sh      t4, 0x014C(s0)             # 0000014C
    sh      t3, 0x0036($sp)
    jal     func_800CAA70
    sh      t2, 0x0034($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    beq     $zero, $zero, lbl_80B4D5DC
    lh      t3, 0x0036($sp)
lbl_80B4D380:
    lui     t5, 0x8012                 # t5 = 80120000
    lhu     t5, -0x4B3E(t5)            # 8011B4C2
    lw      a0, 0x003C($sp)
    andi    t6, t5, 0x8000             # t6 = 00000000
    bne     t6, $zero, lbl_80B4D43C
    nop
    jal     func_80079B44
    sh      t3, 0x0036($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B4D43C
    lh      t3, 0x0036($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sh      t3, 0x0036($sp)
    lw      t8, 0x01EC(s0)             # 000001EC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lh      t3, 0x0036($sp)
    sh      t0, 0x014C(s0)             # 0000014C
    sh      t0, 0x023E(t8)             # 0000023E
    lh      t9, 0x014E(s0)             # 0000014E
    sll     t2, t0, 16
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    beq     t9, $zero, lbl_80B4D5DC
    sra     t2, t2, 16
    sh      $zero, 0x014E(s0)          # 0000014E
    lw      a3, 0x01EC(s0)             # 000001EC
    sh      t3, 0x0036($sp)
    sh      t2, 0x0034($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, $zero, 0x0924          # a1 = 00000924
    jal     func_8006B6FC
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    beq     $zero, $zero, lbl_80B4D5DC
    lh      t3, 0x0036($sp)
lbl_80B4D43C:
    lui     $at, %hi(var_80B4DB94)     # $at = 80B50000
    lwc1    $f12, %lo(var_80B4DB94)($at)
    jal     func_80026D64
    sh      t3, 0x0036($sp)
    trunc.w.s $f8, $f0
    lw      a0, 0x003C($sp)
    mfc1    t5, $f8
    jal     func_80079B44
    sh      t5, 0x0032($sp)
    sll     v1, v0, 16
    lh      t6, 0x0032($sp)
    sra     v1, v1, 16
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sll     a1, v1, 16
    addiu   $at, $zero, 0x0008         # $at = 00000008
    sra     a1, a1, 16
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    bne     t6, $at, lbl_80B4D4A0
    lh      t3, 0x0036($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    beq     $zero, $zero, lbl_80B4D5DC
    sb      a2, 0x002D($sp)
lbl_80B4D4A0:
    sll     t7, v1, 16
    sra     t8, t7, 16
    slti    $at, t8, 0x0008
    bne     $at, $zero, lbl_80B4D4E0
    lui     $at, %hi(var_80B4DB98)     # $at = 80B50000
    lwc1    $f12, %lo(var_80B4DB98)($at)
    jal     func_80026D64
    sh      t3, 0x0036($sp)
    trunc.w.s $f10, $f0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t3, 0x0036($sp)
    mfc1    a1, $f10
    nop
    sll     a1, a1, 16
    sra     a1, a1, 16
lbl_80B4D4E0:
    lh      t4, 0x0032($sp)
    sll     t6, a1,  1
    lui     v1, %hi(var_80B4DA80)      # v1 = 80B50000
    sll     t5, t4,  3
    subu    t5, t5, t4
    sll     t5, t5,  1
    addu    t7, t5, t6
    addu    v1, v1, t7
    lh      v1, %lo(var_80B4DA80)(v1)
    lui     t9, %hi(var_80B4DAF0)      # t9 = 80B50000
    addiu   t9, t9, %lo(var_80B4DAF0)  # t9 = 80B4DAF0
    sll     t8, v1,  2
    addu    v0, t8, t9
    lh      t4, 0x0002(v0)             # 00000002
    lh      t2, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sh      t4, 0x014A(s0)             # 0000014A
    lh      a0, 0x014A(s0)             # 0000014A
    beql    a0, t0, lbl_80B4D5C0
    addiu   a0, $zero, 0x0055          # a0 = 00000055
    beq     a0, $at, lbl_80B4D560
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a0, $at, lbl_80B4D5DC
    addiu   a0, $zero, 0x002D          # a0 = 0000002D
    sh      t2, 0x0034($sp)
    jal     func_800CAA70
    sh      t3, 0x0036($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    beq     $zero, $zero, lbl_80B4D5DC
    lh      t3, 0x0036($sp)
lbl_80B4D560:
    lh      t5, 0x014E(s0)             # 0000014E
    addiu   a1, $zero, 0x092E          # a1 = 0000092E
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    beql    t5, $zero, lbl_80B4D59C
    addiu   a0, $zero, 0x081A          # a0 = 0000081A
    sh      $zero, 0x014E(s0)          # 0000014E
    lw      a3, 0x01D4(s0)             # 000001D4
    sh      t3, 0x0036($sp)
    sh      t2, 0x0034($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    lw      a0, 0x003C($sp)
    lh      t2, 0x0034($sp)
    lh      t3, 0x0036($sp)
    addiu   a0, $zero, 0x081A          # a0 = 0000081A
lbl_80B4D59C:
    sh      t2, 0x0034($sp)
    jal     func_800CAA70
    sh      t3, 0x0036($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    beq     $zero, $zero, lbl_80B4D5DC
    lh      t3, 0x0036($sp)
    addiu   a0, $zero, 0x0055          # a0 = 00000055
lbl_80B4D5C0:
    sh      t2, 0x0034($sp)
    jal     func_800CAA70
    sh      t3, 0x0036($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    lh      t2, 0x0034($sp)
    lh      t3, 0x0036($sp)
lbl_80B4D5DC:
    beq     t2, $zero, lbl_80B4D6AC
    lbu     a2, 0x002D($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   a1, $zero, 0x012C          # a1 = 0000012C
lbl_80B4D5F4:
    beql    t3, $zero, lbl_80B4D614
    lh      t8, 0x014A(s0)             # 0000014A
    multu   t3, v1
    lw      t7, 0x01C8(v0)             # 000001C8
    mflo    t6
    sh      t6, 0x0254(t7)             # 00000254
    nop
    lh      t8, 0x014A(s0)             # 0000014A
lbl_80B4D614:
    lw      t9, 0x01C8(v0)             # 000001C8
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sh      t8, 0x0264(t9)             # 00000264
    lw      t4, 0x01C8(v0)             # 000001C8
    sh      t2, 0x0260(t4)             # 00000260
    lw      t5, 0x01C8(v0)             # 000001C8
    sb      a2, 0x0266(t5)             # 00000266
    lh      t6, 0x014C(s0)             # 0000014C
    beq     t6, $zero, lbl_80B4D698
    nop
    lw      t7, 0x01C8(v0)             # 000001C8
    sh      a1, 0x0248(t7)             # 00000248
    lh      t8, 0x014C(s0)             # 0000014C
    lw      t9, 0x01C8(v0)             # 000001C8
    sb      t8, 0x0268(t9)             # 00000268
    lw      t5, 0x01EC(s0)             # 000001EC
    lw      t4, 0x01C8(v0)             # 000001C8
    lw      t7, 0x0024(t5)             # 00000024
    sw      t7, 0x0278(t4)             # 00000278
    lw      t6, 0x0028(t5)             # 00000028
    sw      t6, 0x027C(t4)             # 0000027C
    lw      t7, 0x002C(t5)             # 0000002C
    sw      t7, 0x0280(t4)             # 00000280
    lh      a0, 0x014C(s0)             # 0000014C
    bne     t0, a0, lbl_80B4D688
    nop
    lw      t8, 0x01EC(s0)             # 000001EC
    sh      t0, 0x023E(t8)             # 0000023E
    lh      a0, 0x014C(s0)             # 0000014C
lbl_80B4D688:
    bne     a3, a0, lbl_80B4D698
    nop
    lw      t9, 0x01EC(s0)             # 000001EC
    sh      a1, 0x0230(t9)             # 00000230
lbl_80B4D698:
    bne     v1, t1, lbl_80B4D5F4
    addiu   v0, v0, 0x0004             # v0 = 00000004
    lui     t4, %hi(func_80B4D6C0)     # t4 = 80B50000
    addiu   t4, t4, %lo(func_80B4D6C0) # t4 = 80B4D6C0
    sw      t4, 0x013C(s0)             # 0000013C
lbl_80B4D6AC:
    lw      $ra, 0x0024($sp)
lbl_80B4D6B0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4D6C0:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0038($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x007C($sp)
    lh      t6, 0x0148(s2)             # 00000148
    beql    t6, $zero, lbl_80B4D824
    lh      t0, 0x014C(s2)             # 0000014C
    lh      t7, 0x014A(s2)             # 0000014A
    lw      t8, 0x01C8(s2)             # 000001C8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   s0, s2, 0x0004             # s0 = 00000004
    sh      t7, 0x0264(t8)             # 00000264
    lw      t0, 0x01C8(s2)             # 000001C8
    lh      t9, 0x0148(s2)             # 00000148
    addiu   s4, $zero, 0x0009          # s4 = 00000009
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01C8(s2)             # 000001C8
    sb      $zero, 0x0268(t1)          # 00000268
lbl_80B4D730:
    lh      t2, 0x014A(s2)             # 0000014A
    lw      t3, 0x01C8(s0)             # 000001CC
    addiu   v0, v0, 0x0004             # v0 = 00000005
    addiu   s0, s0, 0x0010             # s0 = 00000014
    sh      t2, 0x0264(t3)             # 00000264
    lh      t4, 0x0148(s2)             # 00000148
    lw      t5, 0x01B8(s0)             # 000001CC
    sh      t4, 0x0260(t5)             # 00000260
    lw      t6, 0x01B8(s0)             # 000001CC
    sb      $zero, 0x0268(t6)          # 00000268
    lh      t7, 0x014A(s2)             # 0000014A
    lw      t8, 0x01BC(s0)             # 000001D0
    sh      t7, 0x0264(t8)             # 00000264
    lh      t9, 0x0148(s2)             # 00000148
    lw      t0, 0x01BC(s0)             # 000001D0
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01BC(s0)             # 000001D0
    sb      $zero, 0x0268(t1)          # 00000268
    lh      t2, 0x014A(s2)             # 0000014A
    lw      t3, 0x01C0(s0)             # 000001D4
    sh      t2, 0x0264(t3)             # 00000264
    lh      t4, 0x0148(s2)             # 00000148
    lw      t5, 0x01C0(s0)             # 000001D4
    sh      t4, 0x0260(t5)             # 00000260
    lw      t6, 0x01C0(s0)             # 000001D4
    sb      $zero, 0x0268(t6)          # 00000268
    lw      t8, 0x01C4(s0)             # 000001D8
    lh      t7, 0x014A(s2)             # 0000014A
    sh      t7, 0x0264(t8)             # 00000264
    lw      t0, 0x01C4(s0)             # 000001D8
    lh      t9, 0x0148(s2)             # 00000148
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01C4(s0)             # 000001D8
    bne     v0, s4, lbl_80B4D730
    sb      $zero, 0x0268(t1)          # 00000268
    lw      v1, 0x01EC(s2)             # 000001EC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lh      t2, 0x022E(v1)             # 0000022E
    bnel    t2, $at, lbl_80B4D7E0
    lh      t4, 0x023A(v1)             # 0000023A
    beq     $zero, $zero, lbl_80B4D7FC
    sh      t3, 0x023E(v1)             # 0000023E
    lh      t4, 0x023A(v1)             # 0000023A
lbl_80B4D7E0:
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    beql    t4, $zero, lbl_80B4D7FC
    sh      t6, 0x022E(v1)             # 0000022E
    beq     $zero, $zero, lbl_80B4D7FC
    sh      t5, 0x023E(v1)             # 0000023E
    sh      t6, 0x022E(v1)             # 0000022E
lbl_80B4D7FC:
    lw      t7, 0x01EC(s2)             # 000001EC
    lui     t9, %hi(func_80B4D934)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4D934) # t9 = 80B4D934
    sh      $zero, 0x0230(t7)          # 00000230
    sh      $zero, 0x014A(s2)          # 0000014A
    lh      t8, 0x014A(s2)             # 0000014A
    sw      t9, 0x013C(s2)             # 0000013C
    beq     $zero, $zero, lbl_80B4D900
    sh      t8, 0x0148(s2)             # 00000148
    lh      t0, 0x014C(s2)             # 0000014C
lbl_80B4D824:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t0, $at, lbl_80B4D900
    or      s0, s2, $zero              # s0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    addiu   s6, $zero, 0x000A          # s6 = 0000000A
    addiu   s5, $sp, 0x0064            # s5 = FFFFFFEC
    addiu   s4, $zero, 0x0009          # s4 = 00000009
lbl_80B4D848:
    lw      v1, 0x01EC(s2)             # 000001EC
    addiu   s3, v0, 0x0001             # s3 = 00000001
    andi    t3, v0, 0x0001             # t3 = 00000000
    lw      t2, 0x0024(v1)             # 00000024
    lh      s1, 0x00B6(v1)             # 000000B6
    mtc1    s3, $f4                    # $f4 = 0.00
    sw      t2, 0x0000(s5)             # FFFFFFEC
    lw      t1, 0x0028(v1)             # 00000028
    subu    s1, $zero, s1
    sll     s1, s1, 16
    sw      t1, 0x0004(s5)             # FFFFFFF0
    lw      t2, 0x002C(v1)             # 0000002C
    sra     s1, s1, 16
    bne     t3, $zero, lbl_80B4D890
    sw      t2, 0x0008(s5)             # FFFFFFF4
    addiu   s1, s1, 0xA628             # s1 = FFFFA628
    sll     s1, s1, 16
    sra     s1, s1, 16
lbl_80B4D890:
    cvt.s.w $f6, $f4
    lw      t4, 0x01C8(s0)             # 000001C8
    sll     a0, s1, 16
    sra     a0, a0, 16
    sh      s6, 0x024A(t4)             # 0000024A
    mul.s   $f8, $f6, $f24
    add.s   $f20, $f8, $f24
    jal     func_800636C4              # sins?
    mov.s   $f22, $f20
    mul.s   $f10, $f0, $f20
    lwc1    $f16, 0x0064($sp)
    lw      t5, 0x01C8(s0)             # 000001C8
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0278(t5)           # 00000278
    lw      t6, 0x01C8(s0)             # 000001C8
    lwc1    $f4, 0x0068($sp)
    jal     func_80063684              # coss?
    swc1    $f4, 0x027C(t6)            # 0000027C
    mul.s   $f6, $f0, $f22
    lwc1    $f8, 0x006C($sp)
    lw      t7, 0x01C8(s0)             # 000001C8
    or      v0, s3, $zero              # v0 = 00000001
    addiu   s0, s0, 0x0004             # s0 = 00000004
    add.s   $f10, $f6, $f8
    bne     s3, s4, lbl_80B4D848
    swc1    $f10, 0x0280(t7)           # 00000280
lbl_80B4D900:
    lw      $ra, 0x004C($sp)
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
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80B4D934:
    sw      a1, 0x0004($sp)
    lh      t6, 0x0148(a0)             # 00000148
    beq     t6, $zero, lbl_80B4DA08
    nop
    lh      t7, 0x014A(a0)             # 0000014A
    lw      t8, 0x01C8(a0)             # 000001C8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v1, a0, 0x0004             # v1 = 00000004
    sh      t7, 0x0264(t8)             # 00000264
    lw      t0, 0x01C8(a0)             # 000001C8
    lh      t9, 0x0148(a0)             # 00000148
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01C8(a0)             # 000001C8
    sb      $zero, 0x0268(t1)          # 00000268
lbl_80B4D970:
    lh      t2, 0x014A(a0)             # 0000014A
    lw      t3, 0x01C8(v1)             # 000001CC
    addiu   v0, v0, 0x0004             # v0 = 00000005
    addiu   v1, v1, 0x0010             # v1 = 00000014
    sh      t2, 0x0264(t3)             # 00000264
    lh      t4, 0x0148(a0)             # 00000148
    lw      t5, 0x01B8(v1)             # 000001CC
    sh      t4, 0x0260(t5)             # 00000260
    lw      t6, 0x01B8(v1)             # 000001CC
    sb      $zero, 0x0268(t6)          # 00000268
    lh      t7, 0x014A(a0)             # 0000014A
    lw      t8, 0x01BC(v1)             # 000001D0
    sh      t7, 0x0264(t8)             # 00000264
    lh      t9, 0x0148(a0)             # 00000148
    lw      t0, 0x01BC(v1)             # 000001D0
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01BC(v1)             # 000001D0
    sb      $zero, 0x0268(t1)          # 00000268
    lh      t2, 0x014A(a0)             # 0000014A
    lw      t3, 0x01C0(v1)             # 000001D4
    sh      t2, 0x0264(t3)             # 00000264
    lh      t4, 0x0148(a0)             # 00000148
    lw      t5, 0x01C0(v1)             # 000001D4
    sh      t4, 0x0260(t5)             # 00000260
    lw      t6, 0x01C0(v1)             # 000001D4
    sb      $zero, 0x0268(t6)          # 00000268
    lw      t8, 0x01C4(v1)             # 000001D8
    lh      t7, 0x014A(a0)             # 0000014A
    sh      t7, 0x0264(t8)             # 00000264
    lw      t0, 0x01C4(v1)             # 000001D8
    lh      t9, 0x0148(a0)             # 00000148
    sh      t9, 0x0260(t0)             # 00000260
    lw      t1, 0x01C4(v1)             # 000001D8
    bne     v0, a1, lbl_80B4D970
    sb      $zero, 0x0268(t1)          # 00000268
    sh      $zero, 0x014A(a0)          # 0000014A
    lh      t2, 0x014A(a0)             # 0000014A
    sh      t2, 0x0148(a0)             # 00000148
lbl_80B4DA08:
    jr      $ra
    nop


func_80B4DA10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0144(a0)             # 00000144
    beq     v0, $zero, lbl_80B4DA28
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0144(a0)             # 00000144
lbl_80B4DA28:
    lh      v0, 0x0142(a0)             # 00000142
    beq     v0, $zero, lbl_80B4DA38
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0142(a0)             # 00000142
lbl_80B4DA38:
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B4DA60: .word 0x01A10600, 0x00000000, 0x00010000, 0x000001F0
.word func_80B4CF30
.word func_80B4CF20
.word func_80B4DA10
.word 0x00000000
var_80B4DA80: .word \
0x00000001, 0x00000001, 0x00020000, 0x00010001, \
0x00000001, 0x00000001, 0x00010002, 0x00020001, \
0x00010001, 0x00000000, 0x00000001, 0x00020001, \
0x00010001, 0x00010000, 0x00000000, 0x00020000, \
0x00000000, 0x00010000, 0x00000000, 0x00020001, \
0x00020000, 0x00010001, 0x00010001, 0x00010001, \
0x00010002, 0x00020002, 0x00020002, 0x00020002
var_80B4DAF0: .word 0x00040003, 0x00040002, 0x00030001
var_80B4DAFC: .word \
0x456E2000, 0xC1A00000, 0x447C8000, 0x45732000, \
0xC1A00000, 0x44778000, 0x45692000, 0xC1A00000, \
0x446D8000, 0x45700000, 0xC1A00000, 0x44688000, \
0x45746000, 0xC1A00000, 0x44598000, 0x456C4000, \
0xC1A00000, 0x44570000, 0x4567E000, 0xC1A00000, \
0x44520000, 0x45714000, 0xC1A00000, 0x44458000, \
0x456A6000, 0xC1A00000, 0x443B8000, 0x00000000, \
0x00000000

.section .rodata

var_80B4DB70: .word 0x457D2000
var_80B4DB74: .word lbl_80B4D43C
.word var_80B4D340
.word lbl_80B4D43C
.word lbl_80B4D43C
.word lbl_80B4D43C
.word lbl_80B4D43C
.word lbl_80B4D43C
.word lbl_80B4D380
var_80B4DB94: .word 0x410FD70A
var_80B4DB98: .word 0x40FFAE14, 0x00000000

