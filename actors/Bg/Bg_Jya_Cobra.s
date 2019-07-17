.section .text
func_80A32440:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f10, $f8, $f14
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f14
    nop
    mul.s   $f10, $f6, $f12
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80A32494:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80035260
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A324EC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0024(a1)            # 00000024
    lui     $at, 0x4264                # $at = 42640000
    mtc1    $at, $f8                   # $f8 = 57.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(a1)            # 00000028
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f10, $f6, $f8
    addiu   a3, $zero, 0x00B7          # a3 = 000000B7
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(a1)           # 0000002C
    sw      t6, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A32554:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    lw      v1, 0x0118(a2)             # 00000118
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x0003             # v0 = 00000000
    beql    v0, $zero, lbl_80A32594
    lw      v1, 0x011C(a2)             # 0000011C
    beq     v0, $at, lbl_80A325B0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80A325C8
    lw      v0, 0x0158(v1)             # 00000158
    beq     $zero, $zero, lbl_80A325D0
    lw      v0, 0x0034($sp)
    lw      v1, 0x011C(a2)             # 0000011C
lbl_80A32594:
    beq     v1, $zero, lbl_80A326C4
    or      v0, v1, $zero              # v0 = 00000000
    lw      t6, 0x0130(v1)             # 00000130
    bnel    t6, $zero, lbl_80A325D4
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_80A326C4
    sw      $zero, 0x011C(a2)          # 0000011C
lbl_80A325B0:
    lw      v0, 0x0154(v1)             # 00000154
    bnel    v0, $zero, lbl_80A325D4
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_80A326C8
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0158(v1)             # 00000158
lbl_80A325C8:
    beql    v0, $zero, lbl_80A326C8
    lw      $ra, 0x0014($sp)
lbl_80A325D0:
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80A325D4:
    lwc1    $f6, 0x017C(a2)            # 0000017C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   a0, v0, 0x026C             # a0 = 0000026C
    c.le.s  $f6, $f4
    addiu   a1, a2, 0x0170             # a1 = 00000170
    bc1fl   lbl_80A325FC
    sb      $zero, 0x029E(v0)          # 0000029E
    beq     $zero, $zero, lbl_80A326C4
    sb      t7, 0x029E(v0)             # 0000029E
    sb      $zero, 0x029E(v0)          # 0000029E
