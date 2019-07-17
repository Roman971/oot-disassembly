.section .text
func_80A66210:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x01B0(a2)             # 000001B0
    or      a0, a3, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_80A6623C
    nop
    lh      t7, 0x01B2(a2)             # 000001B2
    beql    t7, $zero, lbl_80A66248
    lw      $ra, 0x0014($sp)
lbl_80A6623C:
    jal     func_8004ABCC
    addiu   a1, a2, 0x0170             # a1 = 00000170
    lw      $ra, 0x0014($sp)
lbl_80A66248:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A66254:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4824          # a0 = 00004824
    lh      v0, 0x014A(s5)             # 0000014A
    addiu   s0, s5, 0x0024             # s0 = 00000024
    addiu   s6, $zero, 0x000B          # s6 = 0000000B
    bne     v0, $zero, lbl_80A662A8
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x014A(s5)             # 0000014A
    lh      v0, 0x014A(s5)             # 0000014A
lbl_80A662A8:
    blez    v0, lbl_80A6636C
    or      s1, v0, $zero              # s1 = 00000000
    lui     s3, %hi(var_80A66CCC)      # s3 = 80A60000
    addiu   s3, s3, %lo(var_80A66CCC)  # s3 = 80A66CCC
    lh      v0, 0x0146(s5)             # 00000146
lbl_80A662BC:
    slti    $at, v0, 0x000C
    beq     $at, $zero, lbl_80A6631C
    nop
    beq     s6, v0, lbl_80A662D8
    or      a0, s2, $zero              # a0 = 00000000
    bne     s4, $zero, lbl_80A662F4
    sll     t9, v0,  1
lbl_80A662D8:
    sll     t7, v0,  1
    addu    t8, s3, t7
    lh      a2, 0x0000(t8)             # 00000000
    jal     func_80013678
    or      a1, s0, $zero              # a1 = 00000024
    beq     $zero, $zero, lbl_80A66364
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
lbl_80A662F4:
    addu    t0, s3, t9
    lh      a2, 0x0000(t0)             # 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000024
    ori     a2, a2, 0x8000             # a2 = 00008000
    sll     a2, a2, 16
    jal     func_80013678
    sra     a2, a2, 16
    beq     $zero, $zero, lbl_80A66364
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFE
lbl_80A6631C:
    bne     s4, $zero, lbl_80A66344
    addiu   v1, v0, 0xFFF4             # v1 = FFFFFFF4
    sll     a3, v1, 16
    sra     a3, a3, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80013A84
    or      a2, s0, $zero              # a2 = 00000024
    beq     $zero, $zero, lbl_80A66364
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFD
lbl_80A66344:
    ori     a3, v1, 0x8000             # a3 = 00008000
    sll     a3, a3, 16
    sra     a3, a3, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80013A84
    or      a2, s0, $zero              # a2 = 00000024
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFC
lbl_80A66364:
    bgtzl   s1, lbl_80A662BC
    lh      v0, 0x0146(s5)             # 00000146
lbl_80A6636C:
    lh      a1, 0x0152(s5)             # 00000152
    bltz    a1, lbl_80A66380
    nop
    jal     func_800204D0
    or      a0, s2, $zero              # a0 = 00000000
lbl_80A66380:
    jal     func_80020EB4
    or      a0, s5, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80A663B0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t2, v0, 0x003F             # t2 = 00000000
    sh      t2, 0x0152(s0)             # 00000152
    lh      a2, 0x0152(s0)             # 00000152
    sra     t8, v0, 11
    sra     t0, v0,  6
    and     t7, t6, $at
    andi    t9, t8, 0x001F             # t9 = 00000000
    andi    t1, t0, 0x001F             # t1 = 00000000
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    sw      t7, 0x0004(s0)             # 00000004
    sh      t9, 0x0144(s0)             # 00000144
    bne     a2, $at, lbl_80A66410
    sh      t1, 0x0146(s0)             # 00000146
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sh      t3, 0x0152(s0)             # 00000152
    lh      a2, 0x0152(s0)             # 00000152
lbl_80A66410:
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    bltz    a2, lbl_80A66440
    sb      t4, 0x001F(s0)             # 0000001F
    lw      a0, 0x003C($sp)
    jal     func_8002049C
    or      a1, a2, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80A66444
    lhu     t5, 0x0144(s0)             # 00000144
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A666EC
    lw      $ra, 0x001C($sp)
