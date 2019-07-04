.section .text
func_80A2D260:
    sw      a1, 0x0278(a0)             # 00000278
    jr      $ra
    nop


func_80A2D26C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x005C($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    lui     a2, %hi(var_80A2F9F0)      # a2 = 80A30000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sll     t8, t6,  1
    addu    a2, a2, t8
    lh      a2, %lo(var_80A2F9F0)(a2)
    lw      a0, 0x005C($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    beq     a2, $at, lbl_80A2D2D0
    sw      t6, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sll     a1, a2, 16
    sra     a1, a1, 16
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    beq     $zero, $zero, lbl_80A2D2D0
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A2D2D0:
    bltz    v1, lbl_80A2D2DC
    or      a0, s1, $zero              # a0 = 00000000
    sb      v1, 0x0282(s1)             # 00000282
lbl_80A2D2DC:
    lui     a1, %hi(func_80A2D688)     # a1 = 80A30000
    jal     func_80A2D260
    addiu   a1, a1, %lo(func_80A2D688) # a1 = 80A2D688
    lw      v0, 0x004C($sp)
    sh      $zero, 0x027E(s1)          # 0000027E
    sh      $zero, 0x027C(s1)          # 0000027C
    sltiu   $at, v0, 0x0014
    beq     $at, $zero, lbl_80A2D584
    sh      $zero, 0x0280(s1)          # 00000280
    sll     t9, v0,  2
    lui     $at, %hi(var_80A2FB00)     # $at = 80A30000
    addu    $at, $at, t9
    lw      t9, %lo(var_80A2FB00)($at)
    jr      t9
    nop
var_80A2D318:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     t0, %hi(func_80A2F0A0)     # t0 = 80A30000
    lui     t1, %hi(func_80A2E3BC)     # t1 = 80A30000
    addiu   t0, t0, %lo(func_80A2F0A0) # t0 = 80A2F0A0
    addiu   t1, t1, %lo(func_80A2E3BC) # t1 = 80A2E3BC
    mfc1    a1, $f0
    sw      t0, 0x0274(s1)             # 00000274
    sw      t1, 0x013C(s1)             # 0000013C
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
    or      v0, s1, $zero              # v0 = 00000000
lbl_80A2D350:
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A2E2F0
    sw      v0, 0x0038($sp)
    lw      v0, 0x0038($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     s0, $at, lbl_80A2D350
    swc1    $f20, 0x01A0(v0)           # 000001A4
    swc1    $f20, 0x0160(s1)           # 00000160
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D384:
    lui     t2, %hi(func_80A2E8E8)     # t2 = 80A30000
    lui     t3, %hi(func_80A2D6E0)     # t3 = 80A30000
    addiu   t2, t2, %lo(func_80A2E8E8) # t2 = 80A2E8E8
    addiu   t3, t3, %lo(func_80A2D6E0) # t3 = 80A2D6E0
    lui     a1, 0x3E69                 # a1 = 3E690000
    sw      t2, 0x0274(s1)             # 00000274
    sw      t3, 0x013C(s1)             # 0000013C
    ori     a1, a1, 0x78D5             # a1 = 3E6978D5
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D3B4:
    lui     t4, %hi(func_80A2EB34)     # t4 = 80A30000
    lui     t5, %hi(func_80A2D86C)     # t5 = 80A30000
    addiu   t4, t4, %lo(func_80A2EB34) # t4 = 80A2EB34
    addiu   t5, t5, %lo(func_80A2D86C) # t5 = 80A2D86C
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    sw      t4, 0x0274(s1)             # 00000274
    sw      t5, 0x013C(s1)             # 0000013C
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    swc1    $f20, 0x015C(s1)           # 0000015C
    swc1    $f20, 0x0160(s1)           # 00000160
    swc1    $f18, 0x0154(s1)           # 00000154
    swc1    $f18, 0x0158(s1)           # 00000158
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D400:
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     t6, %hi(func_80A2EE94)     # t6 = 80A30000
    lui     t7, %hi(func_80A2DA14)     # t7 = 80A30000
    addiu   t6, t6, %lo(func_80A2EE94) # t6 = 80A2EE94
    addiu   t7, t7, %lo(func_80A2DA14) # t7 = 80A2DA14
    mfc1    a1, $f20
    sw      t6, 0x0274(s1)             # 00000274
    sw      t7, 0x013C(s1)             # 0000013C
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lw      t8, 0x004C($sp)
    addiu   t9, t8, 0xFFFD             # t9 = FFFFFFFD
    sb      t9, 0x0283(s1)             # 00000283
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D43C:
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     t0, %hi(func_80A2EE94)     # t0 = 80A30000
    addiu   t0, t0, %lo(func_80A2EE94) # t0 = 80A2EE94
    mfc1    a1, $f20
    sw      t0, 0x0274(s1)             # 00000274
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lui     t1, %hi(func_80A2DDC8)     # t1 = 80A30000
    addiu   t1, t1, %lo(func_80A2DDC8) # t1 = 80A2DDC8
    sw      t1, 0x013C(s1)             # 0000013C
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D46C:
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     t2, %hi(func_80A2EE94)     # t2 = 80A30000
    addiu   t2, t2, %lo(func_80A2EE94) # t2 = 80A2EE94
    mfc1    a1, $f20
    sw      t2, 0x0274(s1)             # 00000274
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lui     t3, %hi(func_80A2E134)     # t3 = 80A30000
    addiu   t3, t3, %lo(func_80A2E134) # t3 = 80A2E134
    sw      t3, 0x013C(s1)             # 0000013C
    swc1    $f20, 0x0064(s1)           # 00000064
    swc1    $f20, 0x0060(s1)           # 00000060
    swc1    $f20, 0x005C(s1)           # 0000005C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28A5          # a1 = 000028A5
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D4B4:
    mtc1    $zero, $f20                # $f20 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    a1, $f20
    jal     func_80020F88
    nop
    lui     t4, %hi(func_80A2E7F8)     # t4 = 80A30000
    lui     t5, %hi(func_80A2F31C)     # t5 = 80A30000
    addiu   t4, t4, %lo(func_80A2E7F8) # t4 = 80A2E7F8
    addiu   t5, t5, %lo(func_80A2F31C) # t5 = 80A2F31C
    sw      t4, 0x013C(s1)             # 0000013C
    sw      t5, 0x0274(s1)             # 00000274
    lw      a0, 0x005C($sp)
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D4FC:
    lui     a1, 0x3E0F                 # a1 = 3E0F0000
    ori     a1, a1, 0x5C29             # a1 = 3E0F5C29
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(func_80A2E6AC)     # a1 = 80A30000
    addiu   a1, a1, %lo(func_80A2E6AC) # a1 = 80A2E6AC
    jal     func_80A2D260
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(func_80A2F71C)     # t7 = 80A30000
    addiu   t7, t7, %lo(func_80A2F71C) # t7 = 80A2F71C
    sw      t7, 0x0134(s1)             # 00000134
    sb      $zero, 0x0283(s1)          # 00000283
    beq     $zero, $zero, lbl_80A2D584
    lw      v0, 0x004C($sp)
var_80A2D534:
    lw      t8, 0x0004(s1)             # 00000004
    lhu     t2, 0x027C(s1)             # 0000027C
    lui     t0, %hi(func_80A2EE94)     # t0 = 80A30000
    lui     t1, %hi(func_80A2DCF8)     # t1 = 80A30000
    addiu   t0, t0, %lo(func_80A2EE94) # t0 = 80A2EE94
    addiu   t1, t1, %lo(func_80A2DCF8) # t1 = 80A2DCF8
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    ori     t9, t8, 0x0020             # t9 = 00000020
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t9, 0x0004(s1)             # 00000004
    sw      t0, 0x0274(s1)             # 00000274
    sw      t1, 0x013C(s1)             # 0000013C
    sh      t3, 0x027C(s1)             # 0000027C
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lw      t4, 0x004C($sp)
    addiu   t5, t4, 0xFFF2             # t5 = FFFFFFF2
    sb      t5, 0x0283(s1)             # 00000283
    lw      v0, 0x004C($sp)
lbl_80A2D584:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80A2D5B0
    addiu   s0, s1, 0x0140             # s0 = 00000140
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80A2D5B8
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v0, $at, lbl_80A2D5C0
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    beq     $zero, $zero, lbl_80A2D5C8
    lwc1    $f4, 0x0024(s1)            # 00000024
lbl_80A2D5B0:
    beq     $zero, $zero, lbl_80A2D5C4
    sb      $zero, 0x0283(s1)          # 00000283
lbl_80A2D5B8:
    beq     $zero, $zero, lbl_80A2D5C4
    sb      t6, 0x0283(s1)             # 00000283
lbl_80A2D5C0:
    sb      t7, 0x0283(s1)             # 00000283
lbl_80A2D5C4:
    lwc1    $f4, 0x0024(s1)            # 00000024
lbl_80A2D5C8:
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f16, 0x002C(s1)           # 0000002C
    trunc.w.s $f6, $f4
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sll     a1, a1, 16
    mfc1    a3, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    jal     func_80065BCC
    or      a0, s0, $zero              # a0 = 00000140
    lw      a0, 0x005C($sp)
    or      a2, s0, $zero              # a2 = 00000140
    jal     func_800665B0
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    sw      v0, 0x0150(s1)             # 00000150
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A2D654:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x0150(t6)             # 00000150
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2D688:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x0282(a2)             # 00000282
    sw      a2, 0x0018($sp)
    jal     func_80081688
    addu    a0, a3, $at
    beq     v0, $zero, lbl_80A2D6D0
    lw      a2, 0x0018($sp)
    lbu     t6, 0x0282(a2)             # 00000282
    lw      t7, 0x0274(a2)             # 00000274
    lw      t8, 0x013C(a2)             # 0000013C
    sb      t6, 0x001E(a2)             # 0000001E
    sw      t7, 0x0134(a2)             # 00000134
    sw      t8, 0x0278(a2)             # 00000278
lbl_80A2D6D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2D6E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a2)             # 00001D74
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x2047          # a1 = 00002047
    slti    $at, v0, 0x00D7
    bnel    $at, $zero, lbl_80A2D71C
    slti    $at, v0, 0x0109
    jal     func_80023108
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lhu     v0, 0x1D74(a2)             # 00001D74
    slti    $at, v0, 0x0109
lbl_80A2D71C:
    bne     $at, $zero, lbl_80A2D734
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x209A          # a1 = 0000209A
    jal     func_80023108
    sw      a2, 0x001C($sp)
    lw      a2, 0x001C($sp)
lbl_80A2D734:
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    beql    t6, $zero, lbl_80A2D76C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1DA4(a2)             # 00001DA4
    beql    v0, $zero, lbl_80A2D76C
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0018($sp)
    bne     t7, $at, lbl_80A2D768
    lui     a1, %hi(func_80A2D778)     # a1 = 80A30000
    jal     func_80A2D260
    addiu   a1, a1, %lo(func_80A2D778) # a1 = 80A2D778
lbl_80A2D768:
    lw      $ra, 0x0014($sp)
lbl_80A2D76C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2D778:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x1D74(t6)             # 00001D74
    slti    $at, v0, 0x0161
    beql    $at, $zero, lbl_80A2D7C4
    addiu   $at, $zero, 0x0156         # $at = 00000156
    jal     func_80023108
    addiu   a1, $zero, 0x2047          # a1 = 00002047
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80023108
    addiu   a1, $zero, 0x209A          # a1 = 0000209A
    lw      t7, 0x003C($sp)
    lhu     v0, 0x1D74(t7)             # 00001D74
    addiu   $at, $zero, 0x0156         # $at = 00000156
lbl_80A2D7C4:
    bnel    v0, $at, lbl_80A2D7D8
    lhu     v0, 0x027E(s0)             # 0000027E
    jal     func_800C4C84
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lhu     v0, 0x027E(s0)             # 0000027E
lbl_80A2D7D8:
    addiu   $at, $zero, 0x0027         # $at = 00000027
    bne     v0, $at, lbl_80A2D838
    or      v1, v0, $zero              # v1 = 00000000
    jal     func_80064738
    addiu   a0, $zero, 0x289C          # a0 = 0000289C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x003C($sp)
    add.s   $f8, $f4, $f6
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a2, $zero, 0x00F5          # a2 = 000000F5
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    lhu     v0, 0x027E(s0)             # 0000027E
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A2D838:
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bnel    v1, $at, lbl_80A2D854
    addiu   t0, v0, 0x0001             # t0 = 00000001
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x027E(s0)             # 0000027E
    addiu   t0, v0, 0x0001             # t0 = 00000001
lbl_80A2D854:
    sh      t0, 0x027E(s0)             # 0000027E
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A2D86C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     v0, 0x027E(s0)             # 0000027E
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_80A2D8AC
    or      v1, v0, $zero              # v1 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    sll     t7, t6,  2
    lui     $at, %hi(var_80A2FA2C)     # $at = 80A30000
    addu    $at, $at, t7
    lwc1    $f4, %lo(var_80A2FA2C)($at)
    beq     $zero, $zero, lbl_80A2D978
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80A2D8AC:
    slti    $at, v1, 0x000F
    beq     $at, $zero, lbl_80A2D900
    lui     $at, %hi(var_80A2FB50)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FB50)($at)
    lwc1    $f6, 0x0050(s0)            # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0050(s0)           # 00000050
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lui     a1, 0x3F19                 # a1 = 3F190000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    jal     func_8006385C
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lhu     v0, 0x027E(s0)             # 0000027E
    beq     $zero, $zero, lbl_80A2D978
    swc1    $f16, 0x0158(s0)           # 00000158
lbl_80A2D900:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v1, $at, lbl_80A2D94C
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    lwc1    $f18, 0x0024(s0)           # 00000024
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   a0, a2, 0x1C24             # a0 = 3CA31C24
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0101          # a3 = 00000101
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    lui     a2, 0x3CA3                 # a2 = 3CA30000
lbl_80A2D94C:
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    jal     func_8006385C
    lui     a1, 0x3F80                 # a1 = 3F800000
    lhu     v0, 0x027E(s0)             # 0000027E
    lui     $at, %hi(var_80A2FA2C)     # $at = 80A30000
    andi    t9, v0, 0x0001             # t9 = 00000000
    sll     t0, t9,  2
    addu    $at, $at, t0
    lwc1    $f8, %lo(var_80A2FA2C)($at)
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80A2D978:
    addiu   t1, v0, 0x0001             # t1 = 00000001
    sh      t1, 0x027E(s0)             # 0000027E
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A2D994:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0280(a0)             # 00000280
    lhu     v0, 0x027E(a0)             # 0000027E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_80A2D9C4
    sh      t7, 0x0280(a0)             # 00000280
    addiu   t8, v0, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80A2DA04
    sh      t8, 0x027E(a0)             # 0000027E
lbl_80A2D9C4:
    lwc1    $f0, 0x0050(a0)            # 00000050
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80A2FB54)     # $at = 80A30000
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80A2D9FC
    nop
    lwc1    $f6, %lo(var_80A2FB54)($at)
    sub.s   $f8, $f0, $f6
    swc1    $f8, 0x0050(a0)            # 00000050
    jal     func_80020F88
    lw      a1, 0x0050(a0)             # 00000050
    beq     $zero, $zero, lbl_80A2DA08
    lw      $ra, 0x0014($sp)
