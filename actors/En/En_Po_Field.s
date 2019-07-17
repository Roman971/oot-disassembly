.section .text
func_80AF7D60:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lui     a2, %hi(var_80AFB2D0)      # a2 = 80B00000
    addiu   a2, a2, %lo(var_80AFB2D0)  # a2 = 80AFB2D0
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v1, 0x0000(a2)             # 80AFB2D0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $at, lbl_80AF7E00
    lui     a1, %hi(var_80AFB2E0)      # a1 = 80B00000
    lwc1    $f4, 0x0024(s0)            # 00000024
    sll     t6, v1,  2
    subu    t6, t6, v1
    trunc.w.s $f6, $f4
    lui     t7, %hi(var_80AFB740)      # t7 = 80B00000
    addiu   t7, t7, %lo(var_80AFB740)  # t7 = 80AFB740
    sll     t6, t6,  1
    mfc1    t9, $f6
    addu    v0, t6, t7
    lui     $at, %hi(var_80AFB780)     # $at = 80B00000
    sh      t9, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x0028(s0)            # 00000028
    addu    $at, $at, v1
    addiu   t6, v1, 0x0001             # t6 = 00000001
    trunc.w.s $f10, $f8
    or      v1, t6, $zero              # v1 = 00000001
    mfc1    t1, $f10
    nop
    sh      t1, 0x0002(v0)             # 00000002
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0004(v0)             # 00000004
    lh      t5, 0x001C(s0)             # 0000001C
    sb      t5, %lo(var_80AFB780)($at)
    sw      t6, 0x0000(a2)             # 80AFB2D0
lbl_80AF7E00:
    slti    $at, v1, 0x0002
    bne     $at, $zero, lbl_80AF7E20
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sh      t7, 0x001C(s0)             # 0000001C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF7F58
    lw      $ra, 0x002C($sp)
lbl_80AF7E20:
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80AFB2E0)  # a1 = FFFFB2E0
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t8, s0, 0x018C             # t8 = 0000018C
    addiu   t9, s0, 0x01C8             # t9 = 000001C8
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, 0x0924             # a3 = 06000924
    addiu   a2, a2, 0x6A30             # a2 = 06006A30
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0234             # a1 = 00000234
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80AFB250)      # a3 = 80B00000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80AFB250)  # a3 = 80AFB250
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0280             # a1 = 00000280
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80AFB27C)      # a3 = 80B00000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80AFB27C)  # a3 = 80AFB27C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80AFB2B0)      # a1 = 80B00000
    lui     a2, %hi(var_80AFB2A8)      # a2 = 80B00000
    addiu   a2, a2, %lo(var_80AFB2A8)  # a2 = 80AFB2A8
    addiu   a1, a1, %lo(var_80AFB2B0)  # a1 = 80AFB2B0
    jal     func_80050344
    addiu   a0, s0, 0x0098             # a0 = 00000098
    addiu   a2, s0, 0x0224             # a2 = 00000224
    sw      a2, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0010(s0)           # 00000010
    trunc.w.s $f6, $f4
    sw      v0, 0x0220(s0)             # 00000220
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sll     a1, a1, 16
    mfc1    a3, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80065C30
    lw      a0, 0x0034($sp)
    lui     t7, 0x8002                 # t7 = 80020000
    addiu   t7, t7, 0xEFF4             # t7 = 8001EFF4
    sw      t7, 0x00C0(s0)             # 000000C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF7FC8
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80AF7F58:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80AF7F68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     t6, $at, lbl_80AF7FB8
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    lw      a2, 0x0220(a3)             # 00000220
    jal     func_80066610
    sw      a3, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0280             # a1 = 00000280
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0234             # a1 = 00000234
lbl_80AF7FB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF7FC8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     t6, %hi(func_80AFA6EC)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AFA6EC) # t6 = 80AFA6EC
    sw      t6, 0x0130(s0)             # 00000130
    lw      a0, 0x002C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    sh      $zero, 0x00B4(s0)          # 000000B4
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0224             # a0 = 00000224
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80065C98
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    sh      t8, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lbu     t1, 0x0245(s0)             # 00000245
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFE           # $at = FFFEFFFE
    addiu   t3, $zero, 0x0039          # t3 = 00000039
    and     t0, t9, $at
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    sw      t0, 0x0004(s0)             # 00000004
    sb      t2, 0x0245(s0)             # 00000245
    sb      t3, 0x0246(s0)             # 00000246
    lui     t4, %hi(var_80AFB2A8)      # t4 = 80B00000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lbu     t4, %lo(var_80AFB2A8)(t4)
    lui     t5, %hi(func_80AF88DC)     # t5 = 80B00000
    addiu   t5, t5, %lo(func_80AF88DC) # t5 = 80AF88DC
    sw      t5, 0x0180(s0)             # 00000180
    sb      t4, 0x00AF(s0)             # 000000AF
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0060(s0)            # 00000060
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF808C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0F9C             # a1 = 06000F9C
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80AFAB30)     # t6 = 80B00000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t6, t6, %lo(func_80AFAB30) # t6 = 80AFAB30
    addiu   t7, $zero, 0x00D2          # t7 = 000000D2
    addiu   a1, $zero, 0x3873          # a1 = 00003873
    sw      t6, 0x0134(a0)             # 00000134
    sb      v0, 0x0204(a0)             # 00000204
    sb      v0, 0x0205(a0)             # 00000205
    sb      t7, 0x0206(a0)             # 00000206
    sb      $zero, 0x0207(a0)          # 00000207
    sb      $zero, 0x00C8(a0)          # 000000C8
    jal     func_80022FD0
    swc1    $f4, 0x00BC(a0)            # 000000BC
    lw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t7, %hi(func_80AF8B44)     # t7 = 80B00000
    lh      t8, 0x001C(a2)             # 0000001C
    lwc1    $f6, 0x0028(a2)            # 00000028
    addiu   t7, t7, %lo(func_80AF8B44) # t7 = 80AF8B44
    bne     t8, $at, lbl_80AF8150
    swc1    $f6, 0x000C(a2)            # 0000000C
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f10                  # $f10 = 45.00
    addiu   t9, $zero, 0x0023          # t9 = 00000023
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sh      t9, 0x0274(a2)             # 00000274
    sh      t0, 0x0276(a2)             # 00000276
    sh      t1, 0x0278(a2)             # 00000278
    lui     $at, %hi(var_80AFB330)     # $at = 80B00000
    swc1    $f8, 0x0068(a2)            # 00000068
    swc1    $f10, 0x00C4(a2)           # 000000C4
    lwc1    $f16, %lo(var_80AFB330)($at)
    addiu   t2, $zero, 0x005A          # t2 = 0000005A
    sb      t2, 0x0117(a2)             # 00000117
    beq     $zero, $zero, lbl_80AF8198
    swc1    $f16, 0x020C(a2)           # 0000020C
lbl_80AF8150:
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     v0, %hi(var_80AFB250)      # v0 = 80B00000
    addiu   v0, v0, %lo(var_80AFB250)  # v0 = 80AFB250
    swc1    $f18, 0x0068(a2)           # 00000068
    lh      t3, 0x0020(v0)             # 80AFB270
    lui     $at, 0x4214                # $at = 42140000
    mtc1    $at, $f4                   # $f4 = 37.00
    sh      t3, 0x0274(a2)             # 00000274
    lh      t4, 0x0022(v0)             # 80AFB272
    lui     $at, %hi(var_80AFB334)     # $at = 80B00000
    addiu   t6, $zero, 0x005C          # t6 = 0000005C
    sh      t4, 0x0276(a2)             # 00000276
    lh      t5, 0x0024(v0)             # 80AFB274
    swc1    $f4, 0x00C4(a2)            # 000000C4
    sh      t5, 0x0278(a2)             # 00000278
    lwc1    $f6, %lo(var_80AFB334)($at)
    sb      t6, 0x0117(a2)             # 00000117
    swc1    $f6, 0x020C(a2)            # 0000020C
lbl_80AF8198:
    sw      t7, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF81AC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x1C44(a3)             # 00001C44
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0924             # a1 = 06000924
    sw      a2, 0x0020($sp)
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      t6, 0x001C($sp)
    lw      a2, 0x0020($sp)
    lbu     t7, 0x0245(a2)             # 00000245
    lwc1    $f4, 0x0090(a2)            # 00000090
    addiu   a0, a2, 0x0008             # a0 = 00000008
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0245(a2)             # 00000245
    swc1    $f4, 0x020C(a2)            # 0000020C
    lw      a1, 0x001C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      a2, 0x0020($sp)
    lui     t0, %hi(func_80AF90C4)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AF90C4) # t0 = 80AF90C4
    lw      t1, 0x0180(a2)             # 00000180
    lh      t9, 0x008A(a2)             # 0000008A
    lui     t6, %hi(func_80AF8CE0)     # t6 = 80B00000
    beq     t0, t1, lbl_80AF823C
    sh      t9, 0x0032(a2)             # 00000032
    lw      t2, 0x0004(a2)             # 00000004
    addiu   t4, $zero, 0x0258          # t4 = 00000258
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0004(a2)             # 00000004
    sh      t4, 0x0186(a2)             # 00000186
    sb      t5, 0x0184(a2)             # 00000184
lbl_80AF823C:
    addiu   t6, t6, %lo(func_80AF8CE0) # t6 = 80AF8CE0
    sw      t6, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF8254:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0608             # a1 = 06000608
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    lbu     t6, 0x0245(a3)             # 00000245
    lui     v0, %hi(func_80AF8F20)     # v0 = 80B00000
    lui     t8, %hi(func_80AF90C4)     # t8 = 80B00000
    addiu   v0, v0, %lo(func_80AF8F20) # v0 = 80AF8F20
    addiu   t8, t8, %lo(func_80AF90C4) # t8 = 80AF90C4
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0245(a3)             # 00000245
    sw      v0, 0x0180(a3)             # 00000180
    beq     t8, v0, lbl_80AF82D8
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      t9, 0x0004(a3)             # 00000004
    lh      t1, 0x00B6(a3)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t3, $zero, 0x07D0          # t3 = 000007D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    ori     t0, t9, 0x0001             # t0 = 00000001
    addu    t2, t1, $at
    sw      t0, 0x0004(a3)             # 00000004
    sh      t2, 0x0032(a3)             # 00000032
    sh      t3, 0x0186(a3)             # 00000186
    sb      t4, 0x0184(a3)             # 00000184
lbl_80AF82D8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF82E8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0454             # a1 = 06000454
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xC0C0                 # a2 = C0C00000
    lw      t6, 0x0270(s0)             # 00000270
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF824           # $at = 0001F824
    lw      t7, 0x0000(t6)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    and     t8, t7, $at
    beq     t8, $zero, lbl_80AF833C
    nop
    lw      t9, 0x023C(s0)             # 0000023C
    lh      t0, 0x0032(t9)             # 00000032
    beq     $zero, $zero, lbl_80AF8350
    sh      t0, 0x0032(s0)             # 00000032
lbl_80AF833C:
    jal     func_800213B4
    lw      a1, 0x023C(s0)             # 0000023C
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, v0, $at
    sh      t1, 0x0032(s0)             # 00000032
