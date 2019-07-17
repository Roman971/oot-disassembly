.section .text
func_808B10F0:
    sw      a1, 0x01D0(a0)             # 000001D0
    jr      $ra
    nop


func_808B10FC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0044($sp)
    lui     a1, %hi(var_808B3C74)      # a1 = 808B0000
    addiu   a1, a1, %lo(var_808B3C74)  # a1 = 808B3C74
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808B1470)     # a1 = 808B0000
    addiu   a1, a1, %lo(func_808B1470) # a1 = 808B1470
    jal     func_808B10F0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_808B3C50)     # $at = 808B0000
    sb      $zero, %lo(var_808B3C50)($at)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sb      $zero, 0x01D4(s0)          # 000001D4
    sra     v1, v1,  8
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sb      $zero, 0x01D5(s0)          # 000001D5
    beq     v1, $at, lbl_808B117C
    sb      $zero, 0x01D6(s0)          # 000001D6
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_808B117C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_808B117C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v1, $at, lbl_808B117C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v1, $at, lbl_808B11C0
    lw      $ra, 0x003C($sp)
lbl_808B117C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a2, 0x0044($sp)
    addiu   t6, $zero, 0x0023          # t6 = 00000023
    sw      t6, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x016F          # a3 = 0000016F
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0014($sp)
    jal     func_800253F0
    swc1    $f0, 0x0018($sp)
    lui     $at, %hi(var_808B3FA0)     # $at = 808B0000
    sw      v0, %lo(var_808B3FA0)($at)
    lw      $ra, 0x003C($sp)
