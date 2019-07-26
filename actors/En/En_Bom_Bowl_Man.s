.section .text
func_80AAD470:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s8, 0x0050($sp)
    sw      s3, 0x003C($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s8, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s8, 0x0180             # t6 = 00000180
    addiu   t7, s8, 0x01C2             # t7 = 000001C2
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0710             # a3 = 06000710
    addiu   a2, a2, 0x6EB0             # a2 = 06006EB0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s8, 0x013C             # a1 = 0000013C
    lw      t0, 0x0024(s8)             # 00000024
    lui     $at, 0xC270                # $at = C2700000
    lw      t9, 0x0028(s8)             # 00000028
    sw      t0, 0x0238(s8)             # 00000238
    lw      t0, 0x002C(s8)             # 0000002C
    mtc1    $at, $f4                   # $f4 = -60.00
    lui     a1, 0x3C54                 # a1 = 3C540000
    ori     a1, a1, 0xFDF4             # a1 = 3C54FDF4
    or      a0, s8, $zero              # a0 = 00000000
    sw      t9, 0x023C(s8)             # 0000023C
    sw      t0, 0x0240(s8)             # 00000240
    jal     func_80020F88
    swc1    $f4, 0x00BC(s8)            # 000000BC
    lui     s0, %hi(var_80AAE7A8)      # s0 = 80AB0000
    lui     s6, %hi(var_80AAE790)      # s6 = 80AB0000
    lui     s5, %hi(var_80AAE7C0)      # s5 = 80AB0000
    addiu   s5, s5, %lo(var_80AAE7C0)  # s5 = 80AAE7C0
    addiu   s6, s6, %lo(var_80AAE790)  # s6 = 80AAE790
    addiu   s0, s0, %lo(var_80AAE7A8)  # s0 = 80AAE7A8
    or      s1, $zero, $zero           # s1 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s4, s3, 0x1C24             # s4 = 00001C24
    addiu   s7, $zero, 0x0002          # s7 = 00000002
lbl_80AAD54C:
    lwc1    $f6, 0x0004(s0)            # 80AAE7AC
    lwc1    $f8, 0x0008(s0)            # 80AAE7B0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0024($sp)
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0143          # a2 = 00000143
    lw      a3, 0x0000(s0)             # 80AAE7A8
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)
    beq     v0, $zero, lbl_80AAD5C8
    addiu   s0, s0, 0x000C             # s0 = 80AAE7B4
    sll     t2, s1,  2
    addu    t3, s5, t2
    lwc1    $f10, 0x0000(t3)           # 00000000
    addu    v1, s6, s2
    swc1    $f10, 0x02E4(v0)           # 000002E4
    lwc1    $f16, 0x0000(v1)           # 00000000
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x032C(v0)             # 0000032C
    lwc1    $f4, 0x0004(v1)            # 00000004
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x032E(v0)             # 0000032E
lbl_80AAD5C8:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s7, lbl_80AAD54C
    addiu   s2, s2, 0x000C             # s2 = 0000000C
    lui     $at, %hi(var_80AAE840)     # $at = 80AB0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80AAE840)($at)
    trunc.w.s $f8, $f0
    lui     t1, %hi(func_80AAD640)     # t1 = 80AB0000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_80AAD640) # t1 = 80AAD640
    mfc1    t9, $f8
    sb      t0, 0x001F(s8)             # 0000001F
    sw      t1, 0x0204(s8)             # 00000204
    sh      t9, 0x0232(s8)             # 00000232
    lw      $ra, 0x0054($sp)
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
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80AAD630:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AAD640:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0710             # a0 = 06000710
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0710             # a1 = 06000710
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x0244(s0)            # 00000244
    sw      $zero, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lui     t8, %hi(func_80AAD6C8)     # t8 = 80AB0000
    addiu   t6, $zero, 0x00C0          # t6 = 000000C0
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, t8, %lo(func_80AAD6C8) # t8 = 80AAD6C8
    sh      t6, 0x010E(s0)             # 0000010E
    sh      t7, 0x021E(s0)             # 0000021E
    sw      t8, 0x0204(s0)             # 00000204
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AAD6C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80AAD708
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_80AAD77C)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAD77C) # t6 = 80AAD77C
    b       lbl_80AAD76C
    sw      t6, 0x0204(a3)             # 00000204
lbl_80AAD708:
    lh      t7, 0x008A(a3)             # 0000008A
    lh      t8, 0x00B6(a3)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f0                   # $f0 = 120.00
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AAD738
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_80AAD740
    sra     v1, v1, 16
