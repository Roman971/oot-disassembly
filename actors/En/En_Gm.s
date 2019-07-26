.section .text
func_80A9F850:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80AA047C)      # a1 = 80AA0000
    addiu   a1, a1, %lo(var_80AA047C)  # a1 = 80AA047C
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80063F7C
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0126          # a1 = 00000126
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      a2, 0x0018($sp)
    lui     t6, %hi(func_80A9F94C)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9F94C) # t6 = 80A9F94C
    sb      v0, 0x02AC(a2)             # 000002AC
    sw      t6, 0x0258(a2)             # 00000258
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A9F8B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0260             # a1 = 00000260
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A9F8DC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_80A9F900
    lui     a0, 0x8010                 # a0 = 80100000
    b       lbl_80A9F900
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A9F900:
    bne     v0, $at, lbl_80A9F910
    addiu   a0, a0, 0x8BF0             # a0 = 800F8BF0
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A9F910:
    lhu     v0, 0x009C(v1)             # 8011A66C
    lw      t7, 0x0008(a0)             # 800F8BF8
    and     t8, t7, v0
    bnel    t8, $zero, lbl_80A9F930
    lw      t9, 0x000C(a0)             # 800F8BFC
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A9F92C:
    lw      t9, 0x000C(a0)             # 800F8BFC
lbl_80A9F930:
    and     t0, t9, v0
    beq     t0, $zero, lbl_80A9F944
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    jr      $ra
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80A9F944:
    jr      $ra
    nop


func_80A9F94C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    jal     func_80081688
    lb      a1, 0x02AC(s0)             # 000002AC
    beq     v0, $zero, lbl_80A9FAD8
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0004(s0)             # 00000004
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    addiu   t8, s0, 0x0180             # t8 = 00000180
    addiu   t9, s0, 0x01EC             # t9 = 000001EC
    addiu   t0, $zero, 0x0012          # t0 = 00000012
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      a1, 0x0030($sp)
    addiu   a2, a2, 0xFEF0             # a2 = 0600FEF0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lb      t1, 0x02AC(s0)             # 000002AC
    lui     t4, 0x0001                 # t4 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t2, t1,  4
    addu    t2, t2, t1
    sll     t2, t2,  2
    addu    t3, s1, t2
    addu    t4, t4, t3
    lw      t4, 0x17B4(t4)             # 000117B4
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x02B8             # a0 = 060002B8
    addu    t5, t4, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008A194
    sw      t5, 0x0C50($at)            # 80120C50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    addiu   a1, a1, 0x02B8             # a1 = 060002B8
    lw      a0, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lui     t6, %hi(func_80AA031C)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA031C) # t6 = 80AA031C
    sw      t6, 0x0134(s0)             # 00000134
    addiu   a1, s0, 0x0260             # a1 = 00000260
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80AA0450)      # a3 = 80AA0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80AA0450)  # a3 = 80AA0450
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x420C                 # a3 = 420C0000
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f10                  # $f10 = -1.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     t0, %hi(func_80AA00E4)     # t0 = 80AA0000
    lui     t1, %hi(func_80A9FC18)     # t1 = 80AA0000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x3049          # t9 = 00003049
    addiu   t0, t0, %lo(func_80AA00E4) # t0 = 80AA00E4
    addiu   t1, t1, %lo(func_80A9FC18) # t1 = 80A9FC18
    sb      t7, 0x00AE(s0)             # 000000AE
    sb      $zero, 0x02B2(s0)          # 000002B2
    sh      t8, 0x02B0(s0)             # 000002B0
    sh      t9, 0x010E(s0)             # 0000010E
    sw      t0, 0x0258(s0)             # 00000258
    sw      t1, 0x025C(s0)             # 0000025C
    swc1    $f8, 0x0068(s0)            # 00000068
    swc1    $f10, 0x006C(s0)           # 0000006C
    swc1    $f16, 0x0060(s0)           # 00000060
lbl_80A9FAD8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80A9FAEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x02B0(a0)             # 000002B0
    beq     v0, $zero, lbl_80A9FB08
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80A9FB54
    sh      t6, 0x02B0(a0)             # 000002B0