lbl_808B11C0:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808B11D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8008E6BC
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B11FC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a3, 0x0044($sp)
    lw      t6, 0x0038($sp)
    lw      s0, 0x0038($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x001C(t6)             # 0000001C
    addiu   s0, s0, 0x0188             # s0 = 00000188
    or      a1, s0, $zero              # a1 = 00000188
    sra     v0, v0,  8
    sll     v0, v0, 16
    sra     v0, v0, 16
    beq     v0, $at, lbl_808B126C
    lw      a0, 0x003C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808B126C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_808B126C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_808B126C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_808B126C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_808B128C
    or      a3, $zero, $zero           # a3 = 00000000
lbl_808B126C:
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C788
    sh      v0, 0x0036($sp)
    beq     $zero, $zero, lbl_808B12B4
    lh      v0, 0x0036($sp)
lbl_808B128C:
    lw      s0, 0x0038($sp)
    lw      a0, 0x003C($sp)
    sw      $zero, 0x0010($sp)
    addiu   s0, s0, 0x0188             # s0 = 00000310
    or      a1, s0, $zero              # a1 = 00000310
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C684
    sh      v0, 0x0036($sp)
    lh      v0, 0x0036($sp)
lbl_808B12B4:
    lw      t8, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lb      t9, 0x01CC(t8)             # 000001CC
    lui     $at, 0x8000                # $at = 80000000
    or      a0, s0, $zero              # a0 = 00000310
    sll     t0, t9,  4
    addu    t0, t0, t9
    sll     t0, t0,  2
    addu    t1, t7, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    lw      a1, 0x0044($sp)
    addu    t3, t2, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, 0x0C50($at)            # 80120C50
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808B1318
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_808B1318
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_808B1318
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_808B1328
    lui     a2, 0x4040                 # a2 = 40400000
lbl_808B1318:
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_808B1338
    lw      $ra, 0x002C($sp)
lbl_808B1328:
    or      a0, s0, $zero              # a0 = 00000310
    jal     func_8008D360
    lw      a1, 0x0044($sp)
    lw      $ra, 0x002C($sp)
lbl_808B1338:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808B1348:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lw      a1, 0x0030($sp)
    lw      a0, 0x0034($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, a1, 0x0188             # a1 = 00000188
    sw      a1, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    lw      t7, 0x0030($sp)
    lw      t6, 0x0034($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lb      t8, 0x01CC(t7)             # 000001CC
    lui     $at, 0x8000                # $at = 80000000
    lw      a0, 0x002C($sp)
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, t6, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    lw      a1, 0x003C($sp)
    lui     a2, 0x4040                 # a2 = 40400000
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008D360
    sw      t2, 0x0C50($at)            # 80120C50
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B13D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    sw      a3, 0x0024($sp)
    jal     func_8008E4EC
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      t0, 0x0018($sp)
    lw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      v1, 0x001C(t0)             # 0000001C
    addiu   a0, t0, 0x0188             # a0 = 00000188
    or      a1, a3, $zero              # a1 = 00000000
    sra     v1, v1,  8
    andi    v1, v1, 0x00FF             # v1 = 00000000
    beq     v1, $at, lbl_808B1458
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v1, $at, lbl_808B1458
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_808B1458
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v1, $at, lbl_808B1458
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v1, $at, lbl_808B1458
    lui     a2, 0x4040                 # a2 = 40400000
    addiu   a0, t0, 0x0188             # a0 = 00000188
    jal     func_8008D360
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808B1464
    lw      $ra, 0x0014($sp)
lbl_808B1458:
    jal     func_8008D278
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x0014($sp)
lbl_808B1464:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B1470:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lw      s2, 0x0034($sp)
    lui     t9, %hi(var_808B3C78)      # t9 = 808B0000
    sra     t7, t6,  8
    sll     t8, t7,  2
    addu    t8, t8, t7
    lui     $at, 0x0001                # $at = 00010000
    sll     t8, t8,  2
    addiu   t9, t9, %lo(var_808B3C78)  # t9 = 808B3C78
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    s1, t8, t9
    addu    s2, s2, $at
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80081628              # ObjectIndex
    lh      a1, 0x0000(s1)             # 00000000
    sw      v0, 0x0028($sp)
    lh      a1, 0x0002(s1)             # 00000002
    jal     func_80081628              # ObjectIndex
    or      a0, s2, $zero              # a0 = 00000000
    sb      v0, 0x01CC(s0)             # 000001CC
    lw      a1, 0x0028($sp)
    jal     func_80081688
    or      a0, s2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808B1500
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80081688
    lb      a1, 0x01CC(s0)             # 000001CC
    bne     v0, $zero, lbl_808B1514
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_808B1500:
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFBF         # $at = FFFFFFBF
    and     t1, t0, $at
    beq     $zero, $zero, lbl_808B1614
    sw      t1, 0x0004(s0)             # 00000004
lbl_808B1514:
    sb      t2, 0x01D6(s0)             # 000001D6
    lw      t3, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sb      t3, 0x001E(s0)             # 0000001E
    jal     func_80020FA4
    lw      a0, 0x0034($sp)
    lbu     t4, 0x0004(s1)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_808B1550
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_808B1550:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    nop
    div.s   $f16, $f6, $f10
    mfc1    a1, $f16
    jal     func_80020F88
    nop
    lb      t5, 0x0005(s1)             # 00000005
    lbu     t7, 0x0006(s1)             # 00000006
    lbu     t9, 0x0007(s1)             # 00000007
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  3
    addu    t6, t6, t5
    sll     t6, t6,  2
    mtc1    t6, $f18                   # $f18 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     a2, %hi(var_808B3D50)      # a2 = 808B0000
    cvt.s.w $f18, $f18
    sll     t8, t7,  2
    addu    a2, a2, t8
    lw      a2, %lo(var_808B3D50)(a2)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     $at, 0x4F80                # $at = 4F800000
    mfc1    a1, $f18
    bgez    t9, lbl_808B15C8
    cvt.s.w $f4, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8
lbl_808B15C8:
    mfc1    a3, $f4
    jal     func_8001EC20
    nop
    lbu     t0, 0x0008(s1)             # 00000008
    lui     t9, %hi(var_808B3D40)      # t9 = 808B0000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sll     t2, t1,  2
    addu    t9, t9, t2
    sb      t0, 0x01CD(s0)             # 000001CD
    lw      t9, %lo(var_808B3D40)(t9)
    lw      a3, 0x0010(s1)             # 00000010
    lw      a2, 0x000C(s1)             # 0000000C
    jalr    $ra, t9
    lw      a1, 0x0034($sp)
    lui     a1, %hi(func_808B162C)     # a1 = 808B0000
    addiu   a1, a1, %lo(func_808B162C) # a1 = 808B162C
    jal     func_808B10F0
    or      a0, s0, $zero              # a0 = 00000000
lbl_808B1614:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808B162C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x005C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t7, 0x8012                 # t7 = 80120000
    sra     v0, v0,  8
    andi    v0, v0, 0x00FF             # v0 = 00000000
    bne     v0, $at, lbl_808B16B0
    sw      v0, 0x0044($sp)
    lw      t7, -0x46D0(t7)            # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t8, 0x005C($sp)
    bne     t7, $at, lbl_808B1970
    nop
    lhu     v1, 0x1D74(t8)             # 00001D74
    addiu   $at, $zero, 0x0318         # $at = 00000318
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_808B1698
    addiu   $at, $zero, 0x034D         # $at = 0000034D
    jal     func_80022FD0
    addiu   a1, $zero, 0x686E          # a1 = 0000686E
    beq     $zero, $zero, lbl_808B1970
    nop
    addiu   $at, $zero, 0x034D         # $at = 0000034D
lbl_808B1698:
    bne     v1, $at, lbl_808B1970
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x686F          # a1 = 0000686F
    beq     $zero, $zero, lbl_808B1970
    nop
lbl_808B16B0:
    lw      t9, 0x0044($sp)
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $at, lbl_808B16E8
    lw      t2, 0x0044($sp)
    lui     a1, 0x3E99                 # a1 = 3E990000
    jal     func_80020F88
    ori     a1, a1, 0x999A             # a1 = 3E99999A
    lui     $at, %hi(var_808B3D80)     # $at = 808B0000
    lwc1    $f0, %lo(var_808B3D80)($at)
    swc1    $f0, 0x00F4(s0)            # 000000F4
    swc1    $f0, 0x00F8(s0)            # 000000F8
    beq     $zero, $zero, lbl_808B1970
    swc1    $f0, 0x00FC(s0)            # 000000FC
lbl_808B16E8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t2, $at, lbl_808B1888
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x46D0(v0)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t3, 0x005C($sp)
    bnel    v0, $at, lbl_808B17B0
    lw      t6, 0x005C($sp)
    lhu     v1, 0x1D74(t3)             # 00001D74
    slti    $at, v1, 0x00DC
    bne     $at, $zero, lbl_808B1748
    addiu   $at, $zero, 0x0118         # $at = 00000118
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x0140         # $at = 00000140
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x017C         # $at = 0000017C
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x0199         # $at = 00000199
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x01B6         # $at = 000001B6
    beq     v1, $at, lbl_808B1778
    nop
    beq     $zero, $zero, lbl_808B17B0
    lw      t6, 0x005C($sp)
lbl_808B1748:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x0047         # $at = 00000047
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x0081         # $at = 00000081
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    beq     v1, $at, lbl_808B1778
    addiu   $at, $zero, 0x00DB         # $at = 000000DB
    bne     v1, $at, lbl_808B17AC
lbl_808B1778:
    lui     t4, 0x8010                 # t4 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    addiu   a3, t4, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t5, 0x0014($sp)
    addiu   a0, $zero, 0x481D          # a0 = 0000481D
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x46D0(v0)            # 8011B930
lbl_808B17AC:
    lw      t6, 0x005C($sp)
lbl_808B17B0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808B1834
    lhu     v1, 0x1D74(t6)             # 00001D74
    addiu   $at, $zero, 0x05E4         # $at = 000005E4
    bne     v1, $at, lbl_808B17D8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D6          # a1 = 000039D6
    lw      a2, 0x005C($sp)
    lhu     v1, 0x1D74(a2)             # 00001D74
lbl_808B17D8:
    addiu   $at, $zero, 0x0609         # $at = 00000609
    bne     v1, $at, lbl_808B1834
    lw      a2, 0x005C($sp)
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    lui     $at, 0x42CA                # $at = 42CA0000
    mtc1    $at, $f6                   # $f6 = 101.00
    lui     $at, %hi(var_808B3D84)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B3D84)($at)
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t8, 0x0028($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00F5          # a3 = 000000F5
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lw      a2, 0x005C($sp)
    lhu     v1, 0x1D74(a2)             # 00001D74
lbl_808B1834:
    addiu   $at, $zero, 0x03FC         # $at = 000003FC
    bne     v1, $at, lbl_808B1850
    lui     a0, 0x0100                 # a0 = 01000000
    jal     func_800CAA70
    ori     a0, a0, 0x0023             # a0 = 01000023
    lw      a2, 0x005C($sp)
    lhu     v1, 0x1D74(a2)             # 00001D74
lbl_808B1850:
    addiu   $at, $zero, 0x03C0         # $at = 000003C0
    bne     v1, $at, lbl_808B1970
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808B1970
    nop
lbl_808B1888:
    lw      t2, 0x0044($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t2, $at, lbl_808B18C8
    lw      t3, 0x0044($sp)
    lw      v0, -0x46D0(v0)            # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_808B18B8
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_808B1970
    nop
lbl_808B18B8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2078          # a1 = 00002078
    beq     $zero, $zero, lbl_808B1970
    nop
lbl_808B18C8:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t3, $at, lbl_808B1970
    nop
    lwc1    $f10, 0x01A0(s0)           # 000001A0
    lw      v0, 0x0190(s0)             # 00000190
    lui     t5, 0x0600                 # t5 = 06000000
    trunc.w.s $f16, $f10
    addiu   t5, t5, 0x3858             # t5 = 06003858
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    mfc1    v1, $f16
    addiu   t6, t6, 0x4AA4             # t6 = 06004AA4
    sll     v1, v1, 16
    bne     t5, v0, lbl_808B1938
    sra     v1, v1, 16
    bne     v1, $at, lbl_808B191C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x283D          # a1 = 0000283D
    jal     func_80022FD0
    sh      v1, 0x004E($sp)
    lh      v1, 0x004E($sp)
lbl_808B191C:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_808B1970
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x282B          # a1 = 0000282B
    beq     $zero, $zero, lbl_808B1970
    nop
lbl_808B1938:
    bne     t6, v0, lbl_808B195C
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v1, $at, lbl_808B1970
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x282C          # a1 = 0000282C
    beq     $zero, $zero, lbl_808B1970
    nop
lbl_808B195C:
    addiu   t7, t7, 0x2650             # t7 = 00002650
    bne     t7, v0, lbl_808B1970
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2078          # a1 = 00002078
lbl_808B1970:
    lui     v1, %hi(var_808B3D5C)      # v1 = 808B0000
    addiu   v1, v1, %lo(var_808B3D5C)  # v1 = 808B3D5C
    lh      v0, 0x0000(v1)             # 808B3D5C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808B198C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 808B3D5C
lbl_808B198C:
    jal     func_808B3144
    lw      a1, 0x005C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0188             # a0 = 00000188
    jal     func_8008C9C0
    sw      a0, 0x0040($sp)
    lw      t9, 0x0044($sp)
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    lw      a2, 0x005C($sp)
    beq     a3, t9, lbl_808B19C8
    or      a1, v0, $zero              # a1 = 00000000
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    bnel    t1, t9, lbl_808B1C60
    lw      t7, 0x0044($sp)
lbl_808B19C8:
    lbu     t2, 0x1D6C(a2)             # 00001D6C
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    lui     t3, %hi(var_808B3D5C)      # t3 = 808B0000
    beq     t2, $zero, lbl_808B2170
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      v1, 0x1D90(a2)             # 00001D90
    lw      t4, 0x0044($sp)
    beql    v1, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     a0, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a0, $at, lbl_808B1A60
    nop
    lh      t3, %lo(var_808B3D5C)(t3)
    bne     t3, $zero, lbl_808B1A60
    nop
    lw      t4, 0x0044($sp)
    bnel    a3, t4, lbl_808B1A3C
    lw      t7, 0x0190(s0)             # 00000190
    lw      t5, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2928             # a1 = 06002928
    beq     a1, t5, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      t7, 0x0190(s0)             # 00000190
lbl_808B1A3C:
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x4AA4             # t6 = 06004AA4
    beq     t6, t7, lbl_808B2170
    lw      a0, 0x0040($sp)
    or      a1, t6, $zero              # a1 = 06004AA4
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
lbl_808B1A60:
    bne     t0, a0, lbl_808B1AC4
    nop
    lw      t9, 0x0044($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    lui     $at, %hi(var_808B3D5C)     # $at = 808B0000
    bne     a3, t9, lbl_808B1AA0
    sh      t8, %lo(var_808B3D5C)($at)
    lw      t2, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1D28             # a1 = 06001D28
    beq     a1, t2, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
lbl_808B1AA0:
    lw      t3, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3858             # a1 = 06003858
    beq     a1, t3, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
lbl_808B1AC4:
    bnel    a3, t4, lbl_808B1C30
    lw      t5, 0x0190(s0)             # 00000190
    lbu     t5, 0x01D5(s0)             # 000001D5
    sltiu   $at, t5, 0x0008
    beq     $at, $zero, lbl_808B2170
    sll     t5, t5,  2
    lui     $at, %hi(var_808B3D88)     # $at = 808B0000
    addu    $at, $at, t5
    lw      t5, %lo(var_808B3D88)($at)
    jr      t5
    nop
var_808B1AF0:
    bne     t1, a0, lbl_808B2170
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0040($sp)
    addiu   a1, a1, 0x0F54             # a1 = 06000F54
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t7, 0x01D5(s0)             # 000001D5
    addiu   t6, t7, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t6, 0x01D5(s0)             # 000001D5
var_808B1B18:
    beq     v0, $zero, lbl_808B2170
    lw      a0, 0x0040($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14F4             # a1 = 060014F4
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t8, 0x01D5(s0)             # 000001D5
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t9, 0x01D5(s0)             # 000001D5
var_808B1B40:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a0, $at, lbl_808B2170
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0040($sp)
    addiu   a1, a1, 0x08A0             # a1 = 060008A0
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t2, 0x01D5(s0)             # 000001D5
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t3, 0x01D5(s0)             # 000001D5
var_808B1B6C:
    beq     v0, $zero, lbl_808B2170
    lw      a0, 0x0040($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0BC8             # a1 = 06000BC8
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t4, 0x01D5(s0)             # 000001D5
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t5, 0x01D5(s0)             # 000001D5
var_808B1B94:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a0, $at, lbl_808B2170
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0040($sp)
    addiu   a1, a1, 0x14F4             # a1 = 060014F4
    jal     func_8008D328
    lui     a2, 0xC1A0                 # a2 = C1A00000
    lbu     t7, 0x01D5(s0)             # 000001D5
    addiu   t6, t7, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t6, 0x01D5(s0)             # 000001D5
var_808B1BC0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a0, $at, lbl_808B2170
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2928             # a1 = 06002928
    lw      a0, 0x0040($sp)
    jal     func_8008D328
    lui     a2, 0xC170                 # a2 = C1700000
    lbu     t8, 0x01D5(s0)             # 000001D5
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t9, 0x01D5(s0)             # 000001D5
var_808B1BEC:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a0, $at, lbl_808B2170
    addiu   a1, $zero, 0x39C8          # a1 = 000039C8
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05B4             # a1 = 060005B4
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x4040                 # a2 = 40400000
    lbu     t2, 0x01D5(s0)             # 000001D5
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t3, 0x01D5(s0)             # 000001D5
var_808B1C24:
    beq     $zero, $zero, lbl_808B2170
    sb      $zero, 0x01D5(s0)          # 000001D5
    lw      t5, 0x0190(s0)             # 00000190
lbl_808B1C30:
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x2650             # t4 = 06002650
    beq     t4, t5, lbl_808B2170
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a0, $at, lbl_808B2170
    or      a1, t4, $zero              # a1 = 06002650
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x4040                 # a2 = 40400000
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      t7, 0x0044($sp)
lbl_808B1C60:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      t5, 0x0044($sp)
    bne     t0, t7, lbl_808B1DFC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t6, $at, lbl_808B1CE4
    lhu     t9, 0x1D74(a2)             # 00001D74
    lhu     t8, 0x1D74(a2)             # 00001D74
    addiu   $at, $zero, 0x034D         # $at = 0000034D
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    bne     t8, $at, lbl_808B1D38
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    lui     $at, 0x42A2                # $at = 42A20000
    mtc1    $at, $f4                   # $f4 = 81.00
    lui     $at, %hi(var_808B3DA8)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B3DA8)($at)
    addiu   a3, $zero, 0x00F1          # a3 = 000000F1
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0028($sp)
    swc1    $f18, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    lw      a2, 0x005C($sp)
    beq     $zero, $zero, lbl_808B1D38
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lhu     t9, 0x1D74(a2)             # 00001D74
lbl_808B1CE4:
    addiu   $at, $zero, 0x00C3         # $at = 000000C3
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    bne     t9, $at, lbl_808B1D38
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, 0x42A2                # $at = 42A20000
    mtc1    $at, $f10                  # $f10 = 81.00
    lui     $at, %hi(var_808B3DAC)     # $at = 808B0000
    lwc1    $f16, %lo(var_808B3DAC)($at)
    addiu   a3, $zero, 0x00F1          # a3 = 000000F1
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      t0, 0x0028($sp)
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lw      a2, 0x005C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_808B1D38:
    lbu     v1, 0x01D5(s0)             # 000001D5
    beql    v1, $zero, lbl_808B1D58
    lbu     t2, 0x1D6C(a2)             # 00001D6C
    beql    v1, t0, lbl_808B1DAC
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lbu     t2, 0x1D6C(a2)             # 00001D6C
lbl_808B1D58:
    beql    t2, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      v0, 0x1D8C(a2)             # 00001D8C
    beql    v0, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     t3, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t3, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      t5, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2574             # a1 = 06002574
    beq     a1, t5, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    lbu     t4, 0x01D5(s0)             # 000001D5
    addiu   t7, t4, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t7, 0x01D5(s0)             # 000001D5
    lbu     t6, 0x1D6C(a2)             # 00001D6C
lbl_808B1DAC:
    beql    t6, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      v0, 0x1D8C(a2)             # 00001D8C
    beql    v0, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     t8, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t8, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      t9, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x29CC             # a1 = 060029CC
    beq     a1, t9, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x4040                 # a2 = 40400000
    lbu     t2, 0x01D5(s0)             # 000001D5
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t3, 0x01D5(s0)             # 000001D5
lbl_808B1DFC:
    bne     t5, $at, lbl_808B1F9C
    lw      t8, 0x0044($sp)
    lh      t4, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x0051         # $at = 00000051
    or      a0, $zero, $zero           # a0 = 00000000
    bne     t4, $at, lbl_808B1EDC
    nop
    lbu     v1, 0x01D5(s0)             # 000001D5
    beql    v1, $zero, lbl_808B1E38
    lbu     t7, 0x1D6C(a2)             # 00001D6C
    beql    v1, t0, lbl_808B1E8C
    lbu     t3, 0x1D6C(a2)             # 00001D6C
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lbu     t7, 0x1D6C(a2)             # 00001D6C
lbl_808B1E38:
    beq     t7, $zero, lbl_808B2170
    nop
    lw      v0, 0x1D8C(a2)             # 00001D8C
    beq     v0, $zero, lbl_808B2170
    nop
    lhu     t6, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t6, $at, lbl_808B2170
    nop
    lw      t8, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1410             # a1 = 06001410
    beq     a1, t8, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    lbu     t9, 0x01D5(s0)             # 000001D5
    addiu   t2, t9, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t2, 0x01D5(s0)             # 000001D5
    lbu     t3, 0x1D6C(a2)             # 00001D6C
lbl_808B1E8C:
    beql    t3, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      v0, 0x1D8C(a2)             # 00001D8C
    beql    v0, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     t5, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t5, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      t4, 0x0190(s0)             # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0450             # a1 = 06000450
    beq     a1, t4, lbl_808B2170
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x4040                 # a2 = 40400000
    lbu     t7, 0x01D5(s0)             # 000001D5
    addiu   t6, t7, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t6, 0x01D5(s0)             # 000001D5
lbl_808B1EDC:
    jal     func_800C74C0
    sw      a1, 0x0050($sp)
    lbu     v1, 0x01D5(s0)             # 000001D5
    lw      a1, 0x0050($sp)
    lw      a2, 0x005C($sp)
    beq     v1, $zero, lbl_808B1F18
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     v1, t0, lbl_808B1F3C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808B1F74
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v1, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
lbl_808B1F18:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x504C             # a1 = 0600504C
    lw      a0, 0x0040($sp)
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t8, 0x01D5(s0)             # 000001D5
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t9, 0x01D5(s0)             # 000001D5
lbl_808B1F3C:
    lw      t2, 0x1D8C(a2)             # 00001D8C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lui     a1, 0x0600                 # a1 = 06000000
    lhu     t3, 0x0000(t2)             # 00000000
    addiu   a1, a1, 0x420C             # a1 = 0600420C
    lw      a0, 0x0040($sp)
    bnel    t3, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t5, 0x01D5(s0)             # 000001D5
    addiu   t4, t5, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t4, 0x01D5(s0)             # 000001D5
lbl_808B1F74:
    beq     a1, $zero, lbl_808B2170
    lw      a0, 0x0040($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x48FC             # a1 = 060048FC
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t7, 0x01D5(s0)             # 000001D5
    addiu   t6, t7, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t6, 0x01D5(s0)             # 000001D5
lbl_808B1F9C:
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    bnel    a0, t8, lbl_808B2060
    lw      t8, 0x0044($sp)
    lbu     v1, 0x01D5(s0)             # 000001D5
    beql    v1, $zero, lbl_808B1FC8
    lbu     t9, 0x1D6C(a2)             # 00001D6C
    beq     v1, t0, lbl_808B2034
    nop
    beq     $zero, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lbu     t9, 0x1D6C(a2)             # 00001D6C
lbl_808B1FC8:
    beql    t9, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      v1, 0x1D90(a2)             # 00001D90
    beql    v1, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     t2, 0x0000(v1)             # 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     a0, t2, lbl_808B2170
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    addiu   a0, $zero, 0x39C7          # a0 = 000039C7
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4534             # a1 = 06004534
    lw      a0, 0x0040($sp)
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t5, 0x01D5(s0)             # 000001D5
    addiu   t4, t5, 0x0001             # t4 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t4, 0x01D5(s0)             # 000001D5
lbl_808B2034:
    beq     v0, $zero, lbl_808B2170
    lw      a0, 0x0040($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x48B0             # a1 = 060048B0
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t7, 0x01D5(s0)             # 000001D5
    addiu   t6, t7, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t6, 0x01D5(s0)             # 000001D5
    lw      t8, 0x0044($sp)
lbl_808B2060:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    t8, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lbu     v1, 0x01D5(s0)             # 000001D5
    beql    v1, $zero, lbl_808B209C
    lbu     t9, 0x1D6C(a2)             # 00001D6C
    beq     v1, t0, lbl_808B20E0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808B2118
    nop
    beql    v1, a3, lbl_808B2144
    lw      t3, 0x1D90(a2)             # 00001D90
    beq     $zero, $zero, lbl_808B2170
    sb      $zero, 0x01D5(s0)          # 000001D5
    lbu     t9, 0x1D6C(a2)             # 00001D6C
lbl_808B209C:
    beql    t9, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lw      v1, 0x1D90(a2)             # 00001D90
    beql    v1, $zero, lbl_808B2174
    lw      $ra, 0x003C($sp)
    lhu     t2, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      a0, 0x0040($sp)
    bne     t2, $at, lbl_808B2170
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x50A8             # a1 = 060050A8
    jal     func_8008D360
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t3, 0x01D5(s0)             # 000001D5
    addiu   t5, t3, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t5, 0x01D5(s0)             # 000001D5
lbl_808B20E0:
    lw      t4, 0x1D90(a2)             # 00001D90
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lui     a1, 0x0600                 # a1 = 06000000
    lhu     t7, 0x0000(t4)             # 00000000
    addiu   a1, a1, 0x3284             # a1 = 06003284
    lw      a0, 0x0040($sp)
    bnel    t7, $at, lbl_808B2174
    lw      $ra, 0x003C($sp)
    jal     func_8008D21C
    lui     a2, 0xC120                 # a2 = C1200000
    lbu     t6, 0x01D5(s0)             # 000001D5
    addiu   t8, t6, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t8, 0x01D5(s0)             # 000001D5
lbl_808B2118:
    beq     v0, $zero, lbl_808B2170
    lw      a0, 0x0040($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3D84             # a1 = 06003D84
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t9, 0x01D5(s0)             # 000001D5
    addiu   t2, t9, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_808B2170
    sb      t2, 0x01D5(s0)             # 000001D5
    lw      t3, 0x1D90(a2)             # 00001D90
lbl_808B2144:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3428             # a1 = 06003428
    lhu     t5, 0x0000(t3)             # 00000000
    lw      a0, 0x0040($sp)
    bnel    t1, t5, lbl_808B2174
    lw      $ra, 0x003C($sp)
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lbu     t4, 0x01D5(s0)             # 000001D5
    addiu   t7, t4, 0x0001             # t7 = 00000001
    sb      t7, 0x01D5(s0)             # 000001D5
lbl_808B2170:
    lw      $ra, 0x003C($sp)
lbl_808B2174:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_808B2184:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lb      t6, 0x01CC(a0)             # 000001CC
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, a1, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    addu    t0, t9, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    lw      t9, 0x01D0(a0)             # 000001D0
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B21D8:
    sw      a3, 0x000C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t6, $at, lbl_808B2218
    lhu     v0, 0x1D74(a0)             # 00001D74
    lhu     t7, 0x1D74(a0)             # 00001D74
    slti    $at, t7, 0x0190
    bne     $at, $zero, lbl_808B223C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_808B223C
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xE1A8             # t8 = 0600E1A8
    beq     $zero, $zero, lbl_808B223C
    sw      t8, 0x0000(a2)             # 00000000
    lhu     v0, 0x1D74(a0)             # 00001D74
lbl_808B2218:
    slti    $at, v0, 0x05E6
    bne     $at, $zero, lbl_808B223C
    slti    $at, v0, 0x0673
    beq     $at, $zero, lbl_808B223C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_808B223C
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0xE1A8             # t9 = 0600E1A8
    sw      t9, 0x0000(a2)             # 00000000
lbl_808B223C:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_808B2248:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a1, $at, lbl_808B22FC
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBE90             # a1 = 0600BE90
    sll     t2, a1,  4
    srl     t3, t2, 28
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a2)             # 000002D0
    sll     t4, t3,  2
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t1, 0x0000(v1)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
lbl_808B22FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B230C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_808B233C
    lui     a0, %hi(var_808B3D60)      # a0 = 808B0000
    lui     a1, %hi(var_808B3FA8)      # a1 = 808B0000
    addiu   a1, a1, %lo(var_808B3FA8)  # a1 = 808B3FA8
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808B3D60)  # a0 = 808B3D60
lbl_808B233C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B234C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t2, 0x001C(s0)             # 0000001C
    lw      t6, 0x0034($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sra     t2, t2,  8
    sll     t2, t2, 16
    sra     t2, t2, 16
    beq     t2, t3, lbl_808B239C
    lw      v1, 0x0000(t6)             # 00000000
    beq     t2, $at, lbl_808B239C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     t2, $at, lbl_808B239C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t2, $at, lbl_808B25FC
lbl_808B239C:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x46D0(t7)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t8, 0x0034($sp)
    beq     t7, $at, lbl_808B23B8
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   a2, $zero, 0x0095          # a2 = 00000095
lbl_808B23B8:
    lhu     v0, 0x1D74(t8)             # 00001D74
    addiu   t9, a2, 0x0467             # t9 = 000004FC
    lui     t5, 0xDB06                 # t5 = DB060000
    slt     $at, t9, v0
    bne     $at, $zero, lbl_808B244C
    ori     t5, t5, 0x0020             # t5 = DB060020
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF178             # a1 = 0600F178
    sll     t6, a1,  4
    srl     t7, t6, 28
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v1)             # 000002C0
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    sll     t8, t7,  2
    addu    a2, t8, t9
    sw      t5, 0x0000(v0)             # 00000000
    lw      t4, 0x0000(a2)             # 00000095
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a3, a1, $at
    addu    t5, t4, a3
    addu    t6, t5, t1
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a2)             # 00000095
    addu    t4, t9, a3
    addu    t5, t4, t1
    sw      t5, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B265C
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B244C:
    addiu   t6, a2, 0x0468             # t6 = 000004FD
    slt     $at, t6, v0
    bne     $at, $zero, lbl_808B24E0
    lui     t1, 0x8000                 # t1 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF378             # a1 = 0600F378
    sll     t9, a1,  4
    srl     t4, t9, 28
    lui     t8, 0xDB06                 # t8 = DB060000
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t5, t4,  2
    addu    a2, t5, t6
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a2)             # 00000095
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a3, a1, $at
    addu    t8, t7, a3
    addu    t9, t8, t1
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a2)             # 00000095
    addu    t7, t6, a3
    addu    t8, t7, t1
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B265C
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B24E0:
    addiu   t9, a2, 0x0469             # t9 = 000004FE
    slt     $at, t9, v0
    bne     $at, $zero, lbl_808B2574
    lui     t1, 0x8000                 # t1 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF578             # a1 = 0600F578
    sll     t6, a1,  4
    srl     t7, t6, 28
    lui     t5, 0xDB06                 # t5 = DB060000
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v1)             # 000002C0
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    ori     t5, t5, 0x0020             # t5 = DB060020
    sll     t8, t7,  2
    addu    a2, t8, t9
    sw      t5, 0x0000(v0)             # 00000000
    lw      t4, 0x0000(a2)             # 00000095
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a3, a1, $at
    addu    t5, t4, a3
    addu    t6, t5, t1
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a2)             # 00000095
    addu    t4, t9, a3
    addu    t5, t4, t1
    sw      t5, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B265C
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B2574:
    lui     t1, 0x8000                 # t1 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF778             # a1 = 0600F778
    sll     t8, a1,  4
    srl     t9, t8, 28
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t7, t7, 0x0020             # t7 = DB060020
    sll     t4, t9,  2
    addu    a2, t4, t5
    sw      t7, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a2)             # 00000095
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a3, a1, $at
    addu    t7, t6, a3
    addu    t8, t7, t1
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0024             # t4 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t5, 0x0000(a2)             # 00000095
    addu    t6, t5, a3
    addu    t7, t6, t1
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B265C
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B25FC:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     t2, $at, lbl_808B2658
    lui     t1, 0x8000                 # t1 = 80000000
    lw      a0, 0x02D0(v1)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA4E0             # a1 = 0600A4E0
    sll     t4, a1,  4
    srl     t5, t4, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t6, t5,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t6
    sw      t9, 0x0000(a0)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a1, $at
    addu    t9, t7, t8
    addu    t4, t9, t1
    sw      t4, 0x0004(a0)             # 00000004
lbl_808B2658:
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B265C:
    bne     t2, $at, lbl_808B2694
    nop
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    lui     t5, %hi(func_808B2248)     # t5 = 808B0000
    addiu   t5, t5, %lo(func_808B2248) # t5 = 808B2248
    sw      t5, 0x0014($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0034($sp)
    beq     $zero, $zero, lbl_808B276C
    lw      $ra, 0x002C($sp)
lbl_808B2694:
    bne     t2, t3, lbl_808B26DC
    lw      a0, 0x0034($sp)
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    lui     t6, %hi(func_808B21D8)     # t6 = 808B0000
    lui     t7, %hi(func_808B230C)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B230C) # t7 = 808B230C
    addiu   t6, t6, %lo(func_808B21D8) # t6 = 808B21D8
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_80089D8C
    sw      s0, 0x0018($sp)
    lw      a0, 0x0034($sp)
    jal     func_808B39A0
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808B276C
    lw      $ra, 0x002C($sp)
lbl_808B26DC:
    beq     t2, t3, lbl_808B26FC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     t2, $at, lbl_808B26FC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     t2, $at, lbl_808B26FC
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t2, $at, lbl_808B2750
    lw      a0, 0x0034($sp)
lbl_808B26FC:
    lw      t8, 0x0034($sp)
    lbu     t9, 0x1D6C(t8)             # 00001D6C
    beql    t9, $zero, lbl_808B276C
    lw      $ra, 0x002C($sp)
    lw      t4, 0x1D90(t8)             # 00001D90
    lui     t5, %hi(func_808B230C)     # t5 = 808B0000
    addiu   t5, t5, %lo(func_808B230C) # t5 = 808B230C
    beq     t4, $zero, lbl_808B2768
    or      a0, t8, $zero              # a0 = 00000000
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    sw      s0, 0x0018($sp)
    sw      t5, 0x0014($sp)
    jal     func_80089D8C
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0034($sp)
    jal     func_808B39A0
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808B276C
    lw      $ra, 0x002C($sp)
lbl_808B2750:
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
lbl_808B2768:
    lw      $ra, 0x002C($sp)
lbl_808B276C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B277C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a2, a0, 0x013C             # a2 = 0000013C
    jal     func_8008E1D4
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B27A8:
    sw      a3, 0x000C($sp)
    lh      t6, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0051         # $at = 00000051
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $at, lbl_808B2820
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_808B27D0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xC410             # t7 = 0600C410
    sw      t7, 0x0000(a2)             # 00000000
lbl_808B27D0:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    a1, $at, lbl_808B27E4
    addiu   $at, $zero, 0x0008         # $at = 00000008
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_808B27E4:
    bnel    a1, $at, lbl_808B27F4
    addiu   $at, $zero, 0x0009         # $at = 00000009
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B27F4:
    bnel    a1, $at, lbl_808B2804
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_808B2804:
    bnel    a1, $at, lbl_808B2814
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_808B2814:
    bne     a1, $at, lbl_808B2820
    nop
    sw      $zero, 0x0000(a2)          # 00000000
lbl_808B2820:
    jr      $ra
    nop


func_808B2828:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lh      t6, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    bne     t6, $at, lbl_808B2868
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_808B2868
    lui     t8, 0xDE00                 # t8 = DE000000
    lw      v0, 0x0000(a0)             # 00000000
    lw      a1, 0x02C0(v0)             # 000002C0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0xDE08             # t9 = 0600DE08
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    sw      t9, 0x0004(a1)             # 00000004
    sw      t8, 0x0000(a1)             # 00000000
lbl_808B2868:
    jr      $ra
    nop


func_808B2870:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x0051         # $at = 00000051
    lui     t4, 0x8012                 # t4 = 80120000
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    bne     t7, $at, lbl_808B2E1C
    lw      v1, 0x0000(t6)             # 00000000
    lhu     v0, 0x1D74(t6)             # 00001D74
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    slti    $at, v0, 0x0303
    beq     $at, $zero, lbl_808B2950
    lui     t3, 0x8000                 # t3 = 80000000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x42F0             # a1 = 060042F0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sll     t7, a1,  4
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    srl     t6, t7, 28
    sll     t8, t6,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t4, t8
    lw      t7, 0x0000(t9)             # DB060020
    and     t6, a1, t5
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t8, t7, t6
    addu    t9, t8, t3
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   a3, a3, 0x3EF0             # a3 = 06003EF0
    sll     t8, a3,  4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    srl     t9, t8, 28
    sll     t7, t9,  2
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t4, t7
    lw      t8, 0x0000(t6)             # DB060024
    and     t9, a3, t5
    addu    t7, t8, t9
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B2950:
    slti    $at, v0, 0x0304
    beq     $at, $zero, lbl_808B29E0
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2EF0             # a1 = 06002EF0
    sll     t7, a1,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t7, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t8, t6,  2
    addu    a2, t4, t8
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a2)             # 00000000
    and     a3, a1, t5
    addu    t7, t9, a3
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a2)             # 00000000
    addu    t6, t7, a3
    addu    t8, t6, t3
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B29E0:
    slti    $at, v0, 0x0305
    beq     $at, $zero, lbl_808B2A70
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x32F0             # a0 = 060032F0
    sll     t6, a0,  4
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    srl     t8, t6, 28
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    sll     t9, t8,  2
    addu    a1, t4, t9
    sw      t7, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 06002EF0
    and     a2, a0, t5
    addu    t6, t7, a2
    addu    t8, t6, t3
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a1)             # 06002EF0
    addu    t8, t6, a2
    addu    t9, t8, t3
    sw      t9, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B2A70:
    slti    $at, v0, 0x0317
    beq     $at, $zero, lbl_808B2B00
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x36F0             # a1 = 060036F0
    sll     t8, a1,  4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    srl     t9, t8, 28
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t7, t9,  2
    addu    a2, t4, t7
    sw      t6, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a2)             # 00000000
    and     a3, a1, t5
    addu    t8, t6, a3
    addu    t9, t8, t3
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a2)             # 00000000
    addu    t9, t8, a3
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B2B00:
    slti    $at, v0, 0x0318
    beq     $at, $zero, lbl_808B2B90
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2EF0             # a1 = 06002EF0
    sll     t9, a1,  4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    srl     t7, t9, 28
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t6, t7,  2
    addu    a2, t4, t6
    sw      t8, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a2)             # 00000000
    and     a3, a1, t5
    addu    t9, t8, a3
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a2)             # 00000000
    addu    t7, t9, a3
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B2B90:
    slti    $at, v0, 0x0319
    beq     $at, $zero, lbl_808B2C20
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x32F0             # a0 = 060032F0
    sll     t7, a0,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t7, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t8, t6,  2
    addu    a1, t4, t8
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a1)             # 06002EF0
    and     a2, a0, t5
    addu    t7, t9, a2
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 06002EF0
    addu    t6, t7, a2
    addu    t8, t6, t3
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2CBC
    nop