lbl_80AAD738:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80AAD740:
    lwc1    $f4, 0x0090(a3)            # 00000090
    slti    $at, v1, 0x4300
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80AAD770
    lw      $ra, 0x0014($sp)
    beq     $at, $zero, lbl_80AAD76C
    or      a0, a3, $zero              # a0 = 00000000
    mfc1    a2, $f0
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80AAD76C:
    lw      $ra, 0x0014($sp)
lbl_80AAD770:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AAD77C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0018($sp)
    lh      t7, 0x021E(t6)             # 0000021E
    bnel    t7, v0, lbl_80AAD7E8
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80AAD7E4
    lw      t9, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    sb      t8, 0x03DC($at)            # 000103DC
    lw      t1, 0x0018($sp)
    lui     t0, %hi(func_80AAD7F4)     # t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AAD7F4) # t0 = 80AAD7F4
    sw      t0, 0x0204(t1)             # 00000204
lbl_80AAD7E4:
    lw      $ra, 0x0014($sp)
lbl_80AAD7E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AAD7F4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0080             # a0 = 06000080
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f0, $f4
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x0080             # a1 = 06000080
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0244(v1)            # 00000244
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      v1, 0x0028($sp)
    lui     t8, %hi(func_80AAD878)     # t8 = 80AB0000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, t8, %lo(func_80AAD878) # t8 = 80AAD878
    sh      t7, 0x0228(v1)             # 00000228
    sw      t8, 0x0204(v1)             # 00000204
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AAD878:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0154(a2)            # 00000154
    sw      a2, 0x0020($sp)
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x001C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x001C($sp)
    lw      a2, 0x0020($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    c.eq.s  $f6, $f8
    lui     t7, 0x8012                 # t7 = 80120000
    bc1fl   lbl_80AAD900
    lhu     a1, 0x010E(a2)             # 0000010E
    sh      t6, 0x021E(a2)             # 0000021E
    lhu     t7, -0x4B58(t7)            # 8011B4A8
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t1, $zero, 0x00BF          # t1 = 000000BF
    andi    t8, t7, 0x0020             # t8 = 00000000
    bne     t8, $zero, lbl_80AAD8F0
    nop
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   t2, $zero, 0x7058          # t2 = 00007058
    lh      t0, 0x12D8(t9)             # 801212D8
    beql    t0, $zero, lbl_80AAD8FC
    sh      t2, 0x010E(a2)             # 0000010E
lbl_80AAD8F0:
    b       lbl_80AAD8FC
    sh      t1, 0x010E(a2)             # 0000010E
    sh      t2, 0x010E(a2)             # 0000010E
lbl_80AAD8FC:
    lhu     a1, 0x010E(a2)             # 0000010E
lbl_80AAD900:
    sw      a2, 0x0020($sp)
    jal     func_800DCE80
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lh      t3, 0x0224(a2)             # 00000224
    bnel    t3, $zero, lbl_80AAD968
    lw      $ra, 0x0014($sp)
    lh      t4, 0x0228(a2)             # 00000228
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    bnel    v0, t4, lbl_80AAD968
    lw      $ra, 0x0014($sp)
    lh      t5, 0x0226(a2)             # 00000226
    bnel    t5, $zero, lbl_80AAD968
    lw      $ra, 0x0014($sp)
    lh      t6, 0x022A(a2)             # 0000022A
    lui     t9, %hi(func_80AAD974)     # t9 = 80AB0000
    sh      v0, 0x0224(a2)             # 00000224
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x022A(a2)             # 0000022A
    lh      t8, 0x022A(a2)             # 0000022A
    addiu   t9, t9, %lo(func_80AAD974) # t9 = 80AAD974
    slti    $at, t8, 0x0003
    bnel    $at, $zero, lbl_80AAD968
    lw      $ra, 0x0014($sp)
    sw      t9, 0x0204(a2)             # 00000204
    lw      $ra, 0x0014($sp)
lbl_80AAD968:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AAD974:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0034($sp)
    lw      a0, 0x003C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x021E(s0)             # 0000021E
    bnel    t6, v0, lbl_80AADA90
    lw      $ra, 0x002C($sp)
    jal     func_800D6110
    lw      a0, 0x003C($sp)
    beql    v0, $zero, lbl_80AADA90
    lw      $ra, 0x002C($sp)
    jal     func_800D6218
    lw      a0, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x72AC             # a0 = 060072AC
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x72AC             # a1 = 060072AC
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x0244(s0)            # 00000244
    sw      $zero, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    lw      a0, 0x0034($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lui     $at, 0x4270                # $at = 42700000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sh      t7, 0x0228(s0)             # 00000228
    trunc.w.s $f8, $f0
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    lui     t5, 0x8012                 # t5 = 80120000
    mfc1    t1, $f8
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    andi    a1, t8, 0xFFFF             # a1 = 00000018
    addiu   t2, t1, 0x0014             # t2 = 00000014
    sh      t2, 0x0226(s0)             # 00000226
    lhu     t3, -0x4B58(t3)            # 8011B4A8
    andi    t4, t3, 0x0020             # t4 = 00000000
    bnel    t4, $zero, lbl_80AADA74
    sh      t8, 0x010E(s0)             # 0000010E
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     t7, %hi(func_80AADAA0)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AADAA0) # t7 = 80AADAA0
    lh      t6, 0x12D8(t5)             # 801212D8
    bnel    t6, $zero, lbl_80AADA74
    sh      t8, 0x010E(s0)             # 0000010E
    b       lbl_80AADA8C
    sw      t7, 0x0204(s0)             # 00000204
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80AADA74:
    sh      t9, 0x021E(s0)             # 0000021E
    jal     func_800DCE80
    lw      a0, 0x003C($sp)
    lui     t0, %hi(func_80AADE00)     # t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AADE00) # t0 = 80AADE00
    sw      t0, 0x0204(s0)             # 00000204
lbl_80AADA8C:
    lw      $ra, 0x002C($sp)
lbl_80AADA90:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AADAA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80AADAE0
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80AADAFC)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AADAFC) # t6 = 80AADAFC
    b       lbl_80AADAEC
    sw      t6, 0x0204(a0)             # 00000204
lbl_80AADAE0:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x42F0                 # a2 = 42F00000
lbl_80AADAEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AADAFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0018($sp)
    lh      t7, 0x021E(t6)             # 0000021E
    bnel    t7, v0, lbl_80AADB60
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80AADB60
    lw      $ra, 0x0014($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      t9, 0x0018($sp)
    lui     t8, %hi(func_80AADAA0)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AADAA0) # t8 = 80AADAA0
    sw      t8, 0x0204(t9)             # 00000204
    lw      $ra, 0x0014($sp)
lbl_80AADB60:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AADB6C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lui     t3, %hi(func_80AADBF0)     # t3 = 80AB0000
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    lbu     t6, 0x0248(a1)             # 00000248
    addiu   t1, $zero, 0x0019          # t1 = 00000019
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    bne     t6, $zero, lbl_80AADBD4
    addiu   t3, t3, %lo(func_80AADBF0) # t3 = 80AADBF0
    lh      t7, 0x0222(a1)             # 00000222
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    addiu   t9, $zero, 0x001A          # t9 = 0000001A
    bnel    t7, $zero, lbl_80AADBCC
    sh      t9, 0x010E(a1)             # 0000010E
    b       lbl_80AADBCC
    sh      t8, 0x010E(a1)             # 0000010E
    sh      t9, 0x010E(a1)             # 0000010E
lbl_80AADBCC:
    b       lbl_80AADBDC
    sh      t0, 0x021E(a1)             # 0000021E
lbl_80AADBD4:
    sh      t1, 0x010E(a1)             # 0000010E
    sh      t2, 0x021E(a1)             # 0000021E
lbl_80AADBDC:
    sw      t3, 0x0204(a1)             # 00000204
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AADBF0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      v0, 0x024C(a3)             # 0000024C
    sh      $zero, 0x0234(a3)          # 00000234
    or      a0, a3, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    lh      t6, 0x022E(a3)             # 0000022E
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    v1, t6, lbl_80AADC5C
    lw      t9, 0x001C($sp)
    lh      t7, 0x0230(a3)             # 00000230
    beql    v1, t7, lbl_80AADC5C
    lw      t9, 0x001C($sp)
    lbu     t8, 0x0154(v0)             # 00000154
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t8, $at, lbl_80AADC5C
    lw      t9, 0x001C($sp)
    sh      v1, 0x0234(a3)             # 00000234
    sb      $zero, 0x0154(v0)          # 00000154
    lw      t9, 0x001C($sp)
lbl_80AADC5C:
    lui     t0, 0x0001                 # t0 = 00010000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addu    t0, t0, t9
    lb      t0, 0x1E5D(t0)             # 00011E5D
    bnel    t0, $at, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    lw      t1, 0x1C48(t9)             # 00001C48
    bnel    t1, $zero, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    lw      t2, 0x024C(a3)             # 0000024C
    lbu     t3, 0x0154(t2)             # 00000154
    bnel    t3, $zero, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    lh      t4, 0x022E(a3)             # 0000022E
    beql    v1, t4, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    lh      t5, 0x0230(a3)             # 00000230
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beql    v1, t5, lbl_80AADCB4
    lh      t7, 0x0234(a3)             # 00000234
    sh      t6, 0x0234(a3)             # 00000234
    lh      t7, 0x0234(a3)             # 00000234