lbl_80A66440:
    lhu     t5, 0x0144(s0)             # 00000144
lbl_80A66444:
    sltiu   $at, t5, 0x000A
    beq     $at, $zero, lbl_80A666E0
    sll     t5, t5,  2
    lui     $at, %hi(var_80A66D50)     # $at = 80A60000
    addu    $at, $at, t5
    lw      t5, %lo(var_80A66D50)($at)
    jr      t5
    nop
var_80A66464:
    lh      v0, 0x0034(s0)             # 00000034
    or      v1, $zero, $zero           # v1 = 00000000
    lui     t0, %hi(func_80A666FC)     # t0 = 80A60000
    andi    t6, v0, 0x000F             # t6 = 00000000
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80A664A4
    sh      t6, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at
    mflo    v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    sll     t7, v1,  2
    addu    t7, t7, v1
    sll     t7, t7,  2
    sh      t7, 0x015A(s0)             # 0000015A
lbl_80A664A4:
    sll     t8, v1,  2
    addu    t8, t8, v1
    sll     t8, t8,  1
    subu    t9, v0, t8
    addiu   t0, t0, %lo(func_80A666FC) # t0 = 80A666FC
    sh      t9, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A666E8
    sw      t0, 0x013C(s0)             # 0000013C
var_80A664C4:
    lh      v0, 0x0034(s0)             # 00000034
    lw      t5, 0x0024(s0)             # 00000024
    lui     t2, %hi(var_80A66E60)      # t2 = 80A60000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    sll     t1, v0,  2
    subu    t1, t1, v0
    sll     t1, t1,  2
    addiu   t2, t2, %lo(var_80A66E60)  # t2 = 80A66E60
    addu    t3, t1, t2
    sw      t5, 0x0000(t3)             # 00000000
    lw      t4, 0x0028(s0)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    sw      t4, 0x0004(t3)             # 00000004
    lw      t5, 0x002C(s0)             # 0000002C
    jal     func_80020EB4
    sw      t5, 0x0008(t3)             # 00000008
    beq     $zero, $zero, lbl_80A666EC
    lw      $ra, 0x001C($sp)
var_80A66514:
    lh      t6, 0x0034(s0)             # 00000034
    lui     t8, %hi(func_80A66844)     # t8 = 80A60000
    addiu   t8, t8, %lo(func_80A66844) # t8 = 80A66844
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sh      t7, 0x014A(s0)             # 0000014A
    beq     $zero, $zero, lbl_80A666E8
    sw      t8, 0x013C(s0)             # 0000013C
var_80A66530:
    lh      t9, 0x0034(s0)             # 00000034
    addiu   a1, s0, 0x0170             # a1 = 00000170
    sw      a1, 0x0024($sp)
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x0032($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80A66C80)      # a3 = 80A60000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, %lo(var_80A66C80)  # a3 = 80A66C80
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t1, 0x0032($sp)
    lui     t3, %hi(var_80A66CE4)      # t3 = 80A60000
    lui     t6, %hi(func_80A668AC)     # t6 = 80A60000
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, %lo(var_80A66CE4)(t3)
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    addiu   t6, t6, %lo(func_80A668AC) # t6 = 80A668AC
    sh      t4, 0x01B0(s0)             # 000001B0
    sh      t5, 0x01B2(s0)             # 000001B2
    sw      t6, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_80A666E8
    sw      t3, 0x0190(s0)             # 00000190
var_80A6659C:
    lh      v0, 0x0034(s0)             # 00000034
    or      v1, $zero, $zero           # v1 = 00000000
    lui     t1, %hi(func_80A6696C)     # t1 = 80A60000
    andi    t7, v0, 0x000F             # t7 = 00000000
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80A665DC
    sh      t7, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at
    mflo    v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    sll     t8, v1,  2
    addu    t8, t8, v1
    sll     t8, t8,  2
    sh      t8, 0x015A(s0)             # 0000015A
lbl_80A665DC:
    sll     t9, v1,  2
    addu    t9, t9, v1
    sll     t9, t9,  1
    subu    t0, v0, t9
    addiu   t1, t1, %lo(func_80A6696C) # t1 = 80A6696C
    sh      t0, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A666E8
    sw      t1, 0x013C(s0)             # 0000013C