lbl_808B2C20:
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x42F0             # a1 = 060042F0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sll     t6, a1,  4
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    srl     t8, t6, 28
    sll     t9, t8,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t9
    lw      t6, 0x0000(t7)             # DB060020
    and     t8, a1, t5
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t9, t6, t8
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   a3, a3, 0x3EF0             # a3 = 06003EF0
    sll     t9, a3,  4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    srl     t7, t9, 28
    sll     t6, t7,  2
    sw      t8, 0x0000(v0)             # 00000000
    addu    t8, t4, t6
    lw      t9, 0x0000(t8)             # DB060024
    and     t7, a3, t5
    addu    t6, t9, t7
    addu    t8, t6, t3
    sw      t8, 0x0004(v0)             # 00000004
lbl_808B2CBC:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x46D0(t9)            # 8011B930
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t9, $at, lbl_808B2D20
    lw      t8, 0x002C($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x52F0             # a1 = 060052F0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sll     t8, a1,  4
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    srl     t9, t8, 28
    sll     t7, t9,  2
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t4, t7
    lw      t8, 0x0000(t6)             # DB060028
    and     t9, a1, t5
    addu    t7, t8, t9
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2ED8
    lw      t7, 0x0028($sp)
    lw      t8, 0x002C($sp)
lbl_808B2D20:
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     a3, 0x0600                 # a3 = 06000000
    lhu     v0, 0x1D74(t8)             # DB061D98
    addiu   a3, a3, 0x4EF0             # a3 = 06004EF0
    ori     t7, t7, 0x0028             # t7 = DB060028
    slti    $at, v0, 0x02F6
    beql    $at, $zero, lbl_808B2D80
    slti    $at, v0, 0x0350
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t6, a3,  4
    srl     t8, t6, 28
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sll     t9, t8,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t9
    lw      t6, 0x0000(t7)             # DB060028
    and     t8, a3, t5
    addu    t9, t6, t8
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2ED8
    lw      t7, 0x0028($sp)
    slti    $at, v0, 0x0350
lbl_808B2D80:
    beq     $at, $zero, lbl_808B2DD4
    lui     t7, 0xDB06                 # t7 = DB060000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x52F0             # a1 = 060052F0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sll     t9, a1,  4
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0028             # t8 = DB060028
    srl     t7, t9, 28
    sll     t6, t7,  2
    sw      t8, 0x0000(v0)             # 00000000
    addu    t8, t4, t6
    lw      t9, 0x0000(t8)             # DB060028
    and     t7, a1, t5
    addu    t6, t9, t7
    addu    t8, t6, t3
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2ED8
    lw      t7, 0x0028($sp)
lbl_808B2DD4:
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x4EF0             # a3 = 06004EF0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sll     t6, a3,  4
    srl     t8, t6, 28
    ori     t7, t7, 0x0028             # t7 = DB060028
    sll     t9, t8,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t9
    lw      t6, 0x0000(t7)             # DB060028
    and     t8, a3, t5
    addu    t9, t6, t8
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808B2ED8
    lw      t7, 0x0028($sp)
lbl_808B2E1C:
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x32F0             # a0 = 060032F0
    sll     t9, a0,  4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    srl     t7, t9, 28
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t6, t7,  2
    addu    a1, t4, t6
    sw      t8, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a1)             # 060052F0
    and     a2, a0, t5
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t9, t8, a2
    addu    t7, t9, t3
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a1)             # 060052F0
    addiu   a3, a3, 0x4EF0             # a3 = 06004EF0
    addu    t7, t9, a2
    addu    t6, t7, t3
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    sll     t7, a3,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t7, 28
    ori     t9, t9, 0x0028             # t9 = DB060028
    sll     t8, t6,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t4, t8
    lw      t7, 0x0000(t9)             # DB060028
    and     t6, a3, t5
    addu    t8, t7, t6
    addu    t9, t8, t3
    sw      t9, 0x0004(v0)             # 00000004
    lw      t7, 0x0028($sp)