lbl_80A325FC:
    sw      a2, 0x0040($sp)
    sw      a0, 0x0020($sp)
    jal     func_80063CAC              # Vec3f_Copy
    sw      v0, 0x0034($sp)
    lw      a2, 0x0040($sp)
    lui     $at, %hi(var_80A33F70)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A33F70)($at)
    lh      t8, 0x00B6(a2)             # 000000B6
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lw      a2, 0x0040($sp)
    lui     t2, %hi(var_80A33D08)      # t2 = 80A30000
    lui     $at, %hi(var_80A33F74)     # $at = 80A30000
    lh      t9, 0x001C(a2)             # 0000001C
    lwc1    $f6, %lo(var_80A33F74)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t0, t9, 0x0003             # t0 = 00000000
    sll     t1, t0,  1
    addu    t2, t2, t1
    lh      t2, %lo(var_80A33D08)(t2)
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a2, 0x0040($sp)
    lui     $at, 0x452F                # $at = 452F0000
    swc1    $f8, 0x0028($sp)
    swc1    $f10, 0x002C($sp)
    mtc1    $at, $f18                  # $f18 = 2800.00
    lwc1    $f16, 0x0180(a2)           # 00000180
    lw      v0, 0x0034($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE8
    mul.s   $f4, $f16, $f18
    addiu   a1, v0, 0x0278             # a1 = 00000278
    sw      a1, 0x001C($sp)
    jal     func_800AB958
    swc1    $f4, 0x0030($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    jal     func_80063D10              # Vec3f_Add
    or      a2, a1, $zero              # a2 = 00000000
lbl_80A326C4:
    lw      $ra, 0x0014($sp)
lbl_80A326C8:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80A326D4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x003C($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0160(s0)             # 00000160
    swc1    $f0, 0x0024($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0160(s0)             # 00000160
    mfc1    a3, $f0
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    addiu   a1, s0, 0x0164             # a1 = 00000164
    jal     func_80A32440
    lw      a2, 0x0024($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x002C($sp)
    lw      v0, 0x003C($sp)
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f16, 0x0030($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028(v0)           # 00000028
    lwc1    $f6, 0x0034($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(v0)            # 0000002C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80A32758:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t0, 0x0118(a3)             # 00000118
    andi    v1, v0, 0x0003             # v1 = 00000000
    bnel    v1, $at, lbl_80A327D8
    lui     $at, 0x3F80                # $at = 3F800000
    beql    t0, $zero, lbl_80A327D8
    lui     $at, 0x3F80                # $at = 3F800000
    lbu     v0, 0x014C(t0)             # 0000014C
    addiu   a0, a3, 0x017C             # a0 = 0000017C
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    andi    t6, v0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80A327A8
    andi    t7, v0, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80A327D8
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80A327A8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    sw      v1, 0x0018($sp)
    mfc1    a1, $f0
    sw      a3, 0x0028($sp)
    jal     func_8006385C
    sw      t0, 0x0020($sp)
    lw      v1, 0x0018($sp)
    lw      a3, 0x0028($sp)
    beq     $zero, $zero, lbl_80A32874
    lw      t0, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80A327D8:
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t8, %hi(var_80A33D10)      # t8 = 80A30000
    addu    t8, t8, v1
    swc1    $f4, 0x017C(a3)            # 0000017C
    lbu     t8, %lo(var_80A33D10)(t8)
    sll     t1, v1,  1
    lui     t2, %hi(var_80A33D14)      # t2 = 80A30000
    beq     t8, $zero, lbl_80A32874
    addu    t2, t2, t1
    lh      t9, 0x00B6(a3)             # 000000B6
    lh      t2, %lo(var_80A33D14)(t2)
    subu    v0, t9, t2
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgezl   v0, lbl_80A32828
    slti    $at, v0, 0x2000
    subu    v0, $zero, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x2000
lbl_80A32828:
    beq     $at, $zero, lbl_80A32874
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    beq     v0, $at, lbl_80A32874
    addiu   t3, v0, 0xE000             # t3 = FFFFE000
    mtc1    t3, $f6                    # $f6 = NaN
    lui     $at, 0x3940                # $at = 39400000
    mtc1    $at, $f10                  # $f10 = 0.00
    cvt.s.w $f8, $f6
    lwc1    $f18, 0x017C(a3)           # 0000017C
    mtc1    $zero, $f0                 # $f0 = 0.00
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f18, $f16
    swc1    $f4, 0x017C(a3)            # 0000017C
    lwc1    $f6, 0x017C(a3)            # 0000017C
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80A32878
    lui     $at, 0x4264                # $at = 42640000
    swc1    $f0, 0x017C(a3)            # 0000017C
lbl_80A32874:
    lui     $at, 0x4264                # $at = 42640000
lbl_80A32878:
    mtc1    $at, $f18                  # $f18 = 57.00
    lwc1    $f10, 0x0028(a3)           # 00000028
    lwc1    $f8, 0x0024(a3)            # 00000024
    lwc1    $f4, 0x002C(a3)            # 0000002C
    add.s   $f16, $f10, $f18
    swc1    $f8, 0x0170(a3)            # 00000170
    swc1    $f4, 0x0178(a3)            # 00000178
    bne     v1, $zero, lbl_80A328AC
    swc1    $f16, 0x0174(a3)           # 00000174
    lui     $at, %hi(var_80A33F78)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A33F78)($at)
    beq     $zero, $zero, lbl_80A329C8
    swc1    $f6, 0x0180(a3)            # 00000180
lbl_80A328AC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80A32948
    addiu   a0, a3, 0x0180             # a0 = 00000180
    lh      v1, 0x00B6(a3)             # 000000B6
    lui     $at, %hi(var_80A33F7C)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A33F7C)($at)
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    v0, v1, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0500
    beq     $at, $zero, lbl_80A328F4
    lui     a2, 0x3D23                 # a2 = 3D230000
    slti    $at, v0, 0xFB01
    bne     $at, $zero, lbl_80A328F4
    lui     $at, %hi(var_80A33F80)     # $at = 80A30000
    beq     $zero, $zero, lbl_80A32934
    lwc1    $f0, %lo(var_80A33F80)($at)
lbl_80A328F4:
    addiu   v0, v1, 0xC000             # v0 = FFFFC000
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0500
    beq     $at, $zero, lbl_80A32934
    slti    $at, v0, 0xFB01
    bnel    $at, $zero, lbl_80A32938
    mfc1    a1, $f0
    beql    t0, $zero, lbl_80A32938
    mfc1    a1, $f0
    lbu     t4, 0x014C(t0)             # 0000014C
    lui     $at, %hi(var_80A33F84)     # $at = 80A30000
    andi    t5, t4, 0x0004             # t5 = 00000000
    beql    t5, $zero, lbl_80A32938
    mfc1    a1, $f0
    lwc1    $f0, %lo(var_80A33F84)($at)
lbl_80A32934:
    mfc1    a1, $f0
lbl_80A32938:
    jal     func_8006385C
    ori     a2, a2, 0xD70A             # a2 = 3D23D70A
    beq     $zero, $zero, lbl_80A329CC
    lw      $ra, 0x0014($sp)
lbl_80A32948:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_80A329C8
    addiu   a0, a3, 0x0180             # a0 = 00000180
    lh      v1, 0x00B6(a3)             # 000000B6
    lui     $at, %hi(var_80A33F88)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A33F88)($at)
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    v0, v1, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0500
    beq     $at, $zero, lbl_80A32990
    lui     a2, 0x3D23                 # a2 = 3D230000
    slti    $at, v0, 0xFB01
    bne     $at, $zero, lbl_80A32990
    lui     $at, %hi(var_80A33F8C)     # $at = 80A30000
    beq     $zero, $zero, lbl_80A329BC
    lwc1    $f0, %lo(var_80A33F8C)($at)
lbl_80A32990:
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x4000           # $at = FFFF4000
    addu    v0, v1, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0500
    beq     $at, $zero, lbl_80A329BC
    slti    $at, v0, 0xFB01
    bne     $at, $zero, lbl_80A329BC
    lui     $at, %hi(var_80A33F90)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A33F90)($at)
lbl_80A329BC:
    mfc1    a1, $f0
    jal     func_8006385C
    ori     a2, a2, 0xD70A             # a2 = 3D23D70A
lbl_80A329C8:
    lw      $ra, 0x0014($sp)
lbl_80A329CC:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A329D8:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s0, 0x0040($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    addiu   s2, s0, 0x0193             # s2 = 00000193
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     s2, s2, $at
    or      a0, s2, $zero              # a0 = 00000193
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, %hi(var_80A33F94)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A33F94)($at)
    jal     func_800AA9E0
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    andi    t7, t6, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_80A32A70
    lh      v0, 0x00B6(s0)             # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    addiu   v0, v0, 0x4000             # v0 = 00004000
    sll     v0, v0, 16
    beq     $zero, $zero, lbl_80A32A7C
    sra     v0, v0, 16
    lh      v0, 0x00B6(s0)             # 000000B6
lbl_80A32A70:
    addiu   v0, v0, 0xC000             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80A32A7C:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A33F98)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A33F98)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_80A33F9C)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A33F9C)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    lui     $at, 0x42B0                # $at = 42B00000
    mtc1    $at, $f26                  # $f26 = 88.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, %hi(var_80A33FA0)     # $at = 80A30000
    lui     s4, %hi(var_80A33DA4)      # s4 = 80A30000
    lui     s7, %hi(var_80A33DB0)      # s7 = 80A30000
    lui     s0, %hi(var_80A33D1C)      # s0 = 80A30000
    addiu   s0, s0, %lo(var_80A33D1C)  # s0 = 80A33D1C
    addiu   s7, s7, %lo(var_80A33DB0)  # s7 = 80A33DB0
    addiu   s4, s4, %lo(var_80A33DA4)  # s4 = 80A33DA4
    lwc1    $f20, %lo(var_80A33FA0)($at)
    addiu   s8, $sp, 0x00C8            # s8 = FFFFFFE8
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    addiu   s3, $zero, 0x000B          # s3 = 0000000B
    addiu   s1, $zero, 0xFFC0          # s1 = FFFFFFC0
lbl_80A32B04:
    or      a0, s7, $zero              # a0 = 80A33DB0
    or      a1, s4, $zero              # a1 = 80A33DA4
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x00D4            # a2 = FFFFFFF4
    lwc1    $f2, 0x00D4($sp)
    lwc1    $f12, 0x00D8($sp)
    lwc1    $f14, 0x00DC($sp)
    mul.s   $f2, $f2, $f28
    or      s6, $zero, $zero           # s6 = 00000000
    mul.s   $f12, $f12, $f28
    nop
    mul.s   $f14, $f14, $f28
    swc1    $f2, 0x00D4($sp)
    swc1    $f12, 0x00D8($sp)
    swc1    $f14, 0x00DC($sp)
    mtc1    s6, $f10                   # $f10 = 0.00
