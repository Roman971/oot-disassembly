.section .text
func_80B66F40:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     t6, 0x0154(a3)             # 00000154
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80B66F94
    lh      t2, 0x0156(a3)             # 00000156
    lh      t8, 0x0156(a3)             # 00000156
    lw      a0, 0x001C($sp)
    bne     t8, $zero, lbl_80B66FBC
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_800314D8
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lhu     t0, 0x0154(a3)             # 00000154
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    b       lbl_80B66FBC
    sh      t1, 0x0154(a3)             # 00000154
    lh      t2, 0x0156(a3)             # 00000156
lbl_80B66F94:
    lw      a0, 0x001C($sp)
    beq     t2, $zero, lbl_80B66FBC
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031530
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lhu     t4, 0x0154(a3)             # 00000154
    ori     t5, t4, 0x0002             # t5 = 00000002
    sh      t5, 0x0154(a3)             # 00000154
lbl_80B66FBC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B66FCC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, %hi(func_80B67240)     # t6 = 80B60000
    sw      $zero, 0x0030($sp)
    addiu   t6, t6, %lo(func_80B67240) # t6 = 80B67240
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    sw      t6, 0x015C(s0)             # 0000015C
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, %hi(func_80B674DC)     # t7 = 80B60000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beql    v0, $zero, lbl_80B6703C
    lw      t8, 0x0004(s0)             # 00000004
    beq     v0, $at, lbl_80B67050
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B67118
    lui     t0, %hi(func_80B67250)     # t0 = 80B60000
    b       lbl_80B671E8
    lw      $ra, 0x001C($sp)
    lw      t8, 0x0004(s0)             # 00000004
lbl_80B6703C:
    addiu   t7, t7, %lo(func_80B674DC) # t7 = 80B674DC
    sw      t7, 0x0134(s0)             # 00000134
    ori     t9, t8, 0x0080             # t9 = 00000080
    b       lbl_80B671E4
    sw      t9, 0x0004(s0)             # 00000004
