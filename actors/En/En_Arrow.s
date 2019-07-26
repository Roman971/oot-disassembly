.section .text
func_80884410:
    sw      a1, 0x024C(a0)             # 0000024C
    jr      $ra
    nop


func_8088441C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80885840)      # a1 = 80880000
    addiu   a1, a1, %lo(var_80885840)  # a1 = 80885840
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    bne     v0, $at, lbl_80884460
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x001C(s0)             # 0000001C
    sb      t6, 0x023B(s0)             # 0000023B
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80884460:
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_80884600
    slti    $at, v0, 0x0009
    beq     $at, $zero, lbl_8088449C
    lw      a0, 0x003C($sp)
    lui     a2, 0x0400                 # a2 = 04000000
    lui     a3, 0x0400                 # a3 = 04000000
    addiu   a3, a3, 0x436C             # a3 = 0400436C
    addiu   a2, a2, 0x6010             # a2 = 04006010
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8088449C:
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_808844F4
    addiu   a1, s0, 0x0218             # a1 = 00000218
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808844C4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lui     $at, %hi(var_8088585C)     # $at = 80880000
    b       lbl_808844D0
    sb      t8, %lo(var_8088585C)($at)
lbl_808844C4:
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    lui     $at, %hi(var_8088585C)     # $at = 80880000
    sb      t9, %lo(var_8088585C)($at)
lbl_808844D0:
    lui     t0, %hi(var_80885844)      # t0 = 80880000
    addiu   t0, t0, %lo(var_80885844)  # t0 = 80885844
    sw      t0, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001AA5C
    sw      $zero, 0x0010($sp)
    b       lbl_8088458C
    addiu   a1, s0, 0x0180             # a1 = 00000180
lbl_808844F4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80884528
    lw      a0, 0x003C($sp)
    lui     t1, %hi(var_80885868)      # t1 = 80880000
    addiu   t1, t1, %lo(var_80885868)  # t1 = 80885868
    sw      t1, 0x0014($sp)
    addiu   a1, s0, 0x0218             # a1 = 00000218
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001AA5C
    sw      $zero, 0x0010($sp)
    b       lbl_8088458C
    addiu   a1, s0, 0x0180             # a1 = 00000180
lbl_80884528:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8088455C
    lw      a0, 0x003C($sp)
    lui     t2, %hi(var_8088588C)      # t2 = 80880000
    addiu   t2, t2, %lo(var_8088588C)  # t2 = 8088588C
    sw      t2, 0x0014($sp)
    addiu   a1, s0, 0x0218             # a1 = 00000218
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001AA5C
    sw      $zero, 0x0010($sp)
    b       lbl_8088458C
    addiu   a1, s0, 0x0180             # a1 = 00000180
lbl_8088455C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80884588
    lw      a0, 0x003C($sp)
    lui     t3, %hi(var_808858B0)      # t3 = 80880000
    addiu   t3, t3, %lo(var_808858B0)  # t3 = 808858B0
    sw      t3, 0x0014($sp)
    addiu   a1, s0, 0x0218             # a1 = 00000218
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001AA5C
    sw      $zero, 0x0010($sp)
lbl_80884588:
    addiu   a1, s0, 0x0180             # a1 = 00000180
lbl_8088458C:
    sw      a1, 0x0030($sp)
    jal     func_8004B858
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_808857F0)      # a3 = 80880000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_808857F0)  # a3 = 808857F0
    lw      a0, 0x003C($sp)
    jal     func_8004B960
    or      a2, s0, $zero              # a2 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_808845D8
    nop
    lbu     t4, 0x01AD(s0)             # 000001AD
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t6, t4, 0xFFE7             # t6 = 00000000
    sb      t6, 0x01AD(s0)             # 000001AD
    sb      t6, 0x01AD(s0)             # 000001AD
lbl_808845D8:
    bgez    v0, lbl_808845E8
    slti    $at, v0, 0x000A
    b       lbl_80884600
    sb      t7, 0x0190(s0)             # 00000190
lbl_808845E8:
    beq     $at, $zero, lbl_80884600
    sll     t8, v0,  2
    lui     t9, %hi(var_808858D4)      # t9 = 80880000
    addu    t9, t9, t8
    lw      t9, %lo(var_808858D4)(t9)
    sw      t9, 0x0198(s0)             # 00000198
lbl_80884600:
    lui     a1, %hi(func_808846AC)     # a1 = 80880000
    addiu   a1, a1, %lo(func_808846AC) # a1 = 808846AC
    jal     func_80884410
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80884624:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    slti    $at, t6, 0x0006
    beql    $at, $zero, lbl_80884658
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8001AE04
    lw      a1, 0x0218(s0)             # 00000218
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80884658:
    jal     func_8008D6D0
    lw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004B8A8
    addiu   a1, s0, 0x0180             # a1 = 00000180
    lw      v0, 0x023C(s0)             # 0000023C
    beql    v0, $zero, lbl_8088469C
    lw      $ra, 0x001C($sp)
    lw      t7, 0x0130(v0)             # 00000130
    beql    t7, $zero, lbl_8088469C
    lw      $ra, 0x001C($sp)
    lw      t8, 0x0004(v0)             # 00000004
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t9, t8, $at
    sw      t9, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