lbl_808B2ED8:
    lui     t6, %hi(func_808B27A8)     # t6 = 808B0000
    lui     t8, %hi(func_808B2828)     # t8 = 808B0000
    lw      a1, 0x018C(t7)             # DB0601B4
    lw      a2, 0x01A8(t7)             # DB0601D0
    lbu     a3, 0x018A(t7)             # DB0601B2
    addiu   t8, t8, %lo(func_808B2828) # t8 = 808B2828
    addiu   t6, t6, %lo(func_808B27A8) # t6 = 808B27A8
    sw      t6, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      t7, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B2F18:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_808B2F38
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xD0D8             # t6 = 0600D0D8
    sw      t6, 0x0000(a2)             # 00000000
lbl_808B2F38:
    jr      $ra
    nop


func_808B2F40:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     t5, 0x8000                 # t5 = 80000000
    lw      t6, 0x002C($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    lw      v1, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x7210             # a3 = 06007210
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sll     t9, a3,  4
    sw      t8, 0x0000(v0)             # 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    srl     t6, t9, 28
    sll     t7, t6,  2
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    addu    t0, t7, t8
    lw      t9, 0x0000(t0)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, a3, $at
    addu    t6, t9, t1
    addu    t7, t6, t5
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(t0)             # 00000000
    addu    t7, t6, t1
    addu    t8, t7, t5
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    addiu   t6, t6, 0x8520             # t6 = 800E8520
    ori     t9, t9, 0x0030             # t9 = DB060030
    sw      t9, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x0028($sp)
    lui     t8, %hi(func_808B2F18)     # t8 = 808B0000
    addiu   t8, t8, %lo(func_808B2F18) # t8 = 808B2F18
    lw      a1, 0x018C(t7)             # 0000028B
    lw      a2, 0x01A8(t7)             # 000002A7
    lbu     a3, 0x018A(t7)             # 00000289
    sw      $zero, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      t7, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B3054:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t6, 0x01D6(a2)             # 000001D6
    beql    t6, $zero, lbl_808B3138
    lw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a2)             # 0000001C
    sra     v0, v0,  8
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0003
    beql    $at, $zero, lbl_808B30E0
    lbu     t1, 0x1D6C(a1)             # 00001D6C
    lbu     t7, 0x1D6C(a1)             # 00001D6C
    beql    t7, $zero, lbl_808B3138
    lw      $ra, 0x0014($sp)
    lw      t8, 0x1D8C(a1)             # 00001D8C
    beql    t8, $zero, lbl_808B3138
    lw      $ra, 0x0014($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a2, 0x0018($sp)
    jal     func_8007E298
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lbu     t9, 0x01CD(a0)             # 000001CD
    sll     t0, t9,  2
    lui     t9, %hi(var_808B3D6C)      # t9 = 808B0000
    addu    t9, t9, t0
    lw      t9, %lo(var_808B3D6C)(t9)
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_808B3138
    lw      $ra, 0x0014($sp)
    lbu     t1, 0x1D6C(a1)             # 00001D6C
lbl_808B30E0:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     t1, $zero, lbl_808B30F8
    nop
    lw      t2, 0x1D90(a1)             # 00001D90
    bnel    t2, $zero, lbl_808B3104
    lw      a0, 0x0000(a1)             # 00000000
lbl_808B30F8:
    bnel    v0, $at, lbl_808B3138
    lw      $ra, 0x0014($sp)
    lw      a0, 0x0000(a1)             # 00000000
lbl_808B3104:
    sw      a2, 0x0018($sp)
    jal     func_8007E298
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(var_808B3D6C)      # t9 = 808B0000
    lw      a1, 0x001C($sp)
    lbu     t3, 0x01CD(a0)             # 000001CD
    sll     t4, t3,  2
    addu    t9, t9, t4
    lw      t9, %lo(var_808B3D6C)(t9)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
lbl_808B3138:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B3144:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v1, 0x001C(s1)             # 0000001C
    sra     v1, v1,  8
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0003
    beql    $at, $zero, lbl_808B32EC
    lbu     t3, 0x1D6C(s0)             # 00001D6C
    lbu     t6, 0x1D6C(s0)             # 00001D6C
    beql    t6, $zero, lbl_808B3504
    lw      $ra, 0x0024($sp)
    lw      v0, 0x1D8C(s0)             # 00001D8C
    beql    v0, $zero, lbl_808B3504
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x1D74(s0)             # 00001D74
    lhu     t8, 0x0004(v0)             # 00000004
    slt     $at, t7, t8
    beql    $at, $zero, lbl_808B3504
    lw      $ra, 0x0024($sp)
    bnel    v1, $zero, lbl_808B3200
    lw      t2, 0x000C(v0)             # 0000000C
    lui     v0, %hi(var_808B3C50)      # v0 = 808B0000
    addiu   v0, v0, %lo(var_808B3C50)  # v0 = 808B3C50
    lbu     t9, 0x0000(v0)             # 808B3C50
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t9, $zero, lbl_808B31EC
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sb      t0, 0x0000(v0)             # 808B3C50
    sw      t1, 0x0014($sp)
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_808B31EC:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2078          # a1 = 00002078
    lw      v0, 0x1D8C(s0)             # 00001D8C
    lw      t2, 0x000C(v0)             # 0000000C
lbl_808B3200:
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0044($sp)
    lw      t3, 0x1D8C(s0)             # 00001D8C
    lw      t4, 0x0010(t3)             # 00000010
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0048($sp)
    lw      t5, 0x1D8C(s0)             # 00001D8C
    lw      t6, 0x0014(t5)             # 00000014
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x004C($sp)
    lw      t7, 0x1D8C(s0)             # 00001D8C
    lw      t8, 0x0018(t7)             # 00000018
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0038($sp)
    lw      t9, 0x1D8C(s0)             # 00001D8C
    lw      t0, 0x001C(t9)             # 0000001C
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x003C($sp)
    lw      t1, 0x1D8C(s0)             # 00001D8C
    lw      t2, 0x0020(t1)             # 00000020
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0040($sp)
    lw      v0, 0x1D8C(s0)             # 00001D8C
    lhu     a2, 0x1D74(s0)             # 00001D74
    lhu     a0, 0x0004(v0)             # 00000004
    jal     func_8005C690
    lhu     a1, 0x0002(v0)             # 00000002
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x0044($sp)
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f6
    swc1    $f16, 0x0024(s1)           # 00000024
    lwc1    $f4, 0x0048($sp)
    lwc1    $f18, 0x003C($sp)
    sub.s   $f8, $f18, $f4
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0028(s1)            # 00000028
    lwc1    $f18, 0x004C($sp)
    lwc1    $f16, 0x0040($sp)
    sub.s   $f8, $f16, $f18
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f18
    beq     $zero, $zero, lbl_808B3500
    swc1    $f4, 0x002C(s1)            # 0000002C
    lbu     t3, 0x1D6C(s0)             # 00001D6C
lbl_808B32EC:
    beql    t3, $zero, lbl_808B34C4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      v0, 0x1D90(s0)             # 00001D90
    beql    v0, $zero, lbl_808B34C4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lhu     t4, 0x1D74(s0)             # 00001D74
    lhu     t5, 0x0004(v0)             # 00000004
    slt     $at, t4, t5
    beql    $at, $zero, lbl_808B34C4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f16, $f6
    swc1    $f16, 0x0044($sp)
    lw      t7, 0x1D90(s0)             # 00001D90
    lw      t8, 0x0010(t7)             # 00000010
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0048($sp)
    lw      t9, 0x1D90(s0)             # 00001D90
    lw      t0, 0x0014(t9)             # 00000014
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x004C($sp)
    lw      t1, 0x1D90(s0)             # 00001D90
    lw      t2, 0x0018(t1)             # 00000018
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f16, $f6
    swc1    $f16, 0x0038($sp)
    lw      t3, 0x1D90(s0)             # 00001D90
    lw      t4, 0x001C(t3)             # 0000001C
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x003C($sp)
    lw      t5, 0x1D90(s0)             # 00001D90
    lw      t6, 0x0020(t5)             # 00000020
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0040($sp)
    lw      v0, 0x1D90(s0)             # 00001D90
    lhu     a2, 0x1D74(s0)             # 00001D74
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    jal     func_8005C690
    sh      v1, 0x0032($sp)
    lwc1    $f6, 0x0038($sp)
    lwc1    $f16, 0x0044($sp)
    lh      v1, 0x0032($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    sub.s   $f8, $f6, $f16
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f6, 0x0048($sp)
    lwc1    $f4, 0x003C($sp)
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f6
    swc1    $f16, 0x0028(s1)           # 00000028
    lwc1    $f4, 0x004C($sp)
    lwc1    $f18, 0x0040($sp)
    sub.s   $f8, $f18, $f4
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x002C(s1)            # 0000002C
    lw      t7, 0x1D90(s0)             # 00001D90
    lhu     t8, 0x0000(t7)             # 00000000
    bnel    t8, $at, lbl_808B3470
    addiu   $at, $zero, 0x0009         # $at = 00000009
    jal     func_80063F00
    sh      v1, 0x0032($sp)
    sll     a1, v0, 16
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      v0, 0x0030($sp)
    sw      t9, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s1, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)
    addiu   a0, s1, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0030($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      v1, 0x0032($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_808B3470:
    bnel    v1, $at, lbl_808B34C4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t1, 0x1D90(s0)             # 00001D90
    lhu     t2, 0x0006(t1)             # 00000006
    sh      t2, 0x0030(s1)             # 00000030
    lw      t3, 0x1D90(s0)             # 00001D90
    lhu     t4, 0x0008(t3)             # 00000008
    sh      t4, 0x0032(s1)             # 00000032
    lw      t5, 0x1D90(s0)             # 00001D90
    lhu     t6, 0x000A(t5)             # 0000000A
    sh      t6, 0x0034(s1)             # 00000034
    lw      t7, 0x1D90(s0)             # 00001D90
    lhu     t8, 0x0006(t7)             # 00000006
    sh      t8, 0x00B4(s1)             # 000000B4
    lw      t9, 0x1D90(s0)             # 00001D90
    lhu     t0, 0x0008(t9)             # 00000008
    sh      t0, 0x00B6(s1)             # 000000B6
    lw      t1, 0x1D90(s0)             # 00001D90
    lhu     t2, 0x000A(t1)             # 0000000A
    sh      t2, 0x00B8(s1)             # 000000B8
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_808B34C4:
    bne     v1, $at, lbl_808B3500
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x20B3          # a0 = 000020B3
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808B365C
    or      a1, s0, $zero              # a1 = 00000000
lbl_808B3500:
    lw      $ra, 0x0024($sp)
lbl_808B3504:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808B3514:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    andi    t6, a2, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_808B35C8
    lui     $at, 0xC2C8                # $at = C2C80000
    sll     t8, a2,  2
    lui     $at, 0x42C8                # $at = 42C80000
    subu    t8, t8, a2
    mtc1    $at, $f0                   # $f0 = 100.00
    lw      t7, 0x0020($sp)
    sll     t8, t8,  2
    lui     $at, 0xC3D2                # $at = C3D20000
    addu    t8, t8, a2
    mtc1    $at, $f2                   # $f2 = -420.00
    sll     t8, t8,  2
    lui     $at, 0x43C8                # $at = 43C80000
    addu    v0, t7, t8
    mtc1    $at, $f4                   # $f4 = 400.00
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f6                   # $f6 = -400.00
    swc1    $f0, 0x01D8(v0)            # 000001D8
    swc1    $f0, 0x01E4(v0)            # 000001E4
    swc1    $f2, 0x01DC(v0)            # 000001DC
    swc1    $f2, 0x01E8(v0)            # 000001E8
    swc1    $f4, 0x01E0(v0)            # 000001E0
    swc1    $f6, 0x01EC(v0)            # 000001EC
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0018($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    mul.s   $f10, $f0, $f8
    lui     $at, %hi(var_808B3DB0)     # $at = 808B0000
    lwc1    $f4, %lo(var_808B3DB0)($at)
    lw      v0, 0x0018($sp)
    add.s   $f18, $f10, $f16
    mul.s   $f6, $f18, $f4
    beq     $zero, $zero, lbl_808B364C
    swc1    $f6, 0x0200(v0)            # 00000200
lbl_808B35C8:
    sll     t0, a2,  2
    subu    t0, t0, a2
    mtc1    $at, $f0                   # $f0 = 0.00
    lw      t9, 0x0020($sp)
    sll     t0, t0,  2
    lui     $at, 0xC3D2                # $at = C3D20000
    addu    t0, t0, a2
    mtc1    $at, $f2                   # $f2 = -420.00
    sll     t0, t0,  2
    lui     $at, 0x43C8                # $at = 43C80000
    addu    v0, t9, t0
    mtc1    $at, $f8                   # $f8 = 400.00
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f10                  # $f10 = -400.00
    swc1    $f0, 0x01D8(v0)            # 000001D8
    swc1    $f0, 0x01E4(v0)            # 000001E4
    swc1    $f2, 0x01DC(v0)            # 000001DC
    swc1    $f2, 0x01E8(v0)            # 000001E8
    swc1    $f8, 0x01E0(v0)            # 000001E0
    swc1    $f10, 0x01EC(v0)           # 000001EC
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0018($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    mul.s   $f18, $f0, $f16
    lui     $at, %hi(var_808B3DB4)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B3DB4)($at)
    lw      v0, 0x0018($sp)
    add.s   $f6, $f18, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0200(v0)           # 00000200
lbl_808B364C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B365C:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s8, 0x0078($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s4, 0x0068($sp)
    sw      s1, 0x005C($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lui     $at, %hi(var_808B3DB8)     # $at = 808B0000
    lwc1    $f26, %lo(var_808B3DB8)($at)
    lui     $at, %hi(var_808B3DBC)     # $at = 808B0000
    lwc1    $f22, %lo(var_808B3DBC)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s7, 0x0100                 # s7 = 01000000
    lui     s8, 0x0405                 # s8 = 04050000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f24                # $f24 = 0.00
    lw      s1, 0x0000(s3)             # 00000000
    addiu   s8, s8, 0x2A10             # s8 = 04052A10
    addiu   s7, s7, 0x0000             # s7 = 01000000
    or      s6, $zero, $zero           # s6 = 00000000
    sll     t6, s6,  2
lbl_808B36D8:
    subu    t6, t6, s6
    sll     t6, t6,  2
    addu    t6, t6, s6
    sll     t6, t6,  2
    addu    s0, s2, t6
    lbu     v0, 0x0208(s0)             # 00000208
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808B3720
    sll     a2, s6, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808B3754
    addiu   a0, s0, 0x0204             # a0 = 00000204
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808B37D4
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808B37FC
    lw      a0, 0x0000(s3)             # 00000000
lbl_808B3720:
    jal     func_808B3514
    sra     a2, a2, 16
    sra     t7, s6,  1
    mtc1    t7, $f4                    # $f4 = 0.00
    lbu     t8, 0x0208(s0)             # 00000208
    swc1    $f22, 0x01FC(s0)           # 000001FC
    cvt.s.w $f6, $f4
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0208(s0)             # 00000208
    mul.s   $f8, $f6, $f26
    swc1    $f8, 0x0204(s0)            # 00000204
    beq     $zero, $zero, lbl_808B37FC
    lw      a0, 0x0000(s3)             # 00000000
lbl_808B3754:
    lwc1    $f0, 0x01FC(s0)            # 000001FC
    mfc1    a1, $f20
    mfc1    a2, $f20
    mfc1    a3, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lwc1    $f0, 0x01D8(s0)            # 000001D8
    lwc1    $f10, 0x01E4(s0)           # 000001E4
    lwc1    $f12, 0x0204(s0)           # 00000204
    lwc1    $f2, 0x01DC(s0)            # 000001DC
    sub.s   $f16, $f10, $f0
    lwc1    $f6, 0x01E8(s0)            # 000001E8
    c.le.s  $f20, $f12
    mul.s   $f18, $f12, $f16
    sub.s   $f8, $f6, $f2
    mul.s   $f10, $f12, $f8
    add.s   $f4, $f18, $f0
    lwc1    $f0, 0x01E0(s0)            # 000001E0
    lwc1    $f18, 0x01EC(s0)           # 000001EC
    swc1    $f4, 0x01F0(s0)            # 000001F0
    sub.s   $f4, $f18, $f0
    add.s   $f16, $f10, $f2
    mul.s   $f6, $f12, $f4
    swc1    $f16, 0x01F4(s0)           # 000001F4
    add.s   $f8, $f6, $f0
    bc1f    lbl_808B37CC
    swc1    $f8, 0x01F8(s0)            # 000001F8
    lbu     t0, 0x0208(s0)             # 00000208
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0208(s0)             # 00000208
lbl_808B37CC:
    beq     $zero, $zero, lbl_808B37FC
    lw      a0, 0x0000(s3)             # 00000000
lbl_808B37D4:
    sll     a2, s6, 16
    sra     a2, a2, 16
    jal     func_808B3514
    or      a1, s3, $zero              # a1 = 00000000
    lbu     t2, 0x0208(s0)             # 00000208
    swc1    $f24, 0x0204(s0)           # 00000204
    swc1    $f22, 0x01FC(s0)           # 000001FC
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x0208(s0)             # 00000208
    lw      a0, 0x0000(s3)             # 00000000
lbl_808B37FC:
    jal     func_8007E2C0
    nop
    lwc1    $f12, 0x01F0(s0)           # 000001F0
    lwc1    $f14, 0x01F4(s0)           # 000001F4
    lw      a2, 0x01F8(s0)             # 000001F8
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0200(s0)           # 00000200
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s4, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, s4, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s4)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t0, 0x009C(s3)             # 0000009C
    sll     t9, s6,  2
    addu    t9, t9, s6
    sll     t1, t0,  2
    addu    t1, t1, t0
    sll     t1, t1,  2
    sll     t9, t9,  1
    subu    t2, t9, t1
    andi    t3, t2, 0x01FF             # t3 = 00000000
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0024($sp)
    sw      t5, 0x0028($sp)
    sw      t3, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    addiu   t8, $zero, 0xAAFF          # t8 = FFFFAAFF
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFF32                 # t1 = FF320000
    ori     t1, t1, 0x00FF             # t1 = FF3200FF
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t1, 0x0004(s0)             # 00000004
    lw      s5, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s5, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s5)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s5)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0001             # t5 = DA380001
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    sll     s6, s6, 16
    sra     s6, s6, 16
    slti    $at, s6, 0x0014
    bnel    $at, $zero, lbl_808B36D8
    sll     t6, s6,  2
    lw      $ra, 0x007C($sp)
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
    lw      s7, 0x0074($sp)
    lw      s8, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_808B39A0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     s1, 0x8012                 # s1 = 80120000
    sra     t7, t6,  8
    bne     t7, $at, lbl_808B3C30
    addiu   s1, s1, 0xBA00             # s1 = 8011BA00
    lw      t8, 0x0000(s1)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t9, 0x1340(t8)             # 00001340
    lui     s0, %hi(var_808B3FA0)      # s0 = 808B0000
    addiu   s0, s0, %lo(var_808B3FA0)  # s0 = 808B3FA0
    mtc1    t9, $f4                    # $f4 = 0.00
    lw      t0, 0x0000(s0)             # 808B3FA0
    lui     $at, 0x42C8                # $at = 42C80000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = 100.00
    lui     $at, %hi(var_808B3DC0)     # $at = 808B0000
    lui     a0, %hi(var_808B3D7C)      # a0 = 808B0000
    div.s   $f8, $f6, $f2
    swc1    $f8, 0x16A0(t0)            # 000016A0
    lw      t1, 0x0000(s1)             # 8011BA00
    lw      t4, 0x0000(s0)             # 808B3FA0
    lh      t2, 0x134C(t1)             # 0000134C
    addiu   t3, t2, 0x0019             # t3 = 00000019
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    div.s   $f4, $f16, $f18
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f4, 0x16A4(t4)            # 000016A4
    lw      t5, 0x0000(s1)             # 8011BA00
    lw      t8, 0x0000(s0)             # 808B3FA0
    lh      t6, 0x1342(t5)             # 00001342
    addiu   t7, t6, 0xFFD3             # t7 = FFFFFFD3
    mtc1    t7, $f6                    # $f6 = NaN
    nop
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f2
    swc1    $f10, 0x16A8(t8)           # 000016A8
    lw      t9, 0x0000(s0)             # 808B3FA0
    lwc1    $f16, %lo(var_808B3DC0)($at)
    lui     $at, 0x4150                # $at = 41500000
    swc1    $f16, 0x169C(t9)           # 0000169C
    lw      t0, 0x0000(s0)             # 808B3FA0
    swc1    $f18, 0x16C0(t0)           # 000016C0
    lw      t1, 0x0000(s1)             # 8011BA00
    lw      t4, 0x0000(s0)             # 808B3FA0
    mtc1    $at, $f18                  # $f18 = 13.00
    lh      t2, 0x135A(t1)             # 0000135A
    addiu   t3, t2, 0xFFF6             # t3 = FFFFFFF6
    mtc1    t3, $f4                    # $f4 = NaN
    nop
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f2
    swc1    $f8, 0x16B8(t4)            # 000016B8
    lw      t5, 0x0000(s1)             # 8011BA00
    lh      a0, %lo(var_808B3D7C)(a0)
    lh      t6, 0x09F4(t5)             # 000009F4
    sw      a2, 0x0044($sp)
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    sub.s   $f4, $f16, $f18
    jal     func_800636C4              # sins?
    swc1    $f4, 0x0034($sp)
    lw      v0, 0x0000(s1)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t8, 0x09FC(v0)             # 000009FC
    lh      t7, 0x09F6(v0)             # 000009F6
    lui     $at, 0x4040                # $at = 40400000
    mtc1    t8, $f18                   # $f18 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 3.00
    cvt.s.w $f4, $f18
    lui     t0, %hi(var_808B3D7C)      # t0 = 808B0000
    lh      t0, %lo(var_808B3D7C)(t0)
    lw      a2, 0x0044($sp)
    lui     $at, %hi(var_808B3D7C)     # $at = 808B0000
    cvt.s.w $f8, $f6
    mul.s   $f6, $f4, $f0
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f16, $f8, $f10
    add.s   $f8, $f6, $f16
    swc1    $f8, 0x0038($sp)
    lh      t9, 0x09F8(v0)             # 000009F8
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    sub.s   $f4, $f18, $f2
    swc1    $f4, 0x003C($sp)
    lh      t1, 0x09FA(v0)             # 000009FA
    sll     t2, t1, 12
    addu    t3, t0, t2
    addiu   t4, t3, 0x2000             # t4 = 00002000
    sh      t4, %lo(var_808B3D7C)($at)
    lh      t5, 0x00B6(a2)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t5, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_808B3DC4)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B3DC4)($at)
    cvt.s.w $f16, $f6
    div.s   $f10, $f16, $f8
    mul.s   $f12, $f10, $f18
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    lui     v0, %hi(var_808B3FA8)      # v0 = 808B0000
    addiu   v0, v0, %lo(var_808B3FA8)  # v0 = 808B3FA8
    lwc1    $f4, 0x0000(v0)            # 808B3FA8
    lwc1    $f6, 0x0028($sp)
    lw      t6, 0x0000(s0)             # 808B3FA0
    lui     $at, 0x4150                # $at = 41500000
    add.s   $f16, $f4, $f6
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    swc1    $f16, 0x16C4(t6)           # 000016C4
    lwc1    $f10, 0x002C($sp)
    lwc1    $f8, 0x0004(v0)            # 808B3FAC
    lw      t7, 0x0000(s0)             # 808B3FA0
    add.s   $f18, $f8, $f10
    swc1    $f18, 0x16C8(t7)           # 000016C8
    lwc1    $f6, 0x0030($sp)
    lwc1    $f4, 0x0008(v0)            # 808B3FB0
    lw      t8, 0x0000(s0)             # 808B3FA0
    mtc1    $at, $f18                  # $f18 = 13.00
    add.s   $f16, $f4, $f6
    swc1    $f16, 0x16CC(t8)           # 000016CC
    lw      t9, 0x0000(s1)             # 8011BA00
    lh      t1, 0x09F4(t9)             # 000009F4
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    sub.s   $f4, $f10, $f18
    neg.s   $f6, $f4
    jal     func_800AB958
    swc1    $f6, 0x0034($sp)
    lui     v0, %hi(var_808B3FA8)      # v0 = 808B0000
    addiu   v0, v0, %lo(var_808B3FA8)  # v0 = 808B3FA8
    lwc1    $f16, 0x0000(v0)           # 808B3FA8
    lwc1    $f8, 0x0028($sp)
    lw      t0, 0x0000(s0)             # 808B3FA0
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x16D0(t0)           # 000016D0
    lwc1    $f4, 0x002C($sp)
    lwc1    $f18, 0x0004(v0)           # 808B3FAC
    lw      t2, 0x0000(s0)             # 808B3FA0
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x16D4(t2)            # 000016D4
    lwc1    $f8, 0x0030($sp)
    lwc1    $f16, 0x0008(v0)           # 808B3FB0
    lw      t3, 0x0000(s0)             # 808B3FA0
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x16D8(t3)           # 000016D8
lbl_808B3C30:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    nop
    nop
    nop

.section .data

var_808B3C50: .word 0x00000000
var_808B3C54: .word 0x002A0700, 0x00000010, 0x00010000, 0x000005E8
.word func_808B10FC
.word func_808B11D0
.word func_808B2184
.word func_808B3054
var_808B3C74: .word 0x30F8012C
var_808B3C78: .word \
0x00460046, 0x01000214, 0x01000000, 0x06006B2C, \
0x06007148, 0x00870047, 0x0100000A, 0x03000000, \
0x0600F788, 0x060029CC, 0x01910047, 0x0100000A, \
0x02000000, 0x0600E038, 0x06000450, 0x009B009B, \
0x01FA000A, 0x00000000, 0x060119E8, 0x06002928, \
0x002D002D, 0x01000214, 0x01000000, 0x06008668, \
0x06003858, 0x009B009B, 0x01FA000A, 0x00000000, \
0x060119E8, 0x060005B4, 0x002D002D, 0x01000214, \
0x01000000, 0x06008668, 0x06002650, 0x009B009B, \
0x01FA000A, 0x00000000, 0x060119E8, 0x06004260, \
0x009B009B, 0x01FA000A, 0x00000000, 0x060119E8, \
0x060050A8, 0x00E100E1, 0x01FA000A, 0x00000000, \
0x060100E8, 0x0600FF48
var_808B3D40: .word func_808B11FC
.word func_808B13D8
.word func_808B11FC
.word func_808B1348
var_808B3D50: .word 0x00000000, 0x8001EFF4, 0x8001F04C
var_808B3D5C: .word 0x00000000
var_808B3D60: .word 0x00000000, 0x00000000, 0x00000000
var_808B3D6C: .word func_808B234C
.word func_808B277C
.word func_808B2870
.word func_808B2F40
var_808B3D7C: .word 0x00000000

.section .rodata

var_808B3D80: .word 0x461C4000
var_808B3D84: .word 0x44994000
var_808B3D88: .word var_808B1AF0
.word var_808B1B18
.word var_808B1B40
.word var_808B1B6C
.word var_808B1B94
.word var_808B1BC0
.word var_808B1BEC
.word var_808B1C24
var_808B3DA8: .word 0x45228000
var_808B3DAC: .word 0x44FE6000
var_808B3DB0: .word 0x3A83126F
var_808B3DB4: .word 0x3A83126F
var_808B3DB8: .word 0x3DCCCCCD
var_808B3DBC: .word 0x3C23D70A
var_808B3DC0: .word 0xC61C4000
var_808B3DC4: .word 0x40490FDB, 0x00000000, 0x00000000

.bss

var_808B3FA0: .space 0x08
var_808B3FA8: .space 0x18