lbl_80A32B44:
    lwc1    $f2, 0x00D4($sp)
    lwc1    $f12, 0x00D8($sp)
    cvt.s.w $f0, $f10
    lwc1    $f16, 0x0000(s4)           # 80A33DA4
    lwc1    $f14, 0x00DC($sp)
    lwc1    $f6, 0x0004(s4)            # 80A33DA8
    or      a0, s8, $zero              # a0 = FFFFFFE8
    addiu   a1, $sp, 0x00BC            # a1 = FFFFFFDC
    mul.s   $f18, $f2, $f0
    add.s   $f4, $f16, $f18
    mul.s   $f8, $f12, $f0
    lwc1    $f16, 0x0008(s4)           # 80A33DAC
    mul.s   $f18, $f14, $f0
    swc1    $f4, 0x00C8($sp)
    add.s   $f10, $f6, $f8
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x00CC($sp)
    jal     func_800AB958
    swc1    $f4, 0x00D0($sp)
    lwc1    $f6, 0x00BC($sp)
    lwc1    $f4, 0x00C4($sp)
    addiu   s6, s6, 0x0001             # s6 = 00000001
    add.s   $f8, $f6, $f24
    or      t1, $zero, $zero           # t1 = 00000000
    sub.s   $f6, $f26, $f4
    mul.s   $f10, $f8, $f20
    nop
    mul.s   $f8, $f6, $f20
    add.s   $f16, $f10, $f22
    add.s   $f10, $f8, $f22
    trunc.w.s $f18, $f16
    trunc.w.s $f16, $f10
    mfc1    t4, $f18
    mfc1    v0, $f16
    nop
    addiu   t3, v0, 0xFFFB             # t3 = FFFFFFFB
lbl_80A32BD4:
    and     t5, t3, s1
    bne     t5, $zero, lbl_80A32D9C
    sll     t0, t3,  6
    addiu   $at, $zero, 0xFFC0         # $at = FFFFFFC0
    addiu   v1, t4, 0xFFFB             # v1 = FFFFFFFB
    and     a3, v1, $at
    addiu   a0, t4, 0xFFFD             # a0 = FFFFFFFD
    addiu   a1, t4, 0xFFFC             # a1 = FFFFFFFC
    and     a2, a1, $at
    bne     a3, $zero, lbl_80A32C2C
    and     t2, a0, $at
    sll     t8, t1,  2
    subu    t8, t8, t1
    sll     t8, t8,  2
    subu    t8, t8, t1
    addu    t6, t0, v1
    addu    v0, t6, s2
    addu    t9, s0, t8
    lbu     t5, 0x0000(t9)             # 00000000
    lbu     t7, 0x0000(v0)             # 00000000
    or      t6, t7, t5                 # t6 = 00000000
    sb      t6, 0x0000(v0)             # 00000000
lbl_80A32C2C:
    bne     a2, $zero, lbl_80A32C5C
    addu    t8, t0, a1
    sll     t7, t1,  2
    subu    t7, t7, t1
    sll     t7, t7,  2
    subu    t7, t7, t1
    addu    t5, s0, t7
    addu    v0, t8, s2
    lbu     t9, 0x0000(v0)             # 00000000
    lbu     t6, 0x0001(t5)             # 00000001
    or      t8, t9, t6                 # t8 = 00000000
    sb      t8, 0x0000(v0)             # 00000000
lbl_80A32C5C:
    bne     t2, $zero, lbl_80A32C8C
    addu    t7, t0, a0
    sll     t9, t1,  2
    subu    t9, t9, t1
    sll     t9, t9,  2
    subu    t9, t9, t1
    addu    t6, s0, t9
    addu    v0, t7, s2
    lbu     t5, 0x0000(v0)             # 00000000
    lbu     t8, 0x0002(t6)             # 00000002
    or      t7, t5, t8                 # t7 = 00000000
    sb      t7, 0x0000(v0)             # 00000000
lbl_80A32C8C:
    addiu   v0, t4, 0x0003             # v0 = 00000003
    addiu   v1, v0, 0xFFFB             # v1 = FFFFFFFE
    addiu   a1, v0, 0xFFFC             # a1 = FFFFFFFF
    addiu   a2, v0, 0xFFFD             # a2 = 00000000
    addiu   a3, v0, 0xFFFE             # a3 = 00000001
    addiu   a0, $zero, 0x0003          # a0 = 00000003
lbl_80A32CA4:
    and     t9, v1, s1
    bne     t9, $zero, lbl_80A32CDC
    addu    t6, t0, v1
    sll     t8, t1,  2
    subu    t8, t8, t1
    sll     t8, t8,  2
    subu    t8, t8, t1
    addu    t7, s0, t8
    addu    v0, t6, s2
    addu    t9, t7, a0
    lbu     t6, 0x0000(t9)             # 00000000
    lbu     t5, 0x0000(v0)             # 00000003
    or      t8, t5, t6                 # t8 = 00000000
    sb      t8, 0x0000(v0)             # 00000003
lbl_80A32CDC:
    and     t7, a1, s1
    bne     t7, $zero, lbl_80A32D18
    addiu   v1, v1, 0x0004             # v1 = 00000002
    sll     t6, t1,  2
    subu    t6, t6, t1
    sll     t6, t6,  2
    subu    t6, t6, t1
    addu    t9, t0, a1
    addu    v0, t9, s2
    addu    t8, s0, t6
    addu    t7, t8, a0
    lbu     t9, 0x0001(t7)             # 00000001
    lbu     t5, 0x0000(v0)             # 00000003
    or      t6, t5, t9                 # t6 = 00000000
    sb      t6, 0x0000(v0)             # 00000003
lbl_80A32D18:
    and     t8, a2, s1
    bne     t8, $zero, lbl_80A32D54
    addiu   a1, a1, 0x0004             # a1 = 00000003
    sll     t9, t1,  2
    subu    t9, t9, t1
    sll     t9, t9,  2
    subu    t9, t9, t1
    addu    t7, t0, a2
    addu    v0, t7, s2
    addu    t6, s0, t9
    addu    t8, t6, a0
    lbu     t7, 0x0002(t8)             # 00000002
    lbu     t5, 0x0000(v0)             # 00000003
    or      t9, t5, t7                 # t9 = 00000000
    sb      t9, 0x0000(v0)             # 00000003
lbl_80A32D54:
    and     t6, a3, s1
    bne     t6, $zero, lbl_80A32D90
    addiu   a2, a2, 0x0004             # a2 = 00000004
    sll     t7, t1,  2
    subu    t7, t7, t1
    sll     t7, t7,  2
    subu    t7, t7, t1
    addu    t8, t0, a3
    addu    v0, t8, s2
    addu    t9, s0, t7
    addu    t6, t9, a0
    lbu     t8, 0x0003(t6)             # 00000003
    lbu     t5, 0x0000(v0)             # 00000003
    or      t7, t5, t8                 # t7 = 00000000
    sb      t7, 0x0000(v0)             # 00000003
lbl_80A32D90:
    addiu   a0, a0, 0x0004             # a0 = 00000007
    bne     a0, s3, lbl_80A32CA4
    addiu   a3, a3, 0x0004             # a3 = 00000005
