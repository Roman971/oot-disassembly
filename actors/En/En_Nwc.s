.section .text
func_80A8E000:
    sw      a1, 0x0720(a0)             # 00000720
    jr      $ra
    nop


func_80A8E00C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    jr      $ra
    nop


func_80A8E020:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0054($sp)
    lbu     t6, 0x0001(s0)             # 00000001
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x4120                # $at = 41200000
    andi    t7, t6, 0xFFFC             # t7 = 00000000
    sb      t7, 0x0001(s0)             # 00000001
    swc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lw      a0, 0x0054($sp)
    mtc1    $at, $f10                  # $f10 = 10.00
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x0010(s0)            # 00000010
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    addiu   t8, s0, 0x0038             # t8 = 00000038
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sw      a0, 0x0034($sp)
    sw      t8, 0x0014($sp)
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFEC
    addiu   a2, s0, 0x0008             # a2 = 00000008
    addiu   a3, s0, 0x001C             # a3 = 0000001C
    swc1    $f10, 0x0010($sp)
    swc1    $f8, 0x0044($sp)
    jal     func_8002FF1C
    swc1    $f16, 0x0018($sp)
    beq     v0, $zero, lbl_80A8E0A8
    lw      a0, 0x0034($sp)
    lbu     t9, 0x0001(s0)             # 00000001
    ori     t0, t9, 0x0002             # t0 = 00000002
    sb      t0, 0x0001(s0)             # 00000001
lbl_80A8E0A8:
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF8
    jal     func_8002F454
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFEC
    lwc1    $f18, 0x000C(s0)           # 0000000C
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f0, 0x0004(s0)            # 00000004
    sub.s   $f2, $f0, $f18
    lui     $at, 0x4220                # $at = 42200000
    c.le.s  $f4, $f2
    nop
    bc1fl   lbl_80A8E10C
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f6                   # $f6 = 40.00
    nop
    c.lt.s  $f2, $f6
    nop
    bc1fl   lbl_80A8E10C
    lw      $ra, 0x002C($sp)
    lbu     t1, 0x0001(s0)             # 00000001
    lwc1    $f8, 0x0004(s0)            # 00000004
    ori     t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0001(s0)             # 00000001
    swc1    $f8, 0x000C(s0)            # 0000000C
    lw      $ra, 0x002C($sp)
lbl_80A8E10C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80A8E11C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, 0xC120                # $at = C1200000
    sw      a1, 0x001C($sp)
    mtc1    $at, $f2                   # $f2 = -10.00
    or      a1, a2, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lui     $at, %hi(var_80A8E9B0)     # $at = 80A90000
    lwc1    $f6, %lo(var_80A8E9B0)($at)
    lwc1    $f4, 0x002C(a0)            # 0000002C
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(a0)            # 0000002C
    lwc1    $f0, 0x002C(a0)            # 0000002C
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A8E168
    lwc1    $f10, 0x000C(a0)           # 0000000C
    swc1    $f2, 0x002C(a0)            # 0000002C
    lwc1    $f0, 0x002C(a0)            # 0000002C
    lwc1    $f10, 0x000C(a0)           # 0000000C
lbl_80A8E168:
    add.s   $f16, $f10, $f0
    swc1    $f16, 0x000C(a0)           # 0000000C
    jal     func_80A8E020
    sw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8E188:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s7, 0x0050($sp)
    sw      s4, 0x0044($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s6, 0x004C($sp)
    sw      s5, 0x0048($sp)
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lui     $at, %hi(var_80A8E9B4)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8E9B4)($at)
    lw      s1, 0x0158(s4)             # 00000158
    addiu   s0, s4, 0x0160             # s0 = 00000160
    swc1    $f4, 0x0080($sp)
    lbu     t6, 0x015C(s4)             # 0000015C
    lui     $at, 0x42C8                # $at = 42C80000
    or      s3, $zero, $zero           # s3 = 00000000
    blez    t6, lbl_80A8E34C
    addiu   s6, $sp, 0x007C            # s6 = FFFFFFEC
    mtc1    $at, $f24                  # $f24 = 100.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s5, %hi(var_80A8E9A4)      # s5 = 80A90000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f26                # $f26 = 0.00
    addiu   s5, s5, %lo(var_80A8E9A4)  # s5 = 80A8E9A4
    addiu   s2, s0, 0x0008             # s2 = 00000168
