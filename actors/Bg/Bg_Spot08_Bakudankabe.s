.section .text
func_80B543D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0154             # a1 = 00000154
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_80B549AC)      # a3 = 80B50000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B549AC)  # a3 = 80B549AC
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B54424:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s5, 0x0088($sp)
    sw      s1, 0x0078($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0094($sp)
    sw      s7, 0x0090($sp)
    sw      s6, 0x008C($sp)
    sw      s4, 0x0084($sp)
    sw      s3, 0x0080($sp)
    sw      s2, 0x007C($sp)
    sw      s0, 0x0074($sp)
    sdc1    $f30, 0x0068($sp)
    sdc1    $f28, 0x0060($sp)
    sdc1    $f26, 0x0058($sp)
    sdc1    $f24, 0x0050($sp)
    sdc1    $f22, 0x0048($sp)
    sdc1    $f20, 0x0040($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s1)             # 000000B6
    mov.s   $f22, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s1)             # 000000B6
    lui     $at, 0x43DC                # $at = 43DC0000
    mtc1    $at, $f30                  # $f30 = 440.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f28                  # $f28 = 20.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s7, 0x0501                 # s7 = 05010000
    mtc1    $at, $f26                  # $f26 = 0.50
    mov.s   $f24, $f0
    addiu   s7, s7, 0xA880             # s7 = 0500A880
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s6, $sp, 0x00B4            # s6 = FFFFFFDC
    addiu   s4, $sp, 0x00C0            # s4 = FFFFFFE8
    swc1    $f2, 0x00BC($sp)
    swc1    $f2, 0x00B4($sp)
lbl_80B544BC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f26
    mul.s   $f20, $f4, $f30
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f26
    lwc1    $f8, 0x0024(s1)            # 00000024
    lui     $at, %hi(var_80B549F0)     # $at = 80B50000
    mul.s   $f2, $f6, $f28
    mtc1    s2, $f6                    # $f6 = 0.00
    mul.s   $f10, $f2, $f22
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f20, $f24
    lwc1    $f10, %lo(var_80B549F0)($at)
    cvt.s.w $f8, $f6
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f8, $f10
    swc1    $f4, 0x00C0($sp)
    lwc1    $f18, 0x0028(s1)           # 00000028
    mul.s   $f10, $f2, $f24
    add.s   $f4, $f18, $f28
    add.s   $f6, $f4, $f16
    mul.s   $f4, $f20, $f22
    swc1    $f6, 0x00C4($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f18, $f8, $f10
    sub.s   $f16, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00C8($sp)
    lui     $at, %hi(var_80B549F4)     # $at = 80B50000
    lwc1    $f6, %lo(var_80B549F4)($at)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f10                  # $f10 = 12.00
    sub.s   $f8, $f0, $f6
    mul.s   $f18, $f8, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00B8($sp)
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    mul.s   $f16, $f0, $f4
    add.s   $f8, $f16, $f6
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    nop
    sll     v1, v0, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0019
    sll     s3, v0, 16
    beq     $at, $zero, lbl_80B54598
    sra     s3, s3, 16
    beq     $zero, $zero, lbl_80B545AC
    addiu   s0, $zero, 0xFED4          # s0 = FFFFFED4
lbl_80B54598:
    slti    $at, v1, 0x0032
    beq     $at, $zero, lbl_80B545AC
    addiu   s0, $zero, 0xFE5C          # s0 = FFFFFE5C
    beq     $zero, $zero, lbl_80B545AC
    addiu   s0, $zero, 0xFE98          # s0 = FFFFFE98
lbl_80B545AC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B549F8)     # $at = 80B50000
    lwc1    $f18, %lo(var_80B549F8)($at)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    c.lt.s  $f0, $f18
    or      a2, s6, $zero              # a2 = FFFFFFDC
    or      a3, s4, $zero              # a3 = FFFFFFE8
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    bc1f    lbl_80B545E4
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    beq     $zero, $zero, lbl_80B545E8
    addiu   v0, $zero, 0x0041          # v0 = 00000041
lbl_80B545E4:
    addiu   v0, $zero, 0x0021          # v0 = 00000021