lbl_80AF8350:
    lbu     t2, 0x0245(s0)             # 00000245
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    andi    t3, t2, 0xFFFC             # t3 = 00000000
    sb      t3, 0x0245(s0)             # 00000245
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    swc1    $f4, 0x0068(s0)            # 00000068
    sw      t4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t5, %hi(func_80AF90C4)     # t5 = 80B00000
    addiu   t5, t5, %lo(func_80AF90C4) # t5 = 80AF90C4
    sw      t5, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF83A4:
    lw      t6, 0x0004(a0)             # 00000004
    lh      t0, 0x018A(a0)             # 0000018A
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t8, 0x00B6(a0)             # 000000B6
    and     t7, t6, $at
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    slti    $at, t0, 0x0014
    sh      $zero, 0x0186(a0)          # 00000186
    sw      t7, 0x0004(a0)             # 00000004
    sb      t9, 0x0117(a0)             # 00000117
    swc1    $f4, 0x0068(a0)            # 00000068
    bne     $at, $zero, lbl_80AF83E4
    sh      t8, 0x0032(a0)             # 00000032
    addiu   t1, $zero, 0x0013          # t1 = 00000013
    sh      t1, 0x018A(a0)             # 0000018A
lbl_80AF83E4:
    lui     t2, %hi(func_80AF9154)     # t2 = 80B00000
    addiu   t2, t2, %lo(func_80AF9154) # t2 = 80AF9154
    sw      t2, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80AF83F8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1360             # a1 = 06001360
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0xC0C0                 # a2 = C0C00000
    lbu     t7, 0x0245(s0)             # 00000245
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    andi    t8, t7, 0xFFFC             # t8 = 00000000
    sh      t6, 0x0186(s0)             # 00000186
    sb      t8, 0x0245(s0)             # 00000245
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    jal     func_80022FD0
    swc1    $f4, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3874          # a1 = 00003874
    lui     t9, %hi(func_80AF956C)     # t9 = 80B00000
    addiu   t9, t9, %lo(func_80AF956C) # t9 = 80AF956C
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF8470:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     t6, %hi(func_80AFAE0C)     # t6 = 80B00000
    lui     t7, %hi(func_80AFAE68)     # t7 = 80B00000
    addiu   t6, t6, %lo(func_80AFAE0C) # t6 = 80AFAE0C
    addiu   t7, t7, %lo(func_80AFAE68) # t7 = 80AFAE68
    sw      t6, 0x0130(a2)             # 00000130
    sw      t7, 0x0134(a2)             # 00000134
    sw      $zero, 0x00C0(a2)          # 000000C0
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    sw      a2, 0x0018($sp)
    jal     func_80020F88
    or      a0, a2, $zero              # a0 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    lw      a2, 0x0018($sp)
    mtc1    $at, $f4                   # $f4 = -1.00
    lw      a0, 0x001C($sp)
    lui     $at, %hi(var_80AFB338)     # $at = 80B00000
    swc1    $f4, 0x006C(a2)            # 0000006C
    lwc1    $f6, %lo(var_80AFB338)($at)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lwc1    $f8, 0x0028(a2)            # 00000028
    addiu   t8, $zero, 0x8000          # t8 = FFFF8000
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sub.s   $f16, $f8, $f10
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    sh      t8, 0x00B4(a2)             # 000000B4
    sh      t9, 0x0186(a2)             # 00000186
    swc1    $f16, 0x0028(a2)           # 00000028
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    jal     func_800265D4
    swc1    $f6, 0x00BC(a2)            # 000000BC
    lw      a2, 0x0018($sp)
    lui     t0, %hi(func_80AF966C)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AF966C) # t0 = 80AF966C
    sw      t0, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF8520:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    sw      $zero, 0x0014($sp)
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $zero, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x0224             # a0 = 00000224
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    sh      $zero, 0x00B6(s0)          # 000000B6
    sb      $zero, 0x0207(s0)          # 00000207
    sh      $zero, 0x00B4(s0)          # 000000B4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28E0          # a1 = 000028E0
    swc1    $f0, 0x00BC(s0)            # 000000BC
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f4, 0x000C(s0)            # 0000000C
    swc1    $f0, 0x0050(s0)            # 00000050
    jal     func_80022FD0
    swc1    $f0, 0x0054(s0)            # 00000054
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t9, $at, lbl_80AF85D4
    nop
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
lbl_80AF85D4:
    lui     t0, %hi(func_80AF9AF8)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AF9AF8) # t0 = 80AF9AF8
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF85F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0028(a0)            # 00000028
    lui     a1, 0xC120                 # a1 = C1200000
    swc1    $f4, 0x000C(a0)            # 0000000C
    jal     func_80020F04
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0028(a0)           # 00000028
    lw      t8, 0x0004(a0)             # 00000004
    trunc.w.s $f8, $f6
    lwc1    $f6, 0x002C(a0)            # 0000002C
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sub.s   $f18, $f10, $f16
    mfc1    t9, $f8
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    trunc.w.s $f8, $f6
    lui     t0, %hi(func_80AF9B50)     # t0 = 80B00000
    sh      t6, 0x0274(a0)             # 00000274
    trunc.w.s $f4, $f18
    mfc1    t3, $f8
    sh      t7, 0x0276(a0)             # 00000276
    sh      t9, 0x027A(a0)             # 0000027A
    mfc1    t1, $f4
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    addiu   t5, $zero, 0x5005          # t5 = 00005005
    addiu   t6, $zero, 0x0190          # t6 = 00000190
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t0, t0, %lo(func_80AF9B50) # t0 = 80AF9B50
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      $zero, 0x0278(a0)          # 00000278
    sb      t4, 0x0246(a0)             # 00000246
    sh      t5, 0x010E(a0)             # 0000010E
    sh      t6, 0x0186(a0)             # 00000186
    sb      t7, 0x0184(a0)             # 00000184
    sw      t9, 0x0004(a0)             # 00000004
    sw      t0, 0x0180(a0)             # 00000180
    sh      t3, 0x027E(a0)             # 0000027E
    sh      t1, 0x027C(a0)             # 0000027C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF86AC:
    lui     t6, %hi(func_80AF9D54)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF9D54) # t6 = 80AF9D54
    sw      t6, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80AF86C0:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lwc1    $f4, 0x0028(a0)            # 00000028
    lui     t6, %hi(func_80AF9D94)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF9D94) # t6 = 80AF9D94
    sub.s   $f8, $f4, $f6
    sw      t6, 0x0180(a0)             # 00000180
    swc1    $f8, 0x000C(a0)            # 0000000C
    jr      $ra
    nop


func_80AF86E8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x0184(s0)             # 00000184
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    bne     v0, $zero, lbl_80AF8718
    lw      v1, 0x1C44(a1)             # 00001C44
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sb      t6, 0x0184(s0)             # 00000184
    andi    v0, t6, 0x00FF             # v0 = 00000020
lbl_80AF8718:
    beq     v0, $zero, lbl_80AF8724
    addiu   t7, v0, 0xFFFF             # t7 = 0000001F
    sb      t7, 0x0184(s0)             # 00000184
lbl_80AF8724:
    lwc1    $f0, 0x0080(s0)            # 00000080
    lui     $at, 0x4150                # $at = 41500000
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_80AF8750
    lwc1    $f2, 0x0028(v1)            # 00000028
    jal     func_80AF83F8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF87BC
    lw      $ra, 0x001C($sp)
    lwc1    $f2, 0x0028(v1)            # 00000028
lbl_80AF8750:
    mtc1    $at, $f6                   # $f6 = 0.00
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AF8770
    mov.s   $f12, $f0
    beq     $zero, $zero, lbl_80AF8770
    mov.s   $f12, $f2
    mov.s   $f12, $f0
lbl_80AF8770:
    add.s   $f8, $f12, $f6
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    mfc1    a1, $f8
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lbu     a0, 0x0184(s0)             # 00000184
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f10                  # $f10 = 13.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0028(s0)            # 00000028
    lw      $ra, 0x001C($sp)
lbl_80AF87BC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF87CC:
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4140                # $at = 41400000
    lw      t6, 0x066C(v0)             # 0000066C
    sll     t7, t6,  8
    bgezl   t7, lbl_80AF8804
    mtc1    $at, $f12                  # $f12 = 12.00
    lw      v1, 0x0430(v0)             # 00000430
    beql    v1, $zero, lbl_80AF8804
    mtc1    $at, $f12                  # $f12 = 12.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f12                  # $f12 = 12.00
    beq     $zero, $zero, lbl_80AF880C
    lwc1    $f0, 0x0068(v1)            # 00000068
    mtc1    $at, $f12                  # $f12 = 12.00
lbl_80AF8804:
    nop
    mov.s   $f0, $f12
lbl_80AF880C:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f2, 0x0090(a0)            # 00000090
    lui     $at, 0x43C8                # $at = 43C80000
    c.lt.s  $f2, $f4
    nop
    bc1fl   lbl_80AF8850
    mtc1    $at, $f18                  # $f18 = 400.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80AF88B4
    swc1    $f16, 0x0068(a0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 2.00
lbl_80AF8850:
    lui     $at, 0x43FA                # $at = 43FA0000
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_80AF8888
    mtc1    $at, $f16                  # $f16 = 500.00
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f4                   # $f4 = 1.25
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80AF88B4
    swc1    $f10, 0x0068(a0)           # 00000068
    mtc1    $at, $f16                  # $f16 = 2.00
lbl_80AF8888:
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_80AF88B4
    swc1    $f12, 0x0068(a0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 2.00
    nop
    add.s   $f4, $f0, $f18
    beq     $zero, $zero, lbl_80AF88B4
    swc1    $f4, 0x0068(a0)            # 00000068
    swc1    $f12, 0x0068(a0)           # 00000068
lbl_80AF88B4:
    lwc1    $f0, 0x0068(a0)            # 00000068
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80AF88D4
    swc1    $f0, 0x0068(a0)            # 00000068
    jr      $ra
    swc1    $f12, 0x0068(a0)           # 00000068
lbl_80AF88D0:
    swc1    $f0, 0x0068(a0)            # 00000068
lbl_80AF88D4:
    jr      $ra
    nop


func_80AF88DC:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s7, 0x006C($sp)
    sw      s0, 0x0050($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s2, 0x0058($sp)
    sw      s1, 0x0054($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lh      v0, 0x0186(s0)             # 00000186
    lw      s1, 0x1C44(s7)             # 00001C44
    beq     v0, $zero, lbl_80AF8940
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_80AF8940:
    bne     v0, $zero, lbl_80AF8AFC
    lui     v0, %hi(var_80AFB2D0)      # v0 = 80B00000
    lw      v0, %lo(var_80AFB2D0)(v0)
    lui     s6, %hi(var_80AFB740)      # s6 = 80B00000
    addiu   s6, s6, %lo(var_80AFB740)  # s6 = 80AFB740
    blez    v0, lbl_80AF8AFC
    or      s5, $zero, $zero           # s5 = 00000000
    lui     $at, %hi(var_80AFB33C)     # $at = 80B00000
    lwc1    $f30, %lo(var_80AFB33C)($at)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f28                  # $f28 = -32000.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f26                  # $f26 = 1000.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f24                  # $f24 = 300.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f22                  # $f22 = 150.00
    lui     s8, 0x0080                 # s8 = 00800000
lbl_80AF8988:
    lh      t7, 0x0000(s6)             # 80AFB740
    lwc1    $f8, 0x0024(s1)            # 00000024
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f22
    nop
    bc1fl   lbl_80AF8AF0
    addiu   s5, s5, 0x0001             # s5 = 00000001
    lh      t8, 0x0004(s6)             # 80AFB744
    lwc1    $f18, 0x002C(s1)           # 0000002C
    lui     a1, %hi(var_80AFB780)      # a1 = 80B00000
    mtc1    t8, $f10                   # $f10 = 0.00
    addu    a1, a1, s5
    or      a0, s7, $zero              # a0 = 00000000
    cvt.s.w $f16, $f10
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f22
    nop
    bc1fl   lbl_80AF8AF0
    addiu   s5, s5, 0x0001             # s5 = 00000002
    jal     func_8002049C
    lbu     a1, %lo(var_80AFB780)(a1)
    beq     v0, $zero, lbl_80AF8A1C
    addiu   s2, s7, 0x07C0             # s2 = 000007C0
    lw      t9, 0x066C(s1)             # 0000066C
    addiu   s3, s0, 0x0078             # s3 = 00000078
    addiu   s4, s0, 0x0024             # s4 = 00000024
    and     t0, t9, s8
    bnel    t0, $zero, lbl_80AF8B00
    lw      $ra, 0x0074($sp)
    sh      $zero, 0x001C(s0)          # 0000001C
    beq     $zero, $zero, lbl_80AF8A68
    mov.s   $f20, $f24
lbl_80AF8A1C:
    lw      t1, 0x066C(s1)             # 0000066C
    addiu   s2, s7, 0x07C0             # s2 = 000007C0
    addiu   s3, s0, 0x0078             # s3 = 00000078
    and     t2, t1, s8
    bne     t2, $zero, lbl_80AF8A48
    addiu   s4, s0, 0x0024             # s4 = 00000024
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f30
    nop
    bc1f    lbl_80AF8A60
lbl_80AF8A48:
    lui     $at, 0x43F0                # $at = 43F00000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mtc1    $at, $f20                  # $f20 = 480.00
    sh      t3, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_80AF8A68
    sb      s5, 0x0185(s0)             # 00000185
lbl_80AF8A60:
    sh      $zero, 0x001C(s0)          # 0000001C
    mov.s   $f20, $f24
lbl_80AF8A68:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s1)             # 000000B6
    mul.s   $f4, $f0, $f20
    lwc1    $f6, 0x0024(s1)            # 00000024
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0024(s0)            # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s1)             # 000000B6
    mul.s   $f10, $f0, $f20
    lwc1    $f16, 0x002C(s1)           # 0000002C
    or      a0, s2, $zero              # a0 = 000007C0
    or      a1, s3, $zero              # a1 = 00000078
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFF0
    or      a3, s0, $zero              # a3 = 00000000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f6, $f4, $f26
    swc1    $f6, 0x0028(s0)            # 00000028
    jal     func_8002F4B8              # Raycast
    sw      s4, 0x0010($sp)
    c.eq.s  $f0, $f28
    swc1    $f0, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    bc1tl   lbl_80AF8B00
    lw      $ra, 0x0074($sp)
    jal     func_800213B4
    or      a1, s1, $zero              # a1 = 00000000
    sh      v0, 0x00B6(s0)             # 000000B6
    jal     func_80AF808C
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, %hi(var_80AFB2D0)      # v0 = 80B00000
    lw      v0, %lo(var_80AFB2D0)(v0)
    addiu   s5, s5, 0x0001             # s5 = 00000003
lbl_80AF8AF0:
    slt     $at, s5, v0
    bne     $at, $zero, lbl_80AF8988
    addiu   s6, s6, 0x0006             # s6 = 80AFB746
lbl_80AF8AFC:
    lw      $ra, 0x0074($sp)
lbl_80AF8B00:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    lw      s7, 0x006C($sp)
    lw      s8, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_80AF8B44:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80AF8BB0
    lui     $at, 0x4120                # $at = 41200000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x0207(s0)             # 00000207
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x020C(s0)             # 0000020C
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t7, $at, lbl_80AF8BA0
    nop
    jal     func_80AF8254
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF8C9C
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80AF8BA0:
    jal     func_80AF81AC
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80AF8C9C
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80AF8BB0:
    mtc1    $at, $f2                   # $f2 = 0.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, %hi(var_80AFB344)     # $at = 80B00000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80AF8C78
    lwc1    $f4, 0x020C(s0)            # 0000020C
    sub.s   $f4, $f0, $f2
    lui     $at, %hi(var_80AFB340)     # $at = 80B00000
    lwc1    $f6, %lo(var_80AFB340)($at)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    mul.s   $f8, $f4, $f6
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f8, $f10
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80AF8C5C
    mfc1    t9, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80AF8C50
    nop
    mfc1    t9, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AF8C68
    or      t9, t9, $at                # t9 = 80000000
lbl_80AF8C50:
    beq     $zero, $zero, lbl_80AF8C68
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f18
lbl_80AF8C5C:
    nop
    bltz    t9, lbl_80AF8C50
    nop
lbl_80AF8C68:
    ctc1    t8, $f31
    beq     $zero, $zero, lbl_80AF8C98
    sb      t9, 0x0207(s0)             # 00000207
    lwc1    $f4, 0x020C(s0)            # 0000020C
lbl_80AF8C78:
    lwc1    $f6, %lo(var_80AFB344)($at)
    lwc1    $f10, 0x0050(s0)           # 00000050
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    swc1    $f16, 0x0050(s0)           # 00000050
    lwc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
lbl_80AF8C98:
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80AF8C9C:
    lbu     t0, 0x0207(s0)             # 00000207
    lh      v0, 0x008A(s0)             # 0000008A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sb      t0, 0x00C8(s0)             # 000000C8
    bne     t1, $at, lbl_80AF8CCC
    sh      v0, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, v0, $at
    sh      t2, 0x0032(s0)             # 00000032
    lw      a1, 0x0024($sp)
    jal     func_80AF87CC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF8CCC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF8CE0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x002C($sp)
    lbu     t8, 0x0184(s0)             # 00000184
    subu    v1, t9, t8
    jal     func_8008C9C0
    sw      v1, 0x0028($sp)
    lh      v0, 0x0186(s0)             # 00000186
    lw      v1, 0x0028($sp)
    beq     v0, $zero, lbl_80AF8D2C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0186(s0)             # 00000186
lbl_80AF8D2C:
    bltzl   v1, lbl_80AF8D40
    subu    v0, $zero, v1
    beq     $zero, $zero, lbl_80AF8D40
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v1
lbl_80AF8D40:
    slti    $at, v0, 0x0010
    beql    $at, $zero, lbl_80AF8D94
    addiu   a0, s0, 0x020C             # a0 = 0000020C
    lbu     a0, 0x0184(s0)             # 00000184
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t1, 0x0032(s0)             # 00000032
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f8                   # $f8 = 512.00
    mtc1    t1, $f4                    # $f4 = 0.00
    abs.s   $f0, $f0
    mul.s   $f10, $f8, $f0
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0032(s0)             # 00000032
    addiu   a0, s0, 0x020C             # a0 = 0000020C
lbl_80AF8D94:
    lui     a1, 0x4334                 # a1 = 43340000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t4, 0x002C($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80064280
    lw      a1, 0x0024(t4)             # 00000024
    lw      t5, 0x002C($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0010             # a0 = 00000010
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80064280
    lw      a1, 0x002C(t5)             # 0000002C
    lh      a1, 0x0032(s0)             # 00000032
    addiu   t6, $zero, 0x0200          # t6 = 00000200
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    lw      t7, 0x002C($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f0, 0x0024(t7)            # 00000024
    mtc1    $at, $f12                  # $f12 = 100.00
    lui     $at, 0xC2C8                # $at = C2C80000
    sub.s   $f2, $f4, $f0
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80AF8E3C
    mtc1    $at, $f14                  # $f14 = -100.00
    add.s   $f8, $f0, $f12
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f14                  # $f14 = -100.00
    beq     $zero, $zero, lbl_80AF8E58
    swc1    $f8, 0x0008(s0)            # 00000008
    mtc1    $at, $f14                  # $f14 = -100.00
lbl_80AF8E3C:
    nop
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_80AF8E5C
    lw      t9, 0x002C($sp)
    add.s   $f6, $f0, $f14
    swc1    $f6, 0x0008(s0)            # 00000008
lbl_80AF8E58:
    lw      t9, 0x002C($sp)
lbl_80AF8E5C:
    lwc1    $f10, 0x0010(s0)           # 00000010
    lwc1    $f0, 0x002C(t9)            # 0000002C
    sub.s   $f2, $f10, $f0
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80AF8E88
    c.lt.s  $f2, $f14
    add.s   $f16, $f0, $f12
    beq     $zero, $zero, lbl_80AF8E9C
    swc1    $f16, 0x0010(s0)           # 00000010
    c.lt.s  $f2, $f14
lbl_80AF8E88:
    nop
    bc1f    lbl_80AF8E9C
    nop
    add.s   $f18, $f0, $f14
    swc1    $f18, 0x0010(s0)           # 00000010
lbl_80AF8E9C:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f8, 0x020C(s0)            # 0000020C
    lwc1    $f4, 0x0008(s0)            # 00000008
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f8
    sub.s   $f10, $f4, $f6
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x020C(s0)           # 0000020C
    lwc1    $f16, 0x0010(s0)           # 00000010
    lh      t8, 0x0186(s0)             # 00000186
    mul.s   $f8, $f0, $f18
    sub.s   $f4, $f16, $f8
    bne     t8, $zero, lbl_80AF8EEC
    swc1    $f4, 0x002C(s0)            # 0000002C
    jal     func_80AF83F8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF8EF8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF8EEC:
    jal     func_80AF9F8C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF8EF8:
    jal     func_80AF86E8
    lw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF8F20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v1, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80AFB2D4)      # a1 = 80B00000
    beq     v1, $zero, lbl_80AF8F54
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_80AF8F54:
    jal     func_80021528
    addiu   a1, a1, %lo(var_80AFB2D4)  # a1 = 80AFB2D4
    lui     $at, %hi(var_80AFB348)     # $at = 80B00000
    lwc1    $f4, %lo(var_80AFB348)($at)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80AFB2D4)      # a1 = 80B00000
    c.lt.s  $f4, $f0
    or      t0, $zero, $zero           # t0 = 00000000
    bc1fl   lbl_80AF8FCC
    lh      v1, 0x008A(s0)             # 0000008A
    jal     func_8002140C
    addiu   a1, a1, %lo(var_80AFB2D4)  # a1 = 80AFB2D4
    lh      v1, 0x008A(s0)             # 0000008A
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    subu    t7, v1, v0
    addu    t8, t7, $at
    sll     t9, t8, 16
    sra     t1, t9, 16
    mtc1    t1, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80AFB34C)     # $at = 80B00000
    lwc1    $f10, %lo(var_80AFB34C)($at)
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sll     t0, t0, 16
    beq     $zero, $zero, lbl_80AF8FCC
    sra     t0, t0, 16
    lh      v1, 0x008A(s0)             # 0000008A
lbl_80AF8FCC:
    subu    a1, v1, t0
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064624
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF87CC
    lw      a1, 0x002C($sp)
    lh      a0, 0x0186(s0)             # 00000186
    lh      t3, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    sll     a0, a0, 11
    sll     a0, a0, 16
    addu    t4, t3, $at
    sh      t4, 0x0032(s0)             # 00000032
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    nop
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0024($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f10, 0x0024($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f10, $f0
    sub.s   $f18, $f8, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0024($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lh      t5, 0x0186(s0)             # 00000186
    mul.s   $f10, $f6, $f0
    lui     $at, %hi(var_80AFB350)     # $at = 80B00000
    add.s   $f8, $f4, $f10
    beq     t5, $zero, lbl_80AF908C
    swc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f16, %lo(var_80AFB350)($at)
    lwc1    $f18, 0x0090(s0)           # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f16, $f18
    nop
    bc1f    lbl_80AF909C
    nop
lbl_80AF908C:
    jal     func_80AF83F8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF90A8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF909C:
    jal     func_80AF86E8
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF90A8:
    jal     func_8002313C
    addiu   a1, $zero, 0x3072          # a1 = 00003072
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF90C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80AF9144
    lw      a3, 0x0018($sp)
    lbu     t6, 0x00AF(a3)             # 000000AF
    bnel    t6, $zero, lbl_80AF911C
    lh      t7, 0x001C(a3)             # 0000001C
    jal     func_80AF83A4
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF9148
    lw      $ra, 0x0014($sp)
    lh      t7, 0x001C(a3)             # 0000001C
lbl_80AF911C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a3, $zero              # a0 = 00000000
    bne     t7, $at, lbl_80AF913C
    nop
    jal     func_80AF8254
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF9148
    lw      $ra, 0x0014($sp)
lbl_80AF913C:
    jal     func_80AF81AC
    lw      a1, 0x001C($sp)
lbl_80AF9144:
    lw      $ra, 0x0014($sp)
lbl_80AF9148:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF9154:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    lh      t6, 0x0186(s0)             # 00000186
    addiu   v1, $zero, 0x001C          # v1 = 0000001C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
    slti    $at, v0, 0x0008
    beq     $at, $zero, lbl_80AF94EC
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_80AF926C
    addiu   t4, v0, 0xFFFB             # t4 = FFFFFFFB
    sll     a0, v0, 12
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f16, $f0, $f10
    add.s   $f8, $f4, $f6
    add.s   $f18, $f16, $f8
    swc1    $f18, 0x0070($sp)
    lh      a0, 0x0186(s0)             # 00000186
    sll     a0, a0, 12
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f4                   # $f4 = 23.00
    nop
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0068($sp)
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t0, s1, t9
    jal     func_8004977C
    lw      a0, 0x0790(t0)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f10, 0x0068($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f8
    swc1    $f18, 0x006C($sp)
    lh      t1, 0x07A0(s1)             # 000007A0
    sll     t2, t1,  2
    addu    t3, s1, t2
    jal     func_8004977C
    lw      a0, 0x0790(t3)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f4, 0x0068($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f6, $f0, $f4
    add.s   $f16, $f6, $f10
    beq     $zero, $zero, lbl_80AF9310
    swc1    $f16, 0x0074($sp)
lbl_80AF926C:
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    cvt.s.w $f16, $f10
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    add.s   $f4, $f8, $f18
    mul.s   $f8, $f6, $f16
    add.s   $f18, $f4, $f8
    swc1    $f18, 0x0070($sp)
    lh      t5, 0x07A0(s1)             # 000007A0
    sll     t6, t5,  2
    addu    t7, s1, t6
    jal     func_8004977C
    lw      a0, 0x0790(t7)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    mul.s   $f6, $f0, $f10
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x006C($sp)
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t0, s1, t9
    jal     func_8004977C
    lw      a0, 0x0790(t0)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f8                   # $f8 = 23.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f18, $f0, $f8
    add.s   $f6, $f18, $f10
    swc1    $f6, 0x0074($sp)
lbl_80AF9310:
    lh      t1, 0x0186(s0)             # 00000186
    lui     a2, %hi(var_80AFB2E4)      # a2 = 80B00000
    lui     a3, %hi(var_80AFB2F0)      # a3 = 80B00000
    sll     t2, t1,  2
    addu    t2, t2, t1
    sll     t2, t2,  1
    addiu   t3, t2, 0x0050             # t3 = 00000050
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    sw      t0, 0x0038($sp)
    sw      t9, 0x0034($sp)
    sw      t8, 0x0030($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t1, 0x003C($sp)
    sw      t3, 0x0010($sp)
    addiu   a3, a3, %lo(var_80AFB2F0)  # a3 = 80AFB2F0
    addiu   a2, a2, %lo(var_80AFB2E4)  # a2 = 80AFB2E4
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001E1D4
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    lwc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x006C($sp)
    lwc1    $f10, 0x0074($sp)
    add.s   $f16, $f0, $f0
    lui     a2, %hi(var_80AFB2E4)      # a2 = 80B00000
    lui     a3, %hi(var_80AFB2F0)      # a3 = 80B00000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sub.s   $f8, $f16, $f4
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    swc1    $f8, 0x006C($sp)
    lwc1    $f2, 0x002C(s0)            # 0000002C
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    add.s   $f18, $f2, $f2
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   a3, a3, %lo(var_80AFB2F0)  # a3 = 80AFB2F0
    addiu   a2, a2, %lo(var_80AFB2E4)  # a2 = 80AFB2E4
    sub.s   $f6, $f18, $f10
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    swc1    $f6, 0x0074($sp)
    lh      t2, 0x0186(s0)             # 00000186
    sw      t1, 0x0038($sp)
    sw      t0, 0x0034($sp)
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  1
    addiu   t4, t3, 0x0050             # t4 = 00000050
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x003C($sp)
    sw      t4, 0x0010($sp)
    sw      t9, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    jal     func_8001E1D4
    sw      $zero, 0x0014($sp)
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     a2, %hi(var_80AFB2E4)      # a2 = 80B00000
    lui     a3, %hi(var_80AFB2F0)      # a3 = 80B00000
    swc1    $f16, 0x006C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f4, 0x0074($sp)
    lh      t3, 0x0186(s0)             # 00000186
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sll     t4, t3,  2
    addu    t4, t4, t3
    sll     t4, t4,  1
    addiu   t5, t4, 0x0050             # t5 = 00000050
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0030($sp)
    sw      t3, 0x003C($sp)
    sw      t5, 0x0010($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    addiu   a3, a3, %lo(var_80AFB2F0)  # a3 = 80AFB2F0
    addiu   a2, a2, %lo(var_80AFB2E4)  # a2 = 80AFB2E4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001E1D4
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    lh      v0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80AF9548
    addiu   $at, $zero, 0x0012         # $at = 00000012
    jal     func_80022FD0
    addiu   a1, $zero, 0x3878          # a1 = 00003878
    beq     $zero, $zero, lbl_80AF9544
    lh      v0, 0x0186(s0)             # 00000186
lbl_80AF94EC:
    bne     v1, v0, lbl_80AF9508
    slti    $at, v0, 0x0013
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF8470
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80AF9544
    lh      v0, 0x0186(s0)             # 00000186
lbl_80AF9508:
    bne     $at, $zero, lbl_80AF9544
    subu    t4, v1, v0
    mtc1    t4, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80AFB354)     # $at = 80B00000
    lwc1    $f10, %lo(var_80AFB354)($at)
    cvt.s.w $f18, $f8
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    mul.s   $f0, $f18, $f10
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0050(s0)            # 00000050
lbl_80AF9544:
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_80AF9548:
    bne     v0, $at, lbl_80AF9558
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3877          # a1 = 00003877
lbl_80AF9558:
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80AF956C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      v0, 0x0186(a2)             # 00000186
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AF95A4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a2)             # 00000186
    lh      v0, 0x0186(a2)             # 00000186
lbl_80AF95A4:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x417F                # $at = 417F0000
    mtc1    $at, $f8                   # $f8 = 15.94
    cvt.s.w $f6, $f4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lh      t7, 0x00B6(a2)             # 000000B6
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t8, t7, 0x1000             # t8 = 00001000
    mul.s   $f10, $f6, $f8
    sh      t8, 0x00B6(a2)             # 000000B6
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80AF9638
    mfc1    t0, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t0, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80AF962C
    nop
    mfc1    t0, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AF9644
    or      t0, t0, $at                # t0 = 80000000
lbl_80AF962C:
    beq     $zero, $zero, lbl_80AF9644
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f16
lbl_80AF9638:
    nop
    bltz    t0, lbl_80AF962C
    nop
lbl_80AF9644:
    ctc1    t9, $f31
    sb      t0, 0x0207(a2)             # 00000207
    bne     v0, $zero, lbl_80AF965C
    sb      t0, 0x00C8(a2)             # 000000C8
    jal     func_80AF7FC8
    lw      a1, 0x001C($sp)
lbl_80AF965C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF966C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x0186(s0)             # 00000186
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x40C0                 # a2 = 40C00000
    beq     v0, $zero, lbl_80AF9698
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_80AF9698:
    lhu     t7, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80AF96F4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x4BA0             # t4 = 06004BA0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    addiu   t2, $zero, 0x006D          # t2 = 0000006D
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t4, 0x0024($sp)
    jal     func_8001D29C
    sw      t9, 0x0010($sp)
    jal     func_80AF8520
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF970C
    nop
lbl_80AF96F4:
    lh      t5, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_80AF970C
    nop
    jal     func_80AF7FC8
    lw      a1, 0x003C($sp)
lbl_80AF970C:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AF9750:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lbu     t9, 0x0207(s0)             # 00000207
    lui     t8, %hi(var_80AFB2FC)      # t8 = 80B00000
    addiu   t8, t8, %lo(var_80AFB2FC)  # t8 = 80AFB2FC
    sll     t7, t6,  4
    addu    v0, t9, a1
    bgez    v0, lbl_80AF9788
    addu    v1, t7, t8
    beq     $zero, $zero, lbl_80AF97A0
    sb      $zero, 0x0207(s0)          # 00000207
lbl_80AF9788:
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_80AF979C
    or      a0, v0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF979C
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
lbl_80AF979C:
    sb      a0, 0x0207(s0)             # 00000207
lbl_80AF97A0:
    bgezl   a1, lbl_80AF9818
    lbu     t1, 0x0207(s0)             # 00000207
    lbu     t0, 0x0207(s0)             # 00000207
    lui     $at, %hi(var_80AFB358)     # $at = 80B00000
    lwc1    $f14, %lo(var_80AFB358)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t0, lbl_80AF97D0
    cvt.s.w $f12, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f12, $f12, $f6
lbl_80AF97D0:
    lui     $at, %hi(var_80AFB35C)     # $at = 80B00000
    lwc1    $f8, %lo(var_80AFB35C)($at)
    lui     $at, %hi(var_80AFB360)     # $at = 80B00000
    lwc1    $f10, %lo(var_80AFB360)($at)
    mul.s   $f2, $f12, $f8
    lui     $at, %hi(var_80AFB364)     # $at = 80B00000
    lwc1    $f18, %lo(var_80AFB364)($at)
    mul.s   $f16, $f10, $f2
    nop
    mul.s   $f4, $f14, $f2
    add.s   $f0, $f16, $f18
    sub.s   $f6, $f14, $f4
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    add.s   $f8, $f6, $f14
    beq     $zero, $zero, lbl_80AF986C
    swc1    $f8, 0x0054(s0)            # 00000054
    lbu     t1, 0x0207(s0)             # 00000207
lbl_80AF9818:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    t1, $f10                   # $f10 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t1, lbl_80AF983C
    cvt.s.w $f12, $f10
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f12, $f12, $f16
lbl_80AF983C:
    lui     $at, %hi(var_80AFB368)     # $at = 80B00000
    lwc1    $f18, %lo(var_80AFB368)($at)
    lui     $at, %hi(var_80AFB36C)     # $at = 80B00000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mul.s   $f0, $f12, $f18
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f6, %lo(var_80AFB36C)($at)
    mul.s   $f8, $f6, $f12
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_80AF986C:
    lbu     t2, 0x0003(v1)             # 00000003
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f16                   # $f16 = 0.00
    bgez    t2, lbl_80AF988C
    cvt.s.w $f18, $f16
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f18, $f18, $f6
lbl_80AF988C:
    mul.s   $f4, $f18, $f2
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80AF9904
    mfc1    t4, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80AF98F8
    nop
    mfc1    t4, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AF9910
    or      t4, t4, $at                # t4 = 80000000
lbl_80AF98F8:
    beq     $zero, $zero, lbl_80AF9910
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f8
lbl_80AF9904:
    nop
    bltz    t4, lbl_80AF98F8
    nop
lbl_80AF9910:
    sb      t4, 0x0204(s0)             # 00000204
    lbu     t5, 0x0004(v1)             # 00000004
    ctc1    t3, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f10                   # $f10 = 0.00
    bgez    t5, lbl_80AF9938
    cvt.s.w $f16, $f10
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_80AF9938:
    mul.s   $f18, $f16, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80AF99B0
    mfc1    t7, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80AF99A4
    nop
    mfc1    t7, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AF99BC
    or      t7, t7, $at                # t7 = 80000000
lbl_80AF99A4:
    beq     $zero, $zero, lbl_80AF99BC
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f4
lbl_80AF99B0:
    nop
    bltz    t7, lbl_80AF99A4
    nop
lbl_80AF99BC:
    sb      t7, 0x0205(s0)             # 00000205
    lbu     t8, 0x0005(v1)             # 00000005
    ctc1    t6, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f8                    # $f8 = 0.00
    bgez    t8, lbl_80AF99E4
    cvt.s.w $f10, $f8
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80AF99E4:
    mul.s   $f16, $f10, $f2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80AF9A5C
    mfc1    t0, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t0, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80AF9A50
    nop
    mfc1    t0, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AF9A68
    or      t0, t0, $at                # t0 = 80000000
lbl_80AF9A50:
    beq     $zero, $zero, lbl_80AF9A68
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f18
lbl_80AF9A5C:
    nop
    bltz    t0, lbl_80AF9A50
    nop
lbl_80AF9A68:
    ctc1    t9, $f31
    lwc1    $f4, 0x0024(s0)            # 00000024
    sb      t0, 0x0206(s0)             # 00000206
    lui     $at, %hi(var_80AFB370)     # $at = 80B00000
    trunc.w.s $f8, $f4
    lwc1    $f4, %lo(var_80AFB370)($at)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mfc1    a1, $f8
    mul.s   $f8, $f12, $f4
    lbu     t4, 0x0003(v1)             # 00000003
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      t4, 0x0010($sp)
    lbu     t5, 0x0004(v1)             # 00000004
    trunc.w.s $f10, $f6
    addiu   a0, s0, 0x0224             # a0 = 00000224
    sw      t5, 0x0014($sp)
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    lbu     t6, 0x0005(v1)             # 00000005
    trunc.w.s $f6, $f8
    mfc1    a3, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    t8, $f6
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      t6, 0x0018($sp)
    jal     func_80065BCC
    sw      t8, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF9AF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x000C(a0)            # 0000000C
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(a0)            # 0000000C
    jal     func_80AF9750
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lbu     t6, 0x0207(a0)             # 00000207
    bnel    t6, $at, lbl_80AF9B44
    lw      $ra, 0x0014($sp)
    jal     func_80AF85F4
    nop
    lw      $ra, 0x0014($sp)
lbl_80AF9B44:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF9B50:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80AF9B7C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_80AF9B7C:
    jal     func_80022930
    sw      a3, 0x0034($sp)
    beq     v0, $zero, lbl_80AF9B9C
    lw      a3, 0x0034($sp)
    jal     func_80AF86C0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF9D44
    lw      $ra, 0x002C($sp)
lbl_80AF9B9C:
    lh      t7, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_80AF9BDC
    lbu     t0, 0x0246(s0)             # 00000246
    jal     func_80022FD0
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    jal     func_80AF86AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF9D44
    lw      $ra, 0x002C($sp)
    lbu     t0, 0x0246(s0)             # 00000246
lbl_80AF9BDC:
    lui     $at, 0xFFFE                # $at = FFFE0000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80AF9C10
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t2, 0x0004(s0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    or      a1, a3, $zero              # a1 = 00000000
    or      t3, t2, $at                # t3 = 00010000
    jal     func_80022A90
    sw      t3, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80AF9C38
    lbu     a0, 0x0184(s0)             # 00000184
lbl_80AF9C10:
    lw      t4, 0x0004(s0)             # 00000004
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a2, s0, 0x0234             # a2 = 00000234
    and     t5, t4, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    sw      t5, 0x0004(s0)             # 00000004
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a3, $at
    lbu     a0, 0x0184(s0)             # 00000184
lbl_80AF9C38:
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lbu     v0, 0x0184(s0)             # 00000184
    mul.s   $f6, $f0, $f4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    add.s   $f10, $f6, $f8
    beq     v0, $zero, lbl_80AF9C80
    swc1    $f10, 0x0028(s0)           # 00000028
    sb      t6, 0x0184(s0)             # 00000184
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_80AF9C80:
    bnel    v0, $zero, lbl_80AF9C90
    lwc1    $f16, 0x0028(s0)           # 00000028
    sb      t7, 0x0184(s0)             # 00000184
    lwc1    $f16, 0x0028(s0)           # 00000028
lbl_80AF9C90:
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0xC120                 # a1 = C1200000
    sub.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    jal     func_80020F04
    sh      t9, 0x027C(s0)             # 0000027C
    lbu     t3, 0x022C(s0)             # 0000022C
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t3, 0x0010($sp)
    lbu     t4, 0x022D(s0)             # 0000022D
    trunc.w.s $f10, $f8
    addiu   a0, s0, 0x0224             # a0 = 00000224
    sw      t4, 0x0014($sp)
    lbu     t5, 0x022E(s0)             # 0000022E
    trunc.w.s $f18, $f16
    mfc1    a1, $f10
    sw      t5, 0x0018($sp)
    trunc.w.s $f6, $f4
    lbu     t6, 0x0207(s0)             # 00000207
    mfc1    a2, $f18
    sll     a1, a1, 16
    mfc1    a3, $f6
    mtc1    t6, $f8                    # $f8 = 0.00
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    bgez    t6, lbl_80AF9D24
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80AF9D24:
    lui     $at, %hi(var_80AFB374)     # $at = 80B00000
    lwc1    $f18, %lo(var_80AFB374)($at)
    mul.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    jal     func_80065BCC
    sw      t8, 0x001C($sp)
    lw      $ra, 0x002C($sp)
lbl_80AF9D44:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF9D54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   a1, $zero, 0xFFF3          # a1 = FFFFFFF3
    jal     func_80AF9750
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lbu     t6, 0x0207(a0)             # 00000207
    bnel    t6, $zero, lbl_80AF9D88
    lw      $ra, 0x0014($sp)
    jal     func_80AF7FC8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80AF9D88:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF9D94:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lhu     t6, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x5005         # $at = 00005005
    addiu   a1, $zero, 0xFFF3          # a1 = FFFFFFF3
    beq     t6, $at, lbl_80AF9DCC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF9750
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AF9DD8
    lw      a0, 0x0024($sp)
lbl_80AF9DCC:
    jal     func_8002313C
    addiu   a1, $zero, 0x31E8          # a1 = 000031E8
    lw      a0, 0x0024($sp)
lbl_80AF9DD8:
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80AF9EC8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80AF9EE0
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_800C95C4
    addiu   a1, $zero, 0x31E8          # a1 = 000031E8
    lw      t7, 0x0024($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    addiu   t4, $zero, 0x5007          # t4 = 00005007
    addu    t8, t8, t7
    lbu     t8, 0x04BD(t8)             # 000104BD
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    bne     t8, $zero, lbl_80AF9EAC
    nop
    jal     func_80071A94
    nop
    beq     v0, $zero, lbl_80AF9E98
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3883          # a1 = 00003883
    lh      t9, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    addiu   t1, $zero, 0x508F          # t1 = 0000508F
    bne     t9, $zero, lbl_80AF9E6C
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    addiu   t0, $zero, 0x5008          # t0 = 00005008
    beq     $zero, $zero, lbl_80AF9EB4
    sh      t0, 0x010E(s0)             # 0000010E
lbl_80AF9E6C:
    sh      t1, 0x010E(s0)             # 0000010E
    jal     func_8006FDCC
    lw      a0, 0x0024($sp)
    lbu     t2, 0x0185(s0)             # 00000185
    lui     a1, %hi(var_80AFB780)      # a1 = 80B00000
    lw      a0, 0x0024($sp)
    addu    a1, a1, t2
    jal     func_800204D0
    lbu     a1, %lo(var_80AFB780)(a1)
    beq     $zero, $zero, lbl_80AF9EB8
    lw      a0, 0x0024($sp)
lbl_80AF9E98:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    addiu   t3, $zero, 0x5006          # t3 = 00005006
    beq     $zero, $zero, lbl_80AF9EB4
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80AF9EAC:
    jal     func_80022FD0
    sh      t4, 0x010E(s0)             # 0000010E
lbl_80AF9EB4:
    lw      a0, 0x0024($sp)
lbl_80AF9EB8:
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80AF9EE4
    lw      $ra, 0x001C($sp)
lbl_80AF9EC8:
    jal     func_80022AD0
    lw      a1, 0x0024($sp)
    beql    v0, $zero, lbl_80AF9EE4
    lw      $ra, 0x001C($sp)
    jal     func_80AF86AC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AF9EE0:
    lw      $ra, 0x001C($sp)
lbl_80AF9EE4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF9EF4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x0245(s0)             # 00000245
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80AF9F7C
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x00B1(s0)             # 000000B1
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0245(s0)             # 00000245
    bne     t8, $zero, lbl_80AF9F38
    nop
    lbu     t9, 0x00B0(s0)             # 000000B0
    beql    t9, $zero, lbl_80AF9F7C
    lw      $ra, 0x001C($sp)
lbl_80AF9F38:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AF9F68
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3876          # a1 = 00003876
    beq     $zero, $zero, lbl_80AF9F70
    nop
lbl_80AF9F68:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3875          # a1 = 00003875
lbl_80AF9F70:
    jal     func_80AF82E8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80AF9F7C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF9F8C:
    lh      t6, 0x018A(a0)             # 0000018A
    bne     t6, $zero, lbl_80AF9FD8
    nop
    lh      t7, 0x0226(a0)             # 00000226
    lh      t8, 0x0228(a0)             # 00000228
    lh      t9, 0x022A(a0)             # 0000022A
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t9, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4
    lh      t1, 0x00B6(a0)             # 000000B6
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    sh      t0, 0x018A(a0)             # 0000018A
    sh      t1, 0x0188(a0)             # 00000188
    cvt.s.w $f10, $f8
    swc1    $f6, 0x0214(a0)            # 00000214
    cvt.s.w $f18, $f16
    swc1    $f10, 0x0218(a0)           # 00000218
    swc1    $f18, 0x021C(a0)           # 0000021C
lbl_80AF9FD8:
    jr      $ra
    nop


func_80AF9FE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x018A(s0)             # 0000018A
    beql    v0, $zero, lbl_80AFA0FC
    lw      $ra, 0x001C($sp)
    beq     v0, $zero, lbl_80AFA00C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x018A(s0)             # 0000018A
lbl_80AFA00C:
    lbu     v0, 0x0290(s0)             # 00000290
    addiu   t9, $zero, 0x0013          # t9 = 00000013
    addiu   a0, s0, 0x0210             # a0 = 00000210
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80AFA02C
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0290(s0)             # 00000290
    sh      t9, 0x018A(s0)             # 0000018A
lbl_80AFA02C:
    lh      t0, 0x018A(s0)             # 0000018A
    lui     a1, 0x3B44                 # a1 = 3B440000
    ori     a1, a1, 0x9BA6             # a1 = 3B449BA6
    slti    $at, t0, 0x0014
    beq     $at, $zero, lbl_80AFA060
    lui     a2, 0x3A1D                 # a2 = 3A1D0000
    lui     a2, 0x391D                 # a2 = 391D0000
    ori     a2, a2, 0x4952             # a2 = 391D4952
    addiu   a0, s0, 0x0210             # a0 = 00000210
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     $zero, $zero, lbl_80AFA0FC
    lw      $ra, 0x001C($sp)
lbl_80AFA060:
    jal     func_8006385C
    ori     a2, a2, 0x4952             # a2 = 00004952
    beql    v0, $zero, lbl_80AFA0B4
    lwc1    $f8, 0x0214(s0)            # 00000214
    jal     func_800636C4              # sins?
    lh      a0, 0x0188(s0)             # 00000188
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f6                   # $f6 = 2.50
    lwc1    $f4, 0x0214(s0)            # 00000214
    lh      a0, 0x0188(s0)             # 00000188
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0214(s0)           # 00000214
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f18                  # $f18 = 2.50
    lwc1    $f16, 0x021C(s0)           # 0000021C
    mul.s   $f6, $f18, $f0
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x021C(s0)            # 0000021C
    lwc1    $f8, 0x0214(s0)            # 00000214
lbl_80AFA0B4:
    lwc1    $f18, 0x0218(s0)           # 00000218
    lwc1    $f6, 0x021C(s0)            # 0000021C
    trunc.w.s $f10, $f8
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    trunc.w.s $f16, $f18
    mfc1    t2, $f10
    ori     $at, $at, 0x1E60           # $at = 00011E60
    trunc.w.s $f4, $f6
    mfc1    t4, $f16
    addiu   a2, s0, 0x0280             # a2 = 00000280
    addu    a1, a0, $at
    mfc1    t6, $f4
    sh      t2, 0x02C6(s0)             # 000002C6
    sh      t4, 0x02C8(s0)             # 000002C8
    jal     func_8004BD50              # CollisionCheck_setAT
    sh      t6, 0x02CA(s0)             # 000002CA
    lw      $ra, 0x001C($sp)
lbl_80AFA0FC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFA10C:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lh      t6, 0x018A(s1)             # 0000018A
    beql    t6, $zero, lbl_80AFA3CC
    lw      $ra, 0x004C($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s2
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t3, 0x1DE4(t3)             # 00011DE4
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    $at, $zero, t3
    sll     t4, $at,  2
    addu    t4, t4, $at
    sll     t4, t4,  2
    andi    t5, t4, 0x01FF             # t5 = 00000000
    sw      t5, 0x0020($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x006C($sp)
    lw      t0, 0x006C($sp)
    lui     $at, %hi(var_80AFB378)     # $at = 80B00000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f4, 0x0210(s1)            # 00000210
    lwc1    $f6, %lo(var_80AFB378)($at)
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f0, $f4, $f6
    nop
    cfc1    t1, $f31
    ctc1    a1, $f31
    lw      a0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    cvt.w.s $f8, $f0
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x8080             # t9 = FA008080
    cfc1    a1, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    sw      t9, 0x0000(a0)             # 00000000
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_80AFA268
    mfc1    a1, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f8, $f0, $f8
    ctc1    a1, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80AFA25C
    nop
    mfc1    a1, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AFA274
    or      a1, a1, $at                # a1 = 80000000
lbl_80AFA25C:
    beq     $zero, $zero, lbl_80AFA274
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f8
lbl_80AFA268:
    nop
    bltz    a1, lbl_80AFA25C
    nop
lbl_80AFA274:
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    lui     $at, 0xFFFF                # $at = FFFF0000
    ctc1    t1, $f31
    or      t2, a1, $at                # t2 = FFFF00FF
    sw      t2, 0x0004(a0)             # 00000004
    lwc1    $f12, 0x0214(s1)           # 00000214
    lwc1    $f14, 0x0218(s1)           # 00000218
    lw      a2, 0x021C(s1)             # 0000021C
    jal     func_800AA7F4
    sw      a1, 0x0050($sp)
    lh      t3, 0x07A0(s2)             # 000007A0
    sll     t4, t3,  2
    addu    t5, s2, t4
    jal     func_8004977C
    lw      a0, 0x0790(t5)             # 00000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t6, v0, $at
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80AFB37C)     # $at = 80B00000
    lwc1    $f18, %lo(var_80AFB37C)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lh      t9, 0x018A(s1)             # 0000018A
    slti    $at, t9, 0x0014
    bne     $at, $zero, lbl_80AFA32C
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xFF00                 # t3 = FF000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lwc1    $f20, 0x0210(s1)           # 00000210
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f20
    mov.s   $f12, $f20
    jal     func_800AA8FC
    mov.s   $f14, $f20
    beq     $zero, $zero, lbl_80AFA388
    lw      s1, 0x02D0(s0)             # 000002D0
lbl_80AFA32C:
    lui     $at, %hi(var_80AFB380)     # $at = 80B00000
    lwc1    $f0, %lo(var_80AFB380)($at)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     $at, %hi(var_80AFB384)     # $at = 80B00000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0050($sp)
    sll     t7, t6, 24
    sw      t7, 0x0004(v1)             # 00000004
    lwc1    $f20, 0x0210(s1)           # 00000210
    lwc1    $f4, %lo(var_80AFB384)($at)
    lui     $at, %hi(var_80AFB388)     # $at = 80B00000
    sub.s   $f10, $f0, $f20
    mul.s   $f6, $f20, $f4
    lwc1    $f8, %lo(var_80AFB388)($at)
    mfc1    a2, $f0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    add.s   $f14, $f10, $f0
    jal     func_800AA8FC
    add.s   $f12, $f6, $f8
    lw      s1, 0x02D0(s0)             # 000002D0
lbl_80AFA388:
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0405                 # t3 = 04050000
    addiu   t3, t3, 0x2A10             # t3 = 04052A10
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x004C($sp)
lbl_80AFA3CC:
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_80AFA3E4:
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_80AF8F20)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF8F20) # t6 = 80AF8F20
    bne     t6, v0, lbl_80AFA47C
    lui     t0, %hi(func_80AF90C4)     # t0 = 80B00000
    lbu     v0, 0x0204(a0)             # 00000204
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   v0, v0, 0x0005             # v0 = 00000005
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0051
    bne     $at, $zero, lbl_80AFA424
    addiu   t9, $zero, 0x00E1          # t9 = 000000E1
    beq     $zero, $zero, lbl_80AFA428
    sb      t7, 0x0204(a0)             # 00000204
lbl_80AFA424:
    sb      v0, 0x0204(a0)             # 00000204
lbl_80AFA428:
    lbu     v0, 0x0205(a0)             # 00000205
    addiu   v0, v0, 0x0005             # v0 = 0000000A
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0100
    bnel    $at, $zero, lbl_80AFA450
    sb      v0, 0x0205(a0)             # 00000205
    beq     $zero, $zero, lbl_80AFA450
    sb      t8, 0x0205(a0)             # 00000205
    sb      v0, 0x0205(a0)             # 00000205
lbl_80AFA450:
    lbu     v0, 0x0206(a0)             # 00000206
    addiu   v0, v0, 0x0005             # v0 = 0000000F
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x00E2
    bne     $at, $zero, lbl_80AFA474
    nop
    jr      $ra
    sb      t9, 0x0206(a0)             # 00000206
lbl_80AFA474:
    jr      $ra
    sb      v0, 0x0206(a0)             # 00000206
lbl_80AFA47C:
    addiu   t0, t0, %lo(func_80AF90C4) # t0 = 80AF90C4
    bnel    t0, v0, lbl_80AFA4C4
    lbu     v0, 0x0204(a0)             # 00000204
    lbu     t1, 0x0114(a0)             # 00000114
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80AFA4B0
    addiu   t5, $zero, 0x00E1          # t5 = 000000E1
    sb      $zero, 0x0204(a0)          # 00000204
    sb      $zero, 0x0205(a0)          # 00000205
    jr      $ra
    sb      $zero, 0x0206(a0)          # 00000206
lbl_80AFA4B0:
    sb      t3, 0x0204(a0)             # 00000204
    sb      t4, 0x0205(a0)             # 00000205
    jr      $ra
    sb      t5, 0x0206(a0)             # 00000206
lbl_80AFA4C0:
    lbu     v0, 0x0204(a0)             # 00000204
lbl_80AFA4C4:
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   v0, v0, 0x0005             # v0 = 00000014
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0100
    bnel    $at, $zero, lbl_80AFA4F0
    sb      v0, 0x0204(a0)             # 00000204
    beq     $zero, $zero, lbl_80AFA4F0
    sb      t6, 0x0204(a0)             # 00000204
    sb      v0, 0x0204(a0)             # 00000204
lbl_80AFA4F0:
    lbu     v0, 0x0205(a0)             # 00000205
    addiu   v0, v0, 0x0005             # v0 = 00000019
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0100
    bnel    $at, $zero, lbl_80AFA518
    sb      v0, 0x0205(a0)             # 00000205
    beq     $zero, $zero, lbl_80AFA518
    sb      t7, 0x0205(a0)             # 00000205
    sb      v0, 0x0205(a0)             # 00000205
lbl_80AFA518:
    lbu     v1, 0x0206(a0)             # 00000206
    slti    $at, v1, 0x00D3
    bne     $at, $zero, lbl_80AFA550
    addiu   v0, v1, 0x0005             # v0 = 00000005
    addiu   v0, v1, 0xFFFB             # v0 = FFFFFFFB
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x00D2
    beq     $at, $zero, lbl_80AFA548
    addiu   t8, $zero, 0x00D2          # t8 = 000000D2
    jr      $ra
    sb      t8, 0x0206(a0)             # 00000206
lbl_80AFA548:
    jr      $ra
    sb      v0, 0x0206(a0)             # 00000206
lbl_80AFA550:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x00D3
    bne     $at, $zero, lbl_80AFA56C
    addiu   t9, $zero, 0x00D2          # t9 = 000000D2
    jr      $ra
    sb      t9, 0x0206(a0)             # 00000206
lbl_80AFA56C:
    sb      v0, 0x0206(a0)             # 00000206
    jr      $ra
    nop


func_80AFA578:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_80AF8B44)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF8B44) # t6 = 80AF8B44
    bne     t6, t7, lbl_80AFA674
    lui     $at, 0x4140                # $at = 41400000
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 12.00
    lui     $at, %hi(var_80AFB38C)     # $at = 80B00000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_80AFA674
    nop
    lwc1    $f6, %lo(var_80AFB38C)($at)
    lui     $at, %hi(var_80AFB390)     # $at = 80B00000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   v0, v0, 0x0037             # v0 = 00000037
    sb      v0, 0x020A(a0)             # 0000020A
    sb      v0, 0x0209(a0)             # 00000209
    sb      v0, 0x0208(a0)             # 00000208
    lwc1    $f16, %lo(var_80AFB390)($at)
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f18, $f0, $f16
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80AFA65C
    mfc1    t0, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t0, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80AFA650
    nop
    mfc1    t0, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80AFA668
    or      t0, t0, $at                # t0 = 80000000
lbl_80AFA650:
    beq     $zero, $zero, lbl_80AFA668
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f4
lbl_80AFA65C:
    nop
    bltz    t0, lbl_80AFA650
    nop
lbl_80AFA668:
    ctc1    t9, $f31
    beq     $zero, $zero, lbl_80AFA6DC
    sb      t0, 0x020B(a0)             # 0000020B
lbl_80AFA674:
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    mul.s   $f8, $f0, $f6
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    mul.s   $f18, $f0, $f16
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sb      t6, 0x020B(a0)             # 0000020B
    trunc.w.s $f10, $f8
    mul.s   $f8, $f0, $f6
    mfc1    t4, $f10
    trunc.w.s $f4, $f18
    addiu   t5, t4, 0x00E1             # t5 = 000000E1
    sb      t5, 0x0208(a0)             # 00000208
    trunc.w.s $f10, $f8
    mfc1    t9, $f4
    mfc1    t4, $f10
    addiu   t0, t9, 0x009B             # t0 = 0000009B
    sb      t0, 0x0209(a0)             # 00000209
    addiu   t5, t4, 0x005F             # t5 = 0000005F
    sb      t5, 0x020A(a0)             # 0000020A
lbl_80AFA6DC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFA6EC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF9EF4
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF9FE0
    or      a1, s1, $zero              # a1 = 00000000
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80AF8F20)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF8F20) # t6 = 80AF8F20
    beq     t6, v0, lbl_80AFA75C
    lui     t7, %hi(func_80AF90C4)     # t7 = 80B00000
    addiu   t7, t7, %lo(func_80AF90C4) # t7 = 80AF90C4
    beq     t7, v0, lbl_80AFA75C
    lui     t8, %hi(func_80AF8B44)     # t8 = 80B00000
    addiu   t8, t8, %lo(func_80AF8B44) # t8 = 80AF8B44
    bne     t8, v0, lbl_80AFA768
    nop
lbl_80AFA75C:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x0180(s0)             # 00000180
lbl_80AFA768:
    lui     t0, %hi(func_80AF88DC)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AF88DC) # t0 = 80AF88DC
    beq     t0, v0, lbl_80AFA804
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4228                 # a1 = 42280000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sw      t1, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x41D8                 # a3 = 41D80000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    jal     func_80AFA3E4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFA578
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0234             # a1 = 00000234
    sw      a1, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    lbu     t2, 0x0245(s0)             # 00000245
    lw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80AFA808
    lw      $ra, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
lbl_80AFA804:
    lw      $ra, 0x0024($sp)
lbl_80AFA808:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80AFA818:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    lw      a0, 0x002C($sp)
    sw      $ra, 0x0014($sp)
    sw      a3, 0x0024($sp)
    lbu     t6, 0x0207(a0)             # 00000207
    lui     t3, %hi(func_80AF956C)     # t3 = 80B00000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     t6, $zero, lbl_80AFA86C
    addiu   t3, t3, %lo(func_80AF956C) # t3 = 80AF956C
    beql    a1, $at, lbl_80AFA870
    sw      $zero, 0x0000(a2)          # 00000000
    lw      v0, 0x0180(a0)             # 00000180
    lui     t7, %hi(func_80AF9154)     # t7 = 80B00000
    addiu   t7, t7, %lo(func_80AF9154) # t7 = 80AF9154
    bnel    t7, v0, lbl_80AFA87C
    lh      t9, 0x001C(a0)             # 0000001C
    lh      t8, 0x0186(a0)             # 00000186
    slti    $at, t8, 0x0002
    bnel    $at, $zero, lbl_80AFA87C
    lh      t9, 0x001C(a0)             # 0000001C
lbl_80AFA86C:
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80AFA870:
    beq     $zero, $zero, lbl_80AFA8D4
    lw      v0, 0x0180(a0)             # 00000180
    lh      t9, 0x001C(a0)             # 0000001C
lbl_80AFA87C:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v1, t9, lbl_80AFA8D4
    nop
    bne     a1, v1, lbl_80AFA8A4
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x5900             # t0 = 06005900
    sw      t0, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_80AFA8D4
    lw      v0, 0x0180(a0)             # 00000180
lbl_80AFA8A4:
    bne     a1, $at, lbl_80AFA8BC
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x5620             # t1 = 06005620
    sw      t1, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_80AFA8D4
    lw      v0, 0x0180(a0)             # 00000180
lbl_80AFA8BC:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80AFA8D4
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x59F0             # t2 = 060059F0
    sw      t2, 0x0000(a2)             # 00000000
    lw      v0, 0x0180(a0)             # 00000180
lbl_80AFA8D4:
    bne     t3, v0, lbl_80AFA90C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    a1, $at, lbl_80AFA910
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t4, 0x0186(a0)             # 00000186
    lui     $at, 0x3D80                # $at = 3D800000
    mtc1    $at, $f8                   # $f8 = 0.06
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
lbl_80AFA90C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFA910:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFA920:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    sw      a3, 0x0064($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      s0, 0x0068($sp)
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    lui     t6, %hi(func_80AF9154)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF9154) # t6 = 80AF9154
    sw      t6, 0x0038($sp)
    lw      t7, 0x0180(s0)             # 00000180
    bnel    t6, t7, lbl_80AFA9D4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lh      t8, 0x0186(s0)             # 00000186
    slti    $at, t8, 0x0002
    bne     $at, $zero, lbl_80AFA9D0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a3, $at, lbl_80AFA9D0
    lw      a2, 0x006C($sp)
    lw      v1, 0x0000(a2)             # 00000000
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a2)             # 00000000
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x0058($sp)
    lw      a0, 0x0000(t1)             # 00000000
    sw      a3, 0x005C($sp)
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      a1, 0x0050($sp)
    lw      a2, 0x006C($sp)
    lw      a3, 0x005C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x0000(a2)             # 00000000
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x66D0             # t4 = 060066D0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x0000(a2)             # 00000000
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
lbl_80AFA9D0:
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80AFA9D4:
    bne     a3, $at, lbl_80AFAB1C
    lui     a0, %hi(var_80AFB31C)      # a0 = 80B00000
    addiu   a0, a0, %lo(var_80AFB31C)  # a0 = 80AFB31C
    jal     func_800AB958
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE8
    lw      t5, 0x0038($sp)
    lw      t6, 0x0180(s0)             # 00000180
    bne     t5, t6, lbl_80AFAA3C
    nop
    lh      t7, 0x0186(s0)             # 00000186
    slti    $at, t7, 0x0013
    bne     $at, $zero, lbl_80AFAA3C
    nop
    lwc1    $f0, 0x0050(s0)            # 00000050
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80AFB394)     # $at = 80B00000
    c.eq.s  $f4, $f0
    nop
    bc1t    lbl_80AFAA3C
    nop
    lwc1    $f6, %lo(var_80AFB394)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f12, $f6, $f0
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
lbl_80AFAA3C:
    lui     a0, %hi(var_80AFB790)      # a0 = 80B00000
    jal     func_800AA740
    addiu   a0, a0, %lo(var_80AFB790)  # a0 = 80AFB790
    lw      t8, 0x0038($sp)
    lw      t9, 0x0180(s0)             # 00000180
    lui     a0, %hi(var_80AFB790)      # a0 = 80B00000
    addiu   a0, a0, %lo(var_80AFB790)  # a0 = 80AFB790
    bnel    t8, t9, lbl_80AFAA8C
    lbu     t4, 0x0208(s0)             # 00000208
    lh      t0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bnel    t0, $at, lbl_80AFAA8C
    lbu     t4, 0x0208(s0)             # 00000208
    lwc1    $f8, 0x0030(a0)            # 80AFB7C0
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0034(a0)           # 80AFB7C4
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0038(a0)           # 80AFB7C8
    swc1    $f16, 0x002C(s0)           # 0000002C
    lbu     t4, 0x0208(s0)             # 00000208
lbl_80AFAA8C:
    lwc1    $f18, 0x0040($sp)
    lwc1    $f6, 0x0044($sp)
    sw      t4, 0x0010($sp)
    lbu     t5, 0x0209(s0)             # 00000209
    lwc1    $f10, 0x0048($sp)
    trunc.w.s $f4, $f18
    sw      t5, 0x0014($sp)
    lbu     t6, 0x020A(s0)             # 0000020A
    trunc.w.s $f8, $f6
    mfc1    a1, $f4
    sw      t6, 0x0018($sp)
    trunc.w.s $f16, $f10
    lbu     t7, 0x020B(s0)             # 0000020B
    mfc1    a2, $f8
    sll     a1, a1, 16
    mfc1    a3, $f16
    mtc1    t7, $f18                   # $f18 = 0.00
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0224             # a0 = 00000224
    bgez    t7, lbl_80AFAB00
    cvt.s.w $f4, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_80AFAB00:
    lui     $at, %hi(var_80AFB398)     # $at = 80B00000
    lwc1    $f8, %lo(var_80AFB398)($at)
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    jal     func_80065C30
    sw      t9, 0x001C($sp)
lbl_80AFAB1C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80AFAB30:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    lw      t1, 0x0180(s2)             # 00000180
    lui     t8, %hi(var_80AFB2FC)      # t8 = 80B00000
    lui     t9, %hi(func_80AF88DC)     # t9 = 80B00000
    addiu   t8, t8, %lo(var_80AFB2FC)  # t8 = 80AFB2FC
    addiu   t9, t9, %lo(func_80AF88DC) # t9 = 80AF88DC
    sll     t7, t6,  4
    beq     t9, t1, lbl_80AFADE4
    addu    v0, t7, t8
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0060($sp)
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s3)             # 00000000
    lw      v0, 0x0060($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0028             # t3 = DB060028
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    lbu     a3, 0x0008(v0)             # 00000008
    lbu     a2, 0x0007(v0)             # 00000007
    lbu     a1, 0x0006(v0)             # 00000006
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0010($sp)
    jal     func_8007EE04
    sw      s0, 0x0054($sp)
    lw      v1, 0x0054($sp)
    sw      v0, 0x0004(v1)             # 00000004
    lbu     a0, 0x0207(s2)             # 00000207
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    a0, $at, lbl_80AFABEC
    lw      s0, 0x02C0(s1)             # 000002C0
    bnel    a0, $zero, lbl_80AFAC88
    lw      s0, 0x02D0(s1)             # 000002D0
    lw      s0, 0x02C0(s1)             # 000002C0
lbl_80AFABEC:
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lbu     t7, 0x0207(s2)             # 00000207
    lbu     a3, 0x0206(s2)             # 00000206
    lbu     a2, 0x0205(s2)             # 00000205
    lbu     a1, 0x0204(s2)             # 00000204
    lw      a0, 0x0000(s3)             # 00000000
    sw      s0, 0x0050($sp)
    jal     func_8007EE04
    sw      t7, 0x0010($sp)
    lw      t0, 0x0050($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0030             # t9 = DB060030
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0x8520             # t1 = 800E8520
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      a1, 0x0140(s2)             # 00000140
    lw      a2, 0x015C(s2)             # 0000015C
    lui     t2, %hi(func_80AFA920)     # t2 = 80B00000
    addiu   t2, t2, %lo(func_80AFA920) # t2 = 80AFA920
    sw      t2, 0x0010($sp)
    sw      s2, 0x0014($sp)
    lw      t3, 0x02C0(s1)             # 000002C0
    lui     a3, %hi(func_80AFA818)     # a3 = 80B00000
    addiu   a3, a3, %lo(func_80AFA818) # a3 = 80AFA818
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008A414
    sw      t3, 0x0018($sp)
    beq     $zero, $zero, lbl_80AFAD1C
    sw      v0, 0x02C0(s1)             # 000002C0
    lw      s0, 0x02D0(s1)             # 000002D0
lbl_80AFAC88:
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lbu     t6, 0x0207(s2)             # 00000207
    lbu     a3, 0x0206(s2)             # 00000206
    lbu     a2, 0x0205(s2)             # 00000205
    lbu     a1, 0x0204(s2)             # 00000204
    lw      a0, 0x0000(s3)             # 00000000
    sw      s0, 0x0048($sp)
    jal     func_8007EE04
    sw      t6, 0x0010($sp)
    lw      t0, 0x0048($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x8510             # t9 = 800E8510
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      a1, 0x0140(s2)             # 00000140
    lw      a2, 0x015C(s2)             # 0000015C
    lui     t1, %hi(func_80AFA920)     # t1 = 80B00000
    addiu   t1, t1, %lo(func_80AFA920) # t1 = 80AFA920
    sw      t1, 0x0010($sp)
    sw      s2, 0x0014($sp)
    lw      t2, 0x02D0(s1)             # 000002D0
    lui     a3, %hi(func_80AFA818)     # a3 = 80B00000
    addiu   a3, a3, %lo(func_80AFA818) # a3 = 80AFA818
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008A414
    sw      t2, 0x0018($sp)
    sw      v0, 0x02D0(s1)             # 000002D0
lbl_80AFAD1C:
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xE700                 # t4 = E7000000
    lui     a0, %hi(var_80AFB790)      # a0 = 80B00000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lbu     t2, 0x0209(s2)             # 00000209
    lbu     t8, 0x0208(s2)             # 00000208
    lbu     t6, 0x020A(s2)             # 0000020A
    sll     t3, t2, 16
    sll     t9, t8, 24
    or      t4, t9, t3                 # t4 = 00000008
    sll     t7, t6,  8
    or      t8, t4, t7                 # t8 = 00000008
    ori     t1, t8, 0x00FF             # t1 = 000000FF
    sw      t1, 0x0004(s0)             # 00000004
    jal     func_800AA764
    addiu   a0, a0, %lo(var_80AFB790)  # a0 = 80AFB790
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0038($sp)
    lw      a1, 0x0038($sp)
    lui     a2, 0xDE00                 # a2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x4BA0             # t5 = 06004BA0
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(s0)             # 00000004
    sw      a2, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x4CC0             # t4 = 06004CC0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0004(s0)             # 00000004
    sw      a2, 0x0000(s0)             # 00000000
lbl_80AFADE4:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80AFA10C
    or      a1, s3, $zero              # a1 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80AFAE0C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0180(a0)             # 00000180
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80AF966C)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AF966C) # t6 = 80AF966C
    lw      t7, 0x0180(a0)             # 00000180
    bne     t6, t7, lbl_80AFAE50
    nop
    jal     func_80AFA578
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_80AFAE50:
    jal     func_80AF9FE0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFAE68:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    lui     t8, %hi(var_80AFB2FC)      # t8 = 80B00000
    addiu   t8, t8, %lo(var_80AFB2FC)  # t8 = 80AFB2FC
    sll     t7, t6,  4
    addu    t0, t7, t8
    lw      t2, 0x0180(s1)             # 00000180
    lw      a2, 0x0000(s2)             # 00000000
    lui     t9, %hi(func_80AF966C)     # t9 = 80B00000
    addiu   t9, t9, %lo(func_80AF966C) # t9 = 80AF966C
    bne     t9, t2, lbl_80AFB010
    or      s0, a2, $zero              # s0 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E298
    sw      t0, 0x007C($sp)
    lw      t0, 0x007C($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lbu     a3, 0x0008(t0)             # 00000008
    lbu     a2, 0x0007(t0)             # 00000007
    lbu     a1, 0x0006(t0)             # 00000006
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sw      t5, 0x0010($sp)
    jal     func_8007EE04
    sw      v1, 0x0070($sp)
    lw      t1, 0x0070($sp)
    addiu   a0, s1, 0x0224             # a0 = 00000224
    sw      v0, 0x0004(t1)             # 00000004
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f16, 0x002C(s1)           # 0000002C
    lbu     t9, 0x0208(s1)             # 00000208
    trunc.w.s $f6, $f4
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    sw      t9, 0x0010($sp)
    trunc.w.s $f10, $f8
    lbu     t2, 0x0209(s1)             # 00000209
    mfc1    a1, $f6
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    sw      t2, 0x0014($sp)
    lbu     t3, 0x020A(s1)             # 0000020A
    mfc1    a3, $f18
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t4, 0x001C($sp)
    jal     func_80065C30
    sw      t3, 0x0018($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t8, 0x0208(s1)             # 00000208
    lbu     t3, 0x0209(s1)             # 00000209
    lbu     t7, 0x020A(s1)             # 0000020A
    sll     t9, t8, 24
    sll     t4, t3, 16
    or      t5, t9, t4                 # t5 = 00000000
    sll     t8, t7,  8
    or      t2, t5, t8                 # t2 = 00000000
    ori     t3, t2, 0x00FF             # t3 = 000000FF
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0068($sp)
    lw      a2, 0x0068($sp)
    lui     a3, 0xDE00                 # a3 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x4BA0             # t7 = 06004BA0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x4CC0             # t8 = 06004CC0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80AFB20C
    or      a0, s1, $zero              # a0 = 00000000
lbl_80AFB010:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E2C0
    sw      t0, 0x007C($sp)
    lw      t0, 0x007C($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, s2
    lw      t7, 0x1DE4(t7)             # 00011DE4
    lb      t5, 0x0009(t0)             # 00000009
    addiu   t9, $zero, 0x0080          # t9 = 00000080
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    multu   t7, t5
    sw      t3, 0x0024($sp)
    sw      t9, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x005C($sp)
    mflo    t8
    andi    t2, t8, 0x01FF             # t2 = 00000000
    jal     func_8007EB84
    sw      t2, 0x0020($sp)
    lw      t1, 0x005C($sp)
    lw      t0, 0x007C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0024             # t6 = DB060024
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a1, 0x000C(t0)             # 0000000C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a1,  4
    srl     t5, t7, 28
    sll     t8, t5,  2
    addu    t2, t2, t8
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t3, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t2, t3
    addu    t4, t9, $at
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t9, 0x0001(t0)             # 00000001
    lbu     t8, 0x0000(t0)             # 00000000
    lbu     t5, 0x0002(t0)             # 00000002
    sll     t4, t9, 16
    sll     t2, t8, 24
    or      t6, t2, t4                 # t6 = 80120008
    lbu     t2, 0x0207(s1)             # 00000207
    sll     t8, t5,  8
    or      t3, t6, t8                 # t3 = 80120008
    or      t4, t3, t2                 # t4 = 80120008
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lbu     t8, 0x0204(s1)             # 00000204
    lbu     t2, 0x0205(s1)             # 00000205
    lbu     t6, 0x0206(s1)             # 00000206
    sll     t9, t8, 24
    sll     t4, t2, 16
    or      t7, t9, t4                 # t7 = 80120008
    sll     t8, t6,  8
    or      t3, t7, t8                 # t3 = 80120008
    ori     t2, t3, 0x00FF             # t2 = 801200FF
    sw      t2, 0x0004(v1)             # 00000004
    lh      t9, 0x07A0(s2)             # 000007A0
    sll     t4, t9,  2
    addu    t5, s2, t4
    jal     func_8004977C
    lw      a0, 0x0790(t5)             # FB000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t6, v0, $at
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80AFB39C)     # $at = 80B00000
    lwc1    $f8, %lo(var_80AFB39C)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    lui     a3, 0xDE00                 # a3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x23B0             # t4 = 060023B0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
lbl_80AFB20C:
    jal     func_80AFA10C
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    nop

.section .data

var_80AFB230: .word 0x01750500, 0x00001035, 0x006D0000, 0x000002CC
.word func_80AF7D60
.word func_80AF7F68
.word func_80AFA6EC
.word func_80AFAB30
var_80AFB250: .word \
0x03000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00190032, 0x00140000, 0x00000000
var_80AFB27C: .word \
0x0A110000, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x01040000, 0x00000000, 0x00000000, 0x19000000, \
0x000A001E, 0x00000000, 0x00000000
var_80AFB2A8: .word 0x04000019, 0x00322800
var_80AFB2B0: .word \
0x00020102, 0x11020212, 0x01020402, 0x02020202, \
0x02000000, 0x00000104, 0x02020804, 0x00000400
var_80AFB2D0: .word 0x00000000
var_80AFB2D4: .word 0xC47A0000, 0x00000000, 0x45CB2000
var_80AFB2E0: .word 0x304C0C80
var_80AFB2E4: .word 0x00000000, 0x40400000, 0x00000000
var_80AFB2F0: .word 0x00000000, 0x00000000, 0x00000000
var_80AFB2FC: .word \
0xFFAAFF64, 0x0096FF55, 0x00F80000, 0x06001B70, \
0xFFFFAAFF, 0xC800A000, 0xFFF10000, 0x06001370
var_80AFB31C: .word \
0x00000000, 0x44AF0000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80AFB330: .word 0x3C656042
var_80AFB334: .word 0x3C23D70A
var_80AFB338: .word 0x44BB8000
var_80AFB33C: .word 0x3ECCCCCD
var_80AFB340: .word 0x3D4CCCCD
var_80AFB344: .word 0x3DCCCCCD
var_80AFB348: .word 0x453B8000
var_80AFB34C: .word 0x3E4CCCCD
var_80AFB350: .word 0x44BB8000
var_80AFB354: .word 0x3A83126F
var_80AFB358: .word 0x3BE56042
var_80AFB35C: .word 0x3B808081
var_80AFB360: .word 0x3BB78035
var_80AFB364: .word 0x3AB78035
var_80AFB368: .word 0x37E64689
var_80AFB36C: .word 0x3D70F0F1
var_80AFB370: .word 0x3F48C8C9
var_80AFB374: .word 0x3F48C8C9
var_80AFB378: .word 0x47A60400
var_80AFB37C: .word 0x38C90FDB
var_80AFB380: .word 0x3B449BA6
var_80AFB384: .word 0x3F333333
var_80AFB388: .word 0x3A6BEDFB
var_80AFB38C: .word 0x418547AE
var_80AFB390: .word 0x41855555
var_80AFB394: .word 0x3C23D70A
var_80AFB398: .word 0x3F48C8C9
var_80AFB39C: .word 0x38C90FDB

.bss

var_80AFB740: .space 0x40
var_80AFB780: .space 0x10
var_80AFB790: .space 0x40