lbl_80A8E214:
    or      a1, s2, $zero              # a1 = 00000168
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x001C             # a0 = 0000017C
    lb      t7, 0x0000(s0)             # 00000160
    or      a0, s0, $zero              # a0 = 00000160
    or      a1, s4, $zero              # a1 = 00000000
    sll     t8, t7,  2
    addu    t9, s5, t8
    lw      t9, 0x0000(t9)             # 00000000
    or      a2, s7, $zero              # a2 = 00000000
    jalr    $ra, t9
    nop
    lwc1    $f6, 0x0008(s0)            # 00000168
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sh      t1, 0x0030(s1)             # 00000030
    lwc1    $f10, 0x000C(s0)           # 0000016C
    trunc.w.s $f4, $f10
    mfc1    t3, $f4
    nop
    sh      t3, 0x0032(s1)             # 00000032
    lwc1    $f6, 0x0010(s0)            # 00000170
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    nop
    sh      t5, 0x0034(s1)             # 00000034
    lwc1    $f4, 0x0080($sp)
    lwc1    $f10, 0x000C(s0)           # 0000016C
    lwc1    $f6, 0x007C($sp)
    sub.s   $f2, $f10, $f4
    abs.s   $f0, $f2
    c.lt.s  $f0, $f22
    nop
    bc1fl   lbl_80A8E31C
    lw      t7, 0x0000(s2)             # 00000168
    lwc1    $f2, 0x0008(s0)            # 00000168
    lwc1    $f12, 0x0010(s0)           # 00000170
    lwc1    $f8, 0x0084($sp)
    sub.s   $f14, $f2, $f6
    sub.s   $f16, $f12, $f8
    mul.s   $f10, $f14, $f14
    nop
    mul.s   $f4, $f16, $f16
    add.s   $f18, $f10, $f4
    c.lt.s  $f18, $f24
    nop
    bc1f    lbl_80A8E318
    nop
    c.eq.s  $f18, $f26
    nop
    bc1tl   lbl_80A8E30C
    add.s   $f6, $f2, $f20
    sqrt.s  $f0, $f18
    div.s   $f6, $f14, $f0
    div.s   $f10, $f16, $f0
    add.s   $f8, $f2, $f6
    swc1    $f8, 0x0008(s0)            # 00000168
    add.s   $f4, $f12, $f10
    b       lbl_80A8E318
    swc1    $f4, 0x0010(s0)            # 00000170
    add.s   $f6, $f2, $f20
lbl_80A8E30C:
    add.s   $f8, $f12, $f20
    swc1    $f6, 0x0008(s0)            # 00000168
    swc1    $f8, 0x0010(s0)            # 00000170
lbl_80A8E318:
    lw      t7, 0x0000(s2)             # 00000168
lbl_80A8E31C:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x005C             # s0 = 000001BC
    sw      t7, 0x0000(s6)             # FFFFFFEC
    lw      t6, 0x0004(s2)             # 0000016C
    addiu   s1, s1, 0x0040             # s1 = 00000040
    sw      t6, 0x0004(s6)             # FFFFFFF0
    lw      t7, 0x0008(s2)             # 00000170
    sw      t7, 0x0008(s6)             # FFFFFFF4
    lbu     t8, 0x015C(s4)             # 0000015C
    slt     $at, s3, t8
    bnel    $at, $zero, lbl_80A8E214
    addiu   s2, s0, 0x0008             # s2 = 000001C4