lbl_8088469C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808846AC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0118(s0)             # 00000118
    lw      a2, 0x1C44(a1)             # 00001C44
    bnel    t6, $zero, lbl_808847B4
    lw      $ra, 0x001C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_808846F8
    sll     t8, v0,  2
    lbu     t7, 0x0A63(a2)             # 00000A63
    bnel    t7, $zero, lbl_808846FC
    sltiu   $at, v0, 0x000A
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808847B4
    lw      $ra, 0x001C($sp)
lbl_808846F8:
    sltiu   $at, v0, 0x000A
lbl_808846FC:
    beq     $at, $zero, lbl_80884748
    lui     $at, %hi(var_80885950)     # $at = 80880000
    addu    $at, $at, t8
    lw      t8, %lo(var_80885950)($at)
    jr      t8
    nop
var_80884714:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022F84
    addiu   a1, $zero, 0x1820          # a1 = 00001820
    b       lbl_80884748
    nop
var_80884728:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022F84
    addiu   a1, $zero, 0x1804          # a1 = 00001804
    b       lbl_80884748
    nop
var_8088473C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022F84
    addiu   a1, $zero, 0x1839          # a1 = 00001839
lbl_80884748:
    lui     a1, %hi(func_80884AB0)     # a1 = 80880000
    addiu   a1, a1, %lo(func_80884AB0) # a1 = 80884AB0
    jal     func_80884410
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0200             # a0 = 00000200
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, 0x42A0                 # a1 = 42A00000
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0x0009
    bne     $at, $zero, lbl_808847A0
    nop
    jal     func_800212E4
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      v0, 0x00B8(s0)             # 000000B8
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    sb      t0, 0x0238(s0)             # 00000238
    sh      v0, 0x00B6(s0)             # 000000B6
    b       lbl_808847B0
    sh      v0, 0x00B4(s0)             # 000000B4
lbl_808847A0:
    jal     func_800212E4
    lui     a1, 0x4316                 # a1 = 43160000
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
    sb      t1, 0x0238(s0)             # 00000238
lbl_808847B0:
    lw      $ra, 0x001C($sp)