lbl_80AADCB4:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t8, $zero, 0x001A          # t8 = 0000001A
    beq     t7, $zero, lbl_80AADD54
    lw      a1, 0x001C($sp)
    lw      v0, 0x0250(a3)             # 00000250
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sh      t8, 0x010E(a3)             # 0000010E
    sh      t0, 0x021E(a3)             # 0000021E
    beq     v0, $zero, lbl_80AADCF0
    sb      $zero, 0x0248(a3)          # 00000248
    lw      t9, 0x0130(v0)             # 00000130
    beql    t9, $zero, lbl_80AADCF4
    lw      t1, 0x001C($sp)
    sh      v1, 0x0150(v0)             # 00000150
    sw      $zero, 0x0250(a3)          # 00000250
lbl_80AADCF0:
    lw      t1, 0x001C($sp)
lbl_80AADCF4:
    lui     $at, 0x0001                # $at = 00010000
    or      a2, $zero, $zero           # a2 = 00000000
    addu    $at, $at, t1
    sb      $zero, 0x1E5D($at)         # 00011E5D
    sh      v1, 0x022C(a3)             # 0000022C
    lhu     a1, 0x010E(a3)             # 0000010E
    sw      a3, 0x0018($sp)
    jal     func_800DCE14
    lw      a0, 0x001C($sp)
    lw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x001C($sp)
    lh      t2, 0x0234(a3)             # 00000234
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    bne     t2, $at, lbl_80AADD44
    nop
    jal     func_800218EC
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80AADD44:
    lui     t3, %hi(func_80AADE00)     # t3 = 80AB0000
    addiu   t3, t3, %lo(func_80AADE00) # t3 = 80AADE00
    b       lbl_80AADDF0
    sw      t3, 0x0204(a3)             # 00000204
lbl_80AADD54:
    jal     func_80022930
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80AADD8C
    lw      a3, 0x0018($sp)
    lbu     t4, 0x0248(a3)             # 00000248
    lui     t6, %hi(func_80AADFBC)     # t6 = 80AB0000
    lui     t5, %hi(func_80AADE00)     # t5 = 80AB0000
    bne     t4, $zero, lbl_80AADD84
    addiu   t6, t6, %lo(func_80AADFBC) # t6 = 80AADFBC
    addiu   t5, t5, %lo(func_80AADE00) # t5 = 80AADE00
    b       lbl_80AADDF0
    sw      t5, 0x0204(a3)             # 00000204
lbl_80AADD84:
    b       lbl_80AADDF0
    sw      t6, 0x0204(a3)             # 00000204
lbl_80AADD8C:
    lh      t7, 0x008A(a3)             # 0000008A
    lh      t8, 0x00B6(a3)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f0                   # $f0 = 120.00
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AADDBC
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_80AADDC4
    sra     v1, v1, 16
lbl_80AADDBC:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80AADDC4:
    lwc1    $f4, 0x0090(a3)            # 00000090
    slti    $at, v1, 0x4300
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80AADDF4
    lw      $ra, 0x0014($sp)
    beq     $at, $zero, lbl_80AADDF0
    or      a0, a3, $zero              # a0 = 00000000
    mfc1    a2, $f0
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80AADDF0:
    lw      $ra, 0x0014($sp)
lbl_80AADDF4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AADE00:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t6, 0x021E(s0)             # 0000021E
    bnel    t6, v0, lbl_80AADFAC
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AADFAC
    lw      $ra, 0x0024($sp)
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, 0x8012                 # t7 = 80120000
    beq     v0, $zero, lbl_80AADE78
    nop
    beq     v0, $at, lbl_80AADF80
    addiu   t2, $zero, 0x002D          # t2 = 0000002D
    b       lbl_80AADFAC
    lw      $ra, 0x0024($sp)
lbl_80AADE78:
    lh      t7, -0x59FC(t7)            # 8011A604
    addiu   t9, $zero, 0x0085          # t9 = 00000085
    andi    a1, t9, 0xFFFF             # a1 = 00000085
    slti    $at, t7, 0x001E
    bne     $at, $zero, lbl_80AADF5C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800721CC
    addiu   a0, $zero, 0xFFE2          # a0 = FFFFFFE2
    sh      $zero, 0x0230(s0)          # 00000230
    lh      t9, 0x0230(s0)             # 00000230
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sb      t8, 0x0248(s0)             # 00000248
    addu    $at, $at, s1
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t9, 0x022E(s0)             # 0000022E
    sb      t0, 0x1E5D($at)            # 00011E5D
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    lh      t1, 0x0222(s0)             # 00000222
    addiu   t6, $zero, 0x001B          # t6 = 0000001B
    andi    a1, t6, 0xFFFF             # a1 = 0000001B
    bne     t1, $zero, lbl_80AADF14
    or      a0, s1, $zero              # a0 = 00000000
    lh      t2, 0x022C(s0)             # 0000022C
    addiu   t3, $zero, 0x0019          # t3 = 00000019
    bne     t2, $zero, lbl_80AADF14
    nop
    sh      t3, 0x010E(s0)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t3, 0xFFFF             # a1 = 00000019
    lui     t5, %hi(func_80AADFBC)     # t5 = 80AB0000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    addiu   t5, t5, %lo(func_80AADFBC) # t5 = 80AADFBC
    sh      t4, 0x021E(s0)             # 0000021E
    b       lbl_80AADFA8
    sw      t5, 0x0204(s0)             # 00000204
lbl_80AADF14:
    jal     func_800DCE80
    sh      t6, 0x010E(s0)             # 0000010E
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, 0x021E(s0)             # 0000021E
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1F4A          # a1 = 00001F4A
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t8, %hi(func_80AAE0D8)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AAE0D8) # t8 = 80AAE0D8
    b       lbl_80AADFA8
    sw      t8, 0x0204(s0)             # 00000204
lbl_80AADF5C:
    sh      $zero, 0x022C(s0)          # 0000022C
    jal     func_800DCE80
    sh      t9, 0x010E(s0)             # 0000010E
    lui     t1, %hi(func_80AADFBC)     # t1 = 80AB0000
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, t1, %lo(func_80AADFBC) # t1 = 80AADFBC
    sh      t0, 0x021E(s0)             # 0000021E
    b       lbl_80AADFA8
    sw      t1, 0x0204(s0)             # 00000204
lbl_80AADF80:
    sh      $zero, 0x022C(s0)          # 0000022C
    sh      t2, 0x010E(s0)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t2, 0xFFFF             # a1 = 00000000
    lui     t4, %hi(func_80AADFBC)     # t4 = 80AB0000
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   t4, t4, %lo(func_80AADFBC) # t4 = 80AADFBC
    sh      t3, 0x021E(s0)             # 0000021E
    sw      t4, 0x0204(s0)             # 00000204
lbl_80AADFA8:
    lw      $ra, 0x0024($sp)
lbl_80AADFAC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AADFBC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x021E(s1)             # 0000021E
    bnel    t6, v0, lbl_80AAE0C8
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AAE0C8
    lw      $ra, 0x0024($sp)
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x010E(s1)             # 0000010E
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80AAE024
    addiu   $at, $zero, 0x0085         # $at = 00000085
    bnel    v0, $at, lbl_80AAE040
    lbu     t7, 0x0248(s1)             # 00000248
lbl_80AAE024:
    jal     func_8002049C
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    beq     v0, $zero, lbl_80AAE03C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0038          # a1 = 00000038
lbl_80AAE03C:
    lbu     t7, 0x0248(s1)             # 00000248
lbl_80AAE040:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x001B          # t8 = 0000001B
    bne     t7, $at, lbl_80AAE09C
    or      a0, s0, $zero              # a0 = 00000000
    sh      t8, 0x010E(s1)             # 0000010E
    jal     func_800DCE80
    andi    a1, t8, 0xFFFF             # a1 = 0000001B
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x021E(s1)             # 0000021E
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1F4A          # a1 = 00001F4A
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t0, %hi(func_80AAE0D8)     # t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AAE0D8) # t0 = 80AAE0D8
    b       lbl_80AAE0C4
    sw      t0, 0x0204(s1)             # 00000204
lbl_80AAE09C:
    lh      t1, 0x0234(s1)             # 00000234
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t1, $at, lbl_80AAE0B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80AAE0B8:
    lui     t2, %hi(func_80AADB6C)     # t2 = 80AB0000
    addiu   t2, t2, %lo(func_80AADB6C) # t2 = 80AADB6C
    sw      t2, 0x0204(s1)             # 00000204
lbl_80AAE0C4:
    lw      $ra, 0x0024($sp)
