.section .text
func_80A30240:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80A310DC)      # a1 = 80A30000
    sw      $zero, 0x002C($sp)
    addiu   a1, a1, %lo(var_80A310DC)  # a1 = 80A310DC
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t8, t6,  8
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sb      t8, 0x0158(s0)             # 00000158
    sh      t0, 0x001C(s0)             # 0000001C
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t1, %hi(var_80A310B0)      # t1 = 80A30000
    bne     v0, $at, lbl_80A303E0
    nop
    lh      t1, %lo(var_80A310B0)(t1)
    addiu   $at, $zero, 0x0100         # $at = 00000100
    lui     t2, %hi(func_80A30C04)     # t2 = 80A30000
    beq     t1, $at, lbl_80A302BC
    addiu   t2, t2, %lo(func_80A30C04) # t2 = 80A30C04
    beq     $zero, $zero, lbl_80A30394
    sw      t2, 0x0154(s0)             # 00000154
lbl_80A302BC:
    lh      v0, 0x00B6(s0)             # 000000B6
    lui     t0, %hi(func_80A30C04)     # t0 = 80A30000
    addiu   t0, t0, %lo(func_80A30C04) # t0 = 80A30C04
    bltz    v0, lbl_80A302D8
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A302D8
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A302D8:
    slti    $at, v1, 0x4000
    beql    $at, $zero, lbl_80A30394
    sw      t0, 0x0154(s0)             # 00000154
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     v1, %hi(var_80A310B4)      # v1 = 80A30000
    addiu   v1, v1, %lo(var_80A310B4)  # v1 = 80A310B4
    lbu     v0, 0x0000(v1)             # 80A310B4
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     t9, %hi(func_80A30C04)     # t9 = 80A30000
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t9, t9, %lo(func_80A30C04) # t9 = 80A30C04
    addiu   t8, v0, 0x0001             # t8 = 00000001
    bgez    v0, lbl_80A30330
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80A30330:
    c.lt.s  $f6, $f10
    ori     $at, $zero, 0x8000         # $at = 00008000
    bc1fl   lbl_80A30388
    sb      t8, 0x0000(v1)             # 80A310B4
    lh      t4, 0x00B6(s0)             # 000000B6
    sh      t3, 0x0160(s0)             # 00000160
    lw      a0, 0x003C($sp)
    addu    t5, t4, $at
    lui     $at, %hi(var_80A310B0)     # $at = 80A30000
    sh      t5, %lo(var_80A310B0)($at)
    jal     func_8002049C
    lbu     a1, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_80A30378
    lui     t7, %hi(func_80A30BA8)     # t7 = 80A30000
    lui     t6, %hi(func_80A3056C)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A3056C) # t6 = 80A3056C
    beq     $zero, $zero, lbl_80A30394
    sw      t6, 0x0154(s0)             # 00000154
lbl_80A30378:
    addiu   t7, t7, %lo(func_80A30BA8) # t7 = 80A30BA8
    beq     $zero, $zero, lbl_80A30394
    sw      t7, 0x0154(s0)             # 00000154
    sb      t8, 0x0000(v1)             # 00000000
lbl_80A30388:
    beq     $zero, $zero, lbl_80A30394
    sw      t9, 0x0154(s0)             # 00000154
    sw      t0, 0x0154(s0)             # 00000154
lbl_80A30394:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lw      t3, 0x0004(s0)             # 00000004
    lbu     a1, 0x0158(s0)             # 00000158
    mul.s   $f4, $f0, $f18
    ori     t4, t3, 0x0010             # t4 = 00000010
    sw      t4, 0x0004(s0)             # 00000004
    trunc.w.s $f8, $f4
    mfc1    t2, $f8
    nop
    sh      t2, 0x0162(s0)             # 00000162
    jal     func_8002049C
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_80A304FC
    addiu   t5, $zero, 0x015E          # t5 = 0000015E
    beq     $zero, $zero, lbl_80A304FC
    sh      t5, 0x015E(s0)             # 0000015E
lbl_80A303E0:
    bne     v0, $zero, lbl_80A30438
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x31C4             # a0 = 060131C4
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      $zero, 0x015A(s0)          # 0000015A
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    swc1    $f16, %lo(var_80A310B8)($at)
    lbu     a1, 0x0158(s0)             # 00000158
    jal     func_8002049C
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_80A3042C
    lui     t7, %hi(func_80A305B8)     # t7 = 80A30000
    lui     t6, %hi(func_80A3057C)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A3057C) # t6 = 80A3057C
    beq     $zero, $zero, lbl_80A304E4
    sw      t6, 0x0154(s0)             # 00000154
