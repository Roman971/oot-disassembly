.section .text
func_808DC680:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lui     a1, %hi(var_808DD468)      # a1 = 808E0000
    sw      $zero, 0x0034($sp)
    addiu   a1, a1, %lo(var_808DD468)  # a1 = 808DD468
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    bne     t6, $zero, lbl_808DC6DC
    addiu   a0, a0, 0xFAE8             # a0 = 0600FAE8
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_80033EF4
    addiu   a0, a0, 0x20E8             # a0 = 060120E8
    b       lbl_808DC6E8
    lw      a0, 0x0044($sp)
lbl_808DC6DC:
    jal     func_80033EF4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lw      a0, 0x0044($sp)
lbl_808DC6E8:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0034($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    sw      a1, 0x002C($sp)
    jal     func_8004A484
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_808DD458)      # a3 = 808E0000
    addiu   t7, s0, 0x017C             # t7 = 0000017C
    lw      a1, 0x002C($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, %lo(var_808DD458)  # a3 = 808DD458
    lw      a0, 0x0044($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0080          # a0 = 00000080
lbl_808DC734:
    lw      t8, 0x0178(s0)             # 00000178
    addu    v0, t8, v1
    lh      t9, 0x002E(v0)             # 0000002E
    addiu   v1, v1, 0x0040             # v1 = 00000040
    bne     v1, a0, lbl_808DC734
    sh      t9, 0x0036(v0)             # 00000036
    lh      t0, 0x001C(s0)             # 0000001C
    lui     t2, %hi(func_808DCA24)     # t2 = 808E0000
    lui     t1, %hi(func_808DC7CC)     # t1 = 808E0000
    bne     t0, $zero, lbl_808DC76C
    addiu   t2, t2, %lo(func_808DCA24) # t2 = 808DCA24
    addiu   t1, t1, %lo(func_808DC7CC) # t1 = 808DC7CC
    b       lbl_808DC770
    sw      t1, 0x0154(s0)             # 00000154
lbl_808DC76C:
    sw      t2, 0x0154(s0)             # 00000154
lbl_808DC770:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808DC784:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x015C             # a1 = 0000015C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808DC7CC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     a2, 0x4059                 # a2 = 40590000
    ori     a2, a2, 0x999A             # a2 = 4059999A
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a0, s0, 0x0028             # a0 = 00000028
    sw      t7, 0x0024($sp)
    jal     func_8006385C
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808DC874
    lw      t8, 0x0024($sp)
    lw      t9, 0x066C(t8)             # 0000066C
    lw      v0, 0x002C($sp)
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    andi    t0, t9, 0x6000             # t0 = 00000000
    bnel    t0, $zero, lbl_808DC878
    lw      $ra, 0x001C($sp)
    sh      t1, 0x0158(s0)             # 00000158
    lh      t2, 0x07A0(v0)             # 000007A0
    sll     t3, t2,  2
    addu    t4, v0, t3
    jal     func_8004977C
    lw      a0, 0x0790(t4)             # 00000790
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x000C(s0)            # 0000000C
    addiu   t5, v0, 0x4000             # t5 = 00004000
    lui     t6, %hi(func_808DC888)     # t6 = 808E0000
    c.le.s  $f6, $f4
    lui     t7, %hi(func_808DC98C)     # t7 = 808E0000
    sh      t5, 0x0032(s0)             # 00000032
    addiu   t6, t6, %lo(func_808DC888) # t6 = 808DC888
    bc1f    lbl_808DC870
    addiu   t7, t7, %lo(func_808DC98C) # t7 = 808DC98C
    b       lbl_808DC874
    sw      t6, 0x0154(s0)             # 00000154
lbl_808DC870:
    sw      t7, 0x0154(s0)             # 00000154
lbl_808DC874:
    lw      $ra, 0x001C($sp)
lbl_808DC878:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808DC888:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x0158(s0)             # 00000158
    lui     t2, %hi(func_808DC98C)     # t2 = 808E0000
    addiu   t2, t2, %lo(func_808DC98C) # t2 = 808DC98C
    beq     v0, $zero, lbl_808DC8B8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_808DC8B8:
    beql    v0, $zero, lbl_808DC92C
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t7, 0x0032(s0)             # 00000032
    sll     t8, v0, 14
    addu    a0, t7, t8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t0, 0x0158(s0)             # 00000158
    mul.s   $f6, $f0, $f4
    lh      t9, 0x0032(s0)             # 00000032
    sll     t1, t0, 14
    addu    a0, t9, t1
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f4, 0x0010(s0)            # 00000010
    mul.s   $f18, $f0, $f16
    add.s   $f6, $f18, $f4
    b       lbl_808DC93C
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0008(s0)            # 00000008
lbl_808DC92C:
    lwc1    $f10, 0x0010(s0)           # 00000010
    sw      t2, 0x0154(s0)             # 00000154
    swc1    $f8, 0x0024(s0)            # 00000024
    swc1    $f10, 0x002C(s0)           # 0000002C
lbl_808DC93C:
    lh      t3, 0x0158(s0)             # 00000158
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    bgez    t3, lbl_808DC95C
    andi    t4, t3, 0x0003             # t4 = 00000000
    beq     t4, $zero, lbl_808DC95C
    nop
    addiu   t4, t4, 0xFFFC             # t4 = FFFFFFFC
lbl_808DC95C:
    bne     t4, $zero, lbl_808DC978
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_800915CC
    lwc1    $f12, 0x008C(s0)           # 0000008C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2838          # a1 = 00002838
lbl_808DC978:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808DC98C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80035364
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_808DC9BC
    lw      a3, 0x0018($sp)
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    b       lbl_808DC9CC
    sh      t6, 0x0158(a3)             # 00000158
lbl_808DC9BC:
    lh      v0, 0x0158(a3)             # 00000158
    beq     v0, $zero, lbl_808DC9CC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0158(a3)             # 00000158
lbl_808DC9CC:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lui     a2, 0x3FD9                 # a2 = 3FD90000
    ori     a2, a2, 0x999A             # a2 = 3FD9999A
    sub.s   $f8, $f4, $f6
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    lw      a3, 0x0018($sp)
    lui     t9, %hi(func_808DC7CC)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808DC7CC) # t9 = 808DC7CC
    lh      t8, 0x0158(a3)             # 00000158
    bnel    t8, $zero, lbl_808DCA18
    lw      $ra, 0x0014($sp)
    sw      t9, 0x0154(a3)             # 00000154
    lw      $ra, 0x0014($sp)
lbl_808DCA18:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808DCA24:
    sw      a1, 0x0004($sp)
    lh      v0, 0x0158(a0)             # 00000158
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    beq     v0, $zero, lbl_808DCA44
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a0)             # 00000158
    lh      v0, 0x0158(a0)             # 00000158