lbl_80B67050:
    addiu   a0, a0, 0xC080             # a0 = 0600C080
    jal     func_80033EF4
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF8
    addiu   a1, s1, 0x0810             # a1 = 00000810
    sw      a1, 0x0020($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0030($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    sw      v0, 0x013C(s0)             # 0000013C
    sra     t1, t0,  8
    andi    t2, t1, 0x003F             # t2 = 00000000
    bne     t2, $at, lbl_80B670AC
    lui     t5, %hi(func_80B6750C)     # t5 = 80B60000
    lui     t3, %hi(func_80B67444)     # t3 = 80B60000
    lui     t4, %hi(func_80B67624)     # t4 = 80B60000
    addiu   t3, t3, %lo(func_80B67444) # t3 = 80B67444
    addiu   t4, t4, %lo(func_80B67624) # t4 = 80B67624
    sw      t3, 0x015C(s0)             # 0000015C
    b       lbl_80B671E4
    sw      t4, 0x0134(s0)             # 00000134
lbl_80B670AC:
    lh      a1, 0x001C(s0)             # 0000001C
    sh      $zero, 0x0158(s0)          # 00000158
    lh      v0, 0x0158(s0)             # 00000158
    lui     t6, %hi(func_80B67454)     # t6 = 80B60000
    addiu   t5, t5, %lo(func_80B6750C) # t5 = 80B6750C
    addiu   t6, t6, %lo(func_80B67454) # t6 = 80B67454
    sra     a1, a1,  8
    sw      t5, 0x0134(s0)             # 00000134
    sw      t6, 0x015C(s0)             # 0000015C
    andi    a1, a1, 0x003F             # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x0156(s0)             # 00000156
    jal     func_8002049C
    sh      v0, 0x0154(s0)             # 00000154
    bne     v0, $zero, lbl_80B67100
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)
    jal     func_800314D8
    lw      a2, 0x013C(s0)             # 0000013C
    b       lbl_80B671E8
    lw      $ra, 0x001C($sp)
lbl_80B67100:
    lhu     t8, 0x0154(s0)             # 00000154
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sh      t7, 0x0156(s0)             # 00000156
    ori     t9, t8, 0x0002             # t9 = 00000002
    b       lbl_80B671E4
    sh      t9, 0x0154(s0)             # 00000154
lbl_80B67118:
    lh      a1, 0x001C(s0)             # 0000001C
    sh      $zero, 0x0158(s0)          # 00000158
    lh      v0, 0x0158(s0)             # 00000158
    sra     a1, a1,  8
    addiu   t0, t0, %lo(func_80B67250) # t0 = 00007250
    andi    a1, a1, 0x003F             # a1 = 00000000
    sw      t0, 0x015C(s0)             # 0000015C
    sw      $zero, 0x0134(s0)          # 00000134
    addiu   a1, a1, 0x0001             # a1 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x0156(s0)             # 00000156
    jal     func_8002049C
    sh      v0, 0x0154(s0)             # 00000154
    beql    v0, $zero, lbl_80B6716C
    lh      a1, 0x001C(s0)             # 0000001C
    lhu     t2, 0x0154(s0)             # 00000154
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    sh      t1, 0x0156(s0)             # 00000156
    ori     t3, t2, 0x0004             # t3 = 00000004
    sh      t3, 0x0154(s0)             # 00000154
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B6716C:
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C
    addiu   a1, a1, 0x0002             # a1 = 00000002
    beql    v0, $zero, lbl_80B671A0
    lh      t7, 0x0156(s0)             # 00000156
    lhu     t5, 0x0154(s0)             # 00000154
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    sh      t4, 0x0158(s0)             # 00000158
    ori     t6, t5, 0x0008             # t6 = 00000008
    sh      t6, 0x0154(s0)             # 00000154
    lh      t7, 0x0156(s0)             # 00000156
lbl_80B671A0:
    bnel    t7, $zero, lbl_80B671B8
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t8, 0x0158(s0)             # 00000158
    beql    t8, $zero, lbl_80B671D4
    lh      a1, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B671B8:
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    b       lbl_80B671E8
    lw      $ra, 0x001C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B671D4:
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 00000000
lbl_80B671E4:
    lw      $ra, 0x001C($sp)
lbl_80B671E8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B671F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a3, $zero              # a0 = 00000000
    lh      t7, 0x001C(t6)             # 0000001C
    lw      t9, 0x0018($sp)
    andi    t8, t7, 0x00FF             # t8 = 00000000
    bne     t8, $at, lbl_80B67230
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t9)             # 0000013C
lbl_80B67230:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B67240:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B67250:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C
    addiu   a1, a1, 0x0001             # a1 = 00000001
    beql    v0, $zero, lbl_80B6730C
    lh      a1, 0x001C(s0)             # 0000001C
    lhu     v0, 0x0154(s0)             # 00000154
    addiu   t1, $zero, 0x0130          # t1 = 00000130
    addiu   a0, $zero, 0x2881          # a0 = 00002881
    andi    t6, v0, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80B672D8
    ori     t0, v0, 0x0004             # t0 = 00000004
    lh      v1, 0x0156(s0)             # 00000156
    blez    v1, lbl_80B672B0
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_80B67308
    sh      t7, 0x0156(s0)             # 00000156
lbl_80B672B0:
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80020510
    addiu   a1, a1, 0x0001             # a1 = 00000001
    lhu     t8, 0x0154(s0)             # 00000154
    andi    t9, t8, 0xFFFB             # t9 = 00000000
    b       lbl_80B67308
    sh      t9, 0x0154(s0)             # 00000154
