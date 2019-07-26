.section .text
func_80B49380:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0378             # a3 = 06000378
    addiu   a2, a2, 0x9948             # a2 = 06009948
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0278             # a1 = 00000278
    sw      a1, 0x0040($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B49D20)      # a3 = 80B50000
    lw      a1, 0x0040($sp)
    addiu   a3, a3, %lo(var_80B49D20)  # a3 = 80B49D20
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sb      t9, 0x001F(s0)             # 0000001F
    bgezl   v1, lbl_80B49414
    lh      t2, 0x00B6(s0)             # 000000B6
    sh      $zero, 0x001C(s0)          # 0000001C
    lh      v1, 0x001C(s0)             # 0000001C
    lh      t2, 0x00B6(s0)             # 000000B6
lbl_80B49414:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    mtc1    t2, $f6                    # $f6 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    cvt.s.w $f8, $f6
    sra     t0, v1,  8
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sh      t1, 0x0266(s0)             # 00000266
    lui     $at, %hi(var_80B49D70)     # $at = 80B50000
    swc1    $f4, 0x006C(s0)            # 0000006C
    div.s   $f16, $f8, $f10
    lwc1    $f18, %lo(var_80B49D70)($at)
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFEC
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE0
    swc1    $f0, 0x0050($sp)
    swc1    $f0, 0x004C($sp)
    swc1    $f0, 0x0048($sp)
    swc1    $f0, 0x0058($sp)
    swc1    $f0, 0x0054($sp)
    jal     func_800AB958
    swc1    $f4, 0x005C($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0048($sp)
    lwc1    $f18, 0x004C($sp)
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x0050($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0019          # a3 = 00000019
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x001C($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0018($sp)
    lh      t3, 0x0032(s0)             # 00000032
    sw      t4, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    jal     func_800253F0
    sw      t3, 0x0020($sp)
    beq     v0, $zero, lbl_80B49504
    sw      v0, 0x0274(s0)             # 00000274
    lui     t6, %hi(func_80B49768)     # t6 = 80B50000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, t6, %lo(func_80B49768) # t6 = 80B49768
    sb      t5, 0x00AE(s0)             # 000000AE
    b       lbl_80B4950C
    sw      t6, 0x024C(s0)             # 0000024C
lbl_80B49504:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B4950C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80B49520:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B49530:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0378             # a0 = 06000378
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    lw      v1, 0x0028($sp)
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0378             # a1 = 06000378
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      v1, 0x0028($sp)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t8, %hi(func_80B495B4)     # t8 = 80B50000
    lw      t6, 0x0004(v1)             # 00000004
    addiu   t8, t8, %lo(func_80B495B4) # t8 = 80B495B4
    sw      t8, 0x024C(v1)             # 0000024C
    and     t7, t6, $at
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B495B4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    lh      t8, 0x0266(s0)             # 00000266
    addu    t7, t7, t6
    lw      t7, 0x1E08(t7)             # 00011E08
    sll     t9, t8,  3
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addu    t0, t7, t9
    jal     func_8008C9C0
    sw      t0, 0x0034($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280
    lui     a1, 0x4040                 # a1 = 40400000
    lw      v0, 0x0274(s0)             # 00000274
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x002C(v0)            # 0000002C
    lw      a0, 0x003C($sp)
    sub.s   $f12, $f4, $f6
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sub.s   $f14, $f8, $f10
    swc1    $f12, 0x0030($sp)
    jal     func_800DD464
    swc1    $f14, 0x002C($sp)
    lwc1    $f12, 0x0030($sp)
    beq     v0, $zero, lbl_80B49650
    lwc1    $f14, 0x002C($sp)
    lw      t1, 0x0274(s0)             # 00000274
    sh      $zero, 0x02D8(t1)          # 000002D8
lbl_80B49650:
    mul.s   $f16, $f12, $f12
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    mul.s   $f18, $f14, $f14
    lui     $at, 0x4316                # $at = 43160000
    add.s   $f2, $f16, $f18
    sqrt.s  $f2, $f2
    c.lt.s  $f2, $f4
    nop
    bc1fl   lbl_80B496A4
    mtc1    $at, $f6                   # $f6 = 150.00
    lh      t2, 0x0266(s0)             # 00000266
    lw      t4, 0x0274(s0)             # 00000274
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x02D8(t4)             # 000002D8
    lw      t5, 0x0034($sp)
    lw      t8, 0x0274(s0)             # 00000274
    lbu     t6, 0x0000(t5)             # 00000000
    b       lbl_80B496C0
    sh      t6, 0x02DC(t8)             # 000002DC
    mtc1    $at, $f6                   # $f6 = 150.00
lbl_80B496A4:
    nop
    c.lt.s  $f6, $f2
    nop
    bc1f    lbl_80B496C0
    nop
    lw      t7, 0x0274(s0)             # 00000274
    sh      $zero, 0x02D8(t7)          # 000002D8
lbl_80B496C0:
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_80B49D74)     # $at = 80B50000
    lwc1    $f8, %lo(var_80B49D74)($at)
    lwc1    $f18, 0x026C(s0)           # 0000026C
    sw      $zero, 0x0010($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f4, $f18
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f4
    trunc.w.s $f16, $f10
    sll     a3, a3, 16
    sra     a3, a3, 16
    mfc1    a1, $f16
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lui     a1, 0x459C                 # a1 = 459C0000
    ori     a1, a1, 0x4000             # a1 = 459C4000
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_80064280
    lui     a3, 0x4316                 # a3 = 43160000
    lh      t2, 0x025C(s0)             # 0000025C
    lh      t1, 0x00B6(s0)             # 000000B6
    beq     t2, $zero, lbl_80B49740
    sh      t1, 0x0032(s0)             # 00000032
    jal     func_80079B44
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_80B49754
lbl_80B49740:
    lui     t4, %hi(func_80B49768)     # t4 = 80B50000
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    addiu   t4, t4, %lo(func_80B49768) # t4 = 80B49768
    sh      t3, 0x025C(s0)             # 0000025C
    sw      t4, 0x024C(s0)             # 0000024C
lbl_80B49754:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B49768:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x9C78             # a0 = 06009C78
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9C78             # a1 = 06009C78
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      t6, 0x0004(s0)             # 00000004
    addiu   t8, $zero, 0x7000          # t8 = 00007000
    sh      t8, 0x010E(s0)             # 0000010E
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B4C(t9)            # 8011B4B4
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80B497F8
    nop
    lh      t1, 0x026A(s0)             # 0000026A
    addiu   t2, $zero, 0x70EA          # t2 = 000070EA
    bne     t1, $zero, lbl_80B497F8
    nop
    sh      t2, 0x010E(s0)             # 0000010E
lbl_80B497F8:
    jal     func_80079B44
    lw      a0, 0x0034($sp)
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sltiu   $at, t3, 0x0008
    beq     $at, $zero, lbl_80B49850
    sll     t3, t3,  2
    lui     $at, %hi(var_80B49D78)     # $at = 80B50000
    addu    $at, $at, t3
    lw      t3, %lo(var_80B49D78)($at)
    jr      t3
    nop
var_80B49824:
    addiu   t4, $zero, 0x7118          # t4 = 00007118
    b       lbl_80B49850
    sh      t4, 0x010E(s0)             # 0000010E
var_80B49830:
    addiu   t5, $zero, 0x7119          # t5 = 00007119
    b       lbl_80B49850
    sh      t5, 0x010E(s0)             # 0000010E
var_80B4983C:
    addiu   t6, $zero, 0x711A          # t6 = 0000711A
    b       lbl_80B49850
    sh      t6, 0x010E(s0)             # 0000010E
var_80B49848:
    addiu   t7, $zero, 0x711B          # t7 = 0000711B
    sh      t7, 0x010E(s0)             # 0000010E
lbl_80B49850:
    lui     t9, %hi(func_80B49878)     # t9 = 80B50000
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   t9, t9, %lo(func_80B49878) # t9 = 80B49878
    sh      t8, 0x0260(s0)             # 00000260
    sw      t9, 0x024C(s0)             # 0000024C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B49878:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x002C($sp)
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80B498B4
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      t6, 0x0274(s0)             # 00000274
    sh      $zero, 0x02D8(t6)          # 000002D8
lbl_80B498B4:
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_800642F0
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B498FC
    lh      t9, 0x025C(s0)             # 0000025C
    lhu     t7, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x70EA         # $at = 000070EA
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bnel    t7, $at, lbl_80B4995C
    lw      $ra, 0x001C($sp)
    b       lbl_80B49958
    sh      t8, 0x026A(s0)             # 0000026A
    lh      t9, 0x025C(s0)             # 0000025C
lbl_80B498FC:
    bnel    t9, $zero, lbl_80B4994C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DD464
    lw      a0, 0x0024($sp)
    bne     v0, $zero, lbl_80B49948
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64
    nop
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    lui     t2, %hi(func_80B49530)     # t2 = 80B50000
    addiu   t2, t2, %lo(func_80B49530) # t2 = 80B49530
    add.s   $f6, $f0, $f4
    sw      t2, 0x024C(s0)             # 0000024C
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    b       lbl_80B49958
    sh      t1, 0x025C(s0)             # 0000025C
lbl_80B49948:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B4994C:
    lw      a1, 0x002C($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
lbl_80B49958:
    lw      $ra, 0x001C($sp)
lbl_80B4995C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4996C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lui     a1, 0x3C54                 # a1 = 3C540000
    ori     a1, a1, 0xFDF4             # a1 = 3C54FDF4
    lw      t7, 0x1C44(t6)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    sw      t7, 0x002C($sp)
    lh      t8, 0x025E(s0)             # 0000025E
    lh      t0, 0x0264(s0)             # 00000264
    addiu   t9, t8, 0x0001             # t9 = 00000001
    bne     t0, $zero, lbl_80B499EC
    sh      t9, 0x025E(s0)             # 0000025E
    lh      t1, 0x0262(s0)             # 00000262
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0262(s0)             # 00000262
    lh      t3, 0x0262(s0)             # 00000262
    slti    $at, t3, 0x0003
    bne     $at, $zero, lbl_80B499EC
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sh      $zero, 0x0262(s0)          # 00000262
    trunc.w.s $f4, $f0
    mfc1    t7, $f4
    nop
    addiu   t8, t7, 0x0014             # t8 = 00000014
    sh      t8, 0x0264(s0)             # 00000264
lbl_80B499EC:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0
    jal     func_80020F04
    swc1    $f0, 0x0270(s0)            # 00000270
    lw      t0, 0x024C(s0)             # 0000024C
    lui     t9, %hi(func_80B49878)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B49878) # t9 = 80B49878
    bne     t9, t0, lbl_80B49AA4
    addiu   a0, s0, 0x0258             # a0 = 00000258
    lw      v0, 0x002C($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    lui     $at, 0x4120                # $at = 41200000
    lw      t2, 0x0024(v0)             # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02C4             # a1 = 000002C4
    sw      t2, 0x02DC(s0)             # 000002DC
    lw      t1, 0x0028(v0)             # 00000028
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t1, 0x02E0(s0)             # 000002E0
    lw      t2, 0x002C(v0)             # 0000002C
    sw      t2, 0x02E4(s0)             # 000002E4
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    beq     t3, $zero, lbl_80B49A68
    nop
    lwc1    $f6, 0x0028(v0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 10.00
    nop
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x02E0(s0)           # 000002E0
lbl_80B49A68:
    jal     func_80027854
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lwl     t5, 0x02CC(s0)             # 000002CC
    lwl     t7, 0x02D2(s0)             # 000002D2
    lwr     t5, 0x02CF(s0)             # 000002CF
    lwr     t7, 0x02D5(s0)             # 000002D5
    swl     t5, 0x0250(s0)             # 00000250
    swl     t7, 0x0256(s0)             # 00000256
    swr     t5, 0x0253(s0)             # 00000253
    swr     t7, 0x0259(s0)             # 00000259
    lhu     t5, 0x02D0(s0)             # 000002D0
    lhu     t7, 0x02D6(s0)             # 000002D6
    sh      t5, 0x0254(s0)             # 00000254
    b       lbl_80B49AE8
    sh      t7, 0x025A(s0)             # 0000025A
lbl_80B49AA4:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0252             # a0 = 00000252
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0254             # a0 = 00000254
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
lbl_80B49AE8:
    lh      v0, 0x0264(s0)             # 00000264
    beq     v0, $zero, lbl_80B49AF8
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0264(s0)             # 00000264
lbl_80B49AF8:
    lh      v0, 0x025C(s0)             # 0000025C
    beq     v0, $zero, lbl_80B49B08
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x025C(s0)             # 0000025C
lbl_80B49B08:
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f16, 0x0010($sp)
    addiu   a2, s0, 0x0278             # a2 = 00000278
    or      a1, a2, $zero              # a1 = 00000278
    sw      a2, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B49B94:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_80B49BC0
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x0258(v0)             # 00000258
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
lbl_80B49BC0:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      v0, 0x0014($sp)
    bne     a1, $at, lbl_80B49BF0
    lw      v1, 0x0010($sp)
    lh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0252(v0)             # 00000252
    lh      t2, 0x0004(v1)             # 00000004
    addu    t1, t9, t0
    sh      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x0254(v0)             # 00000254
    addu    t4, t2, t3
    sh      t4, 0x0004(v1)             # 00000004
lbl_80B49BF0:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80B49BFC:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x005C($sp)
    lui     t7, %hi(var_80B49D4C)      # t7 = 80B50000
    addiu   t7, t7, %lo(var_80B49D4C)  # t7 = 80B49D4C
    lw      t9, 0x0000(t7)             # 80B49D4C
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80B49D50
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80B49D54
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t2, 0x005C($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0040($sp)
    lw      t1, 0x0040($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t1)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lh      t5, 0x0262(s0)             # 00000262
    lui     t0, %hi(var_80B49D58)      # t0 = 80B50000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t6, t5,  2
    addu    t0, t0, t6
    lw      t0, %lo(var_80B49D58)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, t0,  4
    srl     t9, t8, 28
    sll     t2, t9,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t7, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t7, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t6, %hi(func_80B49B94)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B49B94) # t6 = 80B49B94
    sw      t6, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x005C($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFEC
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80026AD0
    lw      a3, 0x005C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B49D00: .word 0x019A0400, 0x00000019, 0x016A0000, 0x000002EC
.word func_80B49380
.word func_80B49520
.word func_80B4996C
.word func_80B49BFC
var_80B49D20: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000A001E, 0x00000000, 0x00000000
var_80B49D4C: .word 0x3E4CCCCD, 0x3E4CCCCD, 0x3E4CCCCD
var_80B49D58: .word \
0x06004178, 0x06004978, 0x06005178, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B49D70: .word 0x40490FDB
var_80B49D74: .word 0x4622F983
var_80B49D78: .word var_80B49824
.word var_80B49848
.word var_80B49830
.word var_80B4983C
.word var_80B49848
.word var_80B4983C
.word var_80B4983C
.word var_80B49848
.word 0x00000000, 0x00000000