lbl_808DCA44:
    bne     v0, $zero, lbl_808DCA64
    lui     t0, %hi(func_808DCA6C)     # t0 = 808E0000
    lh      t7, 0x0032(a0)             # 00000032
    addiu   t0, t0, %lo(func_808DCA6C) # t0 = 808DCA6C
    sh      t9, 0x0158(a0)             # 00000158
    addu    t8, t7, $at
    sh      t8, 0x0032(a0)             # 00000032
    sw      t0, 0x0154(a0)             # 00000154
lbl_808DCA64:
    jr      $ra
    nop


func_808DCA6C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0158(s0)             # 00000158
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    beq     v0, $zero, lbl_808DCA98
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_808DCA98:
    lh      t7, 0x0016(s0)             # 00000016
    lh      t8, 0x0032(s0)             # 00000032
    subu    t0, t9, v0
    beql    t7, t8, lbl_808DCB08
    mtc1    v0, $f18                   # $f18 = 0.00
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808DD490)     # $at = 808E0000
    ldc1    $f8, %lo(var_808DD490)($at)
    cvt.d.w $f6, $f4
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f17                  # $f17 = 1.75
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, %hi(var_808DD498)     # $at = 808E0000
    mul.d   $f10, $f6, $f8
    ldc1    $f4, %lo(var_808DD498)($at)
    sub.d   $f18, $f10, $f16
    mul.d   $f6, $f18, $f4
    jal     func_800CF470
    cvt.s.d $f12, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    add.s   $f10, $f0, $f8
    mul.s   $f2, $f10, $f16
    b       lbl_808DCB5C
    lh      a0, 0x0032(s0)             # 00000032
    mtc1    v0, $f18                   # $f18 = 0.00
