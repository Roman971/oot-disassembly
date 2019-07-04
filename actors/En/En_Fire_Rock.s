.section .text
func_80980430:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     a2, 0x8002                 # a2 = 80020000
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    lui     a3, 0x4170                 # a3 = 41700000
    sw      t7, 0x0030($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    sh      t8, 0x017C(s0)             # 0000017C
    lh      v0, 0x017C(s0)             # 0000017C
    beql    v0, $at, lbl_809804EC
    sltiu   $at, v0, 0x0007
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lh      v0, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_809804E8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f6, $f0, $f4
    jal     func_80026D64
    swc1    $f6, 0x013C(s0)            # 0000013C
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x0140(s0)           # 00000140
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    lh      v0, 0x017C(s0)             # 0000017C
    add.s   $f18, $f0, $f16
    swc1    $f18, 0x0144(s0)           # 00000144
lbl_809804E8:
    sltiu   $at, v0, 0x0007
lbl_809804EC:
    beq     $at, $zero, lbl_80980804
    sll     t9, v0,  2
    lui     $at, %hi(var_809813C0)     # $at = 80980000
    addu    $at, $at, t9
    lw      t9, %lo(var_809813C0)($at)
    jr      t9
    nop
var_80980508:
    lui     t0, %hi(func_80980D58)     # t0 = 80980000
    addiu   t0, t0, %lo(func_80980D58) # t0 = 80980D58
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_8098080C
    sw      t0, 0x0158(s0)             # 00000158
var_8098051C:
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_8098138C)      # a3 = 80980000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, %lo(var_8098138C)  # a3 = 8098138C
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lw      a0, 0x003C($sp)
    addiu   t1, $zero, 0x0017          # t1 = 00000017
    addiu   t2, $zero, 0x0025          # t2 = 00000025
    addiu   t3, $zero, 0xFFF6          # t3 = FFFFFFF6
    sh      t1, 0x01C4(s0)             # 000001C4
    sh      t2, 0x01C6(s0)             # 000001C6
    sh      t3, 0x01C8(s0)             # 000001C8
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lui     t5, %hi(func_80980E48)     # t5 = 80980000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, t5, %lo(func_80980E48) # t5 = 80980E48
    sb      t4, 0x00AE(s0)             # 000000AE
    beq     $zero, $zero, lbl_8098080C
    sw      t5, 0x0158(s0)             # 00000158
var_80980598:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90
    nop
    lw      t6, 0x0030($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f4, 0x0024(t6)            # 00000024
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x016C(s0)            # 0000016C
    lw      t7, 0x0030($sp)
    lwc1    $f8, 0x002C(t7)            # 0000002C
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x0174(s0)           # 00000174
var_809805D4:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lui     $at, %hi(var_809813DC)     # $at = 80980000
    lwc1    $f4, %lo(var_809813DC)($at)
    div.s   $f18, $f0, $f16
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f2, $f18, $f4
    mfc1    a1, $f2
    jal     func_80020F88
    swc1    $f2, 0x015C(s0)            # 0000015C
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80981360)      # a3 = 80980000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, %lo(var_80981360)  # a3 = 80981360
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, %hi(var_809813E0)     # $at = 80980000
    jal     func_80026D90
    lwc1    $f12, %lo(var_809813E0)($at)
    trunc.w.s $f6, $f0
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     t9, %hi(func_80980884)     # t9 = 80980000
    mfc1    v0, $f6
    addiu   t9, t9, %lo(func_80980884) # t9 = 80980884
    sw      t9, 0x0158(s0)             # 00000158
    swc1    $f8, 0x00C4(s0)            # 000000C4
    sh      v0, 0x00B6(s0)             # 000000B6
    beq     $zero, $zero, lbl_8098080C
    sh      v0, 0x0032(s0)             # 00000032
