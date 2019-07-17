.section .text
func_808F4310:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    beq     t7, $zero, lbl_808F4348
    nop
    bgez    a2, lbl_808F433C
    sra     t8, a2,  2
    addiu   $at, a2, 0x0003            # $at = 00000003
    sra     t8, $at,  2
lbl_808F433C:
    sll     t9, t8,  1
    addu    t0, a0, t9
    sh      $zero, 0x0000(t0)          # 00000000
lbl_808F4348:
    jr      $ra
    nop


func_808F4350:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    beq     t7, $zero, lbl_808F4388
    nop
    bgez    a2, lbl_808F437C
    sra     t8, a2,  1
    addiu   $at, a2, 0x0001            # $at = 00000001
    sra     t8, $at,  1
lbl_808F437C:
    sll     t9, t8,  1
    addu    t0, a0, t9
    sh      $zero, 0x0000(t0)          # 00000000
lbl_808F4388:
    jr      $ra
    nop


func_808F4390:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    sll     t8, a2,  1
    addu    t9, a0, t8
    beq     t7, $zero, lbl_808F43B8
    nop
    sh      $zero, 0x0000(t9)          # 00000000
lbl_808F43B8:
    jr      $ra
    nop


func_808F43C0:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    andi    t9, a2, 0x00F0             # t9 = 00000000
    sll     t0, t9,  1
    beq     t7, $zero, lbl_808F4400
    andi    t8, a2, 0x000F             # t8 = 00000000
    addu    t1, t8, t0
    sll     t2, t1, 16
    sra     t3, t2, 16
    sll     t4, t3,  1
    addu    v0, a0, t4
    sh      $zero, 0x0020(v0)          # 00000020
    sh      $zero, 0x0000(v0)          # 00000000
lbl_808F4400:
    jr      $ra
    nop


func_808F4408:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    andi    t8, a2, 0x000F             # t8 = 00000000
    sll     t9, t8,  1
    beq     t7, $zero, lbl_808F444C
    andi    t0, a2, 0x00F0             # t0 = 00000000
    sll     t1, t0,  1
    addu    t2, t9, t1
    sll     t3, t2, 16
    sra     t4, t3, 16
    sll     t5, t4,  1
    addu    v0, a0, t5
    sh      $zero, 0x0002(v0)          # 00000002
    sh      $zero, 0x0000(v0)          # 00000000
lbl_808F444C:
    jr      $ra
    nop


func_808F4454:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s6, 0x0030($sp)
    sll     s6, a1, 16
    sw      s5, 0x002C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sra     s6, s6, 16
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x0044($sp)
    lui     s8, %hi(var_808F8A8C)      # s8 = 80900000
    lui     s7, %hi(var_808F8A78)      # s7 = 80900000
    lui     s3, 0x8012                 # s3 = 80120000
    lui     s2, 0x00FF                 # s2 = 00FF0000
    ori     s2, s2, 0xFFFF             # s2 = 00FFFFFF
    addiu   s3, s3, 0x0C38             # s3 = 80120C38
    addiu   s7, s7, %lo(var_808F8A78)  # s7 = 808F8A78
    addiu   s8, s8, %lo(var_808F8A8C)  # s8 = 808F8A8C
    or      s0, $zero, $zero           # s0 = 00000000
    lui     s4, 0x8000                 # s4 = 80000000
    sll     s1, s0,  2
lbl_808F44BC:
    addu    t6, s7, s1
    lw      v0, 0x0000(t6)             # 00000000
    sll     a2, s6, 16
    sra     a2, a2, 16
    sll     t8, v0,  4
    srl     t9, t8, 28
    sll     t0, t9,  2
    addu    t1, s3, t0
    lw      t2, 0x0000(t1)             # 00000000
    and     t7, v0, s2
    or      a1, s5, $zero              # a1 = 00000000
    addu    t3, t7, t2
    jal     func_808F4310
    addu    a0, t3, s4
    addu    t4, s8, s1
    lw      v0, 0x0000(t4)             # 00000000
    sll     a2, s6, 16
    sra     a2, a2, 16
    sll     t6, v0,  4
    srl     t8, t6, 28
    sll     t9, t8,  2
    addu    t0, s3, t9
    lw      t1, 0x0000(t0)             # 00000000
    and     t5, v0, s2
    or      a1, s5, $zero              # a1 = 00000000
    addu    t7, t5, t1
    jal     func_808F4350
    addu    a0, t7, s4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_808F44BC
    sll     s1, s0,  2
    lui     s1, %hi(var_808F8AA0)      # s1 = 80900000
    addiu   s1, s1, %lo(var_808F8AA0)  # s1 = 808F8AA0
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t2, s0,  2
lbl_808F4554:
    addu    t3, s1, t2
    lw      v0, 0x0000(t3)             # 00000000
    sll     a2, s6, 16
    sra     a2, a2, 16
    sll     t6, v0,  4
    srl     t8, t6, 28
    sll     t9, t8,  2
    addu    t0, s3, t9
    lw      t5, 0x0000(t0)             # 00000000
    and     t4, v0, s2
    or      a1, s5, $zero              # a1 = 00000000
    addu    t1, t4, t5
    jal     func_808F4390
    addu    a0, t1, s4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0009
    bnel    $at, $zero, lbl_808F4554
    sll     t2, s0,  2
    lui     s1, %hi(var_808F8AC4)      # s1 = 80900000
    addiu   s1, s1, %lo(var_808F8AC4)  # s1 = 808F8AC4
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t7, s0,  2
lbl_808F45B4:
    addu    t2, s1, t7
    lw      v0, 0x0000(t2)             # 00000000
    sll     a2, s6, 16
    sra     a2, a2, 16
    sll     t6, v0,  4
    srl     t8, t6, 28
    sll     t9, t8,  2
    addu    t0, s3, t9
    lw      t4, 0x0000(t0)             # 00000000
    and     t3, v0, s2
    or      a1, s5, $zero              # a1 = 00000000
    addu    t5, t3, t4
    jal     func_808F4408
    addu    a0, t5, s4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0002
    bnel    $at, $zero, lbl_808F45B4
    sll     t7, s0,  2
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0xB380             # v0 = 0600B380
    sll     t1, v0,  4
    srl     t7, t1, 28
    sll     t2, t7,  2
    addu    t6, s3, t2
    lw      t8, 0x0000(t6)             # 00000000
    and     t9, v0, s2
    sll     a2, s6, 16
    addu    t0, t8, t9
    addu    a0, t0, s4
    sra     a2, a2, 16
    jal     func_808F43C0
    or      a1, s5, $zero              # a1 = 00000000
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x3DB0             # v0 = 06003DB0
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t1, s3, t5
    lw      t7, 0x0000(t1)             # 00000000
    and     t2, v0, s2
    sll     a2, s6, 16
    addu    t6, t7, t2
    addu    a0, t6, s4
    sra     a2, a2, 16
    jal     func_808F4408
    or      a1, s5, $zero              # a1 = 00000000
    lui     s1, %hi(var_808F8ACC)      # s1 = 80900000
    addiu   s1, s1, %lo(var_808F8ACC)  # s1 = 808F8ACC
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t8, s0,  2
lbl_808F4684:
    addu    t9, s1, t8
    lw      v0, 0x0000(t9)             # 00000000
    sll     a2, s6, 16
    sra     a2, a2, 16
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t1, s3, t5
    lw      t7, 0x0000(t1)             # 00000000
    and     t0, v0, s2
    or      a1, s5, $zero              # a1 = 00000000
    addu    t2, t0, t7
    jal     func_808F4390
    addu    a0, t2, s4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0002
    bnel    $at, $zero, lbl_808F4684
    sll     t8, s0,  2
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
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808F4704:
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


func_808F4748:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a1, %hi(var_808F8AD4)      # a1 = 80900000
    addiu   a1, a1, %lo(var_808F8AD4)  # a1 = 808F8AD4
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x3CA4             # a3 = 06003CA4
    addiu   a2, a2, 0xC710             # a2 = 0600C710
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    slti    $at, t6, 0x000A
    beq     $at, $zero, lbl_808F4870
    or      a0, s1, $zero              # a0 = 00000000
    sh      t7, 0x001C(s0)             # 0000001C
    sb      t8, 0x00AF(s0)             # 000000AF
    addiu   a2, s0, 0x04C0             # a2 = 000004C0
    sw      a2, 0x0044($sp)
    jal     func_800665B0
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4
    sw      v0, 0x04BC(s0)             # 000004BC
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    mfc1    a3, $f18
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_80065BCC
    lw      a0, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F4A44
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F487C
    addiu   a1, s0, 0x04D0             # a1 = 000004D0
lbl_808F4870:
    jal     func_808F4F48
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x04D0             # a1 = 000004D0
lbl_808F487C:
    sw      a1, 0x0040($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x051C             # a1 = 0000051C
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808F8720)      # a3 = 80900000
    addiu   a3, a3, %lo(var_808F8720)  # a3 = 808F8720
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_808F874C)      # a3 = 80900000
    addiu   a3, a3, %lo(var_808F874C)  # a3 = 808F874C
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, 0x0001                 # a1 = 00010000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    addu    a1, a1, s1
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808F4988
    lwc1    $f16, 0x0024(s0)           # 00000024
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC204                # $at = C2040000
    mtc1    $at, $f4                   # $f4 = -33.00
    lui     $at, %hi(var_808F8B90)     # $at = 80900000
    lwc1    $f6, %lo(var_808F8B90)($at)
    addiu   s0, s1, 0x1C24             # s0 = 00001C24
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lui     a3, 0x4160                 # a3 = 41600000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lui     $at, 0xC204                # $at = C2040000
    mtc1    $at, $f8                   # $f8 = -33.00
    lui     $at, %hi(var_808F8B94)     # $at = 80900000
    lwc1    $f10, %lo(var_808F8B94)($at)
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0x4356                 # a3 = 43560000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    beq     $zero, $zero, lbl_808F49C8
    lw      $ra, 0x003C($sp)
    lwc1    $f16, 0x0024(s0)           # 00001C48
lbl_808F4988:
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00001C24
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0028(s0)           # 00001C4C
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0067          # a3 = 00000067
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x002C(s0)            # 00001C50
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f4, 0x0018($sp)
    lh      t9, 0x001C(s0)             # 00001C40
    jal     func_800253F0
    sw      t9, 0x0028($sp)
    lw      $ra, 0x003C($sp)
