.section .text
func_8088A4C0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    or      a0, s0, $zero              # a0 = 00000000
    bgez    v0, lbl_8088A4F0
    lui     a1, %hi(var_8088D31C)      # a1 = 80890000
    sh      $zero, 0x001C(s0)          # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_8088A4F0:
    bne     v0, $at, lbl_8088A52C
    lui     v1, %hi(var_8088D2BC)      # v1 = 80890000
    addiu   v1, v1, %lo(var_8088D2BC)  # v1 = 8088D2BC
    lbu     t6, 0x0000(v1)             # 8088D2BC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    beql    t6, $zero, lbl_8088A524
    sb      t7, 0x0000(v1)             # 8088D2BC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A9B4
    lw      $ra, 0x002C($sp)
    sb      t7, 0x0000(v1)             # 00000000
lbl_8088A524:
    lh      v0, 0x001C(s0)             # 0000001C
    sb      t8, 0x0003(s0)             # 00000003
lbl_8088A52C:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v0, $at, lbl_8088A568
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     v0, %hi(var_8088D2C0)      # v0 = 80890000
    addiu   v0, v0, %lo(var_8088D2C0)  # v0 = 8088D2C0
    lbu     t9, 0x0000(v0)             # 8088D2C0
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    beql    t9, $zero, lbl_8088A564
    sb      t1, 0x0000(v0)             # 8088D2C0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A9B4
    lw      $ra, 0x002C($sp)
    sb      t1, 0x0000(v0)             # 00000000
lbl_8088A564:
    sb      t2, 0x0003(s0)             # 00000003