lbl_80B545E8:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sw      t3, 0x0038($sp)
    sw      t2, 0x0034($sp)
    sw      t1, 0x0030($sp)
    sw      t0, 0x002C($sp)
    sw      t9, 0x0028($sp)
    sw      s0, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t8, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      s3, 0x0024($sp)
    jal     func_8001D998
    sw      s7, 0x003C($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    slti    $at, s2, 0x0018
    bne     $at, $zero, lbl_80B544BC
    nop
    lui     $at, 0x42F0                # $at = 42F00000
    lui     s0, %hi(var_80B549BC)      # s0 = 80B50000
    lui     s2, %hi(var_80B549E0)      # s2 = 80B50000
    mtc1    $at, $f20                  # $f20 = 120.00
    addiu   s2, s2, %lo(var_80B549E0)  # s2 = 80B549E0
    addiu   s0, s0, %lo(var_80B549BC)  # s0 = 80B549BC
    lwc1    $f2, 0x0008(s0)            # 80B549C4
lbl_80B5465C:
    lwc1    $f0, 0x0000(s0)            # 80B549BC
    lwc1    $f4, 0x0024(s1)            # 00000024
    mul.s   $f16, $f2, $f22
    lwc1    $f18, 0x0004(s0)           # 80B549C0
    mfc1    a2, $f20
    mul.s   $f8, $f0, $f24
    addiu   t4, $zero, 0x0078          # t4 = 00000078
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    or      a0, s5, $zero              # a0 = 00000000
    add.s   $f6, $f4, $f16
    or      a1, s4, $zero              # a1 = FFFFFFE8
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    add.s   $f10, $f8, $f6
    mul.s   $f6, $f2, $f24
    swc1    $f10, 0x00C0($sp)
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f16, $f18, $f4
    mul.s   $f18, $f0, $f22
    swc1    $f16, 0x00C4($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    add.s   $f10, $f8, $f6
    sw      t4, 0x0010($sp)
    sub.s   $f4, $f10, $f18
    jal     func_80026308
    swc1    $f4, 0x00C8($sp)
    addiu   s0, s0, 0x000C             # s0 = 80B549C8
    bnel    s0, s2, lbl_80B5465C
    lwc1    $f2, 0x0008(s0)            # 80B549D0
    lw      $ra, 0x0094($sp)
    ldc1    $f20, 0x0040($sp)
    ldc1    $f22, 0x0048($sp)
    ldc1    $f24, 0x0050($sp)
    ldc1    $f26, 0x0058($sp)
    ldc1    $f28, 0x0060($sp)
    ldc1    $f30, 0x0068($sp)
    lw      s0, 0x0074($sp)
    lw      s1, 0x0078($sp)
    lw      s2, 0x007C($sp)
    lw      s3, 0x0080($sp)
    lw      s4, 0x0084($sp)
    lw      s5, 0x0088($sp)
    lw      s6, 0x008C($sp)
    lw      s7, 0x0090($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80B5471C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B54768
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B547AC
    lw      $ra, 0x001C($sp)
lbl_80B54768:
    jal     func_80B543D0
    lw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x39D4             # a0 = 060039D4
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, %hi(var_80B549E0)      # a1 = 80B50000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(var_80B549E0)  # a1 = 80B549E0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B547AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B547BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
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
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B54804:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x0165(s0)             # 00000165
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4448                # $at = 44480000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80B5487C
    lwc1    $f4, 0x0090(s0)            # 00000090
    jal     func_80B54424
    or      a1, s1, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2810          # a3 = 00002810
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B548A8
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0090(s0)            # 00000090
lbl_80B5487C:
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    c.lt.s  $f4, $f6
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80B548A8
    lw      $ra, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0154             # a2 = 00000154
    lw      $ra, 0x001C($sp)
lbl_80B548A8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B548B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0020($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a1, 0x0154             # a1 = 00000154
    jal     func_80050CE4
    sw      a1, 0x0018($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80050CE4
    lw      a1, 0x0018($sp)
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80050CE4
    lw      a1, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3898             # a1 = 06003898
    jal     func_80028048
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B54920: .word 0x01A80100, 0x00400000, 0x00740000, 0x00000234
.word func_80B5471C
.word func_80B547BC
.word func_80B54804
.word func_80B548B8
var_80B54940: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x00320032, \
0x00460064, 0x00000000, 0x00000000, 0x00000000, \
0x00000008, 0x00000000, 0x00010000, 0x0000FF9C, \
0x00320032, 0x00460064, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x00000064, 0x00320032, 0x00460064
var_80B549AC: .word 0x0A000900, 0x20000000, 0x00000003
.word var_80B54940
var_80B549BC: .word \
0x00000000, 0x42E94CCD, 0x42480000, 0x42E60000, \
0x42BE0000, 0x41200000, 0xC2E60000, 0x42BE0000, \
0x41200000
var_80B549E0: .word 0xC0500001, 0xB0F40C80, 0xB0F80320, 0x30FC03E8

.section .rodata

var_80B549F0: .word 0x40AD5555
var_80B549F4: .word 0x3E4CCCCD
var_80B549F8: .word 0x3ECCCCCD, 0x00000000

