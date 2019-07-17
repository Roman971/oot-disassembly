.section .text
func_80B4C860:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0154             # a1 = 00000154
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_80B4CE50)      # a3 = 80B50000
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_80B4CE50)  # a3 = 80B4CE50
    lw      a0, 0x0024($sp)
    jal     func_8004ACEC
    lw      a1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80050B00
    lw      a1, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B4C8B8:
    addiu   $sp, $sp, 0xFF18           # $sp -= 0xE8
    sw      s5, 0x008C($sp)
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s4, 0x0088($sp)
    sw      s3, 0x0084($sp)
    sw      s2, 0x0080($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f30                  # $f30 = 2.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f28                  # $f28 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s7, 0x0600                 # s7 = 06000000
    mtc1    $at, $f26                  # $f26 = 30.00
    addiu   s7, s7, 0x1000             # s7 = 06001000
    or      s3, $zero, $zero           # s3 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, a0, 0x0024             # s2 = 00000024
    addiu   s8, $zero, 0x0010          # s8 = 00000010
    addiu   s6, $sp, 0x00C4            # s6 = FFFFFFDC
    addiu   s4, $sp, 0x00D0            # s4 = FFFFFFE8
lbl_80B4C938:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    sll     a0, s1, 16
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f22, $f0
    mul.s   $f24, $f0, $f26
    nop
    mul.s   $f4, $f20, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00D0($sp)
    mul.s   $f6, $f0, $f28
    lui     $at, %hi(var_80B4CE90)     # $at = 80B50000
    lwc1    $f18, %lo(var_80B4CE90)($at)
    mul.s   $f10, $f22, $f24
    lwc1    $f16, 0x00D0($sp)
    mul.s   $f4, $f16, $f18
    add.s   $f8, $f6, $f30
    swc1    $f10, 0x00D8($sp)
    swc1    $f8, 0x00D4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C4($sp)
    mul.s   $f6, $f0, $f28
    lui     $at, %hi(var_80B4CE94)     # $at = 80B50000
    lwc1    $f16, %lo(var_80B4CE94)($at)
    lwc1    $f10, 0x00D8($sp)
    lwc1    $f4, 0x00D0($sp)
    mul.s   $f18, $f10, $f16
    add.s   $f8, $f6, $f30
    lwc1    $f16, 0x00D4($sp)
    swc1    $f8, 0x00C8($sp)
    swc1    $f18, 0x00CC($sp)
    lwc1    $f6, 0x0000(s2)            # 00000024
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x00D0($sp)
    lwc1    $f18, 0x0004(s2)           # 00000028
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x00D4($sp)
    lwc1    $f6, 0x0008(s2)            # 0000002C
    add.s   $f8, $f10, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00D8($sp)
    lui     $at, %hi(var_80B4CE98)     # $at = 80B50000
    lwc1    $f16, %lo(var_80B4CE98)($at)
    lui     $at, %hi(var_80B4CE9C)     # $at = 80B50000
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80B4CA10
    nop
    beq     $zero, $zero, lbl_80B4CA30
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80B4CA10:
    lwc1    $f18, %lo(var_80B4CE9C)($at)
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80B4CA30
    nop
    beq     $zero, $zero, lbl_80B4CA30
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80B4CA30:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f26
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    addiu   t6, $zero, 0xFF38          # t6 = FFFFFF38
    addiu   t7, $zero, 0x001C          # t7 = 0000001C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t1, $zero, 0x0046          # t1 = 00000046
    add.s   $f6, $f4, $f10
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x0170          # t3 = 00000170
    sw      t3, 0x0038($sp)
    trunc.w.s $f8, $f6
    sw      t2, 0x0034($sp)
    sw      t1, 0x0030($sp)
    sw      t8, 0x001C($sp)
    mfc1    t0, $f8
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    or      a2, s6, $zero              # a2 = FFFFFFDC
    or      a3, s4, $zero              # a3 = FFFFFFE8
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x002C($sp)
    sw      s7, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s1, s1, 0x4E20             # s1 = 00004E20
    sll     s1, s1, 16
    addiu   s3, s3, 0x0001             # s3 = 00000001
    bne     s3, s8, lbl_80B4C938
    sra     s1, s1, 16
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000024
    lui     a2, 0x42B4                 # a2 = 42B40000
    jal     func_80026308
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E8           # $sp += 0xE8


func_80B4CB34:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0014(a3)             # 00000014
    lh      v1, 0x01A4(a3)             # 000001A4
    bltz    v0, lbl_80B4CB74
    slti    $at, v0, 0x001A
    beq     $at, $zero, lbl_80B4CB74
    lw      a0, 0x001C($sp)
    sll     t6, v1,  8
    or      a2, v0, t6                 # a2 = 00000000
    sll     a2, a2, 16
    sra     a2, a2, 16
    jal     func_80013678
    addiu   a1, a3, 0x0024             # a1 = 00000024
lbl_80B4CB74:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4CB84:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      $zero, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, %hi(var_80B4CE7C)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B4CE7C)  # a1 = 80B4CE7C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B4C860
    lw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0B70             # a0 = 06000B70
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sh      $zero, 0x00B4(s0)          # 000000B4
    lh      v1, 0x00B4(s0)             # 000000B4
    lh      t7, 0x0018(s0)             # 00000018
    lui     t9, %hi(func_80B4CC78)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4CC78) # t9 = 80B4CC78
    andi    t8, t7, 0x003F             # t8 = 00000000
    sw      v0, 0x013C(s0)             # 0000013C
    sh      t8, 0x01A4(s0)             # 000001A4
    sw      t9, 0x01A0(s0)             # 000001A0
    sh      v1, 0x0018(s0)             # 00000018
    sh      v1, 0x0030(s0)             # 00000030
    sh      v1, 0x00B8(s0)             # 000000B8
    sh      v1, 0x0034(s0)             # 00000034
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4CC30:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a1, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sw      a3, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      a0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4CC78:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x0165(s0)             # 00000165
    andi    t7, t6, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_80B4CCC4
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x0018(s0)             # 00000018
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_80B4CCC4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002650C
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B4CD10
    lui     $at, 0x4416                # $at = 44160000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B4CCC4:
    jal     func_80B4C8B8
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8
    addiu   a3, $zero, 0x28AA          # a3 = 000028AA
    lw      t9, 0x0004(s0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    ori     t0, t9, 0x0010             # t0 = 00000010
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_800314D8
    lw      a2, 0x013C(s0)             # 0000013C
    lui     t1, %hi(func_80B4CD50)     # t1 = 80B50000
    addiu   t1, t1, %lo(func_80B4CD50) # t1 = 80B4CD50
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_80B4CD3C
    sw      t1, 0x01A0(s0)             # 000001A0
lbl_80B4CD10:
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    c.lt.s  $f4, $f6
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80B4CD40
    lw      $ra, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0154             # a2 = 00000154
lbl_80B4CD3C:
    lw      $ra, 0x001C($sp)
lbl_80B4CD40:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B4CD50:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    andi    t6, v0, 0x8000             # t6 = 00000000
    bne     t6, $zero, lbl_80B4CDB0
    nop
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    ori     t8, v0, 0x8000             # t8 = 00008000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x0095          # a2 = 00000095
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      a1, 0x003C($sp)
    sw      t8, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t7, 0x001C($sp)
    lw      a1, 0x003C($sp)
lbl_80B4CDB0:
    jal     func_80B4CB34
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4CDD4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x01A0(a0)             # 000001A0
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4CDF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0960             # a1 = 06000960
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B4CE30: .word 0x01A00100, 0x00000000, 0x01700000, 0x000001A8
.word func_80B4CB84
.word func_80B4CC30
.word func_80B4CDD4
.word func_80B4CDF8
var_80B4CE50: .word \
0x0A000900, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x40000040, 0x00000000, 0x00010000, \
0x001F0030, 0x00000000, 0x00000000
var_80B4CE7C: .word \
0xC8500064, 0xB0F40BB8, 0xB0F801F4, 0x30FC03E8, \
0x00000000

.section .rodata

var_80B4CE90: .word 0x3E4CCCCD
var_80B4CE94: .word 0x3E4CCCCD
var_80B4CE98: .word 0x3D4CCCCD
var_80B4CE9C: .word 0x3F333333

