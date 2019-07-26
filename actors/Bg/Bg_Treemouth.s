.section .text
func_808D5360:
    sw      a1, 0x015C(a0)             # 0000015C
    jr      $ra
    nop


func_808D536C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_808D67D0)      # a1 = 808D0000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_808D67D0)  # a1 = 808D67D0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0E94             # a0 = 06000E94
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4248                 # a1 = 42480000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      v0, 0x1360(v1)             # 8011B930
    slti    $at, v0, 0x0004
    beql    $at, $zero, lbl_808D542C
    lw      t7, 0x0004(v1)             # 8011A5D4
    lw      t6, 0x0004(v1)             # 8011A5D4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808D5724)     # a1 = 808D0000
    beql    t6, $zero, lbl_808D542C
    lw      t7, 0x0004(v1)             # 8011A5D4
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D5724) # a1 = 808D5724
    b       lbl_808D547C
    addiu   t8, $zero, 0x0905          # t8 = 00000905
    lw      t7, 0x0004(v1)             # 00000004
lbl_808D542C:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_808D5444
    lui     a1, %hi(func_808D59FC)     # a1 = 808D0000
    bnel    v0, $at, lbl_808D5460
    lui     $at, 0x3F80                # $at = 3F800000
lbl_808D5444:
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, a1, %lo(func_808D59FC) # a1 = 808D59FC
    jal     func_808D5360
    swc1    $f4, 0x0158(s0)            # 00000158
    b       lbl_808D547C
    addiu   t8, $zero, 0x0905          # t8 = 00000905
    lui     $at, 0x3F80                # $at = 3F800000
lbl_808D5460:
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     a1, %hi(func_808D5564)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D5564) # a1 = 808D5564
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D5360
    swc1    $f6, 0x0158(s0)            # 00000158
    addiu   t8, $zero, 0x0905          # t8 = 00000905
lbl_808D547C:
    sh      t8, 0x010E(s0)             # 0000010E
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D5494:
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


func_808D54C8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808D5558
    lw      $ra, 0x001C($sp)
    lw      v0, 0x1D8C(a1)             # 00001D8C
    beql    v0, $zero, lbl_808D5558
    lw      $ra, 0x001C($sp)
    lhu     v1, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0020($sp)
    bne     v1, $at, lbl_808D5510
    lui     a1, %hi(func_808D5678)     # a1 = 808D0000
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D5678) # a1 = 808D5678
    b       lbl_808D5558
    lw      $ra, 0x001C($sp)
lbl_808D5510:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_808D5554
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2866          # a0 = 00002866
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a1, %hi(func_808D5564)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D5564) # a1 = 808D5564
    jal     func_808D5360
    lw      a0, 0x0020($sp)
lbl_808D5554:
    lw      $ra, 0x001C($sp)
lbl_808D5558:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D5564:
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x002C($sp)
    lwc1    $f0, 0x0158(a0)            # 00000158
    lui     $at, %hi(var_808D6800)     # $at = 808D0000
    lui     t6, 0x8012                 # t6 = 80120000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808D55A4
    swc1    $f2, 0x0158(a0)            # 00000158
    lwc1    $f4, %lo(var_808D6800)($at)
    add.s   $f6, $f0, $f4
    b       lbl_808D55A4
    swc1    $f6, 0x0158(a0)            # 00000158
    swc1    $f2, 0x0158(a0)            # 00000158
