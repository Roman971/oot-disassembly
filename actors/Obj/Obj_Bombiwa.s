.section .text
func_80A83520:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_80A839D0)      # a3 = 80A80000
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_80A839D0)  # a3 = 80A839D0
    lw      a0, 0x0024($sp)
    jal     func_8004ACEC
    lw      a1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80050B00
    lw      a1, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A83578:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, %hi(var_80A83A04)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A83A04)  # a1 = 80A83A04
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A83520
    lw      a1, 0x0024($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A835D0
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A83634
    lw      $ra, 0x001C($sp)
lbl_80A835D0:
    lui     a2, %hi(var_80A839FC)      # a2 = 80A80000
    addiu   a2, a2, %lo(var_80A839FC)  # a2 = 80A839FC
    jal     func_80050344
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4780                # $at = 47800000
    bnel    t6, $zero, lbl_80A83614
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f12                  # $f12 = -200.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    mfc1    v0, $f4
    nop
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lui     $at, 0xC348                # $at = C3480000
lbl_80A83614:
    mtc1    $at, $f6                   # $f6 = -200.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    swc1    $f6, 0x00BC(s0)            # 000000BC
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0028(s0)           # 00000028
    lw      $ra, 0x001C($sp)
lbl_80A83634:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A83644:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a3, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A83670:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s6, 0x0090($sp)
    sw      s1, 0x007C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0094($sp)
    sw      s5, 0x008C($sp)
    sw      s4, 0x0088($sp)
    sw      s3, 0x0084($sp)
    sw      s2, 0x0080($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f30                  # $f30 = 16.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f28                  # $f28 = 8.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f26                  # $f26 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f24                  # $f24 = 5.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s0, %hi(var_80A83A14)      # s0 = 80A80000
    lui     s5, %hi(var_80A83A24)      # s5 = 80A80000
    lui     s4, 0x0600                 # s4 = 06000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s4, s4, 0x09E0             # s4 = 060009E0
    addiu   s5, s5, %lo(var_80A83A24)  # s5 = 80A83A24
    addiu   s0, s0, %lo(var_80A83A14)  # s0 = 80A83A14
    addiu   s3, $sp, 0x00A8            # s3 = FFFFFFE8
    addiu   s2, $sp, 0x00B4            # s2 = FFFFFFF4
lbl_80A83704:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f20
    lwc1    $f8, 0x0008(s1)            # 00000008
    mul.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00B4($sp)
    mul.s   $f16, $f0, $f24
    lwc1    $f18, 0x000C(s1)           # 0000000C
    add.s   $f4, $f16, $f18
    add.s   $f6, $f4, $f28
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00B8($sp)
    sub.s   $f8, $f0, $f20
    lwc1    $f16, 0x0010(s1)           # 00000010
    mul.s   $f10, $f8, $f22
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00BC($sp)
    sub.s   $f4, $f0, $f20
    mul.s   $f6, $f4, $f26
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00A8($sp)
    mul.s   $f8, $f0, $f30
    add.s   $f10, $f8, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00AC($sp)
    sub.s   $f16, $f0, $f20
    lh      v0, 0x0000(s0)             # 80A83A14
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF4
    mul.s   $f18, $f16, $f26
    slti    $at, v0, 0x000B
    or      a2, s3, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = FFFFFFF4
    addiu   t6, $zero, 0xFE70          # t6 = FFFFFE70
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    bne     $at, $zero, lbl_80A837AC
    swc1    $f18, 0x00B0($sp)
    beq     $zero, $zero, lbl_80A837B0
    addiu   v1, $zero, 0x0025          # v1 = 00000025
lbl_80A837AC:
    addiu   v1, $zero, 0x0021          # v1 = 00000021
lbl_80A837B0:
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, $zero, 0x0163          # t2 = 00000163
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0030($sp)
    sw      t9, 0x0028($sp)
    sw      t8, 0x001C($sp)
    sw      t6, 0x0010($sp)
    sw      v1, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    sw      v0, 0x0024($sp)
    sw      $zero, 0x002C($sp)
    jal     func_8001D998
    sw      s4, 0x003C($sp)
    addiu   s0, s0, 0x0002             # s0 = 80A83A16
    bne     s0, s5, lbl_80A83704
    nop
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x00A0          # t4 = 000000A0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    lui     a2, 0x4270                 # a2 = 42700000
    jal     func_80026308
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      $ra, 0x0094($sp)
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
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_80A83870:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002650C
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80A838C8
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x014D(s0)             # 0000014D
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A83924
    lui     $at, 0x4448                # $at = 44480000
    lw      t7, 0x0178(s0)             # 00000178
    lui     $at, 0x4000                # $at = 40000000
    ori     $at, $at, 0x0040           # $at = 40000040
    lw      t8, 0x0000(t7)             # 00000000
    and     t9, t8, $at
    beql    t9, $zero, lbl_80A83924
    lui     $at, 0x4448                # $at = 44480000
lbl_80A838C8:
    jal     func_80A83670
    or      a1, s1, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80058FF8
    addiu   a3, $zero, 0x2810          # a3 = 00002810
    lh      t0, 0x001C(s0)             # 0000001C
    sra     t1, t0, 15
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80A83910
    nop
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
lbl_80A83910:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A83970
    lw      $ra, 0x001C($sp)
    lui     $at, 0x4448                # $at = 44480000
lbl_80A83924:
    mtc1    $at, $f6                   # $f6 = 800.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x0001                # $at = 00010000
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    c.lt.s  $f4, $f6
    ori     $at, $at, 0x1E60           # $at = 00011E60
    sb      t3, 0x014D(s0)             # 0000014D
    addu    a1, s1, $at
    bc1f    lbl_80A8396C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    sw      a2, 0x0020($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      a2, 0x0020($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A8396C:
    lw      $ra, 0x001C($sp)
lbl_80A83970:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A83980:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x09E0             # a1 = 060009E0
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80A839B0: .word 0x01270600, 0x00000000, 0x01630000, 0x00000188
.word func_80A83578
.word func_80A83644
.word func_80A83870
.word func_80A83980
var_80A839D0: .word \
0x0C000D39, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x4FC1FFFE, 0x00000000, 0x00010100, \
0x00370046, 0x00000000, 0x00000000
var_80A839FC: .word 0x0000000C, 0x003CFF00
var_80A83A04: .word 0xC8500064, 0xB0F407D0, 0xB0F8015E, 0x30FC03E8
var_80A83A14: .word 0x0011000E, 0x000A0008, 0x00070005, 0x00030002
var_80A83A24: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata


