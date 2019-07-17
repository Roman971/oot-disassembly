.section .text
func_8095A080:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    andi    t0, t9, 0x00FF             # t0 = 00000000
    andi    t1, t0, 0xFFFF             # t1 = 00000000
    sltiu   $at, t1, 0x0005
    sra     t8, t6,  8
    sb      t8, 0x015B(s0)             # 0000015B
    beq     $at, $zero, lbl_8095A2DC
    sh      t0, 0x001C(s0)             # 0000001C
    sll     t1, t1,  2
    lui     $at, %hi(var_8095B280)     # $at = 80960000
    addu    $at, $at, t1
    lw      t1, %lo(var_8095B280)($at)
    jr      t1
    nop
var_8095A0E0:
    lui     a1, %hi(var_8095B260)      # a1 = 80960000
    addiu   a1, a1, %lo(var_8095B260)  # a1 = 8095B260
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_8095A158
    nop
    jal     func_8002049C
    lbu     a1, 0x015B(s0)             # 0000015B
    beq     v0, $zero, lbl_8095A138
    lui     a0, 0x0601                 # a0 = 06010000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     t2, %hi(func_8095A324)     # t2 = 80960000
    addiu   t2, t2, %lo(func_8095A324) # t2 = 8095A324
    add.s   $f8, $f4, $f6
    sw      t2, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_8095A144
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_8095A138:
    lui     t3, %hi(func_8095A52C)     # t3 = 80960000
    addiu   t3, t3, %lo(func_8095A52C) # t3 = 8095A52C
    sw      t3, 0x0154(s0)             # 00000154
lbl_8095A144:
    addiu   a0, a0, 0x2BA4             # a0 = 06012BA4
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    beq     $zero, $zero, lbl_8095A1CC
    lw      a0, 0x0034($sp)
lbl_8095A158:
    bne     v0, $at, lbl_8095A190
    lw      t7, 0x0034($sp)
    lui     t4, %hi(func_8095A324)     # t4 = 80960000
    addiu   t4, t4, %lo(func_8095A324) # t4 = 8095A324
    lui     a0, 0x0601                 # a0 = 06010000
    sw      t4, 0x0154(s0)             # 00000154
    addiu   a0, a0, 0x28D8             # a0 = 060128D8
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      t5, 0x0004(s0)             # 00000004
    lui     $at, 0x0040                # $at = 00400000
    or      t6, t5, $at                # t6 = 00400000
    beq     $zero, $zero, lbl_8095A1C8
    sw      t6, 0x0004(s0)             # 00000004
lbl_8095A190:
    lh      t8, 0x00A4(t7)             # 000000A4
    addiu   $at, $zero, 0x0053         # $at = 00000053
    lui     a0, 0x0601                 # a0 = 06010000
    bne     t8, $at, lbl_8095A1B4
    addiu   a0, a0, 0x33EC             # a0 = 060133EC
    lui     t9, %hi(func_8095A334)     # t9 = 80960000
    addiu   t9, t9, %lo(func_8095A334) # t9 = 8095A334
    beq     $zero, $zero, lbl_8095A1C0
    sw      t9, 0x0154(s0)             # 00000154
lbl_8095A1B4:
    lui     t0, %hi(func_8095A324)     # t0 = 80960000
    addiu   t0, t0, %lo(func_8095A324) # t0 = 8095A324
    sw      t0, 0x0154(s0)             # 00000154
lbl_8095A1C0:
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
lbl_8095A1C8:
    lw      a0, 0x0034($sp)
lbl_8095A1CC:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      v0, 0x013C(s0)             # 0000013C
    lhu     t1, 0x0ED6(v1)             # 8011B4A6
    lw      t3, 0x0034($sp)
    andi    t2, t1, 0x2000             # t2 = 00000000
    beql    t2, $zero, lbl_8095A220
    lw      t6, 0x0004(v1)             # 8011A5D4
    lh      t4, 0x00A4(t3)             # 000000A4
    addiu   $at, $zero, 0x0053         # $at = 00000053
    bnel    t4, $at, lbl_8095A220
    lw      t6, 0x0004(v1)             # 8011A5D4
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t5, $at, lbl_8095A238
    nop
    lw      t6, 0x0004(v1)             # 8011A5D4