var_80A665FC:
    lh      v0, 0x0034(s0)             # 00000034
    lw      t6, 0x0024(s0)             # 00000024
    lui     t3, %hi(var_80A66ED0)      # t3 = 80A60000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    sll     t2, v0,  2
    subu    t2, t2, v0
    sll     t2, t2,  2
    addiu   t3, t3, %lo(var_80A66ED0)  # t3 = 80A66ED0
    addu    t4, t2, t3
    sw      t6, 0x0000(t4)             # 00000014
    lw      t5, 0x0028(s0)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    sw      t5, 0x0004(t4)             # 00000018
    lw      t6, 0x002C(s0)             # 0000002C
    jal     func_80020EB4
    sw      t6, 0x0008(t4)             # 0000001C
    beq     $zero, $zero, lbl_80A666EC
    lw      $ra, 0x001C($sp)
var_80A6664C:
    lui     t7, %hi(func_80A668E0)     # t7 = 80A60000
    addiu   t7, t7, %lo(func_80A668E0) # t7 = 80A668E0
    beq     $zero, $zero, lbl_80A666E8
    sw      t7, 0x013C(s0)             # 0000013C
var_80A6665C:
    addiu   a1, s0, 0x0170             # a1 = 00000170
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80A66C80)      # a3 = 80A60000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, %lo(var_80A66C80)  # a3 = 80A66C80
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lw      t0, 0x0024(s0)             # 00000024
    lw      t9, 0x0028(s0)             # 00000028
    lui     t3, %hi(func_80A66AC8)     # t3 = 80A60000
    sw      t0, 0x015C(s0)             # 0000015C
    lw      t0, 0x002C(s0)             # 0000002C
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    addiu   t2, $zero, 0x004B          # t2 = 0000004B
    addiu   t3, t3, %lo(func_80A66AC8) # t3 = 80A66AC8
    sw      t8, 0x0190(s0)             # 00000190
    sh      t1, 0x01B0(s0)             # 000001B0
    sh      t2, 0x01B2(s0)             # 000001B2
    sw      t3, 0x013C(s0)             # 0000013C
    sw      t9, 0x0160(s0)             # 00000160
    beq     $zero, $zero, lbl_80A666E8
    sw      t0, 0x0164(s0)             # 00000164
var_80A666C4:
    lh      t4, 0x0034(s0)             # 00000034
    lui     t6, %hi(func_80A66B58)     # t6 = 80A60000
    addiu   t6, t6, %lo(func_80A66B58) # t6 = 80A66B58
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sh      t5, 0x014A(s0)             # 0000014A
    beq     $zero, $zero, lbl_80A666E8
    sw      t6, 0x013C(s0)             # 0000013C
lbl_80A666E0:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A666E8:
    lw      $ra, 0x001C($sp)
lbl_80A666EC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A666FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t2, 0x014E(s0)             # 0000014E
    lh      t1, 0x0148(s0)             # 00000148
    lw      t6, 0x0024($sp)
    sll     t0, t2, 16
    sra     t0, t0, 16
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    blez    t1, lbl_80A667E0
    lw      a2, 0x1C44(t6)             # 00001C44
    lui     $at, 0x4248                # $at = 42480000
    lui     a0, %hi(var_80A66E60)      # a0 = 80A60000
    mtc1    $at, $f16                  # $f16 = 50.00
    addiu   a0, a0, %lo(var_80A66E60)  # a0 = 80A66E60
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
lbl_80A66748:
    and     t7, t0, a3
    bnel    t7, $zero, lbl_80A667D4
    addiu   v1, v1, 0x0001             # v1 = 00000001
    multu   v1, a1
    lwc1    $f4, 0x0024(a2)            # 00000024
    lwc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f18, 0x002C(a2)           # 0000002C
    mflo    t8
    addu    v0, a0, t8
    lwc1    $f6, 0x0000(v0)            # 00000000
    lwc1    $f10, 0x0004(v0)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f4, 0x0008(v0)            # 00000008
    sub.s   $f12, $f8, $f10
    mul.s   $f6, $f2, $f2
    sub.s   $f14, $f18, $f4
    mul.s   $f8, $f12, $f12
    add.s   $f10, $f6, $f8
    mul.s   $f18, $f14, $f14
    add.s   $f0, $f10, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A667D4
    addiu   v1, v1, 0x0001             # v1 = 00000002
    lh      t3, 0x0150(s0)             # 00000150
    lh      t5, 0x015A(s0)             # 0000015A
    or      t9, t2, a3                 # t9 = 00000001
    addiu   t4, t3, 0x0001             # t4 = 00000001
    addiu   t6, t5, 0x0051             # t6 = 00000051
    sh      t9, 0x014E(s0)             # 0000014E
    sh      t4, 0x0150(s0)             # 00000150
    beq     $zero, $zero, lbl_80A66830
    sh      t6, 0x014C(s0)             # 0000014C
    addiu   v1, v1, 0x0001             # v1 = 00000003