lbl_80A32D9C:
    addiu   t1, t1, 0x0001             # t1 = 00000001
    bne     t1, s3, lbl_80A32BD4
    addiu   t3, t3, 0x0001             # t3 = FFFFFFFC
    bnel    s6, s5, lbl_80A32B44
    mtc1    s6, $f10                   # $f10 = 0.00
    lui     t9, %hi(var_80A33EDC)      # t9 = 80A30000
    addiu   t9, t9, %lo(var_80A33EDC)  # t9 = 80A33EDC
    addiu   s7, s7, 0x000C             # s7 = 80A33DBC
    sltu    $at, s7, t9
    bne     $at, $zero, lbl_80A32B04
    addiu   s4, s4, 0x000C             # s4 = 80A33DB0
    lui     s5, %hi(var_80A33EDC)      # s5 = 80A30000
    lui     s4, %hi(var_80A33EE8)      # s4 = 80A30000
    lui     $at, %hi(var_80A33FA4)     # $at = 80A30000
    lui     s7, %hi(var_80A33F18)      # s7 = 80A30000
    lui     s3, %hi(var_80A33D98)      # s3 = 80A30000
    addiu   s3, s3, %lo(var_80A33D98)  # s3 = 80A33D98
    addiu   s7, s7, %lo(var_80A33F18)  # s7 = 80A33F18
    lwc1    $f28, %lo(var_80A33FA4)($at)
    addiu   s4, s4, %lo(var_80A33EE8)  # s4 = 80A33EE8
    addiu   s5, s5, %lo(var_80A33EDC)  # s5 = 80A33EDC
    addiu   s0, $zero, 0x0003          # s0 = 00000003
lbl_80A32DF4:
    or      a0, s4, $zero              # a0 = 80A33EE8
    or      a1, s5, $zero              # a1 = 80A33EDC
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x00D4            # a2 = FFFFFFF4
    lwc1    $f2, 0x00D4($sp)
    lwc1    $f12, 0x00D8($sp)
    lwc1    $f14, 0x00DC($sp)
    mul.s   $f2, $f2, $f28
    or      s6, $zero, $zero           # s6 = 00000000
    mul.s   $f12, $f12, $f28
    nop
    mul.s   $f14, $f14, $f28
    swc1    $f2, 0x00D4($sp)
    swc1    $f12, 0x00D8($sp)
    swc1    $f14, 0x00DC($sp)
    mtc1    s6, $f18                   # $f18 = 0.00
lbl_80A32E34:
    lwc1    $f2, 0x00D4($sp)
    lwc1    $f12, 0x00D8($sp)
    cvt.s.w $f0, $f18
    lwc1    $f4, 0x0000(s5)            # 80A33EDC
    lwc1    $f14, 0x00DC($sp)
    lwc1    $f10, 0x0004(s5)           # 80A33EE0
    or      a0, s8, $zero              # a0 = FFFFFFE8
    addiu   a1, $sp, 0x00BC            # a1 = FFFFFFDC
    mul.s   $f6, $f2, $f0
    add.s   $f8, $f4, $f6
    mul.s   $f16, $f12, $f0
    lwc1    $f4, 0x0008(s5)            # 80A33EE4
    mul.s   $f6, $f14, $f0
    swc1    $f8, 0x00C8($sp)
    add.s   $f18, $f10, $f16
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x00CC($sp)
    jal     func_800AB958
    swc1    $f8, 0x00D0($sp)
    lwc1    $f10, 0x00BC($sp)
    lwc1    $f8, 0x00C4($sp)
    addiu   s6, s6, 0x0001             # s6 = 00000001
    add.s   $f16, $f10, $f24
    or      t1, $zero, $zero           # t1 = 00000000
    sub.s   $f10, $f26, $f8
    mul.s   $f18, $f16, $f20
    nop
    mul.s   $f16, $f10, $f20
    add.s   $f4, $f18, $f22
    add.s   $f18, $f16, $f22
    trunc.w.s $f6, $f4
    trunc.w.s $f4, $f18
    mfc1    t4, $f6
    mfc1    v0, $f4
    nop
    addiu   a1, v0, 0xFFFF             # a1 = FFFFFFFF
lbl_80A32EC4:
    and     t8, a1, s1
    bne     t8, $zero, lbl_80A32F14
    sll     t0, a1,  6
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   v1, t4, 0xFFFF             # v1 = FFFFFFFF
lbl_80A32ED8:
    and     t7, v1, s1
    bne     t7, $zero, lbl_80A32F08
    addu    t9, t0, v1
    sll     t5, t1,  2
    subu    t5, t5, t1
    addu    t8, s3, t5
    addu    v0, t9, s2
    addu    t7, t8, a0
    lbu     t9, 0x0000(t7)             # 00000000
    lbu     t6, 0x0000(v0)             # 00000000
    or      t5, t6, t9                 # t5 = 00000000
    sb      t5, 0x0000(v0)             # 00000000
lbl_80A32F08:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    bne     a0, s0, lbl_80A32ED8
    addiu   v1, v1, 0x0001             # v1 = 00000000
lbl_80A32F14:
    addiu   t1, t1, 0x0001             # t1 = 00000001
    slti    $at, t1, 0x0003
    bne     $at, $zero, lbl_80A32EC4
    addiu   a1, a1, 0x0001             # a1 = 00000000
    slti    $at, s6, 0x0005
    bnel    $at, $zero, lbl_80A32E34
    mtc1    s6, $f18                   # $f18 = 0.00
    addiu   s4, s4, 0x000C             # s4 = 80A33EF4
    sltu    $at, s4, s7
    bne     $at, $zero, lbl_80A32DF4
    addiu   s5, s5, 0x000C             # s5 = 80A33EE8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0040          # a0 = 00000040
lbl_80A32F48:
    addu    v1, s2, v0
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sb      $zero, 0x0001(v1)          # 00000001
    sb      $zero, 0x0FC1(v1)          # 00000FC1
    sb      $zero, 0x0002(v1)          # 00000002
    sb      $zero, 0x0FC2(v1)          # 00000FC2
    sb      $zero, 0x0003(v1)          # 00000003
    sb      $zero, 0x0FC3(v1)          # 00000FC3
    sb      $zero, 0x0000(v1)          # 00000000
    bne     v0, a0, lbl_80A32F48
    sb      $zero, 0x0FC0(v1)          # 00000FC0
    addiu   v0, s2, 0x0040             # v0 = 000001D3
    sb      $zero, 0x0000(v0)          # 000001D3
    sb      $zero, 0x003F(v0)          # 00000212
    sb      $zero, 0x0040(v0)          # 00000213
    sb      $zero, 0x007F(v0)          # 00000252
    addiu   v1, $zero, 0x00C0          # v1 = 000000C0
    addiu   a0, $zero, 0x0FC0          # a0 = 00000FC0