lbl_808847B4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808847C4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, %hi(func_80885118)     # a1 = 80880000
    addiu   a1, a1, %lo(func_80885118) # a1 = 80885118
    jal     func_80884410
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0400                 # a1 = 04000000
    addiu   a1, a1, 0x4310             # a1 = 04004310
    jal     func_8008D1C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x46C0                # $at = 46C00000
    mtc1    $at, $f4                   # $f4 = 24576.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lh      t8, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    sub.s   $f8, $f0, $f6
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    nop
    addu    t9, t8, t7
    addu    t0, t9, $at
    jal     func_800CDCCC              # Rand.Next() float
    sh      t0, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80885978)     # $at = 80880000
    lwc1    $f2, %lo(var_80885978)($at)
    lwc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f10, 0x0060(s0)           # 00000060
    mul.s   $f6, $f2, $f0
    add.s   $f4, $f2, $f6
    mul.s   $f8, $f18, $f4
    add.s   $f16, $f10, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, %hi(var_8088597C)     # $at = 80880000
    lwc1    $f6, %lo(var_8088597C)($at)
    lui     $at, %hi(var_80885980)     # $at = 80880000
    lwc1    $f18, %lo(var_80885980)($at)
    lwc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0xBFC0                # $at = BFC00000
    mul.s   $f4, $f18, $f0
    mtc1    $at, $f18                  # $f18 = -1.50
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    sb      t1, 0x0238(s0)             # 00000238
    swc1    $f18, 0x006C(s0)           # 0000006C
    add.s   $f10, $f6, $f4
    mul.s   $f16, $f8, $f10
    swc1    $f16, 0x0068(s0)           # 00000068
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808848AC:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x007C($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, s0, 0x0200             # a1 = 00000200
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFF0
    lw      v0, 0x023C(s0)             # 0000023C
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0068($sp)
    lwc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFF0
    sub.s   $f8, $f4, $f6
    lwc1    $f4, 0x0028(v0)            # 00000028
    mul.s   $f16, $f8, $f10
    sub.s   $f6, $f18, $f4
    lwc1    $f8, 0x006C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x002C(v0)            # 0000002C
    sub.s   $f8, $f4, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    add.s   $f18, $f16, $f10
    lwc1    $f16, 0x0070($sp)
    mul.s   $f10, $f8, $f16
    add.s   $f12, $f18, $f10
    c.lt.s  $f12, $f4
    nop
    bc1tl   lbl_80884AA0
    lw      $ra, 0x0034($sp)
    jal     func_800A54E4
    swc1    $f12, 0x004C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f12, 0x004C($sp)
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_80884AA0
    lw      $ra, 0x0034($sp)
    div.s   $f2, $f12, $f0
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFF0
    mfc1    a1, $f2
    jal     func_80063DDC
    nop
    lw      a0, 0x023C(s0)             # 0000023C
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFE4
    jal     func_80063D10              # Vec3f_Add
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lw      a1, 0x023C(s0)             # 0000023C
    lw      a0, 0x007C($sp)
    addiu   t6, $sp, 0x0074            # t6 = FFFFFFFC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $sp, 0x0044            # t1 = FFFFFFCC
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFD8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_800308B4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_80884A8C
    lwc1    $f8, 0x0050($sp)
    lwc1    $f16, 0x005C($sp)
    lwc1    $f18, 0x0050($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f16, $f8
    nop
    bc1fl   lbl_80884A08
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f2                   # $f2 = -1.00
    b       lbl_80884A14
    mov.s   $f0, $f12
    mtc1    $at, $f2                   # $f2 = -1.00
lbl_80884A08:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mov.s   $f0, $f2
lbl_80884A14:
    add.s   $f10, $f0, $f18
    lw      t2, 0x023C(s0)             # 0000023C
    swc1    $f10, 0x0024(t2)           # 00000024
    lwc1    $f4, 0x0054($sp)
    lwc1    $f6, 0x0060($sp)
    lwc1    $f8, 0x0054($sp)
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80884A48
    mov.s   $f0, $f2
    b       lbl_80884A48
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80884A48:
    add.s   $f16, $f0, $f8
    lw      t3, 0x023C(s0)             # 0000023C
    swc1    $f16, 0x0028(t3)           # 00000028
    lwc1    $f18, 0x0058($sp)
    lwc1    $f10, 0x0064($sp)
    lwc1    $f4, 0x0058($sp)
    c.le.s  $f10, $f18
    nop
    bc1fl   lbl_80884A7C
    mov.s   $f0, $f2
    b       lbl_80884A7C
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80884A7C:
    add.s   $f6, $f0, $f4
    lw      t4, 0x023C(s0)             # 0000023C
    b       lbl_80884A9C
    swc1    $f6, 0x002C(t4)            # 0000002C
lbl_80884A8C:
    lw      a0, 0x023C(s0)             # 0000023C
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, 0x0024             # a0 = 00000024
lbl_80884A9C:
    lw      $ra, 0x0034($sp)
lbl_80884AA0:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80884AB0:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x009C($sp)
    lbu     v0, 0x0238(s0)             # 00000238
    bne     v0, $zero, lbl_80884AD8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80884AE4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80884AD8:
    andi    v0, t6, 0x00FF             # v0 = 000000FF
    or      v1, v0, $zero              # v1 = 000000FF
    sb      t6, 0x0238(s0)             # 00000238
lbl_80884AE4:
    bnel    v1, $zero, lbl_80884B00
    mtc1    v0, $f4                    # $f4 = 0.00
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808850A8
    lw      $ra, 0x0034($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_80884B00:
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80884B18
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80884B18:
    lui     $at, %hi(var_80885984)     # $at = 80880000
    lwc1    $f10, %lo(var_80885984)($at)
    lui     $at, %hi(var_80885988)     # $at = 80880000
    c.lt.s  $f6, $f10
    nop
    bc1fl   lbl_80884B40
    lh      v0, 0x001C(s0)             # 0000001C
    lwc1    $f16, %lo(var_80885988)($at)
    swc1    $f16, 0x006C(s0)           # 0000006C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80884B40:
    sltu    v1, $zero, v0
    beq     v1, $zero, lbl_80884B64
    slti    $at, v0, 0x0009
    slti    v1, v0, 0x000A
    beq     v1, $zero, lbl_80884B64
    nop
    lbu     v1, 0x0190(s0)             # 00000190
    andi    v1, v1, 0x0002             # v1 = 00000000
    sltu    v1, $zero, v1
lbl_80884B64:
    bne     v1, $zero, lbl_80884B80
    nop
    lbu     t7, 0x023A(s0)             # 0000023A
    addiu   a0, s0, 0x0200             # a0 = 00000200
    addiu   a1, s0, 0x0024             # a1 = 00000024
    beq     t7, $zero, lbl_80884E1C
    nop
lbl_80884B80:
    bne     $at, $zero, lbl_80884C68
    lw      a0, 0x009C($sp)
    beq     v1, $zero, lbl_80884BD8
    addiu   a3, $zero, 0x1825          # a3 = 00001825
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0100(s0)            # 00000100
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    add.s   $f8, $f18, $f4
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0104(s0)           # 00000104
    lh      v0, 0x001C(s0)             # 0000001C
    mul.s   $f6, $f8, $f0
    add.s   $f18, $f10, $f16
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mul.s   $f4, $f18, $f0
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0108(s0)            # 00000108
    add.s   $f10, $f8, $f6
    swc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_80884BD8:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80884C2C
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   a2, $zero, 0x0056          # a2 = 00000056
    sh      t8, 0x0D38(t9)             # 80120D38
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x009C($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C48
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    b       lbl_80884C2C
    addiu   a3, $zero, 0x182B          # a3 = 0000182B
lbl_80884C2C:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0044($sp)
    lw      a0, 0x009C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001D6FC
    sh      a3, 0x0072($sp)
    lhu     a3, 0x0072($sp)
    lw      a0, 0x009C($sp)
    lw      a1, 0x0044($sp)
    jal     func_80058FF8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80884EDC
    lw      v0, 0x023C(s0)             # 0000023C
lbl_80884C68:
    addiu   a3, s0, 0x0024             # a3 = 00000024
    sw      a3, 0x0044($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_8001D7CC
    sw      v1, 0x0050($sp)
    lw      v1, 0x0050($sp)
    beql    v1, $zero, lbl_80884DBC
    lbu     t0, 0x023A(s0)             # 0000023A
    lw      v1, 0x01B8(s0)             # 000001B8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t1, 0x0014(v1)             # 00000014
    beql    t1, $at, lbl_80884DBC
    lbu     t0, 0x023A(s0)             # 0000023A
    lw      v0, 0x0184(s0)             # 00000184
    or      a1, s0, $zero              # a1 = 00000000
    lw      t2, 0x0130(v0)             # 00000130
    beql    t2, $zero, lbl_80884D40
    lbu     t1, 0x0239(s0)             # 00000239
    lbu     t3, 0x0190(s0)             # 00000190
    andi    t4, t3, 0x0004             # t4 = 00000000
    bnel    t4, $zero, lbl_80884D40
    lbu     t1, 0x0239(s0)             # 00000239
    lw      t5, 0x0004(v0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x4000             # t6 = 00000000
    beql    t6, $zero, lbl_80884D40
    lbu     t1, 0x0239(s0)             # 00000239
    sw      v0, 0x023C(s0)             # 0000023C
    sw      v0, 0x006C($sp)
    jal     func_808848AC
    lw      a1, 0x009C($sp)
    lw      v0, 0x006C($sp)
    lw      a1, 0x0044($sp)
    addiu   a2, s0, 0x0240             # a2 = 00000240
    jal     func_80063D48              # Vec3f_Sub
    addiu   a0, v0, 0x0024             # a0 = 00000024
    lw      v0, 0x006C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    lw      t7, 0x0004(v0)             # 00000004
    ori     t8, t7, 0x8000             # t8 = 00008000
    sw      t8, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f10, 0x0060(s0)           # 00000060
    lbu     t9, 0x0190(s0)             # 00000190
    mul.s   $f6, $f8, $f0
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    mul.s   $f16, $f10, $f0
    sb      t0, 0x0190(s0)             # 00000190
    swc1    $f6, 0x0068(s0)            # 00000068
    b       lbl_80884ED8
    swc1    $f16, 0x0060(s0)           # 00000060
    lbu     t1, 0x0239(s0)             # 00000239
lbl_80884D40:
    ori     t3, t1, 0x0001             # t3 = 00000001
    sb      t3, 0x0239(s0)             # 00000239
    ori     t4, t3, 0x0002             # t4 = 00000003
    sb      t4, 0x0239(s0)             # 00000239
    lbu     t5, 0x0016(v1)             # 00000016
    andi    t6, t5, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80884D9C
    nop
    lh      t7, 0x000E(v1)             # 0000000E
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0024(s0)            # 00000024
    lh      t8, 0x0010(v1)             # 00000010
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    swc1    $f6, 0x0028(s0)            # 00000028
    lh      t9, 0x0012(v1)             # 00000012
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_80884D9C:
    jal     func_808847C4
    lw      a0, 0x009C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x1814          # a1 = 00001814
    b       lbl_80884EDC
    lw      v0, 0x023C(s0)             # 0000023C
    lbu     t0, 0x023A(s0)             # 0000023A
lbl_80884DBC:
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808850B8)     # a1 = 80880000
    beql    t0, $zero, lbl_80884EDC
    lw      v0, 0x023C(s0)             # 0000023C
    jal     func_80884410
    addiu   a1, a1, %lo(func_808850B8) # a1 = 808850B8
    lui     a1, 0x0400                 # a1 = 04000000
    addiu   a1, a1, 0x436C             # a1 = 0400436C
    jal     func_8008D1C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    bltz    t1, lbl_80884E00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80884E04
    sb      t2, 0x0238(s0)             # 00000238
lbl_80884E00:
    sb      t3, 0x0238(s0)             # 00000238
lbl_80884E04:
    jal     func_80022FD0
    addiu   a1, $zero, 0x1815          # a1 = 00001815
    lbu     t4, 0x0239(s0)             # 00000239
    ori     t5, t4, 0x0001             # t5 = 00000001
    b       lbl_80884ED8
    sb      t5, 0x0239(s0)             # 00000239
lbl_80884E1C:
    jal     func_80063CAC              # Vec3f_Copy
    sw      a1, 0x0044($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x009C($sp)
    addiu   t6, s0, 0x0074             # t6 = 00000074
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $sp, 0x0090            # t1 = FFFFFFF8
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a1, s0, 0x0100             # a1 = 00000100
    lw      a2, 0x0044($sp)
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFEC
    jal     func_80030A5C
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    andi    t2, v0, 0x00FF             # t2 = 00000000
    beq     t2, $zero, lbl_80884EB4
    sb      v0, 0x023A(s0)             # 0000023A
    lw      a2, 0x0074(s0)             # 00000074
    addiu   t3, $sp, 0x0084            # t3 = FFFFFFEC
    sw      t3, 0x0010($sp)
    lw      a0, 0x009C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800231BC
    lw      a3, 0x0090($sp)
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFEC
lbl_80884EB4:
    lh      t4, 0x001C(s0)             # 0000001C
    slti    $at, t4, 0x0009
    beql    $at, $zero, lbl_80884EDC
    lw      v0, 0x023C(s0)             # 0000023C
    lwc1    $f14, 0x0060(s0)           # 00000060
    lwc1    $f12, 0x0068(s0)           # 00000068
    jal     func_800AA4F8
    neg.s   $f14, $f14
    sh      v0, 0x00B4(s0)             # 000000B4
lbl_80884ED8:
    lw      v0, 0x023C(s0)             # 0000023C
lbl_80884EDC:
    beql    v0, $zero, lbl_808850A8
    lw      $ra, 0x0034($sp)
    lw      t5, 0x0130(v0)             # 00000130
    addiu   a0, s0, 0x0200             # a0 = 00000200
    addiu   a1, s0, 0x0240             # a1 = 00000240
    beq     t5, $zero, lbl_808850A0
    lw      t6, 0x009C($sp)
    addiu   t7, t6, 0x07C0             # t7 = 000007C0
    sw      t7, 0x003C($sp)
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFC8
    jal     func_80063D10              # Vec3f_Add
    sw      a1, 0x0040($sp)
    lw      a0, 0x0044($sp)
    lw      a1, 0x0040($sp)
    jal     func_80063D10              # Vec3f_Add
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFBC
    addiu   t8, $sp, 0x0094            # t8 = FFFFFFFC
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $sp, 0x0090            # t3 = FFFFFFF8
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFC8
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFBC
    jal     func_800308B4
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFEC
    beq     v0, $zero, lbl_80885058
    lw      a0, 0x0044($sp)
    lwc1    $f18, 0x0084($sp)
    lwc1    $f4, 0x0054($sp)
    lwc1    $f8, 0x0084($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_80884FA4
    mtc1    $at, $f12                  # $f12 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f12                  # $f12 = -1.00
    b       lbl_80884FB0
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = -1.00
lbl_80884FA4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mov.s   $f0, $f12
lbl_80884FB0:
    add.s   $f6, $f0, $f8
    lw      t4, 0x023C(s0)             # 0000023C
    swc1    $f6, 0x0024(t4)            # 00000024
    lwc1    $f10, 0x0088($sp)
    lwc1    $f16, 0x0058($sp)
    lwc1    $f18, 0x0088($sp)
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_80884FE4
    mov.s   $f0, $f12
    b       lbl_80884FE4
    mov.s   $f0, $f2
    mov.s   $f0, $f12
lbl_80884FE4:
    add.s   $f4, $f0, $f18
    lw      t5, 0x023C(s0)             # 0000023C
    swc1    $f4, 0x0028(t5)            # 00000028
    lwc1    $f8, 0x008C($sp)
    lwc1    $f6, 0x005C($sp)
    lwc1    $f10, 0x008C($sp)
    c.le.s  $f6, $f8
    nop
    bc1fl   lbl_80885018
    mov.s   $f0, $f12
    b       lbl_80885018
    mov.s   $f0, $f2
    mov.s   $f0, $f12
lbl_80885018:
    add.s   $f16, $f0, $f10
    lw      t6, 0x023C(s0)             # 0000023C
    swc1    $f16, 0x002C(t6)           # 0000002C
    lw      a0, 0x023C(s0)             # 0000023C
    lw      a2, 0x0040($sp)
    lw      a1, 0x0044($sp)
    jal     func_80063D48              # Vec3f_Sub
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lw      v0, 0x023C(s0)             # 0000023C
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    lw      t7, 0x0004(v0)             # 00000004
    and     t8, t7, $at
    sw      t8, 0x0004(v0)             # 00000004
    b       lbl_80885068
    sw      $zero, 0x023C(s0)          # 0000023C
lbl_80885058:
    lw      a2, 0x023C(s0)             # 0000023C
    lw      a1, 0x0040($sp)
    jal     func_80063D10              # Vec3f_Add
    addiu   a2, a2, 0x0024             # a2 = 00000024
lbl_80885068:
    lbu     t9, 0x023A(s0)             # 0000023A
    beql    t9, $zero, lbl_808850A8
    lw      $ra, 0x0034($sp)
    lw      v0, 0x023C(s0)             # 0000023C
    beql    v0, $zero, lbl_808850A8
    lw      $ra, 0x0034($sp)
    lw      t0, 0x0004(v0)             # 00000004
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t1, t0, $at
    sw      t1, 0x0004(v0)             # 00000004
    sw      $zero, 0x023C(s0)          # 0000023C
    b       lbl_808850A8
    lw      $ra, 0x0034($sp)
lbl_808850A0:
    sw      $zero, 0x023C(s0)          # 0000023C
    lw      $ra, 0x0034($sp)
lbl_808850A8:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_808850B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lbu     v0, 0x0238(a1)             # 00000238
    bne     v0, $zero, lbl_808850F0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_808850F8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808850F0:
    sb      t6, 0x0238(a1)             # 00000238
    andi    v1, t6, 0x00FF             # v1 = 000000FF
lbl_808850F8:
    bnel    v1, $zero, lbl_8088510C
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_8088510C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80885118:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    jal     func_8002121C
    lw      a0, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lbu     v0, 0x0238(a1)             # 00000238
    bne     v0, $zero, lbl_80885158
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80885160
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80885158:
    sb      t6, 0x0238(a1)             # 00000238
    andi    v1, t6, 0x00FF             # v1 = 000000FF
lbl_80885160:
    bnel    v1, $zero, lbl_80885174
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80885174:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80885180:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lbu     t6, 0x023B(s0)             # 0000023B
    lw      a2, 0x1C44(s1)             # 00001C44
    bnel    t6, $zero, lbl_808851D8
    lw      t9, 0x024C(s0)             # 0000024C
    lh      t7, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    bltz    t7, lbl_808851C4
    nop
    lbu     t8, 0x0A63(a2)             # 00000A63
    bnel    t8, $zero, lbl_808851D8
    lw      t9, 0x024C(s0)             # 0000024C
lbl_808851C4:
    jal     func_8007938C
    or      a1, a2, $zero              # a1 = 00000000
    bnel    v0, $zero, lbl_808851EC
    lh      v0, 0x001C(s0)             # 0000001C
    lw      t9, 0x024C(s0)             # 0000024C
lbl_808851D8:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808851EC:
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_8088527C
    slti    $at, v0, 0x0009
    beq     $at, $zero, lbl_8088527C
    lui     t0, %hi(var_808858FC)      # t0 = 80880000
    addiu   v0, $sp, 0x0048            # v0 = FFFFFFE8
    addiu   t0, t0, %lo(var_808858FC)  # t0 = 808858FC
    lw      t2, 0x0000(t0)             # 808858FC
    sw      t2, 0x0000(v0)             # FFFFFFE8
    lw      t1, 0x0004(t0)             # 80885900
    sw      t1, 0x0004(v0)             # FFFFFFEC
    lw      t2, 0x0008(t0)             # 80885904
    sw      t2, 0x0008(v0)             # FFFFFFF0
    lw      t3, 0x011C(s0)             # 0000011C
    bnel    t3, $zero, lbl_808852CC
    lw      $ra, 0x003C($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    sll     t5, t4,  1
    addu    t6, v0, t5
    lh      a3, -0x0006(t6)            # FFFFFFFA
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    b       lbl_808852CC
    lw      $ra, 0x003C($sp)
lbl_8088527C:
    bne     v0, $zero, lbl_808852C8
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(var_80885920)      # t7 = 80880000
    lui     t8, %hi(var_80885924)      # t8 = 80880000
    addiu   t8, t8, %lo(var_80885924)  # t8 = 80885924
    addiu   t7, t7, %lo(var_80885920)  # t7 = 80885920
    lui     a2, %hi(var_80885908)      # a2 = 80880000
    lui     a3, %hi(var_80885914)      # a3 = 80880000
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sw      t0, 0x0020($sp)
    sw      t9, 0x0018($sp)
    addiu   a3, a3, %lo(var_80885914)  # a3 = 80885914
    addiu   a2, a2, %lo(var_80885908)  # a2 = 80885908
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    jal     func_8001BE64
    sw      $zero, 0x001C($sp)
lbl_808852C8:
    lw      $ra, 0x003C($sp)
lbl_808852CC:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_808852DC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lui     a0, %hi(var_80885940)      # a0 = 80880000
    addiu   a0, a0, %lo(var_80885940)  # a0 = 80885940
    jal     func_800AB958
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lw      t6, 0x024C(s0)             # 0000024C
    lui     t7, %hi(func_80884AB0)     # t7 = 80880000
    addiu   t7, t7, %lo(func_80884AB0) # t7 = 80884AB0
    bne     t6, t7, lbl_80885430
    lui     a0, %hi(var_80885928)      # a0 = 80880000
    addiu   a0, a0, %lo(var_80885928)  # a0 = 80885928
    jal     func_800AB958
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    lui     a0, %hi(var_80885934)      # a0 = 80880000
    addiu   a0, a0, %lo(var_80885934)  # a0 = 80885934
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lh      v0, 0x001C(s0)             # 0000001C
    slti    $at, v0, 0x000A
    beql    $at, $zero, lbl_80885434
    lw      $ra, 0x0024($sp)
    lw      t8, 0x023C(s0)             # 0000023C
    slti    v1, v0, 0x0006
    lw      a0, 0x0054($sp)
    bne     t8, $zero, lbl_80885378
    addiu   a1, s0, 0x0180             # a1 = 00000180
    addiu   t9, $sp, 0x0038            # t9 = FFFFFFE8
    sw      t9, 0x0010($sp)
    addiu   a2, s0, 0x021C             # a2 = 0000021C
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFF4
    jal     func_8007AF14
    sw      v1, 0x0034($sp)
    lw      v1, 0x0034($sp)
    b       lbl_80885410
    and     v1, v1, v0
lbl_80885378:
    beq     v1, $zero, lbl_80885410
    lwc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0220(s0)            # 00000220
    lwc1    $f8, 0x0048($sp)
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80885410
    nop
    lwc1    $f10, 0x0224(s0)           # 00000224
    lwc1    $f16, 0x004C($sp)
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_80885410
    nop
    lwc1    $f18, 0x0228(s0)           # 00000228
    lwc1    $f4, 0x0038($sp)
    c.eq.s  $f16, $f18
    nop
    bc1f    lbl_80885410
    nop
    lwc1    $f6, 0x022C(s0)            # 0000022C
    lwc1    $f8, 0x003C($sp)
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80885410
    nop
    lwc1    $f10, 0x0230(s0)           # 00000230
    lwc1    $f16, 0x0040($sp)
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_80885410
    nop
    lwc1    $f18, 0x0234(s0)           # 00000234
    c.eq.s  $f16, $f18
    nop
    bc1f    lbl_80885410
    nop
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80885410:
    beql    v1, $zero, lbl_80885434
    lw      $ra, 0x0024($sp)
    jal     func_8001A890
    lw      a0, 0x0218(s0)             # 00000218
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    jal     func_80013F30
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFE8
lbl_80885430:
    lw      $ra, 0x0024($sp)
lbl_80885434:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80885444:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x0064($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    lw      t7, 0x0064($sp)
    slti    $at, t6, 0x0009
    beql    $at, $zero, lbl_808854DC
    mtc1    $zero, $f10                # $f10 = 0.00
    jal     func_8007E298
    lw      a0, 0x0000(t7)             # 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lwc1    $f4, 0x00EC(s1)            # 000000EC
    lw      a0, 0x0064($sp)
    lh      t9, 0x0492(t8)             # 80120492
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    c.lt.s  $f4, $f8
    nop
    bc1f    lbl_808854B8
    nop
    b       lbl_808854B8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808854B8:
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    sw      v0, 0x0018($sp)
    sw      s1, 0x0014($sp)
    jal     func_8008902C
    sw      $zero, 0x0010($sp)
    b       lbl_808857B4
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_808854DC:
    lwc1    $f16, 0x0068(s1)           # 00000068
    c.eq.s  $f10, $f16
    nop
    bc1tl   lbl_808857B4
    or      a0, s1, $zero              # a0 = 00000000
    lbu     a0, 0x0238(s1)             # 00000238
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  4
    addu    a0, a0, $at
    sll     a0, a0,  3
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42FF                # $at = 42FF0000
    mtc1    $at, $f2                   # $f2 = 127.50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t1, 0x0064($sp)
    mul.s   $f18, $f0, $f2
    add.s   $f6, $f18, $f2
    cfc1    t0, $f31
    ctc1    a1, $f31
    nop
    cvt.w.s $f4, $f6
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_808855A0
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f4, $f6, $f4
    ctc1    a1, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80885598
    nop
    mfc1    a1, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_808855B0
    or      a1, a1, $at                # a1 = 80000000
lbl_80885598:
    b       lbl_808855B0
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_808855A0:
    mfc1    a1, $f4
    nop
    bltz    a1, lbl_80885598
    nop
lbl_808855B0:
    ctc1    t0, $f31
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    nop
    lw      a0, 0x0000(t1)             # 00000000
    sb      a1, 0x0057($sp)
    jal     func_8007E204
    or      s0, a0, $zero              # s0 = 00000000
    lh      t2, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lbu     a1, 0x0057($sp)
    bnel    t2, $at, lbl_80885638
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFF00           # $at = 00FFFF00
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    andi    t8, a1, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 00FFFF00
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    b       lbl_80885688
    swc1    $f8, 0x0050($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80885638:
    lui     t2, 0x0C00                 # t2 = 0C000000
    ori     t2, t2, 0x00FF             # t2 = 0C0000FF
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    andi    t5, a1, 0x00FF             # t5 = 00000000
    lui     $at, 0xFAFA                # $at = FAFA0000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    or      t6, t5, $at                # t6 = FAFA0000
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    nop
    swc1    $f10, 0x0050($sp)
lbl_80885688:
    jal     func_800AA6EC
    nop
    lw      a0, 0x0064($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f16, 0x0068(s1)           # 00000068
    lw      t7, 0x0064($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    c.eq.s  $f0, $f16
    addu    t8, t8, t7
    bc1fl   lbl_808856D4
    lw      t8, 0x1DE4(t8)             # 00011DE4
    b       lbl_80885718
    mov.s   $f12, $f0
    lw      t8, 0x1DE4(t8)             # 00011DE4
lbl_808856D4:
    lui     $at, 0x4F80                # $at = 4F800000
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t0, t9,  5
    subu    t0, t0, t9
    sll     t0, t0,  2
    addu    t0, t0, t9
    sll     t0, t0,  5
    mtc1    t0, $f18                   # $f18 = 0.00
    bgez    t0, lbl_80885708
    cvt.s.w $f6, $f18
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f6, $f6, $f4
lbl_80885708:
    lui     $at, %hi(var_8088598C)     # $at = 80880000
    lwc1    $f8, %lo(var_8088598C)($at)
    mul.s   $f12, $f6, $f8
    nop
lbl_80885718:
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0050($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0064($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      a1, 0x0034($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0403                 # t6 = 04030000
    addiu   t6, t6, 0x7D20             # t6 = 04037D20
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    jal     func_800AA724
    nop
    lh      t7, 0x0032(s1)             # 00000032
    lui     $at, %hi(var_80885990)     # $at = 80880000
    lwc1    $f18, %lo(var_80885990)($at)
    mtc1    t7, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    or      a0, s1, $zero              # a0 = 00000000
lbl_808857B4:
    jal     func_808852DC
    lw      a1, 0x0064($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60

.section .data

var_808857D0: .word 0x00160700, 0x00000030, 0x00010000, 0x00000250
.word func_8088441C
.word func_80884624
.word func_80885180
.word func_80885444
var_808857F0: .word \
0x0A090000, 0x08030000, 0x02000000, 0x00000020, \
0x00010000, 0xFFCFFFFF, 0x00000000, 0x1D000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80885840: .word 0x3070FF6A
var_80885844: .word \
0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, \
0x00FFC800, 0x00FFFF00
var_8088585C: .word 0x10000100, 0xFFFFAAFF, 0x00960000
var_80885868: .word \
0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, \
0x00FFC800, 0x00FFFF00, 0x10000100, 0xFFC800FF, \
0xFF000000
var_8088588C: .word \
0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, \
0x00FFC800, 0x00FFFF00, 0x10000100, 0xAAFFFFFF, \
0x0064FF00
var_808858B0: .word \
0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, \
0x00FFC800, 0x00FFFF00, 0x10000100, 0xFFFFAAFF, \
0xFFFF0000
var_808858D4: .word \
0x00000800, 0x00000020, 0x00000020, 0x00000800, \
0x00001000, 0x00002000, 0x00010000, 0x00004000, \
0x00008000, 0x00000004
var_808858FC: .word 0x010A010B, 0x010C010A, 0x010A010A
var_80885908: .word 0x00000000, 0x3F000000, 0x00000000
var_80885914: .word 0x00000000, 0x3F000000, 0x00000000
var_80885920: .word 0xFFFF64FF
var_80885924: .word 0xFF320000
var_80885928: .word 0x00000000, 0x43C80000, 0x44BB8000
var_80885934: .word 0x00000000, 0xC3C80000, 0x44BB8000
var_80885940: .word 0x00000000, 0x00000000, 0xC3960000, 0x00000000

.section .rodata

var_80885950: .word var_80884728
.word var_80884728
.word var_80884728
.word var_8088473C
.word var_8088473C
.word var_8088473C
.word lbl_80884748
.word lbl_80884748
.word lbl_80884748
.word var_80884714
var_80885978: .word 0x3ECCCCCD
var_8088597C: .word 0x3D23D70A
var_80885980: .word 0x3E99999A
var_80885984: .word 0x40E66667
var_80885988: .word 0xBECCCCCD
var_8088598C: .word 0x38C90FDB
var_80885990: .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