lbl_80AAE0C8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AAE0D8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lui     t7, %hi(var_80AAE7C8)      # t7 = 80AB0000
    addiu   t7, t7, %lo(var_80AAE7C8)  # t7 = 80AAE7C8
    lw      t9, 0x0000(t7)             # 80AAE7C8
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AAE7CC
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AAE7D0
    lui     t1, %hi(var_80AAE7D4)      # t1 = 80AB0000
    addiu   t1, t1, %lo(var_80AAE7D4)  # t1 = 80AAE7D4
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80AAE7D4
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80AAE7D8
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80AAE7DC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      t2, 0x0004(t0)             # FFFFFFEC
    jal     func_8008C9C0
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lw      a0, 0x0054($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t4, 0x021E(s0)             # 0000021E
    bnel    t4, v0, lbl_80AAE1CC
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    lw      a0, 0x0054($sp)
    beq     v0, $zero, lbl_80AAE1C8
    lui     $at, 0x4314                # $at = 43140000
    mtc1    $at, $f4                   # $f4 = 148.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f8                   # $f8 = 300.00
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      a0, 0x0054($sp)
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFF4
    swc1    $f4, 0x002C($sp)
    swc1    $f6, 0x0030($sp)
    jal     func_8001C97C
    swc1    $f8, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x184B          # a1 = 0000184B
    lui     t8, %hi(func_80AAE1DC)     # t8 = 80AB0000
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, t8, %lo(func_80AAE1DC) # t8 = 80AAE1DC
    sh      t7, 0x021A(s0)             # 0000021A
    sw      t8, 0x0204(s0)             # 00000204
lbl_80AAE1C8:
    lw      $ra, 0x0024($sp)
lbl_80AAE1CC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80AAE1DC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x021A(s0)             # 0000021A
    bnel    t6, $zero, lbl_80AAE414
    lw      $ra, 0x003C($sp)
    lhu     t7, 0x0232(s0)             # 00000232
    sltiu   $at, t7, 0x0005
    beq     $at, $zero, lbl_80AAE290
    sll     t7, t7,  2
    lui     $at, %hi(var_80AAE844)     # $at = 80AB0000
    addu    $at, $at, t7
    lw      t7, %lo(var_80AAE844)($at)
    jr      t7
    nop
var_80AAE228:
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t8, -0x4B3E(t8)            # 8011B4C2
    or      v1, $zero, $zero           # v1 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80AAE244
    nop
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80AAE244:
    b       lbl_80AAE290
    sh      v1, 0x004E($sp)
var_80AAE24C:
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    b       lbl_80AAE290
    sh      v1, 0x004E($sp)
var_80AAE258:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    b       lbl_80AAE290
    sh      v1, 0x004E($sp)
var_80AAE264:
    lui     t0, 0x8012                 # t0 = 80120000
    lhu     t0, -0x4B3E(t0)            # 8011B4C2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t1, t0, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_80AAE280
    nop
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80AAE280:
    b       lbl_80AAE290
    sh      v1, 0x004E($sp)
var_80AAE288:
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    sh      v1, 0x004E($sp)
lbl_80AAE290:
    lh      v1, 0x004E($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x4314                # $at = 43140000
    sh      v1, 0x0220(s0)             # 00000220
    lw      t2, -0x4600(t2)            # 8011BA00
    mtc1    $at, $f6                   # $f6 = 148.00
    lui     t5, %hi(var_80AAE7E0)      # t5 = 80AB0000
    lh      v0, 0x12E2(t2)             # 801212E2
    addiu   t5, t5, %lo(var_80AAE7E0)  # t5 = 80AAE7E0
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80AAE2C8
    addiu   a3, $zero, 0x0168          # a3 = 00000168
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0220(s0)             # 00000220
lbl_80AAE2C8:
    lh      v0, 0x0220(s0)             # 00000220
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    sll     t4, v0,  2
    subu    t4, t4, v0
    sll     t4, t4,  2
    addu    v1, t4, t5
    lwc1    $f4, 0x0000(v1)            # 00000003
    lui     $at, 0x4396                # $at = 43960000
    lwc1    $f10, 0x0004(v1)           # 00000007
    add.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0008(v1)            # 0000000B
    lw      a2, 0x0054($sp)
    swc1    $f8, 0x0010($sp)
    lui     t7, %hi(var_80AAE81C)      # t7 = 80AB0000
    sll     t6, v0,  1
    add.s   $f18, $f10, $f16
    addu    t7, t7, t6
    lh      t7, %lo(var_80AAE81C)(t7)
    add.s   $f8, $f4, $f6
    addiu   t8, v0, 0x0005             # t8 = 00000005
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0044($sp)
    sw      t8, 0x0028($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f18, 0x0014($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    sw      t7, 0x0020($sp)
    lh      t9, 0x0222(s0)             # 00000222
    lw      a0, 0x0044($sp)
    sw      v0, 0x0250(s0)             # 00000250
    bne     t9, $zero, lbl_80AAE3A8
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    lui     $at, 0xC457                # $at = C4570000
    mtc1    $at, $f18                  # $f18 = -860.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      a2, 0x0054($sp)
    addiu   a3, $zero, 0x014C          # a3 = 0000014C
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0028($sp)
    swc1    $f16, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    jal     func_800253F0
    swc1    $f10, 0x0010($sp)
    beq     v0, $zero, lbl_80AAE3B4
    sw      v0, 0x024C(s0)             # 0000024C
    lh      t0, 0x0220(s0)             # 00000220
    b       lbl_80AAE3B4
    sh      t0, 0x014A(v0)             # 0000014A
lbl_80AAE3A8:
    lh      t2, 0x0220(s0)             # 00000220
    lw      t3, 0x024C(s0)             # 0000024C
    sh      t2, 0x014A(t3)             # 0000014A
lbl_80AAE3B4:
    lw      t5, 0x024C(s0)             # 0000024C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t4, 0x014C(t5)             # 0000014C
    addiu   t7, $zero, 0x405A          # t7 = 0000405A
    sb      t6, 0x0248(s0)             # 00000248
    sh      t7, 0x010E(s0)             # 0000010E
    lw      a0, 0x0054($sp)
    jal     func_800DCE80
    andi    a1, t7, 0xFFFF             # a1 = 0000405A
    lh      t9, 0x0232(s0)             # 00000232
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    lui     t2, %hi(func_80AAE424)     # t2 = 80AB0000
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0232(s0)             # 00000232
    lh      t1, 0x0232(s0)             # 00000232
    sh      t8, 0x021E(s0)             # 0000021E
    addiu   t2, t2, %lo(func_80AAE424) # t2 = 80AAE424
    slti    $at, t1, 0x0005
    bnel    $at, $zero, lbl_80AAE410
    sw      t2, 0x0204(s0)             # 00000204
    sh      $zero, 0x0232(s0)          # 00000232
    sw      t2, 0x0204(s0)             # 00000204
lbl_80AAE410:
    lw      $ra, 0x003C($sp)
lbl_80AAE414:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80AAE424:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0020($sp)
    lh      t7, 0x021E(t6)             # 0000021E
    bnel    t7, v0, lbl_80AAE4D0
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AAE4D0
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x07A0(s0)             # 000007A0
    sll     t9, t8,  2
    addu    t0, s0, t9
    jal     func_80049DB4
    lw      a0, 0x0790(t0)             # 00000790
    lw      t2, 0x0020($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     v1, 0x8012                 # v1 = 80120000
    sh      t1, 0x0222(t2)             # 00000222
    lw      v1, -0x4600(v1)            # 8011BA00
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t3, 0x12D8(v1)             # 801212D8
    beq     t3, $zero, lbl_80AAE4B4
    nop
    sh      $zero, 0x12D8(v1)          # 801212D8
lbl_80AAE4B4:
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t5, 0x0020($sp)
    lui     t4, %hi(func_80AADB6C)     # t4 = 80AB0000
    addiu   t4, t4, %lo(func_80AADB6C) # t4 = 80AADB6C
    sw      t4, 0x0204(t5)             # 00000204
    lw      $ra, 0x001C($sp)
lbl_80AAE4D0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AAE4E0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x4270                # $at = 42700000
    sw      s0, 0x0028($sp)
    mtc1    $at, $f0                   # $f0 = 60.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x021C(s0)             # 0000021C
    mfc1    a1, $f0
    swc1    $f0, 0x003C(s0)            # 0000003C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x021C(s0)             # 0000021C
    jal     func_80020F04
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x0228(s0)             # 00000228
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    beq     v0, $zero, lbl_80AAE544
    nop
    beq     v0, $at, lbl_80AAE54C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80AAE578
    lh      t2, 0x0226(s0)             # 00000226
    b       lbl_80AAE598
    lh      t4, 0x0226(s0)             # 00000226
lbl_80AAE544:
    b       lbl_80AAE608
    sh      t8, 0x0224(s0)             # 00000224
lbl_80AAE54C:
    lh      v0, 0x0224(s0)             # 00000224
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    blez    v0, lbl_80AAE568
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    b       lbl_80AAE608
    sh      t9, 0x0224(s0)             # 00000224
lbl_80AAE568:
    sh      t0, 0x0226(s0)             # 00000226
    b       lbl_80AAE608
    sh      t1, 0x0228(s0)             # 00000228
    lh      t2, 0x0226(s0)             # 00000226
lbl_80AAE578:
    bnel    t2, $zero, lbl_80AAE60C
    lh      v1, 0x021A(s0)             # 0000021A
    lh      v0, 0x0224(s0)             # 00000224
    blez    v0, lbl_80AAE608
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    b       lbl_80AAE608
    sh      t3, 0x0224(s0)             # 00000224
    lh      t4, 0x0226(s0)             # 00000226
lbl_80AAE598:
    bnel    t4, $zero, lbl_80AAE5E0
    lw      t4, 0x0038(s0)             # 00000038
    lh      t5, 0x0224(s0)             # 00000224
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0224(s0)             # 00000224
    lh      t7, 0x0224(s0)             # 00000224
    slti    $at, t7, 0x0003
    bne     $at, $zero, lbl_80AAE5DC
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sh      $zero, 0x0224(s0)          # 00000224
    trunc.w.s $f4, $f0
    mfc1    t1, $f4
    nop
    addiu   t2, t1, 0x0014             # t2 = 00000014
    sh      t2, 0x0226(s0)             # 00000226
lbl_80AAE5DC:
    lw      t4, 0x0038(s0)             # 00000038
lbl_80AAE5E0:
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t4, 0x0010($sp)
    lw      t3, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0208             # a2 = 00000208
    addiu   a3, s0, 0x0214             # a3 = 00000214
    sw      t3, 0x0014($sp)
    lw      t4, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t4, 0x0018($sp)
lbl_80AAE608:
    lh      v1, 0x021A(s0)             # 0000021A
lbl_80AAE60C:
    bne     v1, $zero, lbl_80AAE61C
    addiu   t5, v1, 0xFFFF             # t5 = FFFFFFFF
    b       lbl_80AAE624
    lh      v0, 0x0226(s0)             # 00000226
lbl_80AAE61C:
    sh      t5, 0x021A(s0)             # 0000021A
    lh      v0, 0x0226(s0)             # 00000226
lbl_80AAE624:
    beq     v0, $zero, lbl_80AAE630
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0226(s0)             # 00000226
lbl_80AAE630:
    lw      t9, 0x0204(s0)             # 00000204
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AAE658:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_80AAE694
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x020A(v0)             # 0000020A
    lh      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x0004(v1)             # 00000004
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
    lh      t0, 0x020C(v0)             # 0000020C
    addu    t1, t9, t0
    sh      t1, 0x0004(v1)             # 00000004
lbl_80AAE694:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80AAE6A0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0030($sp)
    lw      t1, 0x0030($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x0224(s0)             # 00000224
    lui     t0, %hi(var_80AAE828)      # t0 = 80AB0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_80AAE828)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t2, %hi(func_80AAE658)     # t2 = 80AB0000
    addiu   t2, t2, %lo(func_80AAE658) # t2 = 80AAE658
    sw      t2, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x003C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AAE770: .word 0x014B0400, 0x08000039, 0x01600000, 0x00000254
.word func_80AAD470
.word func_80AAD630
.word func_80AAE4E0
.word func_80AAE6A0
var_80AAE790: .word \
0x41800000, 0x42380000, 0x00000000, 0x42100000, \
0x42600000, 0x00000000
var_80AAE7A8: .word \
0x42700000, 0xC2700000, 0xC3D70000, 0x00000000, \
0xC2F00000, 0xC41B0000
var_80AAE7C0: .word 0x3C23D70A, 0x3CF5C28F
var_80AAE7C8: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80AAE7D4: .word 0x00000000, 0x00000000, 0x00000000
var_80AAE7E0: .word \
0x00000000, 0x41B00000, 0x00000000, 0x00000000, \
0x41B00000, 0x00000000, 0x00000000, 0x41000000, \
0x00000000, 0x00000000, 0x41100000, 0x00000000, \
0x00000000, 0xC0000000, 0x00000000
var_80AAE81C: .word 0x42684268, 0xFC180000, 0x42680000
var_80AAE828: .word \
0x06004110, 0x06004910, 0x06005110, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80AAE840: .word 0x409FAE14
var_80AAE844: .word var_80AAE228
.word var_80AAE24C
.word var_80AAE258
.word var_80AAE264
.word var_80AAE288
.word 0x00000000, 0x00000000

