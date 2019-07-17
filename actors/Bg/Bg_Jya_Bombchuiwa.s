.section .text
func_80AC5E50:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_80AC6884)      # a3 = 80AC0000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0160             # t6 = 00000160
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_80AC6884)  # a3 = 80AC6884
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AC5EA4:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lbu     t6, 0x01A6(a0)             # 000001A6
    andi    t8, t6, 0xFFF8             # t8 = 00000000
    sb      t8, 0x01A6(a0)             # 000001A6
    or      t9, t8, a1                 # t9 = 00000000
    sb      t9, 0x01A6(a0)             # 000001A6
    jr      $ra
    nop


func_80AC5EC8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, %hi(var_80AC6894)      # a1 = 80AC0000
    addiu   a1, a1, %lo(var_80AC6894)  # a1 = 80AC6894
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC5E50
    lw      a1, 0x0024($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AC5F20
    lw      a1, 0x0024($sp)
    jal     func_80AC6400
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC5F2C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AC5F20:
    jal     func_80AC6200
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AC5F2C:
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC5F48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a3, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC5F74:
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      s5, 0x008C($sp)
    or      s5, a0, $zero              # s5 = 00000000
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
    sw      a1, 0x00CC($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f30                  # $f30 = 3.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f28                  # $f28 = 25.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f26                  # $f26 = 50.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f24                  # $f24 = 40.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    lui     s8, 0x0601                 # s8 = 06010000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s8, s8, 0xEDC0             # s8 = 0600EDC0
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $sp, 0x00B0            # s7 = FFFFFFE8
    addiu   s6, $sp, 0x00BC            # s6 = FFFFFFF4
    addiu   s2, $zero, 0x000C          # s2 = 0000000C
lbl_80AC6008:
    jal     func_800CDCCC              # Rand.Next() float
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    mul.s   $f4, $f0, $f20
    lwc1    $f6, 0x0024(s5)            # 00000024
    add.s   $f8, $f4, $f6
    sub.s   $f10, $f8, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00BC($sp)
    mul.s   $f16, $f0, $f24
    lwc1    $f18, 0x0028(s5)           # 00000028
    add.s   $f4, $f16, $f18
    sub.s   $f6, $f4, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00C0($sp)
    mul.s   $f8, $f0, $f26
    lwc1    $f10, 0x002C(s5)           # 0000002C
    add.s   $f16, $f8, $f10
    sub.s   $f18, $f16, $f28
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00C4($sp)
    mul.s   $f4, $f0, $f30
    lui     $at, %hi(var_80AC68C0)     # $at = 80AC0000
    lwc1    $f6, %lo(var_80AC68C0)($at)
    sub.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B0($sp)
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f10                  # $f10 = 18.00
    nop
    mul.s   $f16, $f0, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00B4($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    sub.s   $f4, $f0, $f18
    mul.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B8($sp)
    mul.s   $f10, $f0, $f22
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     t7, v0, 16
    sra     t8, t7, 16
    sll     s1, v0, 16
    slti    $at, t8, 0x000B
    bne     $at, $zero, lbl_80AC60E0
    sra     s1, s1, 16
    beq     $zero, $zero, lbl_80AC60E0
    addiu   s0, $zero, 0x0005          # s0 = 00000005
lbl_80AC60E0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80AC68C4)     # $at = 80AC0000
    lwc1    $f18, %lo(var_80AC68C4)($at)
    lw      a0, 0x00CC($sp)
    or      a1, s6, $zero              # a1 = FFFFFFF4
    c.lt.s  $f0, $f18
    or      a2, s7, $zero              # a2 = FFFFFFE8
    or      a3, s6, $zero              # a3 = FFFFFFF4
    addiu   t9, $zero, 0xFED4          # t9 = FFFFFED4
    bc1f    lbl_80AC6120
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    ori     s0, s0, 0x0040             # s0 = 00000045
    sll     s0, s0, 16
    beq     $zero, $zero, lbl_80AC613C
    sra     s0, s0, 16
lbl_80AC6120:
    ori     s0, s0, 0x0020             # s0 = 00000065
    sll     s0, s0, 16
    slti    $at, s1, 0x0008
    beq     $at, $zero, lbl_80AC613C
    sra     s0, s0, 16
    addiu   s2, $zero, 0x0046          # s2 = 00000046
    addiu   s3, $zero, 0x0028          # s3 = 00000028
lbl_80AC613C:
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x00F1          # t4 = 000000F1
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    sw      t2, 0x0030($sp)
    sw      t1, 0x002C($sp)
    sw      t9, 0x0010($sp)
    sw      s0, 0x0014($sp)
    sw      s2, 0x0018($sp)
    sw      s3, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      s1, 0x0024($sp)
    sw      t0, 0x0028($sp)
    jal     func_8001D998
    sw      s8, 0x003C($sp)
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    s4, $at, lbl_80AC6008
    addiu   s2, $zero, 0x000C          # s2 = 0000000C
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      a0, 0x00CC($sp)
    addiu   a1, s5, 0x0024             # a1 = 00000024
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    jal     func_80026308
    sw      $zero, 0x0018($sp)
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
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8


func_80AC6200:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, %hi(func_80AC6238)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6238) # t6 = 80AC6238
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)
    jal     func_80AC5EA4
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)
    sh      $zero, 0x01A4(a0)          # 000001A4
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AC6238:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x0151(s0)             # 00000151
    andi    t7, t6, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_80AC6278
    lh      v0, 0x01A4(s0)             # 000001A4
    lh      t8, 0x01A4(s0)             # 000001A4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    blez    t8, lbl_80AC62E4
    or      a0, s1, $zero              # a0 = 00000000
    lh      v0, 0x01A4(s0)             # 000001A4
