.section .text
func_808C41A0:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_808C41AC:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x00A4            # s5 = FFFFFFFC
    addiu   s6, $sp, 0x00A0            # s6 = FFFFFFF8
    addiu   s7, $sp, 0x0094            # s7 = FFFFFFEC
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFE0
    sw      $ra, 0x006C($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     t6, %hi(var_808C6A48)      # t6 = 808C0000
    addiu   t6, t6, %lo(var_808C6A48)  # t6 = 808C6A48
    lw      t8, 0x0000(t6)             # 808C6A48
    lui     t9, %hi(var_808C6A4C)      # t9 = 808C0000
    addiu   t9, t9, %lo(var_808C6A4C)  # t9 = 808C6A4C
    sw      t8, 0x0000(s5)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 808C6A4C
    lui     t2, %hi(var_808C6A50)      # t2 = 808C0000
    addiu   t2, t2, %lo(var_808C6A50)  # t2 = 808C6A50
    sw      t1, 0x0000(s6)             # FFFFFFF8
    lw      t4, 0x0000(t2)             # 808C6A50
    lui     t5, %hi(var_808C6A5C)      # t5 = 808C0000
    addiu   t5, t5, %lo(var_808C6A5C)  # t5 = 808C6A5C
    sw      t4, 0x0000(s7)             # FFFFFFEC
    lw      t3, 0x0004(t2)             # 808C6A54
    sw      t3, 0x0004(s7)             # FFFFFFF0
    lw      t4, 0x0008(t2)             # 808C6A58
    sw      t4, 0x0008(s7)             # FFFFFFF4
    lw      t7, 0x0000(t5)             # 808C6A5C
    sw      t7, 0x0000(s8)             # FFFFFFE0
    lw      t6, 0x0004(t5)             # 808C6A60
    sw      t6, 0x0004(s8)             # FFFFFFE4
    lw      t7, 0x0008(t5)             # 808C6A64
    sw      t7, 0x0008(s8)             # FFFFFFE8
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x00B0($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f6                   # $f6 = 65536.00
    sub.s   $f4, $f0, $f20
    lw      a2, 0x00B0($sp)
    lwc1    $f16, 0x0080(s2)           # 00000080
    lui     t9, 0x0001                 # t9 = 00010000
    mul.s   $f8, $f4, $f6
    or      s1, a2, $zero              # s1 = 00000000
    swc1    $f16, 0x0080($sp)
    trunc.w.s $f10, $f8
    mfc1    s0, $f10
    nop
    sll     s0, s0, 16
    bltz    a2, lbl_808C4390
    sra     s0, s0, 16
    div     $zero, t9, a2
    bne     a2, $zero, lbl_808C42B8
    nop
    break   # 0x01C00
lbl_808C42B8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_808C42D0
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_808C42D0
    nop
    break   # 0x01800
lbl_808C42D0:
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f24                  # $f24 = 22.00
    lui     $at, 0x4080                # $at = 40800000
    mflo    s3
    sll     s3, s3, 16
    mtc1    $at, $f22                  # $f22 = 4.00
    sra     s3, s3, 16
lbl_808C42EC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f18, $f0, $f20
    mul.s   $f4, $f18, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0088($sp)
    sub.s   $f6, $f0, $f20
    sll     a0, s0, 16
    sra     a0, a0, 16
    mul.s   $f8, $f6, $f22
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0090($sp)
    mul.s   $f10, $f0, $f24
    lwc1    $f16, 0x0024(s2)           # 00000024
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x007C($sp)
    mul.s   $f4, $f0, $f24
    lwc1    $f6, 0x002C(s2)            # 0000002C
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    add.s   $f8, $f4, $f6
    sw      t0, 0x0018($sp)
    sw      s6, 0x0014($sp)
    sw      s5, 0x0010($sp)
    swc1    $f8, 0x0084($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x007C            # a1 = FFFFFFD4
    or      a2, s7, $zero              # a2 = FFFFFFEC
    jal     func_8001BE64
    or      a3, s8, $zero              # a3 = FFFFFFE0
    addu    s0, s0, s3
    sll     s0, s0, 16
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    bgez    s1, lbl_808C42EC
    sra     s0, s0, 16
lbl_808C4390:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_808C43CC:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     t6, %hi(var_808C6A68)      # t6 = 808C0000
    addiu   t6, t6, %lo(var_808C6A68)  # t6 = 808C6A68
    lw      t8, 0x0000(t6)             # 808C6A68
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addiu   t1, $zero, 0x00DC          # t1 = 000000DC
    sw      t8, 0x0000(a2)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 808C6A6C
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    sw      t7, 0x0004(a2)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 808C6A70
    or      a3, a2, $zero              # a3 = FFFFFFF4
    sw      t8, 0x0008(a2)             # FFFFFFFC
    lw      t9, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0024(t9)            # 00000024
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0080(t9)            # 00000080
    swc1    $f6, 0x002C($sp)
    lwc1    $f8, 0x002C(t9)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_8001CA7C
    swc1    $f8, 0x0030($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808C4454:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0044($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    lui     t7, %hi(var_808C6A74)      # t7 = 808C0000
    addiu   t7, t7, %lo(var_808C6A74)  # t7 = 808C6A74
    lw      t9, 0x0000(t7)             # 808C6A74
    addiu   t6, $sp, 0x0054            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808C6A78
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808C6A7C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    sub.s   $f6, $f0, $f4
    lw      t0, 0x0060($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f16, 0x0024(t0)           # 00000024
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0048($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    sub.s   $f6, $f0, $f4
    lw      t1, 0x0060($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    mul.s   $f10, $f6, $f8
    lwc1    $f16, 0x0028(t1)           # 00000028
    add.s   $f4, $f16, $f18
    add.s   $f6, $f10, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      t2, 0x0060($sp)
    lui     $at, 0x4270                # $at = 42700000
    sub.s   $f16, $f0, $f8
    mtc1    $at, $f18                  # $f18 = 60.00
    lwc1    $f4, 0x002C(t2)            # 0000002C
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    mul.s   $f10, $f16, $f18
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    add.s   $f6, $f10, $f4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    swc1    $f6, 0x0050($sp)
    sw      t1, 0x003C($sp)
    sw      t0, 0x0038($sp)
    sw      t9, 0x0034($sp)
    sw      t8, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0010($sp)
    or      a3, a2, $zero              # a3 = FFFFFFF4
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0014($sp)
    lw      a0, 0x0064($sp)
    jal     func_8001E1D4
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE8
    lw      $ra, 0x0044($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_808C4590:
    addiu   $sp, $sp, 0xFE28           # $sp = FFFFFE28
    sw      $ra, 0x001C($sp)
    lui     t6, %hi(var_808C6A80)      # t6 = 808C0000
    lw      t6, %lo(var_808C6A80)(t6)
    lui     t7, %hi(var_808C6A84)      # t7 = 808C0000
    lui     t8, %hi(var_808C6A88)      # t8 = 808C0000
    lw      t7, %lo(var_808C6A84)(t7)
    lw      t8, %lo(var_808C6A88)(t8)
    lui     t9, %hi(var_808C6A8C)      # t9 = 808C0000
    lw      t9, %lo(var_808C6A8C)(t9)
    sw      t6, 0x0034($sp)
    sw      t7, 0x0030($sp)
    sw      t8, 0x002C($sp)
    sw      t9, 0x0028($sp)
    lbu     t5, 0x0031($sp)
    lbu     t4, 0x0035($sp)
    lbu     t0, 0x0034($sp)
    lbu     t1, 0x0030($sp)
    lbu     t2, 0x002C($sp)
    lbu     t3, 0x0028($sp)
    lbu     t7, 0x0029($sp)
    lbu     t6, 0x002D($sp)
    lbu     t8, 0x0036($sp)
    sb      t5, 0x01C1($sp)
    sb      t4, 0x01BD($sp)
    sb      t0, 0x01BC($sp)
    sb      t1, 0x01C0($sp)
    sb      t2, 0x01C4($sp)
    sb      t3, 0x01C8($sp)
    lbu     t3, 0x0033($sp)
    lbu     t2, 0x0037($sp)
    lbu     t1, 0x002A($sp)
    lbu     t0, 0x002E($sp)
    lbu     t4, 0x002F($sp)
    lbu     t5, 0x002B($sp)
    lbu     t9, 0x0032($sp)
    sb      t7, 0x01C9($sp)
    sb      t6, 0x01C5($sp)
    sb      t8, 0x01BE($sp)
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $sp, 0x0038            # t8 = FFFFFE60
    sw      t6, 0x01CC($sp)
    sw      $zero, 0x01D0($sp)
    sw      t7, 0x01D4($sp)
    sw      t8, 0x0014($sp)
    addiu   a1, $sp, 0x0020            # a1 = FFFFFE48
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sb      t3, 0x01C3($sp)
    sb      t2, 0x01BF($sp)
    sb      t1, 0x01CA($sp)
    sb      t0, 0x01C6($sp)
    sb      t4, 0x01C7($sp)
    sb      t5, 0x01CB($sp)
    jal     func_8001AA5C
    sb      t9, 0x01C2($sp)
    lw      v0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x01D8           # $sp = 00000000
    jr      $ra
    nop


func_808C468C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0054($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    swc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      a0, 0x0054($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    add.s   $f10, $f6, $f8
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFFC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f10, 0x0040($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   t9, $sp, 0x0048            # t9 = FFFFFFF8
    sw      t9, 0x0024($sp)
    sw      a1, 0x0038($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    addiu   a3, s0, 0x03E0             # a3 = 000003E0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_800308B4
    swc1    $f16, 0x0044($sp)
    bne     v0, $zero, lbl_808C4718
    lw      a1, 0x0038($sp)
    beq     $zero, $zero, lbl_808C4748
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C4718:
    lw      t1, 0x0000(a1)             # 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    sw      t1, 0x03D4(s0)             # 000003D4
    lw      t0, 0x0004(a1)             # 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t0, 0x03D8(s0)             # 000003D8
    lwc1    $f18, 0x03D8(s0)           # 000003D8
    lw      t1, 0x0008(a1)             # 00000008
    sub.s   $f6, $f18, $f4
    sw      t1, 0x03DC(s0)             # 000003DC
    swc1    $f6, 0x03D8(s0)            # 000003D8
lbl_808C4748:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_808C475C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t7, %hi(var_808C6A90)      # t7 = 808C0000
    addiu   t7, t7, %lo(var_808C6A90)  # t7 = 808C6A90
    lw      t9, 0x0000(t7)             # 808C6A90
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808C6A94
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808C6A98
    lui     t1, %hi(var_808C6A9C)      # t1 = 808C0000
    addiu   t1, t1, %lo(var_808C6A9C)  # t1 = 808C6A9C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 808C6A9C
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 808C6AA0
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 808C6AA4
    sw      t2, 0x0004(t0)             # FFFFFFEC
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lwc1    $f6, 0x03F8(s0)            # 000003F8
    lwc1    $f4, 0x004C($sp)
    lwc1    $f10, 0x0050($sp)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0054($sp)
    swc1    $f8, 0x004C($sp)
    lwc1    $f16, 0x03F8(s0)           # 000003F8
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0040($sp)
    swc1    $f18, 0x0050($sp)
    lwc1    $f6, 0x03F8(s0)            # 000003F8
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0044($sp)
    swc1    $f8, 0x0054($sp)
    lwc1    $f16, 0x03F8(s0)           # 000003F8
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0048($sp)
    swc1    $f18, 0x0040($sp)
    lwc1    $f6, 0x03F8(s0)            # 000003F8
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0044($sp)
    lwc1    $f16, 0x03F8(s0)           # 000003F8
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0048($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    jal     func_800AB958
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFD0
    jal     func_800AA724
    nop
    jal     func_8001A890
    lw      a0, 0x03F4(s0)             # 000003F4
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    jal     func_80013F30
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFD0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_808C4864:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8001A890
    lw      a0, 0x03F4(a1)             # 000003F4
    jal     func_80014254
    or      a0, v0, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C4890:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C48C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3869          # a1 = 00003869
    lw      a0, 0x0018($sp)
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80027C98
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C4900:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0080(a3)            # 00000080
    lwc1    $f6, 0x03FC(a3)            # 000003FC
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    add.s   $f8, $f4, $f6
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    swc1    $f8, 0x0028(a3)            # 00000028
    jal     func_80027C98
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lwc1    $f10, 0x0150(a3)           # 00000150
    sh      $zero, 0x03C2(a3)          # 000003C2
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    nop
    sh      t7, 0x03B2(a3)             # 000003B2
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808C495C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x03BC(a3)             # 000003BC
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t6, $zero, lbl_808C49A0
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80027C98
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lwc1    $f4, 0x0150(a3)            # 00000150
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x03B2(a3)             # 000003B2
lbl_808C49A0:
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    sh      $zero, 0x03C2(a3)          # 000003C2
    swc1    $f8, 0x0060(a3)            # 00000060
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808C49BC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lui     t7, %hi(var_808C6AA8)      # t7 = 808C0000
    addiu   t7, t7, %lo(var_808C6AA8)  # t7 = 808C6AA8
    lw      t9, 0x0000(t7)             # 808C6AA8
    lw      t8, 0x0004(t7)             # 808C6AAC
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFE8
    sw      t9, 0x0000(t6)             # FFFFFFE8
    sw      t8, 0x0004(t6)             # FFFFFFEC
    lw      t8, 0x000C(t7)             # 808C6AB4
    lw      t9, 0x0008(t7)             # 808C6AB0
    addiu   s0, s3, 0x0184             # s0 = 00000184
    sw      t8, 0x000C(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t9, 0x0010(t7)             # 808C6AB8
    lw      t8, 0x0014(t7)             # 808C6ABC
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFE8
    addiu   s4, $sp, 0x0068            # s4 = 00000000
    sw      t9, 0x0010(t6)             # FFFFFFF8
    sw      t8, 0x0014(t6)             # FFFFFFFC
lbl_808C4A28:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004AB7C
    or      a1, s0, $zero              # a1 = 00000184
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000184
    or      a2, s3, $zero              # a2 = 00000000
    jal     func_8004ACEC
    lw      a3, 0x0000(s1)             # FFFFFFE8
    addiu   s1, s1, 0x0004             # s1 = FFFFFFEC
    bne     s1, s4, lbl_808C4A28
    addiu   s0, s0, 0x004C             # s0 = 000001D0
    lui     t0, 0x0003                 # t0 = 00030000
    lui     t1, 0xFFC0                 # t1 = FFC00000
    lui     t5, 0xFFCC                 # t5 = FFCC0000
    ori     t0, t0, 0xF8F9             # t0 = 0003F8F9
    ori     t1, t1, 0x0706             # t1 = FFC00706
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t3, $zero, 0x000D          # t3 = 0000000D
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    ori     t5, t5, 0x0706             # t5 = FFCC0706
    sw      t0, 0x01A4(s3)             # 000001A4
    sw      t1, 0x01F0(s3)             # 000001F0
    sb      t2, 0x0230(s3)             # 00000230
    sb      t3, 0x024A(s3)             # 0000024A
    sb      t4, 0x0248(s3)             # 00000248
    sw      t5, 0x023C(s3)             # 0000023C
    jal     func_80049E10
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lui     a2, %hi(var_808C691C)      # a2 = 808C0000
    addiu   a2, a2, %lo(var_808C691C)  # a2 = 808C691C
    addiu   a0, s3, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    addiu   s0, s3, 0x034C             # s0 = 0000034C
    or      a1, s0, $zero              # a1 = 0000034C
    jal     func_8004A484
    or      a0, s2, $zero              # a0 = 00000000
    lui     a3, %hi(var_808C6978)      # a3 = 808C0000
    addiu   t6, s3, 0x036C             # t6 = 0000036C
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_808C6978)  # a3 = 808C6978
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 0000034C
    jal     func_8004A874
    or      a2, s3, $zero              # a2 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_808C4AFC:
    lw      v0, 0x1C44(a1)             # 00001C44
    lh      t6, 0x0850(v0)             # 00000850
    addiu   v0, a0, 0x019C             # v0 = 0000019C
    beql    t6, $zero, lbl_808C4B44
    lw      t3, 0x0008(v0)             # 000001A4
    addiu   v0, a0, 0x019C             # v0 = 0000019C
    lw      t7, 0x0008(v0)             # 000001A4
    addiu   v1, $zero, 0xFFFD          # v1 = FFFFFFFD
    ori     t8, t7, 0x0002             # t8 = 00000002
    sw      t8, 0x0008(v0)             # 000001A4
    lw      t9, 0x01F0(a0)             # 000001F0
    lw      t1, 0x023C(a0)             # 0000023C
    and     t0, t9, v1
    and     t2, t1, v1
    sw      t0, 0x01F0(a0)             # 000001F0
    jr      $ra
    sw      t2, 0x023C(a0)             # 0000023C
lbl_808C4B40:
    lw      t3, 0x0008(v0)             # 000001A4
lbl_808C4B44:
    addiu   v1, $zero, 0xFFFD          # v1 = FFFFFFFD
    and     t4, t3, v1
    sw      t4, 0x0008(v0)             # 000001A4
    lw      t5, 0x01F0(a0)             # 000001F0
    lw      t7, 0x023C(a0)             # 0000023C
    ori     t6, t5, 0x0002             # t6 = 00000002
    ori     t8, t7, 0x0002             # t8 = 00000002
    sw      t6, 0x01F0(a0)             # 000001F0
    sw      t8, 0x023C(a0)             # 0000023C
    jr      $ra
    nop


func_808C4B70:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    addiu   a2, a0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    jal     func_80050B00
    sw      a2, 0x001C($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C4BB4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    addiu   a2, a0, 0x01D0             # a2 = 000001D0
    or      a1, a2, $zero              # a1 = 000001D0
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_808C4BF0
    subu    v1, $zero, v0
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_808C4BF8
    sra     v1, v1, 16
lbl_808C4BF0:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_808C4BF8:
    slti    $at, v1, 0x3FFC
    beql    $at, $zero, lbl_808C4C3C
    sw      a2, 0x0018($sp)
    addiu   a2, a0, 0x021C             # a2 = 0000021C
    or      a1, a2, $zero              # a1 = 0000021C
    sw      a2, 0x0018($sp)
    jal     func_80050B00
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    beq     $zero, $zero, lbl_808C4C60
    lw      $ra, 0x0014($sp)
    sw      a2, 0x0018($sp)
lbl_808C4C3C:
    jal     func_80050B00
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
lbl_808C4C60:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C4C6C:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s7, 0x0044($sp)
    sw      s2, 0x0030($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     t7, %hi(var_808C6AC0)      # t7 = 808C0000
    addiu   t7, t7, %lo(var_808C6AC0)  # t7 = 808C6AC0
    addiu   t0, t7, 0x0024             # t0 = 808C6AE4
    addiu   t6, $sp, 0x007C            # t6 = FFFFFFDC
lbl_808C4CB8:
    lw      t9, 0x0000(t7)             # 808C6AC0
    addiu   t7, t7, 0x000C             # t7 = 808C6ACC
    addiu   t6, t6, 0x000C             # t6 = FFFFFFE8
    sw      t9, -0x000C(t6)            # FFFFFFDC
    lw      t8, -0x0008(t7)            # 808C6AC4
    sw      t8, -0x0008(t6)            # FFFFFFE0
    lw      t9, -0x0004(t7)            # 808C6AC8
    bne     t7, t0, lbl_808C4CB8
    sw      t9, -0x0004(t6)            # FFFFFFE4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s8, s7, $at
    lui     $at, %hi(var_808C6B00)     # $at = 808C0000
    lwc1    $f22, %lo(var_808C6B00)($at)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f20                  # $f20 = 32768.00
    addiu   s6, s2, 0x0024             # s6 = 00000024
    addiu   s0, $sp, 0x007C            # s0 = FFFFFFDC
    or      s3, $zero, $zero           # s3 = 00000000
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s4, s2, 0x0268             # s4 = 00000268
    addiu   s5, $sp, 0x0070            # s5 = FFFFFFD0
lbl_808C4D10:
    lw      t2, 0x0000(s6)             # 00000024
    lwc1    $f4, 0x0000(s0)            # FFFFFFDC
    lwc1    $f10, 0x0004(s0)           # FFFFFFE0
    sw      t2, 0x0000(s5)             # FFFFFFD0
    lw      t1, 0x0004(s6)             # 00000028
    sw      t1, 0x0004(s5)             # FFFFFFD4
    lw      t2, 0x0008(s6)             # 0000002C
    sw      t2, 0x0008(s5)             # FFFFFFD8
    lwc1    $f6, 0x03F8(s2)            # 000003F8
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(s0)            # FFFFFFE4
    swc1    $f8, 0x0000(s0)            # FFFFFFDC
    lwc1    $f16, 0x03F8(s2)           # 000003F8
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(s0)           # FFFFFFE0
    lwc1    $f6, 0x03F8(s2)            # 000003F8
    mul.s   $f8, $f4, $f6
    jal     func_800AA6EC
    swc1    $f8, 0x0008(s0)            # FFFFFFE4
    lwc1    $f12, 0x0070($sp)
    lwc1    $f14, 0x0074($sp)
    lw      a2, 0x0078($sp)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t3, 0x03AC(s2)             # 000003AC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t3, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    div.s   $f18, $f16, $f20
    mul.s   $f12, $f18, $f22
    jal     func_800AAB94
    nop
    or      a0, s0, $zero              # a0 = FFFFFFDC
    jal     func_800AB958
    or      a1, s5, $zero              # a1 = FFFFFFD0
    jal     func_800AA724
    nop
    lwc1    $f4, 0x0070($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    trunc.w.s $f6, $f4
    or      a2, s4, $zero              # a2 = 00000268
    mfc1    t5, $f6
    nop
    sh      t5, 0x02AE(s1)             # 000002AE
    lwc1    $f8, 0x0074($sp)
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sh      t7, 0x02B0(s1)             # 000002B0
    lwc1    $f16, 0x0078($sp)
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    jal     func_8004C130              # CollisionCheck_setOT
    sh      t8, 0x02B2(s1)             # 000002B2
    addiu   s3, s3, 0x004C             # s3 = 0000004C
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    addiu   s0, s0, 0x000C             # s0 = FFFFFFE8
    addiu   s1, s1, 0x004C             # s1 = 0000004C
    bne     s3, $at, lbl_808C4D10
    addiu   s4, s4, 0x004C             # s4 = 000002B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_808C4E44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x00AF(a0)             # 000000AF
    bnel    t6, $zero, lbl_808C4E74
    lh      v0, 0x03C4(a0)             # 000003C4
    lw      t8, 0x0180(a0)             # 00000180
    lui     t7, %hi(func_808C62C8)     # t7 = 808C0000
    addiu   t7, t7, %lo(func_808C62C8) # t7 = 808C62C8
    bnel    t7, t8, lbl_808C4EFC
    lw      $ra, 0x0014($sp)
    lh      v0, 0x03C4(a0)             # 000003C4
lbl_808C4E74:
    bne     v0, $zero, lbl_808C4E84
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_808C4E8C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808C4E84:
    sh      t9, 0x03C4(a0)             # 000003C4
    lh      v1, 0x03C4(a0)             # 000003C4
lbl_808C4E8C:
    bne     v1, $zero, lbl_808C4EA0
    lw      a1, 0x001C($sp)
    jal     func_808C4C6C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_808C4EA0:
    lh      v0, 0x03C0(a0)             # 000003C0
    beq     v0, $zero, lbl_808C4EB0
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x03C0(a0)             # 000003C0
lbl_808C4EB0:
    lh      v1, 0x03BC(a0)             # 000003BC
    bne     v1, $zero, lbl_808C4EC4
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_808C4ECC
    lh      v0, 0x03C0(a0)             # 000003C0
lbl_808C4EC4:
    sh      t1, 0x03BC(a0)             # 000003BC
    lh      v0, 0x03C0(a0)             # 000003C0
lbl_808C4ECC:
    bnel    v0, $zero, lbl_808C4EFC
    lw      $ra, 0x0014($sp)
    lh      t2, 0x03BC(a0)             # 000003BC
    lw      a1, 0x001C($sp)
    bnel    t2, $zero, lbl_808C4EFC
    lw      $ra, 0x0014($sp)
    jal     func_808C4B70
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_808C4BB4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_808C4EFC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C4F08:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a2, $zero, 0xFFFE          # a2 = FFFFFFFE
    addiu   a1, $zero, 0x00E4          # a1 = 000000E4
    sw      t7, 0x002C($sp)
lbl_808C4F3C:
    lbu     a0, 0x027B(v0)             # 0000027B
    addiu   v1, v1, 0x004C             # v1 = 0000004C
    andi    t8, a0, 0x0001             # t8 = 00000000
    sltu    t9, $zero, t8
    beq     t9, $zero, lbl_808C4F5C
    and     t0, a0, a2
    sb      t0, 0x027B(v0)             # 0000027B
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_808C4F5C:
    bne     v1, a1, lbl_808C4F3C
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    bnel    a3, $zero, lbl_808C4F78
    lh      t1, 0x03B4(s0)             # 000003B4
    beq     $zero, $zero, lbl_808C4FE0
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t1, 0x03B4(s0)             # 000003B4
lbl_808C4F78:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t1, $zero, lbl_808C4F90
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    jal     func_80022FD0
    addiu   a1, $zero, 0x3884          # a1 = 00003884
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
lbl_808C4F90:
    sh      t2, 0x03C4(s0)             # 000003C4
    lw      a0, 0x0034($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    addu    t9, t9, a0
    lw      t9, 0x1D58(t9)             # 00011D58
    jalr    $ra, t9
    nop
    lw      a0, 0x002C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lh      a3, 0x008A(s0)             # 0000008A
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_80022EC4
    swc1    $f4, 0x0010($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C4FE0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808C4FF4:
    lbu     v1, 0x022D(a0)             # 0000022D
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    andi    t6, v1, 0x0002             # t6 = 00000000
    sltu    t7, $zero, t6
    bne     t7, $zero, lbl_808C5018
    andi    t8, v1, 0xFFFD             # t8 = 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C5018:
    sb      t8, 0x022D(a0)             # 0000022D
    sh      t9, 0x03C0(a0)             # 000003C0
    sb      $zero, 0x03CC(a0)          # 000003CC
    sh      t0, 0x03B4(a0)             # 000003B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_808C5034:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lbu     t6, 0x0195(s0)             # 00000195
    or      a3, $zero, $zero           # a3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_808C5078
    addiu   v0, s0, 0x0184             # v0 = 00000184
    lbu     t8, 0x0011(v0)             # 00000195
    lw      t0, 0x003C(v0)             # 000001C0
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sb      t9, 0x0011(v0)             # 00000195
    lw      a3, 0x0000(t0)             # 00000000
lbl_808C5078:
    lbu     t1, 0x01E1(s0)             # 000001E1
    addiu   v0, s0, 0x01D0             # v0 = 000001D0
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_808C50A8
    nop
    lbu     t3, 0x0011(v0)             # 000001E1
    lw      t5, 0x003C(v0)             # 0000020C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    sb      t4, 0x0011(v0)             # 000001E1
    lw      t6, 0x0000(t5)             # 00000000
    or      a3, a3, t6                 # a3 = 00000000
lbl_808C50A8:
    bnel    v1, $zero, lbl_808C50BC
    lbu     t8, 0x00B1(s0)             # 000000B1
    beq     $zero, $zero, lbl_808C5210
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t8, 0x00B1(s0)             # 000000B1
lbl_808C50BC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    bne     v0, t8, lbl_808C5110
    sh      t7, 0x03C0(s0)             # 000003C0
    lh      t9, 0x03BE(s0)             # 000003BE
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_808C5108
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    sh      t0, 0x03BE(s0)             # 000003BE
    lh      t1, 0x03BE(s0)             # 000003BE
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    sw      t1, 0x0010($sp)
lbl_808C5108:
    beq     $zero, $zero, lbl_808C5210
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C5110:
    sh      $zero, 0x03BE(s0)          # 000003BE
    lh      t2, 0x03BE(s0)             # 000003BE
    sh      v0, 0x03C4(s0)             # 000003C4
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    sh      t2, 0x03B4(s0)             # 000003B4
    sw      a3, 0x0028($sp)
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lwc1    $f4, 0x0150(s0)            # 00000150
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t4, $f6
    nop
    sh      t4, 0x03BC(s0)             # 000003BC
    lh      t5, 0x03BC(s0)             # 000003BC
    jal     func_80027090
    sw      t5, 0x0010($sp)
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808C518C
    lw      a0, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x386B          # a1 = 0000386B
    beq     $zero, $zero, lbl_808C5210
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C518C:
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    and     t7, t6, $at
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t7, 0x0004(s0)             # 00000004
    sh      t8, 0x03B0(s0)             # 000003B0
    sh      t9, 0x03C8(s0)             # 000003C8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3885          # a1 = 00003885
    jal     func_80022FD0
    swc1    $f8, 0x006C(s0)            # 0000006C
    lw      t0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF820           # $at = 0001F820
    and     t1, t0, $at
    beq     t1, $zero, lbl_808C5200
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C643C)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C643C) # a1 = 808C643C
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    beq     $zero, $zero, lbl_808C520C
    sh      t2, 0x03C6(s0)             # 000003C6
lbl_808C5200:
    lui     a1, %hi(func_808C61F4)     # a1 = 808C0000
    jal     func_808C41A0
    addiu   a1, a1, %lo(func_808C61F4) # a1 = 808C61F4
lbl_808C520C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C5210:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_808C5224:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_808C4FF4
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808C5248
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_808C529C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C5248:
    lw      a1, 0x001C($sp)
    lbu     t6, 0x1C26(a1)             # 00001C26
    beq     t6, $zero, lbl_808C5260
    nop
    beq     $zero, $zero, lbl_808C529C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C5260:
    jal     func_808C5034
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_808C5278
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_808C529C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C5278:
    lh      t7, 0x03BE(a0)             # 000003BE
    bnel    t7, $zero, lbl_808C529C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x03BC(a0)             # 000003BC
    bnel    t8, $zero, lbl_808C529C
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_808C4F08
    lw      a1, 0x001C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C529C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C52AC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_808C52D4
    lui     $at, %hi(var_808C6B04)     # $at = 808C0000
    lwc1    $f14, %lo(var_808C6B04)($at)
lbl_808C52D4:
    lw      a0, 0x0368(a2)             # 00000368
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, a2, $zero              # v0 = 00000000
    lh      t7, 0x002E(a0)             # 0000002E
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f12, $f4
    mul.s   $f12, $f12, $f14
    trunc.w.s $f6, $f12
    mfc1    t9, $f6
    nop
    sh      t9, 0x002E(a0)             # 0000002E
    addiu   a0, $zero, 0x01C8          # a0 = 000001C8
    addiu   v1, v1, 0x004C             # v1 = 0000004C
    beq     v1, a0, lbl_808C5374
    lh      t0, 0x01C8(v0)             # 000001C8
lbl_808C5314:
    lh      t1, 0x01C4(v0)             # 000001C4
    mtc1    t0, $f18                   # $f18 = 0.00
    lh      t2, 0x01C6(v0)             # 000001C6
    mtc1    t1, $f16                   # $f16 = 0.00
    cvt.s.w $f18, $f18
    mtc1    t2, $f12                   # $f12 = 0.00
    addiu   v1, v1, 0x004C             # v1 = 00000098
    addiu   v0, v0, 0x004C             # v0 = 0000004C
    lh      t0, 0x01C8(v0)             # 00000214
    cvt.s.w $f16, $f16
    mul.s   $f18, $f18, $f14
    cvt.s.w $f12, $f12
    mul.s   $f16, $f16, $f14
    trunc.w.s $f18, $f18
    mul.s   $f12, $f12, $f14
    mfc1    t4, $f18
    trunc.w.s $f16, $f16
    sh      t4, 0x017C(v0)             # 000001C8
    trunc.w.s $f12, $f12
    mfc1    t6, $f16
    mfc1    t8, $f12
    sh      t6, 0x0178(v0)             # 000001C4
    bne     v1, a0, lbl_808C5314
    sh      t8, 0x017A(v0)             # 000001C6
lbl_808C5374:
    mtc1    t0, $f18                   # $f18 = 0.00
    lh      t1, 0x01C4(v0)             # 00000210
    lh      t2, 0x01C6(v0)             # 00000212
    cvt.s.w $f18, $f18
    mtc1    t1, $f16                   # $f16 = 0.00
    mtc1    t2, $f12                   # $f12 = 0.00
    addiu   v0, v0, 0x004C             # v0 = 00000098
    cvt.s.w $f16, $f16
    mul.s   $f18, $f18, $f14
    nop
    mul.s   $f16, $f16, $f14
    cvt.s.w $f12, $f12
    trunc.w.s $f18, $f18
    mul.s   $f12, $f12, $f14
    mfc1    t4, $f18
    trunc.w.s $f16, $f16
    sh      t4, 0x017C(v0)             # 00000214
    trunc.w.s $f12, $f12
    mfc1    t6, $f16
    mfc1    t8, $f12
    sh      t6, 0x0178(v0)             # 00000210
    sh      t8, 0x017A(v0)             # 00000212
    lui     $at, %hi(var_808C6B08)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C6B08)($at)
    or      a0, a2, $zero              # a0 = 00000000
    sw      a2, 0x0020($sp)
    mul.s   $f10, $f8, $f14
    swc1    $f14, 0x001C($sp)
    mfc1    a1, $f10
    jal     func_80020F88
    nop
    lui     $at, 0x4200                # $at = 42000000
    lwc1    $f14, 0x001C($sp)
    mtc1    $at, $f16                  # $f16 = 32.00
    lw      a2, 0x0020($sp)
    mul.s   $f18, $f16, $f14
    swc1    $f14, 0x03F8(a2)           # 000003F8
    swc1    $f18, 0x03FC(a2)           # 000003FC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808C5418:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a1, 0x0034($sp)
    sll     a1, a1, 16
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    lh      s0, 0x0042($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x0024($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    mtc1    s0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808C6B0C)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C6B0C)($at)
    cvt.s.w $f6, $f4
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lbu     t6, 0x03CD(s1)             # 000003CD
    addiu   a0, $sp, 0x002E            # a0 = FFFFFFFE
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      t6, 0x002E($sp)
    mul.s   $f10, $f6, $f8
    lbu     t7, 0x03CE(s1)             # 000003CE
    sh      t7, 0x002C($sp)
    lbu     t8, 0x03CF(s1)             # 000003CF
    trunc.w.s $f16, $f10
    sh      t8, 0x002A($sp)
    mfc1    t0, $f16
    nop
    sll     t1, t0, 16
    sra     t2, t1, 16
    div     $zero, t3, t2
    mflo    s0
    sll     s0, s0, 16
    sra     s0, s0, 16
    bne     t2, $zero, lbl_808C54AC
    nop
    break   # 0x01C00
lbl_808C54AC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_808C54C4
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_808C54C4
    nop
    break   # 0x01800
lbl_808C54C4:
    bgtzl   s0, lbl_808C54D4
    sll     a3, s0, 16
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    sll     a3, s0, 16
lbl_808C54D4:
    sra     a3, a3, 16
    jal     func_80064508
    sw      s0, 0x0010($sp)
    sll     a3, s0, 16
    sra     a3, a3, 16
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFFC
    lh      a1, 0x003A($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    sw      s0, 0x0010($sp)
    sll     a3, s0, 16
    sra     a3, a3, 16
    addiu   a0, $sp, 0x002A            # a0 = FFFFFFFA
    lh      a1, 0x003E($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    sw      s0, 0x0010($sp)
    lh      t4, 0x002E($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      t4, 0x03CD(s1)             # 000003CD
    lh      t5, 0x002C($sp)
    sb      t5, 0x03CE(s1)             # 000003CE
    lh      t6, 0x002A($sp)
    sb      t6, 0x03CF(s1)             # 000003CF
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808C5548:
    lh      v0, 0x03BE(a0)             # 000003BE
    bne     v0, $zero, lbl_808C555C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C555C:
    sh      t6, 0x03BE(a0)             # 000003BE
    jr      $ra
    nop


func_808C5568:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x005C($sp)
    lh      v0, 0x03BE(s0)             # 000003BE
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_808C55BC
    slti    $at, v0, 0x001E
    beq     $at, $zero, lbl_808C57F4
    andi    t6, v0, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_808C55B0
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0x0800             # t8 = 00000800
    beq     $zero, $zero, lbl_808C57F4
    sh      t8, 0x00B6(s0)             # 000000B6
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_808C55B0:
    addiu   t3, t9, 0xF800             # t3 = FFFFF800
    beq     $zero, $zero, lbl_808C57F4
    sh      t3, 0x00B6(s0)             # 000000B6
lbl_808C55BC:
    lh      t4, 0x03B4(s0)             # 000003B4
    bnel    t4, $zero, lbl_808C57F8
    lw      $ra, 0x0024($sp)
    lh      t5, 0x03C8(s0)             # 000003C8
    bnel    t5, $zero, lbl_808C57F8
    lw      $ra, 0x0024($sp)
    lh      t6, 0x03C6(s0)             # 000003C6
    bnel    t6, $zero, lbl_808C57F8
    lw      $ra, 0x0024($sp)
    lh      t7, 0x03BC(s0)             # 000003BC
    bnel    t7, $zero, lbl_808C55FC
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t8, 0x03C4(s0)             # 000003C4
    beql    t8, $zero, lbl_808C560C
    lw      t4, 0x0180(s0)             # 00000180
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_808C55FC:
    addiu   t3, t9, 0x2000             # t3 = 00002000
    beq     $zero, $zero, lbl_808C57F4
    sh      t3, 0x00B6(s0)             # 000000B6
    lw      t4, 0x0180(s0)             # 00000180
lbl_808C560C:
    lui     v1, %hi(func_808C5E2C)     # v1 = 808C0000
    addiu   v1, v1, %lo(func_808C5E2C) # v1 = 808C5E2C
    beq     v1, t4, lbl_808C5624
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      t5, 0x03B8(s0)             # 000003B8
    sh      $zero, 0x03BA(s0)          # 000003BA
lbl_808C5624:
    lh      v0, 0x03B8(s0)             # 000003B8
    beq     v0, $zero, lbl_808C5668
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x03B8(s0)             # 000003B8
    lh      t7, 0x03B8(s0)             # 000003B8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3884          # a1 = 00003884
    bnel    t7, $zero, lbl_808C56A8
    addiu   t2, s0, 0x00B4             # t2 = 000000B4
    sw      v1, 0x0038($sp)
    jal     func_80022FD0
    sh      a2, 0x0056($sp)
    lw      v1, 0x0038($sp)
    lhu     a2, 0x0056($sp)
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    beq     $zero, $zero, lbl_808C56A4
    sh      t8, 0x03BA(s0)             # 000003BA
lbl_808C5668:
    lh      v0, 0x03BA(s0)             # 000003BA
    beq     v0, $zero, lbl_808C56A4
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x03BA(s0)             # 000003BA
    lh      t3, 0x03BA(s0)             # 000003BA
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3884          # a1 = 00003884
    bnel    t3, $zero, lbl_808C56A4
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80022FD0
    sw      v1, 0x0038($sp)
    lw      v1, 0x0038($sp)
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    sh      t4, 0x03B8(s0)             # 000003B8
    ori     a2, $zero, 0x8000          # a2 = 00008000
lbl_808C56A4:
    addiu   t2, s0, 0x00B4             # t2 = 000000B4
lbl_808C56A8:
    lwl     t7, 0x0000(t2)             # 000000B4
    lwr     t7, 0x0003(t2)             # 000000B7
    addiu   t5, $sp, 0x0050            # t5 = FFFFFFF8
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    sw      t7, 0x0000(t5)             # FFFFFFF8
    lhu     t7, 0x0004(t2)             # 000000B8
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t7, 0x0004(t5)             # FFFFFFFC
    lw      t8, 0x0180(s0)             # 00000180
    lh      a0, 0x0052($sp)
    bnel    v1, t8, lbl_808C56E4
    lh      v1, 0x03AC(s0)             # 000003AC
    beq     $zero, $zero, lbl_808C56E4
    lh      v1, 0x008A(s0)             # 0000008A
    lh      v1, 0x03AC(s0)             # 000003AC
lbl_808C56E4:
    xor     t0, v1, a2
    subu    v0, a0, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_808C5704
    or      t1, a2, $zero              # t1 = 00008000
    beq     $zero, $zero, lbl_808C5708
    or      v1, v0, $zero              # v1 = 00000000
lbl_808C5704:
    subu    v1, $zero, v0
lbl_808C5708:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_808C5740
    addiu   a0, a0, 0x2000             # a0 = 00002000
    sll     a1, t0, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x0052            # a0 = FFFFFFFA
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t9, 0x0010($sp)
    sw      t1, 0x0038($sp)
    jal     func_80064508
    sw      t2, 0x0034($sp)
    lw      t1, 0x0038($sp)
    beq     $zero, $zero, lbl_808C574C
    lw      t2, 0x0034($sp)
lbl_808C5740:
    sll     a0, a0, 16
    sra     a0, a0, 16
    sh      a0, 0x0052($sp)
lbl_808C574C:
    addiu   t3, $sp, 0x0050            # t3 = FFFFFFF8
    lw      t5, 0x0000(t3)             # FFFFFFF8
    addiu   v0, $sp, 0x003C            # v0 = FFFFFFE4
    sw      t5, 0x0000(v0)             # FFFFFFE4
    lhu     t5, 0x0004(t3)             # FFFFFFFC
    lw      t7, 0x0000(v0)             # FFFFFFE4
    sh      t5, 0x0004(v0)             # FFFFFFE8
    swl     t7, 0x0030(s0)             # 00000030
    swr     t7, 0x0033(s0)             # 00000033
    lhu     t7, 0x0004(v0)             # FFFFFFE8
    sh      t7, 0x0034(s0)             # 00000034
    lwl     t9, 0x0000(v0)             # FFFFFFE4
    lwr     t9, 0x0003(v0)             # FFFFFFE7
    swl     t9, 0x0000(t2)             # 00000000
    swr     t9, 0x0003(t2)             # 00000003
    lhu     t9, 0x0004(v0)             # FFFFFFE8
    bne     t1, $zero, lbl_808C57AC
    sh      t9, 0x0004(t2)             # 00000004
    lh      v0, 0x03B8(s0)             # 000003B8
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_808C57AC
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_808C57CC
    sra     v1, v1, 16
lbl_808C57AC:
    ori     $at, $zero, 0x8000         # $at = 00008000
    bnel    t1, $at, lbl_808C57F8
    lw      $ra, 0x0024($sp)
    lh      v0, 0x03BA(s0)             # 000003BA
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_808C57F4
    sll     v1, v0, 16
    sra     v1, v1, 16
lbl_808C57CC:
    andi    t3, v1, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_808C57EC
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   t5, t4, 0x0800             # t5 = 00000800
    beq     $zero, $zero, lbl_808C57F4
    sh      t5, 0x00B6(s0)             # 000000B6
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_808C57EC:
    addiu   t7, t6, 0xF800             # t7 = FFFFF800
    sh      t7, 0x00B6(s0)             # 000000B6
lbl_808C57F4:
    lw      $ra, 0x0024($sp)
lbl_808C57F8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_808C5808:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(a0)            # 00000060
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_808C5838
    nop
    lh      t6, 0x03B0(a0)             # 000003B0
    bnel    t6, $zero, lbl_808C5844
    lhu     t7, 0x0088(a0)             # 00000088
lbl_808C5838:
    beq     $zero, $zero, lbl_808C58C0
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t7, 0x0088(a0)             # 00000088
lbl_808C5844:
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_808C585C
    nop
    beq     $zero, $zero, lbl_808C58C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C585C:
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_808C41AC
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      a0, 0x0018($sp)
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    lui     $at, 0x40C0                # $at = 40C00000
    lh      v0, 0x03B0(a0)             # 000003B0
    mtc1    $at, $f8                   # $f8 = 6.00
    subu    t0, t9, v0
    mtc1    t0, $f10                   # $f10 = 0.00
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x03B0(a0)             # 000003B0
    cvt.s.w $f16, $f10
    lh      t2, 0x03B0(a0)             # 000003B0
    div.s   $f18, $f8, $f16
    beq     t2, $zero, lbl_808C58B4
    swc1    $f18, 0x0060(a0)           # 00000060
    beq     $zero, $zero, lbl_808C58C0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C58B4:
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f4, 0x0060(a0)            # 00000060
lbl_808C58C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C58D0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x009C(a1)             # 0000009C
    lw      a0, 0x0020($sp)
    mov.s   $f0, $f2
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_808C5910
    addiu   a0, a0, 0x0060             # a0 = 00000060
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    mul.s   $f0, $f2, $f4
    nop
lbl_808C5910:
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a1, $f0
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    lui     a3, 0x447A                 # a3 = 447A0000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C593C:
    lh      t6, 0x03BC(a0)             # 000003BC
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4320                # $at = 43200000
    beql    t6, $zero, lbl_808C595C
    mtc1    $at, $f4                   # $f4 = 160.00
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C5958:
    mtc1    $at, $f4                   # $f4 = 160.00
lbl_808C595C:
    lwc1    $f6, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_808C597C
    lwc1    $f2, 0x0028(v0)            # 00000028
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C5978:
    lwc1    $f2, 0x0028(v0)            # 00000028
lbl_808C597C:
    lwc1    $f8, 0x0028(a0)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    sub.s   $f0, $f8, $f2
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_808C59B4
    nop
    mtc1    $at, $f16                  # $f16 = 400.00
    nop
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_808C59C0
    lwc1    $f18, 0x0080(a0)           # 00000080
lbl_808C59B4:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C59BC:
    lwc1    $f18, 0x0080(a0)           # 00000080
lbl_808C59C0:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f2, $f18
    nop
    bc1f    lbl_808C59DC
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C59DC:
    jr      $ra
    nop


func_808C59E4:
    lwc1    $f0, 0x0060(a0)            # 00000060
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f8, 0x000C(a0)            # 0000000C
    add.s   $f6, $f0, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f2, $f4, $f6
    c.le.s  $f8, $f2
    nop
    bc1f    lbl_808C5A14
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C5A14:
    jr      $ra
    nop


func_808C5A1C:
    lwc1    $f0, 0x0060(a0)            # 00000060
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f10, 0x0080(a0)           # 00000080
    add.s   $f6, $f0, $f0
    lwc1    $f8, 0x03FC(a0)            # 000003FC
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f2, $f4, $f6
    sub.s   $f16, $f2, $f10
    c.le.s  $f16, $f8
    nop
    bc1f    lbl_808C5A54
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C5A54:
    jr      $ra
    nop


func_808C5A5C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lh      v0, 0x03B4(s0)             # 000003B4
    beq     v0, $zero, lbl_808C5C18
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    lh      t6, 0x0400(s0)             # 00000400
    sh      t8, 0x03B4(s0)             # 000003B4
    lh      v0, 0x03B4(s0)             # 000003B4
    addiu   t7, t6, 0x0A28             # t7 = 00000A28
    sh      t7, 0x0400(s0)             # 00000400
    bnel    v0, $zero, lbl_808C5AA4
    mtc1    v0, $f4                    # $f4 = 0.00
    sh      $zero, 0x0400(s0)          # 00000400
    lh      v0, 0x03B4(s0)             # 000003B4
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_808C5AA4:
    lui     $at, %hi(var_808C6B10)     # $at = 808C0000
    lwc1    $f8, %lo(var_808C6B10)($at)
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0400(s0)             # 00000400
    lui     $at, %hi(var_808C6B14)     # $at = 808C0000
    lwc1    $f18, %lo(var_808C6B14)($at)
    lwc1    $f16, 0x0034($sp)
    mul.s   $f4, $f16, $f18
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v1, v0, 16
    sra     v1, v1, 16
    sll     s1, v0, 16
    bltz    v1, lbl_808C5B00
    sra     s1, s1, 16
    beq     $zero, $zero, lbl_808C5B04
    or      v0, v1, $zero              # v0 = 00000000
lbl_808C5B00:
    subu    v0, $zero, v1
lbl_808C5B04:
    lh      v1, 0x03CA(s0)             # 000003CA
    slt     $at, v1, v0
    bne     $at, $zero, lbl_808C5B38
    nop
    lbu     t0, 0x03CC(s0)             # 000003CC
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_808C5B38
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x39E0          # a1 = 000039E0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x03CC(s0)             # 000003CC
    lh      v1, 0x03CA(s0)             # 000003CA
lbl_808C5B38:
    bltz    s1, lbl_808C5B48
    sll     a0, s1, 16
    beq     $zero, $zero, lbl_808C5B4C
    or      v0, s1, $zero              # v0 = 00000000
lbl_808C5B48:
    subu    v0, $zero, s1
lbl_808C5B4C:
    slt     $at, v1, v0
    beq     $at, $zero, lbl_808C5B5C
    nop
    sb      $zero, 0x03CC(s0)          # 000003CC
lbl_808C5B5C:
    bltz    s1, lbl_808C5B6C
    subu    t2, $zero, s1
    beq     $zero, $zero, lbl_808C5B70
    sh      s1, 0x03CA(s0)             # 000003CA
lbl_808C5B6C:
    sh      t2, 0x03CA(s0)             # 000003CA
lbl_808C5B70:
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    sll     a0, s1, 16
    sra     a0, a0, 16
    mul.s   $f16, $f0, $f10
    jal     func_80063684              # coss?
    swc1    $f16, 0x0044($sp)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f18                  # $f18 = -200.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f4, $f0, $f18
    swc1    $f6, 0x004C($sp)
    jal     func_800AA6EC
    swc1    $f4, 0x0048($sp)
    lwc1    $f12, 0x03E0(s0)           # 000003E0
    lwc1    $f14, 0x03E4(s0)           # 000003E4
    lw      a2, 0x03E8(s0)             # 000003E8
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t3, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_808C6B18)     # $at = 808C0000
    lwc1    $f16, %lo(var_808C6B18)($at)
    mtc1    t3, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    jal     func_800AA724
    nop
    sll     t4, s1,  1
    subu    t5, $zero, t4
    sh      t5, 0x00B8(s0)             # 000000B8
    lwc1    $f18, 0x0038($sp)
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0040($sp)
    swc1    $f4, 0x002C(s0)            # 0000002C
lbl_808C5C18:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_808C5C2C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4160                 # a3 = 41600000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x0402             # t6 = 00000402
    addiu   t7, s0, 0x04B6             # t7 = 000004B6
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x5298             # a2 = 06005298
    sw      a1, 0x0034($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008C684
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    lw      a0, 0x0034($sp)
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_808C4590
    lw      a0, 0x0044($sp)
    sw      v0, 0x03F4(s0)             # 000003F4
    lw      a1, 0x0044($sp)
    jal     func_808C49BC
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    bne     v0, $at, lbl_808C5CDC
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
    ori     t0, t9, 0x0080             # t0 = 00000080
    sw      t0, 0x0004(s0)             # 00000004
lbl_808C5CDC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808C5CF0
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    beq     $zero, $zero, lbl_808C5CF4
    sb      t1, 0x0117(s0)             # 00000117
lbl_808C5CF0:
    sb      t2, 0x0117(s0)             # 00000117
lbl_808C5CF4:
    jal     func_808C468C
    lw      a1, 0x0044($sp)
    lw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    or      a0, s0, $zero              # a0 = 00000000
    ori     t4, t3, 0x4000             # t4 = 00004000
    sw      t4, 0x0004(s0)             # 00000004
    or      t6, t4, $at                # t6 = 01004000
    jal     func_808C52AC
    sw      t6, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t7, 0x0032(s0)             # 00000032
    lui     a1, %hi(func_808C64B4)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C64B4) # a1 = 808C64B4
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x006C(s0)            # 0000006C
    jal     func_808C41A0
    sh      t7, 0x03AC(s0)             # 000003AC
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808C5D50:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8001AE04
    lw      a1, 0x03F4(s3)             # 000003F4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s3, 0x0184             # s1 = 00000184
    addiu   s2, $zero, 0x01C8          # s2 = 000001C8
lbl_808C5D8C:
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004ABCC
    or      a1, s1, $zero              # a1 = 00000184
    addiu   s0, s0, 0x004C             # s0 = 0000004C
    bne     s0, s2, lbl_808C5D8C
    addiu   s1, s1, 0x004C             # s1 = 000001D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, s3, 0x034C             # a1 = 0000034C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_808C5DD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808C593C
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_808C5E14
    lw      a0, 0x0018($sp)
    jal     func_808C495C
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_808C6028)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6028) # a1 = 808C6028
    jal     func_808C41A0
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_808C5E20
    lw      $ra, 0x0014($sp)
lbl_808C5E14:
    jal     func_808C58D0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_808C5E20:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C5E2C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x03BC(s0)             # 000003BC
    beq     v0, $zero, lbl_808C5E6C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x03BC(s0)             # 000003BC
    lh      t7, 0x03BC(s0)             # 000003BC
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t7, $zero, lbl_808C5E6C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_808C5E6C:
    lh      v0, 0x03B2(s0)             # 000003B2
    beq     v0, $zero, lbl_808C5E98
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x03B2(s0)             # 000003B2
    lh      t9, 0x03B2(s0)             # 000003B2
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t9, $zero, lbl_808C5E98
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_808C5E98:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C593C
    lw      a1, 0x0024($sp)
    bnel    v0, $zero, lbl_808C5ED0
    lh      v0, 0x03C2(s0)             # 000003C2
    jal     func_808C48C0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C6120)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6120) # a1 = 808C6120
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C5F14
    lw      $ra, 0x001C($sp)
    lh      v0, 0x03C2(s0)             # 000003C2
lbl_808C5ED0:
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808C5EE4
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    beq     $zero, $zero, lbl_808C5EEC
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808C5EE4:
    sh      t0, 0x03C2(s0)             # 000003C2
    lh      v1, 0x03C2(s0)             # 000003C2
lbl_808C5EEC:
    bnel    v1, $zero, lbl_808C5F08
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x386A          # a1 = 0000386A
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    sh      t1, 0x03C2(s0)             # 000003C2
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C5F08:
    jal     func_808C58D0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_808C5F14:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C5F24:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x03B2(s0)             # 000003B2
    beq     v0, $zero, lbl_808C5F64
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x03B2(s0)             # 000003B2
    lh      t7, 0x03B2(s0)             # 000003B2
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t7, $zero, lbl_808C5F64
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_808C5F64:
    lh      v0, 0x03BC(s0)             # 000003BC
    beq     v0, $zero, lbl_808C5F90
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x03BC(s0)             # 000003BC
    lh      t9, 0x03BC(s0)             # 000003BC
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t9, $zero, lbl_808C5F90
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_808C5F90:
    lh      t0, 0x03C2(s0)             # 000003C2
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x03C2(s0)             # 000003C2
    lh      t2, 0x03C2(s0)             # 000003C2
    bnel    t2, $at, lbl_808C5FBC
    lwc1    $f4, 0x0080(s0)            # 00000080
    jal     func_80022FD0
    addiu   a1, $zero, 0x39E1          # a1 = 000039E1
    lwc1    $f4, 0x0080(s0)            # 00000080
lbl_808C5FBC:
    lwc1    $f6, 0x03FC(s0)            # 000003FC
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     a2, 0x3E99                 # a2 = 3E990000
    add.s   $f8, $f4, $f6
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4000                 # a1 = 40000000
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_808C6008
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, %hi(func_808C5E2C)     # a1 = 808C0000
    sh      $zero, 0x03C2(s0)          # 000003C2
    addiu   a1, a1, %lo(func_808C5E2C) # a1 = 808C5E2C
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C6018
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808C6008:
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_808C6018:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808C6028:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x03BC(s0)             # 000003BC
    beq     v0, $zero, lbl_808C6068
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x03BC(s0)             # 000003BC
    lh      t7, 0x03BC(s0)             # 000003BC
    lui     a1, %hi(var_808C6988)      # a1 = 808C0000
    addiu   a1, a1, %lo(var_808C6988)  # a1 = 808C6988
    bne     t7, $zero, lbl_808C6068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0005          # a2 = 00000005
lbl_808C6068:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C593C
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_808C609C
    nop
    jal     func_808C48C0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C6120)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6120) # a1 = 808C6120
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C6110
    lw      $ra, 0x001C($sp)
lbl_808C609C:
    jal     func_808C5A1C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808C60D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C43CC
    lw      a1, 0x0024($sp)
    jal     func_808C4900
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C5F24)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C5F24) # a1 = 808C5F24
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C6110
    lw      $ra, 0x001C($sp)
lbl_808C60D4:
    lh      v0, 0x03C2(s0)             # 000003C2
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808C60EC
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_808C60F4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808C60EC:
    sh      t8, 0x03C2(s0)             # 000003C2
    lh      v1, 0x03C2(s0)             # 000003C2
lbl_808C60F4:
    bnel    v1, $zero, lbl_808C6110
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3868          # a1 = 00003868
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x03C2(s0)             # 000003C2
    lw      $ra, 0x001C($sp)
lbl_808C6110:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C6120:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0018($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f6, 0x0150(s0)            # 00000150
    lwc1    $f4, 0x0154(s0)            # 00000154
    sub.s   $f8, $f6, $f0
    div.s   $f10, $f4, $f8
    swc1    $f10, 0x0024($sp)
    lwc1    $f16, 0x0024($sp)
    c.eq.s  $f16, $f0
    nop
    bc1fl   lbl_808C6170
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C48C0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C6170:
    jal     func_808C593C
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_808C61A0
    nop
    jal     func_808C495C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C6028)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6028) # a1 = 808C6028
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C61E4
    lw      $ra, 0x001C($sp)
lbl_808C61A0:
    jal     func_808C59E4
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808C61D0
    lui     $at, 0x4080                # $at = 40800000
    jal     func_808C4890
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C5DD0)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C5DD0) # a1 = 808C5DD0
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C61E4
    lw      $ra, 0x001C($sp)
lbl_808C61D0:
    mtc1    $at, $f18                  # $f18 = 0.00
    lwc1    $f6, 0x0024($sp)
    mul.s   $f4, $f18, $f6
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      $ra, 0x001C($sp)
lbl_808C61E4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808C61F4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x03C8(s0)             # 000003C8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800211A4
    sb      t6, 0x0114(s0)             # 00000114
    lh      t7, 0x0030(s0)             # 00000030
    lh      t9, 0x0034(s0)             # 00000034
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, t7, 0x0800             # t8 = 00000800
    sh      t8, 0x0030(s0)             # 00000030
    lwl     t2, 0x0030(s0)             # 00000030
    lwr     t2, 0x0033(s0)             # 00000033
    addiu   t0, t9, 0xF800             # t0 = FFFFF800
    sh      t0, 0x0034(s0)             # 00000034
    swl     t2, 0x00B4(s0)             # 000000B4
    sh      t0, 0x00B8(s0)             # 000000B8
    swr     t2, 0x00B7(s0)             # 000000B7
    jal     func_808C5808
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_808C6294
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    lui     a1, %hi(func_808C62C8)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C62C8) # a1 = 808C62C8
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x00BC(s0)            # 000000BC
    swc1    $f6, 0x0068(s0)            # 00000068
    jal     func_808C41A0
    swc1    $f8, 0x006C(s0)            # 0000006C
    beq     $zero, $zero, lbl_808C62B8
    lw      $ra, 0x0024($sp)
lbl_808C6294:
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    lui     a1, 0x43C8                 # a1 = 43C80000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_808C62B8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808C62C8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     t6, %hi(var_808C6AE4)      # t6 = 808C0000
    addiu   t6, t6, %lo(var_808C6AE4)  # t6 = 808C6AE4
    lw      t8, 0x0000(t6)             # 808C6AE4
    sw      t8, 0x0000(a2)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 808C6AE8
    sw      t7, 0x0004(a2)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 808C6AEC
    sw      t8, 0x0008(a2)             # FFFFFFFC
    lh      v1, 0x03C8(s0)             # 000003C8
    bne     v1, $zero, lbl_808C6314
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_808C631C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C6314:
    sh      t9, 0x03C8(s0)             # 000003C8
    lh      v0, 0x03C8(s0)             # 000003C8
lbl_808C631C:
    bnel    v0, $zero, lbl_808C6360
    lh      v1, 0x03B6(s0)             # 000003B6
    lw      t1, 0x0000(a2)             # FFFFFFF4
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    lui     a1, %hi(func_808C643C)     # a1 = 808C0000
    sw      t1, 0x005C(s0)             # 0000005C
    lw      t0, 0x0004(a2)             # FFFFFFF8
    addiu   a1, a1, %lo(func_808C643C) # a1 = 808C643C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t0, 0x0060(s0)             # 00000060
    lw      t1, 0x0008(a2)             # FFFFFFFC
    sh      t2, 0x03C6(s0)             # 000003C6
    jal     func_808C41A0
    sw      t1, 0x0064(s0)             # 00000064
    beq     $zero, $zero, lbl_808C642C
    lw      $ra, 0x0024($sp)
    lh      v1, 0x03B6(s0)             # 000003B6
lbl_808C6360:
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bne     v1, $zero, lbl_808C6374
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    beq     $zero, $zero, lbl_808C637C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C6374:
    sh      t3, 0x03B6(s0)             # 000003B6
    lh      v0, 0x03B6(s0)             # 000003B6
lbl_808C637C:
    bnel    v0, $zero, lbl_808C639C
    addiu   a0, s0, 0x0030             # a0 = 00000030
    jal     func_80063F00
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sh      v0, 0x03AE(s0)             # 000003AE
    sh      t4, 0x03B6(s0)             # 000003B6
    addiu   a0, s0, 0x0030             # a0 = 00000030
lbl_808C639C:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0010($sp)
    sw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x3FFC          # a1 = 00003FFC
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064508
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0034             # a0 = 00000034
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064508
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      a1, 0x03AE(s0)             # 000003AE
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lw      t8, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lwl     t0, 0x0000(t8)             # 00000000
    lwr     t0, 0x0003(t8)             # 00000003
    swl     t0, 0x00B4(s0)             # 000000B4
    swr     t0, 0x00B7(s0)             # 000000B7
    lhu     t0, 0x0004(t8)             # 00000004
    jal     func_800211A4
    sh      t0, 0x00B8(s0)             # 000000B8
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x03B0(s0)             # 000003B0
    lw      a1, 0x0044($sp)
    jal     func_808C5808
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808C642C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_808C643C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x03C6(s0)             # 000003C6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    bne     v0, $zero, lbl_808C646C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808C6474
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808C646C:
    sh      t6, 0x03C6(s0)             # 000003C6
    lh      v1, 0x03C6(s0)             # 000003C6
lbl_808C6474:
    beq     v1, $zero, lbl_808C6490
    lw      a0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C4454
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_808C64A4
    lw      $ra, 0x001C($sp)
lbl_808C6490:
    jal     func_80013A84
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808C64A4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C64B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_808C5A1C
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808C6500
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    lui     a1, %hi(func_808C5DD0)     # a1 = 808C0000
    sh      t6, 0x03B8(s0)             # 000003B8
    addiu   a1, a1, %lo(func_808C5DD0) # a1 = 808C5DD0
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C5DD0
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_808C6528
    lw      $ra, 0x001C($sp)
lbl_808C6500:
    jal     func_808C4900
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C5F24)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C5F24) # a1 = 808C5F24
    jal     func_808C41A0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C5F24
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_808C6528:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808C6538:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     t6, %hi(var_808C6AF0)      # t6 = 808C0000
    lw      t6, %lo(var_808C6AF0)(t6)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x002C($sp)
    lw      t7, 0x0004(s0)             # 00000004
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $zero, lbl_808C657C
    nop
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_808C66A8
    lw      $ra, 0x0024($sp)
lbl_808C657C:
    jal     func_808C5224
    lw      a1, 0x003C($sp)
    bnel    v0, $zero, lbl_808C66A8
    lw      $ra, 0x0024($sp)
    lh      t9, 0x03BE(s0)             # 000003BE
    bnel    t9, $zero, lbl_808C65A4
    lh      t0, 0x03B4(s0)             # 000003B4
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t0, 0x03B4(s0)             # 000003B4
lbl_808C65A4:
    bnel    t0, $zero, lbl_808C65C4
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t1, 0x03BE(s0)             # 000003BE
    bnel    t1, $zero, lbl_808C65C4
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_808C65C4:
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sw      t2, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lh      v0, 0x03BE(s0)             # 000003BE
    bne     v0, $zero, lbl_808C6618
    nop
    lh      t3, 0x03B4(s0)             # 000003B4
    bne     t3, $zero, lbl_808C6618
    nop
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_808C663C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C6618:
    beq     v0, $zero, lbl_808C6630
    nop
    jal     func_808C5548
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C663C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C6630:
    jal     func_808C5A5C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C663C:
    jal     func_808C5568
    lw      a1, 0x003C($sp)
    lw      t5, 0x0180(s0)             # 00000180
    lui     t4, %hi(func_808C5E2C)     # t4 = 808C0000
    addiu   t4, t4, %lo(func_808C5E2C) # t4 = 808C5E2C
    bne     t4, t5, lbl_808C6674
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x003C($sp)
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    lw      t7, 0x009C(t6)             # 0000009C
    andi    t8, t7, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_808C6678
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sb      t0, 0x002C($sp)
lbl_808C6674:
    addiu   t1, $zero, 0x0008          # t1 = 00000008
lbl_808C6678:
    sw      t1, 0x0010($sp)
    lbu     a1, 0x002C($sp)
    lbu     a2, 0x002D($sp)
    jal     func_808C5418
    lbu     a3, 0x002E($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C4E44
    lw      a1, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808C66A8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808C66B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_808C66E8
    lw      a2, 0x0000(a0)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    a1, $at, lbl_808C6734
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_808C6788
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C66E8:
    lw      a1, 0x002C($sp)
    lh      v0, 0x03C4(a1)             # 000003C4
    beql    v0, $zero, lbl_808C6788
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x03B4(a1)             # 000003B4
    slti    $at, v0, 0x0002
    bnel    t6, $zero, lbl_808C6788
    or      v0, $zero, $zero           # v0 = 00000000
    bne     $at, $zero, lbl_808C6720
    nop
    jal     func_808C475C
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C6788
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C6720:
    jal     func_808C4864
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C6788
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a1, 0x002C($sp)
lbl_808C6734:
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(a2)             # 000002C0
    lui     t0, 0xFB00                 # t0 = FB000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lbu     t5, 0x03CE(a1)             # 000003CE
    lbu     t2, 0x03CD(a1)             # 000003CD
    lbu     t9, 0x03CF(a1)             # 000003CF
    sll     t6, t5, 16
    sll     t3, t2, 24
    or      t7, t3, t6                 # t7 = 00000000
    sll     t0, t9,  8
    or      t1, t7, t0                 # t1 = FB000000
    sw      t1, 0x0004(v0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C6788:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C6798:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a1, 0x0028($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, a1, 0x034C             # a1 = 0000034C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808C67D4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    jal     func_808C4AFC
    lw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0020($sp)
    lui     t7, %hi(func_808C6798)     # t7 = 808C0000
    addiu   t7, t7, %lo(func_808C6798) # t7 = 808C6798
    lui     a3, %hi(func_808C66B8)     # a3 = 808C0000
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    sw      t7, 0x0010($sp)
    addiu   a3, a3, %lo(func_808C66B8) # a3 = 808C66B8
    lw      a0, 0x0024($sp)
    jal     func_8008993C
    sw      v0, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_808C6840: .word \
0xFFFF0000, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x00010000, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x00010064, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFFF0064, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xE7000000, 0x00000000, 0xD7000000, 0x00000000, \
0xFCFFFFFF, 0xFFFFFEFB, 0xE200001C, 0xC8112078, \
0xD9F1FBFF, 0x00000000, 0xFA000000, 0xFFFFFFFF, \
0x01004008
.word var_808C6840
.word \
0x05000204, 0x00000000, 0x05000406, 0x00000000, \
0xDF000000, 0x00000000
var_808C68D0: .word 0x00370500, 0x00000035, 0x00240000, 0x0000056C
.word func_808C5C2C
.word func_808C5D50
.word func_808C6538
.word func_808C67D4
var_808C68F0: .word \
0x06000900, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01010000, \
0x00200032, 0xFFE80000, 0x00000000
var_808C691C: .word 0x02000000, 0x00000000, 0xFF000000
var_808C6928: .word \
0x06000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014003C, 0xFFE20000, 0x00000000
var_808C6954: .word \
0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, \
0x00000000, 0x01000100, 0x01000000, 0xFF100000, \
0x001C0064
var_808C6978: .word 0x06110039, 0x10000000, 0x00000001
.word var_808C6954
var_808C6988: .word \
0x06000304, 0x3F800000, 0x00000000, 0xBF800000, \
0x01000000, 0x00000000, 0x06005B98, 0x3F800000, \
0x00000000, 0xBF800000, 0x03000000, 0xC1000000, \
0x06000304, 0x40800000, 0x00000000, 0xBF800000, \
0x03000000, 0xC1000000, 0x06000304, 0x3F800000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1000000, \
0x060055A8, 0x3F800000, 0x00000000, 0xBF800000, \
0x03000000, 0xC1000000, 0x06000304, 0x41000000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1000000, \
0x06000304, 0x40C00000, 0x00000000, 0xBF800000, \
0x01000000, 0xC1000000, 0x06005B98, 0x40000000, \
0x00000000, 0xBF800000, 0x01000000, 0xC1000000
var_808C6A48: .word 0xAA825AFF
var_808C6A4C: .word 0x643C1400
var_808C6A50: .word 0x00000000, 0x00000000, 0x00000000
var_808C6A5C: .word 0x00000000, 0x3E99999A, 0x00000000
var_808C6A68: .word 0x00000000, 0x00000000, 0x00000000
var_808C6A74: .word 0x00000000, 0x00000000, 0x00000000
var_808C6A80: .word 0xFFFFFF4B
var_808C6A84: .word 0xFFFFFF4B
var_808C6A88: .word 0xFFFFFF00
var_808C6A8C: .word 0xFFFFFF00
var_808C6A90: .word 0x44508000, 0x44508000, 0x00000000
var_808C6A9C: .word 0x44508000, 0xC4120000, 0x00000000
var_808C6AA8: .word var_808C68F0
.word var_808C68F0
.word var_808C68F0
.word var_808C6928
.word var_808C6928
.word var_808C6928
var_808C6AC0: .word \
0x42200000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0xC2200000, 0x00000000, \
0x00000000
var_808C6AE4: .word 0x00000000, 0x00000000, 0x00000000
var_808C6AF0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808C6B00: .word 0x40490FDB
var_808C6B04: .word 0x3FB33333
var_808C6B08: .word 0x3D23D70A
var_808C6B0C: .word 0x3F19999A
var_808C6B10: .word 0x3EEEEEEF
var_808C6B14: .word 0x43360B61
var_808C6B18: .word 0x38C90FDB, 0x00000000