lbl_808D55A4:
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t6, $at, lbl_808D566C
    lw      $ra, 0x002C($sp)
    lhu     t7, 0x1D74(a1)             # 00001D74
    slti    $at, t7, 0x02BD
    bnel    $at, $zero, lbl_808D566C
    lw      $ra, 0x002C($sp)
    lw      t8, 0x009C(a1)             # 0000009C
    andi    t9, t8, 0x0007             # t9 = 00000000
    bnel    t9, $zero, lbl_808D566C
    lw      $ra, 0x002C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0044($sp)
    lui     $at, %hi(var_808D6804)     # $at = 808D0000
    lwc1    $f8, %lo(var_808D6804)($at)
    lui     $at, %hi(var_808D6808)     # $at = 808D0000
    lwc1    $f16, %lo(var_808D6808)($at)
    mul.s   $f10, $f0, $f8
    lui     $at, %hi(var_808D680C)     # $at = 808D0000
    lwc1    $f4, %lo(var_808D680C)($at)
    swc1    $f4, 0x0038($sp)
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0034($sp)
    lui     $at, %hi(var_808D6810)     # $at = 808D0000
    lwc1    $f6, %lo(var_808D6810)($at)
    lui     $at, %hi(var_808D6814)     # $at = 808D0000
    lwc1    $f10, %lo(var_808D6814)($at)
    mul.s   $f8, $f0, $f6
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    add.s   $f16, $f8, $f10
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    swc1    $f16, 0x003C($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lw      a0, 0x0044($sp)
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    lw      $ra, 0x002C($sp)
lbl_808D566C:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808D5678:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_808D6818)     # $at = 808D0000
    lwc1    $f6, %lo(var_808D6818)($at)
    lwc1    $f4, 0x0158(a0)            # 00000158
    lui     $at, %hi(var_808D681C)     # $at = 808D0000
    lui     a1, %hi(func_808D56D0)     # a1 = 808D0000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0158(a0)            # 00000158
    lwc1    $f16, %lo(var_808D681C)($at)
    lwc1    $f10, 0x0158(a0)           # 00000158
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_808D56C4
    lw      $ra, 0x0014($sp)
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D56D0) # a1 = 808D56D0
    lw      $ra, 0x0014($sp)
lbl_808D56C4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D56D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_808D6820)     # $at = 808D0000
    lwc1    $f6, %lo(var_808D6820)($at)
    lwc1    $f4, 0x0158(a0)            # 00000158
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a1, %hi(func_808D54C8)     # a1 = 808D0000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0158(a0)            # 00000158
    lwc1    $f16, 0x0158(a0)           # 00000158
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_808D5718
    lw      $ra, 0x0014($sp)
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D54C8) # a1 = 808D54C8
    lw      $ra, 0x0014($sp)
lbl_808D5718:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D5724:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_800288B4
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    beq     v0, $zero, lbl_808D5754
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    lui     $at, 0x3F80                # $at = 3F800000
    bne     t6, $zero, lbl_808D5838
lbl_808D5754:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    beql    t7, $zero, lbl_808D5848
    lw      $ra, 0x001C($sp)
    jal     func_800288B4
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    beq     v0, $zero, lbl_808D57E4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x44CF                 # a1 = 44CF0000
    ori     a1, a1, 0x4000             # a1 = 44CF4000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021AD4
    addiu   a2, $zero, 0x7530          # a2 = 00007530
    beql    v0, $zero, lbl_808D5848
    lw      $ra, 0x001C($sp)
    lw      t8, 0x0004(s0)             # 00000004
    lbu     t0, 0x010C(s0)             # 0000010C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    ori     t9, t8, 0x0001             # t9 = 00000001
    beq     t0, $zero, lbl_808D5844
    sw      t9, 0x0004(s0)             # 00000004
    and     t2, t9, $at
    sw      t2, 0x0004(s0)             # 00000004
    lw      t4, 0x0024($sp)
    lui     t3, %hi(var_808D60C0)      # t3 = 808D0000
    addiu   t3, t3, %lo(var_808D60C0)  # t3 = 808D60C0
    lui     $at, 0x8012                # $at = 80120000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a1, %hi(func_808D5858)     # a1 = 808D0000
    sw      t3, 0x1D68(t4)             # 00001D68
    sb      t5, -0x461C($at)           # 8011B9E4
    addiu   a1, a1, %lo(func_808D5858) # a1 = 808D5858
    jal     func_808D5360
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808D5848
    lw      $ra, 0x001C($sp)