lbl_8095A220:
    bnel    t6, $zero, lbl_8095A2E0
    lw      $ra, 0x001C($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_8095A2E0
    lw      $ra, 0x001C($sp)
lbl_8095A238:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8095A2E0
    lw      $ra, 0x001C($sp)
var_8095A248:
    sb      $zero, 0x015A(s0)          # 0000015A
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lui     t9, %hi(func_8095A668)     # t9 = 80960000
    lui     t0, %hi(func_8095A6EC)     # t0 = 80960000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t9, t9, %lo(func_8095A668) # t9 = 8095A668
    addiu   t0, t0, %lo(func_8095A6EC) # t0 = 8095A6EC
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      t9, 0x0154(s0)             # 00000154
    sw      t0, 0x0134(s0)             # 00000134
    lhu     t1, 0x0ED6(v1)             # 8011B4A6
    andi    t2, t1, 0x2000             # t2 = 00000000
    beql    t2, $zero, lbl_8095A2E0
    lw      $ra, 0x001C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8095A2E0
    lw      $ra, 0x001C($sp)
var_8095A2A0:
    addiu   t3, $zero, 0xFFF4          # t3 = FFFFFFF4
    ori     t4, $zero, 0xFFFF          # t4 = 0000FFFF
    sh      t3, 0x0158(s0)             # 00000158
    sh      t4, 0x0160(s0)             # 00000160
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lui     t6, %hi(func_8095ADCC)     # t6 = 80960000
    lui     t7, %hi(func_8095AE48)     # t7 = 80960000
    addiu   t6, t6, %lo(func_8095ADCC) # t6 = 8095ADCC
    addiu   t7, t7, %lo(func_8095AE48) # t7 = 8095AE48
    sw      t6, 0x0154(s0)             # 00000154
    sw      t7, 0x0134(s0)             # 00000134
lbl_8095A2DC:
    lw      $ra, 0x001C($sp)
lbl_8095A2E0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8095A2F0:
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


func_8095A324:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8095A334:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    beql    t6, $zero, lbl_8095A424
    lw      $ra, 0x0024($sp)
    lw      v0, 0x1D98(a2)             # 00001D98
    beql    v0, $zero, lbl_8095A424
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t7, $at, lbl_8095A420
    addiu   a1, $zero, 0x28C2          # a1 = 000028C2
    jal     func_80022FD0
    sw      a2, 0x003C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    ori     t9, t8, 0x2000             # t9 = 00002000
    sh      t9, 0x0ED6(v0)             # 8011B4A6
    sh      t0, 0x0158(s0)             # 00000158
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f18                  # $f18 = 30.00
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x002C($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0030($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     a2, %hi(var_8095B264)      # a2 = 80960000
    mul.s   $f8, $f0, $f6
    addiu   a2, a2, %lo(var_8095B264)  # a2 = 8095B264
    addiu   t1, $zero, 0x0046          # t1 = 00000046
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    or      a3, a2, $zero              # a3 = 8095B264
    add.s   $f16, $f8, $f10
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    jal     func_8001C97C
    swc1    $f16, 0x0034($sp)
    lui     t3, %hi(func_8095A434)     # t3 = 80960000
    addiu   t3, t3, %lo(func_8095A434) # t3 = 8095A434
    sw      t3, 0x0154(s0)             # 00000154
lbl_8095A420:
    lw      $ra, 0x0024($sp)
lbl_8095A424:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8095A434:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a2, 0x41F0                 # a2 = 41F00000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t7, 0x003C($sp)
    lh      v0, 0x0158(s0)             # 00000158
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    beq     v0, $zero, lbl_8095A480
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_8095A480:
    bne     v0, $at, lbl_8095A4C4
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    sw      $zero, 0x0134(s0)          # 00000134
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x2D30             # t4 = 06012D30
    addiu   t2, $zero, 0x00A1          # t2 = 000000A1
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t4, 0x0024($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    jal     func_8001D29C
    lw      a0, 0x0044($sp)
    beq     $zero, $zero, lbl_8095A4D8
    lw      t5, 0x0044($sp)
lbl_8095A4C4:
    bnel    v0, $zero, lbl_8095A4D8
    lw      t5, 0x0044($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t5, 0x0044($sp)
lbl_8095A4D8:
    addiu   $at, $zero, 0x0192         # $at = 00000192
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t6, 0x1D74(t5)             # 00001D74
    bnel    t6, $at, lbl_8095A51C
    lw      $ra, 0x0034($sp)
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    addiu   a1, $zero, 0x683E          # a1 = 0000683E
    lw      a0, 0x003C($sp)
    beq     t7, $zero, lbl_8095A510
    nop
    jal     func_80022F84
    lw      a0, 0x003C($sp)
    beq     $zero, $zero, lbl_8095A51C
    lw      $ra, 0x0034($sp)
lbl_8095A510:
    jal     func_80022F84
    addiu   a1, $zero, 0x681E          # a1 = 0000681E
    lw      $ra, 0x0034($sp)
lbl_8095A51C:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8095A52C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8002049C
    lbu     a1, 0x015B(t6)             # 0000015B
    beq     v0, $zero, lbl_8095A578
    lw      a0, 0x0018($sp)
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    lw      a0, 0x001C($sp)
    jal     func_8006BA10
    lw      a1, 0x0018($sp)
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_8095A588)     # t7 = 80960000
    addiu   t7, t7, %lo(func_8095A588) # t7 = 8095A588
    sw      t7, 0x0154(t8)             # 00000154
lbl_8095A578:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095A588:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_8095A5EC
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2893          # a1 = 00002893
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_8095A324)     # t6 = 80960000
    addiu   t6, t6, %lo(func_8095A324) # t6 = 8095A324
    beq     $zero, $zero, lbl_8095A5F8
    sw      t6, 0x0154(a3)             # 00000154
lbl_8095A5EC:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x00CB          # a1 = 000000CB
lbl_8095A5F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095A608:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095A62C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_8095B270)      # a1 = 80960000
    or      a0, a2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    a1, a1, t7
    jal     func_80028048
    lw      a1, %lo(var_8095B270)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095A668:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8095A6C0
    lhu     v0, 0x1D74(a1)             # 00001D74
    lw      v0, 0x1D8C(a1)             # 00001D8C
    beql    v0, $zero, lbl_8095A6C0
    lhu     v0, 0x1D74(a1)             # 00001D74
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_8095A6C0
    lhu     v0, 0x1D74(a1)             # 00001D74
    lbu     t8, 0x015A(a0)             # 0000015A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    andi    t0, t9, 0x00FF             # t0 = 00000001
    slti    $at, t0, 0x000C
    bne     $at, $zero, lbl_8095A6BC
    sb      t9, 0x015A(a0)             # 0000015A
    jal     func_80020EB4
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
lbl_8095A6BC:
    lhu     v0, 0x1D74(a1)             # 00001D74
lbl_8095A6C0:
    addiu   $at, $zero, 0x00F5         # $at = 000000F5
    beq     v0, $at, lbl_8095A6D4
    addiu   $at, $zero, 0x015F         # $at = 0000015F
    bnel    v0, $at, lbl_8095A6E0
    lw      $ra, 0x0014($sp)
lbl_8095A6D4:
    jal     func_80064738
    addiu   a0, $zero, 0x282E          # a0 = 0000282E
    lw      $ra, 0x0014($sp)
lbl_8095A6E0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095A6EC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0050($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    lw      s0, 0x0000(s1)             # 00000000
    beql    t6, $zero, lbl_8095ADBC
    lw      $ra, 0x001C($sp)
    lw      v1, 0x1D8C(s1)             # 00001D8C
    beql    v1, $zero, lbl_8095ADBC
    lw      $ra, 0x001C($sp)
    lhu     t7, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t8, 0x0050($sp)
    bnel    t7, $at, lbl_8095ADBC
    lw      $ra, 0x001C($sp)
    lbu     v0, 0x015A(t8)             # 0000015A
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_8095A8C4
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f12                  # $f12 = 255.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    bgez    v0, lbl_8095A770
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8095A770:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, 0x431B                # $at = 431B0000
    mtc1    $at, $f16                  # $f16 = 155.00
    div.s   $f0, $f6, $f10
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sb      t4, 0x0043($sp)
    sb      t3, 0x0042($sp)
    sb      t9, 0x0041($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f2, $f16, $f0
    add.s   $f18, $f2, $f14
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8095A818
    mfc1    t6, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8095A80C
    nop
    mfc1    t6, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095A824
    or      t6, t6, $at                # t6 = 80000000
lbl_8095A80C:
    beq     $zero, $zero, lbl_8095A824
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f4
lbl_8095A818:
    nop
    bltz    t6, lbl_8095A80C
    nop
lbl_8095A824:
    ctc1    t5, $f31
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sub.s   $f8, $f12, $f2
    sb      t6, 0x0040($sp)
    sb      t7, 0x003F($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f6, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8095A8AC
    mfc1    t9, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f6, $f8, $f6
    ctc1    t9, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8095A8A0
    nop
    mfc1    t9, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095A8B8
    or      t9, t9, $at                # t9 = 80000000
lbl_8095A8A0:
    beq     $zero, $zero, lbl_8095A8B8
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f6
lbl_8095A8AC:
    nop
    bltz    t9, lbl_8095A8A0
    nop
lbl_8095A8B8:
    ctc1    t8, $f31
    beq     $zero, $zero, lbl_8095AB48
    sb      t9, 0x003E($sp)
lbl_8095A8C4:
    addiu   t3, a0, 0xFFFB             # t3 = FFFFFFFB
    mtc1    t3, $f10                   # $f10 = NaN
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f12                  # $f12 = 255.00
    cvt.s.w $f16, $f10
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f18                  # $f18 = 7.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    div.s   $f0, $f16, $f18
    mul.s   $f4, $f12, $f0
    sub.s   $f8, $f12, $f4
    cfc1    t4, $f31
    ctc1    v0, $f31
    nop
    cvt.w.s $f6, $f8
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_8095A968
    mfc1    v0, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f6, $f8, $f6
    ctc1    v0, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_8095A95C
    nop
    mfc1    v0, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095A974
    or      v0, v0, $at                # v0 = 80000000
lbl_8095A95C:
    beq     $zero, $zero, lbl_8095A974
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f6
lbl_8095A968:
    nop
    bltz    v0, lbl_8095A95C
    nop
lbl_8095A974:
    lui     $at, 0x425C                # $at = 425C0000
    ctc1    t4, $f31
    mtc1    $at, $f10                  # $f10 = 55.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      v0, 0x0043($sp)
    mul.s   $f16, $f10, $f0
    lui     $at, 0x4F00                # $at = 4F000000
    sub.s   $f18, $f12, $f16
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8095AA00
    mfc1    t6, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8095A9F4
    nop
    mfc1    t6, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095AA0C
    or      t6, t6, $at                # t6 = 80000000
lbl_8095A9F4:
    beq     $zero, $zero, lbl_8095AA0C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f4
lbl_8095AA00:
    nop
    bltz    t6, lbl_8095A9F4
    nop
lbl_8095AA0C:
    lui     $at, 0x42D2                # $at = 42D20000
    ctc1    t5, $f31
    mtc1    $at, $f8                   # $f8 = 105.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t6, 0x0042($sp)
    mul.s   $f6, $f8, $f0
    sb      v0, 0x0041($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    sub.s   $f10, $f12, $f6
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8095AA9C
    mfc1    t8, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8095AA90
    nop
    mfc1    t8, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095AAA8
    or      t8, t8, $at                # t8 = 80000000
lbl_8095AA90:
    beq     $zero, $zero, lbl_8095AAA8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f16
lbl_8095AA9C:
    nop
    bltz    t8, lbl_8095AA90
    nop
lbl_8095AAA8:
    ctc1    t7, $f31
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t8, 0x0040($sp)
    mul.s   $f18, $f14, $f0
    sb      v0, 0x003F($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f4, $f18, $f14
    cfc1    t9, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_8095AB30
    mfc1    t3, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8095AB24
    nop
    mfc1    t3, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095AB3C
    or      t3, t3, $at                # t3 = 80000000
lbl_8095AB24:
    beq     $zero, $zero, lbl_8095AB3C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8
lbl_8095AB30:
    nop
    bltz    t3, lbl_8095AB24
    nop
lbl_8095AB3C:
    ctc1    t9, $f31
    sb      t3, 0x003E($sp)
    nop
lbl_8095AB48:
    lw      t6, 0x0014(v1)             # 00000014
    lw      t4, 0x000C(v1)             # 0000000C
    lw      t5, 0x0010(v1)             # 00000010
    mtc1    t6, $f16                   # $f16 = NaN
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    t5, $f10                   # $f10 = 0.00
    cvt.s.w $f16, $f16
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f12, $f6
    mfc1    a2, $f16
    jal     func_800AA7F4
    cvt.s.w $f14, $f10
    lw      t7, 0x1D8C(s1)             # 00001D8C
    lhu     t8, 0x0006(t7)             # 00000006
    mtc1    t8, $f18                   # $f18 = 0.00
    bgez    t8, lbl_8095AB9C
    cvt.s.w $f4, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8
lbl_8095AB9C:
    lui     $at, %hi(var_8095B294)     # $at = 80960000
    lwc1    $f6, %lo(var_8095B294)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lw      t9, 0x1D8C(s1)             # 00001D8C
    lhu     t3, 0x0008(t9)             # 00000008
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_8095ABD8
    cvt.s.w $f16, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_8095ABD8:
    lui     $at, %hi(var_8095B298)     # $at = 80960000
    lwc1    $f8, %lo(var_8095B298)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f8
    jal     func_800AAB94
    nop
    lw      t4, 0x1D8C(s1)             # 00001D8C
    lhu     t5, 0x000A(t4)             # 0000000A
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_8095AC14
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_8095AC14:
    lui     $at, %hi(var_8095B29C)     # $at = 80960000
    lwc1    $f18, %lo(var_8095B29C)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f18
    jal     func_800AAD4C
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lui     t2, 0xE700                 # t2 = E7000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t3, 0x0043($sp)
    lbu     t6, 0x0042($sp)
    sll     t4, t3, 24
    lbu     t3, 0x0041($sp)
    sll     t7, t6, 16
    or      t8, t4, t7                 # t8 = 00000008
    sll     t5, t3,  8
    or      t6, t8, t5                 # t6 = 00000008
    ori     t4, t6, 0x00FF             # t4 = 000000FF
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t8, 0x0040($sp)
    lbu     t4, 0x003F($sp)
    sll     t5, t8, 24
    lbu     t8, 0x003E($sp)
    sll     t7, t4, 16
    or      t9, t5, t7                 # t9 = 00000008
    sll     t6, t8,  8
    or      t4, t9, t6                 # t4 = 00000008
    ori     t5, t4, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      t0, 0x0024($sp)
    lui     t2, 0xE700                 # t2 = E7000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x0050($sp)
    lui     a3, %hi(var_8095B210)      # a3 = 80960000
    lui     $at, 0x00FF                # $at = 00FF0000
    lbu     t4, 0x015A(t6)             # 0000015A
    lui     t6, 0x8012                 # t6 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, t4,  2
    addu    a3, a3, t5
    lw      a3, %lo(var_8095B210)(a3)
    sll     t3, a3,  4
    srl     t8, t3, 28
    sll     t9, t8,  2
    addu    t6, t6, t9
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t7, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t7, t6
    addu    t5, t4, $at
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x26F0             # t7 = 060126F0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_8095ADBC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_8095ADCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8095AE3C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_8095AE3C
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    bnel    v1, t7, lbl_8095AE3C
    lw      $ra, 0x0014($sp)
    lh      v0, 0x0158(a0)             # 00000158
    addiu   a1, $zero, 0x183B          # a1 = 0000183B
    bnel    v1, v0, lbl_8095AE20
    slti    $at, v0, 0x0020
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      v0, 0x0158(a0)             # 00000158
    slti    $at, v0, 0x0020
lbl_8095AE20:
    beq     $at, $zero, lbl_8095AE30
    addiu   t8, v0, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_8095AE38
    sh      t8, 0x0158(a0)             # 00000158
lbl_8095AE30:
    jal     func_80020EB4
    nop
lbl_8095AE38:
    lw      $ra, 0x0014($sp)
lbl_8095AE3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8095AE48:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    lw      s0, 0x0000(s1)             # 00000000
    beql    t6, $zero, lbl_8095B1F4
    lw      $ra, 0x0044($sp)
    lw      v0, 0x1D94(s1)             # 00001D94
    beql    v0, $zero, lbl_8095B1F4
    lw      $ra, 0x0044($sp)
    lhu     t7, 0x000A(v0)             # 0000000A
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    bgez    t7, lbl_8095AEA0
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8095AEA0:
    lui     $at, %hi(var_8095B2A0)     # $at = 80960000
    lwc1    $f10, %lo(var_8095B2A0)($at)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f6, $f10
    cfc1    t8, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_8095AF20
    mfc1    v1, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    v1, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_8095AF14
    nop
    mfc1    v1, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8095AF2C
    or      v1, v1, $at                # v1 = 80000000
lbl_8095AF14:
    beq     $zero, $zero, lbl_8095AF2C
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f18
lbl_8095AF20:
    nop
    bltz    v1, lbl_8095AF14
    nop
lbl_8095AF2C:
    lhu     a0, 0x0160(s2)             # 00000160
    ctc1    t8, $f31
    andi    v1, v1, 0xFFFF             # v1 = 0000FFFF
    beq     v1, a0, lbl_8095AF64
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    bnel    a0, $at, lbl_8095AF5C
    sh      a0, 0x0162(s2)             # 00000162
    sh      v1, 0x0160(s2)             # 00000160
    sh      v1, 0x0162(s2)             # 00000162
    beq     $zero, $zero, lbl_8095AF64
    lw      v0, 0x1D94(s1)             # 00001D94
    sh      a0, 0x0162(s2)             # 00000162
lbl_8095AF5C:
    sh      v1, 0x0160(s2)             # 00000160
    lw      v0, 0x1D94(s1)             # 00001D94
lbl_8095AF64:
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    jal     func_8005C690
    lhu     a2, 0x1D74(s1)             # 00001D74
    swc1    $f0, 0x006C($sp)
    lw      v0, 0x1D94(s1)             # 00001D94
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lhu     t3, 0x0000(v0)             # 00000000
    bnel    t3, $at, lbl_8095B1F4
    lw      $ra, 0x0044($sp)
    lw      t6, 0x0014(v0)             # 00000014
    lw      t4, 0x000C(v0)             # 0000000C
    lw      t5, 0x0010(v0)             # 00000010
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t5, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f6
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f12, $f4
    mfc1    a2, $f6
    jal     func_800AA7F4
    cvt.s.w $f14, $f8
    lw      t7, 0x1D94(s1)             # 00001D94
    lhu     t8, 0x0006(t7)             # 00000006
    mtc1    t8, $f10                   # $f10 = 0.00
    bgez    t8, lbl_8095AFE0
    cvt.s.w $f16, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_8095AFE0:
    lui     $at, %hi(var_8095B2A4)     # $at = 80960000
    lwc1    $f4, %lo(var_8095B2A4)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f4
    jal     func_800AA9E0
    nop
    lw      t9, 0x1D94(s1)             # 00001D94
    lhu     t3, 0x0008(t9)             # 00000008
    mtc1    t3, $f8                    # $f8 = 0.00
    bgez    t3, lbl_8095B01C
    cvt.s.w $f6, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_8095B01C:
    lui     $at, %hi(var_8095B2A8)     # $at = 80960000
    lwc1    $f18, %lo(var_8095B2A8)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f18
    jal     func_800AAB94
    nop
    lhu     v0, 0x0162(s2)             # 00000162
    lhu     t4, 0x0160(s2)             # 00000160
    lwc1    $f8, 0x006C($sp)
    lui     $at, %hi(var_8095B2AC)     # $at = 80960000
    subu    t5, t4, v0
    mtc1    t5, $f16                   # $f16 = 0.00
    lwc1    $f12, %lo(var_8095B2AC)($at)
    mtc1    v0, $f6                    # $f6 = 0.00
    cvt.s.w $f4, $f16
    mov.s   $f14, $f12
    cvt.s.w $f18, $f6
    mul.s   $f10, $f4, $f8
    bgez    v0, lbl_8095B078
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f18, $f18, $f16
lbl_8095B078:
    add.s   $f4, $f10, $f18
    lui     $at, %hi(var_8095B2B0)     # $at = 80960000
    lwc1    $f8, %lo(var_8095B2B0)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f4, $f8
    mfc1    a2, $f6
    jal     func_800AA8FC
    nop
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t3, $zero, 0xAA80          # t3 = FFFFAA80
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x9678                 # t6 = 96780000
    ori     t6, t6, 0x0080             # t6 = 96780080
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      t1, 0x0050($sp)
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lh      t0, 0x0158(s2)             # 00000158
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    subu    $at, $zero, t0
    sll     t8, $at,  2
    subu    t8, t8, $at
    sll     t8, t8,  1
    sll     a3, $at,  2
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t7, t0,  2
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t9, 0x0024($sp)
    subu    a3, a3, $at
    sw      t8, 0x0020($sp)
    sw      t3, 0x0028($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x004C($sp)
    jal     func_8007EB84
    sll     a2, t0,  1
    lw      t2, 0x004C($sp)
    lui     a3, 0xE700                 # a3 = E7000000
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x13F0             # t7 = 060013F0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)
lbl_8095B1F4:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    nop
    nop

.section .data

var_8095B210: .word \
0x060096B0, 0x0600A2B0, 0x0600AEB0, 0x0600BAB0, \
0x0600C6B0, 0x0600D2B0, 0x0600DEB0, 0x0600EAB0, \
0x0600F6B0, 0x060102B0, 0x06010EB0, 0x06011AB0
var_8095B240: .word 0x009C0100, 0x00000030, 0x00A10000, 0x00000164
.word func_8095A080
.word func_8095A2F0
.word func_8095A608
.word func_8095A62C
var_8095B260: .word 0x48500064
var_8095B264: .word 0x00000000, 0x00000000, 0x00000000
var_8095B270: .word 0x06012A50, 0x060127C0, 0x060130B0, 0x00000000

.section .rodata

var_8095B280: .word var_8095A0E0
.word var_8095A0E0
.word var_8095A0E0
.word var_8095A248
.word var_8095A2A0
var_8095B294: .word 0x38C90FDB
var_8095B298: .word 0x38C90FDB
var_8095B29C: .word 0x38C90FDB
var_8095B2A0: .word 0x3BB400B9
var_8095B2A4: .word 0x38C90FDB
var_8095B2A8: .word 0x38C90FDB
var_8095B2AC: .word 0x3F666666
var_8095B2B0: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