lbl_8088A568:
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_8088D31C)  # a1 = FFFFD31C
    lw      t3, 0x0004(s0)             # 00000004
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    ori     t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x0004(s0)             # 00000004
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41C8                 # a3 = 41C80000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t5, s0, 0x0180             # t5 = 00000180
    addiu   t6, s0, 0x01E0             # t6 = 000001E0
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, 0x00E8             # a3 = 060000E8
    addiu   a2, a2, 0x2530             # a2 = 06002530
    lw      a0, 0x004C($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lw      t8, 0x004C($sp)
    addiu   $at, $zero, 0x0052         # $at = 00000052
    lui     v1, %hi(var_8088D264)      # v1 = 80890000
    lh      t9, 0x00A4(t8)             # 000000A4
    addiu   v1, v1, %lo(var_8088D264)  # v1 = 8088D264
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t9, $at, lbl_8088A79C
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, %hi(var_8088D258)     # $at = 80890000
    lwc1    $f6, %lo(var_8088D258)($at)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     a0, %hi(var_8088D2AC)      # a0 = 80890000
    addiu   a0, a0, %lo(var_8088D2AC)  # a0 = 8088D2AC
    sub.s   $f0, $f4, $f6
    lui     $at, %hi(var_8088D260)     # $at = 80890000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A690
    lui     $at, 0x4396                # $at = 43960000
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f10, %lo(var_8088D260)($at)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sub.s   $f0, $f8, $f10
    lui     t1, %hi(var_8088D2AC)      # t1 = 80890000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A690
    lui     $at, 0x4396                # $at = 43960000
    sh      $zero, 0x029A(s0)          # 0000029A
    lhu     t2, 0x0F2A(t0)             # 8011B4FA
    lh      t1, %lo(var_8088D2AC)(t1)
    lui     $at, 0x4396                # $at = 43960000
    and     t3, t1, t2
    beql    t3, $zero, lbl_8088A690
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    lui     $at, %hi(var_8088D360)     # $at = 80890000
    lwc1    $f16, %lo(var_8088D360)($at)
    sh      $zero, 0x001C(s0)          # 0000001C
    swc1    $f12, 0x0024(s0)           # 00000024
    swc1    $f14, 0x0028(s0)           # 00000028
    swc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x4396                # $at = 43960000
lbl_8088A690:
    mtc1    $at, $f12                  # $f12 = 300.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    lui     $at, %hi(var_8088D364)     # $at = 80890000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lwc1    $f16, %lo(var_8088D364)($at)
lbl_8088A6AC:
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0000(v1)            # 8088D264
    sub.s   $f0, $f18, $f4
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A720
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0008(v1)            # 8088D26C
    sll     t4, v0,  1
    addu    t5, a0, t4
    sub.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A720
    lwc1    $f10, 0x0024(s0)           # 00000024
    sh      v0, 0x029A(s0)             # 0000029A
    lhu     t7, 0x0F2A(t0)             # 8011B4FA
    lh      t6, 0x0000(t5)             # 00000000
    and     t8, t6, t7
    beql    t8, $zero, lbl_8088A720
    lwc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f12, 0x0024(s0)           # 00000024
    swc1    $f14, 0x0028(s0)           # 00000028
    swc1    $f16, 0x002C(s0)           # 0000002C
    sh      $zero, 0x001C(s0)          # 0000001C
    lwc1    $f10, 0x0024(s0)           # 00000024
lbl_8088A720:
    lwc1    $f18, 0x000C(v1)           # 8088D270
    sub.s   $f0, $f10, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A794
    addiu   v0, v0, 0x0002             # v0 = 00000003
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f6, 0x0014(v1)            # 8088D278
    sll     t1, v0,  1
    addu    t2, a0, t1
    sub.s   $f0, $f4, $f6
    addiu   t9, v0, 0x0001             # t9 = 00000004
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8088A794
    addiu   v0, v0, 0x0002             # v0 = 00000005
    sh      t9, 0x029A(s0)             # 0000029A
    lhu     t4, 0x0F2A(t0)             # 8011B4FA
    lh      t3, 0x0002(t2)             # 00000002
    and     t5, t3, t4
    beql    t5, $zero, lbl_8088A794
    addiu   v0, v0, 0x0002             # v0 = 00000007
    swc1    $f12, 0x0024(s0)           # 00000024
    swc1    $f14, 0x0028(s0)           # 00000028
    swc1    $f16, 0x002C(s0)           # 0000002C
    sh      $zero, 0x001C(s0)          # 0000001C
    addiu   v0, v0, 0x0002             # v0 = 00000009
lbl_8088A794:
    bne     v0, a1, lbl_8088A6AC
    addiu   v1, v1, 0x0018             # v1 = 8088D27C
lbl_8088A79C:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0034($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x029C             # a0 = 0000029C
    lw      a1, 0x0034($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f8, 0x02F4(s0)            # 000002F4
    lui     $at, %hi(var_8088D368)     # $at = 80890000
    jal     func_80026D64
    lwc1    $f12, %lo(var_8088D368)($at)
    trunc.w.s $f10, $f0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mfc1    t9, $f10
    nop
    addiu   t1, t9, 0x0005             # t1 = 00000005
    sh      t1, 0x0294(s0)             # 00000294
    lh      t2, 0x0294(s0)             # 00000294
    bgezl   t2, lbl_8088A814
    lh      t4, 0x001C(s0)             # 0000001C
    sh      t3, 0x0294(s0)             # 00000294
    lh      t4, 0x001C(s0)             # 0000001C
lbl_8088A814:
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sltiu   $at, t5, 0x000E
    beq     $at, $zero, lbl_8088A904
    sll     t5, t5,  2
    lui     $at, %hi(var_8088D36C)     # $at = 80890000
    addu    $at, $at, t5
    lw      t5, %lo(var_8088D36C)($at)
    jr      t5
    nop
var_8088A838:
    lw      t6, 0x0010(t0)             # 8011A5E0
    bnel    t6, $zero, lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
var_8088A854:
    lhu     t7, 0x0ED6(t0)             # 00000ED6
    andi    t8, t7, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
var_8088A874:
    lhu     t9, 0x0ED6(t0)             # 00000ED6
    andi    t1, t9, 0x0010             # t1 = 00000000
    bnel    t1, $zero, lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
var_8088A894:
    lhu     t2, 0x0ED6(t0)             # 00000ED6
    andi    t3, t2, 0x0100             # t3 = 00000000
    beql    t3, $zero, lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
var_8088A8B4:
    lhu     t4, 0x0ED6(t0)             # 00000ED6
    andi    t5, t4, 0x0100             # t5 = 00000000
    bnel    t5, $zero, lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A908
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
var_8088A8D4:
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x006C(s0)           # 0000006C
var_8088A8E0:
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sb      $zero, 0x00AE(s0)          # 000000AE
    and     t7, t6, $at
    b       lbl_8088A904
    sw      t7, 0x0004(s0)             # 00000004
var_8088A8F8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_8088A904:
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
lbl_8088A908:
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x004C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      a1, 0x0034($sp)
    beq     v0, $at, lbl_8088A944
    or      a2, s0, $zero              # a2 = 00000000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8088A94C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8088A94C
    lw      a0, 0x004C($sp)
    b       lbl_8088A998
    or      a2, s0, $zero              # a2 = 00000000
lbl_8088A944:
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00AE(s0)             # 000000AE
lbl_8088A94C:
    lui     a3, %hi(var_8088D2F0)      # a3 = 80890000
    addiu   a3, a3, %lo(var_8088D2F0)  # a3 = 8088D2F0
    jal     func_8004ACEC
    lw      a0, 0x004C($sp)
    lw      t9, 0x004C($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0034         # $at = 00000034
    lh      t1, 0x00A4(t9)             # 000000A4
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    bne     t1, $at, lbl_8088A9A4
    nop
    lhu     t2, 0x0ED6(t0)             # 8011B4A6
    andi    t3, t2, 0x4000             # t3 = 00000000
    bne     t3, $zero, lbl_8088A9A4
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8088A9A4
    nop
lbl_8088A998:
    lui     a3, %hi(var_8088D2C4)      # a3 = 80890000
    jal     func_8004ACEC
    addiu   a3, a3, %lo(var_8088D2C4)  # a3 = 8088D2C4
lbl_8088A9A4:
    lui     t4, %hi(func_8088B05C)     # t4 = 80890000
    addiu   t4, t4, %lo(func_8088B05C) # t4 = 8088B05C
    sw      t4, 0x0240(s0)             # 00000240
    lw      $ra, 0x002C($sp)
lbl_8088A9B4:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8088A9C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x02FC             # a1 = 000002FC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088A9F0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a2, 0x0030($sp)
    sll     a2, a2, 16
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     t6, $at, lbl_8088AA30
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f2                   # $f2 = 2.00
    nop
lbl_8088AA30:
    lh      t7, 0x0244(s0)             # 00000244
    bnel    t7, $zero, lbl_8088AABC
    lh      t5, 0x0246(s0)             # 00000246
    bne     a2, $zero, lbl_8088AA50
    lui     $at, %hi(var_8088D3A4)     # $at = 80890000
    mtc1    $zero, $f14                # $f14 = 0.00
    b       lbl_8088AA60
    swc1    $f14, 0x025C(s0)           # 0000025C
lbl_8088AA50:
    lwc1    $f4, %lo(var_8088D3A4)($at)
    mtc1    $zero, $f14                # $f14 = 0.00
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x025C(s0)            # 0000025C
lbl_8088AA60:
    lh      t8, 0x0288(s0)             # 00000288
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sh      t0, 0x0244(s0)             # 00000244
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0288(s0)             # 00000288
    lh      t1, 0x0288(s0)             # 00000288
    andi    t2, t1, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_8088AABC
    lh      t5, 0x0246(s0)             # 00000246
    bne     a2, $zero, lbl_8088AAB8
    swc1    $f14, 0x025C(s0)           # 0000025C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    sh      a2, 0x0032($sp)
    jal     func_80026D64
    swc1    $f2, 0x0024($sp)
    trunc.w.s $f8, $f0
    lh      a2, 0x0032($sp)
    lwc1    $f2, 0x0024($sp)
    mfc1    t4, $f8
    nop
    sh      t4, 0x0244(s0)             # 00000244
lbl_8088AAB8:
    lh      t5, 0x0246(s0)             # 00000246
lbl_8088AABC:
    mtc1    $zero, $f14                # $f14 = 0.00
    bnel    t5, $zero, lbl_8088AC10
    lwc1    $f0, 0x0280(s0)            # 00000280
    lh      t6, 0x028C(s0)             # 0000028C
    sltiu   $at, a2, 0x0006
    sll     t0, a2,  2
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x028C(s0)             # 0000028C
    lh      t8, 0x028C(s0)             # 0000028C
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     $at, $zero, lbl_8088AC0C
    sh      t9, 0x028C(s0)             # 0000028C
    lui     $at, %hi(var_8088D3A8)     # $at = 80890000
    addu    $at, $at, t0
    lw      t0, %lo(var_8088D3A8)($at)
    jr      t0
    nop
var_8088AB00:
    swc1    $f14, 0x0264(s0)           # 00000264
    b       lbl_8088AC0C
    swc1    $f14, 0x0260(s0)           # 00000260
var_8088AB0C:
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sh      t1, 0x0246(s0)             # 00000246
    lui     $at, %hi(var_8088D3C0)     # $at = 80890000
    lwc1    $f10, %lo(var_8088D3C0)($at)
    lh      t2, 0x028C(s0)             # 0000028C
    mul.s   $f0, $f10, $f2
    swc1    $f0, 0x0264(s0)            # 00000264
    bne     t2, $zero, lbl_8088AC0C
    swc1    $f0, 0x0260(s0)            # 00000260
    swc1    $f14, 0x0264(s0)           # 00000264
    b       lbl_8088AC0C
    swc1    $f14, 0x0260(s0)           # 00000260
var_8088AB3C:
    lui     $at, %hi(var_8088D3C4)     # $at = 80890000
    lwc1    $f0, %lo(var_8088D3C4)($at)
    lui     $at, %hi(var_8088D3C8)     # $at = 80890000
    lwc1    $f2, %lo(var_8088D3C8)($at)
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t3, 0x0246(s0)             # 00000246
    lui     $at, %hi(var_8088D3CC)     # $at = 80890000
    lwc1    $f16, %lo(var_8088D3CC)($at)
    lui     $at, %hi(var_8088D3D0)     # $at = 80890000
    lh      t4, 0x028C(s0)             # 0000028C
    swc1    $f16, 0x0264(s0)           # 00000264
    lwc1    $f18, %lo(var_8088D3D0)($at)
    swc1    $f0, 0x0278(s0)            # 00000278
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f2, 0x027C(s0)            # 0000027C
    swc1    $f2, 0x0274(s0)            # 00000274
    bne     t4, $zero, lbl_8088AC0C
    swc1    $f18, 0x0260(s0)           # 00000260
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f0                   # $f0 = 8000.00
    nop
    swc1    $f0, 0x0278(s0)            # 00000278
    b       lbl_8088AC0C
    swc1    $f0, 0x0270(s0)            # 00000270
var_8088AB9C:
    lui     $at, %hi(var_8088D3D4)     # $at = 80890000
    lwc1    $f0, %lo(var_8088D3D4)($at)
    lh      t6, 0x028C(s0)             # 0000028C
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sh      t5, 0x0246(s0)             # 00000246
    swc1    $f0, 0x0270(s0)            # 00000270
    bne     t6, $zero, lbl_8088AC0C
    swc1    $f0, 0x0278(s0)            # 00000278
    lui     $at, %hi(var_8088D3D8)     # $at = 80890000
    lwc1    $f0, %lo(var_8088D3D8)($at)
    swc1    $f0, 0x0270(s0)            # 00000270
    b       lbl_8088AC0C
    swc1    $f0, 0x0278(s0)            # 00000278
var_8088ABD0:
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    b       lbl_8088AC0C
    sh      t7, 0x0244(s0)             # 00000244
var_8088ABDC:
    lui     $at, %hi(var_8088D3DC)     # $at = 80890000
    lwc1    $f0, %lo(var_8088D3DC)($at)
    lh      t9, 0x028C(s0)             # 0000028C
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x0246(s0)             # 00000246
    swc1    $f0, 0x0270(s0)            # 00000270
    bne     t9, $zero, lbl_8088AC0C
    swc1    $f0, 0x0278(s0)            # 00000278
    lui     $at, %hi(var_8088D3E0)     # $at = 80890000
    lwc1    $f0, %lo(var_8088D3E0)($at)
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f0, 0x0278(s0)            # 00000278
lbl_8088AC0C:
    lwc1    $f0, 0x0280(s0)            # 00000280
lbl_8088AC10:
    lwc1    $f4, 0x02D0(s0)            # 000002D0
    addiu   a0, s0, 0x02D0             # a0 = 000002D0
    lui     a2, 0x3F00                 # a2 = 3F000000
    c.eq.s  $f4, $f0
    nop
    bc1tl   lbl_8088AC3C
    lwc1    $f0, 0x025C(s0)            # 0000025C
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    lwc1    $f0, 0x025C(s0)            # 0000025C
lbl_8088AC3C:
    lwc1    $f6, 0x02CC(s0)            # 000002CC
    addiu   a0, s0, 0x02CC             # a0 = 000002CC
    lui     a2, 0x3F00                 # a2 = 3F000000
    c.eq.s  $f6, $f0
    nop
    bc1tl   lbl_8088AC68
    lwc1    $f0, 0x0264(s0)            # 00000264
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    lwc1    $f0, 0x0264(s0)            # 00000264
lbl_8088AC68:
    lwc1    $f8, 0x02B4(s0)            # 000002B4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f8, $f0
    addiu   a0, s0, 0x02B4             # a0 = 000002B4
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088AC98
    lwc1    $f0, 0x0278(s0)            # 00000278
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0278(s0)            # 00000278
lbl_8088AC98:
    lwc1    $f10, 0x02B8(s0)           # 000002B8
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f10, $f0
    addiu   a0, s0, 0x02B8             # a0 = 000002B8
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088ACC8
    lwc1    $f0, 0x027C(s0)            # 0000027C
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x027C(s0)            # 0000027C
lbl_8088ACC8:
    lwc1    $f16, 0x02BC(s0)           # 000002BC
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f16, $f0
    addiu   a0, s0, 0x02BC             # a0 = 000002BC
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088ACF8
    lwc1    $f0, 0x0260(s0)            # 00000260
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0260(s0)            # 00000260
lbl_8088ACF8:
    lwc1    $f18, 0x02C0(s0)           # 000002C0
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f18, $f0
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088AD28
    lwc1    $f0, 0x0270(s0)            # 00000270
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0270(s0)            # 00000270
lbl_8088AD28:
    lwc1    $f4, 0x02C4(s0)            # 000002C4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f4, $f0
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088AD58
    lwc1    $f0, 0x0274(s0)            # 00000274
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0274(s0)            # 00000274
lbl_8088AD58:
    lwc1    $f6, 0x02C8(s0)            # 000002C8
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f6, $f0
    addiu   a0, s0, 0x02C8             # a0 = 000002C8
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_8088AD88
    lw      $ra, 0x001C($sp)
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lw      $ra, 0x001C($sp)
lbl_8088AD88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8088AD98:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lh      t6, 0x024C(s1)             # 0000024C
    bnel    t6, $zero, lbl_8088AED0
    lw      $ra, 0x003C($sp)
    lh      t7, 0x0286(s1)             # 00000286
    slti    $at, t7, 0x0007
    beql    $at, $zero, lbl_8088AED0
    lw      $ra, 0x003C($sp)
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0054($sp)
    lwc1    $f16, 0x00E4(s0)           # 000000E4
    lwc1    $f10, 0x00F0(s0)           # 000000F0
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0050($sp)
    lwc1    $f6, 0x00E8(s0)            # 000000E8
    lwc1    $f4, 0x00F4(s0)            # 000000F4
    sub.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f18, 0x0054($sp)
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    sub.s   $f16, $f0, $f10
    lui     $at, %hi(var_8088D3E4)     # $at = 80890000
    lwc1    $f12, %lo(var_8088D3E4)($at)
    mul.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    jal     func_80026D90
    swc1    $f8, 0x0040($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0050($sp)
    lwc1    $f10, 0x00E4(s0)           # 000000E4
    mul.s   $f8, $f4, $f6
    add.s   $f18, $f10, $f16
    add.s   $f10, $f18, $f8
    add.s   $f16, $f0, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0044($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f18, 0x004C($sp)
    lwc1    $f10, 0x00E8(s0)           # 000000E8
    sub.s   $f6, $f0, $f4
    lwc1    $f4, 0x0044($sp)
    lwc1    $f16, 0x0040($sp)
    sw      $zero, 0x0028($sp)
    mul.s   $f8, $f6, $f18
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    add.s   $f2, $f8, $f10
    addiu   a3, $zero, 0x0144          # a3 = 00000144
    swc1    $f4, 0x0014($sp)
    swc1    $f16, 0x0010($sp)
    jal     func_800253F0
    swc1    $f2, 0x0018($sp)
    beql    v0, $zero, lbl_8088AED0
    lw      $ra, 0x003C($sp)
    lh      t8, 0x0286(s1)             # 00000286
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x024C(s1)             # 0000024C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x0286(s1)             # 00000286
    lw      $ra, 0x003C($sp)
lbl_8088AED0:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_8088AEE0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x024A(s0)             # 0000024A
    bnel    t6, $zero, lbl_8088AF28
    lh      t0, 0x0248(s0)             # 00000248
    lhu     t8, 0x0088(s0)             # 00000088
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sh      t7, 0x024A(s0)             # 0000024A
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8088AF24
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f4                   # $f4 = 3.50
    nop
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_8088AF24:
    lh      t0, 0x0248(s0)             # 00000248
lbl_8088AF28:
    sll     t7, a2,  2
    lui     t8, %hi(var_8088D24C)      # t8 = 80890000
    bne     t0, $zero, lbl_8088AF58
    sll     t9, a2,  2
    lh      t1, 0x0290(s0)             # 00000290
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sh      t5, 0x0248(s0)             # 00000248
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0290(s0)             # 00000290
    lh      t3, 0x0290(s0)             # 00000290
    andi    t4, t3, 0x0001             # t4 = 00000000
    sh      t4, 0x0290(s0)             # 00000290
lbl_8088AF58:
    lh      t6, 0x0290(s0)             # 00000290
    lui     t1, %hi(var_8088D250)      # t1 = 80890000
    lui     t0, %hi(var_8088D24C)      # t0 = 80890000
    bne     t6, $zero, lbl_8088AF7C
    addiu   t1, t1, %lo(var_8088D250)  # t1 = 8088D250
    addiu   t8, t8, %lo(var_8088D24C)  # t8 = 8088D24C
    addu    v0, t7, t8
    b       lbl_8088AF8C
    lwc1    $f2, 0x0000(v0)            # 00000000
lbl_8088AF7C:
    addiu   t0, t0, %lo(var_8088D24C)  # t0 = 8088D24C
    addu    v0, t9, t0
    lwc1    $f2, 0x0000(v0)            # 00000000
    neg.s   $f2, $f2
lbl_8088AF8C:
    bnel    v0, t1, lbl_8088AFD8
    lh      t9, 0x02D4(s0)             # 000002D4
    lh      t2, 0x024E(s0)             # 0000024E
    beql    t2, $zero, lbl_8088AFB4
    lh      t6, 0x0258(s0)             # 00000258
    lhu     t3, 0x0088(s0)             # 00000088
    andi    t4, t3, 0x0008             # t4 = 00000000
    beql    t4, $zero, lbl_8088AFD8
    lh      t9, 0x02D4(s0)             # 000002D4
    lh      t6, 0x0258(s0)             # 00000258
lbl_8088AFB4:
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    sh      t5, 0x024E(s0)             # 0000024E
    bnel    t6, $zero, lbl_8088AFD8
    lh      t9, 0x02D4(s0)             # 000002D4
    lh      t8, 0x008A(s0)             # 0000008A
    addiu   t7, $zero, 0x0046          # t7 = 00000046
    sh      t7, 0x0258(s0)             # 00000258
    sh      t8, 0x02D4(s0)             # 000002D4
    lh      t9, 0x02D4(s0)             # 000002D4
lbl_8088AFD8:
    lwc1    $f16, 0x02EC(s0)           # 000002EC
    sw      $zero, 0x0010($sp)
    mtc1    t9, $f6                    # $f6 = 0.00
    trunc.w.s $f18, $f16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    cvt.s.w $f8, $f6
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    sra     a3, a3, 16
    add.s   $f0, $f8, $f2
    trunc.w.s $f10, $f0
    mfc1    a1, $f10
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43FA                 # a3 = 43FA0000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8088B05C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x00E8             # a0 = 060000E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00E8             # a1 = 060000E8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t7, %hi(func_8088B230)     # t7 = 80890000
    beq     v0, $at, lbl_8088B0E0
    addiu   t7, t7, %lo(func_8088B230) # t7 = 8088B230
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8088B0E8
    lui     t8, %hi(func_8088B104)     # t8 = 80890000
    lui     t6, %hi(func_8088B350)     # t6 = 80890000
    addiu   t6, t6, %lo(func_8088B350) # t6 = 8088B350
    b       lbl_8088B0F0
    sw      t6, 0x0240(s0)             # 00000240
lbl_8088B0E0:
    b       lbl_8088B0F0
    sw      t7, 0x0240(s0)             # 00000240
lbl_8088B0E8:
    addiu   t8, t8, %lo(func_8088B104) # t8 = 8088B104
    sw      t8, 0x0240(s0)             # 00000240
lbl_8088B0F0:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088B104:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x02F8(a0)             # 000002F8
    lui     $at, 0x4000                # $at = 40000000
    beql    t6, $zero, lbl_8088B170
    lw      a1, 0x001C($sp)
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    sw      a0, 0x0018($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lw      a0, 0x0018($sp)
    lui     $at, 0x4000                # $at = 40000000
    add.s   $f6, $f0, $f4
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f6, 0x0060(a0)            # 00000060
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_8088B188)     # t7 = 80890000
    add.s   $f10, $f0, $f8
    addiu   t7, t7, %lo(func_8088B188) # t7 = 8088B188
    sw      t7, 0x0240(a0)             # 00000240
    swc1    $f10, 0x0068(a0)           # 00000068
    lw      a1, 0x001C($sp)
lbl_8088B170:
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088B188:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8088B218
    nop
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f4, 0x0060(a0)            # 00000060
    lui     t8, %hi(func_8088B350)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088B350) # t8 = 8088B350
    c.lt.s  $f4, $f2
    nop
    bc1f    lbl_8088B218
    nop
    lwc1    $f0, 0x0024(a0)            # 00000024
    sh      $zero, 0x028E(a0)          # 0000028E
    lh      v0, 0x028E(a0)             # 0000028E
    swc1    $f0, 0x02A8(a0)            # 000002A8
    swc1    $f0, 0x029C(a0)            # 0000029C
    lwc1    $f0, 0x0028(a0)            # 00000028
    swc1    $f2, 0x02F0(a0)            # 000002F0
    swc1    $f2, 0x02EC(a0)            # 000002EC
    swc1    $f0, 0x02AC(a0)            # 000002AC
    swc1    $f0, 0x02A0(a0)            # 000002A0
    lwc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f2, 0x0068(a0)            # 00000068
    swc1    $f2, 0x027C(a0)            # 0000027C
    swc1    $f2, 0x0274(a0)            # 00000274
    swc1    $f2, 0x0270(a0)            # 00000270
    swc1    $f2, 0x0278(a0)            # 00000278
    sw      t8, 0x0240(a0)             # 00000240
    sh      v0, 0x024A(a0)             # 0000024A
    sh      v0, 0x024C(a0)             # 0000024C
    swc1    $f0, 0x02B0(a0)            # 000002B0
    b       lbl_8088B220
    swc1    $f0, 0x02A4(a0)            # 000002A4
lbl_8088B218:
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_8088B220:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088B230:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_8088B2B0
    nop
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0028(v0)           # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    sub.s   $f0, $f8, $f10
    lui     t7, %hi(func_8088C07C)     # t7 = 80890000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    lui     $at, 0xC000                # $at = C0000000
    abs.s   $f0, $f0
    addiu   t7, t7, %lo(func_8088C07C) # t7 = 8088C07C
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_8088B2B0
    nop
    mtc1    $at, $f18                  # $f18 = -2.00
    sh      t6, 0x024E(s0)             # 0000024E
    sw      t7, 0x0240(s0)             # 00000240
    b       lbl_8088B33C
    swc1    $f18, 0x006C(s0)           # 0000006C
lbl_8088B2B0:
    jal     func_80022BB0
    sw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_8088B310
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    jal     func_80022FD0
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t8, 0x0004(s0)             # 00000004
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t0, %hi(func_8088B9DC)     # t0 = 80890000
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    addiu   t0, t0, %lo(func_8088B9DC) # t0 = 8088B9DC
    and     t9, t8, $at
    sh      v0, 0x0250(s0)             # 00000250
    sh      $zero, 0x02D8(s0)          # 000002D8
    sh      v0, 0x024A(s0)             # 0000024A
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x0240(s0)             # 00000240
    b       lbl_8088B33C
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8088B310:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lw      a1, 0x002C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80022BD4
    swc1    $f8, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_8088B33C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8088B350:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    swc1    $f0, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lwc1    $f2, 0x0034($sp)
    beq     t6, $at, lbl_8088B41C
    mov.s   $f14, $f0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    swc1    $f2, 0x0034($sp)
    jal     func_80022BB0
    swc1    $f14, 0x0030($sp)
    lwc1    $f2, 0x0034($sp)
    beq     v0, $zero, lbl_8088B3FC
    lwc1    $f14, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    lw      t7, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t9, %hi(func_8088B9DC)     # t9 = 80890000
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    addiu   t9, t9, %lo(func_8088B9DC) # t9 = 8088B9DC
    and     t8, t7, $at
    sh      v0, 0x0250(s0)             # 00000250
    sh      $zero, 0x02D8(s0)          # 000002D8
    sh      v0, 0x024A(s0)             # 0000024A
    sw      t8, 0x0004(s0)             # 00000004
    sw      t9, 0x0240(s0)             # 00000240
    b       lbl_8088B808
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8088B3FC:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    swc1    $f2, 0x0034($sp)
    jal     func_80022D20
    swc1    $f14, 0x0030($sp)
    lwc1    $f2, 0x0034($sp)
    b       lbl_8088B490
    lwc1    $f14, 0x0030($sp)
lbl_8088B41C:
    lh      t0, 0x02D8(s0)             # 000002D8
    beql    t0, $zero, lbl_8088B494
    sh      $zero, 0x002E($sp)
    lh      t2, 0x0254(s0)             # 00000254
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x0296(s0)             # 00000296
    bne     t2, $zero, lbl_8088B44C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sh      t3, 0x0254(s0)             # 00000254
lbl_8088B44C:
    lui     $at, %hi(var_8088D3E8)     # $at = 80890000
    jal     func_80026D64
    lwc1    $f12, %lo(var_8088D3E8)($at)
    trunc.w.s $f6, $f0
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    mtc1    $zero, $f10                # $f10 = 0.00
    mfc1    t5, $f6
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     t6, %hi(func_8088B81C)     # t6 = 80890000
    addiu   t6, t6, %lo(func_8088B81C) # t6 = 8088B81C
    sw      t6, 0x0240(s0)             # 00000240
    swc1    $f8, 0x0068(s0)            # 00000068
    swc1    $f10, 0x02F0(s0)           # 000002F0
    sh      t5, 0x0290(s0)             # 00000290
    b       lbl_8088B808
    swc1    $f18, 0x02EC(s0)           # 000002EC
lbl_8088B490:
    sh      $zero, 0x002E($sp)
lbl_8088B494:
    lh      v0, 0x024C(s0)             # 0000024C
    lui     $at, %hi(var_8088D3EC)     # $at = 80890000
    beq     v0, $zero, lbl_8088B51C
    nop
    lwc1    $f12, %lo(var_8088D3EC)($at)
    swc1    $f2, 0x0034($sp)
    jal     func_80026D64
    swc1    $f14, 0x0030($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f2, 0x0034($sp)
    lwc1    $f14, 0x0030($sp)
    c.lt.s  $f0, $f4
    addiu   a0, s0, 0x0280             # a0 = 00000280
    lui     a1, %hi(var_8088D244)      # a1 = 80890000
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1f    lbl_8088B4F4
    lui     a3, 0x457A                 # a3 = 457A0000
    lh      t7, 0x02D6(s0)             # 000002D6
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x02D6(s0)             # 000002D6
    lh      t9, 0x02D6(s0)             # 000002D6
    andi    t0, t9, 0x0001             # t0 = 00000000
    sh      t0, 0x02D6(s0)             # 000002D6
lbl_8088B4F4:
    lh      t1, 0x02D6(s0)             # 000002D6
    swc1    $f14, 0x0030($sp)
    swc1    $f2, 0x0034($sp)
    sll     t2, t1,  2
    addu    a1, a1, t2
    jal     func_80064280
    lw      a1, %lo(var_8088D244)(a1)
    lwc1    $f2, 0x0034($sp)
    lwc1    $f14, 0x0030($sp)
    lh      v0, 0x024C(s0)             # 0000024C
lbl_8088B51C:
    bnel    v0, $zero, lbl_8088B6B8
    lh      t4, 0x024A(s0)             # 0000024A
    lh      t3, 0x024A(s0)             # 0000024A
    bnel    t3, $zero, lbl_8088B6B8
    lh      t4, 0x024A(s0)             # 0000024A
    lh      t4, 0x028E(s0)             # 0000028E
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x028E(s0)             # 0000028E
    lh      t6, 0x028E(s0)             # 0000028E
    slti    $at, t6, 0x0008
    bne     $at, $zero, lbl_8088B68C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    swc1    $f2, 0x0034($sp)
    jal     func_80026D64
    swc1    $f14, 0x0030($sp)
    trunc.w.s $f6, $f0
    lui     $at, %hi(var_8088D3F0)     # $at = 80890000
    mfc1    t8, $f6
    nop
    sh      t8, 0x024C(s0)             # 0000024C
    jal     func_80026D64
    lwc1    $f12, %lo(var_8088D3F0)($at)
    trunc.w.s $f8, $f0
    lh      v0, 0x001C(s0)             # 0000001C
    lwc1    $f2, 0x0034($sp)
    lwc1    $f14, 0x0030($sp)
    mfc1    t0, $f8
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8088B5FC
    sh      t0, 0x028E(s0)             # 0000028E
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    v0, $at, lbl_8088B600
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f2, $f10
    nop
    bc1fl   lbl_8088B5D4
    mtc1    $at, $f18                  # $f18 = 100.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    b       lbl_8088B5DC
    sub.s   $f2, $f2, $f0
    mtc1    $at, $f18                  # $f18 = 100.00
lbl_8088B5D4:
    mtc1    $at, $f0                   # $f0 = 100.00
    add.s   $f2, $f2, $f18
lbl_8088B5DC:
    c.lt.s  $f14, $f4
    nop
    bc1f    lbl_8088B5F4
    nop
    b       lbl_8088B670
    sub.s   $f14, $f14, $f0
lbl_8088B5F4:
    b       lbl_8088B670
    add.s   $f14, $f14, $f0
lbl_8088B5FC:
    lui     $at, 0x41F0                # $at = 41F00000
lbl_8088B600:
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    swc1    $f0, 0x0034($sp)
    lwc1    $f2, 0x0034($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_8088B64C
    mtc1    $at, $f12                  # $f12 = 20.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    b       lbl_8088B654
    sub.s   $f2, $f2, $f12
    mtc1    $at, $f12                  # $f12 = 20.00
lbl_8088B64C:
    nop
    add.s   $f2, $f2, $f12
lbl_8088B654:
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_8088B670
    add.s   $f14, $f0, $f12
    b       lbl_8088B670
    sub.s   $f14, $f0, $f12
    add.s   $f14, $f0, $f12
lbl_8088B670:
    lwc1    $f6, 0x029C(s0)            # 0000029C
    lwc1    $f10, 0x02A4(s0)           # 000002A4
    add.s   $f8, $f6, $f2
    add.s   $f18, $f10, $f14
    swc1    $f8, 0x02A8(s0)            # 000002A8
    b       lbl_8088B6B4
    swc1    $f18, 0x02B0(s0)           # 000002B0
lbl_8088B68C:
    lhu     t2, 0x0088(s0)             # 00000088
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sh      t1, 0x024A(s0)             # 0000024A
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_8088B6B4
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 3.50
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_8088B6B4:
    lh      t4, 0x024A(s0)             # 0000024A
lbl_8088B6B8:
    addiu   a0, s0, 0x0280             # a0 = 00000280
    lui     a1, 0x3F00                 # a1 = 3F000000
    beql    t4, $zero, lbl_8088B7FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800642F0
    lui     a2, 0x457A                 # a2 = 457A0000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x002E($sp)
    lw      a3, 0x02EC(s0)             # 000002EC
    lw      a1, 0x02A8(s0)             # 000002A8
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x02B0(s0)             # 000002B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lw      a3, 0x02EC(s0)             # 000002EC
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f8, 0x02A8(s0)            # 000002A8
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    sub.s   $f12, $f8, $f10
    lwc1    $f18, 0x02B0(s0)           # 000002B0
    lwc1    $f4, 0x002C(s0)            # 0000002C
    abs.s   $f0, $f12
    sub.s   $f14, $f18, $f4
    c.lt.s  $f0, $f2
    abs.s   $f0, $f14
    bc1fl   lbl_8088B758
    c.lt.s  $f0, $f2
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    c.lt.s  $f0, $f2
lbl_8088B758:
    mtc1    $zero, $f0                 # $f0 = 0.00
    bc1fl   lbl_8088B770
    c.eq.s  $f12, $f0
    mtc1    $zero, $f14                # $f14 = 0.00
    nop
    c.eq.s  $f12, $f0
lbl_8088B770:
    nop
    bc1f    lbl_8088B794
    nop
    c.eq.s  $f14, $f0
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    bc1f    lbl_8088B794
    nop
    sh      $zero, 0x024A(s0)          # 0000024A
    sh      t6, 0x028E(s0)             # 0000028E
lbl_8088B794:
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_8088D3F4)     # $at = 80890000
    lwc1    $f6, %lo(var_8088D3F4)($at)
    lwc1    $f18, 0x02F0(s0)           # 000002F0
    sw      $zero, 0x0010($sp)
    mul.s   $f8, $f0, $f6
    trunc.w.s $f4, $f18
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f4
    trunc.w.s $f10, $f8
    sll     a3, a3, 16
    sra     a3, a3, 16
    mfc1    a1, $f10
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lui     a1, 0x461C                 # a1 = 461C0000
    ori     a1, a1, 0x4000             # a1 = 461C4000
    addiu   a0, s0, 0x02F0             # a0 = 000002F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x447A                 # a3 = 447A0000
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088B7FC:
    lw      a1, 0x0044($sp)
    jal     func_8088A9F0
    lh      a2, 0x002E($sp)
lbl_8088B808:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8088B81C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x02D8(a0)             # 000002D8
    lw      t7, 0x002C($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    addiu   a2, v0, 0xFFFF             # a2 = FFFFFFFF
    sll     a2, a2, 16
    bne     v0, $zero, lbl_8088B8A8
    sra     a2, a2, 16
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f14, 0x0028(a0)           # 00000028
    lwc1    $f12, 0x002C(a0)           # 0000002C
    sh      $zero, 0x028E(a0)          # 0000028E
    lh      v0, 0x028E(a0)             # 0000028E
    lui     t6, %hi(func_8088B05C)     # t6 = 80890000
    addiu   t6, t6, %lo(func_8088B05C) # t6 = 8088B05C
    swc1    $f16, 0x02A8(a0)           # 000002A8
    swc1    $f16, 0x029C(a0)           # 0000029C
    swc1    $f14, 0x02AC(a0)           # 000002AC
    swc1    $f14, 0x02A0(a0)           # 000002A0
    swc1    $f12, 0x02B0(a0)           # 000002B0
    swc1    $f12, 0x02A4(a0)           # 000002A4
    sh      v0, 0x024A(a0)             # 0000024A
    sh      v0, 0x024C(a0)             # 0000024C
    swc1    $f18, 0x02F0(a0)           # 000002F0
    swc1    $f18, 0x02EC(a0)           # 000002EC
    swc1    $f18, 0x0068(a0)           # 00000068
    swc1    $f18, 0x027C(a0)           # 0000027C
    swc1    $f18, 0x0274(a0)           # 00000274
    swc1    $f18, 0x0270(a0)           # 00000270
    swc1    $f18, 0x0278(a0)           # 00000278
    b       lbl_8088B9CC
    sw      t6, 0x0240(a0)             # 00000240
lbl_8088B8A8:
    addu    t8, t8, t7
    lw      t8, 0x1E08(t8)             # 00011E08
    sll     t9, a2,  3
    lui     t3, 0x8012                 # t3 = 80120000
    addu    a1, t8, t9
    lw      v1, 0x0004(a1)             # 00000004
    lh      t5, 0x02DA(a0)             # 000002DA
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t0, v1,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v1, $at
    sll     t6, t5,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t6, t6, t5
    addu    v0, t3, t4
    addu    v0, v0, $at
    sll     t6, t6,  1
    addu    v0, v0, t6
    lh      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(a0)            # 00000024
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(a0)           # 0000002C
    cvt.s.w $f6, $f4
    sw      a0, 0x0028($sp)
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    swc1    $f12, 0x001C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0018($sp)
    lui     $at, %hi(var_8088D3F8)     # $at = 80890000
    lwc1    $f4, %lo(var_8088D3F8)($at)
    lw      a0, 0x0028($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sh      t0, 0x02D4(a0)             # 000002D4
    jal     func_8088AEE0
    lw      a1, 0x002C($sp)
    lwc1    $f0, 0x001C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    abs.s   $f0, $f0
    lw      a0, 0x0028($sp)
    c.lt.s  $f0, $f2
    lwc1    $f0, 0x0018($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    bc1f    lbl_8088B9C4
    nop
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_8088B9C4
    nop
    lh      t1, 0x02DA(a0)             # 000002DA
    lh      t4, 0x02DC(a0)             # 000002DC
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x02DA(a0)             # 000002DA
    lh      t3, 0x02DA(a0)             # 000002DA
    slt     $at, t3, t4
    bne     $at, $zero, lbl_8088B9C4
    nop
    sh      $zero, 0x02DA(a0)          # 000002DA
lbl_8088B9C4:
    jal     func_8088A9F0
    lw      a1, 0x002C($sp)
lbl_8088B9CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8088B9DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x024A(s0)             # 0000024A
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    bne     t6, $zero, lbl_8088BA0C
    lui     $at, %hi(var_8088D3FC)     # $at = 80890000
    sh      t7, 0x0296(s0)             # 00000296
    sh      t8, 0x024A(s0)             # 0000024A
lbl_8088BA0C:
    jal     func_80026D90
    lwc1    $f12, %lo(var_8088D3FC)($at)
    trunc.w.s $f4, $f0
    lui     $at, %hi(var_8088D400)     # $at = 80890000
    mfc1    t0, $f4
    nop
    sh      t0, 0x00B4(s0)             # 000000B4
    jal     func_80026D90
    lwc1    $f12, %lo(var_8088D400)($at)
    trunc.w.s $f6, $f0
    lui     $at, %hi(var_8088D404)     # $at = 80890000
    mfc1    t2, $f6
    nop
    sh      t2, 0x00B6(s0)             # 000000B6
    jal     func_80026D90
    lwc1    $f12, %lo(var_8088D404)($at)
    trunc.w.s $f8, $f0
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t4, $f8
    nop
    sh      t4, 0x00B8(s0)             # 000000B8
    jal     func_80022D40
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_8088BACC
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lui     t0, %hi(func_8088BAEC)     # t0 = 80890000
    bne     t5, $at, lbl_8088BAAC
    addiu   t0, t0, %lo(func_8088BAEC) # t0 = 8088BAEC
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lui     t7, %hi(func_8088BC98)     # t7 = 80890000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, %lo(func_8088BC98) # t7 = 8088BC98
    sh      $zero, 0x0250(s0)          # 00000250
    sh      t6, 0x0296(s0)             # 00000296
    sw      t7, 0x0240(s0)             # 00000240
    b       lbl_8088BAD8
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_8088BAAC:
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      v0, 0x00B8(s0)             # 000000B8
    lw      t8, 0x0004(s0)             # 00000004
    sw      t0, 0x0240(s0)             # 00000240
    sh      v0, 0x00B6(s0)             # 000000B6
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(s0)             # 00000004
    sh      v0, 0x00B4(s0)             # 000000B4
lbl_8088BACC:
    lw      a1, 0x0024($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_8088BAD8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088BAEC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x02D8(s0)             # 000002D8
    bnel    t6, $zero, lbl_8088BBB8
    lhu     t3, 0x0088(s0)             # 00000088
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_8088BC88
    lw      $ra, 0x001C($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bne     t9, $at, lbl_8088BB94
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x002C(s0)           # 0000002C
    sh      $zero, 0x028E(s0)          # 0000028E
    lh      v0, 0x028E(s0)             # 0000028E
    lui     t0, %hi(func_8088B05C)     # t0 = 80890000
    addiu   t0, t0, %lo(func_8088B05C) # t0 = 8088B05C
    swc1    $f16, 0x02A8(s0)           # 000002A8
    swc1    $f16, 0x029C(s0)           # 0000029C
    swc1    $f14, 0x02AC(s0)           # 000002AC
    swc1    $f14, 0x02A0(s0)           # 000002A0
    swc1    $f12, 0x02B0(s0)           # 000002B0
    swc1    $f12, 0x02A4(s0)           # 000002A4
    sh      v0, 0x024A(s0)             # 0000024A
    sh      v0, 0x024C(s0)             # 0000024C
    swc1    $f18, 0x02F0(s0)           # 000002F0
    swc1    $f18, 0x02EC(s0)           # 000002EC
    swc1    $f18, 0x0068(s0)           # 00000068
    swc1    $f18, 0x027C(s0)           # 0000027C
    swc1    $f18, 0x0274(s0)           # 00000274
    swc1    $f18, 0x0270(s0)           # 00000270
    swc1    $f18, 0x0278(s0)           # 00000278
    b       lbl_8088BC84
    sw      t0, 0x0240(s0)             # 00000240
lbl_8088BB94:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f4                   # $f4 = 4.00
    sh      t1, 0x02D8(s0)             # 000002D8
    sh      t2, 0x024C(s0)             # 0000024C
    swc1    $f0, 0x0068(s0)            # 00000068
    b       lbl_8088BC04
    swc1    $f4, 0x0060(s0)            # 00000060
    lhu     t3, 0x0088(s0)             # 00000088
lbl_8088BBB8:
    lui     $at, 0x4080                # $at = 40800000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_8088BBDC
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    mtc1    $at, $f6                   # $f6 = 4.00
    sh      $zero, 0x0250(s0)          # 00000250
    sh      t5, 0x0296(s0)             # 00000296
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_8088BBDC:
    lh      t6, 0x024C(s0)             # 0000024C
    lui     t8, %hi(func_8088C07C)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088C07C) # t8 = 8088C07C
    bnel    t6, $zero, lbl_8088BC08
    or      a0, s0, $zero              # a0 = 00000000
    sh      t7, 0x024E(s0)             # 0000024E
    sh      $zero, 0x024A(s0)          # 0000024A
    sh      $zero, 0x02D8(s0)          # 000002D8
    b       lbl_8088BC84
    sw      t8, 0x0240(s0)             # 00000240
lbl_8088BC04:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088BC08:
    jal     func_80022BB0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_8088BC58
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    lw      t9, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t1, %hi(func_8088B9DC)     # t1 = 80890000
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    addiu   t1, t1, %lo(func_8088B9DC) # t1 = 8088B9DC
    and     t0, t9, $at
    sh      v0, 0x0250(s0)             # 00000250
    sh      $zero, 0x02D8(s0)          # 000002D8
    sh      v0, 0x024A(s0)             # 0000024A
    sw      t0, 0x0004(s0)             # 00000004
    sw      t1, 0x0240(s0)             # 00000240
    b       lbl_8088BC84
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_8088BC58:
    lh      t2, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t2, 0x0006
    bnel    $at, $zero, lbl_8088BC78
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022D20
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088BC78:
    lw      a1, 0x0024($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_8088BC84:
    lw      $ra, 0x001C($sp)
lbl_8088BC88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088BC98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f6, 0x0028(a0)            # 00000028
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_8088BCD0
    lw      a1, 0x001C($sp)
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
lbl_8088BCD0:
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088BCE8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x0298(s0)             # 00000298
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_8088BD18
    lhu     v0, 0x0088(s0)             # 00000088
    jal     func_8088AD98
    lw      a1, 0x003C($sp)
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8088BD18:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    andi    t7, v0, 0x0020             # t7 = 00000000
    beq     t7, $zero, lbl_8088BDD0
    swc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lwc1    $f8, 0x0084(s0)            # 00000084
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    c.lt.s  $f6, $f8
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    swc1    $f4, 0x006C(s0)            # 0000006C
    bc1fl   lbl_8088BD68
    lh      t8, 0x024A(s0)             # 0000024A
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f16, $f10, $f0
    swc1    $f16, 0x0028(s0)           # 00000028
    lh      t8, 0x024A(s0)             # 0000024A
lbl_8088BD68:
    bnel    t8, $zero, lbl_8088BDA8
    lhu     t1, 0x0088(s0)             # 00000088
    jal     func_80063CAC              # Vec3f_Copy
    sh      t9, 0x024A(s0)             # 0000024A
    lwc1    $f18, 0x0030($sp)
    lwc1    $f4, 0x0084(s0)            # 00000084
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sw      t0, 0x0010($sp)
    add.s   $f6, $f18, $f4
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    swc1    $f6, 0x0030($sp)
    jal     func_8001CF3C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lhu     t1, 0x0088(s0)             # 00000088
lbl_8088BDA8:
    lui     $at, 0x4120                # $at = 41200000
    andi    t2, t1, 0x0008             # t2 = 00000000
    beql    t2, $zero, lbl_8088BE68
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f8, 0x0060(s0)            # 00000060
    b       lbl_8088BE64
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_8088BDD0:
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f0                   # $f0 = -2.00
    andi    t3, v0, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_8088BE08
    swc1    $f0, 0x006C(s0)            # 0000006C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f16, 0x0060(s0)           # 00000060
    swc1    $f18, 0x0068(s0)           # 00000068
    b       lbl_8088BE18
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_8088BE08:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8088BE18:
    lhu     t4, 0x0088(s0)             # 00000088
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_8088BE68
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0298(s0)             # 00000298
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x006C(s0)            # 0000006C
    sh      t6, 0x024E(s0)             # 0000024E
    sh      $zero, 0x024A(s0)          # 0000024A
    bne     t7, $zero, lbl_8088BE58
    swc1    $f8, 0x0060(s0)            # 00000060
    lui     t8, %hi(func_8088C07C)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088C07C) # t8 = 8088C07C
    b       lbl_8088BE64
    sw      t8, 0x0240(s0)             # 00000240
lbl_8088BE58:
    lui     t9, %hi(func_8088BFEC)     # t9 = 80890000
    addiu   t9, t9, %lo(func_8088BFEC) # t9 = 8088BFEC
    sw      t9, 0x0240(s0)             # 00000240
lbl_8088BE64:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088BE68:
    lw      a1, 0x003C($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8088BE88:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x08F2          # a1 = 000008F2
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
    lui     t8, %hi(func_8088BEE0)     # t8 = 80890000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, t8, %lo(func_8088BEE0) # t8 = 8088BEE0
    sh      t6, 0x024C(a3)             # 0000024C
    sh      t7, 0x0292(a3)             # 00000292
    sw      t8, 0x0240(a3)             # 00000240
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088BEE0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t7, 0x024C(a0)             # 0000024C
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sh      t6, 0x0250(a0)             # 00000250
    bne     t7, $zero, lbl_8088BF1C
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    lui     t1, %hi(func_8088BF34)     # t1 = 80890000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   t1, t1, %lo(func_8088BF34) # t1 = 8088BF34
    sh      t8, 0x024C(a0)             # 0000024C
    sh      t9, 0x0244(a0)             # 00000244
    sh      t0, 0x0292(a0)             # 00000292
    sw      t1, 0x0240(a0)             # 00000240
lbl_8088BF1C:
    jal     func_8088A9F0
    lh      a2, 0x0292(a0)             # 00000292
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088BF34:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x024C(a0)             # 0000024C
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v0, $at, lbl_8088BFA0
    sh      t6, 0x0250(a0)             # 00000250
    lui     $at, %hi(var_8088D408)     # $at = 80890000
    lwc1    $f2, %lo(var_8088D408)($at)
    lui     $at, %hi(var_8088D40C)     # $at = 80890000
    lwc1    $f4, %lo(var_8088D40C)($at)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sh      t7, 0x0244(a0)             # 00000244
    swc1    $f2, 0x0278(a0)            # 00000278
    swc1    $f2, 0x0270(a0)            # 00000270
    swc1    $f4, 0x025C(a0)            # 0000025C
    swc1    $f0, 0x0274(a0)            # 00000274
    swc1    $f0, 0x027C(a0)            # 0000027C
    swc1    $f0, 0x0260(a0)            # 00000260
    swc1    $f0, 0x0264(a0)            # 00000264
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    lw      a0, 0x0018($sp)
    lh      v0, 0x024C(a0)             # 0000024C
lbl_8088BFA0:
    bne     v0, $zero, lbl_8088BFD0
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lw      t0, 0x0004(a0)             # 00000004
    lh      t9, 0x008A(a0)             # 0000008A
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t2, %hi(func_8088BFEC)     # t2 = 80890000
    addiu   t2, t2, %lo(func_8088BFEC) # t2 = 8088BFEC
    and     t1, t0, $at
    sh      t8, 0x0256(a0)             # 00000256
    sw      t1, 0x0004(a0)             # 00000004
    sw      t2, 0x0240(a0)             # 00000240
    sh      t9, 0x02D4(a0)             # 000002D4
lbl_8088BFD0:
    lw      a1, 0x001C($sp)
    jal     func_8088A9F0
    lh      a2, 0x0292(a0)             # 00000292
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088BFEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_8088AD98
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      v0, 0x0256(a0)             # 00000256
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_8088C06C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8088C064
    lw      a1, 0x001C($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     $at, %hi(var_8088D410)     # $at = 80890000
    swc1    $f4, 0x0068(a0)            # 00000068
    sw      a0, 0x0018($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_8088D410)($at)
    lw      a0, 0x0018($sp)
    trunc.w.s $f6, $f0
    sh      $zero, 0x024A(a0)          # 0000024A
    lh      v0, 0x024A(a0)             # 0000024A
    mfc1    t7, $f6
    sh      v0, 0x0248(a0)             # 00000248
    sh      v0, 0x0246(a0)             # 00000246
    sh      v0, 0x0244(a0)             # 00000244
    b       lbl_8088C06C
    sh      t7, 0x0290(a0)             # 00000290
lbl_8088C064:
    jal     func_8088AEE0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_8088C06C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088C07C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x00E8             # a0 = 060000E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00E8             # a1 = 060000E8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     $at, %hi(var_8088D414)     # $at = 80890000
    jal     func_80026D64
    lwc1    $f12, %lo(var_8088D414)($at)
    trunc.w.s $f10, $f0
    lw      v0, 0x0028($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    mfc1    t7, $f10
    lui     t8, %hi(func_8088C114)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088C114) # t8 = 8088C114
    sw      t8, 0x0240(v0)             # 00000240
    swc1    $f16, 0x0068(v0)           # 00000068
    sh      t7, 0x0290(v0)             # 00000290
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8088C114:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t7, 0x024E(a0)             # 0000024E
    lw      t6, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t7, $zero, lbl_8088C1A4
    lw      v0, 0x1C44(t6)             # 00001C44
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f14, 0x0028(a0)           # 00000028
    lwc1    $f12, 0x002C(a0)           # 0000002C
    lh      t8, 0x001C(a0)             # 0000001C
    sh      $zero, 0x028E(a0)          # 0000028E
    lh      v0, 0x028E(a0)             # 0000028E
    swc1    $f16, 0x02A8(a0)           # 000002A8
    swc1    $f16, 0x029C(a0)           # 0000029C
    swc1    $f14, 0x02AC(a0)           # 000002AC
    swc1    $f14, 0x02A0(a0)           # 000002A0
    swc1    $f12, 0x02B0(a0)           # 000002B0
    swc1    $f12, 0x02A4(a0)           # 000002A4
    sh      v0, 0x024A(a0)             # 0000024A
    sh      v0, 0x024C(a0)             # 0000024C
    swc1    $f18, 0x02F0(a0)           # 000002F0
    swc1    $f18, 0x02EC(a0)           # 000002EC
    swc1    $f18, 0x0068(a0)           # 00000068
    swc1    $f18, 0x027C(a0)           # 0000027C
    swc1    $f18, 0x0274(a0)           # 00000274
    swc1    $f18, 0x0270(a0)           # 00000270
    bne     t8, $at, lbl_8088C194
    swc1    $f18, 0x0278(a0)           # 00000278
    sh      $zero, 0x001C(a0)          # 0000001C
lbl_8088C194:
    lui     t9, %hi(func_8088B05C)     # t9 = 80890000
    addiu   t9, t9, %lo(func_8088B05C) # t9 = 8088B05C
    b       lbl_8088C200
    sw      t9, 0x0240(a0)             # 00000240
lbl_8088C1A4:
    lwc1    $f18, 0x0024(a0)           # 00000024
    lwc1    $f16, 0x0024(v0)           # 00000024
    lwc1    $f10, 0x002C(a0)           # 0000002C
    lwc1    $f8, 0x002C(v0)            # 0000002C
    sub.s   $f12, $f18, $f16
    sw      a0, 0x0018($sp)
    jal     func_800CD76C
    sub.s   $f14, $f10, $f8
    lui     $at, %hi(var_8088D418)     # $at = 80890000
    lwc1    $f16, %lo(var_8088D418)($at)
    lw      a0, 0x0018($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    t1, $f4
    nop
    sh      t1, 0x02D4(a0)             # 000002D4
    jal     func_8088AEE0
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8088A9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_8088C200:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088C210:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    lui     $at, %hi(var_8088D41C)     # $at = 80890000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_8088C260
    lw      $ra, 0x0014($sp)
    lwc1    $f12, %lo(var_8088D41C)($at)
    jal     func_80026D64
    sw      a0, 0x0018($sp)
    trunc.w.s $f4, $f0
    lw      a0, 0x0018($sp)
    lui     t3, %hi(func_8088B05C)     # t3 = 80890000
    addiu   t3, t3, %lo(func_8088B05C) # t3 = 8088B05C
    mfc1    t1, $f4
    sw      t3, 0x0240(a0)             # 00000240
    addiu   t2, t1, 0x0005             # t2 = 00000005
    sh      t2, 0x0294(a0)             # 00000294
    lw      $ra, 0x0014($sp)
lbl_8088C260:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088C26C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0298(a0)             # 00000298
    bnel    t6, $zero, lbl_8088C318
    lw      $ra, 0x0014($sp)
    lh      t7, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    t7, $at, lbl_8088C318
    lw      $ra, 0x0014($sp)
    lw      t9, 0x0240(a0)             # 00000240
    lui     t8, %hi(func_8088B230)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088B230) # t8 = 8088B230
    beql    t8, t9, lbl_8088C318
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x030D(a0)             # 0000030D
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_8088C314
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    lh      v1, 0x0294(a0)             # 00000294
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sb      t1, 0x030D(a0)             # 0000030D
    blez    v1, lbl_8088C2EC
    sh      t2, 0x0250(a0)             # 00000250
    lui     t3, %hi(var_8088D220)      # t3 = 80890000
    lh      t3, %lo(var_8088D220)(t3)
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    bnel    t3, $zero, lbl_8088C2F0
    sh      t5, 0x0296(a0)             # 00000296
    sh      t4, 0x0294(a0)             # 00000294
lbl_8088C2EC:
    sh      t5, 0x0296(a0)             # 00000296
lbl_8088C2F0:
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_8088C07C)     # t7 = 80890000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, t7, %lo(func_8088C07C) # t7 = 8088C07C
    sh      t6, 0x024E(a0)             # 0000024E
    sh      $zero, 0x02D8(a0)          # 000002D8
    sw      t7, 0x0240(a0)             # 00000240
lbl_8088C314:
    lw      $ra, 0x0014($sp)
lbl_8088C318:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088C324:
    addiu   $sp, $sp, 0xFF10           # $sp -= 0xF0
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x00F4($sp)
    lw      t6, 0x00F4($sp)
    lui     t9, %hi(var_8088D328)      # t9 = 80890000
    addiu   t9, t9, %lo(var_8088D328)  # t9 = 8088D328
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   t8, $sp, 0x00D4            # t8 = FFFFFFE4
    lui     t3, %hi(var_8088D334)      # t3 = 80890000
    sw      t7, 0x00E4($sp)
    lw      t1, 0x0000(t9)             # 8088D328
    lw      t0, 0x0004(t9)             # 8088D32C
    addiu   t3, t3, %lo(var_8088D334)  # t3 = 8088D334
    sw      t1, 0x0000(t8)             # FFFFFFE4
    lw      t1, 0x0008(t9)             # 8088D330
    sw      t0, 0x0004(t8)             # FFFFFFE8
    addiu   t2, $sp, 0x00C8            # t2 = FFFFFFD8
    sw      t1, 0x0008(t8)             # FFFFFFEC
    lw      t5, 0x0000(t3)             # 8088D334
    lw      t4, 0x0004(t3)             # 8088D338
    lui     t8, %hi(func_8088B350)     # t8 = 80890000
    sw      t5, 0x0000(t2)             # FFFFFFD8
    lw      t5, 0x0008(t3)             # 8088D33C
    sw      t4, 0x0004(t2)             # FFFFFFDC
    addiu   t8, t8, %lo(func_8088B350) # t8 = 8088B350
    sw      t5, 0x0008(t2)             # FFFFFFE0
    lh      t6, 0x0284(s1)             # 00000284
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0284(s1)             # 00000284
    sw      t8, 0x004C($sp)
    lw      t9, 0x0240(s1)             # 00000240
    beql    t8, t9, lbl_8088C3D0
    lh      v0, 0x0296(s1)             # 00000296
    mtc1    $zero, $f24                # $f24 = 0.00
    nop
    swc1    $f24, 0x0280(s1)           # 00000280
    lh      v0, 0x0296(s1)             # 00000296
lbl_8088C3D0:
    mtc1    $zero, $f24                # $f24 = 0.00
    beq     v0, $zero, lbl_8088C550
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8088C3E8
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_8088C3E8:
    blez    v1, lbl_8088C54C
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f22                  # $f22 = 2.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    sh      v1, 0x00E0($sp)
lbl_8088C404:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x00BC($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f10, 0x02F4(s1)           # 000002F4
    mov.s   $f12, $f20
    add.s   $f18, $f8, $f10
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x00C0($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    add.s   $f8, $f0, $f6
    jal     func_80026D64
    swc1    $f8, 0x00C4($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    add.s   $f18, $f0, $f10
    swc1    $f18, 0x009C($sp)
    lh      t0, 0x0296(s1)             # 00000296
    mtc1    $zero, $f18                # $f18 = 0.00
    bnel    t0, $at, lbl_8088C4A0
    lwc1    $f4, 0x02F4(s1)            # 000002F4
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x02F4(s1)            # 000002F4
    lwc1    $f8, 0x00C0($sp)
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_8088C4A0
    lwc1    $f4, 0x02F4(s1)            # 000002F4
    add.s   $f10, $f8, $f20
    swc1    $f10, 0x00C0($sp)
    lwc1    $f4, 0x02F4(s1)            # 000002F4
lbl_8088C4A0:
    c.eq.s  $f18, $f4
    nop
    bc1fl   lbl_8088C4C4
    lui     $at, 0x4040                # $at = 40400000
    jal     func_80026D64
    mov.s   $f12, $f22
    add.s   $f6, $f0, $f22
    swc1    $f6, 0x009C($sp)
    lui     $at, 0x4040                # $at = 40400000
lbl_8088C4C4:
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90
    nop
    swc1    $f0, 0x00B0($sp)
    jal     func_80026D64
    mov.s   $f12, $f22
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f22
    jal     func_80026D90
    swc1    $f18, 0x00B4($sp)
    lui     $at, %hi(var_8088D420)     # $at = 80890000
    lwc1    $f4, %lo(var_8088D420)($at)
    lwc1    $f6, 0x009C($sp)
    swc1    $f0, 0x00B8($sp)
    swc1    $f24, 0x00A4($sp)
    swc1    $f24, 0x00AC($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00BC            # a1 = FFFFFFCC
    addiu   a2, $sp, 0x00B0            # a2 = FFFFFFC0
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFB4
    swc1    $f4, 0x00A8($sp)
    jal     func_8088CDDC
    swc1    $f6, 0x0010($sp)
    lh      t1, 0x00E0($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, t1
    bne     $at, $zero, lbl_8088C404
    nop
lbl_8088C54C:
    sh      $zero, 0x0296(s1)          # 00000296
lbl_8088C550:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f22                  # $f22 = 2.00
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8088CECC
    lw      a1, 0x00F4($sp)
    lh      v0, 0x0244(s1)             # 00000244
    beq     v0, $zero, lbl_8088C57C
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0244(s1)             # 00000244
lbl_8088C57C:
    lh      v0, 0x0246(s1)             # 00000246
    lui     $at, 0x4170                # $at = 41700000
    beq     v0, $zero, lbl_8088C590
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0246(s1)             # 00000246
lbl_8088C590:
    lh      v0, 0x0248(s1)             # 00000248
    beq     v0, $zero, lbl_8088C5A0
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0248(s1)             # 00000248
lbl_8088C5A0:
    lh      v0, 0x024A(s1)             # 0000024A
    beq     v0, $zero, lbl_8088C5B0
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x024A(s1)             # 0000024A
lbl_8088C5B0:
    lh      v0, 0x024C(s1)             # 0000024C
    beq     v0, $zero, lbl_8088C5C0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x024C(s1)             # 0000024C
lbl_8088C5C0:
    lh      v0, 0x0256(s1)             # 00000256
    beq     v0, $zero, lbl_8088C5D0
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0256(s1)             # 00000256
lbl_8088C5D0:
    lh      v0, 0x024E(s1)             # 0000024E
    beq     v0, $zero, lbl_8088C5E0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x024E(s1)             # 0000024E
lbl_8088C5E0:
    lh      v0, 0x0250(s1)             # 00000250
    beq     v0, $zero, lbl_8088C5F0
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0250(s1)             # 00000250
lbl_8088C5F0:
    lh      v0, 0x0252(s1)             # 00000252
    beq     v0, $zero, lbl_8088C600
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0252(s1)             # 00000252
lbl_8088C600:
    lh      v0, 0x0254(s1)             # 00000254
    beq     v0, $zero, lbl_8088C610
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0254(s1)             # 00000254
lbl_8088C610:
    lh      v0, 0x0258(s1)             # 00000258
    beq     v0, $zero, lbl_8088C620
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0258(s1)             # 00000258
lbl_8088C620:
    lh      v0, 0x025A(s1)             # 0000025A
    beq     v0, $zero, lbl_8088C630
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x025A(s1)             # 0000025A
lbl_8088C630:
    lwl     t5, 0x0030(s1)             # 00000030
    lwr     t5, 0x0033(s1)             # 00000033
    mtc1    $at, $f8                   # $f8 = 15.00
    lw      t9, 0x0240(s1)             # 00000240
    swl     t5, 0x00B4(s1)             # 000000B4
    swr     t5, 0x00B7(s1)             # 000000B7
    lhu     t5, 0x0034(s1)             # 00000034
    swc1    $f8, 0x00C4(s1)            # 000000C4
    or      a0, s1, $zero              # a0 = 00000000
    sh      t5, 0x00B8(s1)             # 000000B8
    jalr    $ra, t9
    lw      a1, 0x00F4($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x02F4(s1)             # 000002F4
    jal     func_8002121C
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x0240(s1)             # 00000240
    lui     t6, %hi(func_8088BC98)     # t6 = 80890000
    addiu   t6, t6, %lo(func_8088BC98) # t6 = 8088BC98
    beq     t6, v0, lbl_8088C6D0
    lui     t7, %hi(func_8088B230)     # t7 = 80890000
    addiu   t7, t7, %lo(func_8088B230) # t7 = 8088B230
    beq     t7, v0, lbl_8088C6D0
    lw      t8, 0x00F4($sp)
    lh      t0, 0x00A4(t8)             # 000000A4
    addiu   $at, $zero, 0x0054         # $at = 00000054
    or      a0, t8, $zero              # a0 = 00000000
    beq     t0, $at, lbl_8088C6D0
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    addiu   t1, $zero, 0x001F          # t1 = 0000001F
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t1, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
lbl_8088C6D0:
    lw      t2, 0x00F4($sp)
    addiu   $at, $zero, 0x0054         # $at = 00000054
    or      a1, s1, $zero              # a1 = 00000000
    lh      t3, 0x00A4(t2)             # 000000A4
    addiu   t4, $zero, 0x001D          # t4 = 0000001D
    or      a0, t2, $zero              # a0 = 00000000
    bne     t3, $at, lbl_8088C710
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f18                  # $f18 = 60.00
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t4, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f18, 0x0010($sp)
lbl_8088C710:
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lwc1    $f0, 0x0080(s1)            # 00000080
    lui     $at, 0x46FA                # $at = 46FA0000
    lw      t5, 0x00F4($sp)
    c.le.s  $f0, $f4
    addiu   a0, s1, 0x029C             # a0 = 0000029C
    bc1tl   lbl_8088C750
    lwc1    $f8, 0x00EC(t5)            # 000000EC
    mtc1    $at, $f6                   # $f6 = 32000.00
    nop
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_8088C8A4
    lhu     t8, 0x0088(s1)             # 00000088
    lwc1    $f8, 0x00EC(t5)            # 000000EC
lbl_8088C750:
    lwc1    $f10, 0x00E0(t5)           # 000000E0
    lwc1    $f18, 0x00F0(t5)           # 000000F0
    lwc1    $f4, 0x00E4(t5)            # 000000E4
    sub.s   $f12, $f8, $f10
    lwc1    $f8, 0x00E8(t5)            # 000000E8
    lwc1    $f6, 0x00F4(t5)            # 000000F4
    sub.s   $f2, $f18, $f4
    mul.s   $f10, $f12, $f12
    lui     $at, 0x4320                # $at = 43200000
    sub.s   $f14, $f6, $f8
    mul.s   $f18, $f2, $f2
    lwc1    $f8, 0x0008(s1)            # 00000008
    lwc1    $f16, 0x000C(s1)           # 0000000C
    mul.s   $f6, $f14, $f14
    swc1    $f8, 0x0024(s1)            # 00000024
    or      s0, $zero, $zero           # s0 = 00000000
    add.s   $f4, $f10, $f18
    lwc1    $f10, 0x0010(s1)           # 00000010
    add.s   $f0, $f4, $f6
    swc1    $f10, 0x002C(s1)           # 0000002C
    lw      t9, 0x00F4($sp)
    mtc1    $at, $f4                   # $f4 = 160.00
    sqrt.s  $f0, $f0
    lwc1    $f8, 0x00E4(t9)            # 000000E4
    lui     $at, 0x4396                # $at = 43960000
    add.s   $f10, $f16, $f8
    div.s   $f18, $f2, $f0
    mul.s   $f6, $f18, $f4
    add.s   $f18, $f10, $f6
    swc1    $f18, 0x0028(s1)           # 00000028
    lwc1    $f4, 0x0028(s1)            # 00000028
    c.lt.s  $f4, $f16
    nop
    bc1fl   lbl_8088C7F0
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    nop
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x0028(s1)           # 00000028
    lui     $at, 0xC000                # $at = C0000000
lbl_8088C7F0:
    mtc1    $at, $f6                   # $f6 = -2.00
    swc1    $f24, 0x0068(s1)           # 00000068
    addiu   a1, s1, 0x0008             # a1 = 00000008
    swc1    $f6, 0x006C(s1)            # 0000006C
    jal     func_80063CAC              # Vec3f_Copy
    sw      a1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s1, 0x02A8             # a0 = 000002A8
    sh      $zero, 0x0292(s1)          # 00000292
    lh      v0, 0x0292(s1)             # 00000292
    swc1    $f24, 0x02F0(s1)           # 000002F0
    swc1    $f24, 0x02EC(s1)           # 000002EC
    swc1    $f24, 0x02E8(s1)           # 000002E8
    swc1    $f24, 0x02E4(s1)           # 000002E4
    swc1    $f24, 0x02E0(s1)           # 000002E0
    swc1    $f24, 0x02C8(s1)           # 000002C8
    swc1    $f24, 0x02C4(s1)           # 000002C4
    swc1    $f24, 0x02C0(s1)           # 000002C0
    swc1    $f24, 0x02BC(s1)           # 000002BC
    swc1    $f24, 0x02B8(s1)           # 000002B8
    swc1    $f24, 0x02B4(s1)           # 000002B4
    swc1    $f24, 0x02CC(s1)           # 000002CC
    swc1    $f24, 0x02D0(s1)           # 000002D0
    sh      v0, 0x0290(s1)             # 00000290
    sh      v0, 0x028E(s1)             # 0000028E
    sh      v0, 0x0296(s1)             # 00000296
    sh      v0, 0x0288(s1)             # 00000288
    sh      v0, 0x0284(s1)             # 00000284
    sh      v0, 0x0298(s1)             # 00000298
lbl_8088C868:
    sll     t6, s0,  2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    mtc1    $zero, $f18                # $f18 = 0.00
    sra     s0, s0, 16
    slti    $at, s0, 0x000A
    addu    t7, s1, t6
    bne     $at, $zero, lbl_8088C868
    swc1    $f18, 0x025C(t7)           # 0000025C
    lui     t0, %hi(func_8088C210)     # t0 = 80890000
    addiu   t0, t0, %lo(func_8088C210) # t0 = 8088C210
    sh      $zero, 0x0298(s1)          # 00000298
    b       lbl_8088CBB4
    sw      t0, 0x0240(s1)             # 00000240
    lhu     t8, 0x0088(s1)             # 00000088
lbl_8088C8A4:
    andi    t1, t8, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_8088C950
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f8, 0x0084(s1)            # 00000084
    c.lt.s  $f4, $f8
    nop
    bc1f    lbl_8088C950
    nop
    lw      t3, 0x0240(s1)             # 00000240
    lui     s0, %hi(func_8088BCE8)     # s0 = 80890000
    addiu   s0, s0, %lo(func_8088BCE8) # s0 = 8088BCE8
    beq     s0, t3, lbl_8088C950
    nop
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8088C950
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8088C950
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8088C950
    addiu   a0, $sp, 0x00BC            # a0 = FFFFFFCC
    swc1    $f24, 0x0060(s1)           # 00000060
    swc1    $f24, 0x006C(s1)           # 0000006C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x0024             # a1 = 00000024
    lwc1    $f10, 0x00C0($sp)
    lwc1    $f6, 0x0084(s1)            # 00000084
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t4, $zero, 0x0190          # t4 = 00000190
    add.s   $f18, $f10, $f6
    addiu   a1, $sp, 0x00BC            # a1 = FFFFFFCC
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f18, 0x00C0($sp)
    sh      t2, 0x024A(s1)             # 0000024A
    sw      t4, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8001CF94
    lw      a0, 0x00F4($sp)
    sh      $zero, 0x024C(s1)          # 0000024C
    b       lbl_8088CBB4
    sw      s0, 0x0240(s1)             # 00000240
lbl_8088C950:
    lui     a0, %hi(var_8088D220)      # a0 = 80890000
    addiu   a0, a0, %lo(var_8088D220)  # a0 = 8088D220
    lh      t5, 0x0000(a0)             # 8088D220
    bnel    t5, $zero, lbl_8088CA1C
    lh      t8, 0x0298(s1)             # 00000298
    lh      t9, 0x0294(s1)             # 00000294
    bgtzl   t9, lbl_8088CA1C
    lh      t8, 0x0298(s1)             # 00000298
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8088CA18
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8088CA18
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v0, $at, lbl_8088CA1C
    lh      t8, 0x0298(s1)             # 00000298
    lwc1    $f4, 0x0090(s1)            # 00000090
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    lui     t0, %hi(func_8088BE88)     # t0 = 80890000
    c.lt.s  $f20, $f4
    sh      t6, 0x024E(s1)             # 0000024E
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t7, $zero, 0x2710          # t7 = 00002710
    bc1f    lbl_8088CA18
    addiu   t0, t0, %lo(func_8088BE88) # t0 = 8088BE88
    sh      v1, 0x0000(a0)             # 8088D220
    lwc1    $f0, 0x0024(s1)            # 00000024
    sh      $zero, 0x028E(s1)          # 0000028E
    lh      v0, 0x028E(s1)             # 0000028E
    swc1    $f0, 0x02A8(s1)            # 000002A8
    swc1    $f0, 0x029C(s1)            # 0000029C
    lwc1    $f0, 0x0028(s1)            # 00000028
    swc1    $f24, 0x0068(s1)           # 00000068
    swc1    $f24, 0x02EC(s1)           # 000002EC
    swc1    $f0, 0x02AC(s1)            # 000002AC
    swc1    $f0, 0x02A0(s1)            # 000002A0
    lwc1    $f0, 0x002C(s1)            # 0000002C
    swc1    $f24, 0x02F0(s1)           # 000002F0
    swc1    $f24, 0x0278(s1)           # 00000278
    swc1    $f24, 0x0270(s1)           # 00000270
    swc1    $f24, 0x0274(s1)           # 00000274
    swc1    $f24, 0x027C(s1)           # 0000027C
    sh      t7, 0x0250(s1)             # 00000250
    sh      v1, 0x0298(s1)             # 00000298
    sw      t0, 0x0240(s1)             # 00000240
    sh      v0, 0x024A(s1)             # 0000024A
    sh      v0, 0x024C(s1)             # 0000024C
    swc1    $f0, 0x02B0(s1)            # 000002B0
    b       lbl_8088CBB4
    swc1    $f0, 0x02A4(s1)            # 000002A4
lbl_8088CA18:
    lh      t8, 0x0298(s1)             # 00000298
lbl_8088CA1C:
    lui     $at, 0x41A0                # $at = 41A00000
    beql    t8, $zero, lbl_8088CA7C
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $at, $f10                  # $f10 = 20.00
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f8, 0x008C(s1)            # 0000008C
    lw      t1, 0x00E4($sp)
    mul.s   $f18, $f10, $f6
    c.lt.s  $f8, $f18
    nop
    bc1fl   lbl_8088CA7C
    or      a0, s1, $zero              # a0 = 00000000
    lw      t3, 0x066C(t1)             # 0000066C
    lw      a0, 0x00F4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    sll     t2, t3,  5
    bltz    t2, lbl_8088CA78
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    mfc1    a2, $f22
    lh      a3, 0x0032(s1)             # 00000032
    sw      t4, 0x0014($sp)
    jal     func_80022E7C
    swc1    $f24, 0x0010($sp)
lbl_8088CA78:
    or      a0, s1, $zero              # a0 = 00000000
lbl_8088CA7C:
    jal     func_8088C26C
    lw      a1, 0x00F4($sp)
    lh      t5, 0x0252(s1)             # 00000252
    bnel    t5, $zero, lbl_8088CAB8
    lh      t0, 0x0250(s1)             # 00000250
    lw      t6, 0x0240(s1)             # 00000240
    lui     t9, %hi(func_8088B9DC)     # t9 = 80890000
    addiu   t9, t9, %lo(func_8088B9DC) # t9 = 8088B9DC
    bne     t9, t6, lbl_8088CAB4
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sh      t7, 0x0252(s1)             # 00000252
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38FF          # a1 = 000038FF
lbl_8088CAB4:
    lh      t0, 0x0250(s1)             # 00000250
lbl_8088CAB8:
    lw      t8, 0x004C($sp)
    bnel    t0, $zero, lbl_8088CB00
    lh      t4, 0x0298(s1)             # 00000298
    lw      t1, 0x0240(s1)             # 00000240
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    or      a0, s1, $zero              # a0 = 00000000
    beq     t8, t1, lbl_8088CAF4
    addiu   a1, $zero, 0x2811          # a1 = 00002811
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sh      t3, 0x0250(s1)             # 00000250
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2812          # a1 = 00002812
    b       lbl_8088CB00
    lh      t4, 0x0298(s1)             # 00000298
lbl_8088CAF4:
    jal     func_80022FD0
    sh      t2, 0x0250(s1)             # 00000250
    lh      t4, 0x0298(s1)             # 00000298
lbl_8088CB00:
    addiu   s0, s1, 0x02FC             # s0 = 000002FC
    or      a1, s0, $zero              # a1 = 000002FC
    bne     t4, $zero, lbl_8088CBB4
    or      a0, s1, $zero              # a0 = 00000000
    lui     t5, %hi(func_8088B9DC)     # t5 = 80890000
    addiu   t5, t5, %lo(func_8088B9DC) # t5 = 8088B9DC
    jal     func_80050B00
    sw      t5, 0x004C($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8088CB5C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_8088CB5C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8088CB5C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8088CB5C
    lw      a0, 0x00F4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 000002FC
lbl_8088CB5C:
    lw      v0, 0x0240(s1)             # 00000240
    lw      t6, 0x004C($sp)
    lui     t7, %hi(func_8088BAEC)     # t7 = 80890000
    addiu   t7, t7, %lo(func_8088BAEC) # t7 = 8088BAEC
    beql    t6, v0, lbl_8088CBB8
    lw      $ra, 0x003C($sp)
    beq     t7, v0, lbl_8088CBB4
    lui     t0, %hi(func_8088B104)     # t0 = 80890000
    addiu   t0, t0, %lo(func_8088B104) # t0 = 8088B104
    beq     t0, v0, lbl_8088CBB4
    lui     t8, %hi(func_8088B188)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088B188) # t8 = 8088B188
    beq     t8, v0, lbl_8088CBB4
    lui     t1, %hi(func_8088B230)     # t1 = 80890000
    addiu   t1, t1, %lo(func_8088B230) # t1 = 8088B230
    beq     t1, v0, lbl_8088CBB4
    lw      a0, 0x00F4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 000002FC
lbl_8088CBB4:
    lw      $ra, 0x003C($sp)
lbl_8088CBB8:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F0           # $sp += 0xF0


func_8088CBD4:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    sw      a0, 0x0010($sp)
    sw      a2, 0x0018($sp)
    sw      a3, 0x001C($sp)
    lui     t7, %hi(var_8088D340)      # t7 = 80890000
    addiu   t7, t7, %lo(var_8088D340)  # t7 = 8088D340
    lw      t9, 0x0000(t7)             # 8088D340
    addiu   t6, $sp, 0x0000            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 8088D344
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 8088D348
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      t8, 0x0004(t6)             # FFFFFFF4
    bne     a1, $at, lbl_8088CC34
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      v0, 0x0024($sp)
    lw      v1, 0x0020($sp)
    lwc1    $f4, 0x02CC(v0)            # 000002CC
    lh      t0, 0x0002(v1)             # 00000002
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    addu    t5, t0, t4
    sh      t5, 0x0002(v1)             # 00000002
lbl_8088CC34:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      v0, 0x0024($sp)
    bne     a1, $at, lbl_8088CC60
    lw      v1, 0x0020($sp)
    lwc1    $f8, 0x02D0(v0)            # 000002D0
    lh      t6, 0x0002(v1)             # 00000002
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    addu    t2, t6, t1
    sh      t2, 0x0002(v1)             # 00000002
lbl_8088CC60:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    a1, $at, lbl_8088CCC4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lwc1    $f16, 0x02C8(v0)           # 000002C8
    lh      t3, 0x0000(v1)             # 00000000
    lh      t9, 0x0002(v1)             # 00000002
    trunc.w.s $f18, $f16
    lh      t5, 0x0004(v1)             # 00000004
    mfc1    t7, $f18
    nop
    addu    t8, t3, t7
    sh      t8, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x02C4(v0)            # 000002C4
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    addu    t4, t9, t0
    sh      t4, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x02C0(v0)            # 000002C0
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    addu    t1, t5, t6
    sh      t1, 0x0004(v1)             # 00000004
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_8088CCC4:
    bnel    a1, $at, lbl_8088CD24
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f16, 0x02BC(v0)           # 000002BC
    lh      t2, 0x0000(v1)             # 00000000
    lh      t8, 0x0002(v1)             # 00000002
    trunc.w.s $f18, $f16
    lh      t4, 0x0004(v1)             # 00000004
    mfc1    t3, $f18
    nop
    addu    t7, t2, t3
    sh      t7, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x02B8(v0)            # 000002B8
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    nop
    addu    t0, t8, t9
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x02B4(v0)            # 000002B4
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    addu    t6, t4, t5
    sh      t6, 0x0004(v1)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8088CD24:
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_8088CD2C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lui     t7, %hi(var_8088D34C)      # t7 = 80890000
    addiu   t7, t7, %lo(var_8088D34C)  # t7 = 8088D34C
    lw      t9, 0x0000(t7)             # 8088D34C
    addiu   t6, $sp, 0x0038            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 8088D350
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 8088D354
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t0, 0x004C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t0)             # 00000000
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t1, %hi(func_8088CBD4)     # t1 = 80890000
    addiu   t1, t1, %lo(func_8088CBD4) # t1 = 8088CBD4
    sw      t1, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x004C($sp)
    lw      t3, 0x0240(s0)             # 00000240
    lui     t2, %hi(func_8088B230)     # t2 = 80890000
    addiu   t2, t2, %lo(func_8088B230) # t2 = 8088B230
    bne     t2, t3, lbl_8088CDBC
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80026AD0
    lw      a3, 0x004C($sp)
lbl_8088CDBC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8088D080
    lw      a1, 0x004C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8088CDDC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    addiu   v1, a0, 0x0348             # v1 = 00000348
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8088CDEC:
    lbu     t6, 0x0000(v1)             # 00000348
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_8088CEB0
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v1)             # 00000348
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0004(v1)             # 0000034C
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    sw      t8, 0x0008(v1)             # 00000350
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v1)             # 00000354
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v1)             # 00000358
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v1)             # 0000035C
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v1)             # 00000360
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v1)             # 00000364
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v1)             # 00000368
    lw      t3, 0x0008(a3)             # 00000008
    sb      $zero, 0x0034(v1)          # 0000037C
    sw      t3, 0x0024(v1)             # 0000036C
    lwc1    $f4, 0x0030($sp)
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(v1)            # 00000374
    jal     func_80026D64
    sw      v1, 0x0018($sp)
    trunc.w.s $f10, $f0
    lw      v1, 0x0018($sp)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    mfc1    t7, $f10
    nop
    addiu   t8, t7, 0x0028             # t8 = 00000028
    jal     func_80026D64
    sh      t8, 0x0028(v1)             # 00000028
    trunc.w.s $f16, $f0
    lw      v1, 0x0018($sp)
    mfc1    t0, $f16
    b       lbl_8088CEBC
    sh      t0, 0x002A(v1)             # 0000002A
lbl_8088CEB0:
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8088CDEC
    addiu   v1, v1, 0x0038             # v1 = 00000038
lbl_8088CEBC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088CECC:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0054($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f30, 0x0038($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a1, 0x005C($sp)
    lui     $at, %hi(var_8088D424)     # $at = 80890000
    lwc1    $f30, %lo(var_8088D424)($at)
    lui     $at, %hi(var_8088D428)     # $at = 80890000
    lwc1    $f28, %lo(var_8088D428)($at)
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f26                  # $f26 = -0.50
    lui     $at, %hi(var_8088D42C)     # $at = 80890000
    lwc1    $f24, %lo(var_8088D42C)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   s0, a0, 0x0348             # s0 = 00000348
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $zero, 0x0BB8          # s3 = 00000BB8
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_8088CF3C:
    lbu     t6, 0x0000(s0)             # 00000348
    beql    t6, $zero, lbl_8088D038
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lwc1    $f0, 0x0010(s0)            # 00000358
    lwc1    $f4, 0x0004(s0)            # 0000034C
    lwc1    $f2, 0x0014(s0)            # 0000035C
    lwc1    $f8, 0x0008(s0)            # 00000350
    lwc1    $f12, 0x0018(s0)           # 00000360
    lwc1    $f16, 0x000C(s0)           # 00000354
    add.s   $f6, $f4, $f0
    lwc1    $f4, 0x001C(s0)            # 00000364
    lbu     t7, 0x0034(s0)             # 0000037C
    add.s   $f10, $f8, $f2
    lwc1    $f8, 0x0020(s0)            # 00000368
    swc1    $f6, 0x0004(s0)            # 0000034C
    add.s   $f18, $f16, $f12
    lwc1    $f16, 0x0024(s0)           # 0000036C
    swc1    $f10, 0x0008(s0)           # 00000350
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x000C(s0)           # 00000354
    lbu     t9, 0x0000(s0)             # 00000348
    add.s   $f10, $f2, $f8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0034(s0)             # 0000037C
    add.s   $f18, $f12, $f16
    swc1    $f6, 0x0010(s0)            # 00000358
    swc1    $f10, 0x0014(s0)           # 0000035C
    bne     s2, t9, lbl_8088D034
    swc1    $f18, 0x0018(s0)           # 00000360
    lh      t0, 0x002A(s0)             # 00000372
    mfc1    a1, $f20
    mfc1    a2, $f22
    mfc1    a3, $f24
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x002A(s0)             # 00000372
    jal     func_80064280
    addiu   a0, s0, 0x0010             # a0 = 00000358
    mfc1    a1, $f20
    mfc1    a2, $f22
    mfc1    a3, $f24
    jal     func_80064280
    addiu   a0, s0, 0x0018             # a0 = 00000360
    lwc1    $f4, 0x0014(s0)            # 0000035C
    c.lt.s  $f4, $f26
    nop
    bc1fl   lbl_8088D000
    lh      t2, 0x002A(s0)             # 00000372
    swc1    $f26, 0x0014(s0)           # 0000035C
    lh      t2, 0x002A(s0)             # 00000372
lbl_8088D000:
    multu   t2, s3
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f6, $f0, $f28
    lh      t3, 0x0028(s0)             # 00000370
    lbu     t4, 0x0034(s0)             # 0000037C
    slt     $at, t3, t4
    mul.s   $f8, $f6, $f30
    beq     $at, $zero, lbl_8088D034
    swc1    $f8, 0x0030(s0)            # 00000378
    sb      $zero, 0x0000(s0)          # 00000348
lbl_8088D034:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_8088D038:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0014
    bne     $at, $zero, lbl_8088CF3C
    addiu   s0, s0, 0x0038             # s0 = 00000380
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    ldc1    $f30, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_8088D080:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s8, 0x0050($sp)
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x0000(s8)             # 00000000
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s1, a2, 0x0348             # s1 = 00000348
    or      s2, a0, $zero              # s2 = 00000000
    jal     func_8007E2C0
    nop
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f24                  # $f24 = -1000.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
lbl_8088D0F4:
    lbu     t6, 0x0000(s1)             # 00000348
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s6, 0x0600                 # s6 = 06000000
    bne     t6, $at, lbl_8088D1C4
    addiu   s6, s6, 0x2428             # s6 = 06002428
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s4, $zero, lbl_8088D13C
    addu    s3, s8, $at
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x23B0             # t8 = 060023B0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000001
    andi    s4, s4, 0x00FF             # s4 = 00000001
lbl_8088D13C:
    lwc1    $f12, 0x0004(s1)           # 0000034C
    lwc1    $f14, 0x0008(s1)           # 00000350
    lw      a2, 0x000C(s1)             # 00000354
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f12, 0x002C(s1)           # 00000374
    mfc1    a2, $f22
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0030(s1)           # 00000378
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f24
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_8088D1C4:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16
    sra     s5, s5, 16
    slti    $at, s5, 0x0014
    bne     $at, $zero, lbl_8088D0F4
    addiu   s1, s1, 0x0038             # s1 = 00000380
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
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
    nop
    nop

.section .data

var_8088D220: .word 0x00000000
var_8088D224: .word 0x00190600, 0x00800010, 0x00130000, 0x000007A8
.word func_8088A4C0
.word func_8088A9C4
.word func_8088C324
.word func_8088CD2C
var_8088D244: .word 0x459C4000, 0xC59C4000
var_8088D24C: .word 0x459C4000
var_8088D250: .word 0x453B8000, 0x457A0000
var_8088D258: .word 0xC4D42000, 0x42A00000
var_8088D260: .word 0x44598000
var_8088D264: .word \
0x42640000, 0x43A00000, 0xC4284000, 0x44470000, \
0x42A00000, 0x44CCE000, 0x44B12000, 0x43E88000, \
0x43290000, 0xC2700000, 0x00000000, 0xC2380000, \
0xC3770000, 0x42A00000, 0x44558000, 0x4486E000, \
0x42A00000, 0xC23C0000
var_8088D2AC: .word 0x02000400, 0x08001000, 0x20004000, 0x80000000
var_8088D2BC: .word 0x00000000
var_8088D2C0: .word 0x00000000
var_8088D2C4: .word \
0x05000901, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x000F0019, 0x00040000, 0x00000000
var_8088D2F0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000F0019, 0x00040000, 0x00000000
var_8088D31C: .word 0x801F0006, 0xB86CF830, 0x304C0000
var_8088D328: .word 0x00000000, 0x00000000, 0x00000000
var_8088D334: .word 0x00000000, 0x00000000, 0x00000000
var_8088D340: .word 0x00000000, 0x00000000, 0x00000000
var_8088D34C: .word \
0x3E19999A, 0x3E19999A, 0x3E19999A, 0x00000000, \
0x00000000

.section .rodata

var_8088D360: .word 0x44BF4000
var_8088D364: .word 0x44BF4000
var_8088D368: .word 0x407F5C29
var_8088D36C: .word var_8088A854
.word var_8088A838
.word var_8088A874
.word var_8088A8F8
.word var_8088A894
.word lbl_8088A904
.word var_8088A8B4
.word lbl_8088A904
.word lbl_8088A904
.word lbl_8088A904
.word lbl_8088A904
.word lbl_8088A904
.word var_8088A8D4
.word var_8088A8E0
var_8088D3A4: .word 0xC61C4000
var_8088D3A8: .word var_8088AB00
.word var_8088AB0C
.word var_8088AB3C
.word var_8088AB9C
.word var_8088ABD0
.word var_8088ABDC
var_8088D3C0: .word 0x45DAC000
var_8088D3C4: .word 0x46C35000
var_8088D3C8: .word 0x45BB8000
var_8088D3CC: .word 0xC61C4000
var_8088D3D0: .word 0xC61C4000
var_8088D3D4: .word 0x461C4000
var_8088D3D8: .word 0x453B8000
var_8088D3DC: .word 0x465AC000
var_8088D3E0: .word 0x461C4000
var_8088D3E4: .word 0x3E99999A
var_8088D3E8: .word 0x3FFEB852
var_8088D3EC: .word 0x407F5C29
var_8088D3F0: .word 0x407F5C29
var_8088D3F4: .word 0x4622F983
var_8088D3F8: .word 0x4622F983
var_8088D3FC: .word 0x459C4000
var_8088D400: .word 0x459C4000
var_8088D404: .word 0x459C4000
var_8088D408: .word 0x465AC000
var_8088D40C: .word 0x461C4000
var_8088D410: .word 0x3FFEB852
var_8088D414: .word 0x3FFEB852
var_8088D418: .word 0x4622F983
var_8088D41C: .word 0x407F5C29
var_8088D420: .word 0xBE19999A
var_8088D424: .word 0x3E4CCCCD
var_8088D428: .word 0x40490FDB
var_8088D42C: .word 0x3D4CCCCD