lbl_80A32F90:
    addu    v0, s2, v1
    addiu   v1, v1, 0x0100             # v1 = 000001C0
    sb      $zero, 0x0040(v0)          # 00000213
    sb      $zero, 0x007F(v0)          # 00000252
    sb      $zero, 0x0080(v0)          # 00000253
    sb      $zero, 0x00BF(v0)          # 00000292
    sb      $zero, 0x00C0(v0)          # 00000293
    sb      $zero, 0x00FF(v0)          # 000002D2
    sb      $zero, 0x0000(v0)          # 000001D3
    bne     v1, a0, lbl_80A32F90
    sb      $zero, 0x003F(v0)          # 00000212
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
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80A33000:
    addiu   $sp, $sp, 0xFEA8           # $sp -= 0x158
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0158($sp)
    lui     $at, 0x41FC                # $at = 41FC0000
    mtc1    $at, $f2                   # $f2 = 31.50
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   t1, $sp, 0x0058            # t1 = FFFFFF00
lbl_80A33020:
    mtc1    t0, $f4                    # $f4 = 0.00
    addiu   t0, t0, 0x0001             # t0 = 00000001
    slti    $at, t0, 0x0040
    cvt.s.w $f6, $f4
    addiu   t1, t1, 0x0004             # t1 = FFFFFF04
    sub.s   $f0, $f6, $f2
    mul.s   $f8, $f0, $f0
    bne     $at, $zero, lbl_80A33020
    swc1    $f8, -0x0004(t1)           # FFFFFF00
    lw      s0, 0x0158($sp)
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    addiu   s0, s0, 0x0193             # s0 = 00000193
    and     s0, s0, $at
    or      a0, s0, $zero              # a0 = 00000193
    sw      s0, 0x0040($sp)
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f16                  # $f16 = 300.00
    lui     $at, 0x3F00                # $at = 3F000000
    addiu   t0, $sp, 0x0158            # t0 = 00000000
    mtc1    $at, $f14                  # $f14 = 0.50
    lw      a3, 0x0040($sp)
    or      t2, t0, $zero              # t2 = 00000000
    addiu   t1, $sp, 0x0058            # t1 = FFFFFF00
    addiu   a2, $zero, 0x0280          # a2 = 00000280
    lwc1    $f12, 0x0000(t1)           # FFFFFF00
lbl_80A33090:
    addiu   a0, $sp, 0x0058            # a0 = FFFFFF00
lbl_80A33094:
    lwc1    $f10, 0x0000(a0)           # FFFFFF00
    mul.s   $f18, $f10, $f14
    add.s   $f2, $f18, $f12
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_80A330E8
    lwc1    $f8, 0x0004(a0)            # FFFFFF04
    add.s   $f4, $f2, $f2
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    subu    v0, a2, t8
    slti    $at, v0, 0x00A7
    bne     $at, $zero, lbl_80A330D8
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A330D8
    addiu   v1, $zero, 0x00A6          # v1 = 000000A6
lbl_80A330D8:
    lbu     t9, 0x0000(a3)             # 00000000
    or      t4, t9, v1                 # t4 = 000000A6
    sb      t4, 0x0000(a3)             # 00000000
    lwc1    $f8, 0x0004(a0)            # FFFFFF04
lbl_80A330E8:
    addiu   a3, a3, 0x0001             # a3 = 00000001
    mul.s   $f10, $f8, $f14
    add.s   $f0, $f10, $f12
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A3313C
    lwc1    $f6, 0x0008(a0)            # FFFFFF08
    add.s   $f18, $f0, $f0
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    subu    v0, a2, t6
    slti    $at, v0, 0x00A7
    bne     $at, $zero, lbl_80A3312C
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A3312C
    addiu   v1, $zero, 0x00A6          # v1 = 000000A6
lbl_80A3312C:
    lbu     t7, 0x0000(a3)             # 00000001
    or      t8, t7, v1                 # t8 = 000000A6
    sb      t8, 0x0000(a3)             # 00000001
    lwc1    $f6, 0x0008(a0)            # FFFFFF08
lbl_80A3313C:
    addiu   a3, a3, 0x0001             # a3 = 00000002
    mul.s   $f8, $f6, $f14
    add.s   $f0, $f8, $f12
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A33190
    lwc1    $f4, 0x000C(a0)            # FFFFFF0C
    add.s   $f10, $f0, $f0
    trunc.w.s $f18, $f10
    mfc1    t4, $f18
    nop
    subu    v0, a2, t4
    slti    $at, v0, 0x00A7
    bne     $at, $zero, lbl_80A33180
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A33180
    addiu   v1, $zero, 0x00A6          # v1 = 000000A6
lbl_80A33180:
    lbu     t5, 0x0000(a3)             # 00000002
    or      t6, t5, v1                 # t6 = 000000A6
    sb      t6, 0x0000(a3)             # 00000002
    lwc1    $f4, 0x000C(a0)            # FFFFFF0C
lbl_80A33190:
    addiu   a3, a3, 0x0001             # a3 = 00000003
    addiu   a0, a0, 0x0010             # a0 = FFFFFF10
    mul.s   $f6, $f4, $f14
    add.s   $f0, $f6, $f12
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80A331E4
    nop
    add.s   $f8, $f0, $f0
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    subu    v0, a2, t8
    slti    $at, v0, 0x00A7
    bne     $at, $zero, lbl_80A331D8
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A331D8
    addiu   v1, $zero, 0x00A6          # v1 = 000000A6
lbl_80A331D8:
    lbu     t9, 0x0000(a3)             # 00000003
    or      t4, t9, v1                 # t4 = 000000A6
    sb      t4, 0x0000(a3)             # 00000003
lbl_80A331E4:
    bne     a0, t0, lbl_80A33094
    addiu   a3, a3, 0x0001             # a3 = 00000004
    addiu   t1, t1, 0x0004             # t1 = FFFFFF04
    bnel    t1, t2, lbl_80A33090
    lwc1    $f12, 0x0000(t1)           # FFFFFF04
    lui     a0, %hi(var_80A33F18)      # a0 = 80A30000
    lui     t3, %hi(var_80A33F28)      # t3 = 80A30000
    addiu   t3, t3, %lo(var_80A33F28)  # t3 = 80A33F28
    addiu   a0, a0, %lo(var_80A33F18)  # a0 = 80A33F18
    addiu   t1, $zero, 0x0780          # t1 = 00000780
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
lbl_80A33214:
    or      t0, t1, $zero              # t0 = 00000780
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addu    a2, s0, t1
    addu    v1, a2, a1
lbl_80A33224:
    lbu     t5, 0x0000(v1)             # 000000A6
    lw      v0, 0x0000(a0)             # 80A33F18
    addiu   a1, a1, 0x0004             # a1 = 00000008
    slt     $at, t5, v0
    beql    $at, $zero, lbl_80A33248
    lbu     t6, 0x0001(v1)             # 000000A7
    sb      v0, 0x0000(v1)             # 000000A6
    lw      v0, 0x0000(a0)             # 80A33F18
    lbu     t6, 0x0001(v1)             # 000000A7