lbl_808D57E4:
    lui     a1, 0x44CF                 # a1 = 44CF0000
    ori     a1, a1, 0x4000             # a1 = 44CF4000
    jal     func_80021AD4
    addiu   a2, $zero, 0x4E20          # a2 = 00004E20
    beql    v0, $zero, lbl_808D5848
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    lw      t7, 0x0024($sp)
    lui     t6, %hi(var_808D5C40)      # t6 = 808D0000
    addiu   t6, t6, %lo(var_808D5C40)  # t6 = 808D5C40
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, %hi(func_808D5858)     # a1 = 808D0000
    sw      t6, 0x1D68(t7)             # 00001D68
    sb      t8, -0x461C($at)           # 8011B9E4
    addiu   a1, a1, %lo(func_808D5858) # a1 = 808D5858
    jal     func_808D5360
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808D5848
    lw      $ra, 0x001C($sp)
lbl_808D5838:
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_808D5844:
    lw      $ra, 0x001C($sp)
lbl_808D5848:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D5858:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x1D6C(a3)             # 00001D6C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      v1, 0x1C44(a3)             # 00001C44
    bne     t6, $at, lbl_808D5950
    lw      a0, 0x0020($sp)
    lui     a1, 0x43AF                 # a1 = 43AF0000
    addiu   a2, $zero, 0x7530          # a2 = 00007530
    sw      v1, 0x001C($sp)
    jal     func_80021AD4
    sw      a3, 0x0024($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_808D58C0
    lw      a3, 0x0024($sp)
    lui     $at, %hi(var_808D6824)     # $at = 808D0000
    lwc1    $f4, %lo(var_808D6824)($at)
    lui     $at, 0xC321                # $at = C3210000
    mtc1    $at, $f6                   # $f6 = -161.00
    lui     $at, %hi(var_808D6828)     # $at = 808D0000
    swc1    $f4, 0x0024(v1)            # 00000024
    swc1    $f6, 0x0028(v1)            # 00000028
    lwc1    $f8, %lo(var_808D6828)($at)
    swc1    $f8, 0x002C(v1)            # 0000002C
lbl_808D58C0:
    ori     v0, $zero, 0xFFFF          # v0 = 0000FFFF
    sh      $zero, 0x1D74(a3)          # 00001D74
    sh      v0, 0x1D7C(a3)             # 00001D7C
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43B2($at)           # 8011BC4E
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43B0($at)           # 8011BC50
    lui     $at, 0x8012                # $at = 80120000
    sh      v0, -0x43AE($at)           # 8011BC52
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     t8, 0x0001                 # t8 = 00010000
    sb      $zero, 0x1D7E(a3)          # 00001D7E
    sb      $zero, 0x1D7F(a3)          # 00001D7F
    sb      t7, 0x1D6C(a3)             # 00001D6C
    addu    t8, t8, a3
    lbu     t8, 0x04BD(t8)             # 000104BD
    lui     t0, %hi(var_808D65B0)      # t0 = 808D0000
    addiu   t0, t0, %lo(var_808D65B0)  # t0 = 808D65B0
    bne     t8, $zero, lbl_808D593C
    lui     a1, %hi(func_808D5724)     # a1 = 808D0000
    lui     t9, %hi(var_808D6340)      # t9 = 808D0000
    addiu   t9, t9, %lo(var_808D6340)  # t9 = 808D6340
    sw      t9, 0x1D68(a3)             # 00001D68
    jal     func_800288E0
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    lui     a1, %hi(func_808D5960)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D5960) # a1 = 808D5960
    jal     func_808D5360
    lw      a0, 0x0020($sp)
    b       lbl_808D5954
    lw      $ra, 0x0014($sp)
lbl_808D593C:
    sw      t0, 0x1D68(a3)             # 00001D68
    sh      $zero, 0x1D74(a3)          # 00001D74
    lw      a0, 0x0020($sp)
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D5724) # a1 = 00005724
lbl_808D5950:
    lw      $ra, 0x0014($sp)