var_8098066C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64
    nop
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    add.s   $f16, $f0, $f10
    jal     func_80026D64
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    add.s   $f4, $f0, $f18
    jal     func_80026D64
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, %hi(var_809813E4)     # $at = 80980000
    lwc1    $f10, %lo(var_809813E4)($at)
    div.s   $f8, $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f2, $f8, $f10
    mfc1    a1, $f2
    jal     func_80020F88
    swc1    $f2, 0x015C(s0)            # 0000015C
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f16                  # $f16 = -1.50
    addiu   a1, s0, 0x0184             # a1 = 00000184
    swc1    $f16, 0x006C(s0)           # 0000006C
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80981360)      # a3 = 80980000
    lw      a1, 0x0024($sp)
    addiu   a3, a3, %lo(var_80981360)  # a3 = 80981360
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, %hi(var_809813E8)     # $at = 80980000
    swc1    $f18, 0x00C4(s0)           # 000000C4
    jal     func_80026D90
    lwc1    $f12, %lo(var_809813E8)($at)
    trunc.w.s $f4, $f0
    lui     t1, %hi(func_80980884)     # t1 = 80980000
    addiu   t1, t1, %lo(func_80980884) # t1 = 80980884
    sw      t1, 0x0158(s0)             # 00000158
    mfc1    v0, $f4
    nop
    sh      v0, 0x00B6(s0)             # 000000B6
    beq     $zero, $zero, lbl_8098080C
    sh      v0, 0x0032(s0)             # 00000032
var_8098074C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64
    nop
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    add.s   $f8, $f0, $f6
    jal     func_80026D64
    swc1    $f8, 0x0060(s0)            # 00000060
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    add.s   $f16, $f0, $f10
    jal     func_80026D64
    swc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f18                  # $f18 = 500.00
    lui     $at, %hi(var_809813EC)     # $at = 80980000
    lwc1    $f6, %lo(var_809813EC)($at)
    div.s   $f4, $f0, $f18
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f2, $f4, $f6
    mfc1    a1, $f2
    jal     func_80020F88
    swc1    $f2, 0x015C(s0)            # 0000015C
    lui     $at, %hi(var_809813F0)     # $at = 80980000
    lwc1    $f8, %lo(var_809813F0)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, %hi(var_809813F4)     # $at = 80980000
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f10, 0x00C4(s0)           # 000000C4
    jal     func_80026D90
    lwc1    $f12, %lo(var_809813F4)($at)
    trunc.w.s $f16, $f0
    lui     t3, %hi(func_80980884)     # t3 = 80980000
    addiu   t3, t3, %lo(func_80980884) # t3 = 80980884
    sw      t3, 0x0158(s0)             # 00000158
    mfc1    v0, $f16
    nop
    sh      v0, 0x00B6(s0)             # 000000B6
    beq     $zero, $zero, lbl_8098080C
    sh      v0, 0x0032(s0)             # 00000032
lbl_80980804:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8098080C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80980820:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0118(a2)             # 00000118
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8098086C
    nop
    lw      t6, 0x0180(a2)             # 00000180
    bne     t6, v0, lbl_8098086C
    nop
    lw      t7, 0x0130(v0)             # 00000130
    or      v1, v0, $zero              # v1 = 00000000
    beq     t7, $zero, lbl_8098086C
    nop
    lh      v0, 0x0148(v0)             # 00000148
    blez    v0, lbl_8098086C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0148(v1)             # 00000148
lbl_8098086C:
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80980884:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     $at, %hi(var_809813F8)     # $at = 80980000
    lwc1    $f4, %lo(var_809813F8)($at)
    lwc1    $f6, 0x0080(s1)            # 00000080
    lw      s0, 0x1C44(s2)             # 00001C44
    lui     $at, 0x4348                # $at = 43480000
    c.eq.s  $f4, $f6
    nop
    bc1t    lbl_809808E8
    nop
    lwc1    $f2, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f0, 0x0028(s1)            # 00000028
    sub.s   $f10, $f2, $f8
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_809808FC
    lh      v0, 0x017C(s1)             # 0000017C
lbl_809808E8:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80980BC0
    lw      $ra, 0x0044($sp)
    lh      v0, 0x017C(s1)             # 0000017C
lbl_809808FC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_8098092C
    c.lt.s  $f2, $f0
    beq     v0, $at, lbl_80980A38
    lui     t7, 0x0001                 # t7 = 00010000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809809C8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    beq     $zero, $zero, lbl_80980A68
    lhu     t9, 0x0088(s1)             # 00000088
    c.lt.s  $f2, $f0