lbl_80A3042C:
    addiu   t7, t7, %lo(func_80A305B8) # t7 = 80A305B8
    beq     $zero, $zero, lbl_80A304E4
    sw      t7, 0x0154(s0)             # 00000154
lbl_80A30438:
    bne     v0, $at, lbl_80A30480
    lui     a0, 0x0601                 # a0 = 06010000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x0E10             # a0 = 06010E10
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      a0, 0x003C($sp)
    jal     func_8002049C
    lbu     a1, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_80A30474
    lui     t9, %hi(func_80A308B4)     # t9 = 80A30000
    lui     t8, %hi(func_80A3056C)     # t8 = 80A30000
    addiu   t8, t8, %lo(func_80A3056C) # t8 = 80A3056C
    beq     $zero, $zero, lbl_80A304E4
    sw      t8, 0x0154(s0)             # 00000154
lbl_80A30474:
    addiu   t9, t9, %lo(func_80A308B4) # t9 = 80A308B4
    beq     $zero, $zero, lbl_80A304E4
    sw      t9, 0x0154(s0)             # 00000154
lbl_80A30480:
    addiu   a0, a0, 0xA938             # a0 = FFFFA938
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      a0, 0x003C($sp)
    jal     func_8002049C
    lbu     a1, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_80A304C0
    lui     $at, 0x42A0                # $at = 42A00000
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f10                  # $f10 = 80.00
    lui     t0, %hi(func_80A3056C)     # t0 = 80A30000
    addiu   t0, t0, %lo(func_80A3056C) # t0 = 80A3056C
    add.s   $f18, $f6, $f10
    sw      t0, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80A304E4
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_80A304C0:
    lw      t1, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x41F0                 # a1 = 41F00000
    ori     t2, t1, 0x0010             # t2 = 00000010
    jal     func_80020F04
    sw      t2, 0x0004(s0)             # 00000004
    lui     t3, %hi(func_80A30AC8)     # t3 = 80A30000
    addiu   t3, t3, %lo(func_80A30AC8) # t3 = 80A30AC8
    sw      t3, 0x0154(s0)             # 00000154
lbl_80A304E4:
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
lbl_80A304FC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A30510:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      t7, 0x0018($sp)
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    lui     $at, %hi(var_80A310B0)     # $at = 80A30000
    lh      t8, 0x001C(t7)             # 0000001C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bnel    t8, $zero, lbl_80A30560
    lw      $ra, 0x0014($sp)
    sh      t9, %lo(var_80A310B0)($at)
    lui     $at, %hi(var_80A310B4)     # $at = 80A30000
    sb      t0, %lo(var_80A310B4)($at)
    lw      $ra, 0x0014($sp)
lbl_80A30560:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A3056C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A3057C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lwc1    $f4, 0x0140(a0)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    c.eq.s  $f0, $f4
    nop
    bc1t    lbl_80A305B0
    nop
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f0, 0x0140(a0)            # 00000140
lbl_80A305B0:
    jr      $ra
    nop


func_80A305B8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t1, %hi(var_80A310B4)      # t1 = 80A30000
    lwc1    $f4, 0x0140(a0)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    c.eq.s  $f0, $f4
    nop
    bc1t    lbl_80A306A8
    nop
    lh      t6, 0x015A(a0)             # 0000015A
    bnel    t6, $zero, lbl_80A30684
    lw      t8, 0x0670(v0)             # 00000670
    lh      t7, 0x00B6(a0)             # 000000B6
    lh      t8, 0x008A(a0)             # 0000008A
    lwc1    $f6, 0x0090(a0)            # 00000090
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    subu    t9, t7, t8
    sh      t9, 0x0162(a0)             # 00000162
    swc1    $f6, %lo(var_80A310B8)($at)
    lwc1    $f8, 0x0140(a0)            # 00000140
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80A3062C
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80A30634
    lh      t0, 0x008A(a0)             # 0000008A
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_80A3062C:
    nop
    lh      t0, 0x008A(a0)             # 0000008A
lbl_80A30634:
    lh      t1, 0x00B6(v0)             # 000000B6
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    subu    t2, t0, t1
    sll     t3, t2, 16
    sra     t4, t3, 16
    blez    t4, lbl_80A30658
    nop
    beq     $zero, $zero, lbl_80A30658
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80A30658:
    mtc1    v0, $f10                   # $f10 = NaN
    lui     t7, %hi(func_80A306D0)     # t7 = 80A30000
    addiu   t7, t7, %lo(func_80A306D0) # t7 = 80A306D0
    cvt.s.w $f16, $f10
    sw      t7, 0x0154(a0)             # 00000154
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    jr      $ra
    sh      t6, 0x015A(a0)             # 0000015A
lbl_80A30680:
    lw      t8, 0x0670(v0)             # 0000066F
lbl_80A30684:
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t9, t8, $at
    sw      t9, 0x0670(v0)             # 0000066F
    lh      v1, 0x015A(a0)             # 0000015A
    swc1    $f0, 0x0140(a0)            # 00000140
    beq     v1, $zero, lbl_80A306C8
    addiu   t0, v1, 0xFFFF             # t0 = FFFFFFFF
    jr      $ra
    sh      t0, 0x015A(a0)             # 0000015A
lbl_80A306A8:
    lbu     t1, %lo(var_80A310B4)(t1)
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lui     t2, %hi(func_80A3057C)     # t2 = 80A30000
    bne     t1, $at, lbl_80A306C4
    addiu   t2, t2, %lo(func_80A3057C) # t2 = 80A3057C
    jr      $ra
    sw      t2, 0x0154(a0)             # 00000154
lbl_80A306C4:
    sh      $zero, 0x015A(a0)          # 0000015A
lbl_80A306C8:
    jr      $ra
    nop


func_80A306D0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x015C(s0)             # 0000015C
    lw      v1, 0x1C44(a1)             # 00001C44
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x015C(s0)             # 0000015C
    lh      v0, 0x015C(s0)             # 0000015C
    addiu   a1, $zero, 0x0258          # a1 = 00000258
    addiu   a0, s0, 0x015E             # a0 = 0000015E
    slti    $at, v0, 0x0006
    bnel    $at, $zero, lbl_80A30718
    sh      v0, 0x015C(s0)             # 0000015C
    beq     $zero, $zero, lbl_80A30718
    sh      t8, 0x015C(s0)             # 0000015C
    sh      v0, 0x015C(s0)             # 0000015C
lbl_80A30718:
    lh      a2, 0x015C(s0)             # 0000015C
    jal     func_800637D4
    sw      v1, 0x002C($sp)
    sw      v0, 0x0028($sp)
    lh      t0, 0x015A(s0)             # 0000015A
    lh      t9, 0x015E(s0)             # 0000015E
    lh      t1, 0x0160(s0)             # 00000160
    lui     $at, %hi(var_80A310F0)     # $at = 80A30000
    multu   t9, t0
    lwc1    $f8, %lo(var_80A310F0)($at)
    lui     $at, %hi(var_80A310F4)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A310F4)($at)
    lw      v1, 0x002C($sp)
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    mflo    a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addu    t2, t1, a1
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    sh      t4, 0x00B6(s0)             # 000000B6
    lw      t5, 0x0670(v1)             # 00000670
    andi    t6, t5, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_80A30828
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, %lo(var_80A310B8)($at)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80A3082C
    mtc1    $zero, $f18                # $f18 = 0.00
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      t8, 0x0162(s0)             # 00000162
    sh      a1, 0x0026($sp)
    sw      v1, 0x002C($sp)
    subu    a0, t7, t8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    lwc1    $f10, %lo(var_80A310B8)($at)
    lwc1    $f18, 0x0008(s0)           # 00000008
    lw      v1, 0x002C($sp)
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0024(v1)            # 00000024
    lh      t0, 0x0162(s0)             # 00000162
    lh      t9, 0x00B6(s0)             # 000000B6
    subu    a0, t9, t0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A310B8)($at)
    lwc1    $f10, 0x0010(s0)           # 00000010
    lw      v1, 0x002C($sp)
    mul.s   $f8, $f0, $f6
    lh      a1, 0x0026($sp)
    add.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80A30834
    swc1    $f16, 0x002C(v1)           # 0000002C