lbl_80A33248:
    slt     $at, t6, v0
    beql    $at, $zero, lbl_80A33260
    lbu     t7, 0x0002(v1)             # 000000A8
    sb      v0, 0x0001(v1)             # 000000A7
    lw      v0, 0x0000(a0)             # 80A33F18
    lbu     t7, 0x0002(v1)             # 000000A8
lbl_80A33260:
    slt     $at, t7, v0
    beql    $at, $zero, lbl_80A33278
    lbu     t8, 0x0003(v1)             # 000000A9
    sb      v0, 0x0002(v1)             # 000000A8
    lw      v0, 0x0000(a0)             # 80A33F18
    lbu     t8, 0x0003(v1)             # 000000A9
lbl_80A33278:
    slt     $at, t8, v0
    beq     $at, $zero, lbl_80A33288
    nop
    sb      v0, 0x0003(v1)             # 000000A9
lbl_80A33288:
    bnel    a1, a3, lbl_80A33224
    addu    v1, a2, a1
    addiu   a0, a0, 0x0004             # a0 = 80A33F1C
    addu    v0, s0, t0
    addiu   t1, t1, 0x0040             # t1 = 000007C0
    sb      t2, 0x003C(v0)             # 0000003C
    bne     a0, t3, lbl_80A33214
    sb      t2, 0x0003(v0)             # 00000003
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0158           # $sp += 0x158
    jr      $ra
    nop


func_80A332BC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x167C             # a2 = 0601167C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80A32494
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80A33F28)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A33F28)  # a1 = 80A33F28
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    andi    t6, v0, 0x0003             # t6 = 00000000
    bne     t6, $zero, lbl_80A3332C
    sra     a1, v0,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80A33330
    lh      t7, 0x001C(s0)             # 0000001C
    sh      $zero, 0x00B6(s0)          # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x0016(s0)             # 00000016
    sh      v0, 0x0032(s0)             # 00000032
lbl_80A3332C:
    lh      t7, 0x001C(s0)             # 0000001C
lbl_80A33330:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0003             # t8 = 00000000
    bnel    t8, $zero, lbl_80A3334C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A324EC
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A3334C:
    jal     func_80A333DC
    lw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v0, 0x0003             # v0 = 00000000
    beql    v1, v0, lbl_80A33378
    lh      v0, 0x001C(s0)             # 0000001C
    bne     v0, $at, lbl_80A33384
    nop
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A33378:
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sb      t9, 0x0003(s0)             # 00000003
    andi    v0, v0, 0x0003             # v0 = 00000000
lbl_80A33384:
    bnel    v1, v0, lbl_80A33398
    lw      $ra, 0x001C($sp)
    jal     func_80A33000
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A33398:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A333A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A333DC:
    sw      a1, 0x0004($sp)
    lh      t7, 0x015C(a0)             # 0000015C
    lh      t9, 0x0016(a0)             # 00000016
    lui     t6, %hi(func_80A33418)     # t6 = 80A30000
    sll     t8, t7, 13
    addu    v0, t8, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   t6, t6, %lo(func_80A33418) # t6 = 80A33418
    sw      t6, 0x0154(a0)             # 00000154
    sh      $zero, 0x0158(a0)          # 00000158
    sh      v0, 0x0032(a0)             # 00000032
    sh      v0, 0x00B6(a0)             # 000000B6
    jr      $ra
    nop


func_80A33418:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     $at, %hi(var_80A33FA8)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A33FA8)($at)
    lwc1    $f6, 0x0140(a0)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A33478
    sh      $zero, 0x0158(a0)          # 00000158
    lh      t6, 0x0158(a0)             # 00000158
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0158(a0)             # 00000158
    lh      t8, 0x0158(a0)             # 00000158
    slti    $at, t8, 0x000F
    bnel    $at, $zero, lbl_80A3347C
    lwc1    $f0, 0x0140(a0)            # 00000140
    sw      v0, 0x001C($sp)
    jal     func_80A334C0
    sw      a0, 0x0020($sp)
    lw      v0, 0x001C($sp)
    beq     $zero, $zero, lbl_80A33478
    lw      a0, 0x0020($sp)
    sh      $zero, 0x0158(a0)          # 00000158
lbl_80A33478:
    lwc1    $f0, 0x0140(a0)            # 00000140
lbl_80A3347C:
    lui     $at, %hi(var_80A33FAC)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A33FAC)($at)
    abs.s   $f0, $f0
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_80A334B4
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f10, 0x0140(a0)           # 00000140
    lw      t9, 0x0670(v0)             # 00000670
    and     t0, t9, $at
    sw      t0, 0x0670(v0)             # 00000670
    lw      $ra, 0x0014($sp)
lbl_80A334B4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A334C0:
    lh      a2, 0x00B6(a0)             # 000000B6
    lh      t8, 0x0148(a0)             # 00000148
    lh      t7, 0x008A(a0)             # 0000008A
    lui     t6, %hi(func_80A33588)     # t6 = 80A30000
    subu    a3, a2, t8
    sll     a3, a3, 16
    subu    v1, t7, a2
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   t6, t6, %lo(func_80A33588) # t6 = 80A33588
    sll     v1, v1, 16
    sra     a3, a3, 16
    sw      t6, 0x0154(a0)             # 00000154
    bgez    a3, lbl_80A334FC
    sra     v1, v1, 16
    subu    a3, $zero, a3
lbl_80A334FC:
    blez    v1, lbl_80A33524
    slti    $at, a3, 0x4001
    slti    $at, a3, 0x4001
    bne     $at, $zero, lbl_80A3351C
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_80A3353C
    sh      t9, 0x015A(a0)             # 0000015A
lbl_80A3351C:
    beq     $zero, $zero, lbl_80A3353C
    sh      t0, 0x015A(a0)             # 0000015A
lbl_80A33524:
    bne     $at, $zero, lbl_80A33538
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_80A3353C
    sh      t1, 0x015A(a0)             # 0000015A
lbl_80A33538:
    sh      t2, 0x015A(a0)             # 0000015A
lbl_80A3353C:
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f16, 0x0028(a0)           # 00000028
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f4, $f6
    lwc1    $f6, 0x002C(a0)            # 0000002C
    swc1    $f8, 0x0164(a0)            # 00000164
    lwc1    $f10, 0x0028(v0)           # 00000028
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0168(a0)           # 00000168
    lwc1    $f4, 0x002C(v0)            # 0000002C
    sh      $zero, 0x015E(a0)          # 0000015E
    lh      t3, 0x015E(a0)             # 0000015E
    sub.s   $f8, $f4, $f6
    sb      t4, 0x0162(a0)             # 00000162
    sh      t3, 0x0160(a0)             # 00000160
    swc1    $f8, 0x016C(a0)            # 0000016C
    jr      $ra
    nop