lbl_80A2D9FC:
    jal     func_80020EB4
    nop
lbl_80A2DA04:
    lw      $ra, 0x0014($sp)
lbl_80A2DA08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2DA14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, %hi(var_80A2FB58)     # $at = 80A30000
    lwc1    $f2, %lo(var_80A2FB58)($at)
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lwc1    $f0, 0x0050(a0)            # 00000050
    lw      v0, 0x009C(a2)             # 0000009C
    lui     $at, %hi(var_80A2FB5C)     # $at = 80A30000
    c.lt.s  $f0, $f2
    andi    t6, v0, 0x0001             # t6 = 00000000
    bc1f    lbl_80A2DA54
    nop
    lwc1    $f4, %lo(var_80A2FB5C)($at)
    add.s   $f6, $f0, $f4
    beq     $zero, $zero, lbl_80A2DA6C
    swc1    $f6, 0x0050(a0)            # 00000050
lbl_80A2DA54:
    beq     t6, $zero, lbl_80A2DA68
    lui     $at, %hi(var_80A2FB60)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FB60)($at)
    beq     $zero, $zero, lbl_80A2DA6C
    swc1    $f8, 0x0050(a0)            # 00000050
lbl_80A2DA68:
    swc1    $f2, 0x0050(a0)            # 00000050
lbl_80A2DA6C:
    lbu     t7, 0x1D6C(a2)             # 00001D6C
    beql    t7, $zero, lbl_80A2DAC0
    lw      a1, 0x0050(a0)             # 00000050
    lw      v0, 0x1DA4(a2)             # 00001DA4
    beql    v0, $zero, lbl_80A2DAC0
    lw      a1, 0x0050(a0)             # 00000050
    lhu     t8, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a1, %hi(func_80A2D994)     # a1 = 80A30000
    bne     t8, $at, lbl_80A2DABC
    addiu   a1, a1, %lo(func_80A2D994) # a1 = 80A2D994
    sw      a0, 0x0018($sp)
    jal     func_80A2D260
    sw      a2, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A2FB64)     # $at = 80A30000
    lwc1    $f2, %lo(var_80A2FB64)($at)
    lw      a2, 0x001C($sp)
    sh      $zero, 0x027E(a0)          # 0000027E
    swc1    $f2, 0x0050(a0)            # 00000050
lbl_80A2DABC:
    lw      a1, 0x0050(a0)             # 00000050
lbl_80A2DAC0:
    sw      a2, 0x001C($sp)
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lhu     t9, 0x0280(a0)             # 00000280
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0280(a0)             # 00000280
    lh      t1, 0x00A4(a2)             # 000000A4
    bnel    t1, $at, lbl_80A2DB20
    lw      $ra, 0x0014($sp)
    lh      t3, 0x001C(a0)             # 0000001C
    lui     t5, %hi(var_80A2FA46)      # t5 = 80A30000
    lhu     t2, 0x1D74(a2)             # 00001D74
    sll     t4, t3,  1
    addu    t5, t5, t4
    lhu     t5, %lo(var_80A2FA46)(t5)
    slt     $at, t2, t5
    beql    $at, $zero, lbl_80A2DB20
    lw      $ra, 0x0014($sp)
    jal     func_8002313C
    addiu   a1, $zero, 0x2047          # a1 = 00002047
    lw      $ra, 0x0014($sp)