lbl_80AC6278:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0D52          # a1 = 00000D52
    bne     v0, $zero, lbl_80AC6298
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lh      v0, 0x01A4(s0)             # 000001A4
lbl_80AC6298:
    addiu   t9, v0, 0x0001             # t9 = 00000001
    sh      t9, 0x01A4(s0)             # 000001A4
    lh      t0, 0x01A4(s0)             # 000001A4
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x000B
    bnel    $at, $zero, lbl_80AC630C
    lw      $ra, 0x0024($sp)
    jal     func_80AC5F74
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC631C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2810          # a3 = 00002810
    beq     $zero, $zero, lbl_80AC630C
    lw      $ra, 0x0024($sp)
lbl_80AC62E4:
    addu    a1, s1, $at
    addiu   a2, s0, 0x0140             # a2 = 00000140
    sw      a2, 0x0028($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0028($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80AC630C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80AC631C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, %hi(func_80AC6374)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC6374) # t6 = 80AC6374
    sw      t6, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)
    jal     func_80AC5EA4
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80AC68C8)     # $at = 80AC0000
    lwc1    $f4, %lo(var_80AC68C8)($at)
    lw      t7, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      $zero, 0x01A4(a0)          # 000001A4
    and     t8, t7, $at
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x01A0(a0)            # 000001A0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC6374:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x01A4(s0)             # 000001A4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x4270                 # a2 = 42700000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01A4(s0)             # 000001A4
    lh      t8, 0x01A4(s0)             # 000001A4
    lw      a0, 0x0034($sp)
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_80AC63C8
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_80026308
    sw      $zero, 0x0018($sp)
lbl_80AC63C8:
    lui     a2, 0x3CE5                 # a2 = 3CE50000
    ori     a2, a2, 0x6042             # a2 = 3CE56042
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    jal     func_8006385C
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     v0, $zero, lbl_80AC63EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC6400
    lw      a1, 0x0034($sp)
lbl_80AC63EC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AC6400:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     $at, 0x4319                # $at = 43190000
    mtc1    $at, $f4                   # $f4 = 153.00
    sw      $zero, 0x013C(s0)          # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80AC5EA4
    swc1    $f4, 0x01A0(s0)            # 000001A0
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x003C($sp)
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x00B7          # a2 = 000000B7
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AC6478:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x013C(a0)             # 0000013C
    beql    v0, $zero, lbl_80AC6498
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_80AC6498:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC64A4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lw      a1, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0x19B0             # t2 = 060119B0
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a1)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AC6528:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lw      t2, 0x0028($sp)
    lui     t3, 0xFA00                 # t3 = FA000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      a3, 0x02D0(a2)             # 000002D0
    lui     $at, 0x4319                # $at = 43190000
    mtc1    $at, $f6                   # $f6 = 153.00
    addiu   t6, a3, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      t3, 0x0000(a3)             # 00000000
    lwc1    $f4, 0x01A0(t2)            # 000001A0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6
    addiu   t4, $zero, 0xFF00          # t4 = FFFFFF00
    lui     t5, 0xDE00                 # t5 = DE000000
    cfc1    t7, $f31
    ctc1    a0, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    beql    a0, $zero, lbl_80AC6624
    mfc1    a0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    a0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    bne     a0, $zero, lbl_80AC6618
    nop
    mfc1    a0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AC6630
    or      a0, a0, $at                # a0 = 80000000
