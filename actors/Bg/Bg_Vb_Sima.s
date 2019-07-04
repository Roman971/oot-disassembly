.section .text
func_80979630:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a1, %hi(var_80979CA0)      # a1 = 80980000
    sw      $zero, 0x001C($sp)
    addiu   a1, a1, %lo(var_80979CA0)  # a1 = 80979CA0
    jal     func_80063F7C
    lw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0D68             # a0 = 06000D68
    jal     func_80033EF4
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x001C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0028($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80979698:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809796CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809796D8:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_8097977C
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    mtc1    $at, $f12                  # $f12 = 10.00
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0028($sp)
    sh      t4, 0x002A(a0)             # 0000002A
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x0030(a0)            # 00000030
    jal     func_80026D64
    sw      a0, 0x0018($sp)
    trunc.w.s $f10, $f0
    lw      a0, 0x0018($sp)
    mfc1    t8, $f10
    beq     $zero, $zero, lbl_80979788
    sb      t8, 0x0025(a0)             # 00000025
lbl_8097977C:
    slti    $at, v0, 0x00B4
    bne     $at, $zero, lbl_809796D8
    addiu   a0, a0, 0x003C             # a0 = 0000003C
lbl_80979788:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80979798:
    addiu   $sp, $sp, 0xFF10           # $sp = FFFFFF10
    sw      s7, 0x0078($sp)
    sw      s6, 0x0074($sp)
    or      s6, a0, $zero              # s6 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s5, 0x0070($sp)
    sw      s4, 0x006C($sp)
    sw      s3, 0x0068($sp)
    sw      s2, 0x0064($sp)
    sw      s1, 0x0060($sp)
    sw      s0, 0x005C($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lh      t6, 0x0164(s6)             # 00000164
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s7
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0164(s6)             # 00000164
    lw      s0, 0x0118(s6)             # 00000118
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640
    or      a0, s7, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80979BB8
    lw      $ra, 0x007C($sp)
    lbu     v0, 0x02C6(s0)             # 000002C6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s6, 0x0028             # a0 = 00000028
    bne     v0, $at, lbl_8097990C
    or      v1, v0, $zero              # v1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, 0xC47A                 # a1 = C47A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lh      a0, 0x0164(s6)             # 00000164
    sll     a0, a0, 15
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lh      a0, 0x0164(s6)             # 00000164
    add.s   $f8, $f0, $f0
    lwc1    $f6, 0x002C(s6)            # 0000002C
    addu    $at, a0, $zero
    sll     a0, a0,  3
    add.s   $f10, $f6, $f8
    subu    a0, a0, $at
    sll     a0, a0, 12
    sll     a0, a0, 16
    swc1    $f10, 0x002C(s6)           # 0000002C
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    trunc.w.s $f16, $f0
    addiu   s1, $zero, 0x0037          # s1 = 00000037
    lh      a0, 0x0164(s6)             # 00000164
    mfc1    t9, $f16
    addu    $at, a0, $zero
    sll     a0, a0,  2
    sll     t0, t9, 16
    sra     t1, t0, 16
    multu   t1, s1
    addu    a0, a0, $at
    sll     a0, a0, 12
    sll     a0, a0, 16
    sra     a0, a0, 16
    mflo    t2
    sh      t2, 0x00B4(s6)             # 000000B4
    jal     func_800636C4              # sins?
    nop
    trunc.w.s $f18, $f0
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    mfc1    t4, $f18
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    addiu   a0, $zero, 0x205C          # a0 = 0000205C
    sll     t5, t4, 16
    sra     t6, t5, 16
    multu   t6, s1
    addiu   a1, s6, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mflo    t7
    sh      t7, 0x00B8(s6)             # 000000B8
    sw      t8, 0x0014($sp)
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    beq     $zero, $zero, lbl_80979924
    lbu     v0, 0x02C6(s0)             # 000002C6
lbl_8097990C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_80979924
    nop
    jal     func_80020EB4
    or      a0, s6, $zero              # a0 = 00000000
    lbu     v0, 0x02C6(s0)             # 000002C6
lbl_80979924:
    beq     v0, $zero, lbl_80979BB4
    or      s5, $zero, $zero           # s5 = 00000000
    lui     $at, %hi(var_80979CB0)     # $at = 80980000
    lwc1    $f30, %lo(var_80979CB0)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f28                  # $f28 = 5.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f22                  # $f22 = 60.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s1, s0, 0x1960             # s1 = 00001960
    addiu   s4, $sp, 0x0090            # s4 = FFFFFFA0
    addiu   s3, $sp, 0x009C            # s3 = FFFFFFAC
    addiu   s2, $sp, 0x00A8            # s2 = FFFFFFB8
lbl_8097995C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80979CB4)     # $at = 80980000
    lwc1    $f4, %lo(var_80979CB4)($at)
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_809799A4
    mtc1    $at, $f26                  # $f26 = 80.00
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $at, $f24                  # $f24 = -80.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f12                  # $f12 = 160.00
    jal     func_80026D90
    nop
    beq     $zero, $zero, lbl_809799E8
    mov.s   $f26, $f0
    mtc1    $at, $f26                  # $f26 = 0.00
lbl_809799A4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f20
    lui     $at, 0x42A0                # $at = 42A00000
    bc1fl   lbl_809799D8
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    nop
    mul.s   $f26, $f6, $f8
    nop
    lui     $at, 0x4320                # $at = 43200000
lbl_809799D8:
    mtc1    $at, $f12                  # $f12 = 160.00
    jal     func_80026D90
    nop
    mov.s   $f24, $f0
lbl_809799E8:
    lui     $at, %hi(var_80979CB8)     # $at = 80980000
    lwc1    $f10, %lo(var_80979CB8)($at)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mul.s   $f16, $f24, $f10
    jal     func_80026D64
    swc1    $f16, 0x00CC($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, %hi(var_80979CBC)     # $at = 80980000
    lwc1    $f6, %lo(var_80979CBC)($at)
    add.s   $f4, $f0, $f18
    lui     $at, %hi(var_80979CC0)     # $at = 80980000
    mul.s   $f8, $f26, $f6
    lwc1    $f10, %lo(var_80979CC0)($at)
    lwc1    $f16, 0x00CC($sp)
    swc1    $f4, 0x00D0($sp)
    swc1    $f10, 0x00C4($sp)
    swc1    $f16, 0x00C0($sp)
    lui     $at, 0xC2A0                # $at = C2A00000
    swc1    $f8, 0x00D4($sp)
    lwc1    $f18, 0x00D4($sp)
    mtc1    $at, $f8                   # $f8 = -80.00
    lui     $at, 0x42C8                # $at = 42C80000
    swc1    $f18, 0x00C8($sp)
    lwc1    $f4, 0x0024(s6)            # 00000024
    swc1    $f8, 0x00B8($sp)
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f6, $f4, $f24
    swc1    $f6, 0x00B4($sp)
    lwc1    $f10, 0x002C(s6)           # 0000002C
    add.s   $f16, $f10, $f26
    jal     func_80026D64
    swc1    $f16, 0x00BC($sp)
    trunc.w.s $f18, $f0
    lui     t9, %hi(var_80979CA4)      # t9 = 80980000
    lui     t0, %hi(var_80979CA8)      # t0 = 80980000
    addiu   t0, t0, %lo(var_80979CA8)  # t0 = 80979CA8
    mfc1    t2, $f18
    addiu   t9, t9, %lo(var_80979CA4)  # t9 = 80979CA4
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sll     t3, t2, 16
    sra     t4, t3, 16
    addiu   t5, t4, 0x01F4             # t5 = 000001F4
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sw      t7, 0x0020($sp)
    sw      t5, 0x0018($sp)
    sw      t6, 0x001C($sp)
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    or      a0, s7, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00B4            # a1 = FFFFFFC4
    addiu   a2, $sp, 0x00CC            # a2 = FFFFFFDC
    jal     func_8001BE64
    addiu   a3, $sp, 0x00C0            # a3 = FFFFFFD0
    or      s0, $zero, $zero           # s0 = 00000000
    lwc1    $f4, 0x00CC($sp)
lbl_80979ACC:
    mov.s   $f12, $f28
    jal     func_80026D64
    swc1    $f4, 0x009C($sp)
    lwc1    $f6, 0x00D4($sp)
    swc1    $f0, 0x00A0($sp)
    swc1    $f30, 0x0094($sp)
    mov.s   $f12, $f20
    jal     func_80026D90
    swc1    $f6, 0x00A4($sp)
    swc1    $f0, 0x0090($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0098($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    lwc1    $f8, 0x00B4($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x00A8($sp)
    lwc1    $f16, 0x00B8($sp)
    mov.s   $f12, $f22
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x00AC($sp)
    lwc1    $f4, 0x00BC($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    add.s   $f6, $f0, $f4
    jal     func_80026D64
    swc1    $f6, 0x00B0($sp)
    trunc.w.s $f8, $f0
    or      a0, s1, $zero              # a0 = 00001960
    or      a1, s2, $zero              # a1 = FFFFFFB8
    or      a2, s3, $zero              # a2 = FFFFFFAC
    mfc1    t9, $f8
    or      a3, s4, $zero              # a3 = FFFFFFA0
    sll     t0, t9, 16
    sra     t1, t0, 16
    addiu   t2, t1, 0x0008             # t2 = 00000008
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_809796CC
    swc1    $f16, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0003
    bnel    $at, $zero, lbl_80979ACC
    lwc1    $f4, 0x00CC($sp)
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16
    sra     s5, s5, 16
    slti    $at, s5, 0x000A
    bne     $at, $zero, lbl_8097995C
    nop
lbl_80979BB4:
    lw      $ra, 0x007C($sp)
lbl_80979BB8:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    ldc1    $f30, 0x0050($sp)
    lw      s0, 0x005C($sp)
    lw      s1, 0x0060($sp)
    lw      s2, 0x0064($sp)
    lw      s3, 0x0068($sp)
    lw      s4, 0x006C($sp)
    lw      s5, 0x0070($sp)
    lw      s6, 0x0074($sp)
    lw      s7, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F0           # $sp = 00000000


func_80979BF8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x0240             # t2 = 06000240
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80979C80: .word 0x00AC0100, 0x00000000, 0x009C0000, 0x0000016C
.word func_80979630
.word func_80979698
.word func_80979798
.word func_80979BF8
var_80979CA0: .word 0x48500064
var_80979CA4: .word 0xFFFF00FF
var_80979CA8: .word 0xFF0A00FF, 0x00000000

.section .rodata

var_80979CB0: .word 0x3ECCCCCD
var_80979CB4: .word 0x3EA8F5C3
var_80979CB8: .word 0x3D4CCCCD
var_80979CBC: .word 0x3D4CCCCD
var_80979CC0: .word 0xBE99999A, 0x00000000, 0x00000000, 0x00000000