lbl_80A30828:
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_80A3082C:
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    swc1    $f18, %lo(var_80A310B8)($at)
lbl_80A30834:
    lw      t2, 0x0028($sp)
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80A312C0)     # $at = 80A30000
    beq     t2, $zero, lbl_80A30894
    sh      t1, %lo(var_80A312C0)($at)
    lw      t3, 0x0670(v1)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f4                 # $f4 = 0.00
    and     t4, t3, $at
    sw      t4, 0x0670(v1)             # 00000670
    lh      t5, 0x0160(s0)             # 00000160
    addiu   $at, $zero, 0x0E10         # $at = 00000E10
    lui     t9, %hi(func_80A305B8)     # t9 = 80A30000
    addu    t6, t5, a1
    div     $zero, t6, $at
    mfhi    t7
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addiu   t9, t9, %lo(func_80A305B8) # t9 = 80A305B8
    sh      t7, 0x0160(s0)             # 00000160
    sh      $zero, 0x015C(s0)          # 0000015C
    sh      $zero, 0x015E(s0)          # 0000015E
    sh      t8, 0x015A(s0)             # 0000015A
    sw      t9, 0x0154(s0)             # 00000154
    swc1    $f4, 0x0140(s0)            # 00000140
lbl_80A30894:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A308B4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A310B8)($at)
    lui     a0, %hi(var_80A312C0)      # a0 = 80A30000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A30A2C
    lw      $ra, 0x001C($sp)
    lh      a0, %lo(var_80A312C0)(a0)
    lw      t6, 0x0034($sp)
    beql    a0, $zero, lbl_80A30A2C
    lw      $ra, 0x001C($sp)
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_80063684              # coss?
    sw      t7, 0x002C($sp)
    lui     a0, %hi(var_80A312C0)      # a0 = 80A30000
    lh      a0, %lo(var_80A312C0)(a0)
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0020($sp)
    lw      v0, 0x002C($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f18, 0x002C(v0)           # 0000002C
    lwc1    $f14, 0x0020($sp)
    sub.s   $f2, $f8, $f10
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f10                  # $f10 = 110.00
    sub.s   $f12, $f18, $f4
    mul.s   $f6, $f2, $f0
    lui     $at, 0x4220                # $at = 42200000
    lui     t8, %hi(var_80A310B0)      # t8 = 80A30000
    mul.s   $f8, $f12, $f14
    lui     t9, %hi(var_80A312C0)      # t9 = 80A30000
    mul.s   $f18, $f2, $f14
    nop
    mul.s   $f4, $f12, $f0
    add.s   $f16, $f6, $f8
    sub.s   $f6, $f18, $f4
    c.lt.s  $f10, $f6
    nop
    bc1t    lbl_80A30990
    nop
    mtc1    $at, $f8                   # $f8 = 40.00
    abs.s   $f0, $f16
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_80A30A2C
    lw      $ra, 0x001C($sp)
lbl_80A30990:
    lh      t8, %lo(var_80A310B0)(t8)
    lh      t9, %lo(var_80A312C0)(t9)
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, %hi(var_80A310B8)     # $at = 80A30000
    subu    v0, t8, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A309BC
    swc1    $f18, %lo(var_80A310B8)($at)
    beq     $zero, $zero, lbl_80A309C0
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A309BC:
    subu    v1, $zero, v0
lbl_80A309C0:
    slti    $at, v1, 0x0080
    beq     $at, $zero, lbl_80A309F0
    lw      a0, 0x0034($sp)
    jal     func_800204D0
    lbu     a1, 0x0158(s0)             # 00000158
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    lui     $at, %hi(var_80A310B4)     # $at = 80A30000
    lui     t1, %hi(func_80A3056C)     # t1 = 80A30000
    sb      t0, %lo(var_80A310B4)($at)
    addiu   t1, t1, %lo(func_80A3056C) # t1 = 80A3056C
    beq     $zero, $zero, lbl_80A30A28
    sw      t1, 0x0154(s0)             # 00000154
lbl_80A309F0:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28CE          # a1 = 000028CE
    lw      a0, 0x0034($sp)
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_800314D8
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     t3, %hi(func_80A30A3C)     # t3 = 80A30000
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    addiu   t3, t3, %lo(func_80A30A3C) # t3 = 80A30A3C
    sh      t2, 0x015A(s0)             # 0000015A
    sw      t3, 0x0154(s0)             # 00000154
lbl_80A30A28:
    lw      $ra, 0x001C($sp)
lbl_80A30A2C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A30A3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x015A(a3)             # 0000015A
    addiu   a0, a3, 0x015C             # a0 = 0000015C
    addiu   a1, $zero, 0x3000          # a1 = 00003000
    beq     v0, $zero, lbl_80A30A68
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a3)             # 0000015A
    lh      v0, 0x015A(a3)             # 0000015A