lbl_80A2DB20:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2DB2C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0054($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_80A2FB68)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A2FB68)($at)
    swc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f6, 0x0048($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_80026D64
    swc1    $f8, 0x004C($sp)
    trunc.w.s $f10, $f0
    lui     $at, %hi(var_80A2FB6C)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A2FB6C)($at)
    mfc1    t7, $f10
    jal     func_80026D64
    sh      t7, 0x0042($sp)
    trunc.w.s $f16, $f0
    mfc1    v0, $f16
    nop
    sll     a0, v0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      v0, 0x0040($sp)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0042($sp)
    lwc1    $f18, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    mul.s   $f4, $f0, $f18
    lui     $at, %hi(var_80A2FA58)     # $at = 80A30000
    lh      a0, 0x0040($sp)
    mul.s   $f8, $f4, $f6
    jal     func_80063684              # coss?
    swc1    $f8, %lo(var_80A2FA58)($at)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0042($sp)
    lwc1    $f10, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mul.s   $f16, $f0, $f10
    lui     $at, %hi(var_80A2FA60)     # $at = 80A30000
    lh      a0, 0x0042($sp)
    mul.s   $f4, $f16, $f18
    jal     func_800636C4              # sins?
    swc1    $f4, %lo(var_80A2FA60)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_80A2FA5C)     # $at = 80A30000
    mul.s   $f8, $f0, $f6
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lui     v0, %hi(var_80A2FA18)      # v0 = 80A30000
    addiu   v0, v0, %lo(var_80A2FA18)  # v0 = 80A2FA18
    lw      a0, 0x0054($sp)
    lui     a2, %hi(var_80A2FA58)      # a2 = 80A30000
    lui     a3, %hi(var_80A2FA64)      # a3 = 80A30000
    swc1    $f8, %lo(var_80A2FA5C)($at)
    lui     $at, %hi(var_80A2FA68)     # $at = 80A30000
    swc1    $f10, %lo(var_80A2FA68)($at)
    lbu     t9, 0x0283(s0)             # 00000283
    lui     $at, %hi(var_80A2FA74)     # $at = 80A30000
    addiu   a3, a3, %lo(var_80A2FA64)  # a3 = 80A2FA64
    multu   t9, v1
    addiu   a2, a2, %lo(var_80A2FA58)  # a2 = 80A2FA58
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    mflo    t0
    addu    t1, v0, t0
    lbu     t2, 0x0000(t1)             # 00000000
    sb      t2, %lo(var_80A2FA74)($at)
    lbu     t3, 0x0283(s0)             # 00000283
    multu   t3, v1
    lui     t3, %hi(var_80A2FA70)      # t3 = 80A30000
    addiu   t3, t3, %lo(var_80A2FA70)  # t3 = 80A2FA70
    mflo    t4
    addu    t5, v0, t4
    lbu     t6, 0x0001(t5)             # 00000001
    lui     t4, %hi(var_80A2FA74)      # t4 = 80A30000
    addiu   t4, t4, %lo(var_80A2FA74)  # t4 = 80A2FA74
    sb      t6, %lo(var_80A2FA75)($at)
    lbu     t7, 0x0283(s0)             # 00000283
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    multu   t7, v1
    mflo    t8
    addu    t9, v0, t8
    lbu     t0, 0x0002(t9)             # 00000002
    sb      t0, %lo(var_80A2FA76)($at)
    lh      t1, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    bnel    t1, $at, lbl_80A2DCB8
    lhu     t2, 0x1D74(a0)             # 00001D74
    beq     $zero, $zero, lbl_80A2DCD0
    addiu   v0, $zero, 0x1770          # v0 = 00001770
    lhu     t2, 0x1D74(a0)             # 00001D74
lbl_80A2DCB8:
    addiu   v0, $zero, 0x4650          # v0 = 00004650
    slti    $at, t2, 0x01A3
    beq     $at, $zero, lbl_80A2DCD0
    nop
    beq     $zero, $zero, lbl_80A2DCD0
    addiu   v0, $zero, 0x1770          # v0 = 00001770
lbl_80A2DCD0:
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      v0, 0x0018($sp)
    jal     func_8001C7E4
    sw      t5, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80A2DCF8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lhu     t6, 0x0280(a0)             # 00000280
    lh      a2, 0x001C(a0)             # 0000001C
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0280(a0)             # 00000280
    addiu   a2, a2, 0xFFF2             # a2 = FFFFFFF2
    sw      a2, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    lw      a1, 0x0024($sp)
    lw      a2, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lbu     t8, 0x1D6C(a1)             # 00001D6C
    sll     t9, a2,  2
    addu    v0, a1, t9
    beql    t8, $zero, lbl_80A2DDB0
    lhu     t7, 0x027C(a0)             # 0000027C
    lw      t0, 0x1D8C(v0)             # 00001D8C
    beql    t0, $zero, lbl_80A2DDB0
    lhu     t7, 0x027C(a0)             # 0000027C
    sw      v0, 0x0018($sp)
    jal     func_80A2F8D4
    sw      a0, 0x0020($sp)
    lw      v0, 0x0018($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x0020($sp)
    lw      t1, 0x1D8C(v0)             # 00001D8C
    lw      a1, 0x0024($sp)
    lhu     t2, 0x0000(t1)             # 00000000
    bnel    t2, $at, lbl_80A2DDA0
    lhu     t5, 0x027C(a0)             # 0000027C
    lhu     t3, 0x027C(a0)             # 0000027C
    andi    t4, t3, 0xFFFE             # t4 = 00000000
    jal     func_80A2DB2C
    sh      t4, 0x027C(a0)             # 0000027C
    beq     $zero, $zero, lbl_80A2DDBC
    lw      $ra, 0x0014($sp)
    lhu     t5, 0x027C(a0)             # 0000027C
lbl_80A2DDA0:
    ori     t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80A2DDB8
    sh      t6, 0x027C(a0)             # 0000027C
    lhu     t7, 0x027C(a0)             # 0000027C
lbl_80A2DDB0:
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x027C(a0)             # 0000027C
lbl_80A2DDB8:
    lw      $ra, 0x0014($sp)
lbl_80A2DDBC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A2DDC8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    lui     $at, %hi(var_80A2FB70)     # $at = 80A30000
    lwc1    $f2, %lo(var_80A2FB70)($at)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lwc1    $f0, 0x0050(s0)            # 00000050
    lw      v0, 0x009C(a1)             # 0000009C
    lui     $at, %hi(var_80A2FB74)     # $at = 80A30000
    c.lt.s  $f0, $f2
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0001             # t6 = 00000000
    bc1f    lbl_80A2DE10
    nop
    lwc1    $f4, %lo(var_80A2FB74)($at)
    add.s   $f6, $f0, $f4
    beq     $zero, $zero, lbl_80A2DE28
    swc1    $f6, 0x0050(s0)            # 00000050
lbl_80A2DE10:
    beq     t6, $zero, lbl_80A2DE24
    lui     $at, %hi(var_80A2FB78)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FB78)($at)
    beq     $zero, $zero, lbl_80A2DE28
    swc1    $f8, 0x0050(s0)            # 00000050
lbl_80A2DE24:
    swc1    $f2, 0x0050(s0)            # 00000050
lbl_80A2DE28:
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lhu     t7, 0x0280(s0)             # 00000280
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    v0, t8, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x0030
    bne     $at, $zero, lbl_80A2DE58
    sh      t8, 0x0280(s0)             # 00000280
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A2DEEC
    lbu     t3, 0x0283(s0)             # 00000283
lbl_80A2DE58:
    slti    $at, v0, 0x0028
    bne     $at, $zero, lbl_80A2DEE8
    addiu   t9, v0, 0xFFD9             # t9 = FFFFFFD9
    mtc1    t9, $f10                   # $f10 = NaN
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    cvt.s.w $f16, $f10
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f4                   # $f4 = 9.00
    lui     $at, %hi(var_80A2FB7C)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FB7C)($at)
    lwc1    $f2, 0x0024(s0)            # 00000024
    sub.s   $f6, $f4, $f16
    lui     $at, 0x4198                # $at = 41980000
    lwc1    $f12, 0x0028(s0)           # 00000028
    sub.s   $f10, $f8, $f2
    lwc1    $f14, 0x002C(s0)           # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    div.s   $f0, $f18, $f6
    mtc1    $at, $f6                   # $f6 = 19.00
    lui     $at, %hi(var_80A2FB80)     # $at = 80A30000
    addiu   a1, $zero, 0x30A7          # a1 = 000030A7
    sub.s   $f8, $f6, $f12
    mul.s   $f4, $f10, $f0
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f2, $f4
    add.s   $f4, $f12, $f10
    swc1    $f18, 0x0024(s0)           # 00000024
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f18, %lo(var_80A2FB80)($at)
    sub.s   $f6, $f18, $f14
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f14, $f8
    jal     func_80022FD0
    swc1    $f10, 0x002C(s0)           # 0000002C
lbl_80A2DEE8:
    lbu     t3, 0x0283(s0)             # 00000283