lbl_80AC6618:
    beq     $zero, $zero, lbl_80AC6630
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    mfc1    a0, $f10
lbl_80AC6624:
    nop
    bltz    a0, lbl_80AC6618
    nop
lbl_80AC6630:
    ctc1    t7, $f31
    sltiu   $at, a0, 0x009A
    bne     $at, $zero, lbl_80AC6648
    or      a1, a0, $zero              # a1 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC6648
    addiu   a1, $zero, 0x0099          # a1 = 00000099
lbl_80AC6648:
    andi    t8, a1, 0x00FF             # t8 = 00000099
    or      t9, t8, t4                 # t9 = FFFFFF99
    sw      t9, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xDC40             # t7 = 0600DC40
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x02D0(a2)             # 000002D0
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      t3, 0x0000(t0)             # 00000000
    lwc1    $f16, 0x01A0(t2)           # 000001A0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f16, $f18
    cfc1    t7, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80AC671C
    mfc1    t1, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80AC6710
    nop
    mfc1    t1, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AC6728
    or      t1, t1, $at                # t1 = 80000000
lbl_80AC6710:
    beq     $zero, $zero, lbl_80AC6728
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f6
lbl_80AC671C:
    nop
    bltz    t1, lbl_80AC6710
    nop
lbl_80AC6728:
    ctc1    t7, $f31
    sltiu   $at, t1, 0x0100
    bne     $at, $zero, lbl_80AC6740
    or      a1, t1, $zero              # a1 = FFFFFFFF
    beq     $zero, $zero, lbl_80AC6740
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
lbl_80AC6740:
    andi    t8, a1, 0x00FF             # t8 = 000000FF
    or      t9, t8, t4                 # t9 = FFFFFFFF
    sw      t9, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xDB60             # t7 = 0600DB60
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AC6778:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x01A6(s0)             # 000001A6
    lw      a0, 0x0024($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    andi    t6, v0, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80AC67C0
    andi    t7, v0, 0x0002             # t7 = 00000000
    jal     func_80028048
    addiu   a1, a1, 0xE8D0             # a1 = 0600E8D0
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, s0, 0x0140             # a1 = 00000140
    lbu     v0, 0x01A6(s0)             # 000001A6
    andi    t7, v0, 0x0002             # t7 = 00000000
lbl_80AC67C0:
    beql    t7, $zero, lbl_80AC67D8
    andi    t8, v0, 0x0004             # t8 = 00000000
    jal     func_80AC64A4
    lw      a0, 0x0024($sp)
    lbu     v0, 0x01A6(s0)             # 000001A6
    andi    t8, v0, 0x0004             # t8 = 00000000
lbl_80AC67D8:
    beq     t8, $zero, lbl_80AC682C
    lui     $at, %hi(var_80AC68A8)     # $at = 80AC0000
    lui     a2, %hi(var_80AC68B0)      # a2 = 80AC0000
    lui     a3, %hi(var_80AC68B4)      # a3 = 80AC0000
    addiu   a3, a3, %lo(var_80AC68B4)  # a3 = 80AC68B4
    lw      a2, %lo(var_80AC68B0)(a2)
    lwc1    $f12, %lo(var_80AC68A8)($at)
    jal     func_800AB510
    lwc1    $f14, %lo(var_80AC68AC)($at)
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t9, 0x01A6(s0)             # 000001A6
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t9, 0x0004             # t0 = 00000000
    beql    t0, $zero, lbl_80AC6830
    lw      $ra, 0x001C($sp)
    jal     func_80AC6528
    lw      a1, 0x0024($sp)
lbl_80AC682C:
    lw      $ra, 0x001C($sp)
lbl_80AC6830:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop

.section .data

var_80AC6840: .word 0x01590100, 0x00000001, 0x00F10000, 0x000001A8
.word func_80AC5EC8
.word func_80AC5F48
.word func_80AC6478
.word func_80AC6778
var_80AC6860: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010100, 0x0000FED4, 0x00000000, \
0x00280064
var_80AC6884: .word 0x0A000921, 0x20000000, 0x00000001
.word var_80AC6860
var_80AC6894: .word \
0x801F0003, 0xC8500064, 0xB0F403E8, 0xB0F803E8, \
0x30FC03E8
var_80AC68A8: .word 0xC4660000
var_80AC68AC: .word 0x43F00000
var_80AC68B0: .word 0xC45E4000
var_80AC68B4: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AC68C0: .word 0x3E99999A
var_80AC68C4: .word 0x3ECCCCCD
var_80AC68C8: .word 0x3E99999A, 0x00000000