lbl_808D5954:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D5960:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_808D59F0
    lw      $ra, 0x001C($sp)
    lw      v0, 0x1D8C(a1)             # 00001D8C
    beql    v0, $zero, lbl_808D59F0
    lw      $ra, 0x001C($sp)
    lhu     v1, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0020($sp)
    bne     v1, $at, lbl_808D59A8
    lui     a1, %hi(func_808D5678)     # a1 = 808D0000
    jal     func_808D5360
    addiu   a1, a1, %lo(func_808D5678) # a1 = 808D5678
    b       lbl_808D59F0
    lw      $ra, 0x001C($sp)
lbl_808D59A8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_808D59EC
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2866          # a0 = 00002866
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a1, %hi(func_808D5564)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D5564) # a1 = 808D5564
    jal     func_808D5360
    lw      a0, 0x0020($sp)
lbl_808D59EC:
    lw      $ra, 0x001C($sp)
lbl_808D59F0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D59FC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808D5A0C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x015C(a0)             # 0000015C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lui     $at, 0xC320                # $at = C3200000
    mtc1    $at, $f4                   # $f4 = -160.00
    lwc1    $f0, 0x0158(a0)            # 00000158
    lui     $at, %hi(var_808D682C)     # $at = 808D0000
    lwc1    $f8, %lo(var_808D682C)($at)
    mul.s   $f6, $f0, $f4
    lui     $at, %hi(var_808D6830)     # $at = 808D0000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0024(a0)           # 00000024
    lwc1    $f16, %lo(var_808D6830)($at)
    lui     $at, 0x4308                # $at = 43080000
    mtc1    $at, $f4                   # $f4 = 136.00
    mul.s   $f18, $f0, $f16
    lui     $at, 0x42B8                # $at = 42B80000
    mtc1    $at, $f8                   # $f8 = 92.00
    lui     $at, %hi(var_808D6834)     # $at = 808D0000
    mul.s   $f10, $f0, $f8
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0028(a0)            # 00000028
    lwc1    $f16, %lo(var_808D6834)($at)
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808D5A8C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    sh      a3, 0x002A($sp)
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      v0, 0x1360(v1)             # 8011B930
    lw      a2, 0x0024($sp)
    lhu     a3, 0x002A($sp)
    slti    $at, v0, 0x0004
    beq     $at, $zero, lbl_808D5AE8
    lw      t0, 0x0034($sp)
    lhu     t7, 0x0ED4(v1)             # 8011B4A4
    andi    t8, t7, 0x0080             # t8 = 00000000
    beql    t8, $zero, lbl_808D5AEC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a3, $zero, 0x0866          # a3 = 00000866
lbl_808D5AE8:
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_808D5AEC:
    bnel    v0, $at, lbl_808D5B0C
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, t0
    lh      a3, 0x1D30(a3)             # 00011D30
    addiu   a3, a3, 0x01F4             # a3 = 000101F4
    andi    a3, a3, 0xFFFF             # a3 = 000001F4
    lw      v0, 0x02C0(a2)             # 000002C0
lbl_808D5B0C:
    mtc1    a3, $f4                    # $f4 = 0.00
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v0)             # 00000000
    bgez    a3, lbl_808D5B38
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_808D5B38:
    lui     $at, %hi(var_808D6838)     # $at = 808D0000
    lwc1    $f10, %lo(var_808D6838)($at)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f6, $f10
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_808D5BB8
    mfc1    t3, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t3, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_808D5BAC
    nop
    mfc1    t3, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_808D5BC4
    or      t3, t3, $at                # t3 = 80000000
lbl_808D5BAC:
    b       lbl_808D5BC4
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f18
lbl_808D5BB8:
    nop
    bltz    t3, lbl_808D5BAC
    nop