lbl_808DCB08:
    lui     $at, %hi(var_808DD4A0)     # $at = 808E0000
    ldc1    $f6, %lo(var_808DD4A0)($at)
    cvt.d.w $f4, $f18
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f11                  # $f11 = 1.75
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_808DD4A8)     # $at = 808E0000
    mul.d   $f8, $f4, $f6
    ldc1    $f18, %lo(var_808DD4A8)($at)
    sub.d   $f16, $f8, $f10
    mul.d   $f4, $f16, $f18
    jal     func_800CF470
    cvt.s.d $f12, $f4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    add.s   $f8, $f0, $f6
    mul.s   $f2, $f8, $f10
    nop
    lh      a0, 0x0032(s0)             # 00000032
lbl_808DCB5C:
    jal     func_800636C4              # sins?
    swc1    $f2, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f18, 0x0008(s0)           # 00000008
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f16, $f0, $f2
    add.s   $f4, $f16, $f18
    jal     func_80063684              # coss?
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f2, 0x0024($sp)
    lwc1    $f8, 0x0010(s0)            # 00000010
    lh      t1, 0x0158(s0)             # 00000158
    mul.s   $f6, $f0, $f2
    lui     t3, %hi(func_808DCA24)     # t3 = 808E0000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, t3, %lo(func_808DCA24) # t3 = 808DCA24
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8
    bne     t1, $zero, lbl_808DCBB4
    swc1    $f10, 0x002C(s0)           # 0000002C
    sh      t2, 0x0158(s0)             # 00000158
    sw      t3, 0x0154(s0)             # 00000154