lbl_80A9FB08:
    lbu     t7, 0x02B2(a0)             # 000002B2
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    t9, t8, 0x00FF             # t9 = 00000001
    slti    $at, t9, 0x0003
    bne     $at, $zero, lbl_80A9FB54
    sb      t8, 0x02B2(a0)             # 000002B2
    lui     $at, 0x4270                # $at = 42700000
    sb      $zero, 0x02B2(a0)          # 000002B2
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sw      a0, 0x0018($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lw      a0, 0x0018($sp)
    add.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sh      t1, 0x02B0(a0)             # 000002B0
lbl_80A9FB54:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A9FB64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A9F8DC
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A9FBA8
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A9FBD4
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A9FBFC
    addiu   t4, $zero, 0x304E          # t4 = 0000304E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A9FC04
    addiu   t5, $zero, 0x304D          # t5 = 0000304D
    b       lbl_80A9FC0C
    lw      $ra, 0x0014($sp)
lbl_80A9FBA8:
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B22(t6)            # 8011B4DE
    addiu   t8, $zero, 0x304B          # t8 = 0000304B
    addiu   t9, $zero, 0x304A          # t9 = 0000304A
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A9FBCC
    nop
    b       lbl_80A9FC08
    sh      t8, 0x010E(a0)             # 0000010E
lbl_80A9FBCC:
    b       lbl_80A9FC08
    sh      t9, 0x010E(a0)             # 0000010E
lbl_80A9FBD4:
    lhu     t0, -0x4B22(t0)            # 8011B4DE
    addiu   t2, $zero, 0x304F          # t2 = 0000304F
    addiu   t3, $zero, 0x304C          # t3 = 0000304C
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80A9FBF4
    nop
    b       lbl_80A9FC08
    sh      t2, 0x010E(a0)             # 0000010E
lbl_80A9FBF4:
    b       lbl_80A9FC08
    sh      t3, 0x010E(a0)             # 0000010E
lbl_80A9FBFC:
    b       lbl_80A9FC08
    sh      t4, 0x010E(a0)             # 0000010E
lbl_80A9FC04:
    sh      t5, 0x010E(a0)             # 0000010E
lbl_80A9FC08:
    lw      $ra, 0x0014($sp)
lbl_80A9FC0C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A9FC18:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x1C44(a2)             # 00001C44
    lwc1    $f4, 0x02B4(s0)            # 000002B4
    or      a0, a2, $zero              # a0 = 00000000
    lwc1    $f6, 0x0024(v0)            # 00000024
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0024($sp)
    lwc1    $f10, 0x02BC(s0)           # 000002BC
    lwc1    $f16, 0x002C(v0)           # 0000002C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_8002049C
    sw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_80A9FC80
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A9FB64
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_80A9FD5C)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9FD5C) # t6 = 80A9FD5C
    b       lbl_80A9FCF4
    sw      t6, 0x025C(s0)             # 0000025C
lbl_80A9FC80:
    jal     func_80022930
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80A9FC9C
    lui     t7, %hi(func_80A9FD08)     # t7 = 80AA0000
    addiu   t7, t7, %lo(func_80A9FD08) # t7 = 80A9FD08
    b       lbl_80A9FCF4
    sw      t7, 0x025C(s0)             # 0000025C
lbl_80A9FC9C:
    lbu     t8, 0x0272(s0)             # 00000272
    lwc1    $f0, 0x0024($sp)
    lwc1    $f2, 0x0020($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    bne     t9, $zero, lbl_80A9FCD8
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f4, $f0, $f0
    lui     $at, %hi(var_80AA0490)     # $at = 80AA0000
    lwc1    $f10, %lo(var_80AA0490)($at)
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80A9FCF8
    lw      $ra, 0x001C($sp)
lbl_80A9FCD8:
    lbu     t0, 0x0271(s0)             # 00000271
    lui     a2, 0x43CF                 # a2 = 43CF0000
    ori     a2, a2, 0x8000             # a2 = 43CF8000
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    sb      t1, 0x0271(s0)             # 00000271
    jal     func_80022A68
    lw      a1, 0x002C($sp)
lbl_80A9FCF4:
    lw      $ra, 0x001C($sp)
lbl_80A9FCF8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A9FD08:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A9FD50
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A9FD4C
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80A9FC18)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9FC18) # t6 = 80A9FC18
    sw      t6, 0x025C(t7)             # 0000025C
lbl_80A9FD4C:
    lw      $ra, 0x0014($sp)
lbl_80A9FD50:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A9FD5C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0028($sp)
    jal     func_80A9FB64
    sw      v0, 0x0018($sp)
    lw      v0, 0x0018($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lwc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f10, 0x002C(v0)           # 0000002C
    lwc1    $f4, 0x02B4(a0)            # 000002B4
    lwc1    $f8, 0x02BC(a0)            # 000002BC
    sub.s   $f0, $f4, $f6
    sub.s   $f2, $f8, $f10
    swc1    $f0, 0x0024($sp)
    jal     func_80022930
    swc1    $f2, 0x0020($sp)
    lw      a0, 0x0028($sp)
    lwc1    $f0, 0x0024($sp)
    beq     v0, $zero, lbl_80A9FE38
    lwc1    $f2, 0x0020($sp)
    jal     func_80A9F8DC
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80A9FDF4
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A9FE18
    lui     t2, %hi(func_80A9FF30)     # t2 = 80AA0000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A9FE2C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A9FE08
    nop
    b       lbl_80A9FE8C
    lw      $ra, 0x0014($sp)
lbl_80A9FDF4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0F0E(v0)             # 8011B4DE
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0F0E(v0)             # 8011B4DE
lbl_80A9FE08:
    lui     t9, %hi(func_80A9FE98)     # t9 = 80AA0000
    addiu   t9, t9, %lo(func_80A9FE98) # t9 = 80A9FE98
    b       lbl_80A9FE88
    sw      t9, 0x025C(a0)             # 0000025C
lbl_80A9FE18:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0F0E(v0)             # 8011B4DE
    ori     t1, t0, 0x0002             # t1 = 00000002
    sh      t1, 0x0F0E(v0)             # 8011B4DE
lbl_80A9FE2C:
    addiu   t2, t2, %lo(func_80A9FF30) # t2 = 80A9FF30
    b       lbl_80A9FE88
    sw      t2, 0x025C(a0)             # 0000025C
lbl_80A9FE38:
    lbu     t3, 0x0272(a0)             # 00000272
    andi    t4, t3, 0x0002             # t4 = 00000000
    bnel    t4, $zero, lbl_80A9FE70
    lbu     t5, 0x0271(a0)             # 00000271
    mul.s   $f16, $f0, $f0
    lui     $at, %hi(var_80AA0494)     # $at = 80AA0000
    lwc1    $f6, %lo(var_80AA0494)($at)
    mul.s   $f18, $f2, $f2
    add.s   $f4, $f16, $f18
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A9FE8C
    lw      $ra, 0x0014($sp)
    lbu     t5, 0x0271(a0)             # 00000271
lbl_80A9FE70:
    lui     a2, 0x43CF                 # a2 = 43CF0000
    ori     a2, a2, 0x8000             # a2 = 43CF8000
    andi    t6, t5, 0xFFFD             # t6 = 00000000
    sb      t6, 0x0271(a0)             # 00000271
    jal     func_80022A68
    lw      a1, 0x002C($sp)
lbl_80A9FE88:
    lw      $ra, 0x0014($sp)
lbl_80A9FE8C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A9FE98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80A9FECC
    andi    a1, v0, 0x00FF             # a1 = 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A9FF24
    lw      $ra, 0x0014($sp)
lbl_80A9FECC:
    lw      a0, 0x0024($sp)
    jal     func_800D6110
    sb      a1, 0x001F($sp)
    beq     v0, $zero, lbl_80A9FF20
    lbu     a1, 0x001F($sp)
    lw      t7, 0x0020($sp)
    lui     t6, %hi(func_80A9FD5C)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9FD5C) # t6 = 80A9FD5C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80A9FF20
    sw      t6, 0x025C(t7)             # 0000025C
    lw      t9, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0036          # t8 = 00000036
    addu    $at, $at, t9
    sb      t8, 0x03DC($at)            # 000103DC
    lw      t1, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addu    $at, $at, t1
    sb      t0, 0x04BF($at)            # 000104BF
lbl_80A9FF20:
    lw      $ra, 0x0014($sp)
lbl_80A9FF24:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A9FF30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80AA0010
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AA000C
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t6, 0x8012                 # t6 = 80120000
    beq     v0, $zero, lbl_80A9FF90
    nop
    beq     v0, $at, lbl_80A9FFF4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AA0010
    lw      $ra, 0x0024($sp)
lbl_80A9FF90:
    lh      t6, -0x59FC(t6)            # 8011A604
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, t6, 0x00C8
    beq     $at, $zero, lbl_80A9FFC8
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_80A9FE98)     # t7 = 80AA0000
    addiu   t7, t7, %lo(func_80A9FE98) # t7 = 80A9FE98
    b       lbl_80AA000C
    sw      t7, 0x025C(t8)             # 0000025C
lbl_80A9FFC8:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     a3, 0x43CF                 # a3 = 43CF0000
    ori     a3, a3, 0x8000             # a3 = 43CF8000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      t0, 0x0028($sp)
    lui     t9, %hi(func_80AA0020)     # t9 = 80AA0000
    addiu   t9, t9, %lo(func_80AA0020) # t9 = 80AA0020
    b       lbl_80AA000C
    sw      t9, 0x025C(t0)             # 0000025C
lbl_80A9FFF4:
    jal     func_800DCE80
    addiu   a1, $zero, 0x3050          # a1 = 00003050
    lw      t2, 0x0028($sp)
    lui     t1, %hi(func_80A9FE98)     # t1 = 80AA0000
    addiu   t1, t1, %lo(func_80A9FE98) # t1 = 80A9FE98
    sw      t1, 0x025C(t2)             # 0000025C
lbl_80AA000C:
    lw      $ra, 0x0024($sp)