lbl_80A667D4:
    slt     $at, v1, t1
    bne     $at, $zero, lbl_80A66748
    sll     a3, a3,  1
lbl_80A667E0:
    lh      t7, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_80A66804
    lh      t8, 0x0150(s0)             # 00000150
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A66834
    lw      $ra, 0x001C($sp)
    lh      t8, 0x0150(s0)             # 00000150
lbl_80A66804:
    bnel    t1, t8, lbl_80A66834
    lw      $ra, 0x001C($sp)
    lh      a1, 0x0152(s0)             # 00000152
    bltzl   a1, lbl_80A66824
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800204D0
    lw      a0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A66824:
    lw      a1, 0x0024($sp)
    jal     func_80A66254
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80A66830:
    lw      $ra, 0x001C($sp)
lbl_80A66834:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A66844:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A668A0
    lw      $ra, 0x0014($sp)
    lwc1    $f8, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x0028(v0)           # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A668A0
    lw      $ra, 0x0014($sp)
    jal     func_80A66254
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
lbl_80A668A0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A668AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x0181(a0)             # 00000181
    or      a2, $zero, $zero           # a2 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A668D0
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    jal     func_80A66254
    sb      t7, 0x0181(a0)             # 00000181
lbl_80A668D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A668E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    lw      v0, 0x1C44(a3)             # 00001C44
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A66960
    lw      $ra, 0x0014($sp)
    lwc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f10, 0x0028(v0)           # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A66960
    lw      $ra, 0x0014($sp)
    lh      a1, 0x0152(a2)             # 00000152
    or      a0, a3, $zero              # a0 = 00000000
    bltz    a1, lbl_80A66954
    nop
    jal     func_800204D0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_80A66954:
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80A66960:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A6696C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t3, 0x014E(s0)             # 0000014E
    lh      t2, 0x0148(s0)             # 00000148
    lw      t6, 0x0024($sp)
    sll     t0, t3, 16
    sra     t0, t0, 16
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    blez    t2, lbl_80A66A78
    lw      v1, 0x1C44(t6)             # 00001C44
    lui     $at, 0x4248                # $at = 42480000
    lui     a1, %hi(var_80A66ED0)      # a1 = 80A60000
    mtc1    $at, $f16                  # $f16 = 50.00
    addiu   a1, a1, %lo(var_80A66ED0)  # a1 = 80A66ED0
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
lbl_80A669B8:
    and     a0, t0, a3
    bnel    a0, $zero, lbl_80A66A6C
    addiu   a2, a2, 0x0001             # a2 = 00000001
    multu   a2, t1
    lwc1    $f4, 0x0024(v1)            # 00000024
    lwc1    $f8, 0x0028(v1)            # 00000028
    lwc1    $f18, 0x002C(v1)           # 0000002C
    mflo    t7
    addu    v0, a1, t7
    lwc1    $f6, 0x0000(v0)            # 00000000
    lwc1    $f10, 0x0004(v0)           # 00000004
    sub.s   $f2, $f4, $f6
    lwc1    $f4, 0x0008(v0)            # 00000008
    sub.s   $f12, $f8, $f10
    mul.s   $f6, $f2, $f2
    sub.s   $f14, $f18, $f4
    mul.s   $f8, $f12, $f12
    add.s   $f10, $f6, $f8
    mul.s   $f18, $f14, $f14
    add.s   $f0, $f10, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A66A6C
    addiu   a2, a2, 0x0001             # a2 = 00000002
    bnel    a0, $zero, lbl_80A66AB8
    lw      $ra, 0x001C($sp)
    lh      v0, 0x0158(s0)             # 00000158
    or      t8, t3, a3                 # t8 = 00000001
    bne     a2, v0, lbl_80A66A58
    addiu   t5, v0, 0x0001             # t5 = 00000001
    lh      t9, 0x0150(s0)             # 00000150
    lh      t6, 0x015A(s0)             # 0000015A
    sh      t8, 0x014E(s0)             # 0000014E
    addiu   t4, t9, 0x0001             # t4 = 00000001
    addiu   t7, t6, 0x0051             # t7 = 00000051
    sh      t4, 0x0150(s0)             # 00000150
    sh      t5, 0x0158(s0)             # 00000158
    beq     $zero, $zero, lbl_80A66AB4
    sh      t7, 0x014C(s0)             # 0000014C