lbl_808D5BC4:
    lui     $at, 0x8080                # $at = 80800000
    ori     $at, $at, 0x8000           # $at = 80808000
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    ctc1    t2, $f31
    or      t5, t4, $at                # t5 = 808080FF
    sw      t5, 0x0004(v0)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 8011A5D8
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 8011A5D0
    lw      a0, 0x0000(t0)             # 00000000
    sw      a2, 0x0024($sp)
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0024($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x09D0             # t1 = 060009D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop

.section .data

var_808D5C40: .word \
0x0000000C, 0x00000BB8, 0x00000015, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0x0000000F, 0xFFFFFFDE, 0x00000000, 0x0000000F, \
0xFFFFFFDE, 0x00000000, 0x00000000, 0x00000000, \
0x0000000A, 0x00000002, 0x00020000, 0x002154B2, \
0x00000000, 0x00000A36, 0x00000000, 0xFFFFFE3D, \
0x00000AF8, 0x00000000, 0xFFFFFDD1, 0x40BC1F08, \
0x00000000, 0xC0BC1F08, 0x00040021, 0x002A5945, \
0x00000000, 0x00000AF8, 0x00000000, 0xFFFFFDD1, \
0x00000B29, 0x00000000, 0xFFFFFDAE, 0x40AE38E4, \
0x00000000, 0xC0AE38E4, 0x00000001, 0x00010000, \
0x04430000, 0x00000000, 0x423CCCC1, 0x0AC1002E, \
0xFE9E59A8, 0x00000000, 0x423CCCC1, 0x0AC1002E, \
0xFE9E20B8, 0x00000000, 0x423CCCC1, 0x0AC1002E, \
0xFE9E0000, 0x00000000, 0x423CCCC1, 0x0AC1002E, \
0xFE9E6430, 0xFF000000, 0x423CCCC1, 0x0AC1002E, \
0xFE9E0000, 0x00000001, 0x0001003C, 0x04F70000, \
0x00000000, 0x423CCCC1, 0x0AC1002E, 0xFE9E20BA, \
0x00000000, 0x423CCCC1, 0x0AC1002E, 0xFE9E44B8, \
0x00000000, 0x423CCCC1, 0x0AC1002E, 0xFE9E8080, \
0x00000000, 0x423CCCC1, 0x0A910043, 0xFED22D9A, \
0x00000000, 0x423CCCC1, 0x0A24007F, 0xFF3D005E, \
0x00000000, 0x423CCCC1, 0x0A24007F, 0xFF3DFFFF, \
0x00000000, 0x423CCCC1, 0x0A24007F, 0xFF3D0000, \
0x00000000, 0x423CCCC1, 0x0A24007F, 0xFF3D5B80, \
0xFF000000, 0x423CCCC1, 0x0A24007F, 0xFF3D7805, \
0x00000002, 0x00010000, 0x04600000, 0x0000001E, \
0x423CCCC1, 0x0AE40017, 0xFE3B20BA, 0x0000001E, \
0x423CCCC1, 0x0AE30017, 0xFE3B44B8, 0x000003E8, \
0x423CCCC1, 0x0AE30017, 0xFE3B8080, 0x0000001E, \
0x423CCCC1, 0x0AE30017, 0xFE3B2D9A, 0xFF00001E, \
0x423CCCC1, 0x0AE30017, 0xFE3B005E, 0x00000002, \
0x0001003C, 0x05140000, 0x0000001E, 0x423CCCC1, \
0x0AE40017, 0xFE3B20BA, 0x0000001E, 0x423CCCC1, \
0x0AE30017, 0xFE3B44B8, 0x0000001E, 0x423CCCC1, \
0x0AE30017, 0xFE3B8080, 0x0000001E, 0x423CCCC1, \
0x0AD90048, 0xFE862D9A, 0x0000001E, 0x423CCCC1, \
0x0A71007F, 0xFEF5005E, 0x0000001E, 0x423CCCC1, \
0x0A71007F, 0xFEF5FFFF, 0x000003E8, 0x423CCCC1, \
0x0A71007F, 0xFEF50000, 0x0000001E, 0x423CCCC1, \
0x0A71007F, 0xFEF55B80, 0xFF00001E, 0x423CCCC1, \
0x0A71007F, 0xFEF57805, 0x00000013, 0x00000004, \
0xFFFF0000, 0x0028FFFF, 0xFFFFFFFF, 0x107D0028, \
0x003C0000, 0xFFFFFFFF, 0xFFFF003C, 0x00A0FFFF, \
0xFFFFFFFF, 0x101500A0, 0x00AA0000, 0xFFFFFFFF, \
0x00000003, 0x00000001, 0x000C00B4, 0x00C80000, \
0x00000000, 0x00000000, 0xFFFFFFF7, 0xFFFFFFDB, \
0x00000000, 0xFFFFFFF7, 0xFFFFFFDB, 0x00000000, \
0x00000000, 0x00000000, 0x0000002E, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFD7, 0xFFFFFFE4, 0x00000000, 0xFFFFFFD7, \
0xFFFFFFE4, 0x00000000, 0x00000000, 0x00000000, \
0x0000003E, 0x00000004, 0x00010000, 0x00010000, \
0x00000000, 0x00000A6C, 0x0000002E, 0xFFFFFE16, \
0x00000A6C, 0x0000002E, 0xFFFFFE16, 0x00000000, \
0x00000000, 0x00000000, 0x00040001, 0x00325479, \
0x00000000, 0x00000A6C, 0x0000002E, 0xFFFFFE16, \
0x00000B4A, 0x0000002B, 0xFFFFFD9C, 0x4090FAC7, \
0xBD7AC688, 0xC090FAC7, 0x00040032, 0x0064505C, \
0x00000000, 0x00000B4A, 0x0000002B, 0xFFFFFD9C, \
0x00000C25, 0x00000079, 0xFFFFFD3F, 0x408C28F6, \
0x3FC7AE14, 0xC08C28F6, 0x00010064, 0x08240000, \
0x00000000, 0x00000C25, 0x00000079, 0xFFFFFD3F, \
0x00000C25, 0x00000079, 0xFFFFFD3F, 0x00000000, \
0x00000000, 0x00000000, 0x00000056, 0x00000001, \
0x004C008C, 0x008D0000, 0x00000000, 0x00000000, \
0xFFFFFFBA, 0x00000094, 0x00000000, 0xFFFFFFBA, \
0x00000094, 0x00000000, 0x00000000, 0x00000000, \
0x0000007C, 0x00000001, 0x00040000, 0x00140000, \
0x00000000, 0xFFFFFFA2, 0x00000000, 0x00000027, \
0xFFFFFFA2, 0x00000000, 0x00000027, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_808D60C0: .word \
0x00000009, 0x00000BB8, 0x00000015, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0x0000000F, 0xFFFFFFDE, 0x00000000, 0x0000000F, \
0xFFFFFFDE, 0x00000000, 0x00000000, 0x00000000, \
0x00000003, 0x00000001, 0x000C005A, 0x00AC0000, \
0x00000000, 0x00000000, 0xFFFFFFE3, 0x00000012, \
0x00000000, 0xFFFFFFE3, 0x00000012, 0x00000000, \
0x00000000, 0x00000000, 0x0000002E, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFE5, 0x0000001A, 0x00000000, 0xFFFFFFE5, \
0x0000001A, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x00010000, 0x04430000, 0x00000000, \
0x42700000, 0x0E9CFF73, 0xFDEE7065, 0x00000000, \
0x4223FFED, 0x0E9CFF73, 0xFDEE6167, 0x00000000, \
0x4223FFED, 0x0E9CFF73, 0xFDEE6D5D, 0x00000000, \
0x4223FFED, 0x0E9CFF73, 0xFDEEF348, 0xFF000000, \
0x4223FFED, 0x0E9CFF73, 0xFDEE9D94, 0x00000005, \
0x0001003C, 0x047F0000, 0x00000000, 0x42700000, \
0xFFFC0005, 0x00317065, 0x00000000, 0x42700000, \
0xFFFC0005, 0x00316167, 0x00000000, 0x42700000, \
0xFFFC0005, 0x00316D5D, 0x00000000, 0x42700000, \
0xFFFC0005, 0x0031F348, 0xFF000000, 0x42700000, \
0xFFFC0005, 0x00319D94, 0x00000002, 0x00010000, \
0x04600000, 0x0000001E, 0x4223FFED, 0x0EC1FFA7, \
0xFDA37065, 0x0000001E, 0x4223FFED, 0x0EC1FFA7, \
0xFDA36167, 0x000003E8, 0x4223FFED, 0x0EC0FFA7, \
0xFDA36D5D, 0x0000001E, 0x4223FFED, 0x0EC0FFA7, \
0xFDA3F348, 0xFF00001E, 0x4223FFED, 0x0EC0FFA7, \
0xFDA49D94, 0x00000006, 0x0001003C, 0x049C0000, \
0x0000001E, 0x42700000, 0x00010023, 0xFFDC7065, \
0x0000001E, 0x42700000, 0x00010023, 0xFFDC6167, \
0x000003E8, 0x42700000, 0x00010023, 0xFFDC6D5D, \
0x0000001E, 0x42700000, 0x00010023, 0xFFDCF348, \
0xFF00001E, 0x42700000, 0x00010023, 0xFFDC9D94, \
0x00000013, 0x00000002, 0xFFFF0000, 0x0014FFFF, \
0xFFFFFFFF, 0x10160014, 0x00500000, 0xFFFFFFFF, \
0x00000056, 0x00000001, 0x004C0000, 0x00010000, \
0x00000000, 0x00000000, 0xFFFFFFAC, 0x0000007E, \
0x00000000, 0xFFFFFFAC, 0x0000007E, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_808D6340: .word \
0x00000008, 0x00000BB8, 0x00000015, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0x0000000F, 0xFFFFFFDE, 0x00000000, 0x0000000F, \
0xFFFFFFDE, 0x00000000, 0x00000000, 0x00000000, \
0x0000002E, 0x00000002, 0x00010000, 0x00140000, \
0x00000000, 0x0000002A, 0x00000000, 0x0000004D, \
0x0000002A, 0x00000000, 0x0000004D, 0x00000000, \
0x00000000, 0x00000000, 0x00030014, 0x01650000, \
0x00000000, 0x0000002A, 0x00000000, 0x0000004D, \
0x0000002A, 0x00000000, 0x0000004D, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x047F0000, 0x00000000, 0x42700000, 0x0E9CFF73, \
0xFDEE00EA, 0x00000000, 0x4223FFED, 0x0E9CFF73, \
0xFDEE00FB, 0x00000000, 0x4223FFED, 0x0E9CFF73, \
0xFDEE010C, 0x00000000, 0x4223FFED, 0x0E9CFF73, \
0xFDEE0198, 0x00000000, 0x4223FFED, 0x0E9CFF73, \
0xFDEE019A, 0x00000000, 0x4223FFED, 0x0E9CFF73, \
0xFDEE01AB, 0xFF000000, 0x4223FFED, 0x0E9BFF73, \
0xFDEE01BC, 0x00000002, 0x00010000, 0x049C0000, \
0x0000001E, 0x4223FFED, 0x0EC1FFA7, 0xFDA300EA, \
0x0000001E, 0x4223FFED, 0x0EC1FFA7, 0xFDA300FB, \
0x0000001E, 0x4223FFED, 0x0EC1FFA7, 0xFDA3010C, \
0x0000001E, 0x4223FFED, 0x0EB3FF82, 0xFD930198, \
0x000003E8, 0x4223FFED, 0x0EB3FF82, 0xFD93019A, \
0x0000001E, 0x4223FFED, 0x0EB3FF82, 0xFD9301AB, \
0xFF00001E, 0x4223FFED, 0x0EB5FF8A, 0xFD9701BC, \
0x00000013, 0x00000002, 0xFFFF0000, 0x0014FFFF, \
0xFFFFFFFF, 0x10170014, 0x003C0000, 0xFFFFFFFF, \
0x00000003, 0x00000001, 0x000C0064, 0x00960000, \
0x00000000, 0x00000000, 0xFFFFFFF5, 0x00000010, \
0x00000000, 0xFFFFFFF5, 0x00000010, 0x00000000, \
0x00000000, 0x00000000, 0x00000057, 0x00000001, \
0x004C005A, 0x005B0000, 0x00000000, 0xFFFFFFAC, \
0x00000000, 0x00000034, 0xFFFFFFAC, 0x00000000, \
0x00000034, 0x00000000, 0x00000000, 0x00000000, \
0x00000056, 0x00000001, 0x003D0063, 0x00640000, \
0x00000000, 0xFFFFFFD0, 0x00000000, 0x00000041, \
0xFFFFFFD0, 0x00000000, 0x00000041, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_808D65B0: .word \
0x00000008, 0x00000BB8, 0x00000015, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0x0000000F, 0xFFFFFFDE, 0x00000000, 0x0000000F, \
0xFFFFFFDE, 0x00000000, 0x00000000, 0x00000000, \
0x0000002E, 0x00000001, 0x00010000, 0x00770000, \
0x00000000, 0x0000002A, 0x00000000, 0x0000004D, \
0x0000002A, 0x00000000, 0x0000004D, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x04430000, 0x00000000, 0x4297331E, 0x0E840316, \
0xFB6D54EC, 0x00000000, 0x4297331E, 0x0E840316, \
0xFB6D555C, 0x00000000, 0x4297331E, 0x0E840316, \
0xFB6D55CC, 0x00000000, 0x4297331E, 0x0E840316, \
0xFB6D563C, 0xFF000000, 0x4297331E, 0x0E840316, \
0xFB6D56AC, 0x00000002, 0x00010000, 0x04600000, \
0x0000001E, 0x4297331E, 0x0EB902CE, 0xFB5E54EC, \
0x0000001E, 0x4297331E, 0x0EB902CE, 0xFB5E555C, \
0x000003E8, 0x4297331E, 0x0EB902CE, 0xFB5E55CC, \
0x0000001E, 0x4297331E, 0x0EB902CE, 0xFB5E563C, \
0xFF00001E, 0x4297331E, 0x0EB902CE, 0xFB5E56AC, \
0x00000013, 0x00000002, 0xFFFF0000, 0x0014FFFF, \
0xFFFFFFFF, 0x10180014, 0x003C0000, 0xFFFFFFFF, \
0x00000003, 0x00000001, 0x000C0050, 0x006E0000, \
0x00000000, 0x00000000, 0xFFFFFFEA, 0x00000006, \
0x00000000, 0xFFFFFFEA, 0x00000006, 0x00000000, \
0x00000000, 0x00000000, 0x00000057, 0x00000001, \
0x004C0046, 0x00470000, 0x00000000, 0xFFFFFFB7, \
0x00000000, 0x00000044, 0xFFFFFFB7, 0x00000000, \
0x00000044, 0x00000000, 0x00000000, 0x00000000, \
0x00000056, 0x00000001, 0x003D004F, 0x00500000, \
0x00000000, 0xFFFFFFE8, 0x00000000, 0x0000003A, \
0xFFFFFFE8, 0x00000000, 0x0000003A, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_808D67B0: .word 0x003E0100, 0x00000030, 0x002A0000, 0x00000160
.word func_808D536C
.word func_808D5494
.word func_808D5A0C
.word func_808D5A8C
var_808D67D0: .word \
0x801F0005, 0xC0500001, 0xB0F41F40, 0xB0F8012C, \
0x30FC012C, 0xC52BA000, 0x44084000, 0x4592B000, \
0xC525E000, 0x43120000, 0x458DB000, 0x00000000

.section .rodata

var_808D6800: .word 0x3C23D70A
var_808D6804: .word 0x4490C000
var_808D6808: .word 0x4554F000
var_808D680C: .word 0x44728000
var_808D6810: .word 0x44FD4000
var_808D6814: .word 0xC5073000
var_808D6818: .word 0x3D4CCCCD
var_808D681C: .word 0x3F4CCCCD
var_808D6820: .word 0x3CF5C28F
var_808D6824: .word 0x456F3000
var_808D6828: .word 0xC48EC000
var_808D682C: .word 0x457BD000
var_808D6830: .word 0xC3C78000
var_808D6834: .word 0xC49CE000
var_808D6838: .word 0x3DCCCCCD, 0x00000000