lbl_80A30A68:
    bne     v0, $zero, lbl_80A30AB0
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, a3, 0x015C             # a0 = 0000015C
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704
    sw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A30AB8
    lw      a3, 0x0018($sp)
    lw      a2, 0x013C(a3)             # 0000013C
    sw      a3, 0x0018($sp)
    jal     func_80031530
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a3, 0x0018($sp)
    lui     t7, %hi(func_80A308B4)     # t7 = 80A30000
    addiu   t7, t7, %lo(func_80A308B4) # t7 = 80A308B4
    beq     $zero, $zero, lbl_80A30AB8
    sw      t7, 0x0154(a3)             # 00000154
lbl_80A30AB0:
    jal     func_80063704
    addiu   a2, $zero, 0x0800          # a2 = 00000800
lbl_80A30AB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30AC8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8002049C
    lbu     a1, 0x0158(t6)             # 00000158
    beq     v0, $zero, lbl_80A30B08
    lw      a0, 0x001C($sp)
    jal     func_8006BA10
    lw      a1, 0x0018($sp)
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_80A30B18)     # t7 = 80A30000
    addiu   t7, t7, %lo(func_80A30B18) # t7 = 80A30B18
    sw      t7, 0x0154(t8)             # 00000154
lbl_80A30B08:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30B18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_80A30B8C
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2837          # a1 = 00002837
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lui     t8, %hi(func_80A3056C)     # t8 = 80A30000
    lw      t6, 0x0004(a3)             # 00000004
    addiu   t8, t8, %lo(func_80A3056C) # t8 = 80A3056C
    sw      t8, 0x0154(a3)             # 00000154
    and     t7, t6, $at
    beq     $zero, $zero, lbl_80A30B98
    sw      t7, 0x0004(a3)             # 00000004
lbl_80A30B8C:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x2036          # a1 = 00002036
lbl_80A30B98:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30BA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002049C
    lbu     a1, 0x0158(t6)             # 00000158
    beq     v0, $zero, lbl_80A30BF4
    lw      a0, 0x0018($sp)
    addiu   a0, a0, 0x015E             # a0 = 0000015E
    addiu   a1, $zero, 0x015E          # a1 = 0000015E
    jal     func_800637D4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     v0, $zero, lbl_80A30BF4
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_80A3056C)     # t7 = 80A30000
    addiu   t7, t7, %lo(func_80A3056C) # t7 = 80A3056C
    sw      t7, 0x0154(t8)             # 00000154
lbl_80A30BF4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30C04:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     a1, 0x0158(a3)             # 00000158
    sw      a3, 0x0018($sp)
    jal     func_8002049C
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A30C44
    lw      a3, 0x0018($sp)
    addiu   a0, a3, 0x015E             # a0 = 0000015E
    addiu   a1, $zero, 0x015E          # a1 = 0000015E
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800637D4
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80A30C44:
    lw      t6, 0x001C($sp)
    lbu     t7, 0x1C27(t6)             # 00001C27
    beql    t7, $zero, lbl_80A30C68
    lw      t0, 0x0004(a3)             # 00000004
    lw      t8, 0x0004(a3)             # 00000004
    ori     t9, t8, 0x0080             # t9 = 00000080
    beq     $zero, $zero, lbl_80A30C74
    sw      t9, 0x0004(a3)             # 00000004
    lw      t0, 0x0004(a3)             # 00000004
lbl_80A30C68:
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    and     t1, t0, $at
    sw      t1, 0x0004(a3)             # 00000004
lbl_80A30C74:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30C84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t6, 0x001C(a0)             # 0000001C
    bnel    t6, $at, lbl_80A30CC0
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0162(a0)             # 00000162
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0162(a0)             # 00000162
    lw      $ra, 0x0014($sp)