lbl_80AA0010:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AA0020:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AA0054
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AA0084)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA0084) # t6 = 80AA0084
    sw      $zero, 0x0118(a0)          # 00000118
    b       lbl_80AA0074
    sw      t6, 0x025C(a0)             # 0000025C
lbl_80AA0054:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     a3, 0x43CF                 # a3 = 43CF0000
    ori     a3, a3, 0x8000             # a3 = 43CF8000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AA0074:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AA0084:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80AA00D8
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80AA00D8
    lw      $ra, 0x0014($sp)
    jal     func_800721CC
    addiu   a0, $zero, 0xFF38          # a0 = FFFFFF38
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80A9FD5C)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80A9FD5C) # t6 = 80A9FD5C
    sw      t6, 0x025C(t7)             # 0000025C
    lw      $ra, 0x0014($sp)
lbl_80AA00D8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AA00E4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lb      t6, 0x02AC(s0)             # 000002AC
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, a1, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    or      a0, s0, $zero              # a0 = 00000000
    addu    t0, t9, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    lh      t1, 0x02AE(s0)             # 000002AE
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x02AE(s0)             # 000002AE
    sw      a1, 0x0024($sp)
    lw      t9, 0x025C(s0)             # 0000025C
    jalr    $ra, t9
    nop
    lh      t3, 0x0030(s0)             # 00000030
    lh      t4, 0x0032(s0)             # 00000032
    lh      t5, 0x0034(s0)             # 00000034
    or      a0, s0, $zero              # a0 = 00000000
    sh      t3, 0x0044(s0)             # 00000044
    sh      t4, 0x0046(s0)             # 00000046
    jal     func_80A9FAEC
    sh      t5, 0x0048(s0)             # 00000048
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0260             # a2 = 00000260
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AA0198:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0258(a0)             # 00000258
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AA01BC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    jal     func_800AA6EC
    nop
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     a2, 0x4522                 # a2 = 45220000
    ori     a2, a2, 0x8000             # a2 = 45228000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f12, $f20
    jal     func_800AA7F4
    mov.s   $f14, $f20
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    swc1    $f20, 0x003C($sp)
    swc1    $f20, 0x0038($sp)
    swc1    $f20, 0x0034($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    lwc1    $f4, 0x0028($sp)
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x02A6(s0)             # 000002A6
    lwc1    $f8, 0x002C($sp)
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x02A8(s0)             # 000002A8
    lwc1    $f16, 0x0030($sp)
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    jal     func_800AA724
    sh      t1, 0x02AA(s0)             # 000002AA
    jal     func_800AA6EC
    nop
    lui     a2, 0x4586                 # a2 = 45860000
    ori     a2, a2, 0x6000             # a2 = 45866000
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    swc1    $f20, 0x003C($sp)
    swc1    $f20, 0x0038($sp)
    swc1    $f20, 0x0034($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, s0, 0x02B4             # a1 = 000002B4
    jal     func_800AA724
    nop
    lui     a2, 0x456D                 # a2 = 456D0000
    ori     a2, a2, 0x8000             # a2 = 456D8000
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    swc1    $f20, 0x003C($sp)
    swc1    $f20, 0x0038($sp)
    swc1    $f20, 0x0034($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, s0, 0x0038             # a1 = 00000038
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x003C(s0)            # 0000003C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x003C(s0)            # 0000003C
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80AA031C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0034($sp)
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t9, 0x02B2(s0)             # 000002B2
    lui     t2, %hi(var_80AA0484)      # t2 = 80AA0000
    lui     t1, 0x0601                 # t1 = 06010000
    sll     t6, t9,  2
    addu    t2, t2, t6
    lw      t2, %lo(var_80AA0484)(t2)
    addiu   t1, t1, 0xDE80             # t1 = 0600DE80
    sll     t8, t2,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    addu    t8, t5, t6
    lw      t9, 0x0000(t8)             # DB060020
    and     t7, t2, t4
    addu    t6, t7, t9
    addu    t8, t6, $ra
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    sll     t6, t1,  4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    srl     t8, t6, 28
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t7, t8,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t5, t7
    lw      t6, 0x0000(t9)             # DB060024
    and     t8, t1, t4
    addu    t7, t6, t8
    addu    t9, t7, $ra
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    jal     func_80AA01BC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop
    nop
    nop

.section .data

var_80AA0430: .word 0x013D0400, 0x00000019, 0x00C90000, 0x000002C0
.word func_80A9F850
.word func_80A9F8B0
.word func_80AA0198
.word 0x00000000
var_80AA0450: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00640078, 0x00000000, 0x00000000
var_80AA047C: .word 0x801F0005, 0x304C001E
var_80AA0484: .word 0x0600CE80, 0x0600D280, 0x0600D680

.section .rodata

var_80AA0490: .word 0x461C4000
var_80AA0494: .word 0x461C4000, 0x00000000, 0x00000000