lbl_808F49C8:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808F49D8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D6D0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x04D0             # a1 = 000004D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, s0, 0x051C             # a1 = 0000051C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    bne     t6, $at, lbl_808F4A30
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x04BC(s0)             # 000004BC
lbl_808F4A30:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808F4A44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x19A4             # a1 = 060019A4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t6, %hi(func_808F4A90)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F4A90) # t6 = 808F4A90
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0180(a2)             # 00000180
    sh      t7, 0x0198(a2)             # 00000198
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F4A90:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s3, 0x0050($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s2, 0x004C($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x00A4($sp)
    lw      t6, 0x011C(s3)             # 0000011C
    addiu   s1, s3, 0x013C             # s1 = 0000013C
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008C9C0
    sw      t6, 0x0094($sp)
    lw      t7, 0x0094($sp)
    lh      a0, 0x01AE(s3)             # 000001AE
    lw      t9, 0x0024(t7)             # 00000024
    sw      t9, 0x0024(s3)             # 00000024
    lw      t8, 0x0028(t7)             # 00000028
    sw      t8, 0x0028(s3)             # 00000028
    lw      t9, 0x002C(t7)             # 0000002C
    sw      t9, 0x002C(s3)             # 0000002C
    lw      t0, 0x0094($sp)
    lh      v1, 0x0032(t0)             # 00000032
    sh      v1, 0x0032(s3)             # 00000032
    beq     a0, $zero, lbl_808F4BEC
    sh      v1, 0x00B6(s3)             # 000000B6
    slti    $at, a0, 0x0019
    beq     $at, $zero, lbl_808F4BEC
    addiu   s0, $sp, 0x007C            # s0 = FFFFFFDC
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s2, $sp, 0x0070            # s2 = FFFFFFD0
    lui     t1, %hi(var_808F8AF0)      # t1 = 80900000
    addiu   t1, t1, %lo(var_808F8AF0)  # t1 = 808F8AF0
    lw      t3, 0x0000(t1)             # 808F8AF0
    lui     t4, %hi(var_808F8AFC)      # t4 = 80900000
    addiu   t4, t4, %lo(var_808F8AFC)  # t4 = 808F8AFC
    sw      t3, 0x0000(s0)             # FFFFFFDC
    lw      t2, 0x0004(t1)             # 808F8AF4
    mov.s   $f12, $f20
    sw      t2, 0x0004(s0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 808F8AF8
    sw      t3, 0x0008(s0)             # FFFFFFE4
    lw      t6, 0x0000(t4)             # 808F8AFC
    sw      t6, 0x0000(s2)             # FFFFFFD0
    lw      t5, 0x0004(t4)             # 808F8B00
    sw      t5, 0x0004(s2)             # FFFFFFD4
    lw      t6, 0x0008(t4)             # 808F8B04
    jal     func_80026D90
    sw      t6, 0x0008(s2)             # FFFFFFD8
    lwc1    $f4, 0x02B0(s3)            # 000002B0
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f12                  # $f12 = -5.00
    add.s   $f6, $f0, $f4
    jal     func_80026D64
    swc1    $f6, 0x0088($sp)
    lwc1    $f8, 0x02B4(s3)            # 000002B4
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x008C($sp)
    lwc1    $f16, 0x02B8(s3)           # 000002B8
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    add.s   $f18, $f0, $f16
    lui     $at, %hi(var_808F8B98)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8B98)($at)
    mov.s   $f12, $f20
    add.s   $f6, $f18, $f4
    swc1    $f8, 0x0074($sp)
    jal     func_80026D64
    swc1    $f6, 0x0090($sp)
    trunc.w.s $f10, $f0
    lw      a0, 0x00A4($sp)
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFE8
    or      a2, s0, $zero              # a2 = FFFFFFDC
    mfc1    t8, $f10
    or      a3, s2, $zero              # a3 = FFFFFFD0
    sw      $zero, 0x0014($sp)
    sll     t9, t8, 16
    sra     t0, t9, 16
    addiu   t1, t0, 0x0005             # t1 = 00000005
    jal     func_8001D8C8
    sw      t1, 0x0010($sp)
    lh      a0, 0x01AE(s3)             # 000001AE
lbl_808F4BEC:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    a0, $at, lbl_808F4C04
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    sh      $zero, 0x0198(s3)          # 00000198
    lh      a0, 0x01AE(s3)             # 000001AE
    addiu   $at, $zero, 0x001E         # $at = 0000001E
lbl_808F4C04:
    bne     a0, $at, lbl_808F4C18
    lui     a0, %hi(var_808F8AE4)      # a0 = 80900000
    addiu   a0, a0, %lo(var_808F8AE4)  # a0 = 808F8AE4
    jal     func_80064780
    addiu   a1, $zero, 0x38A1          # a1 = 000038A1
lbl_808F4C18:
    lw      t2, 0x0094($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lbu     v1, 0x013C(t2)             # 0000013C
    bne     v1, $at, lbl_808F4C78
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x1144             # s0 = 06001144
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06001144
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    cvt.s.w $f18, $f16
    mfc1    a3, $f22
    sw      t3, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 0000013C
    or      a1, s0, $zero              # a1 = 06001144
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f18, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f22, 0x0018($sp)
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    sh      t4, 0x01AE(s3)             # 000001AE
    lw      t5, 0x0094($sp)
    lbu     v1, 0x013C(t5)             # 0000013C
lbl_808F4C78:
    addiu   s2, $zero, 0x0002          # s2 = 00000002
    mtc1    $zero, $f22                # $f22 = 0.00
    bne     s2, v1, lbl_808F4CA0
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2684             # a1 = 06002684
    jal     func_8008D21C
    lui     a2, 0xC040                 # a2 = C0400000
    lw      t6, 0x0094($sp)
    lbu     v1, 0x013C(t6)             # 0000013C
lbl_808F4CA0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_808F4CC4
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x19A4             # a1 = 060019A4
    jal     func_8008D328
    lui     a2, 0xC150                 # a2 = C1500000
    lw      t7, 0x0094($sp)
    lbu     v1, 0x013C(t7)             # 0000013C
lbl_808F4CC4:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v1, $at, lbl_808F4D34
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xD99C             # a1 = 0600D99C
    jal     func_8008D21C
    lui     a2, 0xC0E0                 # a2 = C0E00000
    lwc1    $f4, 0x01F0(s3)            # 000001F0
    lw      s0, 0x011C(s3)             # 0000011C
    lw      a2, 0x00A4($sp)
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x01F4(s3)            # 000001F4
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x01F8(s3)            # 000001F8
    sw      t0, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t9, 0x001C($sp)
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    sw      s0, 0x011C(s3)             # 0000011C
    lw      t1, 0x0094($sp)
    lbu     v1, 0x013C(t1)             # 0000013C
lbl_808F4D34:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v1, $at, lbl_808F4D50
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDF80             # a1 = 0600DF80
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
lbl_808F4D50:
    lh      v0, 0x019A(s3)             # 0000019A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_808F4D74
    lui     $at, 0x437F                # $at = 437F0000
    beq     v0, s2, lbl_808F4DA8
    lui     $at, 0x437F                # $at = 437F0000
    beq     $zero, $zero, lbl_808F4DDC
    lh      a0, 0x0184(s3)             # 00000184
    lui     $at, 0x437F                # $at = 437F0000
lbl_808F4D74:
    mtc1    $at, $f0                   # $f0 = 255.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f10, 0x01D0(s3)           # 000001D0
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x01D0(s3)           # 000001D0
    lwc1    $f4, 0x01D0(s3)            # 000001D0
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_808F4DDC
    lh      a0, 0x0184(s3)             # 00000184
    beq     $zero, $zero, lbl_808F4DD8
    swc1    $f0, 0x01D0(s3)            # 000001D0
lbl_808F4DA8:
    mtc1    $at, $f0                   # $f0 = 40.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x01C4(s3)            # 000001C4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x01C4(s3)           # 000001C4
    lwc1    $f16, 0x01C4(s3)           # 000001C4
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_808F4DDC
    lh      a0, 0x0184(s3)             # 00000184
    swc1    $f0, 0x01C4(s3)            # 000001C4
lbl_808F4DD8:
    lh      a0, 0x0184(s3)             # 00000184
lbl_808F4DDC:
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  3
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      a0, 0x0184(s3)             # 00000184
    mtc1    $zero, $f18                # $f18 = 0.00
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    mul.s   $f4, $f0, $f18
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    swc1    $f4, 0x03C4(s3)            # 000003C4
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    mul.s   $f8, $f0, $f6
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f8, 0x03C8(s3)            # 000003C8
lbl_808F4E60:
    sll     s2, s0,  2
    subu    s2, s2, s0
    sll     s2, s2,  3
    lh      t2, 0x0184(s3)             # 00000184
    addu    s2, s2, s0
    sll     s2, s2,  1
    addiu   t3, s2, 0x07B0             # t3 = 000007B2
    multu   t2, t3
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f10, $f0, $f20
    sll     t4, s0,  2
    addu    s1, s3, t4
    addiu   t6, s2, 0x08DC             # t6 = 000008DE
    swc1    $f10, 0x0444(s1)           # 00000580
    lh      t5, 0x0184(s3)             # 00000184
    multu   t5, t6
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f16, $f0, $f20
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x001E
    bne     $at, $zero, lbl_808F4E60
    swc1    $f16, 0x03CC(s1)           # 00000508
    lw      t7, 0x0094($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lbu     t8, 0x013C(t7)             # 0000013C
    bnel    t8, $at, lbl_808F4F20
    lw      t0, 0x0094($sp)
    jal     func_808F4F48
    or      a0, s3, $zero              # a0 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
lbl_808F4EF8:
    sll     t9, s0,  2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x001E
    addu    s1, s3, t9
    swc1    $f22, 0x03CC(s1)           # 00000508
    bne     $at, $zero, lbl_808F4EF8
    swc1    $f22, 0x0444(s1)           # 00000580
    lw      t0, 0x0094($sp)
lbl_808F4F20:
    sb      $zero, 0x013C(t0)          # 0000013C
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_808F4F48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3CA4             # a1 = 06003CA4
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_808F4F8C)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F4F8C) # t6 = 808F4F8C
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F4F8C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      a1, 0x0054($sp)
    lw      s1, 0x011C(s0)             # 0000011C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0040($sp)
    lbu     v0, 0x013C(s1)             # 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0040($sp)
    bne     v0, $at, lbl_808F503C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xD99C             # a1 = 0600D99C
    jal     func_8008D21C
    lui     a2, 0xC000                 # a2 = C0000000
    lw      t6, 0x0004(s0)             # 00000004
    lw      t8, 0x011C(s0)             # 0000011C
    lw      a2, 0x0054($sp)
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    sw      t8, 0x0048($sp)
    lwc1    $f4, 0x01F0(s0)            # 000001F0
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x01F4(s0)            # 000001F4
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x01F8(s0)            # 000001F8
    sw      t0, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t9, 0x001C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lw      t1, 0x0048($sp)
    sw      t1, 0x011C(s0)             # 0000011C
    beq     $zero, $zero, lbl_808F50A8
    lw      t5, 0x0024(s1)             # 00000024
lbl_808F503C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_808F505C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3080             # a1 = 06003080
    jal     func_8008D21C
    lui     a2, 0xC000                 # a2 = C0000000
    beq     $zero, $zero, lbl_808F50A8
    lw      t5, 0x0024(s1)             # 00000024
lbl_808F505C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808F507C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDF80             # a1 = 0600DF80
    jal     func_8008D21C
    lui     a2, 0xC000                 # a2 = C0000000
    beq     $zero, $zero, lbl_808F50A8
    lw      t5, 0x0024(s1)             # 00000024
lbl_808F507C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808F50A4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3CA4             # a1 = 06003CA4
    jal     func_8008D328
    lui     a2, 0xC000                 # a2 = C0000000
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
lbl_808F50A4:
    lw      t5, 0x0024(s1)             # 00000024
lbl_808F50A8:
    lbu     t6, 0x01B9(s0)             # 000001B9
    or      a0, s0, $zero              # a0 = 00000000
    sw      t5, 0x0024(s0)             # 00000024
    lw      t4, 0x0028(s1)             # 00000028
    lui     $at, %hi(var_808F8B9C)     # $at = 80900000
    sw      t4, 0x0028(s0)             # 00000028
    lw      t5, 0x002C(s1)             # 0000002C
    sw      t5, 0x002C(s0)             # 0000002C
    lwc1    $f10, 0x0028(s1)           # 00000028
    swc1    $f10, 0x0028(s0)           # 00000028
    lh      v0, 0x0032(s1)             # 00000032
    sh      v0, 0x0032(s0)             # 00000032
    beq     t6, $zero, lbl_808F5120
    sh      v0, 0x00B6(s0)             # 000000B6
    jal     func_808F5160
    lui     a1, 0xC1A0                 # a1 = C1A00000
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    addiu   t0, $zero, 0xFFDF          # t0 = FFFFFFDF
    sh      t7, 0x01AC(s0)             # 000001AC
    sh      t8, 0x0510(s0)             # 00000510
    sh      t9, 0x0512(s0)             # 00000512
    sh      t0, 0x0514(s0)             # 00000514
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
    addiu   t1, $zero, 0x001A          # t1 = 0000001A
    beq     $zero, $zero, lbl_808F514C
    sb      t1, 0x0117(s0)             # 00000117
lbl_808F5120:
    lwc1    $f0, %lo(var_808F8B9C)($at)
    lwc1    $f16, 0x0050(s1)           # 00000050
    sb      $zero, 0x013C(s1)          # 0000013C
    div.s   $f18, $f16, $f0
    swc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f4, 0x0054(s1)            # 00000054
    div.s   $f6, $f4, $f0
    swc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f8, 0x0058(s1)            # 00000058
    div.s   $f10, $f8, $f0
    swc1    $f10, 0x0058(s0)           # 00000058
lbl_808F514C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808F5160:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f12
    addiu   a1, a1, 0x0060             # a1 = 06010060
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_808F51E0)     # t6 = 808F0000
    lw      t7, 0x0004(a3)             # 00000004
    addiu   t6, t6, %lo(func_808F51E0) # t6 = 808F51E0
    sw      t6, 0x0180(a3)             # 00000180
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0004(a3)             # 00000004
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x01BC(a3)            # 000001BC
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f6                   # $f6 = 64.00
    lw      a3, 0x0018($sp)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    nop
    addiu   t3, t2, 0x001E             # t3 = 0000001E
    sh      t3, 0x01AC(a3)             # 000001AC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808F51E0:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x008C($sp)
    lw      t6, 0x008C($sp)
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x0078($sp)
    lbu     v0, 0x01B9(s1)             # 000001B9
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808F5250
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808F54C8
    lw      t8, 0x0078($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808F5578
    lw      t2, 0x0078($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808F5640
    lw      t7, 0x0078($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    beq     $zero, $zero, lbl_808F56E4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_808F5250:
    lh      t8, 0x01AC(s1)             # 000001AC
    bnel    t8, $zero, lbl_808F538C
    lh      t2, 0x01AE(s1)             # 000001AE
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f4                   # $f4 = 64.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    addiu   t3, t2, 0x001E             # t3 = 0000001E
    jal     func_800CDCCC              # Rand.Next() float
    sh      t3, 0x01AC(s1)             # 000001AC
    lbu     t4, 0x00AF(s1)             # 000000AF
    slti    $at, t4, 0x0005
    beq     $at, $zero, lbl_808F532C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_808F8BA0)     # $at = 80900000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_808F52C8
    nop
    jal     func_808F5928
    lw      a1, 0x008C($sp)
    beq     $zero, $zero, lbl_808F538C
    lh      t2, 0x01AE(s1)             # 000001AE
lbl_808F52C8:
    lwc1    $f16, %lo(var_808F8BA0)($at)
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    c.le.s  $f16, $f0
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    or      a0, s1, $zero              # a0 = 00000000
    bc1f    lbl_808F5310
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
    mtc1    $zero, $f18                # $f18 = 0.00
    sb      t5, 0x01B9(s1)             # 000001B9
    sh      t6, 0x01AC(s1)             # 000001AC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
    jal     func_80022FD0
    swc1    $f18, 0x01BC(s1)           # 000001BC
    beq     $zero, $zero, lbl_808F538C
    lh      t2, 0x01AE(s1)             # 000001AE
lbl_808F5310:
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      t7, 0x01B9(s1)             # 000001B9
    sh      t8, 0x01AC(s1)             # 000001AC
    jal     func_80022FD0
    swc1    $f4, 0x01BC(s1)            # 000001BC
    beq     $zero, $zero, lbl_808F538C
    lh      t2, 0x01AE(s1)             # 000001AE
lbl_808F532C:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6
    nop
    bc1t    lbl_808F5360
    nop
    lh      t9, 0x0196(s1)             # 00000196
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    slti    $at, t9, 0x0005
    beq     $at, $zero, lbl_808F5370
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
lbl_808F5360:
    jal     func_808F5928
    lw      a1, 0x008C($sp)
    beq     $zero, $zero, lbl_808F538C
    lh      t2, 0x01AE(s1)             # 000001AE
lbl_808F5370:
    mtc1    $zero, $f8                 # $f8 = 0.00
    sb      t0, 0x01B9(s1)             # 000001B9
    sh      t1, 0x01AC(s1)             # 000001AC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    swc1    $f8, 0x01BC(s1)            # 000001BC
    lh      t2, 0x01AE(s1)             # 000001AE
lbl_808F538C:
    lui     $at, 0x4160                # $at = 41600000
    lw      t3, 0x0078($sp)
    beq     t2, $zero, lbl_808F53B4
    nop
    mtc1    $at, $f10                  # $f10 = 14.00
    lui     $at, %hi(var_808F8BA4)     # $at = 80900000
    lwc1    $f16, %lo(var_808F8BA4)($at)
    swc1    $f10, 0x0084($sp)
    beq     $zero, $zero, lbl_808F544C
    swc1    $f16, 0x007C($sp)
lbl_808F53B4:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t3)             # 000000B6
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f20                  # $f20 = 180.00
    lw      t4, 0x0078($sp)
    mul.s   $f18, $f0, $f20
    lwc1    $f4, 0x0024(t4)            # 00000024
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0084($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t4)             # 000000B6
    mul.s   $f8, $f0, $f20
    lw      t5, 0x0078($sp)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f4                   # $f4 = 14.00
    lwc1    $f10, 0x002C(t5)           # 0000002C
    lwc1    $f18, 0x0084($sp)
    lui     $at, %hi(var_808F8BA8)     # $at = 80900000
    add.s   $f16, $f8, $f10
    lwc1    $f6, %lo(var_808F8BA8)($at)
    lui     $at, 0x438C                # $at = 438C0000
    sub.s   $f2, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 280.00
    swc1    $f16, 0x007C($sp)
    sub.s   $f12, $f16, $f6
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f10, $f12, $f12
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_808F544C
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sh      t6, 0x01AE(s1)             # 000001AE
    swc1    $f4, 0x01BC(s1)            # 000001BC
lbl_808F544C:
    lw      t7, 0x0078($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    lwc1    $f16, 0x0028(t7)           # 00000028
    add.s   $f6, $f16, $f20
    swc1    $f6, 0x0080($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f10, $f0, $f20
    lwc1    $f8, 0x0084($sp)
    add.s   $f18, $f8, $f10
    swc1    $f18, 0x0084($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f16, $f0, $f20
    lwc1    $f4, 0x007C($sp)
    add.s   $f6, $f4, $f16
    beq     $zero, $zero, lbl_808F56E0
    swc1    $f6, 0x007C($sp)
lbl_808F54C8:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    lwc1    $f8, 0x0028(t8)            # 00000028
    add.s   $f10, $f8, $f20
    add.s   $f18, $f10, $f20
    swc1    $f18, 0x0080($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f16, $f0, $f20
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    add.s   $f6, $f4, $f16
    swc1    $f6, 0x0084($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f10, $f0, $f20
    lui     $at, %hi(var_808F8BAC)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8BAC)($at)
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f18, $f8, $f10
    swc1    $f18, 0x007C($sp)
    lh      t9, 0x01AC(s1)             # 000001AC
    bnel    t9, $zero, lbl_808F56E4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    sb      t0, 0x01B9(s1)             # 000001B9
    sb      $zero, 0x01BA(s1)          # 000001BA
    jal     func_808F5928
    lw      a1, 0x008C($sp)
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    beq     $zero, $zero, lbl_808F56E0
    sh      t1, 0x01AC(s1)             # 000001AC
lbl_808F5578:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    lwc1    $f4, 0x0028(t2)            # 00000028
    add.s   $f16, $f4, $f20
    add.s   $f6, $f16, $f20
    swc1    $f6, 0x0080($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    mul.s   $f18, $f0, $f10
    add.s   $f4, $f8, $f18
    swc1    $f4, 0x0084($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, %hi(var_808F8BB0)     # $at = 80900000
    lwc1    $f16, %lo(var_808F8BB0)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f10, $f0, $f6
    add.s   $f8, $f16, $f10
    swc1    $f8, 0x007C($sp)
    lbu     t3, 0x01BA(s1)             # 000001BA
    beql    t3, $zero, lbl_808F562C
    lh      t5, 0x01AC(s1)             # 000001AC
    sb      $zero, 0x01BA(s1)          # 000001BA
    jal     func_808F5C5C
    lw      a1, 0x008C($sp)
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    sh      t4, 0x01AC(s1)             # 000001AC
    lh      t5, 0x01AC(s1)             # 000001AC
lbl_808F562C:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    bnel    t5, $zero, lbl_808F56E4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    beq     $zero, $zero, lbl_808F56E0
    sb      t6, 0x01B9(s1)             # 000001B9
lbl_808F5640:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    lwc1    $f18, 0x0028(t7)           # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    add.s   $f4, $f18, $f20
    add.s   $f16, $f4, $f6
    swc1    $f16, 0x0080($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f20
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    add.s   $f18, $f10, $f8
    swc1    $f18, 0x0084($sp)
    lh      a0, 0x0184(s1)             # 00000184
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  8
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    mul.s   $f6, $f0, $f20
    lui     $at, %hi(var_808F8BB4)     # $at = 80900000
    lwc1    $f4, %lo(var_808F8BB4)($at)
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f16, $f4, $f6
    swc1    $f16, 0x007C($sp)
    lh      t8, 0x01AC(s1)             # 000001AC
    bnel    t8, $zero, lbl_808F56E4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    jal     func_808F6130
    lw      a1, 0x008C($sp)
lbl_808F56E0:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_808F56E4:
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0024             # a0 = 00000024
    lw      a1, 0x0084($sp)
    jal     func_80064280
    lw      a3, 0x01BC(s1)             # 000001BC
    lh      t9, 0x01B0(s1)             # 000001B0
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lw      a1, 0x0080($sp)
    beq     t9, $zero, lbl_808F5738
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lwc1    $f10, 0x0080($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f8, $f10, $f20
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a3, 0x4248                 # a3 = 42480000
    mfc1    a1, $f8
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_808F5748
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_808F5738:
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
lbl_808F5748:
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    lw      a1, 0x007C($sp)
    jal     func_80064280
    lw      a3, 0x01BC(s1)             # 000001BC
    addiu   a0, s1, 0x01BC             # a0 = 000001BC
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      a0, 0x0184(s1)             # 00000184
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f4, 0x0100(s1)            # 00000100
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    lwc1    $f16, 0x002C(s1)           # 0000002C
    lwc1    $f10, 0x0108(s1)           # 00000108
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    sub.s   $f6, $f18, $f4
    subu    a0, a0, $at
    sll     a0, a0,  2
    sub.s   $f8, $f16, $f10
    sll     a0, a0, 16
    swc1    $f6, 0x005C(s1)            # 0000005C
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0064(s1)            # 00000064
    add.s   $f4, $f0, $f0
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s1)             # 0000008A
    add.s   $f6, $f18, $f4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_80064624
    swc1    $f6, 0x0028(s1)            # 00000028
    lh      t0, 0x0184(s1)             # 00000184
    lui     t3, %hi(var_808F8B08)      # t3 = 80900000
    addiu   t3, t3, %lo(var_808F8B08)  # t3 = 808F8B08
    andi    t1, t0, 0x0001             # t1 = 00000000
    bne     t1, $zero, lbl_808F58E8
    addiu   t2, $sp, 0x0050            # t2 = FFFFFFC8
    lw      t5, 0x0000(t3)             # 808F8B08
    lw      t4, 0x0004(t3)             # 808F8B0C
    lui     t7, %hi(var_808F8B14)      # t7 = 80900000
    sw      t5, 0x0000(t2)             # FFFFFFC8
    lw      t5, 0x0008(t3)             # 808F8B10
    addiu   t7, t7, %lo(var_808F8B14)  # t7 = 808F8B14
    sw      t4, 0x0004(t2)             # FFFFFFCC
    sw      t5, 0x0008(t2)             # FFFFFFD0
    lw      t9, 0x0000(t7)             # 808F8B14
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFBC
    lw      t8, 0x0004(t7)             # 808F8B18
    sw      t9, 0x0000(t6)             # FFFFFFBC
    lw      t9, 0x0008(t7)             # 808F8B1C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFC0
    sw      t9, 0x0008(t6)             # FFFFFFC4
lbl_808F5844:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f16, 0x01F0(s1)           # 000001F0
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f16
    jal     func_80026D90
    swc1    $f10, 0x005C($sp)
    lwc1    $f8, 0x01F4(s1)            # 000001F4
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f8
    jal     func_80026D90
    swc1    $f18, 0x0060($sp)
    lwc1    $f4, 0x01F8(s1)            # 000001F8
    lui     $at, %hi(var_808F8BB8)     # $at = 80900000
    lwc1    $f16, %lo(var_808F8BB8)($at)
    add.s   $f6, $f0, $f4
    swc1    $f16, 0x0048($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0064($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    lw      a0, 0x008C($sp)
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFD4
    mul.s   $f8, $f0, $f10
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFBC
    sw      $zero, 0x0014($sp)
    trunc.w.s $f18, $f8
    mfc1    t1, $f18
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, t3, 0x0096             # t4 = 00000096
    jal     func_8001D7F8
    sw      t4, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0003
    bne     $at, $zero, lbl_808F5844
    nop
lbl_808F58E8:
    lw      t5, 0x0078($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t6, 0x0A63(t5)             # 00000A63
    beql    t6, $zero, lbl_808F5908
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808F5FE0
    lw      a1, 0x008C($sp)
    or      a0, s1, $zero              # a0 = 00000000
lbl_808F5908:
    jal     func_80022FD0
    addiu   a1, $zero, 0x30A4          # a1 = 000030A4
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_808F5928:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x004C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xEC94             # a0 = 0600EC94
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xEC94             # a1 = 0600EC94
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C
    swc1    $f6, 0x01C0(s0)            # 000001C0
    lui     t6, %hi(func_808F5A50)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F5A50) # t6 = 808F5A50
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x0180(s0)             # 00000180
    lui     $at, %hi(var_808F8BBC)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8BBC)($at)
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    addiu   v0, $zero, 0x0019          # v0 = 00000019
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_808F59D0
    sh      $zero, 0x0192(s0)          # 00000192
    lh      t7, 0x0196(s0)             # 00000196
    slti    $at, t7, 0x000A
    bnel    $at, $zero, lbl_808F59D0
    sh      $zero, 0x0192(s0)          # 00000192
    lbu     t8, 0x01B9(s0)             # 000001B9
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t9, $zero, 0x03E8          # t9 = 000003E8
    bnel    v1, t8, lbl_808F59D0
    sh      $zero, 0x0192(s0)          # 00000192
    sh      v1, 0x0192(s0)             # 00000192
    sh      t9, 0x0194(s0)             # 00000194
    beq     $zero, $zero, lbl_808F59D4
    addiu   v0, $zero, 0x0020          # v0 = 00000020
    sh      $zero, 0x0192(s0)          # 00000192
lbl_808F59D0:
    sh      t0, 0x0194(s0)             # 00000194
lbl_808F59D4:
    lw      t1, 0x011C(s0)             # 0000011C
    lw      a2, 0x004C($sp)
    addiu   t2, $zero, 0x0026          # t2 = 00000026
    sw      t1, 0x0044($sp)
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x01F4(s0)           # 000001F4
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x01F8(s0)           # 000001F8
    sw      t2, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    lh      t4, 0x0196(s0)             # 00000196
    lw      t3, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0196(s0)             # 00000196
    addiu   a1, $zero, 0x38AA          # a1 = 000038AA
    jal     func_80022FD0
    sw      t3, 0x011C(s0)             # 0000011C
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_808F5A50:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0044($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lw      a1, 0x01C0(s0)             # 000001C0
    beq     v0, $zero, lbl_808F5A8C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F5160
    lui     a1, 0xC0C0                 # a1 = C0C00000
lbl_808F5A8C:
    lh      t6, 0x0192(s0)             # 00000192
    lw      a0, 0x0044($sp)
    beql    t6, $zero, lbl_808F5AE0
    lh      t8, 0x0194(s0)             # 00000194
    jal     func_8008D6A8
    lui     a1, 0x41A8                 # a1 = 41A80000
    beq     v0, $zero, lbl_808F5ADC
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xF48C             # a0 = 0600F48C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF48C             # a1 = 0600F48C
    cvt.s.w $f6, $f4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f6, 0x01C0(s0)            # 000001C0
    jal     func_8008D21C
    lw      a0, 0x0044($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x0194(s0)             # 00000194
lbl_808F5ADC:
    lh      t8, 0x0194(s0)             # 00000194
lbl_808F5AE0:
    lw      a0, 0x0044($sp)
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8
    mfc1    a1, $f8
    jal     func_8008D6A8
    nop
    beql    v0, $zero, lbl_808F5B44
    lh      t0, 0x0194(s0)             # 00000194
    lbu     t9, 0x01B9(s0)             # 000001B9
    addiu   a1, $zero, 0x38A6          # a1 = 000038A6
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0x0002
    beq     $at, $zero, lbl_808F5B2C
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F5B38
    or      a0, s0, $zero              # a0 = 00000000
lbl_808F5B2C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38A5          # a1 = 000038A5
    or      a0, s0, $zero              # a0 = 00000000
lbl_808F5B38:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B2          # a1 = 000038B2
    lh      t0, 0x0194(s0)             # 00000194
lbl_808F5B44:
    lw      a0, 0x0044($sp)
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f10, $f10
    mfc1    a1, $f10
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_808F5BB8
    lw      a2, 0x0054($sp)
    lw      t1, 0x011C(s0)             # 0000011C
    addiu   t3, $zero, 0x0032          # t3 = 00000032
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sw      t1, 0x004C($sp)
    lwc1    $f16, 0x01F0(s0)           # 000001F0
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x01F4(s0)           # 000001F4
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x01F8(s0)            # 000001F8
    swc1    $f4, 0x0018($sp)
    lh      t2, 0x0192(s0)             # 00000192
    sw      t3, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800253F0
    sw      t2, 0x001C($sp)
    lw      t4, 0x004C($sp)
    sw      t4, 0x011C(s0)             # 0000011C
lbl_808F5BB8:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x005C(s0)            # 0000005C
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f18, 0x0064(s0)           # 00000064
    add.s   $f10, $f6, $f8
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_800642F0
    swc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      a0, 0x0184(s0)             # 00000184
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
    add.s   $f8, $f0, $f0
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808F5C5C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808F8BC0)     # $at = 80900000
    lwc1    $f4, %lo(var_808F8BC0)($at)
    lui     a0, %hi(var_808F8B20)      # a0 = 80900000
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     t7, v0, 16
    sra     t8, t7, 16
    sll     t9, t8,  2
    addu    a0, a0, t9
    lw      a0, %lo(var_808F8B20)(a0)
    jal     func_8008A194
    sh      v0, 0x001E($sp)
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      v1, 0x0020($sp)
    lui     a1, %hi(var_808F8B20)      # a1 = 80900000
    cvt.s.w $f16, $f10
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f16, 0x01C0(v1)           # 000001C0
    lh      t0, 0x001E($sp)
    sll     t1, t0,  2
    addu    a1, a1, t1
    jal     func_8008D21C
    lw      a1, %lo(var_808F8B20)(a1)
    lw      t3, 0x0020($sp)
    lui     t2, %hi(func_808F5CFC)     # t2 = 808F0000
    addiu   t2, t2, %lo(func_808F5CFC) # t2 = 808F5CFC
    sw      t2, 0x0180(t3)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808F5CFC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x40A0                 # a1 = 40A00000
    beq     v0, $zero, lbl_808F5D38
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B2          # a1 = 000038B2
lbl_808F5D38:
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lw      a1, 0x01C0(s0)             # 000001C0
    beq     v0, $zero, lbl_808F5D54
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F5160
    addiu   a1, $zero, 0x0000          # a1 = 00000000
lbl_808F5D54:
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x0064(s0)           # 00000064
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0024(s0)            # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_800642F0
    swc1    $f18, 0x002C(s0)           # 0000002C
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      a0, 0x0184(s0)             # 00000184
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
    add.s   $f6, $f0, $f0
    lwc1    $f4, 0x0028(s0)            # 00000028
    lbu     t6, 0x01BA(s0)             # 000001BA
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    beq     t6, $zero, lbl_808F5DF4
    swc1    $f8, 0x0028(s0)            # 00000028
    sb      $zero, 0x01BA(s0)          # 000001BA
    jal     func_808F5C5C
    lw      a1, 0x002C($sp)
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sh      t7, 0x01AC(s0)             # 000001AC
lbl_808F5DF4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808F5E08:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     t6, %hi(func_808F5ECC)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F5ECC) # t6 = 808F5ECC
    sw      t6, 0x0024($sp)
    lw      t7, 0x0180(s0)             # 00000180
    lui     a0, 0x0601                 # a0 = 06010000
    beq     t6, t7, lbl_808F5E78
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x08D8             # a0 = 060108D8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x08D8             # a1 = 060108D8
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    swc1    $f6, 0x01C0(s0)            # 000001C0
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sh      t8, 0x01AC(s0)             # 000001AC
    beq     $zero, $zero, lbl_808F5EA0
    sb      t9, 0x01B8(s0)             # 000001B8
lbl_808F5E78:
    jal     func_8008A194
    addiu   a0, a0, 0xFAC8             # a0 = FFFFFAC8
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xFAC8             # a1 = 0600FAC8
    cvt.s.w $f10, $f8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    swc1    $f10, 0x01C0(s0)           # 000001C0
lbl_808F5EA0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t0, 0x0024($sp)
    sh      $zero, 0x0192(s0)          # 00000192
    swc1    $f0, 0x005C(s0)            # 0000005C
    sw      t0, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0064(s0)            # 00000064
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808F5ECC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lui     $at, %hi(var_808F8BC4)     # $at = 80900000
    lwc1    $f4, %lo(var_808F8BC4)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f4, 0x006C(s0)            # 0000006C
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_808F5F8C
    lh      t0, 0x01AC(s0)             # 000001AC
    lh      t6, 0x0192(s0)             # 00000192
    lui     a0, 0x0601                 # a0 = 06010000
    bnel    t6, $zero, lbl_808F5F58
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_8008A194
    addiu   a0, a0, 0x1BCC             # a0 = 06011BCC
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x1BCC             # a1 = 06011BCC
    cvt.s.w $f16, $f10
    lui     a2, 0xC120                 # a2 = C1200000
    swc1    $f16, 0x01C0(s0)           # 000001C0
    jal     func_8008D328
    lw      a0, 0x0024($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0192(s0)             # 00000192
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_808F5F58:
    lw      a1, 0x01C0(s0)             # 000001C0
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x006C(s0)            # 0000006C
    jal     func_8008D6A8
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_808F5F7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38B1          # a1 = 000038B1
lbl_808F5F7C:
    lw      t8, 0x0004(s0)             # 00000004
    ori     t9, t8, 0x0400             # t9 = 00000400
    sw      t9, 0x0004(s0)             # 00000004
    lh      t0, 0x01AC(s0)             # 000001AC
lbl_808F5F8C:
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_808F5FC4
    nop
    jal     func_808F5160
    lui     a1, 0xC0A0                 # a1 = C0A00000
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      v0, 0x01AC(s0)             # 000001AC
    sh      v0, 0x01B0(s0)             # 000001B0
    sb      t1, 0x01B9(s0)             # 000001B9
    swc1    $f18, 0x0060(s0)           # 00000060
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_808F5FC4:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808F5FE0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x0344             # a0 = 06010344
    jal     func_8008A194
    sw      a3, 0x0018($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   a1, a1, 0x0344             # a1 = 06010344
    lui     a2, 0xC040                 # a2 = C0400000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    swc1    $f6, 0x01C0(a3)            # 000001C0
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_808F6054)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F6054) # t6 = 808F6054
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   a1, $zero, 0x38AA          # a1 = 000038AA
    sw      t6, 0x0180(a0)             # 00000180
    jal     func_80022FD0
    sh      t7, 0x01AC(a0)             # 000001AC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F6054:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sb      t6, 0x04E4(s0)             # 000004E4
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x0064(s0)           # 00000064
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0024(s0)            # 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_800642F0
    swc1    $f18, 0x002C(s0)           # 0000002C
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
    lh      a0, 0x0184(s0)             # 00000184
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
    add.s   $f6, $f0, $f0
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      t7, 0x01AC(s0)             # 000001AC
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    bne     t7, $zero, lbl_808F611C
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_808F5160
    lui     a1, 0xC0A0                 # a1 = C0A00000
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t8, 0x01AC(s0)             # 000001AC
    sb      t9, 0x01B9(s0)             # 000001B9
lbl_808F611C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808F6130:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x29E0             # a0 = 060129E0
    jal     func_8008A194
    sw      a3, 0x0018($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   a1, a1, 0x29E0             # a1 = 060129E0
    lui     a2, 0xC040                 # a2 = C0400000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    swc1    $f6, 0x01C0(a3)            # 000001C0
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_808F61A0)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F61A0) # t6 = 808F61A0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sw      t6, 0x0180(a3)             # 00000180
    sh      t7, 0x01AC(a3)             # 000001AC
    sh      $zero, 0x0192(a3)          # 00000192
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F61A0:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s1, 0x0060($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s0, 0x005C($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x00E4($sp)
    lw      t6, 0x00E4($sp)
    lwc1    $f28, 0x0024(s1)           # 00000024
    lwc1    $f26, 0x002C(s1)           # 0000002C
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f24                  # $f24 = 14.00
    lui     $at, %hi(var_808F8BC8)     # $at = 80900000
    lwc1    $f18, %lo(var_808F8BC8)($at)
    sub.s   $f20, $f28, $f24
    lw      s0, 0x1C44(t6)             # 00001C44
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sub.s   $f22, $f26, $f18
    sb      t7, 0x04E4(s1)             # 000004E4
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0070($sp)
    lh      v1, 0x0192(s1)             # 00000192
    beq     v1, $zero, lbl_808F6238
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808F6324
    lw      a0, 0x0070($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808F6368
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_808F647C
    nop
    beq     $zero, $zero, lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
lbl_808F6238:
    lh      v0, 0x01AC(s1)             # 000001AC
    addiu   $at, $zero, 0x00DA         # $at = 000000DA
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_808F625C
    addiu   $at, $zero, 0x0013         # $at = 00000013
    jal     func_80022FD0
    addiu   a1, $zero, 0x38AA          # a1 = 000038AA
    lh      v0, 0x01AC(s1)             # 000001AC
    addiu   $at, $zero, 0x0013         # $at = 00000013
lbl_808F625C:
    bne     v0, $at, lbl_808F626C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38A9          # a1 = 000038A9
lbl_808F626C:
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f4, 0x005C(s1)            # 0000005C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f10, 0x0064(s1)           # 00000064
    lui     $at, 0x3F00                # $at = 3F000000
    add.s   $f6, $f18, $f4
    mtc1    $at, $f26                  # $f26 = 0.50
    mfc1    a1, $f24
    add.s   $f18, $f8, $f10
    mfc1    a2, $f26
    swc1    $f6, 0x0024(s1)            # 00000024
    addiu   a0, s1, 0x005C             # a0 = 0000005C
    jal     func_800642F0
    swc1    $f18, 0x002C(s1)           # 0000002C
    mfc1    a1, $f24
    mfc1    a2, $f26
    jal     func_800642F0
    addiu   a0, s1, 0x0064             # a0 = 00000064
    lh      t8, 0x01AC(s1)             # 000001AC
    lui     s0, 0x0601                 # s0 = 06010000
    addiu   s0, s0, 0x1F44             # s0 = 06011F44
    bne     t8, $zero, lbl_808F6308
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mtc1    $zero, $f24                # $f24 = 0.00
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t9, 0x0192(s1)             # 00000192
    sh      t0, 0x01AC(s1)             # 000001AC
    or      a0, s0, $zero              # a0 = 06011F44
    jal     func_8008A194
    swc1    $f24, 0x0068(s1)           # 00000068
    mtc1    v0, $f4                    # $f4 = 0.00
    mfc1    a2, $f24
    or      a1, s0, $zero              # a1 = 06011F44
    cvt.s.w $f6, $f4
    swc1    $f6, 0x01C0(s1)            # 000001C0
    jal     func_8008D21C
    lw      a0, 0x0070($sp)
lbl_808F6308:
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s1)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     $zero, $zero, lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
lbl_808F6324:
    jal     func_8008D6A8
    lw      a1, 0x01C0(s1)             # 000001C0
    beq     v0, $zero, lbl_808F6368
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x267C             # a0 = 0601267C
    mtc1    v0, $f8                    # $f8 = 0.00
    mtc1    $zero, $f24                # $f24 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f10, $f8
    mfc1    a2, $f24
    addiu   a1, a1, 0x267C             # a1 = 0601267C
    swc1    $f10, 0x01C0(s1)           # 000001C0
    jal     func_8008D328
    lw      a0, 0x0070($sp)
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x0192(s1)             # 00000192
lbl_808F6368:
    lh      t2, 0x01AC(s1)             # 000001AC
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     t2, $zero, lbl_808F63EC
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_80064624
    lh      a1, 0x008A(s1)             # 0000008A
    lui     $at, 0x4220                # $at = 42200000
    lwc1    $f18, 0x0024(s0)           # 06011F68
    lwc1    $f4, 0x0024(s1)            # 00000024
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0028(s0)            # 06011F6C
    sub.s   $f2, $f18, $f4
    lwc1    $f4, 0x002C(s0)            # 06011F70
    lwc1    $f18, 0x0028(s1)           # 00000028
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x002C(s1)            # 0000002C
    mul.s   $f8, $f2, $f2
    lh      t3, 0x00B6(s1)             # 000000B6
    sub.s   $f16, $f4, $f6
    sh      t3, 0x0032(s1)             # 00000032
    sub.s   $f12, $f10, $f18
    mul.s   $f10, $f16, $f16
    add.s   $f0, $f8, $f10
    jal     func_800CD76C
    sqrt.s  $f14, $f0
    lui     $at, %hi(var_808F8BCC)     # $at = 80900000
    lwc1    $f18, %lo(var_808F8BCC)($at)
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sh      t5, 0x0030(s1)             # 00000030
lbl_808F63EC:
    jal     func_80021248
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    mfc1    a2, $f24
    addiu   a0, s1, 0x0068             # a0 = 00000068
    mfc1    a3, $f26
    jal     func_80064280
    lui     a1, 0x4120                 # a1 = 41200000
    mul.s   $f8, $f20, $f20
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f18                  # $f18 = 280.00
    mul.s   $f10, $f22, $f22
    lui     $at, %hi(var_808F8BD0)     # $at = 80900000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f18, $f0
    nop
    bc1tl   lbl_808F6470
    sh      t6, 0x0192(s1)             # 00000192
    lwc1    $f4, 0x008C(s1)            # 0000008C
    lwc1    $f6, %lo(var_808F8BD0)($at)
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_808F6474
    nop
    sh      t6, 0x0192(s1)             # 00000192
lbl_808F6470:
    sh      t7, 0x01AC(s1)             # 000001AC
lbl_808F6474:
    beq     $zero, $zero, lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
lbl_808F647C:
    lui     $at, %hi(var_808F8BD4)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8BD4)($at)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C
    swc1    $f8, 0x006C(s1)            # 0000006C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f10, 0x0028(s1)           # 00000028
    mul.s   $f18, $f20, $f20
    c.lt.s  $f10, $f0
    mul.s   $f4, $f22, $f22
    bc1fl   lbl_808F64C0
    add.s   $f0, $f18, $f4
    mtc1    $zero, $f24                # $f24 = 0.00
    swc1    $f0, 0x0028(s1)            # 00000028
    swc1    $f24, 0x0060(s1)           # 00000060
    add.s   $f0, $f18, $f4
lbl_808F64C0:
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f6                   # $f6 = 280.00
    lui     $at, 0x4000                # $at = 40000000
    sqrt.s  $f0, $f0
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_808F6508
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f20                  # $f20 = 2.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    mfc1    a2, $f20
    addiu   a0, s1, 0x0068             # a0 = 00000068
    mfc1    a1, $f24
    jal     func_800642F0
    nop
    sh      $zero, 0x01AC(s1)          # 000001AC
    lui     $at, 0x4000                # $at = 40000000
lbl_808F6508:
    lh      t8, 0x01AC(s1)             # 000001AC
    mtc1    $at, $f20                  # $f20 = 2.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    bnel    t8, $zero, lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
    mfc1    a1, $f24
    mfc1    a2, $f20
    jal     func_800642F0
    addiu   a0, s1, 0x0068             # a0 = 00000068
    mfc1    a1, $f24
    mfc1    a2, $f20
    jal     func_800642F0
    addiu   a0, s1, 0x0060             # a0 = 00000060
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s1)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f26                  # $f26 = 0.50
    lwc1    $f8, 0x0068(s1)            # 00000068
    c.le.s  $f8, $f26
    nop
    bc1fl   lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
    lwc1    $f0, 0x0060(s1)            # 00000060
    lui     $at, %hi(var_808F8BD8)     # $at = 80900000
    lwc1    $f10, %lo(var_808F8BD8)($at)
    abs.s   $f0, $f0
    or      a0, s1, $zero              # a0 = 00000000
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_808F65B0
    lwc1    $f0, 0x0028(s1)            # 00000028
    jal     func_808F5160
    lui     a1, 0xC120                 # a1 = C1200000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t9, 0x01AC(s1)             # 000001AC
    sb      t0, 0x01B9(s1)             # 000001B9
    lwc1    $f0, 0x0028(s1)            # 00000028
lbl_808F65B0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    nop
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_808F660C
    nop
    lh      a0, 0x0184(s1)             # 00000184
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
    add.s   $f6, $f0, $f0
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(s1)            # 00000028
lbl_808F660C:
    lui     t2, %hi(var_808F8B28)      # t2 = 80900000
    addiu   t2, t2, %lo(var_808F8B28)  # t2 = 808F8B28
    lw      t4, 0x0000(t2)             # 808F8B28
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFFC4
    lw      t3, 0x0004(t2)             # 808F8B2C
    sw      t4, 0x0000(t1)             # FFFFFFC4
    lw      t4, 0x0008(t2)             # 808F8B30
    lui     t6, %hi(var_808F8B34)      # t6 = 80900000
    addiu   t6, t6, %lo(var_808F8B34)  # t6 = 808F8B34
    sw      t3, 0x0004(t1)             # FFFFFFC8
    sw      t4, 0x0008(t1)             # FFFFFFCC
    lw      t8, 0x0000(t6)             # 808F8B34
    addiu   t5, $sp, 0x0098            # t5 = FFFFFFB8
    lw      t7, 0x0004(t6)             # 808F8B38
    sw      t8, 0x0000(t5)             # FFFFFFB8
    lw      t8, 0x0008(t6)             # 808F8B3C
    lui     t0, %hi(var_808F8B40)      # t0 = 80900000
    addiu   t0, t0, %lo(var_808F8B40)  # t0 = 808F8B40
    sw      t7, 0x0004(t5)             # FFFFFFBC
    sw      t8, 0x0008(t5)             # FFFFFFC0
    lw      t2, 0x0000(t0)             # 808F8B40
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    addiu   t9, $sp, 0x008C            # t9 = FFFFFFAC
    lui     $at, 0xC248                # $at = C2480000
    sw      t2, 0x0000(t9)             # FFFFFFAC
    lw      t2, 0x0008(t0)             # 808F8B48
    lw      t1, 0x0004(t0)             # 808F8B44
    mtc1    $at, $f28                  # $f28 = -50.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f26                  # $f26 = 500.00
    lui     $at, %hi(var_808F8BDC)     # $at = 80900000
    sw      t2, 0x0008(t9)             # FFFFFFB4
    sw      t1, 0x0004(t9)             # FFFFFFB0
    lwc1    $f24, %lo(var_808F8BDC)($at)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f22                  # $f22 = 32768.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f10, 0x0090($sp)
lbl_808F66B0:
    jal     func_800AA6EC
    nop
    lh      t3, 0x00B6(s1)             # 000000B6
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    div.s   $f6, $f4, $f22
    mul.s   $f12, $f6, $f24
    jal     func_800AAB94
    nop
    lh      t4, 0x00B4(s1)             # 000000B4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    div.s   $f18, $f10, $f22
    mul.s   $f12, $f18, $f24
    jal     func_800AA9E0
    nop
    lh      t5, 0x019C(s1)             # 0000019C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f22
    mul.s   $f12, $f8, $f24
    jal     func_800AAD4C
    nop
    addiu   a0, $sp, 0x008C            # a0 = FFFFFFAC
    jal     func_800AB958
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFA0
    jal     func_800AA724
    nop
    lwc1    $f10, 0x01F0(s1)           # 000001F0
    lwc1    $f18, 0x0080($sp)
    lwc1    $f8, 0x0084($sp)
    addiu   $at, $zero, 0x0007         # $at = 00000007
    add.s   $f4, $f10, $f18
    div     $zero, s0, $at
    swc1    $f4, 0x00B0($sp)
    lwc1    $f6, 0x01F4(s1)            # 000001F4
    mfhi    t7
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x0088($sp)
    lw      a0, 0x00E4($sp)
    addiu   a1, $sp, 0x00B0            # a1 = FFFFFFD0
    swc1    $f10, 0x00B4($sp)
    lwc1    $f4, 0x01F8(s1)            # 000001F8
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    add.s   $f10, $f4, $f6
    mul.s   $f4, $f18, $f26
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFC4
    addiu   a3, $sp, 0x0098            # a3 = FFFFFFB8
    swc1    $f10, 0x00B8($sp)
    div.s   $f10, $f4, $f20
    mul.s   $f4, $f8, $f26
    swc1    $f10, 0x00A4($sp)
    div.s   $f10, $f4, $f20
    mul.s   $f4, $f6, $f26
    swc1    $f10, 0x00A8($sp)
    div.s   $f10, $f4, $f20
    mul.s   $f4, $f18, $f28
    nop
    mul.s   $f18, $f8, $f28
    swc1    $f10, 0x00AC($sp)
    div.s   $f10, $f4, $f20
    div.s   $f4, $f18, $f20
    swc1    $f10, 0x0098($sp)
    mul.s   $f10, $f6, $f28
    div.s   $f8, $f10, $f20
    swc1    $f4, 0x009C($sp)
    jal     func_8001D7F8
    swc1    $f8, 0x00A0($sp)
    lh      t8, 0x019C(s1)             # 0000019C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000A
    addiu   t9, t8, 0x1A5C             # t9 = 00001A5C
    bne     $at, $zero, lbl_808F66B0
    sh      t9, 0x019C(s1)             # 0000019C
    lh      t0, 0x0184(s1)             # 00000184
    lw      a2, 0x00E4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    andi    t1, t0, 0x0007             # t1 = 00000000
    bne     t1, $zero, lbl_808F685C
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    lwc1    $f18, 0x01F0(s1)           # 000001F0
    lw      s0, 0x011C(s1)             # 0000011C
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x01F4(s1)            # 000001F4
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0026          # t5 = 00000026
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x01F8(s1)            # 000001F8
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    sw      s0, 0x011C(s1)             # 0000011C
lbl_808F685C:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    lw      s0, 0x005C($sp)
    lw      s1, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_808F6884:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x090C             # a1 = 0600090C
    jal     func_8008D1C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x090C             # a0 = 0600090C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t6, %hi(func_808F691C)     # t6 = 808F0000
    addiu   t6, t6, %lo(func_808F691C) # t6 = 808F691C
    cvt.s.w $f6, $f4
    lui     a0, 0x1001                 # a0 = 10010000
    sw      t6, 0x0180(s0)             # 00000180
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    jal     func_800CAA70
    swc1    $f6, 0x01C0(s0)            # 000001C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38AF          # a1 = 000038AF
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    and     t9, t8, $at
    sh      t7, 0x034E(s0)             # 0000034E
    sw      t9, 0x0004(s0)             # 00000004
    sh      $zero, 0x0184(s0)          # 00000184
    sb      t0, 0x01B8(s0)             # 000001B8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808F691C:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s4, 0x0048($sp)
    sw      s2, 0x0040($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sb      $zero, 0x00BF($sp)
    sb      $zero, 0x00BE($sp)
    lw      s3, 0x1C44(s4)             # 00001C44
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   s1, s2, 0x013C             # s1 = 0000013C
    or      s0, v0, $zero              # s0 = 00000000
    jal     func_8008C9C0
    or      a0, s1, $zero              # a0 = 0000013C
    lh      t6, 0x01A6(s2)             # 000001A6
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01A6(s2)             # 000001A6
    lh      v1, 0x01A6(s2)             # 000001A6
    slti    $at, v1, 0x003D
    bne     $at, $zero, lbl_808F6988
    slti    $at, v1, 0x01F4
    bne     $at, $zero, lbl_808F699C
lbl_808F6988:
    slti    $at, v1, 0x01F6
    bne     $at, $zero, lbl_808F69A8
    slti    $at, v1, 0x026C
    beql    $at, $zero, lbl_808F69AC
    lh      t8, 0x034E(s2)             # 0000034E
lbl_808F699C:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x301C          # a1 = 0000301C
lbl_808F69A8:
    lh      t8, 0x034E(s2)             # 0000034E
lbl_808F69AC:
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sltiu   $at, t9, 0x0006
    beq     $at, $zero, lbl_808F7294
    sll     t9, t9,  2
    lui     $at, %hi(var_808F8BE0)     # $at = 80900000
    addu    $at, $at, t9
    lw      t9, %lo(var_808F8BE0)($at)
    jr      t9
    nop
var_808F69D0:
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s4, 0x1D64             # a1 = 00001D64
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8009D0F0
    or      a0, s4, $zero              # a0 = 00000000
    sh      v0, 0x034C(s2)             # 0000034C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s4, $zero              # a0 = 00000000
    lh      a1, 0x034C(s2)             # 0000034C
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sh      t0, 0x034E(s2)             # 0000034E
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    swc1    $f4, 0x0068(s3)            # 00000068
    sh      t1, 0x01AC(s2)             # 000001AC
    lw      t3, 0x005C(s0)             # 0000005C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f14                  # $f14 = 50.00
    sw      t3, 0x0350(s2)             # 00000350
    lw      t2, 0x0060(s0)             # 00000060
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    sw      t2, 0x0354(s2)             # 00000354
    lw      t3, 0x0064(s0)             # 00000064
    lwc1    $f12, 0x0204(s2)           # 00000204
    lui     $at, 0x4120                # $at = 41200000
    sw      t3, 0x0358(s2)             # 00000358
    lw      t5, 0x0050(s0)             # 00000050
    add.s   $f8, $f12, $f6
    mtc1    $at, $f18                  # $f18 = 10.00
    sw      t5, 0x035C(s2)             # 0000035C
    lw      t4, 0x0054(s0)             # 00000054
    lwc1    $f16, 0x0200(s2)           # 00000200
    add.s   $f10, $f8, $f14
    sw      t4, 0x0360(s2)             # 00000360
    lw      t5, 0x0058(s0)             # 00000058
    sub.s   $f4, $f16, $f18
    lwc1    $f2, 0x01FC(s2)            # 000001FC
    swc1    $f10, 0x0388(s2)           # 00000388
    swc1    $f14, 0x0384(s2)           # 00000384
    swc1    $f4, 0x039C(s2)            # 0000039C
    swc1    $f12, 0x03A0(s2)           # 000003A0
    sw      t5, 0x0364(s2)             # 00000364
    swc1    $f2, 0x0380(s2)            # 00000380
    swc1    $f2, 0x0398(s2)            # 00000398
    lwc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f10, 0x0384(s2)           # 00000384
    lwc1    $f18, 0x0388(s2)           # 00000388
    sub.s   $f0, $f6, $f2
    lwc1    $f6, 0x0398(s2)            # 00000398
    lui     $at, %hi(var_808F8BF8)     # $at = 80900000
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    abs.s   $f0, $f0
    swc1    $f0, 0x0368(s2)            # 00000368
    lwc1    $f8, 0x0060(s0)            # 00000060
    sub.s   $f0, $f8, $f10
    lwc1    $f10, 0x039C(s2)           # 0000039C
    abs.s   $f0, $f0
    swc1    $f0, 0x036C(s2)            # 0000036C
    lwc1    $f16, 0x0064(s0)           # 00000064
    sub.s   $f0, $f16, $f18
    lwc1    $f18, 0x03A0(s2)           # 000003A0
    abs.s   $f0, $f0
    swc1    $f0, 0x0370(s2)            # 00000370
    lwc1    $f4, 0x0050(s0)            # 00000050
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    swc1    $f0, 0x0374(s2)            # 00000374
    lwc1    $f8, 0x0054(s0)            # 00000054
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    swc1    $f0, 0x0378(s2)            # 00000378
    lwc1    $f16, 0x0058(s0)           # 00000058
    lwc1    $f2, %lo(var_808F8BF8)($at)
    lui     $at, %hi(var_808F8BFC)     # $at = 80900000
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    swc1    $f0, 0x037C(s2)            # 0000037C
    lwc1    $f4, %lo(var_808F8BFC)($at)
    lui     $at, %hi(var_808F8C00)     # $at = 80900000
    swc1    $f4, 0x03B4(s2)            # 000003B4
    lwc1    $f6, %lo(var_808F8C00)($at)
    lui     $at, %hi(var_808F8C04)     # $at = 80900000
    swc1    $f6, 0x0394(s2)            # 00000394
    lwc1    $f8, %lo(var_808F8C04)($at)
    lui     $at, %hi(var_808F8C08)     # $at = 80900000
    swc1    $f8, 0x0390(s2)            # 00000390
    lwc1    $f10, %lo(var_808F8C08)($at)
    sh      $zero, 0x0192(s2)          # 00000192
    sh      t6, 0x01AC(s2)             # 000001AC
    swc1    $f2, 0x03A4(s2)            # 000003A4
    swc1    $f2, 0x03A8(s2)            # 000003A8
    swc1    $f2, 0x03AC(s2)            # 000003AC
    swc1    $f10, 0x038C(s2)           # 0000038C
var_808F6B6C:
    lh      v0, 0x0192(s2)             # 00000192
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 0000013C
    beq     v0, $zero, lbl_808F6B9C
    nop
    beq     v0, $at, lbl_808F6BF8
    or      a0, s1, $zero              # a0 = 0000013C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_808F6C3C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_808F6C44
    lh      a1, 0x0184(s2)             # 00000184
lbl_808F6B9C:
    jal     func_8008D6A8
    lw      a1, 0x01C0(s2)             # 000001C0
    beq     v0, $zero, lbl_808F6C40
    lui     s0, 0x0601                 # s0 = 06010000
    addiu   s0, s0, 0x08D8             # s0 = 060108D8
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060108D8
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    cvt.s.w $f0, $f16
    or      a0, s1, $zero              # a0 = 0000013C
    or      a1, s0, $zero              # a1 = 060108D8
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x01C0(s2)            # 000001C0
    sw      t7, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f18, 0x0018($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_808F6C40
    sh      t8, 0x0192(s2)             # 00000192
lbl_808F6BF8:
    jal     func_8008D6A8
    lw      a1, 0x01C0(s2)             # 000001C0
    beq     v0, $zero, lbl_808F6C38
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x0D84             # s0 = 06000D84
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06000D84
    mtc1    v0, $f4                    # $f4 = 0.00
    or      a0, s1, $zero              # a0 = 0000013C
    or      a1, s0, $zero              # a1 = 06000D84
    cvt.s.w $f6, $f4
    lui     a2, 0xC1A0                 # a2 = C1A00000
    jal     func_8008D328
    swc1    $f6, 0x01C0(s2)            # 000001C0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sh      t9, 0x0192(s2)             # 00000192
lbl_808F6C38:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_808F6C3C:
    sb      t0, 0x00BE($sp)
lbl_808F6C40:
    lh      a1, 0x0184(s2)             # 00000184
lbl_808F6C44:
    addiu   a0, s2, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    subu    $at, $zero, a1
    sll     a1, $at,  2
    subu    a1, a1, $at
    sll     a1, a1,  3
    addu    a1, a1, $at
    sll     a1, a1,  2
    sll     a1, a1, 16
    sra     a1, a1, 16
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f8, 0x0204(s2)            # 00000204
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    add.s   $f16, $f8, $f10
    addiu   a0, s2, 0x0388             # a0 = 00000388
    lui     a3, 0x3F00                 # a3 = 3F000000
    mfc1    a1, $f16
    jal     func_80064280
    nop
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0028             # a0 = 00000028
    lui     a1, 0x42C8                 # a1 = 42C80000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      a0, 0x0184(s2)             # 00000184
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
    lwc1    $f18, 0x0028(s2)           # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f8, 0x0200(s2)            # 00000200
    add.s   $f4, $f18, $f0
    lh      t1, 0x01AC(s2)             # 000001AC
    lwc1    $f6, 0x01FC(s2)            # 000001FC
    sub.s   $f16, $f8, $f10
    lwc1    $f18, 0x0204(s2)           # 00000204
    swc1    $f4, 0x0028(s2)            # 00000028
    swc1    $f6, 0x0398(s2)            # 00000398
    swc1    $f16, 0x039C(s2)           # 0000039C
    bne     t1, $zero, lbl_808F7294
    swc1    $f18, 0x03A0(s2)           # 000003A0
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lui     $at, 0xC33A                # $at = C33A0000
    mtc1    $at, $f8                   # $f8 = -186.00
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x015E          # t3 = 0000015E
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sh      t2, 0x034E(s2)             # 0000034E
    sh      t3, 0x01AC(s2)             # 000001AC
    sh      t4, 0x01AE(s2)             # 000001AE
    swc1    $f4, 0x01C8(s2)            # 000001C8
    swc1    $f6, 0x0384(s2)            # 00000384
    lui     $at, %hi(var_808F8C0C)     # $at = 80900000
    swc1    $f8, 0x0024(s3)            # 00000024
    lwc1    $f10, %lo(var_808F8C0C)($at)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    swc1    $f10, 0x002C(s3)           # 0000002C
    sb      t5, 0x00BF($sp)
    beq     $zero, $zero, lbl_808F7294
    sb      t6, 0x00BE($sp)
var_808F6D7C:
    lh      t7, 0x01AE(s2)             # 000001AE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    bne     t7, $at, lbl_808F6DF0
    or      a1, s2, $zero              # a1 = 00000000
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f16                  # $f16 = 14.00
    lw      s0, 0x011C(s2)             # 0000011C
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f18                  # $f18 = -30.00
    lui     $at, %hi(var_808F8C10)     # $at = 80900000
    lwc1    $f4, %lo(var_808F8C10)($at)
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    addiu   t9, $zero, 0x0029          # t9 = 00000029
    sw      t9, 0x0028($sp)
    sw      t8, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f16, 0x0010($sp)
    swc1    $f18, 0x0014($sp)
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    sw      s0, 0x011C(s2)             # 0000011C
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x108E          # a1 = 0000108E
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_808F6DF0:
    lh      a0, 0x0184(s2)             # 00000184
    lh      t0, 0x00B6(s2)             # 000000B6
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    addiu   t1, t0, 0xFF38             # t1 = FFFFFF38
    sh      t1, 0x00B6(s2)             # 000000B6
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f16                  # $f16 = 120.00
    lwc1    $f10, 0x01CC(s2)           # 000001CC
    lwc1    $f6, 0x0028(s2)            # 00000028
    add.s   $f18, $f10, $f16
    add.s   $f8, $f6, $f0
    swc1    $f18, 0x01CC(s2)           # 000001CC
    lwc1    $f4, 0x01CC(s2)            # 000001CC
    swc1    $f8, 0x0028(s2)            # 00000028
    trunc.w.s $f6, $f4
    mfc1    a0, $f6
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f8, 0x01C8(s2)            # 000001C8
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x00B8($sp)
    lwc1    $f16, 0x01CC(s2)           # 000001CC
    trunc.w.s $f18, $f16
    mfc1    a0, $f18
    nop
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    lwc1    $f8, 0x00B8($sp)
    lwc1    $f4, 0x01C8(s2)            # 000001C8
    lwc1    $f16, 0x0384(s2)           # 00000384
    add.s   $f10, $f6, $f8
    mul.s   $f2, $f4, $f0
    lui     $at, %hi(var_808F8C14)     # $at = 80900000
    swc1    $f16, 0x0354(s2)           # 00000354
    swc1    $f10, 0x0350(s2)           # 00000350
    lwc1    $f18, %lo(var_808F8C14)($at)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    add.s   $f4, $f18, $f2
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    lui     $at, %hi(var_808F8C18)     # $at = 80900000
    swc1    $f4, 0x0358(s2)            # 00000358
    swc1    $f6, 0x035C(s2)            # 0000035C
    swc1    $f8, 0x0360(s2)            # 00000360
    lwc1    $f10, %lo(var_808F8C18)($at)
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0384             # a0 = 00000384
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064280
    swc1    $f10, 0x0364(s2)           # 00000364
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x01C8             # a0 = 000001C8
    lui     a1, 0x432A                 # a1 = 432A0000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0024             # a0 = 00000024
    lui     a1, 0x4160                 # a1 = 41600000
    jal     func_80064280
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0028             # a0 = 00000028
    lui     a1, 0x4248                 # a1 = 42480000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     a1, 0xC54F                 # a1 = C54F0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x3000             # a1 = C54F3000
    addiu   a0, s2, 0x002C             # a0 = 0000002C
    jal     func_80064280
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    lh      t4, 0x01AC(s2)             # 000001AC
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    bne     t4, $zero, lbl_808F6FC8
    or      a0, s1, $zero              # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    sh      t5, 0x034E(s2)             # 0000034E
    sh      t6, 0x01AC(s2)             # 000001AC
    addiu   a1, a1, 0x189C             # a1 = 0600189C
    jal     func_8008D328
    lui     a2, 0xC120                 # a2 = C1200000
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f16                  # $f16 = 14.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, %hi(var_808F8C1C)     # $at = 80900000
    swc1    $f16, 0x0024(s2)           # 00000024
    swc1    $f18, 0x0028(s2)           # 00000028
    lwc1    $f4, %lo(var_808F8C1C)($at)
    sh      $zero, 0x00B6(s2)          # 000000B6
    sh      $zero, 0x019E(s2)          # 0000019E
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38AC          # a1 = 000038AC
    jal     func_80022FD0
    swc1    $f4, 0x002C(s2)            # 0000002C
lbl_808F6FC8:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t7, 0x00BF($sp)
    beq     $zero, $zero, lbl_808F7294
    sb      t8, 0x00BE($sp)
var_808F6FDC:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    sb      t9, 0x00BF($sp)
    sb      t0, 0x00BE($sp)
    lui     $at, %hi(var_808F8C20)     # $at = 80900000
    swc1    $f0, 0x0028(s2)            # 00000028
    swc1    $f0, 0x0354(s2)            # 00000354
    swc1    $f6, 0x0350(s2)            # 00000350
    lwc1    $f8, %lo(var_808F8C20)($at)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f10                  # $f10 = 14.00
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f16                  # $f16 = 70.00
    lh      t1, 0x01AC(s2)             # 000001AC
    lui     $at, %hi(var_808F8C24)     # $at = 80900000
    swc1    $f8, 0x0358(s2)            # 00000358
    swc1    $f10, 0x035C(s2)           # 0000035C
    swc1    $f16, 0x0360(s2)           # 00000360
    lwc1    $f18, %lo(var_808F8C24)($at)
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    bne     t1, $zero, lbl_808F7294
    swc1    $f18, 0x0364(s2)           # 00000364
    lui     a1, 0x0600                 # a1 = 06000000
    sh      t2, 0x034E(s2)             # 0000034E
    addiu   a1, a1, 0x1AB0             # a1 = 06001AB0
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xC120                 # a2 = C1200000
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    sh      $zero, 0x019E(s2)          # 0000019E
    beq     $zero, $zero, lbl_808F7294
    sh      t3, 0x01AC(s2)             # 000001AC
var_808F706C:
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    sb      t4, 0x00BF($sp)
    sb      t5, 0x00BE($sp)
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    addiu   a0, s2, 0x0354             # a0 = 00000354
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a1, 0xC544                 # a1 = C5440000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x9000             # a1 = C5449000
    addiu   a0, s2, 0x0358             # a0 = 00000358
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0360             # a0 = 00000360
    lui     a1, 0x41A0                 # a1 = 41A00000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t6, 0x01AC(s2)             # 000001AC
    addiu   t7, $zero, 0x00FA          # t7 = 000000FA
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    bnel    t6, $zero, lbl_808F7298
    lbu     t1, 0x00BE($sp)
    sh      t7, 0x01AC(s2)             # 000001AC
    beq     $zero, $zero, lbl_808F7294
    sh      t8, 0x034E(s2)             # 0000034E
var_808F70E4:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sb      t9, 0x00BF($sp)
    sb      t0, 0x00BE($sp)
    lh      t1, 0x01AC(s2)             # 000001AC
    addiu   $at, $zero, 0x0096         # $at = 00000096
    bnel    t1, $at, lbl_808F7150
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    jal     func_800CAA70
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lui     $at, 0xC204                # $at = C2040000
    mtc1    $at, $f4                   # $f4 = -33.00
    lui     $at, %hi(var_808F8C28)     # $at = 80900000
    lwc1    $f6, %lo(var_808F8C28)($at)
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    sw      t2, 0x0024($sp)
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lui     a3, 0x4160                 # a3 = 41600000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
lbl_808F7150:
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    addiu   a0, s2, 0x0354             # a0 = 00000354
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a1, 0xC544                 # a1 = C5440000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x9000             # a1 = C5449000
    addiu   a0, s2, 0x0358             # a0 = 00000358
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s2, 0x0360             # a0 = 00000360
    lui     a1, 0x41A0                 # a1 = 41A00000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t3, 0x01AC(s2)             # 000001AC
    addiu   s1, s2, 0x0350             # s1 = 00000350
    bnel    t3, $zero, lbl_808F7298
    lbu     t1, 0x00BE($sp)
    lw      t5, 0x0000(s1)             # 00000350
    lw      s3, 0x011C(s2)             # 0000011C
    addiu   t0, s4, 0x1C24             # t0 = 00001C24
    sw      t5, 0x005C(s0)             # 06000DE0
    lw      t4, 0x0004(s1)             # 00000354
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t4, 0x0060(s0)             # 06000DE4
    lw      t5, 0x0008(s1)             # 00000358
    sw      t5, 0x0064(s0)             # 06000DE8
    lw      t7, 0x0000(s1)             # 00000350
    sw      t7, 0x0074(s0)             # 06000DF8
    lw      t6, 0x0004(s1)             # 00000354
    sw      t6, 0x0078(s0)             # 06000DFC
    lw      t7, 0x0008(s1)             # 00000358
    sw      t7, 0x007C(s0)             # 06000E00
    lw      t9, 0x035C(s2)             # 0000035C
    sw      t9, 0x0050(s0)             # 06000DD4
    lw      t8, 0x0360(s2)             # 00000360
    sw      t8, 0x0054(s0)             # 06000DD8
    lw      t9, 0x0364(s2)             # 00000364
    sw      t9, 0x0058(s0)             # 06000DDC
    lh      a1, 0x034C(s2)             # 0000034C
    jal     func_8009D718
    sw      t0, 0x0060($sp)
    sh      $zero, 0x034C(s2)          # 0000034C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s4, 0x1D64             # a1 = 00001D64
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0xC204                # $at = C2040000
    mtc1    $at, $f8                   # $f8 = -33.00
    lui     $at, %hi(var_808F8C2C)     # $at = 80900000
    lwc1    $f10, %lo(var_808F8C2C)($at)
    lw      a0, 0x0060($sp)
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0x4160                 # a3 = 41600000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      s3, 0x011C(s2)             # 0000011C
    sb      v1, 0x01B6(s2)             # 000001B6
    lui     a1, 0x0001                 # a1 = 00010000
    sb      v1, 0x013E(s3)             # 0000013E
    addu    a1, a1, s4
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020658
    or      a0, s4, $zero              # a0 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800204D0
    addiu   a1, $zero, 0x0022          # a1 = 00000022
lbl_808F7294:
    lbu     t1, 0x00BE($sp)
lbl_808F7298:
    lui     t3, %hi(var_808F8B4C)      # t3 = 80900000
    addiu   t3, t3, %lo(var_808F8B4C)  # t3 = 808F8B4C
    beq     t1, $zero, lbl_808F76B0
    addiu   t2, $sp, 0x0088            # t2 = FFFFFFC8
    lw      t5, 0x0000(t3)             # 808F8B4C
    lw      t4, 0x0004(t3)             # 808F8B50
    lui     t7, %hi(var_808F8B58)      # t7 = 80900000
    sw      t5, 0x0000(t2)             # FFFFFFC8
    lw      t5, 0x0008(t3)             # 808F8B54
    addiu   t7, t7, %lo(var_808F8B58)  # t7 = 808F8B58
    sw      t4, 0x0004(t2)             # FFFFFFCC
    sw      t5, 0x0008(t2)             # FFFFFFD0
    lw      t9, 0x0000(t7)             # 808F8B58
    addiu   t6, $sp, 0x007C            # t6 = FFFFFFBC
    lw      t8, 0x0004(t7)             # 808F8B5C
    sw      t9, 0x0000(t6)             # FFFFFFBC
    lw      t9, 0x0008(t7)             # 808F8B60
    lui     t1, %hi(var_808F8B64)      # t1 = 80900000
    addiu   t1, t1, %lo(var_808F8B64)  # t1 = 808F8B64
    sw      t8, 0x0004(t6)             # FFFFFFC0
    sw      t9, 0x0008(t6)             # FFFFFFC4
    lw      t3, 0x0000(t1)             # 808F8B64
    addiu   t0, $sp, 0x0070            # t0 = FFFFFFB0
    lw      t2, 0x0004(t1)             # 808F8B68
    sw      t3, 0x0000(t0)             # FFFFFFB0
    lw      t3, 0x0008(t1)             # 808F8B6C
    sw      t2, 0x0004(t0)             # FFFFFFB4
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t3, 0x0008(t0)             # FFFFFFB8
    lwc1    $f18, 0x0100(s2)           # 00000100
    lwc1    $f16, 0x0024(s2)           # 00000024
    lbu     s3, 0x00BE($sp)
    sub.s   $f4, $f16, $f18
    slti    $at, s3, 0x000A
    swc1    $f4, 0x0088($sp)
    lwc1    $f8, 0x0108(s2)            # 00000108
    lwc1    $f6, 0x002C(s2)            # 0000002C
    sub.s   $f10, $f6, $f8
    beq     $at, $zero, lbl_808F7614
    swc1    $f10, 0x0090($sp)
    lh      v0, 0x01A4(s2)             # 000001A4
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t4, t4, s4
    bne     v0, $zero, lbl_808F7428
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    lbu     t4, 0x0AE3(t4)             # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    bne     t4, $zero, lbl_808F73C8
    addu    $at, $at, s4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s4
    sb      t5, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64
    nop
    trunc.w.s $f16, $f0
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0x0001                # $at = 00010000
    mfc1    t7, $f16
    addu    $at, $at, s4
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    sh      t1, 0x01A4(s2)             # 000001A4
    beq     $zero, $zero, lbl_808F742C
    sh      t2, 0x0AFA($at)            # 00010AFA
lbl_808F73C8:
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    nop
    trunc.w.s $f16, $f0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x0001                # $at = 00010000
    mfc1    t4, $f16
    addu    $at, $at, s4
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    sh      t8, 0x01A4(s2)             # 000001A4
    beq     $zero, $zero, lbl_808F742C
    sh      t9, 0x0AFA($at)            # 00010AFA
lbl_808F7428:
    sh      t0, 0x01A4(s2)             # 000001A4
lbl_808F742C:
    or      s1, $zero, $zero           # s1 = 00000000
    lh      v0, 0x01A2(s2)             # 000001A2
lbl_808F7434:
    addiu   $at, $zero, 0x0019         # $at = 00000019
    sh      v0, 0x006E($sp)
    addiu   t1, v0, 0x0001             # t1 = 00000001
    sh      t1, 0x01A2(s2)             # 000001A2
    lh      t2, 0x01A2(s2)             # 000001A2
    div     $zero, t2, $at
    lui     $at, 0x40A0                # $at = 40A00000
    mfhi    t3
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    sh      t3, 0x01A2(s2)             # 000001A2
    lh      t4, 0x006E($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    addu    s0, s2, t5
    lwc1    $f16, 0x0208(s0)           # 06000F8C
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0094($sp)
    lwc1    $f4, 0x020C(s0)            # 06000F90
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0098($sp)
    lwc1    $f8, 0x0210(s0)            # 06000F94
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    add.s   $f10, $f0, $f8
    swc1    $f16, 0x0080($sp)
    bne     s3, $at, lbl_808F7538
    swc1    $f10, 0x009C($sp)
    lui     $at, %hi(var_808F8C30)     # $at = 80900000
    lwc1    $f18, %lo(var_808F8C30)($at)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f4                   # $f4 = 14.00
    lwc1    $f6, 0x0094($sp)
    lui     $at, %hi(var_808F8C34)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8C34)($at)
    sub.s   $f0, $f4, $f6
    lui     $at, %hi(var_808F8C38)     # $at = 80900000
    swc1    $f18, 0x0080($sp)
    lwc1    $f18, 0x009C($sp)
    lwc1    $f16, %lo(var_808F8C38)($at)
    mul.s   $f10, $f0, $f8
    lui     $at, %hi(var_808F8C3C)     # $at = 80900000
    sub.s   $f2, $f16, $f18
    lwc1    $f4, %lo(var_808F8C3C)($at)
    lui     $at, %hi(var_808F8C40)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8C40)($at)
    mul.s   $f6, $f2, $f4
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    swc1    $f10, 0x007C($sp)
    lui     $at, %hi(var_808F8C44)     # $at = 80900000
    mul.s   $f10, $f0, $f8
    lwc1    $f18, %lo(var_808F8C44)($at)
    swc1    $f6, 0x0084($sp)
    swc1    $f16, 0x0074($sp)
    mul.s   $f4, $f2, $f18
    swc1    $f10, 0x0070($sp)
    swc1    $f4, 0x0078($sp)
lbl_808F7538:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64
    nop
    trunc.w.s $f6, $f0
    lbu     t1, 0x00BE($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFD4
    mfc1    t7, $f6
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x007C            # a3 = FFFFFFBC
    sll     t8, t7, 16
    sra     t9, t8, 16
    addiu   t0, t9, 0x000F             # t0 = 0000000F
    sw      t0, 0x0010($sp)
    jal     func_8001D8C8
    sw      t1, 0x0014($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   $at, $zero, 0x0003         # $at = 00000003
    c.lt.s  $f0, $f8
    nop
    bc1tl   lbl_808F75A8
    lui     $at, 0x4080                # $at = 40800000
    bne     s3, $at, lbl_808F75F8
    lui     $at, 0x4080                # $at = 40800000
lbl_808F75A8:
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_80026D64
    nop
    trunc.w.s $f10, $f0
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t8, 0x001C($sp)
    mfc1    t3, $f10
    sw      t7, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00000000
    sll     t4, t3, 16
    sra     t5, t4, 16
    addiu   t6, t5, 0x0007             # t6 = 00000007
    sw      t6, 0x0014($sp)
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFD4
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFB0
    sw      $zero, 0x0010($sp)
    jal     func_8001D21C
    sw      $zero, 0x0020($sp)
lbl_808F75F8:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    blezl   s1, lbl_808F7434
    lh      v0, 0x01A2(s2)             # 000001A2
    beq     $zero, $zero, lbl_808F7630
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808F7614:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s4
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s4
    sh      t9, 0x0AFA($at)            # 00010AFA
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808F7630:
    lui     s0, %hi(var_808F8878)      # s0 = 80900000
    sh      v0, 0x01A0(s2)             # 000001A0
    addiu   s0, s0, %lo(var_808F8878)  # s0 = 808F8878
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808F7644:
    bne     v0, s3, lbl_808F765C
    lh      a1, 0x019E(s2)             # 0000019E
    jal     func_808F4454
    or      a0, s0, $zero              # a0 = 808F8878
    beq     $zero, $zero, lbl_808F7688
    lh      a1, 0x019E(s2)             # 0000019E
lbl_808F765C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     s3, $at, lbl_808F767C
    lui     a0, %hi(var_808F8978)      # a0 = 80900000
    lui     a0, %hi(var_808F8778)      # a0 = 80900000
    jal     func_808F4454
    addiu   a0, a0, %lo(var_808F8778)  # a0 = 808F8778
    beq     $zero, $zero, lbl_808F7688
    lh      a1, 0x019E(s2)             # 0000019E
lbl_808F767C:
    jal     func_808F4454
    addiu   a0, a0, %lo(var_808F8978)  # a0 = FFFF8978
    lh      a1, 0x019E(s2)             # 0000019E
lbl_808F7688:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    slti    $at, a1, 0x0100
    beq     $at, $zero, lbl_808F76A4
    sra     s1, s1, 16
    addiu   t0, a1, 0x0001             # t0 = 00000001
    sh      t0, 0x019E(s2)             # 0000019E
lbl_808F76A4:
    slti    $at, s1, 0x0005
    bnel    $at, $zero, lbl_808F7644
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808F76B0:
    lh      a1, 0x034C(s2)             # 0000034C
    beql    a1, $zero, lbl_808F77F0
    lw      $ra, 0x004C($sp)
    lbu     t2, 0x00BF($sp)
    addiu   t1, s2, 0x035C             # t1 = 0000035C
    sw      t1, 0x0058($sp)
    bne     t2, $zero, lbl_808F77DC
    addiu   s1, s2, 0x0350             # s1 = 00000350
    lwc1    $f16, 0x0368(s2)           # 00000368
    lwc1    $f18, 0x03B0(s2)           # 000003B0
    lw      a1, 0x0380(s2)             # 00000380
    lw      a2, 0x038C(s2)             # 0000038C
    mul.s   $f4, $f16, $f18
    addiu   t3, s2, 0x0360             # t3 = 00000360
    sw      t3, 0x0050($sp)
    or      a0, s1, $zero              # a0 = 00000350
    addiu   s0, s2, 0x0354             # s0 = 00000354
    addiu   s3, s2, 0x0358             # s3 = 00000358
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x036C(s2)            # 0000036C
    lwc1    $f8, 0x03B0(s2)            # 000003B0
    or      a0, s0, $zero              # a0 = 00000354
    lw      a1, 0x0384(s2)             # 00000384
    mul.s   $f10, $f6, $f8
    lw      a2, 0x0390(s2)             # 00000390
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x0370(s2)           # 00000370
    lwc1    $f18, 0x03B0(s2)           # 000003B0
    or      a0, s3, $zero              # a0 = 00000358
    lw      a1, 0x0388(s2)             # 00000388
    mul.s   $f4, $f16, $f18
    lw      a2, 0x0394(s2)             # 00000394
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x0374(s2)            # 00000374
    lwc1    $f8, 0x03B0(s2)            # 000003B0
    lw      a0, 0x0058($sp)
    lw      a1, 0x0398(s2)             # 00000398
    mul.s   $f10, $f6, $f8
    lw      a2, 0x03A4(s2)             # 000003A4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x0378(s2)           # 00000378
    lwc1    $f18, 0x03B0(s2)           # 000003B0
    lw      a0, 0x0050($sp)
    lw      a1, 0x039C(s2)             # 0000039C
    mul.s   $f4, $f16, $f18
    lw      a2, 0x03A8(s2)             # 000003A8
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x037C(s2)            # 0000037C
    lwc1    $f8, 0x03B0(s2)            # 000003B0
    addiu   a0, s2, 0x0364             # a0 = 00000364
    lw      a1, 0x03A0(s2)             # 000003A0
    mul.s   $f10, $f6, $f8
    lw      a2, 0x03AC(s2)             # 000003AC
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s2, 0x03B0             # a0 = 000003B0
    lw      a3, 0x03B4(s2)             # 000003B4
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    nop
    lh      a1, 0x034C(s2)             # 0000034C
lbl_808F77DC:
    or      a0, s4, $zero              # a0 = 00000000
    lw      a2, 0x0058($sp)
    jal     func_8009D328
    or      a3, s1, $zero              # a3 = 00000350
    lw      $ra, 0x004C($sp)
lbl_808F77F0:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0


func_808F780C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x0190(s0)             # 00000190
    lw      a3, 0x011C(s0)             # 0000011C
    beq     v0, $zero, lbl_808F7848
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    lbu     t7, 0x04E1(s0)             # 000004E1
    sh      t6, 0x0190(s0)             # 00000190
    sb      $zero, 0x01B7(s0)          # 000001B7
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    beq     $zero, $zero, lbl_808F7A24
    sb      t8, 0x04E1(s0)             # 000004E1
lbl_808F7848:
    lbu     v1, 0x04E1(s0)             # 000004E1
    andi    v0, v1, 0x0002             # v0 = 00000000
    beql    v0, $zero, lbl_808F7868
    lbu     t0, 0x01B7(s0)             # 000001B7
    lb      t9, 0x00AF(s0)             # 000000AF
    bgtz    t9, lbl_808F7870
    nop
    lbu     t0, 0x01B7(s0)             # 000001B7
lbl_808F7868:
    beql    t0, $zero, lbl_808F7A28
    lw      $ra, 0x001C($sp)
lbl_808F7870:
    beql    v0, $zero, lbl_808F788C
    lbu     t2, 0x01B9(s0)             # 000001B9
    lw      a2, 0x050C(s0)             # 0000050C
    andi    t1, v1, 0xFFFD             # t1 = 00000000
    sb      t1, 0x04E1(s0)             # 000004E1
    sw      a2, 0x0024($sp)
    lbu     t2, 0x01B9(s0)             # 000001B9
lbl_808F788C:
    lw      a2, 0x0024($sp)
    beq     t2, $zero, lbl_808F79DC
    nop
    beql    v0, $zero, lbl_808F78E0
    lw      t8, 0x0180(s0)             # 00000180
    lw      t4, 0x0180(s0)             # 00000180
    lui     t3, %hi(func_808F5ECC)     # t3 = 808F0000
    addiu   t3, t3, %lo(func_808F5ECC) # t3 = 808F5ECC
    beql    t3, t4, lbl_808F78E0
    lw      t8, 0x0180(s0)             # 00000180
    lw      t5, 0x0000(a2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF8A4           # $at = 0001F8A4
    and     t6, t5, $at
    beq     t6, $zero, lbl_808F78DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_808F7A24
    sb      $zero, 0x01B7(s0)          # 000001B7
lbl_808F78DC:
    lw      t8, 0x0180(s0)             # 00000180
lbl_808F78E0:
    lui     t7, %hi(func_808F61A0)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F61A0) # t7 = 808F61A0
    beq     t7, t8, lbl_808F79CC
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t9, 0x01B7(s0)             # 000001B7
    bnel    t9, $zero, lbl_808F7984
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0000(a2)             # 00000000
    andi    t0, a0, 0x0080             # t0 = 00000000
    bnel    t0, $zero, lbl_808F7A28
    lw      $ra, 0x001C($sp)
    sb      $zero, 0x0022($sp)
    jal     func_80051A34
    sw      a3, 0x0028($sp)
    lbu     a1, 0x0022($sp)
    lw      a3, 0x0028($sp)
    bne     v0, $zero, lbl_808F7930
    andi    a0, v0, 0x00FF             # a0 = 00000000
    beq     $zero, $zero, lbl_808F7934
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_808F7930:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_808F7934:
    lbu     v1, 0x00AF(s0)             # 000000AF
    sll     v0, v1, 24
    sra     v0, v0, 24
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_808F7954
    subu    t1, v1, a0
    beq     a1, $zero, lbl_808F795C
    nop
lbl_808F7954:
    sb      t1, 0x00AF(s0)             # 000000AF
    lb      v0, 0x00AF(s0)             # 000000AF
lbl_808F795C:
    bgtz    v0, lbl_808F7980
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F6884
    lw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F7A28
    lw      $ra, 0x001C($sp)
lbl_808F7980:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808F7984:
    lw      a1, 0x0034($sp)
    jal     func_808F5E08
    sw      a3, 0x0028($sp)
    lbu     t2, 0x01B7(s0)             # 000001B7
    lw      a3, 0x0028($sp)
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    slti    $at, t2, 0x0002
    bne     $at, $zero, lbl_808F79B0
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t3, $zero, 0x0078          # t3 = 00000078
    sh      t3, 0x01AC(s0)             # 000001AC
lbl_808F79B0:
    sh      t4, 0x0190(s0)             # 00000190
    sh      t5, 0x01CE(a3)             # 000001CE
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38AE          # a1 = 000038AE
    beq     $zero, $zero, lbl_808F7A24
    sb      $zero, 0x01B7(s0)          # 000001B7
lbl_808F79CC:
    jal     func_80022FD0
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_808F7A24
    sb      $zero, 0x01B7(s0)          # 000001B7
lbl_808F79DC:
    beql    v0, $zero, lbl_808F7A24
    sb      $zero, 0x01B7(s0)          # 000001B7
    lw      t6, 0x0000(a2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF8A4           # $at = 0001F8A4
    and     t7, t6, $at
    beq     t7, $zero, lbl_808F7A20
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lbu     t9, 0x00AF(s0)             # 000000AF
    sh      t8, 0x0190(s0)             # 00000190
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t0, t9, 0xFFFE             # t0 = FFFFFFFE
    sb      t0, 0x00AF(s0)             # 000000AF
    sh      t1, 0x01CE(a3)             # 000001CE
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38AE          # a1 = 000038AE
lbl_808F7A20:
    sb      $zero, 0x01B7(s0)          # 000001B7
lbl_808F7A24:
    lw      $ra, 0x001C($sp)
lbl_808F7A28:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808F7A38:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lbu     t9, 0x01B6(s0)             # 000001B6
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    beq     t9, $zero, lbl_808F7A80
    sb      t8, 0x04E4(s0)             # 000004E4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F7E30
    lw      $ra, 0x002C($sp)
lbl_808F7A80:
    lw      t0, 0x011C(s0)             # 0000011C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t0, 0x004C($sp)
    lh      t1, 0x0184(s0)             # 00000184
    lw      t9, 0x0180(s0)             # 00000180
    addiu   t2, t1, 0x0001             # t2 = 00000001
    jalr    $ra, t9
    sh      t2, 0x0184(s0)             # 00000184
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t3, v0,  1
lbl_808F7AAC:
    addu    v1, s0, t3
    lh      a0, 0x01AC(v1)             # 000001AC
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    beq     a0, $zero, lbl_808F7ACC
    sra     v0, v0, 16
    addiu   t4, a0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x01AC(v1)             # 000001AC
lbl_808F7ACC:
    slti    $at, v0, 0x0005
    bnel    $at, $zero, lbl_808F7AAC
    sll     t3, v0,  1
    lh      v0, 0x018C(s0)             # 0000018C
    beq     v0, $zero, lbl_808F7AE8
    addiu   t5, v0, 0xFFFF             # t5 = 00000000
    sh      t5, 0x018C(s0)             # 0000018C
lbl_808F7AE8:
    lh      v0, 0x018E(s0)             # 0000018E
    beq     v0, $zero, lbl_808F7AF8
    addiu   t6, v0, 0xFFFF             # t6 = 00000000
    sh      t6, 0x018E(s0)             # 0000018E
lbl_808F7AF8:
    lw      t8, 0x0180(s0)             # 00000180
    lui     t7, %hi(func_808F691C)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F691C) # t7 = 808F691C
    beq     t7, t8, lbl_808F7B14
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F780C
    or      a1, s1, $zero              # a1 = 00000000
lbl_808F7B14:
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
    addiu   a1, s0, 0x04D0             # a1 = 000004D0
    sw      a1, 0x0034($sp)
    jal     func_808F4704
    sw      a0, 0x0030($sp)
    addiu   a1, s0, 0x051C             # a1 = 0000051C
    sw      a1, 0x0038($sp)
    jal     func_808F4704
    addiu   a0, s0, 0x01F0             # a0 = 000001F0
    lbu     t0, 0x01B9(s0)             # 000001B9
    lw      t1, 0x004C($sp)
    bne     t0, $zero, lbl_808F7B68
    nop
    lbu     t2, 0x013D(t1)             # 0000013D
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t2, $zero, lbl_808F7B68
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
lbl_808F7B68:
    lui     t9, %hi(func_808F5ECC)     # t9 = 808F0000
    addiu   t9, t9, %lo(func_808F5ECC) # t9 = 808F5ECC
    sw      t9, 0x003C($sp)
    lw      v0, 0x0180(s0)             # 00000180
    lui     v1, 0x0001                 # v1 = 00010000
    ori     v1, v1, 0x1E60             # v1 = 00011E60
    bne     t9, v0, lbl_808F7BC0
    lui     t4, %hi(func_808F6054)     # t4 = 808F0000
    lh      t3, 0x01AC(s0)             # 000001AC
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, v1
    slti    $at, t3, 0x0002
    bne     $at, $zero, lbl_808F7BC0
    lw      a2, 0x0034($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0040($sp)
    lw      a1, 0x0040($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0034($sp)
    beq     $zero, $zero, lbl_808F7C24
    lw      t6, 0x0030($sp)
lbl_808F7BC0:
    addiu   t4, t4, %lo(func_808F6054) # t4 = 00006054
    bne     t4, v0, lbl_808F7BE4
    lui     t5, %hi(func_808F61A0)     # t5 = 808F0000
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, v1
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
    beq     $zero, $zero, lbl_808F7C24
    lw      t6, 0x0030($sp)
lbl_808F7BE4:
    addiu   t5, t5, %lo(func_808F61A0) # t5 = 000061A0
    bne     t5, v0, lbl_808F7C20
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, v1
    sw      a1, 0x0040($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
    lw      a1, 0x0040($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0034($sp)
    lw      a1, 0x0040($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0038($sp)
lbl_808F7C20:
    lw      t6, 0x0030($sp)
lbl_808F7C24:
    lh      a0, 0x00B6(s0)             # 000000B6
    lw      t8, 0x0000(t6)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    sw      t8, 0x0038(s0)             # 00000038
    lw      t7, 0x0004(t6)             # 00000004
    sra     a0, a0, 16
    sw      t7, 0x003C(s0)             # 0000003C
    lw      t8, 0x0008(t6)             # 00000008
    jal     func_800636C4              # sins?
    sw      t8, 0x0040(s0)             # 00000040
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0068($sp)
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f16, 0x0068($sp)
    lwc1    $f2, 0x0064(s0)            # 00000064
    lwc1    $f12, 0x005C(s0)           # 0000005C
    lui     $at, 0x4396                # $at = 43960000
    mul.s   $f4, $f2, $f16
    mtc1    $at, $f18                  # $f18 = 300.00
    neg.s   $f10, $f16
    mul.s   $f6, $f0, $f12
    addiu   a0, s0, 0x03B8             # a0 = 000003B8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4416                 # a3 = 44160000
    add.s   $f8, $f4, $f6
    mul.s   $f14, $f8, $f18
    nop
    mul.s   $f4, $f10, $f12
    nop
    mul.s   $f6, $f0, $f2
    mfc1    a1, $f14
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f18
    jal     func_80064280
    swc1    $f10, 0x0060($sp)
    addiu   a0, s0, 0x03BC             # a0 = 000003BC
    lw      a1, 0x0060($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4416                 # a3 = 44160000
    lbu     t0, 0x01B9(s0)             # 000001B9
    lw      t1, 0x003C($sp)
    beql    t0, $zero, lbl_808F7D4C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      t2, 0x0180(s0)             # 00000180
    beql    t1, t2, lbl_808F7D4C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t9, 0x034E(s0)             # 0000034E
    bnel    t9, $zero, lbl_808F7D4C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      a0, 0x0184(s0)             # 00000184
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
    mtc1    $at, $f4                   # $f4 = -500.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    mul.s   $f6, $f0, $f4
    beq     $zero, $zero, lbl_808F7D50
    sub.s   $f2, $f6, $f8
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_808F7D4C:
    nop
lbl_808F7D50:
    mfc1    a1, $f2
    addiu   a0, s0, 0x03C0             # a0 = 000003C0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lbu     v1, 0x01B8(s0)             # 000001B8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    beq     v1, $zero, lbl_808F7DBC
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x01B8(s0)             # 000001B8
    sw      a2, 0x0040($sp)
    addiu   t4, $zero, 0x0002          # t4 = 00000002
lbl_808F7D84:
    lw      a2, 0x0040($sp)
    sw      t4, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x002D          # a3 = 0000002D
    jal     func_8001D864
    sh      v0, 0x0046($sp)
    lh      v0, 0x0046($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0007
    bnel    $at, $zero, lbl_808F7D84
    addiu   t4, $zero, 0x0002          # t4 = 00000002
lbl_808F7DBC:
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x04C0             # a0 = 000004C0
    bne     t5, $at, lbl_808F7E2C
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    lwc1    $f10, 0x01F0(s0)           # 000001F0
    lwc1    $f6, 0x01F4(s0)            # 000001F4
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    trunc.w.s $f4, $f10
    lwc1    $f10, 0x01F8(s0)           # 000001F8
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f8, $f6
    mfc1    a1, $f4
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    trunc.w.s $f4, $f10
    mfc1    a2, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f4
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      t9, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    jal     func_80065BCC
    sw      t0, 0x0010($sp)
lbl_808F7E2C:
    lw      $ra, 0x002C($sp)
lbl_808F7E30:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_808F7E40:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   t6, a1, 0xFFFB             # t6 = FFFFFFFB
    sltiu   $at, t6, 0x0015
    beq     $at, $zero, lbl_808F81B4
    sll     t6, t6,  2
    lui     $at, %hi(var_808F8C48)     # $at = 80900000
    addu    $at, $at, t6
    lw      t6, %lo(var_808F8C48)($at)
    jr      t6
    nop
var_808F7E6C:
    lw      v0, 0x0014($sp)
    lui     t7, %hi(func_808F4A90)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F4A90) # t7 = 808F4A90
    lw      t8, 0x0180(v0)             # 00000180
    bnel    t7, t8, lbl_808F7EA0
    lw      v1, 0x0010($sp)
    lh      t9, 0x0198(v0)             # 00000198
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x4EC0             # t0 = 06004EC0
    beql    t9, $zero, lbl_808F7EA0
    lw      v1, 0x0010($sp)
    sw      t0, 0x0000(a2)             # 00000000
    lw      v1, 0x0010($sp)
lbl_808F7EA0:
    sll     t1, a1,  2
    addu    a0, v0, t1
    lh      t2, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x0444(a0)            # 00000444
    lh      t5, 0x0004(v1)             # 00000004
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t5, $f18                   # $f18 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f18
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    nop
    sh      t4, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x03CC(a0)            # 000003CC
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t7, 0x0004(v1)             # 00000004
var_808F7EF0:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t8, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t8, $f6                    # $f6 = 0.00
    lh      t1, 0x0004(v1)             # 00000004
    add.s   $f4, $f16, $f18
    mtc1    t1, $f18                   # $f18 = 0.00
    cvt.s.w $f8, $f6
    cvt.s.w $f6, $f18
    add.s   $f10, $f8, $f4
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x03BC(v0)            # 000003BC
    add.s   $f4, $f6, $f8
    trunc.w.s $f10, $f4
    mfc1    t3, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t3, 0x0004(v1)             # 00000004
var_808F7F48:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t4, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t4, $f8                    # $f8 = 0.00
    lh      t7, 0x0004(v1)             # 00000004
    add.s   $f6, $f16, $f18
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f4, $f8
    cvt.s.w $f8, $f18
    add.s   $f10, $f4, $f6
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    sh      t6, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x03BC(v0)            # 000003BC
    add.s   $f6, $f8, $f4
    trunc.w.s $f10, $f6
    mfc1    t9, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t9, 0x0004(v1)             # 00000004
var_808F7FA0:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t0, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t0, $f4                    # $f4 = 0.00
    lh      t3, 0x0004(v1)             # 00000004
    add.s   $f8, $f16, $f18
    mtc1    t3, $f18                   # $f18 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f18
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t2, $f16
    nop
    sh      t2, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x03BC(v0)            # 000003BC
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t5, 0x0004(v1)             # 00000004
var_808F7FF8:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t6, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t6, $f6                    # $f6 = NaN
    lh      t9, 0x0004(v1)             # 00000004
    sub.s   $f4, $f16, $f18
    mtc1    t9, $f18                   # $f18 = 0.00
    cvt.s.w $f8, $f6
    cvt.s.w $f6, $f18
    add.s   $f10, $f8, $f4
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    nop
    sh      t8, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x03BC(v0)            # 000003BC
    add.s   $f4, $f6, $f8
    trunc.w.s $f10, $f4
    mfc1    t1, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t1, 0x0004(v1)             # 00000004
var_808F8050:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t2, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t2, $f8                    # $f8 = 0.00
    lh      t5, 0x0004(v1)             # 00000004
    sub.s   $f6, $f16, $f18
    mtc1    t5, $f18                   # $f18 = 0.00
    cvt.s.w $f4, $f8
    cvt.s.w $f8, $f18
    add.s   $f10, $f4, $f6
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    nop
    sh      t4, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x03BC(v0)            # 000003BC
    add.s   $f6, $f8, $f4
    trunc.w.s $f10, $f6
    mfc1    t7, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t7, 0x0004(v1)             # 00000004
var_808F80A8:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t8, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03B8(v0)           # 000003B8
    lwc1    $f18, 0x03C0(v0)           # 000003C0
    mtc1    t8, $f4                    # $f4 = 0.00
    lh      t1, 0x0004(v1)             # 00000004
    sub.s   $f8, $f16, $f18
    mtc1    t1, $f18                   # $f18 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f4, $f18
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x03BC(v0)            # 000003BC
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    beq     $zero, $zero, lbl_808F8210
    sh      t3, 0x0004(v1)             # 00000004
var_808F8100:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t4, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x03C4(v0)            # 000003C4
    lh      t7, 0x0004(v1)             # 00000004
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    cvt.s.w $f18, $f16
    cvt.s.w $f16, $f10
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sh      t6, 0x0002(v1)             # 00000002
    lwc1    $f18, 0x03C8(v0)           # 000003C8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    beq     $zero, $zero, lbl_808F8210
    sh      t9, 0x0004(v1)             # 00000004
var_808F8150:
    lw      v1, 0x0010($sp)
    lw      v0, 0x0014($sp)
    lh      t0, 0x0002(v1)             # 00000002
    lwc1    $f16, 0x03C4(v0)           # 000003C4
    lh      t3, 0x0004(v1)             # 00000004
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t3, $f6                    # $f6 = 0.00
    cvt.s.w $f10, $f8
    cvt.s.w $f8, $f6
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t2, $f4
    nop
    sh      t2, 0x0002(v1)             # 00000002
    lwc1    $f10, 0x03C8(v0)           # 000003C8
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    beq     $zero, $zero, lbl_808F8210
    sh      t5, 0x0004(v1)             # 00000004
var_808F81A0:
    lw      v0, 0x0014($sp)
    lh      t6, 0x034E(v0)             # 0000034E
    beql    t6, $zero, lbl_808F81B8
    lw      v1, 0x0010($sp)
    sw      $zero, 0x0000(a2)          # 00000000
lbl_808F81B4:
    lw      v1, 0x0010($sp)
lbl_808F81B8:
    lw      v0, 0x0014($sp)
    sll     t7, a1,  2
    lh      t8, 0x0002(v1)             # 00000002
    addu    a0, v0, t7
    lwc1    $f8, 0x0444(a0)            # 00000444
    mtc1    t8, $f4                    # $f4 = 0.00
    lh      t1, 0x0004(v1)             # 00000004
    cvt.s.w $f6, $f4
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f6, 0x03CC(a0)            # 000003CC
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x0004(v1)             # 00000004
lbl_808F8210:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_808F821C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a2, $at, lbl_808F8260
    lui     a0, %hi(var_808F8B70)      # a0 = 80900000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_808F8B70)  # a0 = 808F8B70
    sw      a2, 0x001C($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x01FC             # a1 = 000001FC
    beq     $zero, $zero, lbl_808F8284
    lw      a2, 0x001C($sp)
lbl_808F8260:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a2, $at, lbl_808F8284
    lui     a0, %hi(var_808F8B7C)      # a0 = 80900000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_808F8B7C)  # a0 = 808F8B7C
    sw      a2, 0x001C($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x01F0             # a1 = 000001F0
    lw      a2, 0x001C($sp)
lbl_808F8284:
    lw      v0, 0x0028($sp)
    slti    $at, a2, 0x001A
    lbu     t6, 0x01B9(v0)             # 000001B9
    bne     t6, $zero, lbl_808F82AC
    nop
    lw      t8, 0x0180(v0)             # 00000180
    lui     t7, %hi(func_808F4A90)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F4A90) # t7 = 808F4A90
    bnel    t7, t8, lbl_808F82D4
    lw      $ra, 0x0014($sp)
lbl_808F82AC:
    beq     $at, $zero, lbl_808F82D0
    lui     a0, %hi(var_808F8B70)      # a0 = 80900000
    sll     t9, a2,  2
    subu    t9, t9, a2
    sll     t9, t9,  2
    addu    a1, v0, t9
    addiu   a1, a1, 0x01FC             # a1 = 000001FC
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808F8B70)  # a0 = 808F8B70
lbl_808F82D0:
    lw      $ra, 0x0014($sp)
lbl_808F82D4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F82E0:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t7, 0xE200                 # t7 = E2000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    lui     t8, 0xC811                 # t8 = C8110000
    ori     t8, t8, 0x3078             # t8 = C8113078
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0008(v1)             # FFFFFFE8
    sw      t8, 0x000C(v1)             # FFFFFFEC
    lui     t9, 0xD9FF                 # t9 = D9FF0000
    ori     t9, t9, 0xFBFF             # t9 = D9FFFBFF
    sw      t9, 0x0010(v1)             # FFFFFFF0
    sw      $zero, 0x0014(v1)          # FFFFFFF4
    lui     t0, 0xDF00                 # t0 = DF000000
    sw      t0, 0x0018(v1)             # FFFFFFF8
    sw      $zero, 0x001C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra
    nop


func_808F8338:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    sw      $zero, 0x0004(v1)          # FFFFFFF4
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_808F835C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0028($sp)
    lbu     t6, 0x01B9(s1)             # 000001B9
    lw      a2, 0x0000(s2)             # 00000000
    lw      v0, 0x011C(s1)             # 0000011C
    bne     t6, $zero, lbl_808F83C4
    or      s0, a2, $zero              # s0 = 00000000
    lh      t7, 0x01D0(v0)             # 000001D0
    lui     $at, %hi(var_808F8C9C)     # $at = 80900000
    lwc1    $f8, %lo(var_808F8C9C)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f16                  # $f16 = 32768.00
    cvt.s.w $f6, $f4
    sw      v0, 0x004C($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f10, $f6, $f8
    jal     func_800AAB94
    div.s   $f12, $f10, $f16
    lw      v0, 0x004C($sp)
    lw      a2, 0x0000(s2)             # 00000000
lbl_808F83C4:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E298
    sw      v0, 0x004C($sp)
    lh      t8, 0x0190(s1)             # 00000190
    lw      v0, 0x004C($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t9, t8, 0x0004             # t9 = 00000000
    beql    t9, $zero, lbl_808F841C
    cfc1    t2, $f31
    lw      a0, 0x02C0(s0)             # 000002C0
    addiu   t0, $zero, 0x0384          # t0 = 00000384
    addiu   t1, $zero, 0x044B          # t1 = 0000044B
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_8007DC40
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_808F85EC
    sw      v0, 0x02C0(s0)             # 000002C0
    cfc1    t2, $f31
lbl_808F841C:
    ctc1    a1, $f31
    lwc1    $f18, 0x01D8(v0)           # 000001D8
    lw      a0, 0x02C0(s0)             # 000002C0
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f18
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_808F848C
    mfc1    a1, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    a1, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_808F8480
    nop
    mfc1    a1, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808F8498
    or      a1, a1, $at                # a1 = 80000000
lbl_808F8480:
    beq     $zero, $zero, lbl_808F8498
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f4
lbl_808F848C:
    nop
    bltz    a1, lbl_808F8480
    nop
lbl_808F8498:
    ctc1    t2, $f31
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f6, 0x01DC(v0)            # 000001DC
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_808F8514
    mfc1    a2, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    a2, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_808F8508
    nop
    mfc1    a2, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808F8520
    or      a2, a2, $at                # a2 = 80000000
lbl_808F8508:
    beq     $zero, $zero, lbl_808F8520
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f8
lbl_808F8514:
    nop
    bltz    a2, lbl_808F8508
    nop
lbl_808F8520:
    ctc1    t3, $f31
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f10, 0x01E0(v0)           # 000001E0
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t4, $f31
    ctc1    a3, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_808F859C
    mfc1    a3, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    a3, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_808F8590
    nop
    mfc1    a3, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808F85A8
    or      a3, a3, $at                # a3 = 80000000
lbl_808F8590:
    beq     $zero, $zero, lbl_808F85A8
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f16
lbl_808F859C:
    nop
    bltz    a3, lbl_808F8590
    nop
lbl_808F85A8:
    sw      $zero, 0x0010($sp)
    lwc1    $f18, 0x01E4(v0)           # 000001E4
    ctc1    t4, $f31
    nop
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addiu   t7, t6, 0x03E3             # t7 = 000003E3
    sw      t7, 0x0014($sp)
    lwc1    $f6, 0x01E8(v0)            # 000001E8
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    addiu   t0, t9, 0x03E8             # t0 = 000003E8
    jal     func_8007DC40
    sw      t0, 0x0018($sp)
    sw      v0, 0x02C0(s0)             # 000002C0
lbl_808F85EC:
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lwc1    $f10, 0x01C4(s1)           # 000001C4
    lwc1    $f18, 0x01D0(s1)           # 000001D0
    trunc.w.s $f16, $f10
    trunc.w.s $f4, $f18
    mfc1    v1, $f16
    mfc1    t7, $f4
    sll     v1, v1, 16
    sra     v1, v1, 16
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sll     t9, v1, 24
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t0, t8, t9                 # t0 = 00000000
    sll     t1, v1, 16
    or      t2, t0, t1                 # t2 = 00000008
    sll     t3, v1,  8
    or      t4, t2, t3                 # t4 = 00000008
    sw      t4, 0x0004(v0)             # 00000004
    lh      t5, 0x01A0(s1)             # 000001A0
    beql    t5, $zero, lbl_808F8688
    lw      v0, 0x02C0(s0)             # 000002C0
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_808F82E0
    sw      v0, 0x003C($sp)
    lw      v1, 0x003C($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_808F86B0
    nop
    lw      v0, 0x02C0(s0)             # 000002C0
lbl_808F8688:
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_808F8338
    sw      v0, 0x0038($sp)
    lw      v1, 0x0038($sp)
    sw      v0, 0x0004(v1)             # 00000004
lbl_808F86B0:
    lui     t0, %hi(func_808F821C)     # t0 = 80900000
    addiu   t0, t0, %lo(func_808F821C) # t0 = 808F821C
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lui     a3, %hi(func_808F7E40)     # a3 = 808F0000
    addiu   a3, a3, %lo(func_808F7E40) # a3 = 808F7E40
    sw      s1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_8008993C
    or      a0, s2, $zero              # a0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009A574
    lw      a1, 0x02C0(s0)             # 000002C0
    sw      v0, 0x02C0(s0)             # 000002C0
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58

.section .data

var_808F8700: .word 0x00520900, 0x00000035, 0x00370000, 0x00000568
.word func_808F4748
.word func_808F49D8
.word func_808F7A38
.word func_808F835C
var_808F8720: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFE, 0x00000000, 0x01050100, \
0x001E005A, 0xFFCE0000, 0x00000000
var_808F874C: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00300000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0014001E, 0xFFEC0000, 0x00000000
var_808F8778: .word \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01000000, 0x00000001, 0x01010101, 0x01010101, \
0x01000101, 0x00000000, 0x01010101, 0x01010001, \
0x01000101, 0x01000000, 0x00010101, 0x01010001, \
0x01000001, 0x01010100, 0x00000101, 0x01000001, \
0x01000001, 0x01010101, 0x00000001, 0x01000001, \
0x01000101, 0x01010000, 0x00000001, 0x00000001, \
0x01010101, 0x01010101, 0x00000000, 0x01010001, \
0x01000101, 0x01010100, 0x00000001, 0x01010001, \
0x01000001, 0x01010000, 0x00010101, 0x01010001, \
0x01000000, 0x00000000, 0x00000101, 0x01010001, \
0x01000000, 0x01010000, 0x00010101, 0x01010101, \
0x01000001, 0x01010100, 0x01010101, 0x01010101, \
0x01000101, 0x01010100, 0x00010101, 0x01010001, \
0x01010101, 0x01010100, 0x00010101, 0x00000001, \
0x01010101, 0x01010101, 0x01010101, 0x01010101
var_808F8878: .word \
0x01010100, 0x01000001, 0x00000101, 0x01010101, \
0x00000000, 0x00000000, 0x01010100, 0x00010100, \
0x01000101, 0x00000000, 0x00010100, 0x00010000, \
0x01000001, 0x01000000, 0x00000101, 0x01000000, \
0x00000001, 0x01010000, 0x00000001, 0x01000001, \
0x00000001, 0x00000100, 0x00000000, 0x01000001, \
0x01000101, 0x01000000, 0x00000000, 0x00000000, \
0x01000000, 0x01000000, 0x00000000, 0x00000000, \
0x01000000, 0x01000000, 0x00000000, 0x01000001, \
0x00000000, 0x00000000, 0x00000000, 0x01000001, \
0x00000000, 0x00000000, 0x00000000, 0x01000001, \
0x01000000, 0x00010000, 0x00000001, 0x01010000, \
0x01000000, 0x00010000, 0x00000100, 0x01010000, \
0x00000000, 0x01000000, 0x00000000, 0x01000000, \
0x01000000, 0x01000100, 0x00000101, 0x00000001, \
0x01000001, 0x01010000, 0x00010101, 0x00000001
var_808F8978: .word \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101
var_808F8A78: .word \
0x0600A800, 0x0600AE80, 0x0600AF00, 0x0600C180, \
0x0600C400
var_808F8A8C: .word \
0x0600B980, 0x0600C480, 0x0600BC80, 0x0600BD80, \
0x0600C080
var_808F8AA0: .word \
0x0600C200, 0x0600A000, 0x0600A200, 0x0600A400, \
0x0600A600, 0x0600A880, 0x0600B780, 0x0600BA80, \
0x0600BE80
var_808F8AC4: .word 0x0600AA80, 0x0600AF80
var_808F8ACC: .word 0x060040B0, 0x06003FB0
var_808F8AD4: .word 0x801F0005, 0x8917002B, 0xB86C0000, 0x304C0000
var_808F8AE4: .word 0x00000000, 0x00000000, 0x42480000
var_808F8AF0: .word 0x00000000, 0x00000000, 0x00000000
var_808F8AFC: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B08: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B14: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B20: .word 0x06010FD4, 0x06011800
var_808F8B28: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B34: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B40: .word 0x00000000, 0x42480000, 0x00000000
var_808F8B4C: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B58: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B64: .word 0x00000000, 0xBF000000, 0x00000000
var_808F8B70: .word 0x00000000, 0x00000000, 0x00000000
var_808F8B7C: .word \
0x00000000, 0x00000000, 0x45BB8000, 0x00000000, \
0x00000000

.section .rodata

var_808F8B90: .word 0xC54F3000
var_808F8B94: .word 0xC54F3000
var_808F8B98: .word 0x3CF5C28F
var_808F8B9C: .word 0x3F933333
var_808F8BA0: .word 0x3F4CCCCD
var_808F8BA4: .word 0xC54F3000
var_808F8BA8: .word 0xC54F3000
var_808F8BAC: .word 0xC53EA000
var_808F8BB0: .word 0xC53EA000
var_808F8BB4: .word 0xC541C000
var_808F8BB8: .word 0xBDA3D70A
var_808F8BBC: .word 0x3DCCCCCD
var_808F8BC0: .word 0x3FFEB852
var_808F8BC4: .word 0xBE4CCCCD
var_808F8BC8: .word 0xC54F3000
var_808F8BCC: .word 0x4622F983
var_808F8BD0: .word 0x461C4000
var_808F8BD4: .word 0x3E4CCCCD
var_808F8BD8: .word 0x3DCCCCCD
var_808F8BDC: .word 0x40490FDB
var_808F8BE0: .word var_808F69D0
.word var_808F6B6C
.word var_808F6D7C
.word var_808F6FDC
.word var_808F706C
.word var_808F70E4
var_808F8BF8: .word 0x3E4CCCCD
var_808F8BFC: .word 0x3CA3D70A
var_808F8C00: .word 0x3D4CCCCD
var_808F8C04: .word 0x3D4CCCCD
var_808F8C08: .word 0x3D4CCCCD
var_808F8C0C: .word 0xC54F3000
var_808F8C10: .word 0xC54F3000
var_808F8C14: .word 0xC54F3000
var_808F8C18: .word 0xC54F3000
var_808F8C1C: .word 0xC54F3000
var_808F8C20: .word 0xC54C1000
var_808F8C24: .word 0xC54F3000
var_808F8C28: .word 0xC54F3000
var_808F8C2C: .word 0xC542B000
var_808F8C30: .word 0xBE4CCCCD
var_808F8C34: .word 0x3B03126F
var_808F8C38: .word 0xC54F3000
var_808F8C3C: .word 0x3B03126F
var_808F8C40: .word 0x3A83126F
var_808F8C44: .word 0x3A83126F
var_808F8C48: .word var_808F8100
.word var_808F8100
.word var_808F8100
.word var_808F8150
.word var_808F8150
.word var_808F8150
.word lbl_808F81B4
.word lbl_808F81B4
.word var_808F81A0
.word lbl_808F81B4
.word var_808F7E6C
.word lbl_808F81B4
.word lbl_808F81B4
.word lbl_808F81B4
.word var_808F7EF0
.word var_808F7F48
.word var_808F7FA0
.word lbl_808F81B4
.word var_808F7FF8
.word var_808F8050
.word var_808F80A8
var_808F8C9C: .word 0x40490FF9