func_80A33588:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    sw      t7, 0x0020($sp)
    lh      t8, 0x015C(s0)             # 0000015C
    lh      t0, 0x0016(s0)             # 00000016
    lh      t4, 0x0032(s0)             # 00000032
    sll     t9, t8, 13
    addu    t3, t9, t0
    subu    v0, t3, t4
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A335E4
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A335E4
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A335E4:
    slti    $at, v1, 0x1D00
    beq     $at, $zero, lbl_80A33604
    nop
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    jal     func_800637D4
    addiu   a1, $zero, 0x006A          # a1 = 0000006A
    beq     $zero, $zero, lbl_80A33610
    lh      a1, 0x015A(s0)             # 0000015A
lbl_80A33604:
    jal     func_800637D4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lh      a1, 0x015A(s0)             # 0000015A
lbl_80A33610:
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lh      a2, 0x015E(s0)             # 0000015E
    sll     a1, a1, 13
    sll     a1, a1, 16
    jal     func_80063704
    sra     a1, a1, 16
    beql    v0, $zero, lbl_80A33678
    lh      t1, 0x015C(s0)             # 0000015C
    lh      t5, 0x015C(s0)             # 0000015C
    lh      t6, 0x015A(s0)             # 0000015A
    lw      v0, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addu    t7, t5, t6
    andi    t8, t7, 0x0007             # t8 = 00000000
    sh      t8, 0x015C(s0)             # 0000015C
    lw      t9, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    or      a0, s0, $zero              # a0 = 00000000
    and     t0, t9, $at
    sw      t0, 0x0670(v0)             # 00000670
    swc1    $f4, 0x0140(s0)            # 00000140
    jal     func_80A333DC
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80A336A0
    lw      t6, 0x0020($sp)
    lh      t1, 0x015C(s0)             # 0000015C
lbl_80A33678:
    lh      t3, 0x0016(s0)             # 00000016
    lh      t5, 0x0160(s0)             # 00000160
    sll     t2, t1, 13
    addu    t4, t2, t3
    addu    v0, t4, t5
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lw      t6, 0x0020($sp)
lbl_80A336A0:
    lw      t7, 0x0670(t6)             # 00000670
    andi    t8, t7, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_80A336D4
    lwc1    $f0, 0x0140(s0)            # 00000140
    lbu     t9, 0x0162(s0)             # 00000162
    or      a0, s0, $zero              # a0 = 00000000
    beql    t9, $zero, lbl_80A336F8
    mtc1    $zero, $f8                 # $f8 = 0.00
    jal     func_80A326D4
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80A336F8
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f0, 0x0140(s0)            # 00000140
lbl_80A336D4:
    lui     $at, %hi(var_80A33FB0)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A33FB0)($at)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80A336F8
    mtc1    $zero, $f8                 # $f8 = 0.00
    sb      $zero, 0x0162(s0)          # 00000162
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80A336F8:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    jal     func_8002313C
    swc1    $f8, 0x0140(s0)            # 00000140
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A3371C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A32758
    lw      a1, 0x0024($sp)
    jal     func_80A32554
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $zero, lbl_80A33774
    nop
    bnel    v0, $at, lbl_80A33780
    lw      $ra, 0x001C($sp)