lbl_80A2DEEC:
    lui     t5, %hi(var_80A2FA18)      # t5 = 80A30000
    lwc1    $f4, 0x0024(s0)            # 00000024
    sll     t4, t3,  2
    addiu   t5, t5, %lo(var_80A2FA18)  # t5 = 80A2FA18
    subu    t4, t4, t3
    addu    v0, t4, t5
    trunc.w.s $f18, $f4
    lwc1    $f6, 0x0028(s0)            # 00000028
    lbu     t6, 0x0000(v0)             # 00000000
    lbu     t7, 0x0001(v0)             # 00000001
    lbu     t8, 0x0002(v0)             # 00000002
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f8, $f6
    mfc1    a1, $f18
    lui     $at, 0x457A                # $at = 457A0000
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    lwc1    $f18, 0x0050(s0)           # 00000050
    mtc1    $at, $f6                   # $f6 = 4000.00
    mfc1    a2, $f8
    trunc.w.s $f4, $f10
    mul.s   $f8, $f18, $f6
    sll     a1, a1, 16
    sll     a2, a2, 16
    mfc1    a3, $f4
    sra     a2, a2, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    trunc.w.s $f10, $f8
    sra     a3, a3, 16
    addiu   a0, s0, 0x0140             # a0 = 00000140
    mfc1    t0, $f10
    jal     func_80065BCC
    sw      t0, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A2DF8C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s8, 0x0078($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s4, 0x0068($sp)
    sw      s3, 0x0064($sp)
    sw      s1, 0x005C($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lui     $at, %hi(var_80A2FB84)     # $at = 80A30000
    lwc1    $f28, %lo(var_80A2FB84)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f26                  # $f26 = 5.00
    lwc1    $f4, 0x0050(s0)            # 00000050
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f24                  # $f24 = -10.00
    lui     $at, 0x4000                # $at = 40000000
    lui     s7, %hi(var_80A2FA94)      # s7 = 80A30000
    lui     s6, %hi(var_80A2FA90)      # s6 = 80A30000
    lui     s5, %hi(var_80A2FA84)      # s5 = 80A30000
    lui     s4, %hi(var_80A2FA78)      # s4 = 80A30000
    mtc1    $at, $f22                  # $f22 = 2.00
    mtc1    $zero, $f30                # $f30 = 0.00
    mul.s   $f20, $f4, $f6
    addiu   s4, s4, %lo(var_80A2FA78)  # s4 = 80A2FA78
    addiu   s5, s5, %lo(var_80A2FA84)  # s5 = 80A2FA84
    addiu   s6, s6, %lo(var_80A2FA90)  # s6 = 80A2FA90
    addiu   s7, s7, %lo(var_80A2FA94)  # s7 = 80A2FA94
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x0008          # s8 = 00000008
    addiu   s3, $sp, 0x008C            # s3 = FFFFFFF4
lbl_80A2E038:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f8, 0x0024(s0)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x008C($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0090($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mov.s   $f12, $f22
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0094($sp)
    lui     $at, %hi(var_80A2FA78)     # $at = 80A30000
    swc1    $f0, %lo(var_80A2FA78)($at)
    jal     func_80026D64
    mov.s   $f12, $f24
    sub.s   $f8, $f0, $f26
    lui     $at, %hi(var_80A2FA7C)     # $at = 80A30000
    mov.s   $f12, $f22
    mul.s   $f10, $f8, $f28
    jal     func_80026D90
    swc1    $f10, %lo(var_80A2FA7C)($at)
    lui     $at, %hi(var_80A2FA80)     # $at = 80A30000
    swc1    $f0, %lo(var_80A2FA80)($at)
    lui     $at, %hi(var_80A2FA88)     # $at = 80A30000
    addiu   t6, $zero, 0x01F4          # t6 = 000001F4
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    swc1    $f30, %lo(var_80A2FA88)($at)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = 80A2FA78
    or      a3, s5, $zero              # a3 = 80A2FA84
    sw      s6, 0x0010($sp)
    jal     func_8001C7E4
    sw      s7, 0x0014($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s8, lbl_80A2E038
    nop
    lw      $ra, 0x007C($sp)
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
    lw      s7, 0x0074($sp)
    lw      s8, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80A2E134:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     t7, 0x0280(s0)             # 00000280
    lw      t6, 0x0034($sp)
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    v0, t8, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x0019
    lw      v1, 0x009C(t6)             # 0000009C
    bne     $at, $zero, lbl_80A2E178
    sh      t8, 0x0280(s0)             # 00000280
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A2E244
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A2E178:
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80A2E220
    andi    t9, v1, 0x0001             # t9 = 00000000
    lui     $at, %hi(var_80A2FB88)     # $at = 80A30000
    jal     func_80026D90
    lwc1    $f12, %lo(var_80A2FB88)($at)
    lwc1    $f4, 0x005C(s0)            # 0000005C
    lui     $at, %hi(var_80A2FB8C)     # $at = 80A30000
    lwc1    $f8, 0x0060(s0)            # 00000060
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, %lo(var_80A2FB8C)($at)
    lui     $at, %hi(var_80A2FB90)     # $at = 80A30000
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0060(s0)           # 00000060
    jal     func_80026D90
    lwc1    $f12, %lo(var_80A2FB90)($at)
    lwc1    $f18, 0x0064(s0)           # 00000064
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x005C(s0)            # 0000005C
    add.s   $f4, $f18, $f0
    lwc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0064(s0)            # 00000064
    lwc1    $f8, 0x0064(s0)            # 00000064
    lwc1    $f6, 0x002C(s0)            # 0000002C
    swc1    $f10, 0x0024(s0)           # 00000024
    add.s   $f4, $f16, $f18
    lui     $at, %hi(var_80A2FB94)     # $at = 80A30000
    lwc1    $f16, 0x0050(s0)           # 00000050
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f18, %lo(var_80A2FB94)($at)
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0050(s0)            # 00000050
    jal     func_80A2DF8C
    lw      a1, 0x0034($sp)
    beq     $zero, $zero, lbl_80A2E244
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A2E220:
    beq     t9, $zero, lbl_80A2E238
    lui     $at, %hi(var_80A2FB9C)     # $at = 80A30000
    lui     $at, %hi(var_80A2FB98)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A2FB98)($at)
    beq     $zero, $zero, lbl_80A2E240
    swc1    $f6, 0x0050(s0)            # 00000050
lbl_80A2E238:
    lwc1    $f8, %lo(var_80A2FB9C)($at)
    swc1    $f8, 0x0050(s0)            # 00000050
lbl_80A2E240:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A2E244:
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lbu     t3, 0x0283(s0)             # 00000283
    lui     t5, %hi(var_80A2FA18)      # t5 = 80A30000
    lwc1    $f10, 0x0024(s0)           # 00000024
    sll     t4, t3,  2
    addiu   t5, t5, %lo(var_80A2FA18)  # t5 = 80A2FA18
    subu    t4, t4, t3
    addu    v0, t4, t5
    trunc.w.s $f16, $f10
    lbu     t6, 0x0000(v0)             # 00000000
    lbu     t7, 0x0001(v0)             # 00000001
    lbu     t8, 0x0002(v0)             # 00000002
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mfc1    a1, $f16
    lui     $at, 0x457A                # $at = 457A0000
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    lwc1    $f10, 0x0050(s0)           # 00000050
    mtc1    $at, $f16                  # $f16 = 4000.00
    trunc.w.s $f4, $f18
    sll     a1, a1, 16
    mul.s   $f18, $f10, $f16
    trunc.w.s $f8, $f6
    mfc1    a2, $f4
    sra     a1, a1, 16
    addiu   a0, s0, 0x0140             # a0 = 00000140
    mfc1    a3, $f8
    sll     a2, a2, 16
    trunc.w.s $f4, $f18
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    mfc1    t0, $f4
    jal     func_80065BCC
    sw      t0, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A2E2F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    mtc1    a1, $f4                    # $f4 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    cvt.s.w $f6, $f4
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lw      t6, 0x0020($sp)
    sll     t7, a1,  2
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f10, $f6, $f8
    addu    s0, t6, t7
    mtc1    $at, $f12                  # $f12 = 100.00
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0164(s0)           # 00000164
    jal     func_80026D64
    sw      a1, 0x0024($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    add.s   $f6, $f0, $f4
    jal     func_80026D64
    swc1    $f6, 0x01A4(s0)            # 000001A4
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    sub.s   $f10, $f8, $f0
    jal     func_80026D64
    swc1    $f10, 0x01E4(s0)           # 000001E4
    trunc.w.s $f16, $f0
    lw      t0, 0x0020($sp)
    lw      t1, 0x0024($sp)
    lui     $at, %hi(var_80A2FBA0)     # $at = 80A30000
    mfc1    t9, $f16
    addu    t2, t0, t1
    sb      t9, 0x0264(t2)             # 00000264
    jal     func_80026D64
    lwc1    $f12, %lo(var_80A2FBA0)($at)
    lui     $at, %hi(var_80A2FBA4)     # $at = 80A30000
    lwc1    $f18, %lo(var_80A2FBA4)($at)
    add.s   $f4, $f0, $f18
    swc1    $f4, 0x0224(s0)            # 00000224
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A2E3BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s2, 0x0024($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s1, 0x0020($sp)
    sdc1    $f20, 0x0010($sp)
    lbu     t6, 0x1D6C(s0)             # 00001D6C
    beql    t6, $zero, lbl_80A2E438
    lwc1    $f10, 0x0160(s2)           # 00000160
    lw      v0, 0x1D90(s0)             # 00001D90
    beql    v0, $zero, lbl_80A2E438
    lwc1    $f10, 0x0160(s2)           # 00000160
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t7, $at, lbl_80A2E424
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0160(s2)            # 00000160
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x20BC          # a1 = 000020BC
    add.s   $f8, $f4, $f6
    jal     func_80023108
    swc1    $f8, 0x0160(s2)            # 00000160
lbl_80A2E424:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A2F8D4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f10, 0x0160(s2)           # 00000160
lbl_80A2E438:
    sll     t0, $zero,  2
    addu    s0, s2, t0
    trunc.w.s $f16, $f10
    or      s1, $zero, $zero           # s1 = 00000000
    mfc1    t9, $f16
    nop
    blezl   t9, lbl_80A2E4C0
    lhu     t3, 0x027E(s2)             # 0000027E
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   s3, $zero, 0x0010          # s3 = 00000010
    lwc1    $f18, 0x01A4(s0)           # 000001A4
lbl_80A2E464:
    lwc1    $f4, 0x01E4(s0)            # 000001E4
    or      a0, s2, $zero              # a0 = 00000000
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x01A4(s0)            # 000001A4
    lwc1    $f8, 0x01A4(s0)            # 000001A4
    c.lt.s  $f8, $f20
    nop
    bc1fl   lbl_80A2E494
    lwc1    $f10, 0x0160(s2)           # 00000160
    jal     func_80A2E2F0
    or      a1, s1, $zero              # a1 = 00000000
    lwc1    $f10, 0x0160(s2)           # 00000160
lbl_80A2E494:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0004             # s0 = 00000004
    trunc.w.s $f16, $f10
    mfc1    t2, $f16
    nop
    slt     $at, s1, t2
    beql    $at, $zero, lbl_80A2E4C0
    lhu     t3, 0x027E(s2)             # 0000027E
    bnel    s1, s3, lbl_80A2E464
    lwc1    $f18, 0x01A4(s0)           # 000001A8
    lhu     t3, 0x027E(s2)             # 0000027E
lbl_80A2E4C0:
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x027E(s2)             # 0000027E
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A2E4E8:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s8, 0x0078($sp)
    sw      s1, 0x005C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s4, 0x0068($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f30                  # $f30 = 2.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f28                  # $f28 = 4.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f24                  # $f24 = 30.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f22                  # $f22 = 8.00
    lui     $at, 0x4170                # $at = 41700000
    lui     s6, %hi(var_80A2FAB4)      # s6 = 80A30000
    lui     s5, %hi(var_80A2FAB0)      # s5 = 80A30000
    lui     s4, %hi(var_80A2FAA4)      # s4 = 80A30000
    lui     s3, %hi(var_80A2FA98)      # s3 = 80A30000
    mtc1    $at, $f20                  # $f20 = 15.00
    addiu   s3, s3, %lo(var_80A2FA98)  # s3 = 80A2FA98
    addiu   s4, s4, %lo(var_80A2FAA4)  # s4 = 80A2FAA4
    addiu   s5, s5, %lo(var_80A2FAB0)  # s5 = 80A2FAB0
    addiu   s6, s6, %lo(var_80A2FAB4)  # s6 = 80A2FAB4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $zero, 0x0096          # s7 = 00000096
    addiu   s2, $sp, 0x008C            # s2 = FFFFFFF4
lbl_80A2E590:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x008C($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    add.s   $f16, $f10, $f24
    jal     func_80026D90
    swc1    $f16, 0x0090($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    mov.s   $f12, $f22
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0094($sp)
    add.s   $f6, $f0, $f26
    lui     $at, %hi(var_80A2FA98)     # $at = 80A30000
    mov.s   $f12, $f28
    jal     func_80026D90
    swc1    $f6, %lo(var_80A2FA98)($at)
    lui     $at, %hi(var_80A2FA9C)     # $at = 80A30000
    swc1    $f0, %lo(var_80A2FA9C)($at)
    jal     func_80026D90
    mov.s   $f12, $f22
    add.s   $f8, $f0, $f30
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_80A2FAA0)     # $at = 80A30000
    swc1    $f8, %lo(var_80A2FAA0)($at)
    lui     $at, %hi(var_80A2FAA8)     # $at = 80A30000
    swc1    $f10, %lo(var_80A2FAA8)($at)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    nop
    trunc.w.s $f16, $f0
    addiu   t6, $zero, 0x03E8          # t6 = 000003E8
    sw      t6, 0x0018($sp)
    or      a0, s8, $zero              # a0 = 00000000
    mfc1    t8, $f16
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = 80A2FA98
    addiu   t9, t8, 0x003C             # t9 = 0000003C
    sw      t9, 0x001C($sp)
    or      a3, s4, $zero              # a3 = 80A2FAA4
    sw      s5, 0x0010($sp)
    jal     func_8001C7E4
    sw      s6, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s7, lbl_80A2E590
    nop
    lw      $ra, 0x007C($sp)
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
    lw      s7, 0x0074($sp)
    lw      s8, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80A2E6AC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x30B4          # a1 = 000030B4
    lhu     t6, 0x0280(s0)             # 00000280
    addiu   t7, t6, 0x0001             # t7 = 00000001
    andi    t8, t7, 0xFFFF             # t8 = 00000001
    slti    $at, t8, 0x002D
    bne     $at, $zero, lbl_80A2E7E4
    sh      t7, 0x0280(s0)             # 00000280
    lbu     v0, 0x0283(s0)             # 00000283
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    slti    $at, v0, 0x00EC
    beq     $at, $zero, lbl_80A2E700
    addiu   t9, v0, 0x0014             # t9 = 00000014
    beq     $zero, $zero, lbl_80A2E704
    sb      t9, 0x0283(s0)             # 00000283
lbl_80A2E700:
    sb      t0, 0x0283(s0)             # 00000283
lbl_80A2E704:
    lhu     v0, 0x0280(s0)             # 00000280
    lw      a1, 0x0034($sp)
    slti    $at, v0, 0x0069
    bnel    $at, $zero, lbl_80A2E744
    slti    $at, v0, 0x005F
    jal     func_80A2E4E8
    lw      a0, 0x1C44(a1)             # 00001C44
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0034($sp)
    addiu   a1, $zero, 0x38A8          # a1 = 000038A8
    jal     func_80022FD0
    lw      a0, 0x1C44(t1)             # 00001C44
    beq     $zero, $zero, lbl_80A2E788
    lwc1    $f10, 0x0024(s0)           # 00000024
    slti    $at, v0, 0x005F
lbl_80A2E744:
    bne     $at, $zero, lbl_80A2E784
    lui     $at, %hi(var_80A2FBA8)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A2FBA8)($at)
    lwc1    $f4, 0x0050(s0)            # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_80020F88
    nop
    lhu     t2, 0x0280(s0)             # 00000280
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $at, lbl_80A2E788
    lwc1    $f10, 0x0024(s0)           # 00000024
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B5          # a1 = 000038B5
lbl_80A2E784:
    lwc1    $f10, 0x0024(s0)           # 00000024
lbl_80A2E788:
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x002C(s0)            # 0000002C
    trunc.w.s $f16, $f10
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    trunc.w.s $f4, $f18
    mfc1    a1, $f16
    sw      t7, 0x0014($sp)
    trunc.w.s $f8, $f6
    mfc1    a2, $f4
    sw      t6, 0x0010($sp)
    sw      $zero, 0x0018($sp)
    mfc1    a3, $f8
    lbu     t8, 0x0283(s0)             # 00000283
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_80065BCC
    sw      t8, 0x001C($sp)
lbl_80A2E7E4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A2E7F8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lhu     v0, 0x0280(s0)             # 00000280
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x00F5          # a2 = 000000F5
    bnel    v0, $zero, lbl_80A2E850
    addiu   t7, v0, 0x0001             # t7 = 00000001
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t6, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lhu     v0, 0x0280(s0)             # 00000280
    addiu   t7, v0, 0x0001             # t7 = 00000001
lbl_80A2E850:
    andi    v0, t7, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x003D
    bne     $at, $zero, lbl_80A2E86C
    sh      t7, 0x0280(s0)             # 00000280
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0280(s0)             # 00000280
lbl_80A2E86C:
    mtc1    v0, $f8                    # $f8 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    bgez    v0, lbl_80A2E88C
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80A2E88C:
    lui     $at, %hi(var_80A2FBAC)     # $at = 80A30000
    lwc1    $f18, %lo(var_80A2FBAC)($at)
    lui     $at, %hi(var_80A2FBB0)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A2FBB0)($at)
    mul.s   $f4, $f10, $f18
    sub.s   $f8, $f6, $f4
    mfc1    a1, $f8
    jal     func_80020F88
    nop
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A2E8C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0278(a0)             # 00000278
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A2E8E8:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
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
    sw      a1, 0x00CC($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     s3, 0x027E(a2)             # 0000027E
    lw      t6, 0x00CC($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s2, a0, $zero              # s2 = 00000000
    lui     $at, %hi(var_80A2FBB4)     # $at = 80A30000
    lwc1    $f20, %lo(var_80A2FBB4)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    mov.s   $f12, $f20
    lw      s1, 0x02D0(s2)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x00CC($sp)
    sll     t0, s3,  3
    andi    t1, t0, 0x7FFF             # t1 = 00000000
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t2, $zero, 0x7FFF          # t2 = 00007FFF
    subu    a3, t2, t1
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    addiu   t4, $zero, 0x0200          # t4 = 00000200
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lui     t9, %hi(var_80A2FAB8)      # t9 = 80A30000
    addiu   t9, t9, %lo(var_80A2FAB8)  # t9 = 80A2FAB8
    addiu   t1, t9, 0x0024             # t1 = 80A2FADC
    addiu   t8, $sp, 0x0084            # t8 = FFFFFFBC
lbl_80A2E9C8:
    lw      t2, 0x0000(t9)             # 80A2FAB8
    addiu   t9, t9, 0x000C             # t9 = 80A2FAC4
    addiu   t8, t8, 0x000C             # t8 = FFFFFFC8
    sw      t2, -0x000C(t8)            # FFFFFFBC
    lw      t0, -0x0008(t9)            # 80A2FABC
    sw      t0, -0x0008(t8)            # FFFFFFC0
    lw      t2, -0x0004(t9)            # 80A2FAC0
    bne     t9, t1, lbl_80A2E9C8
    sw      t2, -0x0004(t8)            # FFFFFFC4
    mov.s   $f12, $f20
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     s5, 0x0600                 # s5 = 06000000
    lui     $at, %hi(var_80A2FBB8)     # $at = 80A30000
    lui     s8, 0xFA00                 # s8 = FA000000
    lui     s6, 0xDA38                 # s6 = DA380000
    ori     s6, s6, 0x0003             # s6 = DA380003
    ori     s8, s8, 0x0080             # s8 = FA000080
    lwc1    $f20, %lo(var_80A2FBB8)($at)
    addiu   s5, s5, 0x22B0             # s5 = 060022B0
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s1, $sp, 0x0084            # s1 = FFFFFFBC
    lui     s7, 0xE700                 # s7 = E7000000
lbl_80A2EA24:
    mov.s   $f12, $f20
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s4, 0x02D0(s2)             # 000002D0
    addiu   t3, s4, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s4)             # 00000000
    lw      t4, 0x00CC($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lbu     t0, 0x0000(s1)             # FFFFFFBC
    lbu     t1, 0x0002(s1)             # FFFFFFBE
    lbu     t5, 0x0001(s1)             # FFFFFFBD
    sll     t2, t0, 24
    sll     t9, t1,  8
    or      t3, t9, t2                 # t3 = 00000000
    sll     t6, t5, 16
    or      t7, t3, t6                 # t7 = 00000008
    ori     t1, t7, 0x00FF             # t1 = 000000FF
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lbu     t3, 0x0003(s1)             # FFFFFFBF
    lbu     t2, 0x0005(s1)             # FFFFFFC1
    lbu     t8, 0x0004(s1)             # FFFFFFC0
    sll     t6, t3, 24
    sll     t4, t2,  8
    or      t7, t4, t6                 # t7 = 00000008
    sll     t0, t8, 16
    or      t9, t7, t0                 # t9 = FB000008
    ori     t2, t9, 0x00FF             # t2 = FB0000FF
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    bne     s3, $at, lbl_80A2EA24
    addiu   s1, s1, 0x0006             # s1 = FFFFFFC2
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
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000


func_80A2EB34:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lhu     t6, 0x027E(s2)             # 0000027E
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x35E0             # v0 = 060035E0
    sw      t6, 0x0084($sp)
    lwc1    $f6, 0x0158(s2)            # 00000158
    lwc1    $f4, 0x0154(s2)            # 00000154
    sll     t7, v0,  4
    srl     t8, t7, 28
    mul.s   $f8, $f4, $f6
    sll     t9, t8,  2
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    a3, t3, t4
    swc1    $f8, 0x0080($sp)
    addu    a3, a3, $at
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    lwc1    $f10, 0x0160(s2)           # 00000160
    lw      s1, 0x0000(s3)             # 00000000
    mul.s   $f18, $f10, $f16
    lw      a0, 0x02D0(s1)             # 000002D0
    sw      a3, 0x007C($sp)
    trunc.w.s $f4, $f18
    mfc1    a2, $f4
    jal     func_8007E008
    sb      a2, 0x0073($sp)
    lbu     a2, 0x0073($sp)
    lw      a3, 0x007C($sp)
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    andi    t8, a2, 0x00FF             # t8 = 00000000
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xE300                 # t3 = E3000000
    ori     t3, t3, 0x1A01             # t3 = E3001A01
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0030          # t4 = 00000030
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1801             # t6 = E3001801
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    addiu   t7, $zero, 0x00C0          # t7 = 000000C0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xF64F                 # t9 = F64F0000
    ori     t9, t9, 0xC3BC             # t9 = F64FC3BC
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E2C0
    sw      a3, 0x007C($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    lwc1    $f6, 0x015C(s2)            # 0000015C
    lui     v1, %hi(var_80A2FADC)      # v1 = 80A30000
    lw      a3, 0x007C($sp)
    mul.s   $f10, $f6, $f8
    addiu   v1, v1, %lo(var_80A2FADC)  # v1 = 80A2FADC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x003F          # a0 = 0000003F
    lui     $at, %hi(var_80A2FBBC)     # $at = 80A30000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    trunc.w.s $f16, $f10
    mfc1    a2, $f16
    nop
    andi    a2, a2, 0x00FF             # a2 = 00000000
    lbu     t4, 0x0000(v1)             # 80A2FADC
lbl_80A2EC98:
    sll     t5, v0,  4
    addu    t6, a3, t5
    bnel    v0, t4, lbl_80A2ECB4
    sb      a2, 0x000F(t6)             # 0000000F
    beq     $zero, $zero, lbl_80A2ECB4
    addiu   v1, v1, 0x0001             # v1 = 80A2FADD
    sb      a2, 0x000F(t6)             # 0000000F
lbl_80A2ECB4:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bnel    v0, a0, lbl_80A2EC98
    lbu     t4, 0x0000(v1)             # 80A2FADD
    jal     func_800AA9E0
    lwc1    $f12, %lo(var_80A2FBBC)($at)
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s2, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    lw      t2, 0x0084($sp)
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     t4, 0xD2D2                 # t4 = D2D20000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    ori     t4, t4, 0xD2FF             # t4 = D2D2D2FF
    ori     t3, t3, 0x0080             # t3 = FA000080
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0x6464                 # t7 = 64640000
    ori     t7, t7, 0x64FF             # t7 = 646464FF
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     a3, t2,  2
    subu    a3, a3, t2
    sll     t3, t3,  1
    addiu   t4, $zero, 0x0FFF          # t4 = 00000FFF
    subu    a2, t4, t3
    sll     a3, a3,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000000
    andi    a2, a2, 0x0FFF             # a2 = 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x0028($sp)
    sw      a2, 0x001C($sp)
    sw      a3, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0048($sp)
    lw      t1, 0x0048($sp)
    lwc1    $f12, 0x0080($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x39D0             # t5 = 060039D0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    mfc1    a2, $f12
    mov.s   $f14, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s3)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x3232                 # t6 = 32320000
    ori     t6, t6, 0x32FF             # t6 = 323232FF
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      t5, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x1040             # t9 = 06001040
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A2EE94:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lhu     t7, 0x027C(s1)             # 0000027C
    lw      a2, 0x0000(t6)             # 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_80A2F08C
    or      s0, a2, $zero              # s0 = 00000000
    lh      t9, 0x001C(s1)             # 0000001C
    slti    $at, t9, 0x0009
    bne     $at, $zero, lbl_80A2EEE0
    lui     t0, 0x0401                 # t0 = 04010000
    addiu   t0, t0, 0x05D0             # t0 = 040105D0
    beq     $zero, $zero, lbl_80A2EEEC
    sw      t0, 0x003C($sp)
lbl_80A2EEE0:
    lui     t1, 0x0401                 # t1 = 04010000
    addiu   t1, t1, 0x0648             # t1 = 04010648
    sw      t1, 0x003C($sp)
lbl_80A2EEEC:
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0x8080             # t3 = FA008080
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t9, %hi(var_80A2FA18)      # t9 = 80A30000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t7, 0x0283(s1)             # 00000283
    addiu   t9, t9, %lo(var_80A2FA18)  # t9 = 80A2FA18
    lui     $at, 0x0001                # $at = 00010000
    sll     t8, t7,  2
    subu    t8, t8, t7
    addu    v0, t8, t9
    lbu     t1, 0x0002(v0)             # 00000002
    lbu     t4, 0x0000(v0)             # 00000000
    lbu     t8, 0x0001(v0)             # 00000001
    sll     t2, t1,  8
    sll     t5, t4, 24
    or      t6, t2, t5                 # t6 = 00000008
    sll     t9, t8, 16
    or      t0, t6, t9                 # t0 = 80A2FA18
    ori     t1, t0, 0x00FF             # t1 = 80A2FAFF
    sw      t1, 0x0004(v1)             # 00000004
    lw      a0, 0x004C($sp)
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    jal     func_800AA6EC
    nop
    lhu     t3, 0x0280(s1)             # 00000280
    lui     $at, %hi(var_80A2FBC0)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FBC0)($at)
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  1
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAD4C
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t7, 0x004C($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t9, 0x003C($sp)
    sw      t9, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lhu     t0, 0x0280(s1)             # 00000280
    lui     $at, %hi(var_80A2FBC4)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A2FBC4)($at)
    sll     t1, t0,  2
    subu    t1, t1, t0
    sll     t1, t1,  1
    mtc1    t1, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    neg.s   $f18, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800AAD4C
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t2, 0x004C($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x003C($sp)
    sw      t8, 0x0004(v1)             # 00000004
lbl_80A2F08C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A2F0A0:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    or      s7, a0, $zero              # s7 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lbu     v0, 0x1D6C(s8)             # 00001D6C
    lw      s3, 0x009C(s8)             # 0000009C
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_80A2F0F4
    nop
    lw      v0, 0x1D90(s8)             # 00001D90
    sltu    v0, $zero, v0
lbl_80A2F0F4:
    beql    v0, $zero, lbl_80A2F2EC
    lw      $ra, 0x0044($sp)
    lw      t6, 0x1D90(s8)             # 00001D90
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     t7, 0x0000(t6)             # 00000000
    beql    t7, $at, lbl_80A2F2EC
    lw      $ra, 0x0044($sp)
    lw      a0, 0x0000(s8)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x8080             # t9 = FA008080
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sw      t0, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lh      t1, 0x07A0(s8)             # 000007A0
    sll     t2, t1,  2
    addu    t3, s8, t2
    jal     func_8004977C
    lw      a0, 0x0790(t3)             # 00000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t4, v0, $at
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A2FBC8)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2FBC8)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     t7, 0x0401                 # t7 = 04010000
    addiu   t7, t7, 0x05D0             # t7 = 040105D0
    addu    t8, s8, $at
    mtc1    $zero, $f20                # $f20 = 0.00
    sw      t8, 0x0048($sp)
    sw      t7, 0x004C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    or      s5, s3, $zero              # s5 = 00000000
    or      s2, s7, $zero              # s2 = 00000000
    or      s6, s7, $zero              # s6 = 00000000
lbl_80A2F1B0:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t5, %hi(var_80A2FA18)      # t5 = 80A30000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lbu     t3, 0x0264(s6)             # 00000264
    addiu   t5, t5, %lo(var_80A2FA18)  # t5 = 80A2FA18
    sll     t4, t3,  2
    subu    t4, t4, t3
    addu    v0, t4, t5
    lbu     t7, 0x0002(v0)             # 00000002
    lbu     t0, 0x0000(v0)             # 00000000
    lbu     t4, 0x0001(v0)             # 00000001
    sll     t8, t7,  8
    sll     t1, t0, 24
    or      t2, t8, t1                 # t2 = 00000008
    sll     t5, t4, 16
    or      t6, t2, t5                 # t6 = 80A2FA18
    ori     t7, t6, 0x00FF             # t7 = 80A2FAFF
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_800AA6EC
    nop
    mfc1    a2, $f20
    lwc1    $f12, 0x0164(s2)           # 00000164
    lwc1    $f14, 0x01A4(s2)           # 000001A4
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    andi    t9, s5, 0x0003             # t9 = 00000000
    sll     t0, t9,  2
    lui     $at, %hi(var_80A2FA3C)     # $at = 80A30000
    addu    $at, $at, t0
    lwc1    $f10, %lo(var_80A2FA3C)($at)
    lwc1    $f16, 0x0224(s2)           # 00000224
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f10, $f16
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_800ABE54
    lw      a0, 0x0048($sp)
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t2, 0x004C($sp)
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    addiu   s4, s4, 0x0004             # s4 = 00000004
    addiu   $at, $zero, 0x0040         # $at = 00000040
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   s2, s2, 0x0004             # s2 = 00000004
    bne     s4, $at, lbl_80A2F1B0
    addiu   s6, s6, 0x0001             # s6 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x004C($sp)
    sw      t7, 0x0004(s0)             # 00000004
    lw      $ra, 0x0044($sp)
lbl_80A2F2EC:
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
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A2F31C:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x006C($sp)
    lhu     t6, 0x0280(s1)             # 00000280
    lw      t7, 0x006C($sp)
    sw      t6, 0x005C($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x006C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    lui     $at, %hi(var_80A2FBCC)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A2FBCC)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x006C($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      t0, 0x0048($sp)
    lw      t2, 0x005C($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    sll     t7, t2,  1
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x006C($sp)
    andi    t8, t7, 0x00FF             # t8 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lw      a0, 0x0000(t6)             # 00000000
    sll     t6, t2,  4
    subu    a2, t9, t8
    subu    t6, t6, t2
    andi    t7, t6, 0x03FF             # t7 = 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      t5, 0x0018($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0020($sp)
    sw      a2, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t1, 0x0044($sp)
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      v0, 0x0004(t1)             # 00000004
    lhu     a1, 0x0280(s1)             # 00000280
    slti    $at, a1, 0x0028
    beq     $at, $zero, lbl_80A2F5D4
    or      a0, a1, $zero              # a0 = 00000000
    mtc1    a1, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    a1, lbl_80A2F45C
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80A2F45C:
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f10                  # $f10 = 2.50
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    mul.s   $f16, $f6, $f10
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    sub.s   $f4, $f18, $f16
    cfc1    t3, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_80A2F4E8
    mfc1    v1, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    v1, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_80A2F4DC
    nop
    mfc1    v1, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A2F4F4
    or      v1, v1, $at                # v1 = 80000000
lbl_80A2F4DC:
    beq     $zero, $zero, lbl_80A2F4F4
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f8
lbl_80A2F4E8:
    nop
    bltz    v1, lbl_80A2F4DC
    nop
lbl_80A2F4F4:
    andi    t4, v1, 0x00FF             # t4 = 000000FF
    subu    t6, t5, t4
    sb      v1, 0x005A($sp)
    sb      v1, 0x0058($sp)
    sb      $zero, 0x0055($sp)
    sb      $zero, 0x0059($sp)
    sb      t6, 0x0054($sp)
    lhu     t7, 0x0280(s1)             # 00000280
    ctc1    t3, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f6                    # $f6 = 0.00
    sll     t5, t6,  1
    bgez    t7, lbl_80A2F538
    cvt.s.w $f10, $f6
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_80A2F538:
    lui     $at, 0x40CC                # $at = 40CC0000
    mtc1    $at, $f16                  # $f16 = 6.38
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f10, $f16
    cfc1    t9, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80A2F5B8
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80A2F5AC
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A2F5C4
    or      t8, t8, $at                # t8 = 80000000
lbl_80A2F5AC:
    beq     $zero, $zero, lbl_80A2F5C4
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8
lbl_80A2F5B8:
    nop
    bltz    t8, lbl_80A2F5AC
    nop
lbl_80A2F5C4:
    ctc1    t9, $f31
    sb      t8, 0x005B($sp)
    beq     $zero, $zero, lbl_80A2F668
    sb      t5, 0x0056($sp)
lbl_80A2F5D4:
    slti    $at, a0, 0x0032
    beq     $at, $zero, lbl_80A2F628
    sll     t7, a0,  2
    sll     t4, a0,  2
    addu    t4, t4, a0
    addiu   v0, t4, 0xFF38             # v0 = 00000037
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sb      t9, 0x005B($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sll     t5, v0,  2
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    subu    t6, t8, v0
    sll     t3, v0,  1
    subu    t9, t4, t5
    sb      v0, 0x0058($sp)
    sb      $zero, 0x005A($sp)
    sb      $zero, 0x0059($sp)
    sb      t6, 0x0054($sp)
    sb      t3, 0x0055($sp)
    beq     $zero, $zero, lbl_80A2F668
    sb      t9, 0x0056($sp)
lbl_80A2F628:
    addu    t7, t7, a0
    addiu   v0, t7, 0xFF06             # v0 = FFFFFF06
    sll     v1, v0,  1
    sll     t6, v0,  2
    addiu   v1, v1, 0x0032             # v1 = 00000031
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    subu    t6, t6, v0
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    subu    t5, t4, v0
    sb      v0, 0x005A($sp)
    sb      $zero, 0x0056($sp)
    sb      t6, 0x0059($sp)
    sb      t3, 0x005B($sp)
    sb      v1, 0x0054($sp)
    sb      v1, 0x0058($sp)
    sb      t5, 0x0055($sp)
lbl_80A2F668:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x0080             # t7 = FA000080
    addiu   t9, v1, 0x0008             # t9 = 00000039
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000031
    lbu     t4, 0x0058($sp)
    lbu     t6, 0x005B($sp)
    lbu     t8, 0x0059($sp)
    sll     t5, t4, 24
    or      t9, t6, t5                 # t9 = 00000064
    lbu     t5, 0x005A($sp)
    sll     t3, t8, 16
    or      t4, t9, t3                 # t4 = 000000FF
    sll     t7, t5,  8
    or      t8, t4, t7                 # t8 = FA0000FF
    sw      t8, 0x0004(v1)             # 00000035
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000039
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000031
    lbu     t5, 0x0056($sp)
    lbu     t8, 0x0054($sp)
    sll     t4, t5,  8
    lbu     t5, 0x0055($sp)
    sll     t9, t8, 24
    or      t3, t4, t9                 # t3 = 000000FF
    sll     t7, t5, 16
    or      t8, t3, t7                 # t8 = FA0000FF
    ori     t4, t8, 0x0080             # t4 = FA0000FF
    sw      t4, 0x0004(v1)             # 00000035
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x1190             # t5 = 06001190
    addiu   t9, v1, 0x0008             # t9 = 00000039
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000035
    sw      t6, 0x0000(v1)             # 00000031
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80A2F71C:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0060($sp)
    lw      a0, 0x0000(a1)             # 00000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t0, 0x02C4(a0)             # 000002C4
    addiu   t0, t0, 0xFFE0             # t0 = FFFFFFE0
    sw      t0, 0x02C4(a0)             # 000002C4
    lw      t6, 0x1DE4(t6)             # 00011DE4
    sh      t6, 0x0056($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      t0, 0x0020($sp)
    sw      a1, 0x0064($sp)
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lhu     t7, 0x0056($sp)
    lui     t3, %hi(var_80A2FAEC)      # t3 = 80A30000
    lui     $at, %hi(var_80A2FBD0)     # $at = 80A30000
    sll     t8, t7,  2
    andi    t9, t8, 0x000F             # t9 = 00000000
    addu    t3, t3, t9
    lbu     t3, %lo(var_80A2FAEC)(t3)
    lwc1    $f8, %lo(var_80A2FBD0)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      v0, 0x0060($sp)
    cvt.s.w $f6, $f4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f18, 0x0050(v0)           # 00000050
    lwc1    $f4, 0x0054(v0)            # 00000054
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x0058(v0)            # 00000058
    add.s   $f0, $f10, $f16
    mul.s   $f12, $f18, $f0
    nop
    mul.s   $f14, $f4, $f0
    nop
    mul.s   $f8, $f6, $f0
    mfc1    a2, $f8
    jal     func_800AA8FC
    nop
    lw      a1, 0x0064($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      t1, 0x0040($sp)
    lw      t0, 0x0020($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    addiu   a2, t0, 0x0008             # a2 = 00000008
    sw      t8, 0x0000(t0)             # 00000000
    sw      $zero, 0x0004(t0)          # 00000004
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x0080             # t9 = FA000080
    or      a3, a2, $zero              # a3 = 00000008
    sw      t9, 0x0000(a3)             # 00000008
    lw      t3, 0x0060($sp)
    addiu   a2, a2, 0x0008             # a2 = 00000010
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lbu     t5, 0x0283(t3)             # 00000283
    or      t2, a2, $zero              # t2 = 00000010
    addiu   a2, a2, 0x0008             # a2 = 00000018
    or      t6, t5, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(a3)             # 0000000C
    lui     t7, 0xE200                 # t7 = E2000000
    lui     t8, 0x0C18                 # t8 = 0C180000
    ori     t8, t8, 0x4B50             # t8 = 0C184B50
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0000(t2)             # 00000010
    sw      t8, 0x0004(t2)             # 00000014
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0000(a2)             # 00000018
    sw      $zero, 0x0004(a2)          # 0000001C
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFFC8                 # t5 = FFC80000
    ori     t5, t5, 0x00FF             # t5 = FFC800FF
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0401                 # t8 = 04010000
    addiu   t8, t8, 0x5C20             # t8 = 04015C20
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_80A2F8D4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0038($sp)
    sll     t7, t6,  2
    addu    t8, a3, t7
    lw      v0, 0x1D8C(t8)             # 00001D8C
    lw      t2, 0x0018(v0)             # 00000018
    lw      t9, 0x000C(v0)             # 0000000C
    lw      t0, 0x0010(v0)             # 00000010
    mtc1    t2, $f10                   # $f10 = 0.00
    lw      t1, 0x0014(v0)             # 00000014
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    mtc1    t0, $f6                    # $f6 = 0.00
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f2, $f4
    swc1    $f16, 0x0018($sp)
    lw      t3, 0x001C(v0)             # 0000001C
    mtc1    t3, $f18                   # $f18 = 0.00
    cvt.s.w $f12, $f6
    cvt.s.w $f4, $f18
    cvt.s.w $f14, $f8
    swc1    $f4, 0x001C($sp)
    lw      t4, 0x0020(v0)             # 00000020
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0020($sp)
    lhu     a2, 0x1D74(a3)             # 00001D74
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a0, 0x0004(v0)             # 00000004
    swc1    $f14, 0x002C($sp)
    swc1    $f12, 0x0028($sp)
    jal     func_8005C690
    swc1    $f2, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f10, 0x0018($sp)
    lw      v0, 0x0030($sp)
    lwc1    $f12, 0x0028($sp)
    sub.s   $f16, $f10, $f2
    lwc1    $f14, 0x002C($sp)
    mul.s   $f18, $f16, $f0
    add.s   $f4, $f18, $f2
    swc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x001C($sp)
    sub.s   $f8, $f6, $f12
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f12
    swc1    $f16, 0x0028(v0)           # 00000028
    lwc1    $f18, 0x0020($sp)
    sub.s   $f4, $f18, $f14
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f6, $f14
    swc1    $f8, 0x002C(v0)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80A2F9D0: .word 0x00F50600, 0x00000010, 0x00010000, 0x00000284
.word func_80A2D26C
.word func_80A2D654
.word func_80A2E8C4
.word 0x00000000
var_80A2F9F0: .word \
0x000100ED, 0x00ED0001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x011A0001, 0x00010001, \
0x00010001, 0x00010001
var_80A2FA18: .word \
0xFF320000, 0xC800C8FF, 0x00C832FF, 0xFF960000, \
0x96FF0000
var_80A2FA2C: .word 0x3F800000, 0x3F851EB8, 0x3F800000, 0x3F75C28F
var_80A2FA3C: .byte 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x66
var_80A2FA46: .byte \
0x66, 0x66, 0x3F, 0x4C, 0xCC, 0xCD, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, \
0x01, 0x13
var_80A2FA58: .word 0x00000000
var_80A2FA5C: .word 0x00000000
var_80A2FA60: .word 0x00000000
var_80A2FA64: .word 0x00000000
var_80A2FA68: .word 0x00000000, 0x00000000
var_80A2FA70: .word 0xFFFFFF00
var_80A2FA74: .byte 0xFF
var_80A2FA75: .byte 0x96
var_80A2FA76: .byte 0x00, 0x00
var_80A2FA78: .word 0x00000000
var_80A2FA7C: .word 0x00000000
var_80A2FA80: .word 0x00000000
var_80A2FA84: .word 0x00000000
var_80A2FA88: .word 0x00000000, 0x00000000
var_80A2FA90: .word 0xFFFFFF00
var_80A2FA94: .word 0xFF960000
var_80A2FA98: .word 0x00000000
var_80A2FA9C: .word 0x00000000
var_80A2FAA0: .word 0x00000000
var_80A2FAA4: .word 0x00000000
var_80A2FAA8: .word 0x00000000, 0x00000000
var_80A2FAB0: .word 0xFFFFFF00
var_80A2FAB4: .word 0xFFC80000
var_80A2FAB8: .word \
0xFFAAFFFF, 0x0064FFFF, 0xAA00FF00, 0xFFFFAAFF, \
0xFF00FFAA, 0xFF3200FF, 0xFFFFAAFF, 0x6400AAFF, \
0xFF0064FF
var_80A2FADC: .word 0x06070B10, 0x14181C21, 0x23292D32, 0x393A3EFF
var_80A2FAEC: .word \
0x00010203, 0x04050607, 0x08070605, 0x04030201, \
0x00000000

.section .rodata

var_80A2FB00: .word var_80A2D318
.word var_80A2D384
.word var_80A2D3B4
.word var_80A2D400
.word var_80A2D400
.word var_80A2D400
.word var_80A2D400
.word var_80A2D400
.word var_80A2D400
.word var_80A2D43C
.word var_80A2D43C
.word var_80A2D46C
.word var_80A2D4B4
.word var_80A2D4FC
.word var_80A2D534
.word var_80A2D534
.word var_80A2D534
.word var_80A2D534
.word var_80A2D534
.word var_80A2D534
var_80A2FB50: .word 0x3C449BA6
var_80A2FB54: .word 0x3C088889
var_80A2FB58: .word 0x3DCCCCCD
var_80A2FB5C: .word 0x3ADED289
var_80A2FB60: .word 0x3DD4FDF3
var_80A2FB64: .word 0x3DCCCCCD
var_80A2FB68: .word 0x477FFF00
var_80A2FB6C: .word 0x477FFF00
var_80A2FB70: .word 0x3D4CCCCD
var_80A2FB74: .word 0x3BA3D70A
var_80A2FB78: .word 0x3D54FDF3
var_80A2FB7C: .word 0xC4C96000
var_80A2FB80: .word 0x44C9A000
var_80A2FB84: .word 0x3DCCCCCD
var_80A2FB88: .word 0x3E4CCCCD
var_80A2FB8C: .word 0x3DF5C28F
var_80A2FB90: .word 0x3E4CCCCD
var_80A2FB94: .word 0x3AC49BA6
var_80A2FB98: .word 0x3D072B02
var_80A2FB9C: .word 0x3CF5C28F
var_80A2FBA0: .word 0x3CA3D70A
var_80A2FBA4: .word 0x3C23D70A
var_80A2FBA8: .word 0x3CF5C28F
var_80A2FBAC: .word 0x3A449BA6
var_80A2FBB0: .word 0x3D4CCCCD
var_80A2FBB4: .word 0xBFC90FDB
var_80A2FBB8: .word 0x3F860A92
var_80A2FBBC: .word 0xBFC90FDB
var_80A2FBC0: .word 0x3C8EFA35
var_80A2FBC4: .word 0x3C8EFA35
var_80A2FBC8: .word 0x38C90FDB
var_80A2FBCC: .word 0x3FC90FDB
var_80A2FBD0: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