lbl_80B672D8:
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    sh      t0, 0x0154(s0)             # 00000154
    sh      t1, 0x0156(s0)             # 00000156
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    addiu   a3, t2, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t3, 0x0014($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80B67308:
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B6730C:
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C
    addiu   a1, a1, 0x0002             # a1 = 00000002
    beql    v0, $zero, lbl_80B673B0
    lh      v1, 0x0156(s0)             # 00000156
    lhu     v0, 0x0154(s0)             # 00000154
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t4, v0, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80B6737C
    ori     t8, v0, 0x0008             # t8 = 00000008
    lh      v0, 0x0158(s0)             # 00000158
    blez    v0, lbl_80B67354
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    b       lbl_80B673AC
    sh      t5, 0x0158(s0)             # 00000158
lbl_80B67354:
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80020510
    addiu   a1, a1, 0x0002             # a1 = 00000002
    lhu     t6, 0x0154(s0)             # 00000154
    andi    t7, t6, 0xFFF7             # t7 = 00000000
    b       lbl_80B673AC
    sh      t7, 0x0154(s0)             # 00000154
lbl_80B6737C:
    addiu   t9, $zero, 0x0130          # t9 = 00000130
    lui     t0, 0x8010                 # t0 = 80100000
    sh      t8, 0x0154(s0)             # 00000154
    sh      t9, 0x0158(s0)             # 00000158
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2881          # a0 = 00002881
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80B673AC:
    lh      v1, 0x0156(s0)             # 00000156
lbl_80B673B0:
    lh      v0, 0x0158(s0)             # 00000158
    sll     a1, v1, 16
    slt     $at, v1, v0
    beq     $at, $zero, lbl_80B673D0
    sra     a1, a1, 16
    sll     a1, v0, 16
    b       lbl_80B673D0
    sra     a1, a1, 16
lbl_80B673D0:
    blezl   a1, lbl_80B673E8
    slti    $at, v1, 0x0040
    jal     func_80023164
    or      a0, s0, $zero              # a0 = 00000000
    lh      v1, 0x0156(s0)             # 00000156
    slti    $at, v1, 0x0040
lbl_80B673E8:
    beql    $at, $zero, lbl_80B67404
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t1, 0x0158(s0)             # 00000158
    slti    $at, t1, 0x0040
    bnel    $at, $zero, lbl_80B67420
    lh      a1, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B67404:
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    b       lbl_80B67434
    lw      $ra, 0x0024($sp)
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B67420:
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B67434:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B67444:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B67454:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0156(a2)             # 00000156
    blez    v0, lbl_80B67474
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0156(a2)             # 00000156
lbl_80B67474:
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B6749C
    lw      a2, 0x0018($sp)
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sh      t7, 0x0156(a2)             # 00000156
lbl_80B6749C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B66F40
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B674B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x015C(a0)             # 0000015C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B674DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x88B0             # a1 = 060088B0
    jal     func_800280C8
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6750C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v1, 0x0156(a2)             # 00000156
    sll     v0, v1, 16
    sra     v0, v0, 16
    beq     v0, $zero, lbl_80B67614
    slti    $at, v0, 0x0041
    bnel    $at, $zero, lbl_80B67560
    slti    $at, v0, 0x0011
    lh      v0, 0x0158(a2)             # 00000158
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    slti    $at, v0, 0x0078
    beq     $at, $zero, lbl_80B67554
    addiu   t6, v0, 0x0008             # t6 = 00000008
    b       lbl_80B675D4
    sh      t6, 0x0158(a2)             # 00000158
lbl_80B67554:
    b       lbl_80B675D4
    sh      t7, 0x0158(a2)             # 00000158
    slti    $at, v0, 0x0011
lbl_80B67560:
    bne     $at, $zero, lbl_80B675D0
    sll     t2, v0,  3
    or      a0, v1, $zero              # a0 = 00000000
    sll     a0, a0, 12
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a2, 0x0018($sp)
    jal     func_80063684              # coss?
    sw      a3, 0x001C($sp)
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f4                   # $f4 = 64.00
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f8                   # $f8 = 127.00
    mul.s   $f6, $f0, $f4
    lw      a2, 0x0018($sp)
    lw      a3, 0x001C($sp)
    addiu   t1, $zero, 0x007F          # t1 = 0000007F
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    nop
    sh      t9, 0x0158(a2)             # 00000158
    lh      t0, 0x0158(a2)             # 00000158
    slti    $at, t0, 0x0080
    bnel    $at, $zero, lbl_80B675D8
    lw      v0, 0x0000(a3)             # 00000000
    b       lbl_80B675D4
    sh      t1, 0x0158(a2)             # 00000158
lbl_80B675D0:
    sh      t2, 0x0158(a2)             # 00000158
lbl_80B675D4:
    lw      v0, 0x0000(a3)             # 00000000
lbl_80B675D8:
    lw      a0, 0x02D0(v0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0xC6CA                # $at = C6CA0000
    addiu   t3, a0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(v0)             # 000002D0
    sw      t4, 0x0000(a0)             # 00000000
    lh      t5, 0x0158(a2)             # 00000158
    ori     $at, $at, 0xD000           # $at = C6CAD000
    lui     a1, 0x0601                 # a1 = 06010000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = C6CAD000
    sw      t7, 0x0004(a0)             # 00000004
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800280C8
    addiu   a1, a1, 0xBEC0             # a1 = 0600BEC0
lbl_80B67614:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B67624:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x0000(a2)             # 00000000
    lw      a0, 0x02D0(v0)             # 000002D0
    lui     t8, 0xC6CA                 # t8 = C6CA0000
    ori     t8, t8, 0xD0FF             # t8 = C6CAD0FF
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(a0)             # 00000000
    sw      t8, 0x0004(a0)             # 00000004
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBEC0             # a1 = 0600BEC0
    jal     func_800280C8
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B67680: .word 0x01B40600, 0x00000030, 0x01790000, 0x00000160
.word func_80B66FCC
.word func_80B671F8
.word func_80B674B8
.word 0x00000000

.section .rodata


