.section .text
func_80AAC5E0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4210                 # a3 = 42100000
    swc1    $f4, 0x0070(s0)            # 00000070
    jal     func_8001EC20
    swc1    $f6, 0x006C(s0)            # 0000006C
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x021A             # t7 = 0000021A
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0D88             # a3 = 06000D88
    addiu   a2, a2, 0x5DF0             # a2 = 06005DF0
    sw      a1, 0x0034($sp)
    jal     func_8008C788
    lw      a0, 0x0044($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0D88             # a1 = 06000D88
    jal     func_8008D2D4
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80AAD320)      # a3 = 80AB0000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80AAD320)  # a3 = 80AAD320
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, %hi(func_80AACD6C)     # t0 = 80AB0000
    addiu   t0, t0, %lo(func_80AACD6C) # t0 = 80AACD6C
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sw      t0, 0x0274(s0)             # 00000274
    sh      $zero, 0x026E(s0)          # 0000026E
    sh      $zero, 0x0270(s0)          # 00000270
    sb      t1, 0x001F(s0)             # 0000001F
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B3E(t2)            # 8011B4C2
    ori     t5, $zero, 0x0004          # t5 = 00000004
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80AAC6E8
    lw      $ra, 0x002C($sp)
    sh      t5, 0x026E(s0)             # 0000026E
    lw      $ra, 0x002C($sp)
lbl_80AAC6E8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80AAC6F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAC724:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AAC75C
    lw      a0, 0x0018($sp)
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lui     t8, %hi(func_80AACD6C)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AACD6C) # t8 = 80AACD6C
    and     t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x0274(a0)             # 00000274
lbl_80AAC75C:
    lhu     t9, 0x026E(a0)             # 0000026E
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x026E(a0)             # 0000026E
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AAC774:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    jal     func_80022BB0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80AAC7C8
    lui     t6, %hi(func_80AAC724)     # t6 = 80AB0000
    lw      v0, 0x0020($sp)
    addiu   t6, t6, %lo(func_80AAC724) # t6 = 80AAC724
    addiu   a0, $zero, 0x00F0          # a0 = 000000F0
    sw      $zero, 0x0118(v0)          # 00000118
    jal     func_800738E8
    sw      t6, 0x0274(v0)             # 00000274
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x13FC(v0)             # 8011B9CC
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    beq     $zero, $zero, lbl_80AAC7EC
    sh      t8, 0x13FC(v0)             # 8011B9CC
lbl_80AAC7C8:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0025          # a2 = 00000025
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AAC7EC:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AAC7FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022AD0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AAC848
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AAC774)     # t6 = 80AB0000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    addiu   t6, t6, %lo(func_80AAC774) # t6 = 80AAC774
    sw      t6, 0x0274(a0)             # 00000274
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0025          # a2 = 00000025
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AAC848:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AAC858:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AAC87C
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80AAC7FC)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAC7FC) # t6 = 80AAC7FC
    sw      t6, 0x0274(a0)             # 00000274
lbl_80AAC87C:
    lhu     t7, 0x026E(a0)             # 0000026E
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x026E(a0)             # 0000026E
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AAC894:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x0272(a2)             # 00000272
    lui     t9, %hi(func_80AAC858)     # t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AAC858) # t9 = 80AAC858
    blez    v0, lbl_80AAC8D0
    or      a0, a3, $zero              # a0 = 00000000
    lh      t7, 0x00B6(a2)             # 000000B6
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0272(a2)             # 00000272
    addiu   t8, t7, 0xF800             # t8 = FFFFF800
    beq     $zero, $zero, lbl_80AAC8DC
    sh      t8, 0x00B6(a2)             # 000000B6
lbl_80AAC8D0:
    sw      t9, 0x0274(a2)             # 00000274
    jal     func_800DCE80
    addiu   a1, $zero, 0x4030          # a1 = 00004030
lbl_80AAC8DC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAC8EC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     v0, 0x0272(s0)             # 00000272
    lui     t8, %hi(func_80AAC894)     # t8 = 80AB0000
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    blez    v0, lbl_80AAC920
    addiu   t8, t8, %lo(func_80AAC894) # t8 = 80AAC894
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AAC974
    sh      t6, 0x0272(s0)             # 00000272
lbl_80AAC920:
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t7, 0x0272(s0)             # 00000272
    sw      t8, 0x0274(s0)             # 00000274
    jal     func_8008A194
    addiu   a0, a0, 0x0D88             # a0 = 06000D88
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0D88             # a1 = 06000D88
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t9, 0x026E(s0)             # 0000026E
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    sh      t0, 0x026E(s0)             # 0000026E
lbl_80AAC974:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AAC988:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     v0, 0x0272(s0)             # 00000272
    lui     t0, %hi(func_80AAC8EC)     # t0 = 80AB0000
    addiu   t9, $zero, 0x0078          # t9 = 00000078
    blez    v0, lbl_80AAC9C8
    addiu   t0, t0, %lo(func_80AAC8EC) # t0 = 80AAC8EC
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0272(s0)             # 00000272
    addiu   t8, t7, 0x0800             # t8 = 00000800
    beq     $zero, $zero, lbl_80AACA1C
    sh      t8, 0x00B6(s0)             # 000000B6
lbl_80AAC9C8:
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t9, 0x0272(s0)             # 00000272
    sw      t0, 0x0274(s0)             # 00000274
    jal     func_8008A194
    addiu   a0, a0, 0x0724             # a0 = 06000724
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0724             # a1 = 06000724
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t1, 0x026E(s0)             # 0000026E
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    sh      t2, 0x026E(s0)             # 0000026E
lbl_80AACA1C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AACA30:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t6, 0x0034($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AACAF8
    lhu     t3, 0x026E(s0)             # 0000026E
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AACAF8
    lhu     t3, 0x026E(s0)             # 0000026E
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(func_80AAC988)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AAC988) # t7 = 80AAC988
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0274(s0)             # 00000274
    addu    $at, $at, s1
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    sb      t8, 0x03DC($at)            # 000103DC
    lw      t9, 0x0034($sp)
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    lui     a0, 0x0600                 # a0 = 06000000
    sb      $zero, 0x0683(t9)          # 00000683
    sh      t0, 0x0272(s0)             # 00000272
    jal     func_8008A194
    addiu   a0, a0, 0x0D88             # a0 = 06000D88
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0D88             # a1 = 06000D88
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t1, 0x026E(s0)             # 0000026E
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    sh      t2, 0x026E(s0)             # 0000026E
    lhu     t3, 0x026E(s0)             # 0000026E
lbl_80AACAF8:
    ori     t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x026E(s0)             # 0000026E
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AACB14:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AACBB8
    lhu     t0, 0x026E(s0)             # 0000026E
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80AACBB4
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x4001          # a1 = 00004001
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0AC0             # a0 = 06000AC0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0AC0             # a1 = 06000AC0
    addiu   a0, s0, 0x0188             # a0 = 00000188
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t7, 0x026E(s0)             # 0000026E
    lui     t9, %hi(func_80AACA30)     # t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AACA30) # t9 = 80AACA30
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sh      t8, 0x026E(s0)             # 0000026E
    sw      t9, 0x0274(s0)             # 00000274
lbl_80AACBB4:
    lhu     t0, 0x026E(s0)             # 0000026E
lbl_80AACBB8:
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x026E(s0)             # 0000026E
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AACBD0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AACC70
    lhu     t9, 0x026E(s0)             # 0000026E
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80AACC6C
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0AC0             # a0 = 06000AC0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0AC0             # a1 = 06000AC0
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t6, 0x026E(s0)             # 0000026E
    lui     t8, %hi(func_80AACB14)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AACB14) # t8 = 80AACB14
    andi    t7, t6, 0xFFFD             # t7 = 00000000
    sh      t7, 0x026E(s0)             # 0000026E
    sw      t8, 0x0274(s0)             # 00000274
lbl_80AACC6C:
    lhu     t9, 0x026E(s0)             # 0000026E
lbl_80AACC70:
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x026E(s0)             # 0000026E
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AACC88:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AACCD0
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AAC724)     # t6 = 80AB0000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t6, t6, %lo(func_80AAC724) # t6 = 80AAC724
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $zero, 0x0118(a0)          # 00000118
    sw      t6, 0x0274(a0)             # 00000274
    lhu     t7, 0x0EF2(v0)             # 8011B4C2
    ori     t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80AACCF0
    sh      t8, 0x0EF2(v0)             # 8011B4C2
lbl_80AACCD0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AACCF0:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AACD00:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022AD0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AACD54
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AACC88)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AACC88) # t6 = 80AACC88
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    sw      t6, 0x0274(a0)             # 00000274
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    sw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      a0, 0x0020($sp)
lbl_80AACD54:
    lhu     t7, 0x026E(a0)             # 0000026E
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x026E(a0)             # 0000026E
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80AACD6C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    sw      v1, 0x0034($sp)
    beq     v0, $zero, lbl_80AACF24
    lw      v1, 0x0034($sp)
    lw      a0, 0x0044($sp)
    jal     func_80022B04
    sw      v1, 0x0034($sp)
    lhu     a0, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x4018         # $at = 00004018
    lw      v1, 0x0034($sp)
    beq     a0, $at, lbl_80AACDCC
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t6, %hi(func_80AAC724)     # t6 = 80AB0000
    sh      a0, 0x010E(v1)             # 0000010E
    addiu   t6, t6, %lo(func_80AAC724) # t6 = 80AAC724
    beq     $zero, $zero, lbl_80AACFAC
    sw      t6, 0x0274(s0)             # 00000274
lbl_80AACDCC:
    lbu     t7, -0x709C(t7)            # 800F8F64
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addu    t8, a1, t7
    lbu     t9, 0x0074(t8)             # 00000074
    addiu   $at, $zero, 0x0036         # $at = 00000036
    addiu   t0, $zero, 0x4032          # t0 = 00004032
    bne     t9, $at, lbl_80AACE00
    lui     t1, %hi(func_80AAC724)     # t1 = 80AB0000
    sh      t0, 0x010E(v1)             # 0000010E
    addiu   t1, t1, %lo(func_80AAC724) # t1 = 80AAC724
    beq     $zero, $zero, lbl_80AACFAC
    sw      t1, 0x0274(s0)             # 00000274
lbl_80AACE00:
    beq     v0, $zero, lbl_80AACE28
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_80AACEAC
    addiu   t4, $zero, 0x4019          # t4 = 00004019
    addiu   t2, $zero, 0x4018          # t2 = 00004018
    lui     t3, %hi(func_80AAC724)     # t3 = 80AB0000
    addiu   t3, t3, %lo(func_80AAC724) # t3 = 80AAC724
    sh      t2, 0x010E(v1)             # 0000010E
    beq     $zero, $zero, lbl_80AACFAC
    sw      t3, 0x0274(s0)             # 00000274
lbl_80AACE28:
    lh      v0, 0x0270(s0)             # 00000270
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_80AACE78
    nop
    lhu     t4, 0x0EF2(a1)             # 8011B4C2
    lui     t9, %hi(func_80AACD00)     # t9 = 80AB0000
    addiu   t8, $zero, 0x4074          # t8 = 00004074
    andi    t5, t4, 0x0001             # t5 = 00000001
    beq     t5, $zero, lbl_80AACE68
    addiu   t9, t9, %lo(func_80AACD00) # t9 = 80AACD00
    addiu   t6, $zero, 0x4075          # t6 = 00004075
    lui     t7, %hi(func_80AAC724)     # t7 = 80AB0000
    sh      t6, 0x010E(v1)             # 0000010E
    addiu   t7, t7, %lo(func_80AAC724) # t7 = 80AAC724
    beq     $zero, $zero, lbl_80AACFAC
    sw      t7, 0x0274(s0)             # 00000274
lbl_80AACE68:
    sh      t8, 0x010E(v1)             # 0000010E
    sw      t9, 0x0274(s0)             # 00000274
    beq     $zero, $zero, lbl_80AACFAC
    sh      $zero, 0x0270(s0)          # 00000270
lbl_80AACE78:
    bne     v0, $zero, lbl_80AACE98
    addiu   t2, v0, 0x406C             # t2 = 0000406C
    addiu   t0, $zero, 0x4018          # t0 = 00004018
    lui     t1, %hi(func_80AAC724)     # t1 = 80AB0000
    sh      t0, 0x010E(v1)             # 0000010E
    addiu   t1, t1, %lo(func_80AAC724) # t1 = 80AAC724
    beq     $zero, $zero, lbl_80AACFAC
    sw      t1, 0x0274(s0)             # 00000274
lbl_80AACE98:
    lui     t3, %hi(func_80AAC724)     # t3 = 80AB0000
    sh      t2, 0x010E(v1)             # 0000010E
    addiu   t3, t3, %lo(func_80AAC724) # t3 = 80AAC724
    beq     $zero, $zero, lbl_80AACFAC
    sw      t3, 0x0274(s0)             # 00000274
lbl_80AACEAC:
    lui     t5, %hi(func_80AACBD0)     # t5 = 80AB0000
    sh      t4, 0x010E(v1)             # 0000010E
    addiu   t5, t5, %lo(func_80AACBD0) # t5 = 80AACBD0
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t5, 0x0274(s0)             # 00000274
    jal     func_8008A194
    addiu   a0, a0, 0x0368             # a0 = 06000368
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0368             # a1 = 06000368
    addiu   a0, s0, 0x0188             # a0 = 00000188
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t7, 0x026E(s0)             # 0000026E
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sh      t8, 0x026E(s0)             # 0000026E
    jal     func_800646F0
    sh      $zero, -0x465E($at)        # 8011B9A2
    beq     $zero, $zero, lbl_80AACFB0
    lw      $ra, 0x002C($sp)
lbl_80AACF24:
    lw      a0, 0x0044($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    andi    t9, v0, 0xFFFF             # t9 = 00000000
    bne     t9, $zero, lbl_80AACF44
    sh      v0, 0x010E(s0)             # 0000010E
    addiu   t0, $zero, 0x4018          # t0 = 00004018
    sh      t0, 0x010E(s0)             # 0000010E
lbl_80AACF44:
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t2, 0x00B6(s0)             # 000000B6
    subu    v0, t1, t2
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AACF68
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80AACF68
    or      v1, v0, $zero              # v1 = 00000000
lbl_80AACF68:
    slti    $at, v1, 0x2151
    beq     $at, $zero, lbl_80AACFAC
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80AACFB0
    lw      $ra, 0x002C($sp)
    mfc1    a2, $f0
    jal     func_80022A34
    addiu   a3, $zero, 0x000D          # a3 = 0000000D
    lhu     t3, 0x026E(s0)             # 0000026E
    ori     t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x026E(s0)             # 0000026E
lbl_80AACFAC:
    lw      $ra, 0x002C($sp)
lbl_80AACFB0:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80AACFC0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0054($sp)
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x0034($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lhu     t7, 0x026E(s0)             # 0000026E
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_80AAD05C
    lw      t9, 0x0274(s0)             # 00000274
    jal     func_8008C9C0
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80AAD05C
    lw      t9, 0x0274(s0)             # 00000274
    lhu     t9, 0x026E(s0)             # 0000026E
    ori     t0, t9, 0x0002             # t0 = 00000002
    sh      t0, 0x026E(s0)             # 0000026E
    lw      t9, 0x0274(s0)             # 00000274
lbl_80AAD05C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0054($sp)
    jalr    $ra, t9
    nop
    lhu     t1, 0x026E(s0)             # 0000026E
    addiu   a0, s0, 0x0268             # a0 = 00000268
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80AAD0B8
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t4, 0x0038(s0)             # 00000038
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t4, 0x0010($sp)
    lw      t3, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0268             # a2 = 00000268
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFF0
    sw      t3, 0x0014($sp)
    lw      t4, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t4, 0x0018($sp)
    beq     $zero, $zero, lbl_80AAD0E8
    lhu     a1, 0x026E(s0)             # 0000026E
lbl_80AAD0B8:
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x026A             # a0 = 0000026A
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lhu     a1, 0x026E(s0)             # 0000026E
lbl_80AAD0E8:
    lw      t7, 0x0054($sp)
    andi    t8, a1, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_80AAD114
    lw      v1, 0x1C44(t7)             # 00001C44
    lw      t0, 0x0670(v1)             # 00000670
    andi    t1, a1, 0xFFF7             # t1 = 00000000
    andi    t9, t0, 0x0400             # t9 = 00000000
    bnel    t9, $zero, lbl_80AAD1FC
    lw      $ra, 0x002C($sp)
    beq     $zero, $zero, lbl_80AAD1F8
    sh      t1, 0x026E(s0)             # 0000026E
lbl_80AAD114:
    lb      t2, 0x013F(v1)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    ori     t3, a1, 0x0008             # t3 = 00000008
    bnel    t2, $at, lbl_80AAD134
    lw      t4, 0x0670(v1)             # 00000670
    beq     $zero, $zero, lbl_80AAD1F8
    sh      t3, 0x026E(s0)             # 0000026E
    lw      t4, 0x0670(v1)             # 00000670
lbl_80AAD134:
    andi    t5, t4, 0x0400             # t5 = 00000000
    beql    t5, $zero, lbl_80AAD1FC
    lw      $ra, 0x002C($sp)
    lwc1    $f4, 0x0084(v1)            # 00000084
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    blez    v0, lbl_80AAD1F8
    slti    $at, v0, 0x0140
    bne     $at, $zero, lbl_80AAD184
    andi    t0, a1, 0x0004             # t0 = 00000000
    slti    $at, v0, 0x0163
    bne     $at, $zero, lbl_80AAD17C
    nop
    beq     $zero, $zero, lbl_80AAD1C0
    addiu   v0, $zero, 0x0008          # v0 = 00000008
lbl_80AAD17C:
    beq     $zero, $zero, lbl_80AAD1C0
    addiu   v0, $zero, 0x0007          # v0 = 00000007
lbl_80AAD184:
    slti    $at, v0, 0x0050
    beql    $at, $zero, lbl_80AAD19C
    mtc1    v0, $f8                    # $f8 = 0.00
    beq     $zero, $zero, lbl_80AAD1C0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    v0, $f8                    # $f8 = 0.00
lbl_80AAD19C:
    lui     $at, %hi(var_80AAD360)     # $at = 80AB0000
    lwc1    $f16, %lo(var_80AAD360)($at)
    cvt.s.w $f10, $f8
    mul.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80AAD1C0:
    lh      t8, 0x0270(s0)             # 00000270
    slt     $at, t8, v0
    beql    $at, $zero, lbl_80AAD1FC
    lw      $ra, 0x002C($sp)
    bne     t0, $zero, lbl_80AAD1F8
    sh      v0, 0x0270(s0)             # 00000270
    lh      t9, 0x0270(s0)             # 00000270
    ori     t1, a1, 0x0004             # t1 = 00000004
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    slti    $at, t9, 0x0008
    bnel    $at, $zero, lbl_80AAD1FC
    lw      $ra, 0x002C($sp)
    jal     func_800646F0
    sh      t1, 0x026E(s0)             # 0000026E
lbl_80AAD1F8:
    lw      $ra, 0x002C($sp)
lbl_80AAD1FC:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80AAD20C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a1, $at, lbl_80AAD248
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x026A(v0)             # 0000026A
    lh      t6, 0x0002(v1)             # 00000002
    lh      t9, 0x0004(v1)             # 00000004
    subu    t8, t6, t7
    sh      t8, 0x0002(v1)             # 00000002
    lh      t0, 0x0268(v0)             # 00000268
    addu    t1, t9, t0
    sh      t1, 0x0004(v1)             # 00000004
lbl_80AAD248:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80AAD254:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a1, $at, lbl_80AAD284
    lui     a0, %hi(var_80AAD34C)      # a0 = 80AB0000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80AAD34C)  # a0 = 80AAD34C
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AAD284:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AAD294:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E56C
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80AAD20C)     # t7 = 80AB0000
    lui     t8, %hi(func_80AAD254)     # t8 = 80AB0000
    lw      a1, 0x018C(v0)             # 0000018C
    lw      a2, 0x01A8(v0)             # 000001A8
    lbu     a3, 0x018A(v0)             # 0000018A
    addiu   t8, t8, %lo(func_80AAD254) # t8 = 80AAD254
    addiu   t7, t7, %lo(func_80AAD20C) # t7 = 80AAD20C
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AAD300: .word 0x014A0400, 0x00000019, 0x01320000, 0x00000278
.word func_80AAC5E0
.word func_80AAC6F8
.word func_80AACFC0
.word func_80AAD294
var_80AAD320: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80AAD34C: .word \
0x447A0000, 0xC2C80000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80AAD360: .word 0x3CCCCCCD, 0x00000000, 0x00000000, 0x00000000