lbl_80A33774:
    jal     func_80A329D8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A33780:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A33790:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lw      a1, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0x0C20             # t2 = 06010C20
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a1)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A33814:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_80A33D08)      # t0 = 80A30000
    lh      t1, 0x00B4(s0)             # 000000B4
    andi    t8, t7, 0x0003             # t8 = 00000000
    sll     t9, t8,  1
    addu    t0, t0, t9
    lh      t0, %lo(var_80A33D08)(t0)
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    addu    t2, t0, t1
    sh      t2, 0x003C($sp)
    lh      t3, 0x00B6(s0)             # 000000B6
    sh      t3, 0x003E($sp)
    lh      t4, 0x00B8(s0)             # 000000B8
    sh      t4, 0x0040($sp)
    lw      a2, 0x0178(s0)             # 00000178
    lwc1    $f14, 0x0174(s0)           # 00000174
    jal     func_800AB510
    lwc1    $f12, 0x0170(s0)           # 00000170
    lui     $at, %hi(var_80A33FB4)     # $at = 80A30000
    lwc1    $f12, %lo(var_80A33FB4)($at)
    lw      a2, 0x0180(s0)             # 00000180
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x004C($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a2, 0x0030($sp)
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x017C(s0)            # 0000017C
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t3, t2, $at                # t3 = FFFFFF00
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x17D0             # t6 = 060117D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80A33940:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0074($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    lw      t8, 0x0074($sp)
    andi    t7, t6, 0x0003             # t7 = 00000000
    sh      t7, 0x006A($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_8007E404
    or      s0, a0, $zero              # s0 = 00000000
    lh      t9, 0x006A($sp)
    bne     t9, $zero, lbl_80A339AC
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     a3, %hi(var_80A33F38)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A33F38)  # a3 = 80A33F38
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x005C($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    swc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x002C(s1)           # 0000002C
    beq     $zero, $zero, lbl_80A33A00
    swc1    $f16, 0x0064($sp)
lbl_80A339AC:
    lh      t1, 0x006A($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a3, s1, 0x00B4             # a3 = 000000B4
    bne     t1, $at, lbl_80A339F0
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFEC
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     a3, %hi(var_80A33F40)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A33F40)  # a3 = 80A33F40
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    swc1    $f8, 0x0060($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    beq     $zero, $zero, lbl_80A33A00
    swc1    $f10, 0x0064($sp)
lbl_80A339F0:
    addiu   a1, s1, 0x0024             # a1 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    sw      a3, 0x0058($sp)
    lw      a3, 0x0058($sp)
lbl_80A33A00:
    lwc1    $f12, 0x005C($sp)
    lwc1    $f14, 0x0060($sp)
    jal     func_800AB510
    lw      a2, 0x0064($sp)
    lh      t2, 0x006A($sp)
    lui     t4, %hi(var_80A33F48)      # t4 = 80A30000
    addiu   t4, t4, %lo(var_80A33F48)  # t4 = 80A33F48
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     t3, t3,  2
    addu    v0, t3, t4
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0x4220                 # a2 = 42200000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x0074($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      a3, 0x0048($sp)
    lui     t3, 0xFD90                 # t3 = FD900000
    addiu   t4, s1, 0x0193             # t4 = 00000193
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t5, t4, $at
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0708                 # t8 = 07080000
    ori     t8, t8, 0x0200             # t8 = 07080200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xF590                 # t7 = F5900000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xE600                 # t1 = E6000000
    lui     t3, 0xF300                 # t3 = F3000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x077F                 # t4 = 077F0000
    ori     t4, t4, 0xF100             # t4 = 077FF100
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t8, 0xF588                 # t8 = F5880000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0008                 # t9 = 00080000
    ori     t9, t9, 0x0200             # t9 = 00080200
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x1000             # t8 = F5881000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x000F                 # t3 = 000F0000
    ori     t3, t3, 0xC0FC             # t3 = 000FC0FC
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xF200                 # t2 = F2000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_80A33CB0)      # t6 = 80A30000
    addiu   t6, t6, %lo(var_80A33CB0)  # t6 = 80A33CB0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_80A33BAC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80A33790
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x0790             # a1 = 06010790
    jal     func_80028048
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x017C(s0)            # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A33C04
    lh      t6, 0x001C(s0)             # 0000001C
    jal     func_80A33814
    or      a1, s1, $zero              # a1 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80A33C04:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0003             # t7 = 00000000
    bne     t7, $at, lbl_80A33C4C
    nop
    lw      v0, 0x0118(s0)             # 00000118
    beql    v0, $zero, lbl_80A33C58
    lw      $ra, 0x001C($sp)
    lbu     v1, 0x014C(v0)             # 0000014C
    andi    t8, v1, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_80A33C54
    andi    t9, v1, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80A33C54
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A33940
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A33C58
    lw      $ra, 0x001C($sp)
lbl_80A33C4C:
    jal     func_80A33940
    or      a1, s1, $zero              # a1 = 00000000
lbl_80A33C54:
    lw      $ra, 0x001C($sp)
lbl_80A33C58:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop
    nop

.section .data

var_80A33C70: .word \
0xFCE00000, 0xFCE00000, 0x00000800, 0xFFFFFFFF, \
0x03200000, 0xFCE00000, 0x08000800, 0xFFFFFFFF, \
0x03200000, 0x03200000, 0x08000000, 0xFFFFFFFF, \
0xFCE00000, 0x03200000, 0x00000000, 0xFFFFFFFF
var_80A33CB0: .word \
0xE7000000, 0x00000000, 0xFC3097FF, 0xFFFFFE38, \
0xE200001C, 0x0C184DD8, 0xD9F0FBFF, 0x00000000, \
0x01004008
.word var_80A33C70
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A33CE8: .word 0x00FC0600, 0x00000010, 0x00F10000, 0x00001194
.word func_80A332BC
.word func_80A333A8
.word func_80A3371C
.word func_80A33BAC
var_80A33D08: .word 0x00000000, 0x00000000
var_80A33D10: .word 0x01000100
var_80A33D14: .word 0xC0000000, 0x40000000
var_80A33D1C: .word \
0x00002080, 0x80808080, 0x20000000, 0x2080A0A3, \
0xA3A3A080, 0x20002080, 0xA0A5A6A6, 0xA6A5A080, \
0x2080A0A5, 0xA6A6A6A6, 0xA6A5A080, 0x80A3A6A6, \
0xA6A6A6A6, 0xA6A38080, 0xA3A6A6A6, 0xA6A6A6A6, \
0xA38080A3, 0xA6A6A6A6, 0xA6A6A6A3, 0x8080A0A5, \
0xA6A6A6A6, 0xA6A5A080, 0x2080A0A5, 0xA6A6A6A5, \
0xA0802000, 0x2080A0A3, 0xA3A3A080, 0x20000000, \
0x20808080, 0x80802000, 0x00000000
var_80A33D98: .word 0x20802080, 0xA0802080, 0x20000000
var_80A33DA4: .word 0xC0C00000, 0x42C80000, 0x40F33333
var_80A33DB0: .word \
0xC149999A, 0x428A6667, 0xC1200000, 0xC1100000, \
0x422C0000, 0xBF800000, 0xC0400000, 0x41700000, \
0x4109999A, 0xC109999A, 0x41700000, 0x41580000, \
0xC0D33333, 0x41D00000, 0x4139999A, 0xC1480000, \
0x422C0000, 0x41000000, 0xC189999A, 0x428C0000, \
0x3F19999A, 0xC1000000, 0x42C80000, 0x40F33333, \
0x40C00000, 0x42C80000, 0x40F33333, 0x4149999A, \
0x428A6667, 0xC1200000, 0x41100000, 0x422C0000, \
0xBF800000, 0x40400000, 0x41700000, 0x4109999A, \
0x4109999A, 0x41700000, 0x41580000, 0x40D33333, \
0x41D00000, 0x4139999A, 0x41480000, 0x422C0000, \
0x41000000, 0x4189999A, 0x428C0000, 0x3F19999A, \
0x41000000, 0x42C80000, 0x40F33333, 0x00000000, \
0x428C0000, 0xC134CCCD, 0x00000000, 0x42326667, \
0xC0000000, 0x00000000, 0x41700000, 0x4129999A, \
0x00000000, 0x41700000, 0x3E99999A, 0x00000000, \
0x41D00000, 0x4139999A, 0x00000000, 0x42B0CCCD, \
0xBFB33333, 0x00000000, 0x42BF6667, 0x416E6667, \
0x00000000, 0x42CACCCD, 0x40A00000
var_80A33EDC: .word 0x41400000, 0x41AA6667, 0xC0200000
var_80A33EE8: .word \
0x41F00000, 0x41AA6667, 0xC0200000, 0xC1700000, \
0x41AA6667, 0xC0200000, 0xC1F00000, 0x41AA6667, \
0xC0200000, 0x41400000, 0x41AA6667, 0xC0200000
var_80A33F18: .word 0x00000080, 0x000000A0, 0x000000A0, 0x00000080
var_80A33F28: .word 0xC8500064, 0xB0F403E8, 0xB0F80320, 0x30FC03E8
var_80A33F38: .word 0x0000C000, 0x00000000
var_80A33F40: .word 0x00004000, 0x00000000
var_80A33F48: .word \
0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, 0x3D9374BC, \
0x3D9374BC, 0x3D9374BC, 0x3DCCCCCD, 0x3DCCCCCD, \
0x3E072B02, 0x00000000

.section .rodata

var_80A33F70: .word 0x38C90FDB
var_80A33F74: .word 0x38C90FDB
var_80A33F78: .word 0x3DCCCCCD
var_80A33F7C: .word 0x3DCCCCCD
var_80A33F80: .word 0x3EAE147B
var_80A33F84: .word 0x3EAE147B
var_80A33F88: .word 0x3DCCCCCD
var_80A33F8C: .word 0x3EAE147B
var_80A33F90: .word 0x3EAE147B
var_80A33F94: .word 0x3F490FDB
var_80A33F98: .word 0x38C90FDB
var_80A33F9C: .word 0x3F666666
var_80A33FA0: .word 0x3F23D70A
var_80A33FA4: .word 0x3E4CCCCD
var_80A33FA8: .word 0x3A83126F
var_80A33FAC: .word 0x3A83126F
var_80A33FB0: .word 0x3A83126F
var_80A33FB4: .word 0x3DCCCCCD, 0x00000000, 0x00000000