lbl_80A30CC0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A30CCC:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lh      t6, 0x015E(s1)             # 0000015E
    blezl   t6, lbl_80A30E84
    lw      $ra, 0x0044($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lh      t3, 0x0162(s1)             # 00000162
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    $at, $zero, t3
    sll     t4, $at,  2
    addu    t4, t4, $at
    sll     t4, t4,  2
    andi    t5, t4, 0x01FF             # t5 = 00000000
    sw      t5, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t0, 0x004C($sp)
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x8080             # t9 = FA008080
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFFFF                 # t1 = FFFF0000
    ori     t1, t1, 0x00FF             # t1 = FFFF00FF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    lui     t4, 0xFF00                 # t4 = FF000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lwc1    $f4, 0x0028(s1)            # 00000028
    lwc1    $f12, 0x0024(s1)           # 00000024
    lw      a2, 0x002C(s1)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f4, $f6
    lh      t5, 0x07A0(s2)             # 000007A0
    sll     t6, t5,  2
    addu    t7, s2, t6
    jal     func_8004977C
    lw      a0, 0x0790(t7)             # 00000790
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80A310F8)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A310F8)($at)
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lh      t8, 0x015E(s1)             # 0000015E
    lui     $at, %hi(var_80A310FC)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A310FC)($at)
    mtc1    t8, $f18                   # $f18 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f4, $f18
    mul.s   $f12, $f4, $f6
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0405                 # t4 = 04050000
    addiu   t4, t4, 0x2A10             # t4 = 04052A10
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x0044($sp)
lbl_80A30E84:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80A30E98:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s1, 0x0020($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a0, 0x0088($sp)
    lw      t6, 0x0088($sp)
    addiu   $at, $zero, 0x0080         # $at = 00000080
    or      a0, s1, $zero              # a0 = 00000000
    lw      t7, 0x0004(t6)             # 00000004
    lui     a1, 0x0601                 # a1 = 06010000
    andi    t8, t7, 0x0080             # t8 = 00000000
    bne     t8, $at, lbl_80A30EE4
    nop
    jal     func_800280C8
    addiu   a1, a1, 0xF1B0             # a1 = 0600F1B0
    beq     $zero, $zero, lbl_80A3107C
    lw      a0, 0x0088($sp)
lbl_80A30EE4:
    jal     func_8007E298
    lw      a0, 0x0000(s1)             # 00000000
    lw      t9, 0x0088($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      v0, 0x001C(t9)             # 0000001C
    lui     a1, %hi(var_80A310E0)      # a1 = 80A30000
    bne     v0, $at, lbl_80A3106C
    sll     t5, v0,  2
    lw      s0, 0x0000(s1)             # 00000000
    jal     func_800AA740
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFBC
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     a2, 0xC4FA                 # a2 = C4FA0000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f12, $f20
    jal     func_800AA7F4
    mov.s   $f14, $f20
    lw      t0, 0x0088($sp)
    lui     $at, %hi(var_80A31100)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A31100)($at)
    lh      t1, 0x015C(t0)             # 0000015C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    lui     a2, 0x44FA                 # a2 = 44FA0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0038($sp)
    lw      a2, 0x0038($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x0A10             # t6 = 06010A10
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    jal     func_800AA764
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFBC
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    lui     a2, 0x44FA                 # a2 = 44FA0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x0088($sp)
    lui     $at, %hi(var_80A31104)     # $at = 80A30000
    lwc1    $f18, %lo(var_80A31104)($at)
    lh      t8, 0x015C(t7)             # 0000015C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t9, $zero, t8
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AA9E0
    nop
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    lui     a2, 0xC4FA                 # a2 = C4FA0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x0C10             # t4 = 06010C10
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80A3107C
    lw      a0, 0x0088($sp)
lbl_80A3106C:
    addu    a1, a1, t5
    jal     func_80028048
    lw      a1, %lo(var_80A310E0)(a1)
    lw      a0, 0x0088($sp)
lbl_80A3107C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t6, 0x001C(a0)             # 0000001C
    bnel    t6, $at, lbl_80A31098
    lw      $ra, 0x0024($sp)
    jal     func_80A30CCC
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80A31098:
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    nop

.section .data

var_80A310B0: .word 0x01000000
var_80A310B4: .word 0x01000000
var_80A310B8: .word 0x00000000
var_80A310BC: .word 0x00F70600, 0x00000000, 0x00690000, 0x00000164
.word func_80A30240
.word func_80A30510
.word func_80A30C84
.word func_80A30E98
var_80A310DC: .word 0x48500064
var_80A310E0: .word 0x06012270, 0x06010A10, 0x0600A860, 0x0600F1B0

.section .rodata

var_80A310F0: .word 0x3DCCCCCD
var_80A310F4: .word 0x43360B61
var_80A310F8: .word 0x38C90FDB
var_80A310FC: .word 0x3727C5AC
var_80A31100: .word 0x38C90FDB
var_80A31104: .word 0x38C90FDB, 0x00000000, 0x00000000

.bss

var_80A312C0: .space 0x10