lbl_808DCBB4:
    jal     func_8002313C
    addiu   a1, $zero, 0x2033          # a1 = 00002033
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808DCBD0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x0032(a1)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    sw      a1, 0x0028($sp)
    addu    a0, a0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lw      a1, 0x0028($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      a0, 0x0032(a1)             # 00000032
    swc1    $f0, 0x001C($sp)
    addu    a0, a0, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      a1, 0x0028($sp)
    lwc1    $f12, 0x001C($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0080          # a0 = 00000080
    lw      t6, 0x0178(a1)             # 00000178
    addiu   a0, a0, 0xFFC0             # a0 = 00000040
    lwc1    $f16, 0x0024(a1)           # 00000024
    addu    v0, t6, v1
    lh      t7, 0x002C(v0)             # 0000002C
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f14, $f0, $f18
    beql    v1, a0, lbl_808DCCD0
    add.s   $f8, $f16, $f14
lbl_808DCC54:
    mul.s   $f10, $f12, $f18
    add.s   $f8, $f16, $f14
    lh      t4, 0x002A(v0)             # 0000002A
    addiu   v1, v1, 0x0040             # v1 = 00000040
    trunc.w.s $f8, $f8
    mfc1    t9, $f8
    nop
    sh      t9, 0x0030(v0)             # 00000030
    lwc1    $f8, 0x0028(a1)            # 00000028
    trunc.w.s $f8, $f8
    mfc1    t3, $f8
    nop
    addu    t5, t3, t4
    sh      t5, 0x0032(v0)             # 00000032
    lwc1    $f8, 0x002C(a1)            # 0000002C
    add.s   $f10, $f8, $f10
    trunc.w.s $f10, $f10
    mfc1    t7, $f10
    nop
    sh      t7, 0x0034(v0)             # 00000034
    lw      t6, 0x0178(a1)             # 00000178
    lwc1    $f16, 0x0024(a1)           # 00000024
    addu    v0, t6, v1
    lh      t7, 0x002C(v0)             # 0000002C
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f14, $f0, $f18
    bne     v1, a0, lbl_808DCC54
    nop
    add.s   $f8, $f16, $f14
lbl_808DCCD0:
    lh      t4, 0x002A(v0)             # 0000002A
    mul.s   $f10, $f12, $f18
    addiu   a0, a0, 0x0040             # a0 = 00000080
    addiu   v1, v1, 0x0040             # v1 = 00000080
    trunc.w.s $f8, $f8
    mfc1    t9, $f8
    nop
    sh      t9, 0x0030(v0)             # 00000030
    lwc1    $f8, 0x0028(a1)            # 00000028
    trunc.w.s $f8, $f8
    mfc1    t3, $f8
    nop
    addu    t5, t3, t4
    sh      t5, 0x0032(v0)             # 00000032
    lwc1    $f8, 0x002C(a1)            # 0000002C
    add.s   $f10, $f8, $f10
    trunc.w.s $f10, $f10
    mfc1    t7, $f10
    nop
    sh      t7, 0x0034(v0)             # 00000034
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808DCD30:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    beql    t6, $zero, lbl_808DCE10
    lw      $ra, 0x001C($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      t8, 0x0032(s0)             # 00000032
    bnel    t7, t8, lbl_808DCD80
    lh      v0, 0x0158(s0)             # 00000158
    b       lbl_808DCD84
    lh      v0, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_808DCD80:
    addiu   v0, v0, 0x0050             # v0 = 00000050
lbl_808DCD84:
    lw      t0, 0x0154(s0)             # 00000154
    lui     v1, %hi(func_808DCA6C)     # v1 = 808E0000
    addiu   v1, v1, %lo(func_808DCA6C) # v1 = 808DCA6C
    bnel    v1, t0, lbl_808DCDA0
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   v0, v0, 0x0014             # v0 = 00000064
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_808DCDA0:
    lui     $at, %hi(var_808DD4B0)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DD4B0)($at)
    cvt.s.w $f6, $f4
    sw      v1, 0x0020($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800D2CD0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    sub.s   $f16, $f10, $f0
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lw      v1, 0x0020($sp)
    lw      t1, 0x0154(s0)             # 00000154
    mul.s   $f4, $f16, $f18
    sub.s   $f8, $f6, $f4
    bne     v1, t1, lbl_808DCE0C
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_808DCBD0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
lbl_808DCE0C:
    lw      $ra, 0x001C($sp)
lbl_808DCE10:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808DCE20:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s0, 0x0030($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00E0($sp)
    sw      a1, 0x00E4($sp)
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xEDF0             # a1 = 800FEDF0
    jal     func_800ABA10
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFC0
    lw      t6, 0x00E4($sp)
    ori     s1, $zero, 0x8000          # s1 = 00008000
    lh      t7, 0x0032(t6)             # 00000032
    addu    a0, t7, s1
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lw      t8, 0x00E4($sp)
    swc1    $f0, 0x0090($sp)
    lh      t9, 0x0032(t8)             # 00000032
    addu    a0, t9, s1
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      a1, 0x00E4($sp)
    swc1    $f0, 0x008C($sp)
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    lh      a0, 0x0158(a1)             # 00000158
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   a2, $zero, 0x004F          # a2 = 0000004F
    subu    a3, t1, a0
    sra     a3, a3,  1
    slti    $at, a3, 0x0004
    bne     $at, $zero, lbl_808DCEDC
    sra     t2, a0,  1
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_808DCEDC:
    subu    v0, t3, t2
    bgez    v0, lbl_808DCEEC
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808DCEEC:
    div     $zero, a0, t0
    sll     v1, v0,  2
    mfhi    t4
    subu    v1, v1, v0
    sll     v1, v1,  3
    sll     t5, t4,  2
    subu    t6, a2, t5
    addu    v1, v1, v0
    addu    t7, t6, v1
    mtc1    t7, $f6                    # $f6 = 0.00
    lwc1    $f4, 0x0024(a1)            # 00000024
    lwc1    $f12, 0x0090($sp)
    cvt.s.w $f8, $f6
    lui     $at, %hi(var_808DD4B4)     # $at = 808E0000
    lwc1    $f20, %lo(var_808DD4B4)($at)
    bne     t0, $zero, lbl_808DCF34
    nop
    break   # 0x01C00
lbl_808DCF34:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_808DCF4C
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_808DCF4C
    nop
    break   # 0x01800
lbl_808DCF4C:
    mul.s   $f10, $f8, $f0
    lui     s8, 0x8012                 # s8 = 80120000
    lui     s7, 0x00FF                 # s7 = 00FF0000
    lui     s5, %hi(var_808DD46C)      # s5 = 808E0000
    addiu   s5, s5, %lo(var_808DD46C)  # s5 = 808DD46C
    ori     s7, s7, 0xFFFF             # s7 = 00FFFFFF
    addiu   s8, s8, 0x0C38             # s8 = 80120C38
    add.s   $f16, $f4, $f10
    or      s2, v0, $zero              # s2 = 00000000
    addiu   s6, $zero, 0x0007          # s6 = 00000007
    swc1    $f16, 0x00D0($sp)
    lh      t8, 0x0158(a1)             # 00000158
    lwc1    $f18, 0x002C(a1)           # 0000002C
    div     $zero, t8, t0
    mfhi    t9
    sll     t1, t9,  2
    subu    t3, a2, t1
    addu    t2, t3, v1
    mtc1    t2, $f6                    # $f6 = 0.00
    bne     t0, $zero, lbl_808DCFA4
    nop
    break   # 0x01C00
lbl_808DCFA4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_808DCFBC
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_808DCFBC
    nop
    break   # 0x01800
lbl_808DCFBC:
    cvt.s.w $f8, $f6
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f4, $f8, $f12
    add.s   $f10, $f18, $f4
    mtc1    v0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f10, 0x00D8($sp)
    lwc1    $f16, 0x0028(a1)           # 00000028
    add.s   $f8, $f16, $f6
    mul.s   $f10, $f4, $f20
    mtc1    $at, $f16                  # $f16 = 1.00
    slt     $at, v0, a3
    swc1    $f8, 0x00D4($sp)
    lwc1    $f8, 0x008C($sp)
    add.s   $f2, $f10, $f16
    swc1    $f2, 0x00C8($sp)
    swc1    $f2, 0x00B4($sp)
    beq     $at, $zero, lbl_808DD14C
    swc1    $f2, 0x00A0($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mtc1    $at, $f18                  # $f18 = 25.00
    lui     s3, 0x0601                 # s3 = 06010000
    mul.s   $f22, $f6, $f8
    lui     s4, 0xDB06                 # s4 = DB060000
    ori     s4, s4, 0x0024             # s4 = DB060024
    mul.s   $f24, $f18, $f12
    addiu   s3, s3, 0xDC30             # s3 = 0600DC30
    lwc1    $f4, 0x00D0($sp)
lbl_808DD03C:
    lwc1    $f16, 0x00D8($sp)
    lwc1    $f8, 0x00A0($sp)
    add.s   $f10, $f4, $f22
    lwc1    $f4, 0x00B4($sp)
    lwc1    $f12, 0x0090($sp)
    add.s   $f6, $f16, $f24
    lwc1    $f16, 0x00C8($sp)
    swc1    $f10, 0x00D0($sp)
    add.s   $f18, $f8, $f20
    swc1    $f6, 0x00D8($sp)
    or      v0, s0, $zero              # v0 = 00000000
    add.s   $f10, $f4, $f20
    swc1    $f18, 0x00A0($sp)
    add.s   $f6, $f16, $f20
    swc1    $f10, 0x00B4($sp)
    swc1    $f6, 0x00C8($sp)
    sw      s4, 0x0000(v0)             # 00000000
    lw      t4, 0x00E4($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000008
    or      s1, s0, $zero              # s1 = 00000008
    lh      t5, 0x0158(t4)             # 00000158
    addu    t6, t5, s2
    div     $zero, t6, s6
    mfhi    t7
    sll     t8, t7,  2
    addu    t9, s5, t8
    lw      v1, 0x0000(t9)             # 00000000
    bne     s6, $zero, lbl_808DD0B4
    nop
    break   # 0x01C00
lbl_808DD0B4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s6, $at, lbl_808DD0CC
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_808DD0CC
    nop
    break   # 0x01800
lbl_808DD0CC:
    sll     t3, v1,  4
    srl     t2, t3, 28
    sll     t4, t2,  2
    addu    t5, s8, t4
    lw      t6, 0x0000(t5)             # 00000000
    and     t1, v1, s7
    lui     t9, 0xDA38                 # t9 = DA380000
    addu    t7, t1, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v0)             # 00000004
    ori     t9, t9, 0x0003             # t9 = DA380003
    sw      t9, 0x0000(s1)             # 00000008
    lw      t3, 0x00E0($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000010
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFC0
    lw      a2, 0x0000(t3)             # 00000003
    lw      a1, 0x02C4(a2)             # 00000313
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    sw      a1, 0x02C4(a2)             # 00000313
    jal     func_800AB6BC              # guMtxF2L
    sw      a3, 0x0094($sp)
    lw      a3, 0x0094($sp)
    sw      v0, 0x0004(s1)             # 0000000C
    or      v1, s0, $zero              # v1 = 00000010
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(v1)             # 00000010
    sw      s3, 0x0004(v1)             # 00000014
    addiu   s0, s0, 0x0008             # s0 = 00000018
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bnel    s2, a3, lbl_808DD03C
    lwc1    $f4, 0x00D0($sp)
    lwc1    $f12, 0x0090($sp)
lbl_808DD14C:
    sll     t4, a3,  2
    subu    t4, t4, a3
    sll     t4, t4,  3
    addu    t4, t4, a3
    addiu   t5, t4, 0x0050             # t5 = 00000050
    mtc1    t5, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x008C($sp)
    lw      t1, 0x00E4($sp)
    cvt.s.w $f0, $f8
    lui     s4, 0xDB06                 # s4 = DB060000
    lwc1    $f18, 0x0024(t1)           # 00000024
    lui     s5, %hi(var_808DD46C)      # s5 = 808E0000
    lui     s7, 0x00FF                 # s7 = 00FF0000
    lui     s8, 0x8012                 # s8 = 80120000
    mul.s   $f10, $f0, $f4
    addiu   s8, s8, 0x0C38             # s8 = 80120C38
    ori     s7, s7, 0xFFFF             # s7 = 00FFFFFF
    mul.s   $f8, $f0, $f12
    addiu   s5, s5, %lo(var_808DD46C)  # s5 = 808DD46C
    ori     s4, s4, 0x0024             # s4 = DB060024
    addiu   s6, $zero, 0x0007          # s6 = 00000007
    or      v0, s0, $zero              # v0 = 00000018
    add.s   $f16, $f18, $f10
    swc1    $f16, 0x00D0($sp)
    lwc1    $f6, 0x002C(t1)            # 0000002C
    add.s   $f4, $f6, $f8
    swc1    $f4, 0x00D8($sp)
    sw      s4, 0x0000(v0)             # 00000018
    lw      t6, 0x00E4($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000020
    or      s1, s0, $zero              # s1 = 00000020
    lh      t7, 0x0158(t6)             # 00000158
    addu    t8, t7, s2
    div     $zero, t8, s6
    mfhi    t9
    sll     t3, t9,  2
    addu    t2, s5, t3
    lw      v1, 0x0000(t2)             # DE000000
    bne     s6, $zero, lbl_808DD1F0
    nop
    break   # 0x01C00
lbl_808DD1F0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s6, $at, lbl_808DD208
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_808DD208
    nop
    break   # 0x01800
lbl_808DD208:
    sll     t5, v1,  4
    srl     t1, t5, 28
    sll     t6, t1,  2
    addu    t7, s8, t6
    lw      t8, 0x0000(t7)             # 00000000
    and     t4, v1, s7
    lui     t2, 0xDA38                 # t2 = DA380000
    addu    t9, t4, t8
    addu    t3, t9, $at
    sw      t3, 0x0004(v0)             # 0000001C
    ori     t2, t2, 0x0003             # t2 = DA380003
    sw      t2, 0x0000(s1)             # 00000020
    lw      t5, 0x00E0($sp)
    lui     s3, 0x0601                 # s3 = 06010000
    addiu   s3, s3, 0xDC30             # s3 = 0600DC30
    lw      a2, 0x0000(t5)             # 00000050
    addiu   s0, s0, 0x0008             # s0 = 00000028
    addiu   a0, $sp, 0x00A0            # a0 = FFFFFFC0
    lw      a1, 0x02C4(a2)             # 000002C4
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    jal     func_800AB6BC              # guMtxF2L
    sw      a1, 0x02C4(a2)             # 000002C4
    sw      v0, 0x0004(s1)             # 00000024
    or      v1, s0, $zero              # v1 = 00000028
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000028
    sw      s3, 0x0004(v1)             # 0000002C
    addiu   s0, s0, 0x0008             # s0 = 00000030
    or      v0, s0, $zero              # v0 = 00000030
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
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_808DD2B8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0034($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lw      a2, 0x0030($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(v1)             # 00000004
    lh      t0, 0x001C(a2)             # 0000001C
    lui     t2, 0xDE00                 # t2 = DE000000
    bnel    t0, $zero, lbl_808DD34C
    lw      v0, 0x02C0(s0)             # 000002C0
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0x0601                 # t3 = 06010000
    addiu   t3, t3, 0xC338             # t3 = 0600C338
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    b       lbl_808DD3D8
    lw      $ra, 0x001C($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_808DD34C:
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xC470             # t6 = 0600C470
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      t8, 0x0154(a2)             # 00000154
    lui     t7, %hi(func_808DCA6C)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808DCA6C) # t7 = 808DCA6C
    bne     t7, t8, lbl_808DD3D4
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    jal     func_8007DFBC
    lw      a0, 0x02D0(s0)             # 000002D0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    lui     t1, 0xFFFF                 # t1 = FFFF0000
    ori     t1, t1, 0x0096             # t1 = FFFF0096
    ori     t0, t0, 0x0001             # t0 = FA000001
    sw      t0, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFF00                 # t4 = FF000000
    ori     t4, t4, 0x00FF             # t4 = FF0000FF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      a0, 0x0034($sp)
    lw      a1, 0x0030($sp)
    jal     func_808DCE20
    lw      a2, 0x02D0(s0)             # 000002D0
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_808DD3D4:
    lw      $ra, 0x001C($sp)
lbl_808DD3D8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop

.section .data

var_808DD3F0: .word 0x00460100, 0x00000000, 0x002C0000, 0x000001FC
.word func_808DC680
.word func_808DC784
.word func_808DCD30
.word func_808DD2B8
var_808DD410: .word \
0x00000000, 0x20000000, 0x01040000, 0x00000000, \
0x00000000, 0x19000000, 0x01000000, 0x00280064, \
0x00160064, 0x00000000, 0x20000000, 0x01040000, \
0x00000000, 0x00000000, 0x19000000, 0x01000000, \
0x00280091, 0x001E0064
var_808DD458: .word 0x0A110000, 0x20000000, 0x00000002
.word var_808DD410
var_808DD468: .word 0x48500064
var_808DD46C: .word \
0x06015D20, 0x06016120, 0x06016520, 0x06016920, \
0x06016D20, 0x06017120, 0x06017520, 0x06017920, \
0x00000000

.section .rodata

var_808DD490: .word 0x3F9111F0, 0xC34C1A8B
var_808DD498: .word 0x400921FB, 0x60000000
var_808DD4A0: .word 0x3F9111F0, 0xC34C1A8B
var_808DD4A8: .word 0x400921FB, 0x60000000
var_808DD4B0: .word 0x3E20D97C
var_808DD4B4: .word 0x3ECCCCCD, 0x00000000, 0x00000000