lbl_80A8E34C:
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    lw      s4, 0x0044($sp)
    lw      s5, 0x0048($sp)
    lw      s6, 0x004C($sp)
    lw      s7, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_80A8E388:
    addiu   $sp, $sp, 0xFF00           # $sp -= 0x100
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a0, 0x0100($sp)
    lw      t6, 0x0000(a1)             # 00000000
    sw      a1, 0x0104($sp)
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8007E22C
    sw      t6, 0x00A8($sp)
    lw      t8, 0x0100($sp)
    lw      t7, 0x00A8($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    lbu     a1, 0x015C(t8)             # 0000015C
    lw      s0, 0x02D0(t7)             # 000002D0
    lui     t3, 0x0600                 # t3 = 06000000
    sll     t9, a1,  2
    subu    t9, t9, a1
    sll     t9, t9,  3
    addu    s2, t9, s0
    addiu   s2, s2, 0x0008             # s2 = 00000008
    sll     t1, a1,  4
    addu    s3, t1, s2
    addiu   s3, s3, 0x0008             # s3 = 00000008
    or      v0, s0, $zero              # v0 = 00000000
    addiu   t3, t3, 0x0840             # t3 = 06000840
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    addiu   s0, s0, 0x0008             # s0 = 00000008
    or      v1, s2, $zero              # v1 = 00000008
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x0BF0             # t5 = 06000BF0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000008
    sw      t5, 0x0004(v1)             # 0000000C
    addiu   s2, s2, 0x0008             # s2 = 00000010
    or      a0, s3, $zero              # a0 = 00000008
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0C88             # t7 = 06000C88
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(a0)             # 00000008
    sw      t7, 0x0004(a0)             # 0000000C
    addiu   s3, s3, 0x0008             # s3 = 00000010
    lw      t8, 0x0100($sp)
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   s1, t8, 0x0160             # s1 = 00000160
    sw      s1, 0x0064($sp)
    lbu     a1, 0x015C(t8)             # 0000015C
    or      s7, $zero, $zero           # s7 = 00000000
    lui     $at, %hi(var_80A8E9B8)     # $at = 80A90000
    blezl   a1, lbl_80A8E5A4
    lw      t9, 0x00A8($sp)
    lwc1    $f20, %lo(var_80A8E9B8)($at)
lbl_80A8E484:
    lb      t1, 0x0000(s1)             # 00000160
    lui     s4, 0x0600                 # s4 = 06000000
    addiu   s4, s4, 0x08B0             # s4 = 060008B0
    beq     t1, $zero, lbl_80A8E588
    addiu   a3, s1, 0x0030             # a3 = 00000190
    lhu     t2, 0x0036(s1)             # 00000196
    lwc1    $f12, 0x0008(s1)           # 00000168
    lwc1    $f4, 0x000C(s1)            # 0000016C
    mtc1    t2, $f6                    # $f6 = -2305843000000000000.00
    lui     s5, 0x0600                 # s5 = 06000000
    bgez    t2, lbl_80A8E4C4
    cvt.s.w $f8, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80A8E4C4:
    lui     s6, 0x0600                 # s6 = 06000000
    addiu   s6, s6, 0x0CE0             # s6 = 06000CE0
    add.s   $f14, $f4, $f8
    lw      a2, 0x0010(s1)             # 00000170
    jal     func_800AB510
    addiu   s5, s5, 0x0C68             # s5 = 06000C68
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t3, 0x0104($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t3)             # 00000000
    lui     t0, 0xDE00                 # t0 = DE000000
    or      v1, s0, $zero              # v1 = 00000008
    lui     t5, 0x0064                 # t5 = 00640000
    ori     t5, t5, 0xFFFF             # t5 = 0064FFFF
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000008
    sw      t5, 0x0004(v1)             # 0000000C
    addiu   s0, s0, 0x0008             # s0 = 00000010
    or      a0, s0, $zero              # a0 = 00000010
    sw      s8, 0x0000(a0)             # 00000010
    sw      v0, 0x0004(a0)             # 00000014
    addiu   s0, s0, 0x0008             # s0 = 00000018
    or      a1, s0, $zero              # a1 = 00000018
    sw      t0, 0x0000(a1)             # 00000018
    sw      s4, 0x0004(a1)             # 0000001C
    addiu   s0, s0, 0x0008             # s0 = 00000020
    or      a2, s2, $zero              # a2 = 00000010
    sw      s8, 0x0000(a2)             # 00000010
    sw      v0, 0x0004(a2)             # 00000014
    addiu   s2, s2, 0x0008             # s2 = 00000018
    or      a3, s2, $zero              # a3 = 00000018
    sw      t0, 0x0000(a3)             # 00000018
    sw      s5, 0x0004(a3)             # 0000001C
    addiu   s2, s2, 0x0008             # s2 = 00000020
    or      v1, s3, $zero              # v1 = 00000010
    sw      s8, 0x0000(v1)             # 00000010
    sw      v0, 0x0004(v1)             # 00000014
    addiu   s3, s3, 0x0008             # s3 = 00000018
    or      a0, s3, $zero              # a0 = 00000018
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(a0)             # 00000018
    sw      s6, 0x0004(a0)             # 0000001C
    addiu   s3, s3, 0x0008             # s3 = 00000020
    lw      t7, 0x0100($sp)
    lbu     a1, 0x015C(t7)             # 0000015C
lbl_80A8E588:
    addiu   s7, s7, 0x0001             # s7 = 00000001
    slt     $at, s7, a1
    bne     $at, $zero, lbl_80A8E484
    addiu   s1, s1, 0x005C             # s1 = 000001BC
    lw      s1, 0x0064($sp)
    or      s7, $zero, $zero           # s7 = 00000000
    lw      t9, 0x00A8($sp)
lbl_80A8E5A4:
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    sw      s3, 0x02D0(t9)             # 000002D0
    lw      t8, 0x0104($sp)
    jal     func_8007E404
    lw      a0, 0x0000(t8)             # 00000000
    lw      t1, 0x00A8($sp)
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0D10             # t4 = 06000D10
    lw      s0, 0x02D0(t1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     $at, %hi(var_80A8E9BC)     # $at = 80A90000
    addiu   t2, s0, 0x0008             # t2 = 00000028
    sw      t2, 0x02D0(t1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000024
    sw      t3, 0x0000(s0)             # 00000020
    lw      t5, 0x0100($sp)
    lbu     a1, 0x015C(t5)             # 0000015C
    blezl   a1, lbl_80A8E6D0
    lw      $ra, 0x0054($sp)
    lwc1    $f22, %lo(var_80A8E9BC)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s4, $sp, 0x00B0            # s4 = FFFFFFB0
lbl_80A8E604:
    lb      t6, 0x0000(s1)             # 000001BC
    beql    t6, $zero, lbl_80A8E6C0
    addiu   s7, s7, 0x0001             # s7 = 00000001
    lw      a0, 0x0038(s1)             # 000001F4
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   s3, s3, 0x0D50             # s3 = 06000D50
    beql    a0, $zero, lbl_80A8E6C0
    addiu   s7, s7, 0x0001             # s7 = 00000002
    lw      a1, 0x0008(s1)             # 000001C4
    lw      a2, 0x0004(s1)             # 000001C0
    lw      a3, 0x0010(s1)             # 000001CC
    jal     func_8002B668
    sw      s4, 0x0010($sp)
    jal     func_800AA764
    or      a0, s4, $zero              # a0 = FFFFFFB0
    lh      t7, 0x0032(s1)             # 000001EE
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f22
    jal     func_800AAB94
    nop
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x00A8($sp)
    lw      s2, 0x02D0(v0)             # 000002D0
    addiu   t9, s2, 0x0008             # t9 = 00000028
    sw      t9, 0x02D0(v0)             # 000002D0
    sw      s8, 0x0000(s2)             # 00000020
    lw      t8, 0x0104($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000024
    lw      t2, 0x00A8($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    lw      s0, 0x02D0(t2)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000028
    sw      t1, 0x02D0(t2)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000024
    sw      t3, 0x0000(s0)             # 00000020
    lw      t4, 0x0100($sp)
    lbu     a1, 0x015C(t4)             # 0000015C
    addiu   s7, s7, 0x0001             # s7 = 00000003
lbl_80A8E6C0:
    slt     $at, s7, a1
    bne     $at, $zero, lbl_80A8E604
    addiu   s1, s1, 0x005C             # s1 = 00000218
    lw      $ra, 0x0054($sp)
lbl_80A8E6D0:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0100           # $sp += 0x100


func_80A8E704:
    addiu   $sp, $sp, 0xFD60           # $sp -= 0x2A0
    sw      s4, 0x003C($sp)
    lui     s4, %hi(var_80A8E994)      # s4 = 80A90000
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, s4, %lo(var_80A8E994)  # s4 = 80A8E994
    sw      $ra, 0x0044($sp)
    sw      s5, 0x0040($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    addiu   v0, $sp, 0x0058            # v0 = FFFFFDB8
    lui     v1, %hi(var_80A8E970)      # v1 = 80A90000
    or      s5, s2, $zero              # s5 = 00000000
    sw      v0, 0x000C(s4)             # 80A8E9A0
    addiu   v1, v1, %lo(var_80A8E970)  # v1 = 80A8E970
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80A8E758:
    or      t9, v1, $zero              # t9 = 80A8E970
    or      t0, v0, $zero              # t0 = FFFFFDB8
    addiu   t1, v1, 0x0024             # t1 = 80A8E994
lbl_80A8E764:
    lw      t8, 0x0000(t9)             # 80A8E970
    addiu   t9, t9, 0x000C             # t9 = 80A8E97C
    addiu   t0, t0, 0x000C             # t0 = FFFFFDC4
    sw      t8, -0x000C(t0)            # FFFFFDB8
    lw      t7, -0x0008(t9)            # 80A8E974
    sw      t7, -0x0008(t0)            # FFFFFDBC
    lw      t8, -0x0004(t9)            # 80A8E978
    bne     t9, t1, lbl_80A8E764
    sw      t8, -0x0004(t0)            # FFFFFDC0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    slti    $at, s1, 0x0010
    bne     $at, $zero, lbl_80A8E758
    addiu   v0, v0, 0x0024             # v0 = FFFFFDDC
    addiu   s0, s2, 0x013C             # s0 = 0000013C
    or      a1, s0, $zero              # a1 = 0000013C
    jal     func_8004A484
    or      a0, s3, $zero              # a0 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 0000013C
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_8004A6BC
    or      a3, s4, $zero              # a3 = 80A8E994
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    andi    t3, t2, 0x00FF             # t3 = 00000010
    sb      t2, 0x015C(s2)             # 0000015C
    addiu   s0, s2, 0x0160             # s0 = 00000160
    blez    t3, lbl_80A8E850
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    addiu   s4, $zero, 0x0005          # s4 = 00000005
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_80A8E7F4:
    jal     func_800CDCCC              # Rand.Next() float
    sb      s3, 0x0000(s0)             # 00000160
    mul.s   $f4, $f0, $f20
    lwc1    $f8, 0x0024(s2)            # 00000024
    sub.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(s0)           # 00000168
    lwc1    $f16, 0x0028(s2)           # 00000028
    add.s   $f18, $f16, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x000C(s0)           # 0000016C
    mul.s   $f4, $f0, $f20
    lwc1    $f8, 0x002C(s2)            # 0000002C
    sh      s4, 0x0036(s0)             # 00000196
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x005C             # s0 = 000001BC
    sub.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, -0x004C(s0)          # 00000170
    lbu     t4, 0x015C(s5)             # 0000015C
    slt     $at, s1, t4
    bne     $at, $zero, lbl_80A8E7F4
    nop
lbl_80A8E850:
    lui     a1, %hi(func_80A8E8BC)     # a1 = 80A90000
    addiu   a1, a1, %lo(func_80A8E8BC) # a1 = 80A8E8BC
    jal     func_80A8E000
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x02A0           # $sp += 0x2A0


func_80A8E890:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A4B0
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8E8BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A8E188
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8E8DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0018($sp)
    lw      t9, 0x0720(a3)             # 00000720
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      a0, 0x001C($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a3, 0x013C             # a2 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8E930:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A8E388
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_80A8E950: .word 0x01350600, 0x00000030, 0x01240000, 0x00000724
.word func_80A8E704
.word func_80A8E890
.word func_80A8E8DC
.word func_80A8E930
var_80A8E970: .word \
0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x000A0064
var_80A8E994: .word 0x03000939, 0x00000000, 0x00000010, 0x00000000
var_80A8E9A4: .word func_80A8E00C
.word func_80A8E11C
.word 0x00000000

.section .rodata

var_80A8E9B0: .word 0x3DCCCCCD
var_80A8E9B4: .word 0x47C34FF3
var_80A8E9B8: .word 0x3C23D70A
var_80A8E9BC: .word 0x38C90FDB