lbl_80A66A58:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A66AB8
    lw      $ra, 0x001C($sp)
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_80A66A6C:
    slt     $at, a2, t2
    bne     $at, $zero, lbl_80A669B8
    sll     a3, a3,  1
lbl_80A66A78:
    lh      t8, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_80A66A9C
    lh      t9, 0x0150(s0)             # 00000150
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A66AB8
    lw      $ra, 0x001C($sp)
    lh      t9, 0x0150(s0)             # 00000150
lbl_80A66A9C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    bnel    t2, t9, lbl_80A66AB8
    lw      $ra, 0x001C($sp)
    jal     func_80A66254
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80A66AB4:
    lw      $ra, 0x001C($sp)
lbl_80A66AB8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A66AC8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lbu     v0, 0x0181(s0)             # 00000181
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x00B3          # a2 = 000000B3
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A66B44
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    lwc1    $f4, 0x0028(s0)            # 00000028
    sb      t7, 0x0181(s0)             # 00000181
    lw      a3, 0x0024(s0)             # 00000024
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    swc1    $f6, 0x0014($sp)
    lh      t8, 0x008A(s0)             # 0000008A
    sw      a1, 0x003C($sp)
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x001C($sp)
    lh      a1, 0x0152(s0)             # 00000152
    bltz    a1, lbl_80A66B3C
    nop
    jal     func_800204D0
    lw      a0, 0x003C($sp)
lbl_80A66B3C:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A66B44:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A66B58:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A66BC0
    lw      $ra, 0x0014($sp)
    lb      t6, 0x0A68(v0)             # 00000A68
    bgezl   t6, lbl_80A66BC0
    lw      $ra, 0x0014($sp)
    lwc1    $f8, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x0028(v0)           # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A66BC0
    lw      $ra, 0x0014($sp)
    jal     func_80A66254
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
lbl_80A66BC0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A66BCC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x014C(s0)             # 0000014C
    beq     v0, $zero, lbl_80A66BF0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x014C(s0)             # 0000014C
lbl_80A66BF0:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lh      v0, 0x0144(s0)             # 00000144
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80A66C28
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_80020F04
    lw      a1, 0x0140(s0)             # 00000140
    lh      v0, 0x0144(s0)             # 00000144
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A66C28:
    beq     v0, $at, lbl_80A66C38
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80A66C60
lbl_80A66C38:
    addiu   a2, s0, 0x0170             # a2 = 00000170
    or      a1, a2, $zero              # a1 = 00000170
    jal     func_80050B00
    sw      a2, 0x0020($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0020($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
lbl_80A66C60:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A66C80: .word \
0x0A000900, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x0014001E, 0x00000000, 0x00000000
var_80A66CAC: .word 0x01120600, 0x00000000, 0x00010000, 0x000001C0
.word func_80A663B0
.word func_80A66210
.word func_80A66BCC
.word 0x00000000
var_80A66CCC: .word \
0x000C0006, 0x000E000F, 0x00030008, 0x0009000A, \
0x00000001, 0x00020012
var_80A66CE4: .word \
0x00000702, 0x0001F820, 0x00000040, 0x00000008, \
0x00000004, 0x00000010, 0x00000080, 0x00FF00FF, \
0x000000FF, 0x000000FF, 0x000000FF, 0x00FF00FF, \
0x00000000, 0x000000FF, 0x00000000, 0x000000FF, \
0x00800080, 0x00800080, 0x00800000, 0x00800000, \
0x00800000, 0x00800000, 0x00800000, 0x00000000, \
0x00800000, 0x00000000, 0x00800000

.section .rodata

var_80A66D50: .word var_80A66464
.word var_80A664C4
.word var_80A66514
.word var_80A66530
.word lbl_80A666E8
.word var_80A6659C
.word var_80A665FC
.word var_80A6664C
.word var_80A6665C
.word var_80A666C4
.word 0x00000000, 0x00000000

.bss

var_80A66E60: .space 0x70
var_80A66ED0: .space 0x70