lbl_8098092C:
    lui     $at, 0xC42F                # $at = C42F0000
    bc1fl   lbl_809809CC
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f2, 0x0024(s0)            # 00000024
    mtc1    $at, $f16                  # $f16 = 20.00
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f16, $f2
    nop
    bc1tl   lbl_8098099C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, %hi(var_809813FC)     # $at = 80980000
    c.lt.s  $f2, $f18
    nop
    bc1tl   lbl_8098099C
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f0, 0x002C(s0)            # 0000002C
    lwc1    $f4, %lo(var_809813FC)($at)
    lui     $at, %hi(var_80981400)     # $at = 80980000
    c.lt.s  $f4, $f0
    nop
    bc1tl   lbl_8098099C
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f6, %lo(var_80981400)($at)
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_809809C8
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8098099C:
    mtc1    $at, $f20                  # $f20 = 1.00
    mfc1    a1, $f2
    addiu   a0, s1, 0x0024             # a0 = 00000024
    mfc1    a2, $f20
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a2, $f20
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    lw      a1, 0x002C(s0)             # 0000002C
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
lbl_809809C8:
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809809CC:
    mtc1    $at, $f20                  # $f20 = 20.00
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f8, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0058($sp)
    lwc1    $f16, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x005C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0018($sp)
    add.s   $f6, $f0, $f4
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f6, 0x0060($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF0
    jal     func_8001DFEC
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    beq     $zero, $zero, lbl_80980A68
    lhu     t9, 0x0088(s1)             # 00000088
lbl_80980A38:
    addu    t7, t7, s2
    lw      t7, 0x1DE4(t7)             # 00001DE4
    or      a0, s1, $zero              # a0 = 00000000
    andi    t8, t7, 0x0003             # t8 = 00000000
    bnel    t8, $zero, lbl_80980A5C
    lui     $at, 0x41A0                # $at = 41A00000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38D7          # a1 = 000038D7
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80980A5C:
    mtc1    $at, $f20                  # $f20 = 20.00
    nop
    lhu     t9, 0x0088(s1)             # 00000088
lbl_80980A68:
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80980BC0
    lw      $ra, 0x0044($sp)
    lh      t1, 0x0178(s1)             # 00000178
    bnel    t1, $zero, lbl_80980BC0
    lw      $ra, 0x0044($sp)
    lh      v0, 0x017C(s1)             # 0000017C
    addiu   s0, s1, 0x0024             # s0 = 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80980AA4
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80980AB4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80980B68
    or      a1, s1, $zero              # a1 = 00000000
lbl_80980AA4:
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80026CF4
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80980AB4:
    lw      a3, 0x00C4(s1)             # 000000C4
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000024
    jal     func_800260E8
    swc1    $f8, 0x0014($sp)
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80980AF4:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f10, 0x0024(s1)           # 00000024
    mov.s   $f12, $f20
    add.s   $f16, $f0, $f10
    swc1    $f16, 0x0058($sp)
    lwc1    $f18, 0x0080(s1)           # 00000080
    jal     func_80026D90
    swc1    $f18, 0x005C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    sw      t5, 0x0018($sp)
    add.s   $f6, $f0, $f4
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f6, 0x0060($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF0
    jal     func_8001DFEC
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     s0, $at, lbl_80980AF4
    nop
    lui     t6, %hi(func_80980BD8)     # t6 = 80980000
    addiu   t6, t6, %lo(func_80980BD8) # t6 = 80980BD8
    beq     $zero, $zero, lbl_80980BBC
    sw      t6, 0x0158(s1)             # 00000158
lbl_80980B68:
    lw      a3, 0x00C4(s1)             # 000000C4
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000001
    jal     func_800260E8
    swc1    $f8, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000001
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x2802          # a3 = 00002802
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80980BBC:
    lw      $ra, 0x0044($sp)
lbl_80980BC0:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80980BD8:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s5, 0x0068($sp)
    sw      s1, 0x0058($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s4, 0x0064($sp)
    sw      s3, 0x0060($sp)
    sw      s2, 0x005C($sp)
    sw      s0, 0x0054($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lh      v0, 0x017C(s1)             # 0000017C
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80980C38
    or      s0, $zero, $zero           # s0 = 00000000
    beq     v0, $at, lbl_80980C40
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80980C44
    nop
lbl_80980C38:
    beq     $zero, $zero, lbl_80980C44
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80980C40:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80980C44:
    beq     v1, $zero, lbl_80980D18
    addiu   s2, s5, 0x1C24             # s2 = 00001C24
    lui     $at, %hi(var_80981404)     # $at = 80980000
    lwc1    $f28, %lo(var_80981404)($at)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    lui     $at, 0x4040                # $at = 40400000
    sll     s3, v1, 16
    mtc1    $at, $f24                  # $f24 = 3.00
    sra     s3, s3, 16
    addiu   s4, $zero, 0x0002          # s4 = 00000002
lbl_80980C70:
    jal     func_80026D90
    mov.s   $f12, $f24
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    mov.s   $f22, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f4, 0x0024(s1)            # 00000024
    or      a0, s2, $zero              # a0 = 00001C24
    add.s   $f10, $f8, $f26
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00B5          # a2 = 000000B5
    add.s   $f6, $f20, $f4
    add.s   $f16, $f22, $f10
    mfc1    a3, $f6
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sw      s3, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    add.s   $f4, $f0, $f18
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    beql    v0, $zero, lbl_80980D04
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lh      t6, 0x0032(s1)             # 00000032
    bne     s0, $zero, lbl_80980CF4
    sh      t6, 0x0032(v0)             # 00000032
    lh      t7, 0x00B6(s1)             # 000000B6
    sh      t7, 0x00B6(v0)             # 000000B6
lbl_80980CF4:
    lwc1    $f6, 0x015C(s1)            # 0000015C
    sub.s   $f8, $f6, $f28
    swc1    $f8, 0x015C(v0)            # 0000015C
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_80980D04:
    bne     s0, s4, lbl_80980C70
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38D7          # a1 = 000038D7
lbl_80980D18:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    lw      s0, 0x0054($sp)
    lw      s1, 0x0058($sp)
    lw      s2, 0x005C($sp)
    lw      s3, 0x0060($sp)
    lw      s4, 0x0064($sp)
    lw      s5, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80980D58:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x004C($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80980E34
    sb      $zero, 0x017E(s0)          # 0000017E
    lbu     t6, 0x017E(s0)             # 0000017E
    bnel    t6, $zero, lbl_80980E28
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lh      t7, 0x017A(s0)             # 0000017A
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    lui     $at, 0x4040                # $at = 40400000
    bnel    t7, $zero, lbl_80980E28
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90
    sh      t8, 0x017A(s0)             # 0000017A
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90
    swc1    $f0, 0x003C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f8, 0x003C($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    add.s   $f6, $f18, $f4
    lw      a1, 0x004C($sp)
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      t9, 0x0024($sp)
    mfc1    a3, $f16
    add.s   $f10, $f0, $f8
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f10, 0x0014($sp)
    addiu   a2, $zero, 0x00B5          # a2 = 000000B5
    jal     func_80025110              # ActorSpawn
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    beq     v0, $zero, lbl_80980E24
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x0178(v0)             # 00000178
lbl_80980E24:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
lbl_80980E28:
    beq     $zero, $zero, lbl_80980E34
    sb      t1, 0x017E(s0)             # 0000017E
    sb      $zero, 0x017E(s0)          # 0000017E
lbl_80980E34:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80980E48:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x017A(s0)             # 0000017A
    lui     $at, 0x41A0                # $at = 41A00000
    bnel    t6, $zero, lbl_80980F1C
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0034($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0038($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x003C($sp)
    trunc.w.s $f4, $f0
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    mfc1    t0, $f4
    nop
    addiu   t1, t0, 0x0082             # t1 = 00000082
    jal     func_80026D64
    sh      t1, 0x0032($sp)
    trunc.w.s $f6, $f0
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    mfc1    t5, $f6
    nop
    addiu   t6, t5, 0x0003             # t6 = 00000003
    sh      t6, 0x017A(s0)             # 0000017A
    sw      t7, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lh      a3, 0x0032($sp)
    jal     func_8001DFEC
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
lbl_80980F1C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80980F2C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    sw      v0, 0x003C($sp)
    sw      v0, 0x0038($sp)
    lh      v1, 0x017A(s0)             # 0000017A
    beq     v1, $zero, lbl_80980F58
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x017A(s0)             # 0000017A
lbl_80980F58:
    lh      v0, 0x0178(s0)             # 00000178
    beq     v0, $zero, lbl_80980F68
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0178(s0)             # 00000178
lbl_80980F68:
    sw      a1, 0x004C($sp)
    lw      t9, 0x0158(s0)             # 00000158
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lh      t8, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t8, $at, lbl_809811C8
    lw      $ra, 0x0024($sp)
    lwc1    $f10, 0x014C(s0)           # 0000014C
    lwc1    $f16, 0x0140(s0)           # 00000140
    lwc1    $f4, 0x0148(s0)            # 00000148
    lwc1    $f6, 0x013C(s0)            # 0000013C
    add.s   $f18, $f10, $f16
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f6, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0150(s0)            # 00000150
    swc1    $f18, 0x014C(s0)           # 0000014C
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f18                  # $f18 = 300.00
    lwc1    $f16, 0x015C(s0)           # 0000015C
    swc1    $f8, 0x0148(s0)            # 00000148
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f16, $f18
    lui     $at, 0x41A0                # $at = 41A00000
    swc1    $f10, 0x0164(s0)           # 00000164
    swc1    $f8, 0x0150(s0)            # 00000150
    add.s   $f0, $f4, $f2
    c.lt.s  $f0, $f2
    swc1    $f0, 0x00C4(s0)            # 000000C4
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bc1fl   lbl_80981008
    lwc1    $f6, 0x00C4(s0)            # 000000C4
    swc1    $f2, 0x00C4(s0)            # 000000C4
    lwc1    $f6, 0x00C4(s0)            # 000000C4
lbl_80981008:
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80981020
    lh      v1, 0x017C(s0)             # 0000017C
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lh      v1, 0x017C(s0)             # 0000017C
lbl_80981020:
    beql    v1, $zero, lbl_80981030
    lui     $at, 0x40E0                # $at = 40E00000
    bne     v1, $at, lbl_80981050
    lui     $at, 0x40E0                # $at = 40E00000
lbl_80981030:
    mtc1    $at, $f10                  # $f10 = 7.00
    lwc1    $f8, 0x015C(s0)            # 0000015C
    lui     $at, %hi(var_80981408)     # $at = 80980000
    lwc1    $f18, %lo(var_80981408)($at)
    mul.s   $f16, $f8, $f10
    lh      v1, 0x017C(s0)             # 0000017C
    sub.s   $f4, $f18, $f16
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_80981050:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v1, $at, lbl_8098109C
    lw      t1, 0x0158(s0)             # 00000158
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    lh      v1, 0x017C(s0)             # 0000017C
    lw      t1, 0x0158(s0)             # 00000158
lbl_8098109C:
    lui     a2, %hi(func_80980BD8)     # a2 = 80980000
    addiu   a2, a2, %lo(func_80980BD8) # a2 = 80980BD8
    beq     a2, t1, lbl_80981104
    or      v0, $zero, $zero           # v0 = 00000000
    beq     v1, $zero, lbl_809810C4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_809810C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_80981108
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_809810C4:
    lbu     v0, 0x0194(s0)             # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x280E          # a1 = 0000280E
    andi    t2, v0, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_80981100
    andi    t3, v0, 0xFFFB             # t3 = 00000000
    sb      t3, 0x0194(s0)             # 00000194
    jal     func_80022FD0
    sw      a2, 0x0030($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a2, 0x0030($sp)
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_809811C4
    sw      a2, 0x0158(s0)             # 00000158
lbl_80981100:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80981104:
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_80981108:
    bne     v1, $at, lbl_80981184
    nop
    lbu     v0, 0x0194(s0)             # 00000194
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80981180
    andi    t5, v0, 0xFFFD             # t5 = 00000001
    sb      t5, 0x0194(s0)             # 00000194
    lw      t6, 0x0038($sp)
    lw      t7, 0x0188(s0)             # 00000188
    lw      v0, 0x003C($sp)
    bnel    t6, t7, lbl_80981184
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t9, 0x066C(v0)             # 0000066D
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sll     t8, t9,  5
    bltz    t8, lbl_809811C4
    lui     a2, 0x4000                 # a2 = 40000000
    lh      a3, 0x0032(v0)             # 00000033
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    subu    a3, $zero, a3
    sll     a3, a3, 16
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0014($sp)
    sra     a3, a3, 16
    jal     func_80022F00
    swc1    $f8, 0x0010($sp)
    beq     $zero, $zero, lbl_809811C8
    lw      $ra, 0x0024($sp)
lbl_80981180:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80981184:
    beq     v0, $zero, lbl_809811C4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    jal     func_80050B00
    sw      a1, 0x002C($sp)
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0030($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x002C($sp)
    lw      a1, 0x0030($sp)
    lw      a0, 0x004C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)
lbl_809811C4:
    lw      $ra, 0x0024($sp)
lbl_809811C8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_809811D8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0044($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0160(s0)            # 00000160
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f18, 0x0168(s0)           # 00000168
    add.s   $f12, $f4, $f6
    lw      t6, 0x0044($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f4, $f16, $f18
    lwc1    $f10, 0x0164(s0)           # 00000164
    or      a3, $zero, $zero           # a3 = 00000000
    lw      s1, 0x0000(t6)             # 00000000
    mfc1    a2, $f4
    jal     func_800AA7F4
    add.s   $f14, $f8, $f10
    lui     $at, %hi(var_8098140C)     # $at = 80980000
    lwc1    $f8, %lo(var_8098140C)($at)
    lwc1    $f6, 0x0148(s0)            # 00000148
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lui     $at, %hi(var_80981410)     # $at = 80980000
    lwc1    $f16, %lo(var_80981410)($at)
    lwc1    $f10, 0x014C(s0)           # 0000014C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_80981414)     # $at = 80980000
    lwc1    $f4, %lo(var_80981414)($at)
    lwc1    $f18, 0x0150(s0)           # 00000150
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f18, $f4
    jal     func_800AAD4C
    nop
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x0044($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t7)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t0, 0xFF9B                 # t0 = FF9B0000
    ori     t0, t0, 0x37FF             # t0 = FF9B37FF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0x9BFF                 # t3 = 9BFF0000
    ori     t3, t3, 0x37FF             # t3 = 9BFF37FF
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(s0)             # 00000000
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0DE0             # t9 = 06000DE0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000

.section .data

var_80981340: .word 0x00B50500, 0x00000030, 0x00920000, 0x000001D0
.word func_80980430
.word func_80980820
.word func_80980F2C
.word func_809811D8
var_80981360: .word \
0x0C110900, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x09080000, 0xFFCFFFFF, 0x00000000, 0x01010000, \
0x001E001E, 0xFFF60000, 0x00000000
var_8098138C: .word \
0x0C110900, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x01080000, 0xFFCFFFFF, 0x00000000, 0x01010000, \
0x001E001E, 0xFFF60000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_809813C0: .word var_80980598
.word var_8098066C
.word var_8098074C
.word var_809805D4
.word lbl_80980804
.word var_80980508
.word var_8098051C
var_809813DC: .word 0x3CA3D70A
var_809813E0: .word 0x477FFF00
var_809813E4: .word 0x3CA3D70A
var_809813E8: .word 0x477FFF00
var_809813EC: .word 0x3C23D70A
var_809813F0: .word 0xBF99999A
var_809813F4: .word 0x477FFF00
var_809813F8: .word 0xC61C4000
var_809813FC: .word 0xC4A14000
var_80981400: .word 0xC5728000
var_80981404: .word 0x3C23D70A
var_80981408: .word 0xBE99999A
var_8098140C: .word 0x3C8EFA35
var_80981410: .word 0x3C8EFA35
var_80981414: .word 0x3C8EFA35, 0x00000000, 0x00000000

