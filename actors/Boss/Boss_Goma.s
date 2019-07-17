.section .text
func_808A7370:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    sll     t8, a2,  1
    addu    t9, a0, t8
    beq     t7, $zero, lbl_808A7398
    nop
    sh      $zero, 0x0000(t9)          # 00000000
lbl_808A7398:
    jr      $ra
    nop


func_808A73A0:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    andi    t8, a2, 0x000F             # t8 = 00000000
    sll     t9, t8,  1
    beq     t7, $zero, lbl_808A73EC
    andi    t0, a2, 0x00F0             # t0 = 00000000
    sll     t1, t0,  2
    addu    t2, t9, t1
    sll     t3, t2, 16
    sra     t4, t3, 16
    sll     t5, t4,  1
    addu    v0, a0, t5
    sh      $zero, 0x0000(v0)          # 00000000
    sh      $zero, 0x0002(v0)          # 00000002
    sh      $zero, 0x0040(v0)          # 00000040
    sh      $zero, 0x0042(v0)          # 00000042
lbl_808A73EC:
    jr      $ra
    nop


func_808A73F4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sll     s1, a1, 16
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s3, 0x00FF                 # s3 = 00FF0000
    sw      s4, 0x0028($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    lui     s4, 0x8000                 # s4 = 80000000
    ori     s3, s3, 0xFFFF             # s3 = 00FFFFFF
    addiu   s2, s2, 0x0C38             # s2 = 80120C38
    sra     s1, s1, 16
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x83A8             # v0 = 060183A8
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, s2, t8
    lw      t0, 0x0000(t9)             # 00000000
    and     t1, v0, s3
    sll     a2, s1, 16
    addu    t2, t0, t1
    addu    a0, t2, s4
    sra     a2, a2, 16
    jal     func_808A7370
    or      a1, s0, $zero              # a1 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x85A8             # v0 = 060185A8
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, s2, t5
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, v0, s3
    sll     a2, s1, 16
    addu    t9, t7, t8
    addu    a0, t9, s4
    sra     a2, a2, 16
    jal     func_808A7370
    or      a1, s0, $zero              # a1 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x87A8             # v0 = 060187A8
    sll     t0, v0,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    addu    t3, s2, t2
    lw      t4, 0x0000(t3)             # 00000000
    and     t5, v0, s3
    sll     a2, s1, 16
    addu    t6, t4, t5
    addu    a0, t6, s4
    sra     a2, a2, 16
    jal     func_808A7370
    or      a1, s0, $zero              # a1 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x91A8             # v0 = 060191A8
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, s2, t9
    lw      t1, 0x0000(t0)             # 00000000
    and     t2, v0, s3
    sll     a2, s1, 16
    addu    t3, t1, t2
    addu    a0, t3, s4
    sra     a2, a2, 16
    jal     func_808A7370
    or      a1, s0, $zero              # a1 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x89A8             # v0 = 060189A8
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, s2, t6
    lw      t8, 0x0000(t7)             # 00000000
    and     t9, v0, s3
    sll     a2, s1, 16
    addu    t0, t8, t9
    addu    a0, t0, s4
    sra     a2, a2, 16
    jal     func_808A73A0
    or      a1, s0, $zero              # a1 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x93A8             # v0 = 060193A8
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, s2, t3
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, v0, s3
    sll     a2, s1, 16
    addu    t7, t5, t6
    addu    a0, t7, s4
    sra     a2, a2, 16
    jal     func_808A73A0
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808A75A4:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a1, %hi(var_808ACB78)      # a1 = 808B0000
    addiu   a1, a1, %lo(var_808ACB78)  # a1 = 808ACB78
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0x457A                 # a1 = 457A0000
    jal     func_8001EC20
    lui     a3, 0x4316                 # a3 = 43160000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0602                 # a2 = 06020000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   a3, a3, 0x2678             # a3 = 06012678
    addiu   a2, a2, 0xC8F8             # a2 = 0601C8F8
    sw      a1, 0x0044($sp)
    or      a0, s1, $zero              # a0 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x2678             # a1 = 06012678
    jal     func_8008D2D4
    lw      a0, 0x0044($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0xC396                # $at = C3960000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mtc1    $at, $f8                   # $f8 = -300.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x8000          # t6 = FFFF8000
    sh      t6, 0x00B4(s0)             # 000000B4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f0, 0x01E8(s0)            # 000001E8
    swc1    $f0, 0x0214(s0)            # 00000214
    swc1    $f4, 0x01EC(s0)            # 000001EC
    swc1    $f6, 0x01F0(s0)            # 000001F0
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_808A796C
    swc1    $f10, 0x006C(s0)           # 0000006C
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t7, 0x00AF(s0)             # 000000AF
    sb      t8, 0x00AE(s0)             # 000000AE
    addiu   a1, s0, 0x07AC             # a1 = 000007AC
    sw      a1, 0x0044($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808AC904)      # a3 = 808B0000
    addiu   t9, s0, 0x07CC             # t9 = 000007CC
    lw      a1, 0x0044($sp)
    sw      t9, 0x0010($sp)
    addiu   a3, a3, %lo(var_808AC904)  # a3 = 808AC904
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s1
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808A774C
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC420                # $at = C4200000
    mtc1    $at, $f16                  # $f16 = -640.00
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0028($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0018($sp)
    jal     func_800253F0
    swc1    $f16, 0x0014($sp)
    lui     $at, 0xC420                # $at = C4200000
    mtc1    $at, $f18                  # $f18 = -640.00
    lui     $at, 0xC2A8                # $at = C2A80000
    mtc1    $at, $f4                   # $f4 = -84.00
    lw      a0, 0x0044($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0x430D                 # a3 = 430D0000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f18, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    lw      $ra, 0x003C($sp)
lbl_808A774C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808A775C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x002C($sp)
    sll     s0, a2, 16
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sra     s0, s0, 16
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    beq     s0, $zero, lbl_808A7798
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     s0, $at, lbl_808A7798
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s0, $at, lbl_808A77D8
lbl_808A7798:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lh      t6, 0x0046($sp)
    addiu   t7, $zero, 0x01F4          # t7 = 000001F4
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0020($sp)
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    lw      a0, 0x003C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, s1, 0x0268             # a2 = 00000268
    lui     a3, 0x41C8                 # a3 = 41C80000
    sw      t6, 0x0010($sp)
    jal     func_800260E8
    swc1    $f4, 0x0014($sp)
lbl_808A77D8:
    beq     s0, $zero, lbl_808A77EC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     s0, $at, lbl_808A77EC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s0, $at, lbl_808A782C
lbl_808A77EC:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lh      t0, 0x0046($sp)
    addiu   t1, $zero, 0x01F4          # t1 = 000001F4
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    lw      a0, 0x003C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, s1, 0x0274             # a2 = 00000274
    lui     a3, 0x41C8                 # a3 = 41C80000
    sw      t0, 0x0010($sp)
    jal     func_800260E8
    swc1    $f6, 0x0014($sp)
lbl_808A782C:
    bne     s0, $zero, lbl_808A7848
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x380D          # a1 = 0000380D
    beq     $zero, $zero, lbl_808A7854
    lw      $ra, 0x0034($sp)
lbl_808A7848:
    jal     func_80022FD0
    addiu   a1, $zero, 0x380A          # a1 = 0000380A
    lw      $ra, 0x0034($sp)
lbl_808A7854:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808A7864:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8008D6D0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x07AC             # a1 = 000007AC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808A78A4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xB2FC             # a0 = 0600B2FC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xB2FC             # a1 = 0600B2FC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      t0, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t7, %hi(func_808A96F4)     # t7 = 808B0000
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    addiu   t7, t7, %lo(func_808A96F4) # t7 = 808A96F4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x04B0          # t9 = 000004B0
    lui     a0, 0x1001                 # a0 = 10010000
    and     t1, t0, $at
    sw      t7, 0x0180(s0)             # 00000180
    sh      t8, 0x01AE(s0)             # 000001AE
    sh      $zero, 0x01B0(s0)          # 000001B0
    sh      $zero, 0x01B2(s0)          # 000001B2
    sh      t9, 0x01C2(s0)             # 000001C2
    sh      $zero, 0x01C0(s0)          # 000001C0
    sw      t1, 0x0004(s0)             # 00000004
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_800CAA70
    swc1    $f0, 0x00C4(s0)            # 000000C4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3812          # a1 = 00003812
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A796C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x2360             # a0 = 06002360
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC170                # $at = C1700000
    lw      v1, 0x0028($sp)
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -15.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2360             # a1 = 06002360
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      v0, 0x002C($sp)
    lw      v1, 0x0028($sp)
    lui     t6, %hi(func_808A85FC)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808A85FC) # t6 = 808A85FC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addu    $at, $at, v0
    sw      t6, 0x0180(v1)             # 00000180
    sh      $zero, 0x01C0(v1)          # 000001C0
    sh      t7, 0x01AE(v1)             # 000001AE
    sb      t8, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addu    $at, $at, v0
    sh      t9, 0x0AFA($at)            # 00010AFA
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A7A10:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x2678             # a0 = 06012678
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    cvt.s.w $f6, $f4
    jal     func_80063BF0
    swc1    $f6, 0x002C($sp)
    lw      v1, 0x0030($sp)
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    sh      v0, 0x01C2(v1)             # 000001C2
    lwc1    $f8, 0x002C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x2678             # a1 = 06012678
    sw      $zero, 0x0014($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f10, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0010($sp)
    lw      t7, 0x0030($sp)
    lui     t6, %hi(func_808AAF08)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AAF08) # t6 = 808AAF08
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A7A98:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    jal     func_80063BF0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    lw      t6, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x193C             # a0 = 0600193C
    jal     func_8008A194
    sh      v0, 0x01C2(t6)             # 000001C2
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x193C             # a1 = 0600193C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_808AAF70)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AAF70) # t7 = 808AAF70
    sw      t7, 0x0180(t8)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A7B1C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f4                   # $f4 = -5.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5F28             # a1 = 06005F28
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    lui     t7, %hi(func_808AABDC)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AABDC) # t7 = 808AABDC
    sw      t7, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f6, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A7B98:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f4                   # $f4 = -5.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x58C0             # a1 = 060058C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    lui     t7, %hi(func_808AAC90)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AAC90) # t7 = 808AAC90
    sw      t7, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f6, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A7C14:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x13BC             # a0 = 060113BC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f8                   # $f8 = -15.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x13BC             # a1 = 060113BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808AAD50)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AAD50) # t6 = 808AAD50
    sw      t6, 0x0180(v0)             # 00000180
    sh      $zero, 0x01A2(v0)          # 000001A2
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A7C88:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x29F0             # a0 = 060029F0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x29F0             # a1 = 060029F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808AAEAC)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AAEAC) # t6 = 808AAEAC
    addiu   t7, $zero, 0x0046          # t7 = 00000046
    sw      t6, 0x0180(v0)             # 00000180
    sh      t7, 0x01C2(v0)             # 000001C2
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A7D00:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x66DC             # a0 = 060066DC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x66DC             # a1 = 060066DC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(func_808AB2D8)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AB2D8) # t6 = 808AB2D8
    sw      t6, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A7D84:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x2360             # a0 = 06002360
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -5.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x2360             # a1 = 06002360
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(func_808AB3A4)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AB3A4) # t6 = 808AB3A4
    sw      t6, 0x0180(s0)             # 00000180
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_80063BF0
    swc1    $f0, 0x006C(s0)            # 0000006C
    sh      v0, 0x01C2(s0)             # 000001C2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808A7E18:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0xD74C             # a0 = 0601D74C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0xD74C             # a1 = 0601D74C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0028($sp)
    lui     t6, %hi(func_808AB068)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AB068) # t6 = 808AB068
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    addiu   a1, $zero, 0x006E          # a1 = 0000006E
    jal     func_80063BF0
    sw      t6, 0x0180(t7)             # 00000180
    lw      t8, 0x0028($sp)
    sh      v0, 0x01C2(t8)             # 000001C2
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808A7E98:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5F28             # a0 = 06005F28
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5F28             # a1 = 06005F28
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_808AAA54)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AAA54) # t7 = 808AAA54
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5F28             # a0 = 06005F28
    jal     func_8008A194
    sw      t7, 0x0180(t8)             # 00000180
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      t9, 0x0028($sp)
    cvt.s.w $f16, $f10
    swc1    $f16, 0x020C(t9)           # 0000020C
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808A7F24:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x58C0             # a0 = 060058C0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x58C0             # a1 = 060058C0
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x58C0             # a0 = 060058C0
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      v1, 0x0028($sp)
    lui     t7, %hi(func_808AA9B0)     # t7 = 808B0000
    cvt.s.w $f16, $f10
    addiu   t7, t7, %lo(func_808AA9B0) # t7 = 808AA9B0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x58C0             # a0 = 060058C0
    sw      t7, 0x0180(v1)             # 00000180
    jal     func_8008A194
    swc1    $f16, 0x020C(v1)           # 0000020C
    mtc1    v0, $f18                   # $f18 = 0.00
    lw      t8, 0x0028($sp)
    cvt.s.w $f4, $f18
    swc1    $f4, 0x020C(t8)            # 0000020C
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808A7FC8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xCCD8             # a0 = 0600CCD8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCCD8             # a1 = 0600CCD8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0028($sp)
    lui     t6, %hi(func_808AAAB0)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AAAB0) # t6 = 808AAAB0
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A8038:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC468             # a0 = 0600C468
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0xC468             # a1 = 0600C468
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_808AA564)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AA564) # t7 = 808AA564
    sw      t7, 0x0180(t8)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A80AC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0AE8             # a0 = 06000AE8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0AE8             # a1 = 06000AE8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808AA66C)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AA66C) # t6 = 808AA66C
    sw      t6, 0x0180(v0)             # 00000180
    sh      $zero, 0x01C2(v0)          # 000001C2
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A8120:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4318             # a0 = 06004318
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lw      v1, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x4318             # a1 = 06004318
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    lw      v1, 0x0028($sp)
    lui     t7, %hi(func_808AA6C8)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AA6C8) # t7 = 808AA6C8
    sw      t7, 0x0180(v1)             # 00000180
    sh      $zero, 0x01C0(v1)          # 000001C0
    sh      $zero, 0x01C2(v1)          # 000001C2
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A819C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x6E60             # a0 = 06006E60
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x6E60             # a1 = 06006E60
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_808AA918)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AA918) # t7 = 808AA918
    sw      t7, 0x0180(t8)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808A8210:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sdc1    $f20, 0x0030($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    mtc1    a3, $f20                   # $f20 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    or      s7, a1, $zero              # s7 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    lui     $at, %hi(var_808ACBA4)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACBA4)($at)
    addiu   s0, s8, 0x013C             # s0 = 0000013C
    or      s3, $zero, $zero           # s3 = 00000000
    add.s   $f6, $f4, $f12
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f6, %lo(var_808ACBA4)($at)
    mfc1    a1, $f20
    addiu   a0, s8, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lh      t6, 0x00BA($sp)
    addiu   a0, s8, 0x0024             # a0 = 00000024
    lui     a1, %hi(var_808ACB9C)      # a1 = 808B0000
    beql    t6, $zero, lbl_808A82CC
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_80063F00
    addiu   a1, a1, %lo(var_808ACB9C)  # a1 = 808ACB9C
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, v0, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s8, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    or      a0, s0, $zero              # a0 = 0000013C
lbl_808A82CC:
    jal     func_8008D6A8
    lui     a1, 0x4110                 # a1 = 41100000
    beq     v0, $zero, lbl_808A82E4
    or      a0, s0, $zero              # a0 = 0000013C
    beq     $zero, $zero, lbl_808A82F8
    addiu   s3, s8, 0x0268             # s3 = 00000268
lbl_808A82E4:
    jal     func_8008D6A8
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     v0, $zero, lbl_808A82F8
    nop
    addiu   s3, s8, 0x0274             # s3 = 00000274
lbl_808A82F8:
    beq     s3, $zero, lbl_808A8410
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f24                  # $f24 = 5.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f22                  # $f22 = 30.00
    lui     $at, 0x428C                # $at = 428C0000
    lui     s5, %hi(var_808ACB90)      # s5 = 808B0000
    lui     s4, %hi(var_808ACB84)      # s4 = 808B0000
    mtc1    $at, $f20                  # $f20 = 70.00
    addiu   s4, s4, %lo(var_808ACB84)  # s4 = 808ACB84
    addiu   s5, s5, %lo(var_808ACB90)  # s5 = 808ACB90
    addiu   s6, $sp, 0x007C            # s6 = FFFFFFD4
    addiu   s2, $sp, 0x0088            # s2 = FFFFFFE0
    addiu   s1, $sp, 0x0094            # s1 = FFFFFFEC
    lw      t8, 0x0000(s4)             # 808ACB84
lbl_808A8338:
    lw      t0, 0x0000(s5)             # 808ACB90
    lw      t7, 0x0004(s4)             # 808ACB88
    sw      t8, 0x0000(s1)             # FFFFFFEC
    sw      t0, 0x0000(s2)             # FFFFFFE0
    lw      t8, 0x0008(s4)             # 808ACB8C
    lw      t0, 0x0008(s5)             # 808ACB98
    lw      t9, 0x0004(s5)             # 808ACB94
    mov.s   $f12, $f20
    sw      t7, 0x0004(s1)             # FFFFFFF0
    sw      t8, 0x0008(s1)             # FFFFFFF4
    sw      t0, 0x0008(s2)             # FFFFFFE8
    jal     func_80026D90
    sw      t9, 0x0004(s2)             # FFFFFFE4
    lwc1    $f8, 0x0000(s3)            # 00000274
    mov.s   $f12, $f22
    add.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x007C($sp)
    lwc1    $f16, 0x0004(s3)           # 00000278
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0080($sp)
    lwc1    $f4, 0x0008(s3)            # 0000027C
    add.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0084($sp)
    mul.s   $f8, $f0, $f24
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFD4
    trunc.w.s $f10, $f8
    or      a2, s1, $zero              # a2 = FFFFFFEC
    or      a3, s2, $zero              # a3 = FFFFFFE0
    sw      $zero, 0x0010($sp)
    mfc1    t2, $f10
    sw      $zero, 0x0020($sp)
    sll     t3, t2, 16
    sra     t4, t3, 16
    addiu   t5, t4, 0x000A             # t5 = 0000000A
    jal     func_8001D21C
    sw      t5, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_808A8338
    lw      t8, 0x0000(s4)             # 808ACB84
    or      a0, s8, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x380B          # a1 = 0000380B
lbl_808A8410:
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
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_808A844C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0038($sp)
    lw      t7, 0x0004(s0)             # 00000004
    lw      s2, 0x1C44(s1)             # 00001C44
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x01C0(s0)             # 000001C0
    sw      t8, 0x0004(s0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8009D0F0
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x01AC(s0)             # 000001AC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0918             # a0 = 06010918
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    mfc1    a3, $f0
    sw      t9, 0x0014($sp)
    addiu   a1, a1, 0x0918             # a1 = 06010918
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0918             # a0 = 06010918
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f16                  # $f16 = -150.00
    cvt.s.w $f10, $f8
    lui     $at, 0xC3AF                # $at = C3AF0000
    mtc1    $at, $f18                  # $f18 = -350.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    addiu   t0, $zero, 0x8FA4          # t0 = FFFF8FA4
    swc1    $f10, 0x020C(s0)           # 0000020C
    swc1    $f16, 0x0024(s0)           # 00000024
    swc1    $f18, 0x002C(s0)           # 0000002C
    lui     $at, 0x4396                # $at = 43960000
    sh      t0, 0x00B6(s2)             # 000000B6
    mtc1    $at, $f6                   # $f6 = 300.00
    lh      t1, 0x00B6(s2)             # 000000B6
    swc1    $f4, 0x0024(s2)            # 00000024
    swc1    $f6, 0x002C(s2)            # 0000002C
    sh      t1, 0x0032(s2)             # 00000032
    lw      a1, 0x1C44(s1)             # 00001C44
    jal     func_800213B4
    or      a0, s0, $zero              # a0 = 00000000
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, v0, $at
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f8                   # $f8 = 90.00
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f10                  # $f10 = 170.00
    sh      t2, 0x0032(s0)             # 00000032
    swc1    $f8, 0x0280(s0)            # 00000280
    swc1    $f10, 0x0288(s0)           # 00000288
    lw      t3, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f16, 0x0060(t3)           # 00000060
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f4, $f16, $f18
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    lui     a0, 0x1001                 # a0 = 10010000
    swc1    $f4, 0x0284(s0)            # 00000284
    sh      t4, 0x01C2(s0)             # 000001C2
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    swc1    $f6, 0x028C(s0)            # 0000028C
    swc1    $f8, 0x0290(s0)            # 00000290
    jal     func_800CAA70
    swc1    $f10, 0x0294(s0)           # 00000294
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808A85FC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0048($sp)
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_800642F0
    sw      t7, 0x0060($sp)
    lh      v0, 0x01C0(s0)             # 000001C0
    slti    $at, v0, 0x0083
    bne     $at, $zero, lbl_808A865C
    sll     t8, v0,  2
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    beq     v0, $at, lbl_808A9524
    addiu   $at, $zero, 0x0096         # $at = 00000096
    beq     v0, $at, lbl_808A9574
    nop
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
lbl_808A865C:
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_808A8678
    addiu   $at, $zero, 0x0082         # $at = 00000082
    beql    v0, $at, lbl_808A9278
    lui     $at, 0x4100                # $at = 41000000
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
lbl_808A8678:
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_808A96C4
    lui     $at, %hi(var_808ACD00)     # $at = 808B0000
    addu    $at, $at, t8
    lw      t8, %lo(var_808ACD00)($at)
    jr      t8
    nop
var_808A8694:
    lw      v0, 0x0060($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x43AF                # $at = 43AF0000
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    lwc1    $f8, 0x002C(v0)            # 0000002C
    mtc1    $at, $f10                  # $f10 = 350.00
    lui     t9, 0x8012                 # t9 = 80120000
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    lhu     t9, -0x4B4E(t9)            # 8011B4B2
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_808A8768
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808A844C
    lw      a1, 0x006C($sp)
    lui     $at, %hi(var_808ACD28)     # $at = 808B0000
    lwc1    $f16, %lo(var_808ACD28)($at)
    lui     $at, 0xC3F0                # $at = C3F00000
    mtc1    $at, $f18                  # $f18 = -480.00
    lui     $at, %hi(var_808ACD2C)     # $at = 808B0000
    lw      a2, 0x006C($sp)
    lwc1    $f4, %lo(var_808ACD2C)($at)
    addiu   t1, $zero, 0x8FA4          # t1 = FFFF8FA4
    addiu   t2, $zero, 0x0180          # t2 = 00000180
    sw      t2, 0x0028($sp)
    sw      t1, 0x0020($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x002E          # a3 = 0000002E
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f16, 0x0010($sp)
    swc1    $f18, 0x0014($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
lbl_808A8768:
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_808A96C4
    sh      t3, 0x01C0(s0)             # 000001C0
var_808A877C:
    lw      a0, 0x006C($sp)
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    lw      a0, 0x006C($sp)
    sh      v0, 0x01AC(s0)             # 000001AC
    lw      a0, 0x006C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x006C($sp)
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0xC3AF                # $at = C3AF0000
    mtc1    $at, $f0                   # $f0 = -350.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f6                   # $f6 = -150.00
    lw      v1, 0x0060($sp)
    lui     $at, 0xC3A0                # $at = C3A00000
    mtc1    $at, $f8                   # $f8 = -320.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f16                  # $f16 = 300.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sh      t5, 0x01C0(s0)             # 000001C0
    swc1    $f0, 0x002C(s0)            # 0000002C
    swc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0xC39B                # $at = C39B0000
    mtc1    $at, $f18                  # $f18 = -310.00
    swc1    $f10, 0x0024(v1)           # 00000024
    swc1    $f16, 0x002C(v1)           # 0000002C
    swc1    $f0, 0x0280(s0)            # 00000280
    swc1    $f0, 0x0288(s0)            # 00000288
    swc1    $f18, 0x0284(s0)           # 00000284
    lwc1    $f4, 0x0024(v1)            # 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    swc1    $f4, 0x028C(s0)            # 0000028C
    lwc1    $f6, 0x0028(v1)            # 00000028
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    sub.s   $f10, $f6, $f8
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    add.s   $f18, $f10, $f16
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    and     t9, t8, $at
    swc1    $f18, 0x0290(s0)           # 00000290
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sh      t6, 0x01C2(s0)             # 000001C2
    sh      t7, 0x01C4(s0)             # 000001C4
    sh      $zero, 0x0184(s0)          # 00000184
    sw      t9, 0x0004(s0)             # 00000004
    swc1    $f4, 0x0294(s0)            # 00000294
var_808A8864:
    lw      v0, 0x0060($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    addiu   t0, $zero, 0x8FA4          # t0 = FFFF8FA4
    lui     $at, 0x4396                # $at = 43960000
    sh      t0, 0x00B6(v0)             # 000000B6
    mtc1    $at, $f8                   # $f8 = 300.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      t1, 0x00B6(v0)             # 000000B6
    swc1    $f6, 0x0024(v0)            # 00000024
    swc1    $f8, 0x002C(v0)            # 0000002C
    sh      t1, 0x0032(v0)             # 00000032
    swc1    $f10, 0x0068(v0)           # 00000068
    lh      t2, 0x01C2(s0)             # 000001C2
    lui     $at, 0x41A0                # $at = 41A00000
    bnel    t2, $zero, lbl_808A89E0
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0210(s0)            # 00000210
    lwc1    $f16, 0x0024(v0)           # 00000024
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f10, $f6, $f8
    sub.s   $f4, $f16, $f18
    ori     a2, a2, 0xCCCC             # a2 = 3D4CCCCC
    addiu   a0, s0, 0x0280             # a0 = 00000280
    mfc1    a1, $f4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f18                  # $f18 = 25.00
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f8                   # $f8 = 130.00
    lw      t3, 0x0060($sp)
    lwc1    $f6, 0x0210(s0)            # 00000210
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lwc1    $f16, 0x0028(t3)           # 00000028
    mul.s   $f10, $f6, $f8
    ori     a2, a2, 0xCCCC             # a2 = 3DCCCCCC
    add.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0284             # a0 = 00000284
    mfc1    a1, $f4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f18                  # $f18 = 65.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lw      t4, 0x0060($sp)
    lwc1    $f6, 0x0210(s0)            # 00000210
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lwc1    $f16, 0x002C(t4)           # 0000002C
    mul.s   $f10, $f6, $f8
    ori     a2, a2, 0xCCCC             # a2 = 3D4CCCCC
    sub.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0288             # a0 = 00000288
    mfc1    a1, $f4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     a1, 0x3E99                 # a1 = 3E990000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70B             # a3 = 3BA3D70B
    ori     a1, a1, 0x9999             # a1 = 3E999999
    addiu   a0, s0, 0x0210             # a0 = 00000210
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t5, 0x01C4(s0)             # 000001C4
    lw      t6, 0x0060($sp)
    lui     $at, 0x420C                # $at = 420C0000
    bnel    t5, $zero, lbl_808A89CC
    lw      v0, 0x0060($sp)
    mtc1    $at, $f18                  # $f18 = 35.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x0210(s0)            # 00000210
    lwc1    $f16, 0x0028(t6)           # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f6, $f8
    add.s   $f4, $f16, $f18
    ori     a2, a2, 0xCCCC             # a2 = 3DCCCCCC
    addiu   a0, s0, 0x0290             # a0 = 00000290
    mfc1    a1, $f4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lw      v0, 0x0060($sp)
lbl_808A89CC:
    lwc1    $f16, 0x0024(v0)           # 00000024
    swc1    $f16, 0x028C(s0)           # 0000028C
    lwc1    $f18, 0x002C(v0)           # 0000002C
    swc1    $f18, 0x0294(s0)           # 00000294
    addiu   a2, s0, 0x028C             # a2 = 0000028C
lbl_808A89E0:
    addiu   a3, s0, 0x0280             # a3 = 00000280
    sw      a3, 0x0044($sp)
    sw      a2, 0x0040($sp)
    lw      a0, 0x006C($sp)
    jal     func_8009D328
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v1, 0x0184(s0)             # 00000184
    lw      a2, 0x006C($sp)
    addiu   $at, $zero, 0x00B0         # $at = 000000B0
    bne     v1, $at, lbl_808A8A58
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    lui     $at, %hi(var_808ACD30)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD30)($at)
    lui     $at, 0xC3F0                # $at = C3F00000
    mtc1    $at, $f6                   # $f6 = -480.00
    lui     $at, %hi(var_808ACD34)     # $at = 808B0000
    lwc1    $f8, %lo(var_808ACD34)($at)
    addiu   t8, $zero, 0x8FA4          # t8 = FFFF8FA4
    addiu   t9, $zero, 0x0180          # t9 = 00000180
    sw      t9, 0x0028($sp)
    sw      t8, 0x0020($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x002E          # a3 = 0000002E
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lh      v1, 0x0184(s0)             # 00000184
lbl_808A8A58:
    addiu   $at, $zero, 0x00B0         # $at = 000000B0
    bne     v1, $at, lbl_808A8A8C
    lw      t1, 0x006C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x0AE3($at)            # 00010AE3
    lw      t3, 0x006C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     t2, $zero, 0xFFFF          # t2 = 0000FFFF
    addu    $at, $at, t3
    sh      t2, 0x0AFA($at)            # 00010AFA
    lh      v1, 0x0184(s0)             # 00000184
lbl_808A8A8C:
    addiu   $at, $zero, 0x00BE         # $at = 000000BE
    bne     v1, $at, lbl_808A8AA8
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      v1, 0x0184(s0)             # 00000184
lbl_808A8AA8:
    slti    $at, v1, 0x00E4
    bne     $at, $zero, lbl_808A96C4
    lw      a0, 0x006C($sp)
    addiu   t5, a0, 0x1D64             # t5 = 00001D64
    sw      t5, 0x0048($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t6, 0x0044($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x005C(v0)             # 0000005C
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0060(v0)             # 00000060
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0064(v0)             # 00000064
    lw      t9, 0x0044($sp)
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0074(v0)             # 00000074
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0078(v0)             # 00000078
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x007C(v0)             # 0000007C
    lw      t2, 0x0040($sp)
    lw      t4, 0x0000(t2)             # 00000000
    sw      t4, 0x0050(v0)             # 00000050
    lw      t3, 0x0004(t2)             # 00000004
    sw      t3, 0x0054(v0)             # 00000054
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0058(v0)             # 00000058
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8009D718
    lw      a0, 0x006C($sp)
    sh      $zero, 0x01AC(s0)          # 000001AC
    lw      a1, 0x0048($sp)
    jal     func_80052340
    lw      a0, 0x006C($sp)
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sh      t5, 0x01C0(s0)             # 000001C0
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
var_808A8B58:
    lwc1    $f0, 0x00E4(s0)            # 000000E4
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    abs.s   $f0, $f0
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0xC0A0                 # a3 = C0A00000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bc1fl   lbl_808A8C44
    sh      $zero, 0x01B6(s0)          # 000001B6
    lwc1    $f0, 0x00E8(s0)            # 000000E8
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f16                  # $f16 = 250.00
    abs.s   $f0, $f0
    lui     $at, 0x4448                # $at = 44480000
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_808A8C44
    sh      $zero, 0x01B6(s0)          # 000001B6
    lwc1    $f0, 0x00EC(s0)            # 000000EC
    mtc1    $at, $f18                  # $f18 = 800.00
    nop
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_808A8C44
    sh      $zero, 0x01B6(s0)          # 000001B6
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_808A8C44
    sh      $zero, 0x01B6(s0)          # 000001B6
    lh      t6, 0x01B6(s0)             # 000001B6
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01B6(s0)             # 000001B6
    jal     func_800642F0
    lw      a0, 0x0048($sp)
    lw      t8, 0x006C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t8)             # 00001C44
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, v0, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    sh      $zero, 0x0190(s0)          # 00000190
    lh      v0, 0x0190(s0)             # 00000190
    sh      v0, 0x018E(s0)             # 0000018E
    sh      v0, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_808A8C50
    sh      v0, 0x0188(s0)             # 00000188
    sh      $zero, 0x01B6(s0)          # 000001B6
lbl_808A8C44:
    sw      t9, 0x0010($sp)
    jal     func_808A8210
    lw      a1, 0x006C($sp)
lbl_808A8C50:
    lh      t0, 0x01B6(s0)             # 000001B6
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0010
    bnel    $at, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_808A844C
    lw      a1, 0x006C($sp)
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
var_808A8C74:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_808A8C94
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x381B          # a1 = 0000381B
lbl_808A8C94:
    lh      t1, 0x01C2(s0)             # 000001C2
    slti    $at, t1, 0x0029
    beq     $at, $zero, lbl_808A96C4
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f8                   # $f8 = 22.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0280             # a0 = 00000280
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f10
    jal     func_80064280
    nop
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f18                  # $f18 = 25.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    sub.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0284             # a0 = 00000284
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f4
    jal     func_80064280
    nop
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0288             # a0 = 00000288
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f10
    jal     func_80064280
    nop
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x028C             # a0 = 0000028C
    lw      a1, 0x0024(s0)             # 00000024
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0290             # a0 = 00000290
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f4
    jal     func_80064280
    nop
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0294             # a0 = 00000294
    lw      a1, 0x002C(s0)             # 0000002C
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      v1, 0x01C2(s0)             # 000001C2
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      t3, 0x006C($sp)
    bne     v1, $at, lbl_808A8DA4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sb      t2, 0x0AE3($at)            # 00010AE3
    lh      v1, 0x01C2(s0)             # 000001C2
lbl_808A8DA4:
    slti    $at, v1, 0x0014
    beql    $at, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8008C9C0
    lw      a0, 0x0044($sp)
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    jal     func_80064280
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   a0, s0, 0x0214             # a0 = 00000214
    jal     func_80064280
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lui     a1, 0x4210                 # a1 = 42100000
    beq     v0, $zero, lbl_808A8E10
    lui     $at, %hi(var_808ACD38)     # $at = 808B0000
    lwc1    $f0, %lo(var_808ACD38)($at)
    swc1    $f0, 0x01E8(s0)            # 000001E8
    swc1    $f0, 0x0214(s0)            # 00000214
lbl_808A8E10:
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lw      a1, 0x020C(s0)             # 0000020C
    beq     v0, $zero, lbl_808A96C4
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t4, 0x01C0(s0)             # 000001C0
    jal     func_8008A194
    addiu   a0, a0, 0x2360             # a0 = 06002360
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2360             # a1 = 06002360
    lw      a0, 0x0044($sp)
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      t5, 0x01C2(s0)             # 000001C2
    beq     $zero, $zero, lbl_808A96C4
    swc1    $f16, 0x0210(s0)           # 00000210
var_808A8E7C:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f8                   # $f8 = 90.00
    add.s   $f6, $f18, $f4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f16, 0x0210(s0)           # 00000210
    add.s   $f10, $f6, $f8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f4, $f16, $f18
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f10
    addiu   a0, s0, 0x0280             # a0 = 00000280
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x0210(s0)            # 00000210
    lw      t6, 0x0060($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f6, $f8
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0284             # a0 = 00000284
    lw      a1, 0x0028(t6)             # 00000028
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f18                  # $f18 = 45.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    add.s   $f4, $f16, $f18
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f10, 0x0210(s0)           # 00000210
    add.s   $f8, $f4, $f6
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f18, $f10, $f16
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f8
    addiu   a0, s0, 0x0288             # a0 = 00000288
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addiu   a0, s0, 0x0210             # a0 = 00000210
    lh      t7, 0x01C2(s0)             # 000001C2
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x002C(s0)            # 0000002C
    swc1    $f4, 0x028C(s0)            # 0000028C
    swc1    $f6, 0x0290(s0)            # 00000290
    bgez    t7, lbl_808A8F9C
    swc1    $f8, 0x0294(s0)            # 00000294
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0048($sp)
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    beq     $zero, $zero, lbl_808A8FB8
    lh      v1, 0x01C2(s0)             # 000001C2
lbl_808A8F9C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x006C($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0xC0F0                 # a3 = C0F00000
    jal     func_808A8210
    sw      $zero, 0x0010($sp)
    lh      v1, 0x01C2(s0)             # 000001C2
lbl_808A8FB8:
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x193C             # a0 = 0600193C
    bne     v1, $zero, lbl_808A9008
    addiu   t8, s0, 0x013C             # t8 = 0000013C
    jal     func_8008A194
    sw      t8, 0x0044($sp)
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f18                  # $f18 = -5.00
    cvt.s.w $f16, $f10
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x193C             # a1 = 0600193C
    lw      a0, 0x0044($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f16, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f18, 0x0018($sp)
    lh      v1, 0x01C2(s0)             # 000001C2
lbl_808A9008:
    bne     v1, $zero, lbl_808A96C4
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    sh      t9, 0x01C0(s0)             # 000001C0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   t0, s0, 0x013C             # t0 = 0000013C
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f4, 0x006C(s0)            # 0000006C
    sw      t0, 0x0044($sp)
    jal     func_8008A194
    addiu   a0, a0, 0xF70C             # a0 = 0600F70C
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)
    addiu   a1, a1, 0xF70C             # a1 = 0600F70C
    lw      a0, 0x0044($sp)
    swc1    $f8, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    lw      v0, 0x0060($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f16                  # $f16 = -30.00
    swc1    $f18, 0x0024(v0)           # 00000024
    beq     $zero, $zero, lbl_808A96C4
    swc1    $f16, 0x002C(v0)           # 0000002C
var_808A9094:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f10                  # $f10 = 90.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f18, 0x0210(s0)           # 00000210
    add.s   $f16, $f8, $f10
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f18, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f16
    addiu   a0, s0, 0x0280             # a0 = 00000280
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lw      t2, 0x0060($sp)
    lwc1    $f18, 0x0210(s0)           # 00000210
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lwc1    $f8, 0x0028(t2)            # 00000028
    mul.s   $f6, $f18, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f16, $f8, $f10
    addiu   a0, s0, 0x0284             # a0 = 00000284
    mfc1    a1, $f16
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f10                  # $f10 = 45.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    add.s   $f16, $f8, $f10
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x0210(s0)            # 00000210
    add.s   $f4, $f16, $f18
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f6, $f8
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f4
    addiu   a0, s0, 0x0288             # a0 = 00000288
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f16, 0x028C(s0)           # 0000028C
    swc1    $f18, 0x0290(s0)           # 00000290
    swc1    $f4, 0x0294(s0)            # 00000294
    jal     func_8008C9C0
    sw      a0, 0x0044($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      t3, 0x006C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t3)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lhu     t4, 0x0088(s0)             # 00000088
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   t6, $zero, 0x0082          # t6 = 00000082
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_808A96C4
    addiu   a0, a0, 0xF70C             # a0 = 0600F70C
    mtc1    $zero, $f6                 # $f6 = 0.00
    sh      t6, 0x01C0(s0)             # 000001C0
    jal     func_8008A194
    swc1    $f6, 0x0060(s0)            # 00000060
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f16                  # $f16 = -2.00
    cvt.s.w $f10, $f8
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0xF70C             # a1 = 0600F70C
    lw      a0, 0x0044($sp)
    swc1    $f10, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xF70C             # a0 = 0600F70C
    mtc1    v0, $f18                   # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    cvt.s.w $f4, $f18
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    swc1    $f4, 0x020C(s0)            # 0000020C
    jal     func_808A775C
    lw      a1, 0x006C($sp)
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    mtc1    $zero, $f12                # $f12 = 0.00
    sh      t8, 0x01C2(s0)             # 000001C2
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_8009151C
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    lui     $at, 0x4100                # $at = 41000000
lbl_808A9278:
    mtc1    $at, $f8                   # $f8 = 8.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    add.s   $f10, $f6, $f8
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0210(s0)            # 00000210
    add.s   $f18, $f10, $f16
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f4, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f18
    addiu   a0, s0, 0x0280             # a0 = 00000280
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lw      t9, 0x0060($sp)
    lwc1    $f4, 0x0210(s0)            # 00000210
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lwc1    $f10, 0x0028(t9)           # 00000028
    mul.s   $f8, $f4, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f18, $f10, $f16
    addiu   a0, s0, 0x0284             # a0 = 00000284
    mfc1    a1, $f18
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f16                  # $f16 = 45.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    add.s   $f18, $f10, $f16
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0210(s0)            # 00000210
    add.s   $f6, $f18, $f4
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f16, $f8, $f10
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f6
    addiu   a0, s0, 0x0288             # a0 = 00000288
    mfc1    a3, $f16
    jal     func_80064280
    nop
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      t0, 0x006C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t0)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0044($sp)
    lh      v1, 0x01C2(s0)             # 000001C2
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a0, s0, 0x0290             # a0 = 00000290
    swc1    $f18, 0x028C(s0)           # 0000028C
    beq     v1, $zero, lbl_808A9404
    swc1    $f4, 0x0294(s0)            # 00000294
    mtc1    v1, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_808ACD3C)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD3C)($at)
    cvt.s.w $f8, $f6
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    mul.s   $f16, $f8, $f10
    nop
    mul.s   $f12, $f16, $f18
    jal     func_800CF470
    nop
    lh      t1, 0x01C2(s0)             # 000001C2
    lui     $at, %hi(var_808ACD40)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD40)($at)
    mtc1    t1, $f4                    # $f4 = 0.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    beq     $zero, $zero, lbl_808A9418
    swc1    $f4, 0x0290(s0)            # 00000290
lbl_808A9404:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a1, 0x003C(s0)             # 0000003C
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
lbl_808A9418:
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lui     a1, 0x4220                 # a1 = 42200000
    beq     v0, $zero, lbl_808A94C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x380E          # a1 = 0000380E
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B4E(t2)            # 8011B4B2
    lw      a0, 0x006C($sp)
    lui     v0, 0x0602                 # v0 = 06020000
    andi    t3, t2, 0x0001             # t3 = 00000000
    bne     t3, $zero, lbl_808A94A4
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    addiu   v0, v0, 0x9BA8             # v0 = 06019BA8
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addiu   t9, $zero, 0x00B4          # t9 = 000000B4
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addu    a2, t7, t8
    addu    a2, a2, $at
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    jal     func_80020780
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
lbl_808A94A4:
    jal     func_800CAA70
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B4E(t2)            # 8011B4B2
    lui     $at, 0x8012                # $at = 80120000
    ori     t3, t2, 0x0001             # t3 = 80120001
    sh      t3, -0x4B4E($at)           # 8011B4B2
lbl_808A94C0:
    lw      a0, 0x0044($sp)
    jal     func_8008D6A8
    lw      a1, 0x020C(s0)             # 0000020C
    beq     v0, $zero, lbl_808A96C4
    addiu   t4, $zero, 0x008C          # t4 = 0000008C
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t4, 0x01C0(s0)             # 000001C0
    jal     func_8008A194
    addiu   a0, a0, 0x0AE8             # a0 = 06000AE8
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0AE8             # a1 = 06000AE8
    lw      a0, 0x0044($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    beq     $zero, $zero, lbl_808A96C4
    sh      t5, 0x01C2(s0)             # 000001C2
lbl_808A9524:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0290             # a0 = 00000290
    lw      a1, 0x003C(s0)             # 0000003C
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lh      t6, 0x01C2(s0)             # 000001C2
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    bne     t6, $zero, lbl_808A96C4
    or      a1, $zero, $zero           # a1 = 00000000
    sh      t7, 0x01C2(s0)             # 000001C2
    sh      t8, 0x01C0(s0)             # 000001C0
    lw      a0, 0x006C($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     $zero, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
lbl_808A9574:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, %hi(var_808ACD44)     # $at = 808B0000
    lwc1    $f6, %lo(var_808ACD44)($at)
    add.s   $f4, $f16, $f18
    addiu   a0, s0, 0x0280             # a0 = 00000280
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    mfc1    a1, $f4
    sw      a0, 0x0044($sp)
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808ACD48)     # $at = 808B0000
    lwc1    $f18, %lo(var_808ACD48)($at)
    add.s   $f16, $f8, $f10
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0284             # a0 = 00000284
    mfc1    a1, $f16
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f6                   # $f6 = 220.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_808ACD4C)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD4C)($at)
    add.s   $f8, $f4, $f6
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0288             # a0 = 00000288
    mfc1    a1, $f8
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lh      t9, 0x01C2(s0)             # 000001C2
    lw      a0, 0x006C($sp)
    bnel    t9, $zero, lbl_808A96C8
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x0044($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t1, 0x0000(v1)             # 00000000
    sw      t1, 0x005C(v0)             # 0000005C
    lw      t0, 0x0004(v1)             # 00000004
    sw      t0, 0x0060(v0)             # 00000060
    lw      t1, 0x0008(v1)             # 00000008
    sw      t1, 0x0064(v0)             # 00000064
    lw      t3, 0x0000(v1)             # 00000000
    sw      t3, 0x0074(v0)             # 00000074
    lw      t2, 0x0004(v1)             # 00000004
    sw      t2, 0x0078(v0)             # 00000078
    lw      t3, 0x0008(v1)             # 00000008
    sw      t3, 0x007C(v0)             # 0000007C
    lw      t5, 0x028C(s0)             # 0000028C
    sw      t5, 0x0050(v0)             # 00000050
    lw      t4, 0x0290(s0)             # 00000290
    sw      t4, 0x0054(v0)             # 00000054
    lw      t5, 0x0294(s0)             # 00000294
    sw      t5, 0x0058(v0)             # 00000058
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_8009D718
    lw      a0, 0x006C($sp)
    sh      $zero, 0x01AC(s0)          # 000001AC
    jal     func_808A7E18
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x006C($sp)
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sh      $zero, 0x01AE(s0)          # 000001AE
    sh      t6, 0x0186(s0)             # 00000186
    jal     func_80052340
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_808A96C4:
    lh      a1, 0x01AC(s0)             # 000001AC
lbl_808A96C8:
    lw      a0, 0x006C($sp)
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    beql    a1, $zero, lbl_808A96E4
    lw      $ra, 0x003C($sp)
    jal     func_8009D328
    addiu   a3, s0, 0x0280             # a3 = 00000280
    lw      $ra, 0x003C($sp)
lbl_808A96E4:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_808A96F4:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lui     t7, %hi(var_808ACBA8)      # t7 = 808B0000
    addiu   t7, t7, %lo(var_808ACBA8)  # t7 = 808ACBA8
    lw      t9, 0x0000(t7)             # 808ACBA8
    addiu   t6, $sp, 0x00A8            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 808ACBAC
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 808ACBB0
    lui     t1, %hi(var_808ACBB4)      # t1 = 808B0000
    addiu   t1, t1, %lo(var_808ACBB4)  # t1 = 808ACBB4
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 808ACBB4
    addiu   t0, $sp, 0x009C            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 808ACBB8
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 808ACBBC
    sw      t2, 0x0004(t0)             # FFFFFFE0
    lui     t4, %hi(var_808ACBC0)      # t4 = 808B0000
    sw      t3, 0x0008(t0)             # FFFFFFE4
    lui     t5, %hi(var_808ACBC4)      # t5 = 808B0000
    lw      t4, %lo(var_808ACBC0)(t4)
    lw      t5, %lo(var_808ACBC4)(t5)
    lui     t7, %hi(var_808ACBC8)      # t7 = 808B0000
    addiu   t7, t7, %lo(var_808ACBC8)  # t7 = 808ACBC8
    sw      t4, 0x0098($sp)
    sw      t5, 0x0094($sp)
    lw      t9, 0x0000(t7)             # 808ACBC8
    addiu   t6, $sp, 0x0088            # t6 = FFFFFFC8
    lw      t8, 0x0004(t7)             # 808ACBCC
    sw      t9, 0x0000(t6)             # FFFFFFC8
    lw      t9, 0x0008(t7)             # 808ACBD0
    lui     t1, %hi(var_808ACBD4)      # t1 = 808B0000
    addiu   t1, t1, %lo(var_808ACBD4)  # t1 = 808ACBD4
    sw      t8, 0x0004(t6)             # FFFFFFCC
    sw      t9, 0x0008(t6)             # FFFFFFD0
    lw      t3, 0x0000(t1)             # 808ACBD4
    addiu   t0, $sp, 0x007C            # t0 = FFFFFFBC
    lw      t2, 0x0004(t1)             # 808ACBD8
    sw      t3, 0x0000(t0)             # FFFFFFBC
    lw      t3, 0x0008(t1)             # 808ACBDC
    sw      t2, 0x0004(t0)             # FFFFFFC0
    addiu   s0, s2, 0x013C             # s0 = 0000013C
    sw      t3, 0x0008(t0)             # FFFFFFC4
    lw      t4, 0x1C44(s3)             # 00001C44
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008C9C0
    sw      t4, 0x0068($sp)
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    or      a0, s0, $zero              # a0 = 0000013C
    jal     func_8008D6A8
    lui     a1, 0x42D6                 # a1 = 42D60000
    beq     v0, $zero, lbl_808A981C
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_808A775C
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_8009151C
    addiu   a3, $zero, 0x0014          # a3 = 00000014
lbl_808A981C:
    lh      v0, 0x01C2(s2)             # 000001C2
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   $at, $zero, 0x03E9         # $at = 000003E9
    sh      t5, 0x01A8(s2)             # 000001A8
    bne     v0, $at, lbl_808A987C
    sh      t6, 0x01A4(s2)             # 000001A4
    lui     v0, %hi(var_808ACB14)      # v0 = 808B0000
    addiu   v0, v0, %lo(var_808ACB14)  # v0 = 808ACB14
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addu    t7, v0, s1
lbl_808A984C:
    lbu     t8, 0x0000(t7)             # 00000000
    addu    t9, s2, s1
    beql    t8, $zero, lbl_808A9864
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sb      v1, 0x0748(t9)             # 00000748
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_808A9864:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x005A
    bnel    $at, $zero, lbl_808A984C
    addu    t7, v0, s1
    lh      v0, 0x01C2(s2)             # 000001C2
lbl_808A987C:
    slti    $at, v0, 0x04B0
    beq     $at, $zero, lbl_808A98A4
    slti    $at, v0, 0x044D
    bne     $at, $zero, lbl_808A98A4
    andi    t0, v0, 0x0007             # t0 = 00000004
    bne     t0, $zero, lbl_808A98A4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8001D4A8
    addiu   a1, s2, 0x0038             # a1 = 00000038
    lh      v0, 0x01C2(s2)             # 000001C2
lbl_808A98A4:
    slti    $at, v0, 0x0438
    beql    $at, $zero, lbl_808A9B18
    lh      v0, 0x01C0(s2)             # 000001C0
    lh      t1, 0x01C0(s2)             # 000001C0
    slti    $at, t1, 0x0003
    beq     $at, $zero, lbl_808A9B14
    slti    $at, v0, 0x042E
    beq     $at, $zero, lbl_808A98D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x301C          # a1 = 0000301C
lbl_808A98D0:
    or      s1, $zero, $zero           # s1 = 00000000
lbl_808A98D4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42AA                # $at = 42AA0000
    mtc1    $at, $f4                   # $f4 = 85.00
    lui     $at, %hi(var_808ACD50)     # $at = 808B0000
    lwc1    $f16, %lo(var_808ACD50)($at)
    mul.s   $f6, $f0, $f4
    lui     $at, 0x41A0                # $at = 41A00000
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     t3, v0, 16
    sra     t4, t3, 16
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    addu    t6, s2, t5
    lwc1    $f10, 0x029C(t6)           # 0000029C
    sll     v1, v0, 16
    sra     v1, v1, 16
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_808A99D0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    sh      v1, 0x00B6($sp)
    lh      v1, 0x00B6($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    sll     t7, v1,  2
    subu    t7, t7, v1
    sll     t7, t7,  2
    addu    s0, s2, t7
    lwc1    $f18, 0x0298(s0)           # 000003D4
    add.s   $f4, $f18, $f0
    jal     func_80026D90
    swc1    $f4, 0x0070($sp)
    lwc1    $f6, 0x029C(s0)            # 000003D8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f8, $f6, $f0
    jal     func_80026D90
    swc1    $f8, 0x0074($sp)
    lwc1    $f10, 0x02A0(s0)           # 000003DC
    addiu   t8, $sp, 0x0098            # t8 = FFFFFFD8
    addiu   t9, $sp, 0x0094            # t9 = FFFFFFD4
    add.s   $f16, $f10, $f0
    addiu   t0, $zero, 0x01F4          # t0 = 000001F4
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    swc1    $f16, 0x0078($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFB0
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFE8
    jal     func_8001BE64
    addiu   a3, $sp, 0x009C            # a3 = FFFFFFDC
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_808A99D0:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0004
    bne     $at, $zero, lbl_808A98D4
    nop
    or      s1, $zero, $zero           # s1 = 00000000
lbl_808A99E8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42AA                # $at = 42AA0000
    mtc1    $at, $f18                  # $f18 = 85.00
    lui     $at, %hi(var_808ACD54)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD54)($at)
    mul.s   $f4, $f0, $f18
    lui     $at, 0x41A0                # $at = 41A00000
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     t4, v0, 16
    sra     t5, t4, 16
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  2
    addu    t7, s2, t6
    lwc1    $f8, 0x029C(t7)            # 0000029C
    sll     v1, v0, 16
    sra     v1, v1, 16
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_808A9B00
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    sh      v1, 0x00B6($sp)
    lh      v1, 0x00B6($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    sll     t8, v1,  2
    subu    t8, t8, v1
    sll     t8, t8,  2
    addu    s0, s2, t8
    lwc1    $f16, 0x0298(s0)           # 000003D4
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x0070($sp)
    lwc1    $f4, 0x029C(s0)            # 000003D8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f4, $f0
    jal     func_80026D90
    swc1    $f6, 0x0074($sp)
    lwc1    $f8, 0x02A0(s0)            # 000003DC
    add.s   $f10, $f8, $f0
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0078($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    mul.s   $f18, $f0, $f16
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFB0
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x007C            # a3 = FFFFFFBC
    trunc.w.s $f4, $f18
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    mfc1    t0, $f4
    nop
    sll     t1, t0, 16
    sra     t2, t1, 16
    addiu   t3, t2, 0x000A             # t3 = 0000000A
    jal     func_8001D21C
    sw      t3, 0x0014($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_808A9B00:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x000F
    bne     $at, $zero, lbl_808A99E8
    nop
lbl_808A9B14:
    lh      v0, 0x01C0(s2)             # 000001C0
lbl_808A9B18:
    beq     v0, $zero, lbl_808A9B48
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808A9C1C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808A9F18
    or      a0, s3, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808AA270
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    beq     $zero, $zero, lbl_808AA39C
    addu    v1, s3, $at
lbl_808A9B48:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x01C0(s2)             # 000001C0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s3, 0x1D64             # a1 = 00001D64
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8009D0F0
    or      a0, s3, $zero              # a0 = 00000000
    sh      v0, 0x01AC(s2)             # 000001AC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    or      a0, s3, $zero              # a0 = 00000000
    lh      a1, 0x01AC(s2)             # 000001AC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f6, 0x005C(v0)            # 0000005C
    swc1    $f6, 0x0280(s2)            # 00000280
    lwc1    $f8, 0x0060(v0)            # 00000060
    lwc1    $f6, 0x0280(s2)            # 00000280
    swc1    $f8, 0x0284(s2)            # 00000284
    lwc1    $f10, 0x0064(v0)           # 00000064
    lwc1    $f8, 0x0024(s2)            # 00000024
    swc1    $f10, 0x0288(s2)           # 00000288
    lwc1    $f16, 0x0050(v0)           # 00000050
    sub.s   $f12, $f6, $f8
    lwc1    $f10, 0x0288(s2)           # 00000288
    swc1    $f16, 0x028C(s2)           # 0000028C
    lwc1    $f18, 0x0054(v0)           # 00000054
    lwc1    $f16, 0x002C(s2)           # 0000002C
    swc1    $f18, 0x0290(s2)           # 00000290
    sub.s   $f14, $f10, $f16
    lwc1    $f4, 0x0058(v0)            # 00000058
    mul.s   $f18, $f12, $f12
    swc1    $f4, 0x0294(s2)            # 00000294
    mul.s   $f4, $f14, $f14
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    jal     func_800CD76C
    swc1    $f0, 0x0218(s2)            # 00000218
    addiu   t7, $zero, 0x010E          # t7 = 0000010E
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f0, 0x021C(s2)            # 0000021C
    sh      t7, 0x01C4(s2)             # 000001C4
    beq     $zero, $zero, lbl_808AA39C
    addu    v1, s3, $at
lbl_808A9C1C:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    nop
    mul.s   $f8, $f0, $f6
    swc1    $f8, 0x00BC($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f12, 0x00BC($sp)
    lwc1    $f16, 0x0024(s2)           # 00000024
    mul.s   $f14, $f0, $f10
    lw      a0, 0x0068($sp)
    add.s   $f18, $f16, $f12
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x40A0                 # a3 = 40A00000
    addiu   a0, a0, 0x0024             # a0 = 00000024
    mfc1    a1, $f18
    jal     func_80064280
    swc1    $f14, 0x00B8($sp)
    lwc1    $f14, 0x00B8($sp)
    lwc1    $f4, 0x002C(s2)            # 0000002C
    lw      a0, 0x0068($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    add.s   $f6, $f4, $f14
    lui     a3, 0x40A0                 # a3 = 40A00000
    addiu   a0, a0, 0x002C             # a0 = 0000002C
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lh      v0, 0x01C2(s2)             # 000001C2
    slti    $at, v0, 0x0438
    beq     $at, $zero, lbl_808A9CF8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     s0, %hi(var_808AC914)      # s0 = 808B0000
    sh      t8, 0x01B2(s2)             # 000001B2
    addiu   s0, s0, %lo(var_808AC914)  # s0 = 808AC914
    or      s1, $zero, $zero           # s1 = 00000000
    or      a0, s0, $zero              # a0 = 808AC914
lbl_808A9CC0:
    jal     func_808A73F4
    lh      a1, 0x01B0(s2)             # 000001B0
    lh      v0, 0x01B0(s2)             # 000001B0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    slti    $at, v0, 0x0100
    beq     $at, $zero, lbl_808A9CE8
    sra     s1, s1, 16
    addiu   t9, v0, 0x0001             # t9 = 00000001
    sh      t9, 0x01B0(s2)             # 000001B0
lbl_808A9CE8:
    slti    $at, s1, 0x0004
    bnel    $at, $zero, lbl_808A9CC0
    or      a0, s0, $zero              # a0 = 808AC914
    lh      v0, 0x01C2(s2)             # 000001C2
lbl_808A9CF8:
    slti    $at, v0, 0x042E
    beq     $at, $zero, lbl_808A9D3C
    nop
    lh      t0, 0x0184(s2)             # 00000184
    andi    t1, t0, 0x0003             # t1 = 00000000
    bne     t1, $zero, lbl_808A9D3C
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_808A9D3C
    nop
    sh      t2, 0x01B4(s2)             # 000001B4
lbl_808A9D3C:
    lui     $at, %hi(var_808ACD58)     # $at = 808B0000
    lwc1    $f16, %lo(var_808ACD58)($at)
    lwc1    $f10, 0x021C(s2)           # 0000021C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f18, $f10, $f16
    addiu   a0, s2, 0x0218             # a0 = 00000218
    lui     a1, 0x4316                 # a1 = 43160000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    swc1    $f18, 0x021C(s2)           # 0000021C
    jal     func_800CF470
    lwc1    $f12, 0x021C(s2)           # 0000021C
    lwc1    $f4, 0x0218(s2)            # 00000218
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x00BC($sp)
    jal     func_800D2CD0
    lwc1    $f12, 0x021C(s2)           # 0000021C
    lwc1    $f8, 0x0218(s2)            # 00000218
    lwc1    $f12, 0x00BC($sp)
    lwc1    $f10, 0x0024(s2)           # 00000024
    mul.s   $f14, $f8, $f0
    lui     $at, %hi(var_808ACD5C)     # $at = 808B0000
    add.s   $f16, $f10, $f12
    lwc1    $f18, %lo(var_808ACD5C)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    mfc1    a1, $f16
    swc1    $f14, 0x00B8($sp)
    addiu   a0, s2, 0x0280             # a0 = 00000280
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0028(s2)            # 00000028
    lui     $at, %hi(var_808ACD60)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD60)($at)
    add.s   $f8, $f4, $f6
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0284             # a0 = 00000284
    mfc1    a1, $f8
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lwc1    $f14, 0x00B8($sp)
    lwc1    $f16, 0x002C(s2)           # 0000002C
    lui     $at, %hi(var_808ACD64)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD64)($at)
    add.s   $f18, $f16, $f14
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0288             # a0 = 00000288
    mfc1    a1, $f18
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_808ACD68)     # $at = 808B0000
    lwc1    $f6, %lo(var_808ACD68)($at)
    lw      a1, 0x025C(s2)             # 0000025C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x028C             # a0 = 0000028C
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_808ACD6C)     # $at = 808B0000
    lwc1    $f8, %lo(var_808ACD6C)($at)
    lw      a1, 0x003C(s2)             # 0000003C
    addiu   a0, s2, 0x0290             # a0 = 00000290
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     $at, %hi(var_808ACD70)     # $at = 808B0000
    lwc1    $f10, %lo(var_808ACD70)($at)
    lw      a1, 0x0264(s2)             # 00000264
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0294             # a0 = 00000294
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lh      v0, 0x01C4(s2)             # 000001C4
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     v0, $at, lbl_808A9EA8
    nop
    jal     func_800CAA70
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lh      v0, 0x01C4(s2)             # 000001C4
lbl_808A9EA8:
    bne     v0, $zero, lbl_808A9F0C
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t3, 0x01C0(s2)             # 000001C0
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0028(s2)           # 00000028
    addiu   t4, $zero, 0x0046          # t4 = 00000046
    sh      t4, 0x01C4(s2)             # 000001C4
    sh      $zero, 0x01B0(s2)          # 000001B0
    lw      a3, 0x0024(s2)             # 00000024
    swc1    $f16, 0x0210(s2)           # 00000210
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s2)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
lbl_808A9F0C:
    lui     $at, 0x0001                # $at = 00010000
    beq     $zero, $zero, lbl_808AA39C
    addu    v1, s3, $at
lbl_808A9F18:
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0210(s2)            # 00000210
    lui     $at, %hi(var_808ACD74)     # $at = 808B0000
    lwc1    $f16, %lo(var_808ACD74)($at)
    mul.s   $f10, $f6, $f8
    lw      a1, 0x005C(v0)             # 0000005C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    or      s0, v0, $zero              # s0 = 00000000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0280             # a0 = 00000280
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f10
    jal     func_80064178
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f18, 0x0210(s2)           # 00000210
    lui     $at, %hi(var_808ACD78)     # $at = 808B0000
    lwc1    $f8, %lo(var_808ACD78)($at)
    mul.s   $f6, $f18, $f4
    lw      a1, 0x0060(s0)             # 00000060
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0284             # a0 = 00000284
    swc1    $f8, 0x0010($sp)
    mfc1    a3, $f6
    jal     func_80064178
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lwc1    $f10, 0x0210(s2)           # 00000210
    lui     $at, %hi(var_808ACD7C)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD7C)($at)
    mul.s   $f18, $f10, $f16
    lw      a1, 0x0064(s0)             # 00000064
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0288             # a0 = 00000288
    swc1    $f4, 0x0010($sp)
    mfc1    a3, $f18
    jal     func_80064178
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0210(s2)            # 00000210
    lui     $at, %hi(var_808ACD80)     # $at = 808B0000
    lwc1    $f16, %lo(var_808ACD80)($at)
    mul.s   $f10, $f6, $f8
    lw      a1, 0x0050(s0)             # 00000050
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x028C             # a0 = 0000028C
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f10
    jal     func_80064178
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f18, 0x0210(s2)           # 00000210
    lui     $at, %hi(var_808ACD84)     # $at = 808B0000
    lwc1    $f8, %lo(var_808ACD84)($at)
    mul.s   $f6, $f18, $f4
    lw      a1, 0x0054(s0)             # 00000054
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0290             # a0 = 00000290
    swc1    $f8, 0x0010($sp)
    mfc1    a3, $f6
    jal     func_80064178
    nop
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lwc1    $f10, 0x0210(s2)           # 00000210
    lui     $at, %hi(var_808ACD88)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD88)($at)
    mul.s   $f18, $f10, $f16
    lw      a1, 0x0058(s0)             # 00000058
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s2, 0x0294             # a0 = 00000294
    swc1    $f4, 0x0010($sp)
    mfc1    a3, $f18
    jal     func_80064178
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    mfc1    a1, $f2
    mfc1    a2, $f2
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, s2, 0x0210             # a0 = 00000210
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      t5, 0x01C4(s2)             # 000001C4
    lui     t7, %hi(var_808ACBE0)      # t7 = 808B0000
    addiu   t7, t7, %lo(var_808ACBE0)  # t7 = 808ACBE0
    bne     t5, $zero, lbl_808AA214
    addiu   t6, $sp, 0x005C            # t6 = FFFFFF9C
    lw      t9, 0x0000(t7)             # 808ACBE0
    lw      t8, 0x0004(t7)             # 808ACBE4
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sw      t9, 0x0000(t6)             # FFFFFF9C
    lw      t9, 0x0008(t7)             # 808ACBE8
    sw      t8, 0x0004(t6)             # FFFFFFA0
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sw      t9, 0x0008(t6)             # FFFFFFA4
    sh      t0, 0x01C4(s2)             # 000001C4
    sh      t1, 0x01C0(s2)             # 000001C0
    or      s1, $zero, $zero           # s1 = 00000000
lbl_808AA0DC:
    lw      v0, 0x0068($sp)
    lwc1    $f8, 0x005C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f10, 0x0024(v0)           # 00000024
    mtc1    $at, $f2                   # $f2 = 100.00
    lwc1    $f16, 0x0064($sp)
    sub.s   $f0, $f8, $f10
    lwc1    $f10, 0x0064($sp)
    lwc1    $f4, 0x005C($sp)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808AA134
    lwc1    $f6, 0x0024(s2)            # 00000024
    lwc1    $f18, 0x002C(v0)           # 0000002C
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1tl   lbl_808AA178
    lui     $at, 0x43C8                # $at = 43C80000
    lwc1    $f6, 0x0024(s2)            # 00000024
lbl_808AA134:
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_808AA1C8
    lwc1    $f16, 0x005C($sp)
    lwc1    $f16, 0x002C(s2)           # 0000002C
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    sub.s   $f0, $f10, $f16
    abs.s   $f0, $f0
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_808AA1C4
    lui     $at, 0x43C8                # $at = 43C80000
lbl_808AA178:
    mtc1    $at, $f12                  # $f12 = 400.00
    jal     func_80026D90
    nop
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f4                   # $f4 = -150.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f12                  # $f12 = 400.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x005C($sp)
    lui     $at, 0xC3AF                # $at = C3AF0000
    mtc1    $at, $f8                   # $f8 = -350.00
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    add.s   $f10, $f0, $f8
    sra     s1, s1, 16
    slti    $at, s1, 0x2710
    bne     $at, $zero, lbl_808AA0DC
    swc1    $f10, 0x0064($sp)
lbl_808AA1C4:
    lwc1    $f16, 0x005C($sp)
lbl_808AA1C8:
    lwc1    $f4, 0x0064($sp)
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0028(s2)           # 00000028
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    swc1    $f4, 0x0018($sp)
    jal     func_800253F0
    swc1    $f18, 0x0014($sp)
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s3
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020658
    or      a0, s3, $zero              # a0 = 00000000
lbl_808AA214:
    lui     $at, 0x0001                # $at = 00010000
    lui     s0, %hi(var_808ACA14)      # s0 = 808B0000
    addiu   s0, s0, %lo(var_808ACA14)  # s0 = 808ACA14
    addu    v1, s3, $at
    or      s1, $zero, $zero           # s1 = 00000000
    lh      a1, 0x01B0(s2)             # 000001B0
lbl_808AA22C:
    sw      v1, 0x0048($sp)
    jal     func_808A73F4
    or      a0, s0, $zero              # a0 = 808ACA14
    lh      v0, 0x01B0(s2)             # 000001B0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    slti    $at, v0, 0x0100
    beq     $at, $zero, lbl_808AA258
    lw      v1, 0x0048($sp)
    addiu   t2, v0, 0x0001             # t2 = 00000001
    sh      t2, 0x01B0(s2)             # 000001B0
lbl_808AA258:
    sra     s1, s1, 16
    slti    $at, s1, 0x0004
    bnel    $at, $zero, lbl_808AA22C
    lh      a1, 0x01B0(s2)             # 000001B0
    beq     $zero, $zero, lbl_808AA3A0
    lh      a1, 0x01AC(s2)             # 000001AC
lbl_808AA270:
    lui     s0, %hi(var_808ACA14)      # s0 = 808B0000
    addiu   s0, s0, %lo(var_808ACA14)  # s0 = 808ACA14
    or      a0, s0, $zero              # a0 = 808ACA14
lbl_808AA27C:
    jal     func_808A73F4
    lh      a1, 0x01B0(s2)             # 000001B0
    lh      v0, 0x01B0(s2)             # 000001B0
    addiu   s1, s1, 0x0001             # s1 = 00000002
    sll     s1, s1, 16
    slti    $at, v0, 0x0100
    beq     $at, $zero, lbl_808AA2A4
    sra     s1, s1, 16
    addiu   t3, v0, 0x0001             # t3 = 00000001
    sh      t3, 0x01B0(s2)             # 000001B0
lbl_808AA2A4:
    slti    $at, s1, 0x0004
    bnel    $at, $zero, lbl_808AA27C
    or      a0, s0, $zero              # a0 = 808ACA14
    lh      t4, 0x01C4(s2)             # 000001C4
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a0, s2, 0x0054             # a0 = 00000054
    bne     t4, $zero, lbl_808AA394
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a3, 0x3A44                 # a3 = 3A440000
    mfc1    a2, $f2
    ori     a3, a3, 0x9BA6             # a3 = 3A449BA6
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_808ACD8C)     # $at = 808B0000
    lwc1    $f8, %lo(var_808ACD8C)($at)
    or      a0, s3, $zero              # a0 = 00000000
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_808AA38C
    lwc1    $f0, 0x0054(s2)            # 00000054
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v1, s2, 0x0280             # v1 = 00000280
    lw      t6, 0x0000(v1)             # 00000280
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t6, 0x005C(v0)             # 0000005C
    lw      t5, 0x0004(v1)             # 00000284
    sw      t5, 0x0060(v0)             # 00000060
    lw      t6, 0x0008(v1)             # 00000288
    sw      t6, 0x0064(v0)             # 00000064
    lw      t8, 0x0000(v1)             # 00000280
    sw      t8, 0x0074(v0)             # 00000074
    lw      t7, 0x0004(v1)             # 00000284
    sw      t7, 0x0078(v0)             # 00000078
    lw      t8, 0x0008(v1)             # 00000288
    sw      t8, 0x007C(v0)             # 0000007C
    lw      t0, 0x028C(s2)             # 0000028C
    sw      t0, 0x0050(v0)             # 00000050
    lw      t9, 0x0290(s2)             # 00000290
    sw      t9, 0x0054(v0)             # 00000054
    lw      t0, 0x0294(s2)             # 00000294
    sw      t0, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x01AC(s2)             # 000001AC
    sh      $zero, 0x01AC(s2)          # 000001AC
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s3, 0x1D64             # a1 = 00001D64
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f0, 0x0054(s2)            # 00000054
lbl_808AA38C:
    swc1    $f0, 0x0058(s2)            # 00000058
    swc1    $f0, 0x0050(s2)            # 00000050
lbl_808AA394:
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s3, $at
lbl_808AA39C:
    lh      a1, 0x01AC(s2)             # 000001AC
lbl_808AA3A0:
    beq     a1, $zero, lbl_808AA3BC
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a2, s2, 0x028C             # a2 = 0000028C
    addiu   a3, s2, 0x0280             # a3 = 00000280
    jal     func_8009D328
    sw      v1, 0x0048($sp)
    lw      v1, 0x0048($sp)
lbl_808AA3BC:
    lh      v0, 0x01B4(s2)             # 000001B4
    beq     v0, $zero, lbl_808AA418
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01B4(s2)             # 000001B4
    lh      t2, 0x0AB0(v1)             # 00000AB0
    lh      t4, 0x0AB2(v1)             # 00000AB2
    lh      t6, 0x0AB4(v1)             # 00000AB4
    addiu   t3, t2, 0x0028             # t3 = 00000028
    lh      t8, 0x0ABC(v1)             # 00000ABC
    lh      t0, 0x0ABE(v1)             # 00000ABE
    lh      t2, 0x0AC0(v1)             # 00000AC0
    sh      t3, 0x0AB0(v1)             # 00000AB0
    addiu   t5, t4, 0x0028             # t5 = 00000028
    addiu   t7, t6, 0x0050             # t7 = 00000050
    addiu   t9, t8, 0x000A             # t9 = 0000000A
    addiu   t1, t0, 0x000A             # t1 = 0000000A
    addiu   t3, t2, 0x0014             # t3 = 00000014
    sh      t5, 0x0AB2(v1)             # 00000AB2
    sh      t7, 0x0AB4(v1)             # 00000AB4
    sh      t9, 0x0ABC(v1)             # 00000ABC
    sh      t1, 0x0ABE(v1)             # 00000ABE
    beq     $zero, $zero, lbl_808AA460
    sh      t3, 0x0AC0(v1)             # 00000AC0
lbl_808AA418:
    lh      t4, 0x0AB0(v1)             # 00000AB0
    lh      t6, 0x0AB2(v1)             # 00000AB2
    lh      t8, 0x0AB4(v1)             # 00000AB4
    addiu   t5, t4, 0xFFEC             # t5 = FFFFFFEC
    lh      t0, 0x0ABC(v1)             # 00000ABC
    lh      t2, 0x0ABE(v1)             # 00000ABE
    lh      t4, 0x0AC0(v1)             # 00000AC0
    sh      t5, 0x0AB0(v1)             # 00000AB0
    addiu   t7, t6, 0xFFEC             # t7 = FFFFFFEC
    addiu   t9, t8, 0xFFD8             # t9 = FFFFFFD8
    addiu   t1, t0, 0xFFFB             # t1 = FFFFFFFB
    addiu   t3, t2, 0xFFFB             # t3 = FFFFFFFB
    addiu   t5, t4, 0xFFF6             # t5 = FFFFFFF6
    sh      t7, 0x0AB2(v1)             # 00000AB2
    sh      t9, 0x0AB4(v1)             # 00000AB4
    sh      t1, 0x0ABC(v1)             # 00000ABC
    sh      t3, 0x0ABE(v1)             # 00000ABE
    sh      t5, 0x0AC0(v1)             # 00000AC0
lbl_808AA460:
    lh      t6, 0x0AB0(v1)             # 00000AB0
    slti    $at, t6, 0x00C9
    bne     $at, $zero, lbl_808AA474
    addiu   v0, $zero, 0x00C8          # v0 = 000000C8
    sh      v0, 0x0AB0(v1)             # 00000AB0
lbl_808AA474:
    lh      t7, 0x0AB2(v1)             # 00000AB2
    addiu   v0, $zero, 0x00C8          # v0 = 000000C8
    slti    $at, t7, 0x00C9
    bnel    $at, $zero, lbl_808AA490
    lh      t8, 0x0AB4(v1)             # 00000AB4
    sh      v0, 0x0AB2(v1)             # 00000AB2
    lh      t8, 0x0AB4(v1)             # 00000AB4
lbl_808AA490:
    slti    $at, t8, 0x00C9
    bnel    $at, $zero, lbl_808AA4A4
    lh      t9, 0x0ABC(v1)             # 00000ABC
    sh      v0, 0x0AB4(v1)             # 00000AB4
    lh      t9, 0x0ABC(v1)             # 00000ABC
lbl_808AA4A4:
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    addiu   t2, $zero, 0x0046          # t2 = 00000046
    slti    $at, t9, 0x0047
    bnel    $at, $zero, lbl_808AA4C0
    lh      t1, 0x0ABE(v1)             # 00000ABE
    sh      t0, 0x0ABC(v1)             # 00000ABC
    lh      t1, 0x0ABE(v1)             # 00000ABE
lbl_808AA4C0:
    addiu   t4, $zero, 0x008C          # t4 = 0000008C
    slti    $at, t1, 0x0047
    bnel    $at, $zero, lbl_808AA4D8
    lh      t3, 0x0AC0(v1)             # 00000AC0
    sh      t2, 0x0ABE(v1)             # 00000ABE
    lh      t3, 0x0AC0(v1)             # 00000AC0
lbl_808AA4D8:
    slti    $at, t3, 0x008D
    bnel    $at, $zero, lbl_808AA4EC
    lh      t5, 0x0AB0(v1)             # 00000AB0
    sh      t4, 0x0AC0(v1)             # 00000AC0
    lh      t5, 0x0AB0(v1)             # 00000AB0
lbl_808AA4EC:
    bgezl   t5, lbl_808AA4FC
    lh      t6, 0x0AB2(v1)             # 00000AB2
    sh      $zero, 0x0AB0(v1)          # 00000AB0
    lh      t6, 0x0AB2(v1)             # 00000AB2
lbl_808AA4FC:
    bgezl   t6, lbl_808AA50C
    lh      t7, 0x0AB4(v1)             # 00000AB4
    sh      $zero, 0x0AB2(v1)          # 00000AB2
    lh      t7, 0x0AB4(v1)             # 00000AB4
lbl_808AA50C:
    bgezl   t7, lbl_808AA51C
    lh      t8, 0x0ABC(v1)             # 00000ABC
    sh      $zero, 0x0AB4(v1)          # 00000AB4
    lh      t8, 0x0ABC(v1)             # 00000ABC
lbl_808AA51C:
    bgezl   t8, lbl_808AA52C
    lh      t9, 0x0ABE(v1)             # 00000ABE
    sh      $zero, 0x0ABC(v1)          # 00000ABC
    lh      t9, 0x0ABE(v1)             # 00000ABE
lbl_808AA52C:
    bgezl   t9, lbl_808AA53C
    lh      t0, 0x0AC0(v1)             # 00000AC0
    sh      $zero, 0x0ABE(v1)          # 00000ABE
    lh      t0, 0x0AC0(v1)             # 00000AC0
lbl_808AA53C:
    bgezl   t0, lbl_808AA54C
    lw      $ra, 0x0044($sp)
    sh      $zero, 0x0AC0(v1)          # 00000AC0
    lw      $ra, 0x0044($sp)
lbl_808AA54C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0


func_808AA564:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lui     $at, %hi(var_808ACD90)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD90)($at)
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x41F0                # $at = 41F00000
    c.le.s  $f4, $f0
    nop
    bc1f    lbl_808AA5EC
    nop
    mtc1    $at, $f6                   # $f6 = 30.00
    lw      t6, 0x002C($sp)
    c.le.s  $f0, $f6
    nop
    bc1f    lbl_808AA5EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
lbl_808AA5EC:
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC468             # a0 = 0600C468
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      a0, 0x0020($sp)
    cvt.s.w $f8, $f8
    mfc1    a1, $f8
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_808AA64C
    lui     $at, 0x437A                # $at = 437A0000
    lwc1    $f10, 0x0090(s0)           # 00000090
    mtc1    $at, $f16                  # $f16 = 250.00
    nop
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_808AA644
    nop
    jal     func_808A80AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808AA650
    addiu   t7, $zero, 0x0002          # t7 = 00000002
lbl_808AA644:
    jal     func_808A7E18
    or      a0, s0, $zero              # a0 = 00000000
lbl_808AA64C:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
lbl_808AA650:
    sh      t7, 0x01A4(s0)             # 000001A4
    sh      $zero, 0x01A8(s0)          # 000001A8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808AA66C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x01C2(s0)             # 000001C2
    bnel    t6, $zero, lbl_808AA6AC
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    jal     func_808A8120
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x380E          # a1 = 0000380E
    addiu   t7, $zero, 0x0002          # t7 = 00000002
lbl_808AA6AC:
    sh      t7, 0x01A4(s0)             # 000001A4
    sh      $zero, 0x01A8(s0)          # 000001A8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AA6C8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      t7, t6, $at                # t7 = 01000000
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_8008C9C0
    sw      a0, 0x0030($sp)
    lh      v1, 0x01C0(s0)             # 000001C0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a1, 0x4120                 # a1 = 41200000
    beql    v1, $zero, lbl_808AA72C
    lw      v1, 0x07C4(s0)             # 000007C4
    beq     v1, $at, lbl_808AA854
    lw      a0, 0x0030($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808AA8C8
    lui     a0, 0x0600                 # a0 = 06000000
    beq     $zero, $zero, lbl_808AA8FC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lw      v1, 0x07C4(s0)             # 000007C4
lbl_808AA72C:
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    blez    v1, lbl_808AA774
    nop
    lw      a0, 0x07C8(s0)             # 000007C8
    sll     t8, v0,  6
lbl_808AA744:
    addu    t9, a0, t8
    lbu     t0, 0x0015(t9)             # 00000015
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_808AA768
    sra     v0, v0, 16
    beq     $zero, $zero, lbl_808AA774
    sh      t2, 0x01C2(s0)             # 000001C2
lbl_808AA768:
    slt     $at, v0, v1
    bnel    $at, $zero, lbl_808AA744
    sll     t8, v0,  6
lbl_808AA774:
    jal     func_8008D6A8
    lw      a0, 0x0030($sp)
    beq     v0, $zero, lbl_808AA7A8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_808A775C
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80026CF4
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
lbl_808AA7A8:
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4318             # a0 = 06004318
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0030($sp)
    cvt.s.w $f4, $f4
    mfc1    a1, $f4
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_808AA8F8
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t3, 0x01C0(s0)             # 000001C0
    jal     func_8008A194
    addiu   a0, a0, 0x4A20             # a0 = 06004A20
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4A20             # a1 = 06004A20
    lw      a0, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    lh      t4, 0x01C2(s0)             # 000001C2
    bnel    t4, $zero, lbl_808AA8FC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    nop
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    nop
    addiu   t9, t8, 0x001E             # t9 = 0000001E
    beq     $zero, $zero, lbl_808AA8F8
    sh      t9, 0x01C4(s0)             # 000001C4
lbl_808AA854:
    jal     func_8008D6A8
    lui     a1, 0x4040                 # a1 = 40400000
    beq     v0, $zero, lbl_808AA86C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x381D          # a1 = 0000381D
lbl_808AA86C:
    lh      t0, 0x01C4(s0)             # 000001C4
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    bne     t0, $zero, lbl_808AA8F8
    addiu   a0, a0, 0x5330             # a0 = 06005330
    jal     func_8008A194
    sh      t1, 0x01C0(s0)             # 000001C0
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)
    addiu   a1, a1, 0x5330             # a1 = 06005330
    lw      a0, 0x0030($sp)
    swc1    $f8, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f10, 0x0018($sp)
    beq     $zero, $zero, lbl_808AA8FC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
lbl_808AA8C8:
    jal     func_8008A194
    addiu   a0, a0, 0x5330             # a0 = 00005330
    mtc1    v0, $f16                   # $f16 = 0.00
    lw      a0, 0x0030($sp)
    cvt.s.w $f16, $f16
    mfc1    a1, $f16
    jal     func_8008D6A8
    nop
    beql    v0, $zero, lbl_808AA8FC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    jal     func_808A7A10
    or      a0, s0, $zero              # a0 = 00000000
lbl_808AA8F8:
    addiu   t3, $zero, 0x0002          # t3 = 00000002
lbl_808AA8FC:
    sh      t3, 0x01A4(s0)             # 000001A4
    sh      $zero, 0x01A8(s0)          # 000001A8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808AA918:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x6E60             # a0 = 06006E60
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0020($sp)
    cvt.s.w $f4, $f4
    mfc1    a1, $f4
    jal     func_8008D6A8
    nop
    beql    v0, $zero, lbl_808AA974
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_808A7FC8
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x0186(s0)          # 00000186
    addiu   t6, $zero, 0x0001          # t6 = 00000001
lbl_808AA974:
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    sh      t6, 0x01A4(s0)             # 000001A4
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, 0x01A8(s0)             # 000001A8
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808AA9B0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x003C($sp)
    lw      a0, 0x003C($sp)
    jal     func_8008D6A8
    lw      a1, 0x020C(s0)             # 0000020C
    beql    v0, $zero, lbl_808AAA04
    lui     $at, 0x4100                # $at = 41000000
    jal     func_808A7FC8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x005C          # t6 = 0000005C
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    sh      t6, 0x01C6(s0)             # 000001C6
    sh      $zero, 0x0186(s0)          # 00000186
    sh      t7, 0x01C2(s0)             # 000001C2
    lui     $at, 0x4100                # $at = 41000000
lbl_808AAA04:
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t9, $zero, 0x01F4          # t9 = 000001F4
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x425C                 # a3 = 425C0000
    jal     func_800260E8
    swc1    $f4, 0x0014($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808AAA54:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x001C($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008D6A8
    lw      a1, 0x020C(t6)             # 0000020C
    beql    v0, $zero, lbl_808AAAA4
    lw      $ra, 0x0014($sp)
    jal     func_808A7A10
    lw      a0, 0x0020($sp)
    lw      t8, 0x0020($sp)
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sh      t7, 0x0186(t8)             # 00000186
    lw      $ra, 0x0014($sp)
lbl_808AAAA4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AAAB0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x01C6(s0)             # 000001C6
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t6, 0x005B
    beq     $at, $zero, lbl_808AAAE0
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x301E          # a1 = 0000301E
lbl_808AAAE0:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t7, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x003C($sp)
    bne     t7, $at, lbl_808AAB34
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t9, $zero, 0x01F4          # t9 = 000001F4
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0010($sp)
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x425C                 # a3 = 425C0000
    jal     func_800260E8
    swc1    $f4, 0x0014($sp)
lbl_808AAB34:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t2, 0x01C2(s0)             # 000001C2
    bnel    t2, $zero, lbl_808AAB8C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_808A7E18
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x0186(s0)             # 00000186
    lui     $at, 0x4302                # $at = 43020000
    bnel    t3, $zero, lbl_808AAB8C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 130.00
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_808AAB8C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    sh      t4, 0x01C4(s0)             # 000001C4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_808AAB8C:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    sh      t5, 0x01A4(s0)             # 000001A4
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x01A8(s0)             # 000001A8
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808AABDC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      t6, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_808AAC80
    lw      $ra, 0x001C($sp)
    jal     func_808A7E98
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      a1, 0x0024($sp)
    jal     func_808A775C
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80026CF4
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    lw      $ra, 0x001C($sp)
lbl_808AAC80:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AAC90:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      t6, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_808AAD40
    lw      $ra, 0x001C($sp)
    jal     func_808A7F24
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      a1, 0x0024($sp)
    jal     func_808A775C
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80026CF4
    addiu   a3, $zero, 0x000F          # a3 = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3810          # a1 = 00003810
    lw      $ra, 0x001C($sp)
lbl_808AAD40:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AAD50:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x000F             # t7 = 00000000
    bnel    t7, $zero, lbl_808AAD8C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80022FD0
    addiu   a1, $zero, 0x3813          # a1 = 00003813
    addiu   a0, s0, 0x0068             # a0 = 00000068
lbl_808AAD8C:
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lh      t8, 0x01A2(s0)             # 000001A2
    addiu   $at, $zero, 0x0018         # $at = 00000018
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x01A2(s0)             # 000001A2
    lh      v0, 0x01A2(s0)             # 000001A2
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_808AADE8
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     v0, $at, lbl_808AADF0
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   $at, $zero, 0x0028         # $at = 00000028
    beq     v0, $at, lbl_808AADF8
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_808AAE00
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    beq     $zero, $zero, lbl_808AAE08
    lh      t4, 0x019A(s0)             # 0000019A
lbl_808AADE8:
    beq     $zero, $zero, lbl_808AAE04
    sh      t0, 0x01A0(s0)             # 000001A0
lbl_808AADF0:
    beq     $zero, $zero, lbl_808AAE04
    sh      t1, 0x019E(s0)             # 0000019E
lbl_808AADF8:
    beq     $zero, $zero, lbl_808AAE04
    sh      t2, 0x019C(s0)             # 0000019C
lbl_808AAE00:
    sh      t3, 0x019A(s0)             # 0000019A
lbl_808AAE04:
    lh      t4, 0x019A(s0)             # 0000019A
lbl_808AAE08:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t4, $at, lbl_808AAE78
    sll     t5, a2,  1
lbl_808AAE14:
    addu    t6, s0, t5
    lh      t7, 0x0194(t6)             # 00000194
    bnel    t7, $zero, lbl_808AAE38
    addiu   a2, a2, 0x0001             # a2 = 00000001
    jal     func_808AC678
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_808AAE50
    lh      t8, 0x0194(s0)             # 00000194
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_808AAE38:
    sll     a2, a2, 16
    sra     a2, a2, 16
    slti    $at, a2, 0x0003
    bnel    $at, $zero, lbl_808AAE14
    sll     t5, a2,  1
    lh      t8, 0x0194(s0)             # 00000194
lbl_808AAE50:
    addiu   t1, $zero, 0x0017          # t1 = 00000017
    beql    t8, $zero, lbl_808AAE78
    sh      t1, 0x01A2(s0)             # 000001A2
    lh      t9, 0x0196(s0)             # 00000196
    beql    t9, $zero, lbl_808AAE78
    sh      t1, 0x01A2(s0)             # 000001A2
    lh      t0, 0x0198(s0)             # 00000198
    bnel    t0, $zero, lbl_808AAE7C
    lh      t2, 0x01A2(s0)             # 000001A2
    sh      t1, 0x01A2(s0)             # 000001A2
lbl_808AAE78:
    lh      t2, 0x01A2(s0)             # 000001A2
lbl_808AAE7C:
    slti    $at, t2, 0x0040
    bnel    $at, $zero, lbl_808AAE94
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_808A7A98
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_808AAE94:
    sh      t3, 0x01A4(s0)             # 000001A4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AAEAC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lh      t6, 0x01C2(a1)             # 000001C2
    or      a0, a1, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_808AAEF0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    jal     func_808A7C14
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_808AAEF0:
    sh      t7, 0x01A4(a1)             # 000001A4
    sh      $zero, 0x01A8(a1)          # 000001A8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808AAF08:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      t6, 0x01C2(s0)             # 000001C2
    bnel    t6, $zero, lbl_808AAF60
    lw      $ra, 0x001C($sp)
    jal     func_808A7E18
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808AAF60:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AAF70:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_800642F0
    addiu   a0, a3, 0x0068             # a0 = 00000068
    lw      a3, 0x0018($sp)
    lh      t6, 0x01C2(a3)             # 000001C2
    bnel    t6, $zero, lbl_808AB05C
    lw      $ra, 0x0014($sp)
    lh      v0, 0x0194(a3)             # 00000194
    bne     v0, $zero, lbl_808AAFE4
    nop
    lh      t7, 0x0196(a3)             # 00000196
    bne     t7, $zero, lbl_808AAFE4
    nop
    lh      t8, 0x0198(a3)             # 00000198
    bne     t8, $zero, lbl_808AAFE4
    nop
    jal     func_808A7C88
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808AB05C
    lw      $ra, 0x0014($sp)
lbl_808AAFE4:
    bgezl   v0, lbl_808AB018
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x0196(a3)             # 00000196
    bgezl   t9, lbl_808AB018
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t0, 0x0198(a3)             # 00000198
    bgezl   t0, lbl_808AB018
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_808A7B1C
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808AB05C
    lw      $ra, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808AB018:
    sll     t1, v0,  1
lbl_808AB01C:
    addu    t2, a3, t1
    lh      t3, 0x0194(t2)             # 00000194
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t3, $zero, lbl_808AB044
    sra     v0, v0, 16
    jal     func_808A7C14
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808AB05C
    lw      $ra, 0x0014($sp)
lbl_808AB044:
    slti    $at, v0, 0x0003
    bnel    $at, $zero, lbl_808AB01C
    sll     t1, v0,  1
    jal     func_808A7D84
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_808AB05C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808AB068:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     v0, $zero, lbl_808AB0A8
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     $zero, $zero, lbl_808AB0F4
    sh      t6, 0x01A6(s0)             # 000001A6
lbl_808AB0A8:
    jal     func_8008D6A8
    lui     a1, 0x41F0                 # a1 = 41F00000
    beq     v0, $zero, lbl_808AB0C4
    lw      a0, 0x0020($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_808AB0F4
    sh      t7, 0x01A6(s0)             # 000001A6
lbl_808AB0C4:
    jal     func_8008D6A8
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_808AB0E0
    lw      a0, 0x0020($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_808AB0F4
    sh      t8, 0x01A6(s0)             # 000001A6
lbl_808AB0E0:
    jal     func_8008D6A8
    lui     a1, 0x4180                 # a1 = 41800000
    beq     v0, $zero, lbl_808AB0F4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x01A6(s0)             # 000001A6
lbl_808AB0F4:
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x4170                 # a1 = 41700000
    beq     v0, $zero, lbl_808AB124
    lw      a0, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_808A775C
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    beq     $zero, $zero, lbl_808AB148
    lh      t0, 0x0184(s0)             # 00000184
lbl_808AB124:
    jal     func_8008D6A8
    lui     a1, 0x41F0                 # a1 = 41F00000
    beq     v0, $zero, lbl_808AB144
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_808A775C
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_808AB144:
    lh      t0, 0x0184(s0)             # 00000184
lbl_808AB148:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x003F             # t1 = 00000000
    bnel    t1, $zero, lbl_808AB164
    lh      t2, 0x01A6(s0)             # 000001A6
    jal     func_80022FD0
    addiu   a1, $zero, 0x380F          # a1 = 0000380F
    lh      t2, 0x01A6(s0)             # 000001A6
lbl_808AB164:
    lw      t3, 0x002C($sp)
    bne     t2, $zero, lbl_808AB274
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t3)             # 00001C44
    sh      v0, 0x0026($sp)
    lh      v1, 0x0186(s0)             # 00000186
    lui     $at, 0x4316                # $at = 43160000
    beql    v1, $zero, lbl_808AB1EC
    lh      t5, 0x01C4(s0)             # 000001C4
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 150.00
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0186(s0)             # 00000186
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_808AB1B8
    lui     a1, 0x4055                 # a1 = 40550000
    jal     func_808A8038
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x4055                 # a1 = 40550000
lbl_808AB1B8:
    ori     a1, a1, 0x5555             # a1 = 40555555
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x0026($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    beq     $zero, $zero, lbl_808AB278
    lhu     v0, 0x0088(s0)             # 00000088
    lh      t5, 0x01C4(s0)             # 000001C4
lbl_808AB1EC:
    lui     a1, 0x40D5                 # a1 = 40D50000
    ori     a1, a1, 0x5555             # a1 = 40D55555
    beq     t5, $zero, lbl_808AB238
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0xC120                 # a1 = C1200000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    lh      t6, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f8, 0x0158(s0)            # 00000158
    bnel    t6, $at, lbl_808AB264
    addiu   a0, s0, 0x0032             # a0 = 00000032
    mtc1    $zero, $f10                # $f10 = 0.00
    beq     $zero, $zero, lbl_808AB260
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_808AB238:
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    swc1    $f16, 0x0158(s0)           # 00000158
    lh      t7, 0x0026($sp)
    addu    t8, t7, $at
    sh      t8, 0x0026($sp)
lbl_808AB260:
    addiu   a0, s0, 0x0032             # a0 = 00000032
lbl_808AB264:
    lh      a1, 0x0026($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x09C4          # a3 = 000009C4
lbl_808AB274:
    lhu     v0, 0x0088(s0)             # 00000088
lbl_808AB278:
    andi    t9, v0, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_808AB294
    andi    t0, v0, 0x0008             # t0 = 00000000
    mtc1    $zero, $f18                # $f18 = 0.00
    lhu     v0, 0x0088(s0)             # 00000088
    swc1    $f18, 0x0060(s0)           # 00000060
    andi    t0, v0, 0x0008             # t0 = 00000000
lbl_808AB294:
    beql    t0, $zero, lbl_808AB2A8
    lh      t1, 0x01C2(s0)             # 000001C2
    jal     func_808A7D00
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x01C2(s0)             # 000001C2
lbl_808AB2A8:
    bnel    t1, $zero, lbl_808AB2C8
    lw      $ra, 0x001C($sp)
    lh      t2, 0x0186(s0)             # 00000186
    beql    t2, $zero, lbl_808AB2C8
    lw      $ra, 0x001C($sp)
    jal     func_808A7A10
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808AB2C8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808AB2D8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0007             # t7 = 00000000
    bnel    t7, $zero, lbl_808AB314
    addiu   a0, s0, 0x0060             # a0 = 00000060
    jal     func_80022FD0
    addiu   a1, $zero, 0x380C          # a1 = 0000380C
    addiu   a0, s0, 0x0060             # a0 = 00000060
lbl_808AB314:
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      a1, 0x007E(s0)             # 0000007E
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addu    a1, a1, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    lui     $at, 0xC3A0                # $at = C3A00000
    mtc1    $at, $f4                   # $f4 = -320.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_808AB394
    lw      $ra, 0x001C($sp)
    jal     func_808A7D84
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x0198(s0)          # 00000198
    lh      v0, 0x0198(s0)             # 00000198
    sh      v0, 0x0196(s0)             # 00000196
    sh      v0, 0x0194(s0)             # 00000194
    lw      $ra, 0x001C($sp)
lbl_808AB394:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808AB3A4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_808A8210
    lui     a3, 0xC0A0                 # a3 = C0A00000
    lh      t7, 0x0184(s1)             # 00000184
    or      a0, s1, $zero              # a0 = 00000000
    andi    t8, t7, 0x003F             # t8 = 00000000
    bnel    t8, $zero, lbl_808AB3F0
    addiu   a0, s1, 0x00B4             # a0 = 000000B4
    jal     func_80022FD0
    addiu   a1, $zero, 0x380F          # a1 = 0000380F
    addiu   a0, s1, 0x00B4             # a0 = 000000B4
lbl_808AB3F0:
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lhu     t9, 0x0088(s1)             # 00000088
    andi    t0, t9, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_808AB52C
    lh      t3, 0x01C2(s1)             # 000001C2
    lh      s0, 0x00B6(s1)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      v0, 0x007E(s1)             # 0000007E
    addu    s0, s0, $at
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v0
    beq     $at, $zero, lbl_808AB460
    subu    v1, s0, v0
    subu    v1, v0, s0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_808AB450
    sra     t1, v1,  1
    addiu   $at, v1, 0x0001            # $at = 00000001
    sra     t1, $at,  1
lbl_808AB450:
    addu    s0, s0, t1
    sll     s0, s0, 16
    beq     $zero, $zero, lbl_808AB484
    sra     s0, s0, 16
lbl_808AB460:
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_808AB478
    sra     t2, v1,  1
    addiu   $at, v1, 0x0001            # $at = 00000001
    sra     t2, $at,  1
lbl_808AB478:
    addu    s0, v0, t2
    sll     s0, s0, 16
    sra     s0, s0, 16
lbl_808AB484:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D90
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0028($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f0, 0x002C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lwc1    $f4, 0x002C($sp)
    lwc1    $f16, 0x0028($sp)
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f6, $f4, $f2
    lwc1    $f4, 0x002C(s1)            # 0000002C
    mtc1    $at, $f12                  # $f12 = 2.00
    add.s   $f8, $f2, $f6
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    add.s   $f6, $f4, $f18
    jal     func_80026D90
    swc1    $f6, 0x002C(s1)            # 0000002C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0028($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f0, 0x002C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lwc1    $f8, 0x002C($sp)
    lwc1    $f18, 0x0028($sp)
    mul.s   $f10, $f8, $f2
    lwc1    $f8, 0x0024(s1)            # 00000024
    add.s   $f16, $f2, $f10
    mul.s   $f4, $f0, $f16
    add.s   $f6, $f4, $f18
    add.s   $f10, $f8, $f6
    swc1    $f10, 0x0024(s1)           # 00000024
    lh      t3, 0x01C2(s1)             # 000001C2
lbl_808AB52C:
    lui     $at, 0x42C8                # $at = 42C80000
    bnel    t3, $zero, lbl_808AB590
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f2                   # $f2 = 100.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f16                  # $f16 = -150.00
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0xC3AF                # $at = C3AF0000
    sub.s   $f0, $f16, $f4
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808AB590
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f18                  # $f18 = -350.00
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sub.s   $f0, $f18, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808AB590
    lw      $ra, 0x0024($sp)
    jal     func_808A7A98
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808AB590:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808AB5A0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x01AE(s0)             # 000001AE
    bnel    t6, $zero, lbl_808AB7D8
    lw      $ra, 0x001C($sp)
    lh      t8, 0x01A4(s0)             # 000001A4
    lw      t7, 0x002C($sp)
    bne     t8, $zero, lbl_808AB620
    lw      v0, 0x1C44(t7)             # 00001C44
    lbu     t9, 0x0A63(v0)             # 00000A63
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
    beql    t9, $zero, lbl_808AB5EC
    lh      t2, 0x0184(s0)             # 00000184
    sb      $zero, 0x0A63(v0)          # 00000A63
    sh      t1, 0x018C(s0)             # 0000018C
    lh      t2, 0x0184(s0)             # 00000184
lbl_808AB5EC:
    andi    t3, t2, 0x000F             # t3 = 00000000
    bnel    t3, $zero, lbl_808AB624
    lh      t5, 0x0194(s0)             # 00000194
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808ACD94)     # $at = 808B0000
    lwc1    $f4, %lo(var_808ACD94)($at)
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808AB624
    lh      t5, 0x0194(s0)             # 00000194
    sh      t4, 0x018C(s0)             # 0000018C
lbl_808AB620:
    lh      t5, 0x0194(s0)             # 00000194
lbl_808AB624:
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    addiu   a0, s0, 0x0188             # a0 = 00000188
    bgtz    t5, lbl_808AB64C
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x0196(s0)             # 00000196
    bgtzl   t6, lbl_808AB650
    sh      t8, 0x018C(s0)             # 0000018C
    lh      t7, 0x0198(s0)             # 00000198
    blezl   t7, lbl_808AB654
    lh      v0, 0x018C(s0)             # 0000018C
lbl_808AB64C:
    sh      t8, 0x018C(s0)             # 0000018C
lbl_808AB650:
    lh      v0, 0x018C(s0)             # 0000018C
lbl_808AB654:
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     v0, $zero, lbl_808AB694
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x018C(s0)             # 0000018C
    addiu   a0, s0, 0x0188             # a0 = 00000188
    addiu   a1, $zero, 0xF568          # a1 = FFFFF568
    jal     func_80064624
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a0, s0, 0x018A             # a0 = 0000018A
    addiu   a1, $zero, 0x1600          # a1 = 00001600
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     $zero, $zero, lbl_808AB6B4
    lh      t1, 0x01A4(s0)             # 000001A4
lbl_808AB694:
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x018A             # a0 = 0000018A
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t1, 0x01A4(s0)             # 000001A4
lbl_808AB6B4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x0190             # a0 = 00000190
    beq     t1, $at, lbl_808AB77C
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t2, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t2)             # 00001C44
    lh      t3, 0x00B6(s0)             # 000000B6
    lw      t5, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    subu    t4, v0, t3
    sh      t4, 0x0024($sp)
    jal     func_80021430
    lw      a1, 0x1C44(t5)             # 00001C44
    lh      v1, 0x00B4(s0)             # 000000B4
    lh      a1, 0x0024($sp)
    addiu   a0, s0, 0x0190             # a0 = 00000190
    subu    t0, v0, v1
    sll     t0, t0, 16
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_808AB718
    sra     t0, t0, 16
    slti    $at, v1, 0xC000
    beq     $at, $zero, lbl_808AB738
lbl_808AB718:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, a1, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    subu    a1, $zero, a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   t0, $zero, 0xF448          # t0 = FFFFF448
lbl_808AB738:
    slti    $at, a1, 0x1771
    bne     $at, $zero, lbl_808AB748
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a1, $zero, 0x1770          # a1 = 00001770
lbl_808AB748:
    slti    $at, a1, 0xE890
    beq     $at, $zero, lbl_808AB758
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a1, $zero, 0xE890          # a1 = FFFFE890
lbl_808AB758:
    jal     func_80064624
    sh      t0, 0x0026($sp)
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    lh      a1, 0x0026($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     $zero, $zero, lbl_808AB7A0
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_808AB77C:
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_808AB7A0:
    lui     a3, 0x3D8F                 # a3 = 3D8F0000
    ori     a3, a3, 0x5C29             # a3 = 3D8F5C29
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    jal     func_80064280
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3D8F                 # a3 = 3D8F0000
    ori     a3, a3, 0x5C29             # a3 = 3D8F5C29
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0214             # a0 = 00000214
    jal     func_80064280
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      $ra, 0x001C($sp)
lbl_808AB7D8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808AB7E8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lh      t6, 0x0184(s1)             # 00000184
    or      s0, $zero, $zero           # s0 = 00000000
    andi    t7, t6, 0x007F             # t7 = 00000000
    bnel    t7, $zero, lbl_808AB844
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t8, 0x0192(s1)             # 00000192
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0192(s1)             # 00000192
    lh      t0, 0x0192(s1)             # 00000192
    slti    $at, t0, 0x0003
    bnel    $at, $zero, lbl_808AB844
    lui     $at, 0x3F80                # $at = 3F800000
    sh      $zero, 0x0192(s1)          # 00000192
    lui     $at, 0x3F80                # $at = 3F800000
lbl_808AB844:
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f24                  # $f24 = 1.50
    lui     $at, %hi(var_808ACD98)     # $at = 808B0000
    lwc1    $f22, %lo(var_808ACD98)($at)
    lui     $at, %hi(var_808ACD9C)     # $at = 808B0000
    lwc1    $f20, %lo(var_808ACD9C)($at)
    sll     t1, s0,  1
lbl_808AB864:
    addu    v0, s1, t1
    lh      v1, 0x019A(v0)             # 0000019A
    sll     t4, s0,  2
    addu    a0, s1, t4
    beq     v1, $zero, lbl_808AB8A4
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sll     t3, s0,  2
    addu    a0, s1, t3
    mfc1    a1, $f24
    mfc1    a2, $f20
    mfc1    a3, $f22
    sh      t2, 0x019A(v0)             # 0000019A
    jal     func_80064280
    addiu   a0, a0, 0x01D8             # a0 = 000001D8
    beq     $zero, $zero, lbl_808AB8BC
    addiu   s0, s0, 0x0001             # s0 = 00000001
lbl_808AB8A4:
    mfc1    a1, $f26
    mfc1    a2, $f20
    mfc1    a3, $f22
    jal     func_80064280
    addiu   a0, a0, 0x01D8             # a0 = 000001D8
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_808AB8BC:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_808AB864
    sll     t1, s0,  1
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808AB8F4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x01AA(s0)             # 000001AA
    beq     v0, $zero, lbl_808AB91C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808ABAC0
    sh      t6, 0x01AA(s0)             # 000001AA
lbl_808AB91C:
    lw      v1, 0x07C8(s0)             # 000007C8
    lw      t7, 0x0024(v1)             # 00000024
    sw      t7, 0x002C($sp)
    lh      t8, 0x018C(s0)             # 0000018C
    bnel    t8, $zero, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
    lw      t0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_808AAD50)     # t9 = 808B0000
    addiu   t9, t9, %lo(func_808AAD50) # t9 = 808AAD50
    beql    t9, t0, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
    lbu     a0, 0x0016(v1)             # 00000016
    andi    t1, a0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_808ABAC0
    andi    t2, a0, 0xFFFD             # t2 = 00000000
    sb      t2, 0x0016(v1)             # 00000016
    lw      v0, 0x0180(s0)             # 00000180
    lui     t3, %hi(func_808AB3A4)     # t3 = 808B0000
    addiu   t3, t3, %lo(func_808AB3A4) # t3 = 808AB3A4
    beq     t3, v0, lbl_808AB988
    lui     t4, %hi(func_808AAF70)     # t4 = 808B0000
    addiu   t4, t4, %lo(func_808AAF70) # t4 = 808AAF70
    beq     t4, v0, lbl_808AB988
    lui     t5, %hi(func_808AAEAC)     # t5 = 808B0000
    addiu   t5, t5, %lo(func_808AAEAC) # t5 = 808AAEAC
    bne     t5, v0, lbl_808AB9A4
    lui     v1, %hi(func_808AAAB0)     # v1 = 808B0000
lbl_808AB988:
    jal     func_808A7B98
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3811          # a1 = 00003811
    beq     $zero, $zero, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
lbl_808AB9A4:
    addiu   v1, v1, %lo(func_808AAAB0) # v1 = FFFFAAB0
    bne     v1, v0, lbl_808ABA28
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_80051A34
    sw      v1, 0x0024($sp)
    beq     v0, $zero, lbl_808ABA28
    lw      v1, 0x0024($sp)
    lbu     t7, 0x00AF(s0)             # 000000AF
    addiu   a1, $zero, 0x3810          # a1 = 00003810
    or      a0, s0, $zero              # a0 = 00000000
    subu    t8, t7, v0
    sb      t8, 0x00AF(s0)             # 000000AF
    lb      t9, 0x00AF(s0)             # 000000AF
    blez    t9, lbl_808ABA08
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808A819C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
    jal     func_8001D4A8
    addiu   a1, s0, 0x0038             # a1 = 00000038
    beq     $zero, $zero, lbl_808ABA20
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
lbl_808ABA08:
    jal     func_808A78A4
    lw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
lbl_808ABA20:
    beq     $zero, $zero, lbl_808ABAC0
    sh      t0, 0x01AA(s0)             # 000001AA
lbl_808ABA28:
    lw      t1, 0x0180(s0)             # 00000180
    beql    v1, t1, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
    lh      t2, 0x0186(s0)             # 00000186
    lw      t3, 0x002C($sp)
    beql    t2, $zero, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
    lw      t4, 0x0000(t3)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, t4, 0x0005             # t5 = 00000000
    beql    t5, $zero, lbl_808ABAC4
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3811          # a1 = 00003811
    jal     func_800C9884
    addiu   a0, $zero, 0x380E          # a0 = 0000380E
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sh      t6, 0x01AA(s0)             # 000001AA
    jal     func_808A7FC8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, 0x01C6(s0)             # 000001C6
    lw      t8, 0x002C($sp)
    addiu   t2, $zero, 0x005A          # t2 = 0000005A
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    lw      t9, 0x0000(t8)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_808ABAB0
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    beq     $zero, $zero, lbl_808ABAB4
    sh      t1, 0x01C2(s0)             # 000001C2
lbl_808ABAB0:
    sh      t2, 0x01C2(s0)             # 000001C2
lbl_808ABAB4:
    sh      t3, 0x01C4(s0)             # 000001C4
    jal     func_80026CF4
    lw      a1, 0x0034($sp)
lbl_808ABAC0:
    lw      $ra, 0x001C($sp)
lbl_808ABAC4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808ABAD4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      v1, 0x01A8(s0)             # 000001A8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_808ABB48
    lh      v0, 0x01AA(s0)             # 000001AA
    lh      t6, 0x0184(s0)             # 00000184
    addiu   a0, s0, 0x01F4             # a0 = 000001F4
    lui     a1, 0x4248                 # a1 = 42480000
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_808ABB44
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a0, s0, 0x01F8             # a0 = 000001F8
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    beq     $zero, $zero, lbl_808ABC40
    lw      $ra, 0x001C($sp)
lbl_808ABB44:
    lh      v0, 0x01AA(s0)             # 000001AA
lbl_808ABB48:
    sll     t3, v1,  2
    subu    t3, t3, v1
    beq     v0, $zero, lbl_808ABBC8
    addiu   a0, s0, 0x01F4             # a0 = 000001F4
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_808ABB94
    sll     t9, v1,  2
    subu    t9, t9, v1
    lui     t0, %hi(var_808ACC34)      # t0 = 808B0000
    addiu   t0, t0, %lo(var_808ACC34)  # t0 = 808ACC34
    sll     t9, t9,  2
    addu    v0, t9, t0
    lwc1    $f4, 0x0000(v0)            # 00000000
    swc1    $f4, 0x01F4(s0)            # 000001F4
    lwc1    $f6, 0x0004(v0)            # 00000004
    swc1    $f6, 0x01F8(s0)            # 000001F8
    lwc1    $f8, 0x0008(v0)            # 00000008
    beq     $zero, $zero, lbl_808ABC3C
    swc1    $f8, 0x01FC(s0)            # 000001FC
lbl_808ABB94:
    sll     t1, v1,  2
    subu    t1, t1, v1
    lui     t2, %hi(var_808ACBEC)      # t2 = 808B0000
    addiu   t2, t2, %lo(var_808ACBEC)  # t2 = 808ACBEC
    sll     t1, t1,  2
    addu    v0, t1, t2
    lwc1    $f10, 0x0000(v0)           # 00000000
    swc1    $f10, 0x01F4(s0)           # 000001F4
    lwc1    $f16, 0x0004(v0)           # 00000004
    swc1    $f16, 0x01F8(s0)           # 000001F8
    lwc1    $f18, 0x0008(v0)           # 00000008
    beq     $zero, $zero, lbl_808ABC3C
    swc1    $f18, 0x01FC(s0)           # 000001FC
lbl_808ABBC8:
    sll     t3, t3,  2
    lui     a1, %hi(var_808ACBEC)      # a1 = 808B0000
    addu    a1, a1, t3
    lw      a1, %lo(var_808ACBEC)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t4, 0x01A8(s0)             # 000001A8
    lui     a1, %hi(var_808ACBF0)      # a1 = 808B0000
    addiu   a0, s0, 0x01F8             # a0 = 000001F8
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  2
    addu    a1, a1, t5
    lw      a1, %lo(var_808ACBF0)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t6, 0x01A8(s0)             # 000001A8
    lui     a1, %hi(var_808ACBF4)      # a1 = 808B0000
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    a1, a1, t7
    lw      a1, %lo(var_808ACBF4)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
lbl_808ABC3C:
    lw      $ra, 0x001C($sp)
lbl_808ABC40:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808ABC50:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x01A8(s0)             # 000001A8
    lui     a1, %hi(var_808ACC7C)      # a1 = 808B0000
    addiu   a0, s0, 0x0200             # a0 = 00000200
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    a1, a1, t7
    lw      a1, %lo(var_808ACC7C)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t8, 0x01A8(s0)             # 000001A8
    lui     a1, %hi(var_808ACC80)      # a1 = 808B0000
    addiu   a0, s0, 0x0204             # a0 = 00000204
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    a1, a1, t9
    lw      a1, %lo(var_808ACC80)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t0, 0x01A8(s0)             # 000001A8
    lui     a1, %hi(var_808ACC84)      # a1 = 808B0000
    addiu   a0, s0, 0x0208             # a0 = 00000208
    sll     t1, t0,  2
    subu    t1, t1, t0
    sll     t1, t1,  2
    addu    a1, a1, t1
    lw      a1, %lo(var_808ACC84)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808ABCF8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t7, 0x0184(s0)             # 00000184
    lh      v0, 0x01C2(s0)             # 000001C2
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x01A8(s0)             # 000001A8
    beq     v0, $zero, lbl_808ABD30
    sh      t8, 0x0184(s0)             # 00000184
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x01C2(s0)             # 000001C2
lbl_808ABD30:
    lh      v0, 0x01C4(s0)             # 000001C4
    beq     v0, $zero, lbl_808ABD40
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x01C4(s0)             # 000001C4
lbl_808ABD40:
    lh      v0, 0x01C6(s0)             # 000001C6
    beq     v0, $zero, lbl_808ABD50
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01C6(s0)             # 000001C6
lbl_808ABD50:
    lw      t9, 0x0180(s0)             # 00000180
    sh      $zero, 0x01A4(s0)          # 000001A4
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x01A6(s0)             # 000001A6
    lh      t2, 0x0032(s0)             # 00000032
    bne     t3, $zero, lbl_808ABD84
    sh      t2, 0x00B6(s0)             # 000000B6
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808ABD8C
    lui     $at, 0xC3C8                # $at = C3C80000
lbl_808ABD84:
    sh      $zero, 0x01A6(s0)          # 000001A6
    lui     $at, 0xC3C8                # $at = C3C80000
lbl_808ABD8C:
    mtc1    $at, $f6                   # $f6 = -400.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    c.lt.s  $f4, $f6
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    bc1f    lbl_808ABDE8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t4, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    beq     $zero, $zero, lbl_808ABE08
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ABDE8:
    mtc1    $at, $f0                   # $f0 = 0.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    mfc1    a3, $f0
    sw      t5, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ABE08:
    jal     func_808AB5A0
    lw      a1, 0x003C($sp)
    jal     func_808ABAD4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808ABC50
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808AB7E8
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x01AE(s0)             # 000001AE
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_808ABEB8
    lw      $ra, 0x0024($sp)
    jal     func_808AB8F4
    lw      a1, 0x003C($sp)
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x07AC             # a2 = 000007AC
    addu    a1, a0, $at
    sw      a1, 0x002C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x0028($sp)
    lw      a0, 0x003C($sp)
    lw      a1, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    lw      v0, 0x0180(s0)             # 00000180
    lui     t7, %hi(func_808AAAB0)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808AAAB0) # t7 = 808AAAB0
    beq     t7, v0, lbl_808ABEB4
    lui     t8, %hi(func_808AA918)     # t8 = 808B0000
    addiu   t8, t8, %lo(func_808AA918) # t8 = 808AA918
    beq     t8, v0, lbl_808ABEB4
    lui     t0, %hi(func_808AB068)     # t0 = 808B0000
    addiu   t0, t0, %lo(func_808AB068) # t0 = 808AB068
    bne     t0, v0, lbl_808ABEA8
    lw      a0, 0x003C($sp)
    lh      t1, 0x01C4(s0)             # 000001C4
    bnel    t1, $zero, lbl_808ABEB8
    lw      $ra, 0x0024($sp)
lbl_808ABEA8:
    lw      a1, 0x002C($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
lbl_808ABEB4:
    lw      $ra, 0x0024($sp)
lbl_808ABEB8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808ABEC8:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0018($sp)
    lw      s0, 0x0074($sp)
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    lui     t2, 0xFB00                 # t2 = FB000000
    or      t3, $zero, $zero           # t3 = 00000000
    lw      t6, 0x0060($sp)
    lw      t1, 0x0000(t6)             # 00000000
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t1)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t1)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x01FC(s0)            # 000001FC
    lwc1    $f8, 0x01F4(s0)            # 000001F4
    lwc1    $f16, 0x01F8(s0)           # 000001F8
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    t7, $f6
    trunc.w.s $f18, $f16
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t9, t8,  8
    mfc1    t8, $f10
    nop
    sll     t4, t8, 24
    or      t5, t9, t4                 # t5 = 00000008
    mfc1    t9, $f18
    nop
    andi    t4, t9, 0x00FF             # t4 = 00000008
    sll     t6, t4, 16
    or      t7, t5, t6                 # t7 = 00000008
    ori     t8, t7, 0x00FF             # t8 = 000000FF
    sw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0064($sp)
    addu    t4, s0, t9
    lbu     t5, 0x0748(t4)             # 00000750
    slti    $at, t5, 0x0002
    bnel    $at, $zero, lbl_808ABF88
    lw      t6, 0x0064($sp)
    sw      $zero, 0x0000(a2)          # 00000000
    lw      t6, 0x0064($sp)
lbl_808ABF88:
    addiu   t7, t6, 0xFFFB             # t7 = FFFFFFFB
    sltiu   $at, t7, 0x0023
    beq     $at, $zero, lbl_808AC2F0
    sll     t7, t7,  2
    lui     $at, %hi(var_808ACDA0)     # $at = 808B0000
    addu    $at, $at, t7
    lw      t7, %lo(var_808ACDA0)($at)
    jr      t7
    nop
var_808ABFAC:
    lh      t8, 0x01A4(s0)             # 000001A4
    bnel    t8, $zero, lbl_808ABFD4
    lh      t4, 0x01AA(s0)             # 000001AA
    lh      t9, 0x0188(s0)             # 00000188
    slti    $at, t9, 0xF574
    beql    $at, $zero, lbl_808ABFD4
    lh      t4, 0x01AA(s0)             # 000001AA
    beq     $zero, $zero, lbl_808AC2F0
    sw      $zero, 0x0000(a2)          # 00000000
    lh      t4, 0x01AA(s0)             # 000001AA
lbl_808ABFD4:
    beql    t4, $zero, lbl_808AC074
    lw      v1, 0x02C0(t1)             # 000002C0
    lw      s0, 0x02C0(t1)             # 000002C0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0058($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    lwc1    $f8, 0x0024($sp)
    lwc1    $f18, 0x0020($sp)
    mul.s   $f4, $f0, $f2
    lw      t3, 0x0058($sp)
    mul.s   $f10, $f8, $f2
    trunc.w.s $f6, $f4
    mul.s   $f4, $f18, $f2
    mfc1    t9, $f6
    trunc.w.s $f16, $f10
    andi    t4, t9, 0x00FF             # t4 = 00000000
    sll     t5, t4,  8
    trunc.w.s $f6, $f4
    mfc1    t4, $f16
    nop
    sll     t6, t4, 24
    or      t7, t5, t6                 # t7 = 00000000
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t8, t6, 16
    or      t9, t7, t8                 # t9 = 00000000
    ori     t4, t9, 0x003F             # t4 = 0000003F
    sw      t4, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_808AC2F4
    or      v0, t3, $zero              # v0 = 00000000
    lw      v1, 0x02C0(t1)             # 000002C0
lbl_808AC074:
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t1)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x0208(s0)            # 00000208
    lwc1    $f16, 0x0200(s0)           # 00000200
    lwc1    $f4, 0x0204(s0)            # 00000204
    trunc.w.s $f10, $f8
    trunc.w.s $f18, $f16
    mfc1    t9, $f10
    trunc.w.s $f6, $f4
    andi    t4, t9, 0x00FF             # t4 = 00000000
    sll     t5, t4,  8
    mfc1    t4, $f18
    nop
    sll     t6, t4, 24
    or      t7, t5, t6                 # t7 = 00000008
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000008
    sll     t8, t6, 16
    or      t9, t7, t8                 # t9 = 00000008
    ori     t4, t9, 0x003F             # t4 = 0000003F
    sw      t4, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_808AC2F4
    or      v0, t3, $zero              # v0 = 00000000
var_808AC0D8:
    lw      a1, 0x0070($sp)
    lh      t6, 0x0188(s0)             # 00000188
    lh      t5, 0x0000(a1)             # 00000000
    addu    t7, t5, t6
    beq     $zero, $zero, lbl_808AC2F0
    sh      t7, 0x0000(a1)             # 00000000
var_808AC0F0:
    lw      a1, 0x0070($sp)
    lh      t9, 0x018A(s0)             # 0000018A
    lh      t8, 0x0000(a1)             # 00000000
    addu    t4, t8, t9
    beq     $zero, $zero, lbl_808AC2F0
    sh      t4, 0x0000(a1)             # 00000000
var_808AC108:
    lw      a1, 0x0070($sp)
    lh      t6, 0x018E(s0)             # 0000018E
    lh      t5, 0x0000(a1)             # 00000000
    lh      t8, 0x0002(a1)             # 00000002
    addu    t7, t5, t6
    sh      t7, 0x0000(a1)             # 00000000
    lh      t9, 0x0190(s0)             # 00000190
    addu    t4, t8, t9
    beq     $zero, $zero, lbl_808AC2F0
    sh      t4, 0x0002(a1)             # 00000002
var_808AC130:
    lh      t5, 0x01A4(s0)             # 000001A4
    or      a0, a3, $zero              # a0 = 00000000
    bnel    t5, $zero, lbl_808AC15C
    lh      t7, 0x01A8(s0)             # 000001A8
    lh      t6, 0x0188(s0)             # 00000188
    slti    $at, t6, 0xF574
    beql    $at, $zero, lbl_808AC15C
    lh      t7, 0x01A8(s0)             # 000001A8
    beq     $zero, $zero, lbl_808AC2F0
    sw      $zero, 0x0000(a2)          # 00000000
    lh      t7, 0x01A8(s0)             # 000001A8
lbl_808AC15C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_808AC190
    lw      v1, 0x02C0(t1)             # 000002C0
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t9, 0x3232                 # t9 = 32320000
    ori     t9, t9, 0x32FF             # t9 = 323232FF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t1)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_808AC1A8
    lw      a1, 0x0070($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
lbl_808AC190:
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t1)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      a1, 0x0070($sp)
lbl_808AC1A8:
    sw      a2, 0x0068($sp)
    jal     func_800AB1BC
    sw      t1, 0x0054($sp)
    lw      t6, 0x0068($sp)
    lw      t1, 0x0054($sp)
    lw      t7, 0x0000(t6)             # 00000000
    beq     t7, $zero, lbl_808AC23C
    nop
    jal     func_800AA6EC
    sw      t1, 0x0054($sp)
    lwc1    $f12, 0x01E8(s0)           # 000001E8
    lwc1    $f14, 0x0214(s0)           # 00000214
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t1, 0x0054($sp)
    lw      s0, 0x02C0(t1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t4, 0x0060($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t4)             # 00000000
    lw      t1, 0x0054($sp)
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t1)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0068($sp)
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
lbl_808AC23C:
    beq     $zero, $zero, lbl_808AC2F0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
var_808AC244:
    lw      a1, 0x0070($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sw      a2, 0x0068($sp)
    jal     func_800AB1BC
    sw      t1, 0x0054($sp)
    lw      t9, 0x0068($sp)
    lw      t1, 0x0054($sp)
    lw      t4, 0x0000(t9)             # 00000000
    beql    t4, $zero, lbl_808AC2F0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    jal     func_800AA6EC
    sw      t1, 0x0054($sp)
    lw      t5, 0x0064($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sll     t6, t5,  2
    addu    t7, s0, t6
    lwc1    $f12, 0x01AC(t7)           # 000001AC
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t1, 0x0054($sp)
    lw      s0, 0x02C0(t1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t4, 0x0060($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t4)             # 00000000
    lw      t1, 0x0054($sp)
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t1)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0068($sp)
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_808AC2F0:
    or      v0, t3, $zero              # v0 = 00000001
lbl_808AC2F4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_808AC308:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s0, 0x0038($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a0, 0x00A8($sp)
    sw      a2, 0x00B0($sp)
    sw      a3, 0x00B4($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     s0, $at, lbl_808AC348
    lui     a0, %hi(var_808ACCC4)      # a0 = 808B0000
    lw      a1, 0x00B8($sp)
    addiu   a0, a0, %lo(var_808ACCC4)  # a0 = 808ACCC4
    jal     func_800AB958
    addiu   a1, a1, 0x0250             # a1 = 00000250
    beq     $zero, $zero, lbl_808AC3D4
    lw      v1, 0x00B8($sp)
lbl_808AC348:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     s0, $at, lbl_808AC36C
    lui     a0, %hi(var_808ACCC4)      # a0 = 808B0000
    lw      a1, 0x00B8($sp)
    addiu   a0, a0, %lo(var_808ACCC4)  # a0 = 808ACCC4
    jal     func_800AB958
    addiu   a1, a1, 0x025C             # a1 = 0000025C
    beq     $zero, $zero, lbl_808AC3D4
    lw      v1, 0x00B8($sp)
lbl_808AC36C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     s0, $at, lbl_808AC390
    lui     a0, %hi(var_808ACCDC)      # a0 = 808B0000
    lw      a1, 0x00B8($sp)
    addiu   a0, a0, %lo(var_808ACCDC)  # a0 = 808ACCDC
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    beq     $zero, $zero, lbl_808AC3D4
    lw      v1, 0x00B8($sp)
lbl_808AC390:
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     s0, $at, lbl_808AC3B4
    lui     a0, %hi(var_808ACCD0)      # a0 = 808B0000
    lw      a1, 0x00B8($sp)
    addiu   a0, a0, %lo(var_808ACCD0)  # a0 = 808ACCD0
    jal     func_800AB958
    addiu   a1, a1, 0x0268             # a1 = 00000268
    beq     $zero, $zero, lbl_808AC3D4
    lw      v1, 0x00B8($sp)
lbl_808AC3B4:
    addiu   $at, $zero, 0x0049         # $at = 00000049
    bne     s0, $at, lbl_808AC3D0
    lui     a0, %hi(var_808ACCD0)      # a0 = 808B0000
    lw      a1, 0x00B8($sp)
    addiu   a0, a0, %lo(var_808ACCD0)  # a0 = 808ACCD0
    jal     func_800AB958
    addiu   a1, a1, 0x0274             # a1 = 00000274
lbl_808AC3D0:
    lw      v1, 0x00B8($sp)
lbl_808AC3D4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t7, 0x00B0($sp)
    lh      t6, 0x01A8(v1)             # 000001A8
    bnel    t6, $at, lbl_808AC438
    addu    v0, v1, s0
    lw      t8, 0x0000(t7)             # 00000000
    sll     t0, s0,  2
    subu    t0, t0, s0
    beq     t8, $zero, lbl_808AC424
    lui     $at, %hi(var_808ACE2C)     # $at = 808B0000
    sll     t9, s0,  2
    subu    t9, t9, s0
    sll     t9, t9,  2
    addu    a1, v1, t9
    lui     a0, %hi(var_808ACCD0)      # a0 = 808B0000
    addiu   a0, a0, %lo(var_808ACCD0)  # a0 = 808ACCD0
    jal     func_800AB958
    addiu   a1, a1, 0x0298             # a1 = 00000298
    beq     $zero, $zero, lbl_808AC434
    lw      v1, 0x00B8($sp)
lbl_808AC424:
    lwc1    $f4, %lo(var_808ACE2C)($at)
    sll     t0, t0,  2
    addu    t1, v1, t0
    swc1    $f4, 0x029C(t1)            # 0000029C
lbl_808AC434:
    addu    v0, v1, s0
lbl_808AC438:
    lbu     t2, 0x0748(v0)             # 00000748
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    bne     t2, $at, lbl_808AC4EC
    lui     a0, %hi(var_808ACCE8)      # a0 = 808B0000
    sb      t3, 0x0748(v0)             # 00000748
    addiu   a0, a0, %lo(var_808ACCE8)  # a0 = 808ACCE8
    jal     func_800AB958
    addiu   a1, $sp, 0x009C            # a1 = FFFFFFF4
    jal     func_800AA740
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFA0
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFA0
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFEC
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t8, %hi(var_808ACB14)      # t8 = 808B0000
    addu    t8, t8, s0
    lbu     t8, %lo(var_808ACB14)(t8)
    lw      a2, 0x00A8($sp)
    lwc1    $f6, 0x009C($sp)
    lwc1    $f8, 0x00A0($sp)
    lwc1    $f10, 0x00A4($sp)
    lh      t5, 0x0094($sp)
    lh      t6, 0x0096($sp)
    lh      t7, 0x0098($sp)
    addiu   t9, t8, 0x0064             # t9 = 808B0064
    sw      t9, 0x0028($sp)
    lw      a1, 0x00B8($sp)
    addiu   a3, $zero, 0x002B          # a3 = 0000002B
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    sw      t5, 0x001C($sp)
    sw      t6, 0x0020($sp)
    jal     func_800253F0
    sw      t7, 0x0024($sp)
    beq     v0, $zero, lbl_808AC4E8
    lw      t0, 0x00B0($sp)
    lw      t1, 0x0000(t0)             # 00000000
    sw      t1, 0x02F8(v0)             # 000002F8
    lw      t2, 0x00B8($sp)
    lb      t3, 0x001E(t2)             # 0000001E
    sb      t3, 0x001E(v0)             # 0000001E
lbl_808AC4E8:
    lw      v1, 0x00B8($sp)
lbl_808AC4EC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, v1, 0x07AC             # a1 = 000007AC
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8
    jr      $ra
    nop


func_808AC50C:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    sw      $zero, 0x0004(v1)          # FFFFFFF4
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_808AC530:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t7, 0xE200                 # t7 = E2000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    lui     t8, 0x0C19                 # t8 = 0C190000
    ori     t8, t8, 0x3078             # t8 = 0C193078
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0008(v1)             # FFFFFFE8
    sw      t8, 0x000C(v1)             # FFFFFFEC
    lui     t9, 0xD9FF                 # t9 = D9FF0000
    ori     t9, t9, 0xFBFF             # t9 = D9FFFBFF
    sw      t9, 0x0010(v1)             # FFFFFFF0
    sw      $zero, 0x0014(v1)          # FFFFFFF4
    lui     t0, 0xDF00                 # t0 = DF000000
    sw      t0, 0x0018(v1)             # FFFFFFF8
    sw      $zero, 0x001C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra
    nop


func_808AC588:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0030($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0xC57A                # $at = C57A0000
    mtc1    $at, $f14                  # $f14 = -4000.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x0038($sp)
    lw      v1, 0x0030($sp)
    lh      t8, 0x01B2(t7)             # 000001B2
    beql    t8, $zero, lbl_808AC610
    lw      v0, 0x02C0(v1)             # 000002C0
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t0, 0xDB06                 # t0 = DB060000
    ori     t0, t0, 0x0020             # t0 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lw      t1, 0x003C($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_808AC530
    sw      v0, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    beq     $zero, $zero, lbl_808AC640
    lw      t5, 0x0038($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
lbl_808AC610:
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(v1)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, 0x003C($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_808AC50C
    sw      v0, 0x0024($sp)
    lw      a1, 0x0024($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t5, 0x0038($sp)
lbl_808AC640:
    lui     t6, %hi(func_808AC308)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808AC308) # t6 = 808AC308
    lui     a3, %hi(func_808ABEC8)     # a3 = 808B0000
    lw      a1, 0x0140(t5)             # 00000140
    lw      a2, 0x015C(t5)             # 0000015C
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(func_808ABEC8) # a3 = 808ABEC8
    lw      a0, 0x003C($sp)
    jal     func_8008993C
    sw      t5, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808AC678:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lw      a2, 0x003C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0250(a1)            # 00000250
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lh      t6, 0x0042($sp)
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0254(a1)            # 00000254
    addiu   $at, $zero, 0x5555         # $at = 00005555
    multu   t6, $at
    sub.s   $f10, $f6, $f8
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x002B          # a3 = 0000002B
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x0258(a1)           # 00000258
    sw      a1, 0x0038($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    mflo    t7
    sw      t7, 0x0020($sp)
    sw      t6, 0x0028($sp)
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lh      t9, 0x0042($sp)
    lw      a1, 0x0038($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     t0, t9,  1
    addu    t1, a1, t0
    sh      t8, 0x0194(t1)             # 00000194
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop

.section .data

var_808AC710: .word 0x00280900, 0x00000035, 0x001C0000, 0x00000B0C
.word func_808A75A4
.word func_808A7864
.word func_808ABCF8
.word func_808AC588
var_808AC730: .word \
0x03000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x05000000, 0x000004B0, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00080000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x0B000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0C000000, 0x00000000, 0x000F0064, 0x02000000, \
0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0D000000, 0x00000000, 0x000C0064, \
0x02000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x0E000000, 0x00000000, \
0x00190064, 0x02000000, 0xFFCFFFFF, 0x00080000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x16000000, \
0x00000000, 0x001E0064, 0x02000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x17000000, 0x00000000, 0x000F0064, 0x02000000, \
0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x1D000000, 0x00000000, 0x000F0064, \
0x02000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x39000000, 0x00000000, \
0x00140064, 0x02000000, 0xFFCFFFFF, 0x00080000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x40000000, \
0x00000000, 0x00140064, 0x02000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x4A000000, 0x00000000, 0x001E0064, 0x02000000, \
0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x4B000000, 0x00000000, 0x000F0064, \
0x02000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x51000000, 0x00000000, \
0x000F0064
var_808AC904: .word 0x03110909, 0x10000000, 0x0000000D
.word var_808AC730
var_808AC914: .word \
0x00000000, 0x00000000, 0x00000101, 0x01000000, \
0x01000000, 0x01010100, 0x00000001, 0x01010000, \
0x01000001, 0x01010101, 0x00000001, 0x01010100, \
0x00010101, 0x01010101, 0x01000000, 0x01010101, \
0x00000101, 0x01010100, 0x00000100, 0x00010101, \
0x00000101, 0x01010000, 0x00010101, 0x01000001, \
0x00000101, 0x00000000, 0x01010101, 0x01000000, \
0x00010100, 0x01010001, 0x01010101, 0x01010000, \
0x00000101, 0x00000101, 0x01010101, 0x01010000, \
0x00000101, 0x01000101, 0x01010101, 0x01000001, \
0x00000101, 0x01000001, 0x01010101, 0x01010100, \
0x01000001, 0x01000000, 0x01010101, 0x01000000, \
0x00010000, 0x01010000, 0x01010101, 0x00000000, \
0x00010101, 0x00000100, 0x00000100, 0x00000100, \
0x01010101, 0x01010000, 0x01010001, 0x01010000, \
0x00000101, 0x00000000, 0x00010101, 0x00000000
var_808ACA14: .word \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010100, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101
var_808ACB14: .word \
0x00000000, 0x00000000, 0x0000001E, 0x28000000, \
0x00000000, 0x000A0F15, 0x00001900, 0x001F2300, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x002B3035, 0x00000000, \
0x2A2D3500, 0x00000000, 0x000B0F15, 0x00001900, \
0x001E2300, 0x00000000, 0x00000000, 0x00000000, \
0x00000000
var_808ACB78: .word 0x801F0002, 0x89170001, 0x386CF830
var_808ACB84: .word 0x00000000, 0x00000000, 0x00000000
var_808ACB90: .word 0x00000000, 0xBF000000, 0x00000000
var_808ACB9C: .word 0xC3160000, 0x00000000
var_808ACBA4: .word 0xC3AF0000
var_808ACBA8: .word 0x00000000, 0x00000000, 0x00000000
var_808ACBB4: .word 0x00000000, 0x3F800000, 0x00000000
var_808ACBC0: .word 0xFFFFFFFF
var_808ACBC4: .word 0x0064FFFF
var_808ACBC8: .word 0x00000000, 0x00000000, 0x00000000
var_808ACBD4: .word 0x00000000, 0xBF000000, 0x00000000
var_808ACBE0: .word 0xC3160000, 0x00000000, 0xC3AF0000
var_808ACBEC: .word 0x437F0000
var_808ACBF0: .word 0x41880000
var_808ACBF4: .word \
0x00000000, 0x00000000, 0x437F0000, 0x432A0000, \
0x42480000, 0x42480000, 0x42480000, 0x00000000, \
0x437F0000, 0x432A0000, 0x00000000, 0x437F0000, \
0x432A0000, 0x00000000, 0x437F0000, 0x432A0000
var_808ACC34: .word \
0x437F0000, 0x41880000, 0x00000000, 0x00000000, \
0x437F0000, 0x432A0000, 0x42480000, 0x42480000, \
0x42480000, 0x00000000, 0x437F0000, 0x432A0000, \
0x00000000, 0x00000000, 0x437F0000, 0x437F0000, \
0x41880000, 0x00000000
var_808ACC7C: .word 0x437F0000
var_808ACC80: .word 0x41880000
var_808ACC84: .word \
0x00000000, 0x437F0000, 0x437F0000, 0x437F0000, \
0x42480000, 0x42480000, 0x42480000, 0x00000000, \
0x437F0000, 0x432A0000, 0x00000000, 0x437F0000, \
0x432A0000, 0x00000000, 0x437F0000, 0x432A0000
var_808ACCC4: .word 0x00000000, 0x00000000, 0x00000000
var_808ACCD0: .word 0x00000000, 0x00000000, 0x00000000
var_808ACCDC: .word 0x00000000, 0x43960000, 0x4525A000
var_808ACCE8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_808ACD00: .word var_808A8694
.word var_808A877C
.word var_808A8864
.word var_808A8B58
.word var_808A8C74
.word var_808A8E7C
.word lbl_808A96C4
.word lbl_808A96C4
.word lbl_808A96C4
.word var_808A9094
var_808ACD28: .word 0x4324B852
var_808ACD2C: .word 0x43C6D70B
var_808ACD30: .word 0x4324B852
var_808ACD34: .word 0x43C6D70B
var_808ACD38: .word 0x3FE66666
var_808ACD3C: .word 0x40490E56
var_808ACD40: .word 0x3F333333
var_808ACD44: .word 0x3DCCCCCD
var_808ACD48: .word 0x3DCCCCCD
var_808ACD4C: .word 0x3DCCCCCD
var_808ACD50: .word 0x461C4000
var_808ACD54: .word 0x461C4000
var_808ACD58: .word 0x3CB43958
var_808ACD5C: .word 0x3DCCCCCD
var_808ACD60: .word 0x3DCCCCCD
var_808ACD64: .word 0x3DCCCCCD
var_808ACD68: .word 0x3DCCCCCD
var_808ACD6C: .word 0x3DCCCCCD
var_808ACD70: .word 0x3DCCCCCD
var_808ACD74: .word 0x3DCCCCCD
var_808ACD78: .word 0x3DCCCCCD
var_808ACD7C: .word 0x3DCCCCCD
var_808ACD80: .word 0x3DCCCCCD
var_808ACD84: .word 0x3DCCCCCD
var_808ACD88: .word 0x3DCCCCCD
var_808ACD8C: .word 0x3A83126F
var_808ACD90: .word 0x419AAAAB
var_808ACD94: .word 0x3E99999A
var_808ACD98: .word 0x3DCCCCCD
var_808ACD9C: .word 0x3E4CCCCD
var_808ACDA0: .word var_808ABFAC
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word var_808AC244
.word var_808AC244
.word var_808AC244
.word var_808AC244
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word var_808AC0D8
.word lbl_808AC2F0
.word lbl_808AC2F0
.word var_808AC0F0
.word lbl_808AC2F0
.word lbl_808AC2F0
.word var_808AC108
.word var_808AC130
var_808ACE2C: .word 0x461C4000

