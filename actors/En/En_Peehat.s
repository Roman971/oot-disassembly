.section .text
func_80892000:
    sw      a1, 0x02A8(a0)             # 000002A8
    jr      $ra
    nop


func_8089200C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_80895310)      # a1 = 80890000
    addiu   a1, a1, %lo(var_80895310)  # a1 = 80895310
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3D13                 # a1 = 3D130000
    ori     a1, a1, 0x74BD             # a1 = 3D1374BD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x0210             # t7 = 00000210
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x09C4             # a3 = 060009C4
    addiu   a2, a2, 0x1C80             # a2 = 06001C80
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0x42C8                 # a1 = 42C80000
    jal     func_8001EC20
    lui     a3, 0x41D8                 # a3 = 41D80000
    lw      t0, 0x0024(s0)             # 00000024
    lw      t9, 0x0028(s0)             # 00000028
    lwc1    $f4, 0x0028(s0)            # 00000028
    sw      t0, 0x0038(s0)             # 00000038
    lw      t0, 0x002C(s0)             # 0000002C
    lui     t3, %hi(var_808952F0)      # t3 = 80890000
    addiu   t1, $zero, 0x00FE          # t1 = 000000FE
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   t3, t3, %lo(var_808952F0)  # t3 = 808952F0
    sw      $zero, 0x02C4(s0)          # 000002C4
    sh      $zero, 0x0032(s0)          # 00000032
    sb      t1, 0x00AE(s0)             # 000000AE
    sb      t2, 0x00AF(s0)             # 000000AF
    sw      t3, 0x0098(s0)             # 00000098
    addiu   a1, s0, 0x02F0             # a1 = 000002F0
    sw      t9, 0x003C(s0)             # 0000003C
    swc1    $f4, 0x0080(s0)            # 00000080
    sw      t0, 0x0040(s0)             # 00000040
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80895240)      # a3 = 80890000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80895240)  # a3 = 80895240
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x039C             # a1 = 0000039C
    sw      a1, 0x0034($sp)
    jal     func_8004B858
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808952A0)      # a3 = 80890000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_808952A0)  # a3 = 808952A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x033C             # a1 = 0000033C
    sw      a1, 0x0034($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80895290)      # a3 = 80890000
    addiu   t4, s0, 0x035C             # t4 = 0000035C
    lw      a1, 0x0034($sp)
    sw      t4, 0x0010($sp)
    addiu   a3, a3, %lo(var_80895290)  # a3 = 80895290
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x4439                # $at = 44390000
    mtc1    $at, $f6                   # $f6 = 740.00
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f8                   # $f8 = 1200.00
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f10                  # $f10 = 4000.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f16                  # $f16 = 800.00
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f18                  # $f18 = 1800.00
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t5, $zero, 0x0048          # t5 = 00000048
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sb      t5, 0x0117(s0)             # 00000117
    swc1    $f6, 0x02CC(s0)            # 000002CC
    swc1    $f8, 0x02C8(s0)            # 000002C8
    swc1    $f10, 0x00F4(s0)           # 000000F4
    swc1    $f16, 0x00F8(s0)           # 000000F8
    beq     v0, $at, lbl_808921C0
    swc1    $f18, 0x00FC(s0)           # 000000FC
    beq     v0, $zero, lbl_808921D0
    lui     $at, %hi(var_80895390)     # $at = 80890000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8089220C
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    beq     $zero, $zero, lbl_8089226C
    lw      $ra, 0x002C($sp)
lbl_808921C0:
    jal     func_808926A4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8089226C
    lw      $ra, 0x002C($sp)
lbl_808921D0:
    lwc1    $f4, %lo(var_80895390)($at)
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f6                   # $f6 = 2800.00
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f8                   # $f8 = 1400.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x00F4(s0)            # 000000F4
    swc1    $f6, 0x02CC(s0)            # 000002CC
    jal     func_80892890
    swc1    $f8, 0x02C8(s0)            # 000002C8
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at
    beq     $zero, $zero, lbl_80892268
    sw      t7, 0x0004(s0)             # 00000004
lbl_8089220C:
    lui     $at, %hi(var_80895394)     # $at = 80890000
    lwc1    $f0, %lo(var_80895394)($at)
    lui     $at, %hi(var_80895398)     # $at = 80890000
    lui     t1, 0x0001                 # t1 = 00010000
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f10, %lo(var_80895398)($at)
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addiu   t0, $zero, 0xFFFB          # t0 = FFFFFFFB
    ori     t1, t1, 0xF824             # t1 = 0001F824
    addiu   t2, $zero, 0x0011          # t2 = 00000011
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    addiu   t4, $zero, 0x0049          # t4 = 00000049
    sh      t8, 0x0330(s0)             # 00000330
    sh      t9, 0x0332(s0)             # 00000332
    sh      t0, 0x0334(s0)             # 00000334
    sw      t1, 0x0310(s0)             # 00000310
    sb      t2, 0x03AC(s0)             # 000003AC
    sb      t3, 0x03AD(s0)             # 000003AD
    sb      t4, 0x0117(s0)             # 00000117
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8089328C
    swc1    $f10, 0x0054(s0)           # 00000054
lbl_80892268:
    lw      $ra, 0x002C($sp)
lbl_8089226C:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8089227C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x02F0             # a1 = 000002F0
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x033C             # a1 = 0000033C
    lw      v1, 0x0018($sp)
    lh      t6, 0x001C(v1)             # 0000001C
    blezl   t6, lbl_808922E4
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0118(v1)             # 00000118
    beql    v0, $zero, lbl_808922E4
    lw      $ra, 0x0014($sp)
    lw      t7, 0x0130(v0)             # 00000130
    beql    t7, $zero, lbl_808922E4
    lw      $ra, 0x0014($sp)
    lh      t8, 0x02EA(v0)             # 000002EA
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02EA(v0)             # 000002EA
    lw      $ra, 0x0014($sp)
lbl_808922E4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808922F0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    lui     t7, %hi(var_80895314)      # t7 = 80890000
    addiu   t7, t7, %lo(var_80895314)  # t7 = 80895314
    lw      t9, 0x0000(t7)             # 80895314
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 80895318
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 8089531C
    lui     t1, %hi(var_80895320)      # t1 = 80890000
    addiu   t1, t1, %lo(var_80895320)  # t1 = 80895320
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 80895320
    addiu   t0, $sp, 0x0044            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 80895324
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 80895328
    sw      t2, 0x0004(t0)             # FFFFFFE0
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0008(t0)             # FFFFFFE4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_8089539C)     # $at = 80890000
    lwc1    $f8, %lo(var_8089539C)($at)
    sub.s   $f6, $f0, $f4
    lw      t4, 0x006C($sp)
    mul.s   $f12, $f6, $f8
    swc1    $f12, 0x0040($sp)
    lwc1    $f10, 0x0080(t4)           # 00000080
    jal     func_800A45FC
    swc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x0074($sp)
    lw      t5, 0x0070($sp)
    lwc1    $f12, 0x0040($sp)
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x0000(t5)            # 00000000
    add.s   $f6, $f18, $f4
    jal     func_800A4650
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0074($sp)
    lw      t6, 0x0070($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f16, 0x0008(t6)           # 00000008
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0064($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f8, 0x007C($sp)
    sub.s   $f6, $f0, $f4
    mul.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0044($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lwc1    $f4, 0x007C($sp)
    sub.s   $f18, $f0, $f16
    mul.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    sub.s   $f10, $f0, $f8
    lwc1    $f4, 0x0054($sp)
    mul.s   $f18, $f10, $f16
    add.s   $f6, $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0054($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    mul.s   $f10, $f0, $f8
    lwc1    $f18, 0x0080($sp)
    lw      t7, 0x0078($sp)
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    add.s   $f4, $f10, $f16
    lw      a0, 0x0068($sp)
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE8
    mul.s   $f6, $f4, $f18
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFDC
    sw      $zero, 0x0020($sp)
    sw      t7, 0x0010($sp)
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    jal     func_8001D21C
    sw      t9, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_80892488:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s4, 0x0078($sp)
    sw      s1, 0x006C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s3, 0x0074($sp)
    sw      s2, 0x0070($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    addiu   v0, $zero, 0xFFFD          # v0 = FFFFFFFD
    lbu     t6, 0x0301(s1)             # 00000301
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s4
    and     t7, t6, v0
    sb      t7, 0x0301(s1)             # 00000301
    lw      t8, 0x1DE4(t8)             # 00011DE4
    addiu   s0, $sp, 0x009C            # s0 = FFFFFFF4
    andi    t9, t8, 0x000F             # t9 = 00000000
    bnel    t9, $zero, lbl_8089256C
    lbu     t3, 0x0301(s1)             # 00000301
    lw      t1, 0x0024(s1)             # 00000024
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f6                   # $f6 = 70.00
    sw      t1, 0x0000(s0)             # FFFFFFF4
    lw      t0, 0x0028(s1)             # 00000028
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t0, 0x0004(s0)             # FFFFFFF8
    lw      t1, 0x002C(s1)             # 0000002C
    or      a2, s0, $zero              # a2 = FFFFFFF4
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    sw      t1, 0x0008(s0)             # FFFFFFFC
    lwc1    $f4, 0x00A0($sp)
    add.s   $f8, $f4, $f6
    jal     func_80013A84
    swc1    $f8, 0x00A0($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = FFFFFFF4
    jal     func_80013A84
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = FFFFFFF4
    jal     func_80013A84
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    addiu   t2, $zero, 0x00F0          # t2 = 000000F0
    sw      t2, 0x02C4(s1)             # 000002C4
    beq     $zero, $zero, lbl_80892664
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t3, 0x0301(s1)             # 00000301
lbl_8089256C:
    lh      t5, 0x02EA(s1)             # 000002EA
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    and     t4, t3, v0
    subu    s2, t6, t5
    blez    s2, lbl_80892658
    sb      t4, 0x0301(s1)             # 00000301
    lui     $at, %hi(var_808953A0)     # $at = 80890000
    lwc1    $f30, %lo(var_808953A0)($at)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f28                  # $f28 = 6.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f26                  # $f26 = 50.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f24                  # $f24 = 25.00
    addiu   s3, s4, 0x1C24             # s3 = 00001C24
lbl_808925A8:
    jal     func_80026D90
    mov.s   $f12, $f24
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    mov.s   $f22, $f0
    jal     func_80026D90
    mov.s   $f12, $f24
    lwc1    $f10, 0x0024(s1)           # 00000024
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    or      a0, s3, $zero              # a0 = 00001C24
    add.s   $f16, $f20, $f10
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x001D          # a3 = 0000001D
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0028(s1)           # 00000028
    add.s   $f4, $f18, $f26
    add.s   $f6, $f22, $f4
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t7, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    add.s   $f10, $f0, $f8
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f10, 0x0018($sp)
    beq     v0, $zero, lbl_8089264C
    or      s0, v0, $zero              # s0 = 00000000
    swc1    $f28, 0x0060(v0)           # 00000060
    jal     func_80026D90
    mov.s   $f12, $f30
    trunc.w.s $f16, $f0
    mfc1    v0, $f16
    nop
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lh      t9, 0x02EA(s1)             # 000002EA
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x02EA(s1)             # 000002EA
lbl_8089264C:
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
    bgtz    s2, lbl_808925A8
    nop
lbl_80892658:
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    sw      t1, 0x02C4(s1)             # 000002C4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80892664:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3956          # a1 = 00003956
    lw      $ra, 0x007C($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    ldc1    $f28, 0x0058($sp)
    ldc1    $f30, 0x0060($sp)
    lw      s0, 0x0068($sp)
    lw      s1, 0x006C($sp)
    lw      s2, 0x0070($sp)
    lw      s3, 0x0074($sp)
    lw      s4, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_808926A4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x09C4             # a0 = 060009C4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x09C4             # a1 = 060009C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lbu     t9, 0x0301(s0)             # 00000301
    addiu   t7, $zero, 0x0258          # t7 = 00000258
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     a1, %hi(func_8089273C)     # a1 = 80890000
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    sh      t7, 0x02E8(s0)             # 000002E8
    sw      $zero, 0x02C4(s0)          # 000002C4
    sh      $zero, 0x02EA(s0)          # 000002EA
    sw      t8, 0x02A0(s0)             # 000002A0
    sb      t0, 0x0301(s0)             # 00000301
    addiu   a1, a1, %lo(func_8089273C) # a1 = 8089273C
    jal     func_80892000
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8089273C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    bne     t6, $zero, lbl_808927D0
    lui     a1, 0xC47A                 # a1 = C47A0000
    lw      t7, 0x0004(s0)             # 00000004
    lh      t9, 0x02E6(s0)             # 000002E6
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    ori     t8, t7, 0x0001             # t8 = 00000001
    bne     t9, $zero, lbl_808927A8
    sw      t8, 0x0004(s0)             # 00000004
    lwc1    $f4, 0x0090(s0)            # 00000090
    lwc1    $f6, 0x02CC(s0)            # 000002CC
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80892880
    lw      $ra, 0x0024($sp)
    jal     func_80892BE0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80892880
    lw      $ra, 0x0024($sp)
lbl_808927A8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0xC47A                 # a1 = C47A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lh      t0, 0x02E6(s0)             # 000002E6
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_8089287C
    sh      t1, 0x02E6(s0)             # 000002E6
lbl_808927D0:
    lw      t2, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lw      v0, 0x02C4(s0)             # 000002C4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $zero, lbl_80892860
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    andi    t6, t4, 0x0004             # t6 = 00000004
    beq     t6, $zero, lbl_8089283C
    sw      t4, 0x02C4(s0)             # 000002C4
    lui     a1, 0x3E51                 # a1 = 3E510000
    mfc1    a2, $f2
    lui     a3, 0x3E70                 # a3 = 3E700000
    ori     a3, a3, 0xA3D7             # a3 = 3E70A3D7
    ori     a1, a1, 0xEB85             # a1 = 3E51EB85
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    beq     $zero, $zero, lbl_80892880
    lw      $ra, 0x0024($sp)
lbl_8089283C:
    mfc1    a1, $f0
    mfc1    a2, $f2
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    beq     $zero, $zero, lbl_80892880
    lw      $ra, 0x0024($sp)
lbl_80892860:
    lbu     t7, 0x0301(s0)             # 00000301
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80892880
    lw      $ra, 0x0024($sp)
    jal     func_80892488
    lw      a1, 0x002C($sp)
lbl_8089287C:
    lw      $ra, 0x0024($sp)
lbl_80892880:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80892890:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x09C4             # a0 = 060009C4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x09C4             # a1 = 060009C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    addiu   t7, $zero, 0x0190          # t7 = 00000190
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lui     a1, %hi(func_8089291C)     # a1 = 80890000
    sh      t7, 0x02E8(s0)             # 000002E8
    sw      $zero, 0x02C4(s0)          # 000002C4
    sh      $zero, 0x02EA(s0)          # 000002EA
    sw      t8, 0x02A0(s0)             # 000002A0
    addiu   a1, a1, %lo(func_8089291C) # a1 = 8089291C
    jal     func_80892000
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8089291C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC47A                 # a1 = C47A0000
    bne     t6, $zero, lbl_80892970
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f4, 0x0090(s0)            # 00000090
    lwc1    $f6, 0x02CC(s0)            # 000002CC
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80892A10
    lw      $ra, 0x0024($sp)
    jal     func_80892E50
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80892A10
    lw      $ra, 0x0024($sp)
lbl_80892970:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lw      v0, 0x02C4(s0)             # 000002C4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $zero, lbl_808929F0
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    andi    t9, t7, 0x0004             # t9 = 00000004
    beq     t9, $zero, lbl_808929CC
    sw      t7, 0x02C4(s0)             # 000002C4
    lui     a1, 0x3E51                 # a1 = 3E510000
    mfc1    a2, $f2
    lui     a3, 0x3E70                 # a3 = 3E700000
    ori     a3, a3, 0xA3D7             # a3 = 3E70A3D7
    ori     a1, a1, 0xEB85             # a1 = 3E51EB85
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    beq     $zero, $zero, lbl_80892A10
    lw      $ra, 0x0024($sp)
lbl_808929CC:
    mfc1    a1, $f0
    mfc1    a2, $f2
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    beq     $zero, $zero, lbl_80892A10
    lw      $ra, 0x0024($sp)
lbl_808929F0:
    lbu     t0, 0x0301(s0)             # 00000301
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_80892A10
    lw      $ra, 0x0024($sp)
    jal     func_80892488
    lw      a1, 0x002C($sp)
    lw      $ra, 0x0024($sp)
lbl_80892A10:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80892A20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C4             # a1 = 060005C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lui     a1, %hi(func_80892A68)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80892A68) # a1 = 80892A68
    jal     func_80892000
    sw      t6, 0x02A0(a0)             # 000002A0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80892A68:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3155          # a1 = 00003155
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    bne     t6, $zero, lbl_80892AB8
    nop
    lwc1    $f0, 0x0090(s0)            # 00000090
    lwc1    $f4, 0x02CC(s0)            # 000002CC
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80892ACC
    lwc1    $f6, 0x02C8(s0)            # 000002C8
lbl_80892AB8:
    jal     func_808938AC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80892BC4
    lh      t6, 0x02E2(s0)             # 000002E2
    lwc1    $f6, 0x02C8(s0)            # 000002C8
lbl_80892ACC:
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80892BC4
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t7, 0x02EA(s0)             # 000002EA
    lw      t8, 0x0054($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    slti    $at, t7, 0x0003
    beq     $at, $zero, lbl_80892BC0
    addu    t9, t9, t8
    lw      t9, 0x1DE4(t9)             # 00011DE4
    lui     $at, 0x41C8                # $at = 41C80000
    andi    t0, t9, 0x0007             # t0 = 00000000
    bnel    t0, $zero, lbl_80892BC4
    lh      t6, 0x02E2(s0)             # 000002E2
    mtc1    $at, $f12                  # $f12 = 25.00
    jal     func_80026D90
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    swc1    $f0, 0x0040($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f12                  # $f12 = 25.00
    jal     func_80026D90
    swc1    $f0, 0x0044($sp)
    lwc1    $f8, 0x0040($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0044($sp)
    lw      a2, 0x0054($sp)
    add.s   $f16, $f8, $f10
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x001D          # a3 = 0000001D
    swc1    $f16, 0x0010($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      t2, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    add.s   $f10, $f0, $f8
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f10, 0x0018($sp)
    beq     v0, $zero, lbl_80892BC0
    lui     $at, %hi(var_808953A4)     # $at = 80890000
    lwc1    $f12, %lo(var_808953A4)($at)
    jal     func_80026D90
    sw      v0, 0x004C($sp)
    trunc.w.s $f16, $f0
    lw      v1, 0x004C($sp)
    mfc1    v0, $f16
    nop
    sh      v0, 0x0032(v1)             # 00000032
    sh      v0, 0x00B6(v1)             # 000000B6
    lh      t4, 0x02EA(s0)             # 000002EA
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x02EA(s0)             # 000002EA
lbl_80892BC0:
    lh      t6, 0x02E2(s0)             # 000002E2
lbl_80892BC4:
    lh      t7, 0x02E0(s0)             # 000002E0
    addu    t8, t6, t7
    sh      t8, 0x02E2(s0)             # 000002E2
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80892BE0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x09C4             # a0 = 060009C4
    lw      t6, 0x02A0(s0)             # 000002A0
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     t6, $at, lbl_80892C44
    cvt.s.w $f0, $f4
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    mfc1    a2, $f2
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x09C4             # a1 = 060009C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a3, 0x4040                 # a3 = 40400000
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0034($sp)
    jal     func_8008D17C
    swc1    $f2, 0x0018($sp)
    lwc1    $f0, 0x0034($sp)
lbl_80892C44:
    trunc.w.s $f6, $f0
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sw      t8, 0x02A0(s0)             # 000002A0
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t0, $f6
    addiu   a1, $zero, 0x3954          # a1 = 00003954
    jal     func_80022FD0
    sh      t0, 0x02EC(s0)             # 000002EC
    lui     a1, %hi(func_80892C88)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80892C88) # a1 = 80892C88
    jal     func_80892000
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80892C88:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0320          # a3 = 00000320
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    bne     v0, $zero, lbl_80892DD8
    nop
    lh      v0, 0x02EC(s0)             # 000002EC
    beq     v0, $zero, lbl_80892D24
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x02EC(s0)             # 000002EC
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80892D24
    nop
    lh      t7, 0x02EC(s0)             # 000002EC
    lui     $at, 0x3F80                # $at = 3F800000
    bne     t7, $zero, lbl_80892D24
    nop
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    sh      t8, 0x02EC(s0)             # 000002EC
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80892D24:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    bne     v0, $zero, lbl_80892D44
    nop
    lh      t9, 0x02EC(s0)             # 000002EC
    lui     $at, 0x40D0                # $at = 40D00000
    bnel    t9, $zero, lbl_80892D58
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_80892D44:
    jal     func_80893AA4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80892D6C
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_80892D58:
    mtc1    $at, $f16                  # $f16 = 0.00
    nop
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0028(s0)            # 00000028
lbl_80892D6C:
    lwc1    $f6, 0x0080(s0)            # 00000080
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    sub.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80892DD8
    nop
    lw      t1, 0x0024(s0)             # 00000024
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    sw      t1, 0x0000(a1)             # FFFFFFF4
    lw      t0, 0x0028(s0)             # 00000028
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t0, 0x0004(a1)             # FFFFFFF8
    lw      t1, 0x002C(s0)             # 0000002C
    lui     a2, 0x42B4                 # a2 = 42B40000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t1, 0x0008(a1)             # FFFFFFFC
    lwc1    $f16, 0x0080(s0)           # 00000080
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_80026308
    swc1    $f16, 0x0038($sp)
lbl_80892DD8:
    lui     $at, %hi(var_808953A8)     # $at = 80890000
    lwc1    $f18, %lo(var_808953A8)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4296                 # a3 = 42960000
    swc1    $f18, 0x0014($sp)
    jal     func_808922F0
    swc1    $f4, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t7, 0x02E0(s0)             # 000002E0
    addu    t8, t6, t7
    sh      t8, 0x02E2(s0)             # 000002E2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80892E50:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x09C4             # a0 = 060009C4
    lw      t6, 0x02A0(s0)             # 000002A0
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     t6, $at, lbl_80892EB4
    cvt.s.w $f0, $f4
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    mfc1    a2, $f2
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x09C4             # a1 = 060009C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a3, 0x4040                 # a3 = 40400000
    swc1    $f0, 0x0010($sp)
    swc1    $f0, 0x0034($sp)
    jal     func_8008D17C
    swc1    $f2, 0x0018($sp)
    lwc1    $f0, 0x0034($sp)
lbl_80892EB4:
    trunc.w.s $f6, $f0
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    sw      t8, 0x02A0(s0)             # 000002A0
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t0, $f6
    addiu   a1, $zero, 0x3954          # a1 = 00003954
    jal     func_80022FD0
    sh      t0, 0x02EC(s0)             # 000002EC
    lui     a1, %hi(func_80892EF8)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80892EF8) # a1 = 80892EF8
    jal     func_80892000
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80892EF8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0320          # a3 = 00000320
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    bne     v0, $zero, lbl_80893048
    nop
    lh      v0, 0x02EC(s0)             # 000002EC
    beq     v0, $zero, lbl_80892F94
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x02EC(s0)             # 000002EC
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_80892F94
    nop
    lh      t7, 0x02EC(s0)             # 000002EC
    lui     $at, 0x3F80                # $at = 3F800000
    bne     t7, $zero, lbl_80892F94
    nop
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    sh      t8, 0x02EC(s0)             # 000002EC
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_80892F94:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    bne     v0, $zero, lbl_80892FB4
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x02EC(s0)             # 000002EC
    lui     $at, 0x4190                # $at = 41900000
    bnel    t9, $zero, lbl_80892FC8
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_80892FB4:
    jal     func_80892A20
    sh      $zero, 0x02EA(s0)          # 000002EA
    beq     $zero, $zero, lbl_80892FDC
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_80892FC8:
    mtc1    $at, $f16                  # $f16 = 0.00
    nop
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0028(s0)            # 00000028
lbl_80892FDC:
    lwc1    $f6, 0x0080(s0)            # 00000080
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    sub.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80893048
    nop
    lw      t1, 0x0024(s0)             # 00000024
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    sw      t1, 0x0000(a1)             # FFFFFFF4
    lw      t0, 0x0028(s0)             # 00000028
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t0, 0x0004(a1)             # FFFFFFF8
    lw      t1, 0x002C(s0)             # 0000002C
    lui     a2, 0x42B4                 # a2 = 42B40000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t1, 0x0008(a1)             # FFFFFFFC
    lwc1    $f16, 0x0080(s0)           # 00000080
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_80026308
    swc1    $f16, 0x0038($sp)
lbl_80893048:
    lui     $at, %hi(var_808953AC)     # $at = 80890000
    lwc1    $f18, %lo(var_808953AC)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4296                 # a3 = 42960000
    swc1    $f18, 0x0014($sp)
    jal     func_808922F0
    swc1    $f4, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t7, 0x02E0(s0)             # 000002E0
    addu    t8, t6, t7
    sh      t8, 0x02E2(s0)             # 000002E2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808930C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C4             # a1 = 060005C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    lui     a1, %hi(func_80893110)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80893110) # a1 = 80893110
    sw      t6, 0x02A0(a0)             # 000002A0
    jal     func_80892000
    swc1    $f4, 0x02D0(a0)            # 000002D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80893110:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a1, 0x4040                 # a1 = 40400000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E80                 # a3 = 3E800000
    swc1    $f4, 0x0010($sp)
    jal     func_80064178
    sw      t7, 0x002C($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f6, 0x0080(s0)            # 00000080
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f10, $f6, $f8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4040                 # a3 = 40400000
    swc1    $f16, 0x0010($sp)
    mfc1    a1, $f10
    jal     func_80064178
    nop
    lh      v0, 0x02E8(s0)             # 000002E8
    bgtz    v0, lbl_8089319C
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    jal     func_808936B0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    beq     $zero, $zero, lbl_808931A0
    sh      t8, 0x02E6(s0)             # 000002E6
lbl_8089319C:
    sh      t9, 0x02E8(s0)             # 000002E8
lbl_808931A0:
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A20(t0)            # 8011A5E0
    lw      a1, 0x002C($sp)
    bne     t0, $zero, lbl_80893210
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_80063EB8
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lwc1    $f18, 0x02C8(s0)           # 000002C8
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.lt.s  $f0, $f18
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    bc1f    lbl_80893210
    nop
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t1, 0x02EA(s0)             # 000002EA
    beql    t1, $zero, lbl_80893204
    lh      t4, 0x00B6(s0)             # 000000B6
    lh      t2, 0x00B6(s0)             # 000000B6
    addiu   t3, t2, 0x01C2             # t3 = 000001C2
    beq     $zero, $zero, lbl_80893218
    sh      t3, 0x00B6(s0)             # 000000B6
    lh      t4, 0x00B6(s0)             # 000000B6
lbl_80893204:
    addiu   t5, t4, 0xFE3E             # t5 = FFFFFE3E
    beq     $zero, $zero, lbl_80893218
    sh      t5, 0x00B6(s0)             # 000000B6
lbl_80893210:
    jal     func_80893D90
    or      a0, s0, $zero              # a0 = 00000000
lbl_80893218:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t7, 0x02E0(s0)             # 000002E0
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    addu    t8, t6, t7
    sh      t8, 0x02E2(s0)             # 000002E2
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3155          # a1 = 00003155
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8089328C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C4             # a1 = 060005C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    lui     a1, %hi(func_808932D8)     # a1 = 80890000
    addiu   a1, a1, %lo(func_808932D8) # a1 = 808932D8
    sw      t6, 0x02A0(a0)             # 000002A0
    jal     func_80892000
    sw      $zero, 0x02C4(a0)          # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808932D8:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s2, 0x0058($sp)
    lui     $at, %hi(var_808953B0)     # $at = 80890000
    lwc1    $f12, %lo(var_808953B0)($at)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a1, 0x0094($sp)
    lwc1    $f0, 0x0090(s2)            # 00000090
    mov.s   $f2, $f12
    lui     $at, %hi(var_808953B4)     # $at = 80890000
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_80893328
    lw      v0, 0x0118(s2)             # 00000118
    lwc1    $f4, %lo(var_808953B4)($at)
    add.s   $f2, $f0, $f4
    lw      v0, 0x0118(s2)             # 00000118
lbl_80893328:
    lui     a1, 0xBE0A                 # a1 = BE0A0000
    ori     a1, a1, 0x3D71             # a1 = BE0A3D71
    beq     v0, $zero, lbl_80893348
    addiu   a0, s2, 0x0060             # a0 = 00000060
    lw      t6, 0x0130(v0)             # 00000130
    bnel    t6, $zero, lbl_8089334C
    lwc1    $f6, 0x0028(s2)            # 00000028
    sw      $zero, 0x0118(s2)          # 00000118
lbl_80893348:
    lwc1    $f6, 0x0028(s2)            # 00000028
lbl_8089334C:
    lwc1    $f8, 0x0080(s2)            # 00000080
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f16                  # $f16 = 70.00
    sub.s   $f10, $f6, $f8
    swc1    $f2, 0x0068(s2)            # 00000068
    lui     $at, 0x3F80                # $at = 3F800000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_808933AC
    mtc1    $at, $f20                  # $f20 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a1, 0xBFA6                 # a1 = BFA60000
    mfc1    a2, $f20
    ori     a1, a1, 0x6666             # a1 = BFA66666
    addiu   a0, s2, 0x0060             # a0 = 00000060
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    beq     $zero, $zero, lbl_808933C4
    lw      v0, 0x02C4(s2)             # 000002C4
    mtc1    $at, $f20                  # $f20 = 0.00
lbl_808933AC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    mfc1    a2, $f20
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lw      v0, 0x02C4(s2)             # 000002C4
lbl_808933C4:
    addiu   a0, s2, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, $zero, lbl_808933EC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    lh      a1, 0x008A(s2)             # 0000008A
    sw      $zero, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x033E          # a3 = 0000033E
    beq     $zero, $zero, lbl_808933F4
    lh      t8, 0x00B6(s2)             # 000000B6
lbl_808933EC:
    sw      t7, 0x02C4(s2)             # 000002C4
    lh      t8, 0x00B6(s2)             # 000000B6
lbl_808933F4:
    addiu   a0, s2, 0x013C             # a0 = 0000013C
    addiu   t9, t8, 0x015E             # t9 = 0000015E
    jal     func_8008C9C0
    sh      t9, 0x00B6(s2)             # 000000B6
    addiu   a0, s2, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t0, 0x02E2(s2)             # 000002E2
    lh      t1, 0x02E0(s2)             # 000002E0
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    addu    t2, t0, t1
    sh      t2, 0x02E2(s2)             # 000002E2
    mfc1    a2, $f20
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s2, 0x02DC             # a0 = 000002DC
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3184          # a1 = 00003184
    lbu     v1, 0x03AC(s2)             # 000003AC
    andi    t3, v1, 0x0004             # t3 = 00000000
    beq     t3, $zero, lbl_8089348C
    andi    t6, v1, 0x0002             # t6 = 00000000
    lbu     t4, 0x03AD(s2)             # 000003AD
    sb      $zero, 0x00AF(s2)          # 000000AF
    or      a0, s2, $zero              # a0 = 00000000
    andi    t5, t4, 0xFF7F             # t5 = 00000000
    jal     func_80893FB4
    sb      t5, 0x03AD(s2)             # 000003AD
    beq     $zero, $zero, lbl_80893698
    lw      $ra, 0x005C($sp)
lbl_8089348C:
    bne     t6, $zero, lbl_808934B4
    lw      t1, 0x0094($sp)
    lbu     t7, 0x0301(s2)             # 00000301
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_808934B8
    lw      t2, 0x1C44(t1)             # 00001C44
    lhu     t9, 0x0088(s2)             # 00000088
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80893698
    lw      $ra, 0x005C($sp)
lbl_808934B4:
    lw      t2, 0x1C44(t1)             # 00001C44
lbl_808934B8:
    andi    t3, v1, 0xFFFD             # t3 = 00000000
    sw      t2, 0x0088($sp)
    lbu     v0, 0x0301(s2)             # 00000301
    sb      t3, 0x03AC(s2)             # 000003AC
    lw      t4, 0x0088($sp)
    andi    v0, v0, 0x0002             # v0 = 00000000
    bne     v0, $zero, lbl_8089352C
    nop
    lw      t5, 0x03A0(s2)             # 000003A0
    bne     t4, t5, lbl_8089352C
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_8089351C
    lh      t8, 0x0032(s2)             # 00000032
    lh      t6, 0x0032(s2)             # 00000032
    addiu   t7, t6, 0x2000             # t7 = 00002000
    beq     $zero, $zero, lbl_80893524
    sh      t7, 0x0032(s2)             # 00000032
    lh      t8, 0x0032(s2)             # 00000032
lbl_8089351C:
    addiu   t9, t8, 0xE000             # t9 = FFFFE000
    sh      t9, 0x0032(s2)             # 00000032
lbl_80893524:
    beq     $zero, $zero, lbl_80893628
    sw      t0, 0x02C4(s2)             # 000002C4
lbl_8089352C:
    bne     v0, $zero, lbl_80893544
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFEC
    lhu     t1, 0x0088(s2)             # 00000088
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_8089362C
    lw      t6, 0x0088($sp)
lbl_80893544:
    lui     t3, %hi(var_8089532C)      # t3 = 80890000
    addiu   t3, t3, %lo(var_8089532C)  # t3 = 8089532C
    lw      t5, 0x0000(t3)             # 8089532C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    sw      t5, 0x0000(s1)             # FFFFFFEC
    lw      t4, 0x0004(t3)             # 80895330
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    sw      t4, 0x0004(s1)             # FFFFFFF0
    lw      t5, 0x0008(t3)             # 80895334
    sw      t5, 0x0008(s1)             # FFFFFFF4
lbl_80893570:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f10, 0x0024(s2)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x006C($sp)
    lwc1    $f18, 0x0028(s2)           # 00000028
    mov.s   $f12, $f20
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0070($sp)
    lwc1    $f6, 0x002C(s2)            # 0000002C
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    add.s   $f8, $f0, $f6
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    swc1    $f8, 0x0074($sp)
    sw      t5, 0x003C($sp)
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    lw      a0, 0x0094($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFDC
    or      a2, s1, $zero              # a2 = FFFFFFEC
    jal     func_8001E1D4
    or      a3, s1, $zero              # a3 = FFFFFFEC
    addiu   s0, s0, 0xFFFF             # s0 = 00000003
    bgez    s0, lbl_80893570
    nop
lbl_80893628:
    lw      t6, 0x0088($sp)
lbl_8089362C:
    lw      t7, 0x03A0(s2)             # 000003A0
    bnel    t6, t7, lbl_8089364C
    lhu     t0, 0x0088(s2)             # 00000088
    lbu     t8, 0x0301(s2)             # 00000301
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80893698
    lw      $ra, 0x005C($sp)
    lhu     t0, 0x0088(s2)             # 00000088
lbl_8089364C:
    lw      a0, 0x0094($sp)
    addiu   a1, s2, 0x00E4             # a1 = 000000E4
    andi    t1, t0, 0x0001             # t1 = 00000000
    bne     t1, $zero, lbl_80893678
    addiu   a2, $zero, 0x3985          # a2 = 00003985
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_8001E510
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80893678:
    lw      a0, 0x0094($sp)
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, s2, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x005C($sp)
lbl_80893698:
    ldc1    $f20, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_808936B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x02A0(a2)             # 000002A0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0350             # a1 = 06000350
    sw      a2, 0x0018($sp)
    jal     func_8008D1C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lui     a1, %hi(func_808936F8)     # a1 = 80890000
    lw      a0, 0x0018($sp)
    jal     func_80892000
    addiu   a1, a1, %lo(func_808936F8) # a1 = 808936F8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808936F8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC47A                 # a1 = C47A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f0
    mfc1    a3, $f0
    mfc1    a1, $f2
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8089379C
    lwc1    $f0, 0x0080(s0)            # 00000080
    jal     func_808926A4
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, 0x0080(s0)            # 00000080
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3957          # a1 = 00003957
    jal     func_80022FD0
    swc1    $f6, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_80893878
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_8089379C:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    c.lt.s  $f0, $f8
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x4060                 # a3 = 40600000
    lui     $at, 0x3E80                # $at = 3E800000
    bc1fl   lbl_80893878
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    mtc1    $at, $f10                  # $f10 = 0.25
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x0080(s0)           # 00000080
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    sub.s   $f4, $f16, $f18
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80893878
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    lw      t7, 0x0024(s0)             # 00000024
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t7, 0x0000(a1)             # FFFFFFF4
    lw      t6, 0x0028(s0)             # 00000028
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     a2, 0x42A0                 # a2 = 42A00000
    sw      t6, 0x0004(a1)             # FFFFFFF8
    lw      t7, 0x002C(s0)             # 0000002C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t7, 0x0008(a1)             # FFFFFFFC
    lwc1    $f8, 0x0080(s0)            # 00000080
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_80026308
    swc1    $f8, 0x0038($sp)
    lui     $at, %hi(var_808953B8)     # $at = 80890000
    lwc1    $f10, %lo(var_808953B8)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     a3, 0x4296                 # a3 = 42960000
    swc1    $f10, 0x0014($sp)
    jal     func_808922F0
    swc1    $f16, 0x0018($sp)
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
lbl_80893878:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t2, 0x02E2(s0)             # 000002E2
    lh      t3, 0x02E0(s0)             # 000002E0
    addu    t4, t2, t3
    sh      t4, 0x02E2(s0)             # 000002E2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808938AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0350             # a1 = 06000350
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     a1, %hi(func_808938F4)     # a1 = 80890000
    addiu   a1, a1, %lo(func_808938F4) # a1 = 808938F4
    jal     func_80892000
    sw      t6, 0x02A0(a0)             # 000002A0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808938F4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0xC47A                 # a1 = C47A0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f0
    mfc1    a3, $f0
    mfc1    a1, $f2
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80893994
    lwc1    $f0, 0x0080(s0)            # 00000080
    jal     func_80892890
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3957          # a1 = 00003957
    lwc1    $f6, 0x0080(s0)            # 00000080
    beq     $zero, $zero, lbl_80893A6C
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_80893994:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    c.lt.s  $f0, $f8
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x4158                 # a3 = 41580000
    lui     $at, 0x3E80                # $at = 3E800000
    bc1fl   lbl_80893A70
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    mtc1    $at, $f10                  # $f10 = 0.25
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x0080(s0)           # 00000080
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    sub.s   $f4, $f16, $f18
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80893A70
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    lw      t7, 0x0024(s0)             # 00000024
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t7, 0x0000(a1)             # FFFFFFF4
    lw      t6, 0x0028(s0)             # 00000028
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     a2, 0x42A0                 # a2 = 42A00000
    sw      t6, 0x0004(a1)             # FFFFFFF8
    lw      t7, 0x002C(s0)             # 0000002C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t7, 0x0008(a1)             # FFFFFFFC
    lwc1    $f8, 0x0080(s0)            # 00000080
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_80026308
    swc1    $f8, 0x0038($sp)
    lui     $at, %hi(var_808953BC)     # $at = 80890000
    lwc1    $f10, %lo(var_808953BC)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     a3, 0x4296                 # a3 = 42960000
    swc1    $f10, 0x0014($sp)
    jal     func_808922F0
    swc1    $f16, 0x0018($sp)
lbl_80893A6C:
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
lbl_80893A70:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t2, 0x02E2(s0)             # 000002E2
    lh      t3, 0x02E0(s0)             # 000002E0
    addu    t4, t2, t3
    sh      t4, 0x02E2(s0)             # 000002E2
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80893AA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C4             # a1 = 060005C4
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f8                   # $f8 = 2.50
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    lui     a1, %hi(func_80893B34)     # a1 = 80890000
    mul.s   $f16, $f0, $f2
    sw      t8, 0x02A0(s0)             # 000002A0
    addiu   a1, a1, %lo(func_80893B34) # a1 = 80893B34
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f16, $f2
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    jal     func_80892000
    sw      t7, 0x02C4(s0)             # 000002C4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80893B34:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0028($sp)
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f0, 0x0028(s0)            # 00000028
    sub.s   $f8, $f0, $f6
    c.lt.s  $f4, $f8
    nop
    bc1f    lbl_80893B88
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    sub.s   $f16, $f0, $f10
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80893B88:
    jal     func_800A4650
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    lui     $at, %hi(var_808953C0)     # $at = 80890000
    lwc1    $f6, %lo(var_808953C0)($at)
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    mul.s   $f4, $f0, $f6
    add.s   $f8, $f18, $f4
    jal     func_800A4650
    swc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808953C4)     # $at = 80890000
    lwc1    $f10, %lo(var_808953C4)($at)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, %hi(var_808953C8)     # $at = 80890000
    mul.s   $f2, $f0, $f10
    c.le.s  $f16, $f2
    nop
    bc1fl   lbl_80893BE0
    neg.s   $f0, $f2
    beq     $zero, $zero, lbl_80893BE0
    mov.s   $f0, $f2
    neg.s   $f0, $f2
lbl_80893BE0:
    lwc1    $f18, %lo(var_808953C8)($at)
    lwc1    $f6, 0x02D0(s0)            # 000002D0
    lw      t8, 0x02C4(s0)             # 000002C4
    add.s   $f4, $f0, $f18
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sw      t9, 0x02C4(s0)             # 000002C4
    add.s   $f8, $f6, $f4
    bgtz    t9, lbl_80893C78
    swc1    $f8, 0x02D0(s0)            # 000002D0
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f18                  # $f18 = 2.50
    mul.s   $f16, $f0, $f10
    add.s   $f6, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    nop
    mul.s   $f4, $f0, $f2
    add.s   $f8, $f4, $f2
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    jal     func_800CDCCC              # Rand.Next() float
    sw      t2, 0x02C4(s0)             # 000002C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sub.s   $f18, $f0, $f16
    mul.s   $f4, $f18, $f6
    trunc.w.s $f8, $f4
    mfc1    t4, $f8
    nop
    sh      t4, 0x02E4(s0)             # 000002E4
lbl_80893C78:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t5, 0x0032(s0)             # 00000032
    lh      t6, 0x02E4(s0)             # 000002E4
    lh      v0, 0x02E8(s0)             # 000002E8
    addu    t7, t5, t6
    bgtz    v0, lbl_80893CAC
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_808936B0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    beq     $zero, $zero, lbl_80893CB4
    sh      t8, 0x02E6(s0)             # 000002E6
lbl_80893CAC:
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02E8(s0)             # 000002E8
lbl_80893CB4:
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t1, t0, 0x015E             # t1 = 0000015E
    sh      t1, 0x00B6(s0)             # 000000B6
    lw      t2, -0x5A20(t2)            # 8011A5E0
    lw      a1, 0x0028($sp)
    bne     t2, $zero, lbl_80893D1C
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_80063EB8
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lwc1    $f10, 0x02C8(s0)           # 000002C8
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_80893D1C
    nop
    lh      t3, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808930C0
    sh      t3, 0x0032(s0)             # 00000032
    lw      t4, 0x0034($sp)
    lui     t5, 0x0001                 # t5 = 00010000
    addu    t5, t5, t4
    lw      t5, 0x1DE4(t5)             # 00011DE4
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     $zero, $zero, lbl_80893D24
    sh      t6, 0x02EA(s0)             # 000002EA
lbl_80893D1C:
    jal     func_80893D90
    or      a0, s0, $zero              # a0 = 00000000
lbl_80893D24:
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t7, 0x02E2(s0)             # 000002E2
    lh      t8, 0x02E0(s0)             # 000002E0
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    addu    t9, t7, t8
    sh      t9, 0x02E2(s0)             # 000002E2
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3155          # a1 = 00003155
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80893D90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f4                   # $f4 = 2.50
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    lui     a1, %hi(func_80893DC8)     # a1 = 80890000
    sw      t6, 0x02A0(a0)             # 000002A0
    addiu   a1, a1, %lo(func_80893DC8) # a1 = 80893DC8
    jal     func_80892000
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80893DC8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0034($sp)
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f0, 0x0028(s0)            # 00000028
    sub.s   $f8, $f0, $f6
    c.lt.s  $f4, $f8
    nop
    bc1f    lbl_80893E20
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    sub.s   $f16, $f0, $f10
    beq     $zero, $zero, lbl_80893E34
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80893E20:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    add.s   $f6, $f0, $f18
    swc1    $f6, 0x0028(s0)            # 00000028
lbl_80893E34:
    jal     func_800A4650
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    lui     $at, %hi(var_808953CC)     # $at = 80890000
    lwc1    $f8, %lo(var_808953CC)($at)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f12, 0x02D0(s0)           # 000002D0
    mul.s   $f10, $f0, $f8
    add.s   $f16, $f4, $f10
    jal     func_800A4650
    swc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, %hi(var_808953D0)     # $at = 80890000
    lwc1    $f18, %lo(var_808953D0)($at)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_808953D4)     # $at = 80890000
    mul.s   $f2, $f0, $f18
    c.le.s  $f6, $f2
    nop
    bc1fl   lbl_80893E8C
    neg.s   $f0, $f2
    beq     $zero, $zero, lbl_80893E8C
    mov.s   $f0, $f2
    neg.s   $f0, $f2
lbl_80893E8C:
    lwc1    $f4, %lo(var_808953D4)($at)
    lwc1    $f8, 0x02D0(s0)            # 000002D0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    add.s   $f10, $f0, $f4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x02D0(s0)           # 000002D0
    sw      a1, 0x0028($sp)
    jal     func_80063F00
    sw      a0, 0x002C($sp)
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0258          # a3 = 00000258
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1194          # a1 = 00001194
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0258          # a3 = 00000258
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      t0, 0x02E2(s0)             # 000002E2
    lh      t1, 0x02E0(s0)             # 000002E0
    addiu   t9, t8, 0x015E             # t9 = 0000015E
    sh      t9, 0x00B6(s0)             # 000000B6
    addu    t2, t0, t1
    sh      t2, 0x02E2(s0)             # 000002E2
    lw      a1, 0x0028($sp)
    jal     func_80063EB8
    lw      a0, 0x002C($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    nop
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80893F3C
    nop
    jal     func_808936B0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    sh      t3, 0x02E6(s0)             # 000002E6
lbl_80893F3C:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x5A20(t4)            # 8011A5E0
    lw      a1, 0x0034($sp)
    bne     t4, $zero, lbl_80893F94
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_80063EB8
    lw      a0, 0x0028($sp)
    lwc1    $f6, 0x02C8(s0)            # 000002C8
    addiu   t5, $zero, 0x0190          # t5 = 00000190
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80893F98
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808930C0
    sh      t5, 0x02E8(s0)             # 000002E8
    lw      t6, 0x0044($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t8, t7, 0x0001             # t8 = 00000000
    sh      t8, 0x02EA(s0)             # 000002EA
lbl_80893F94:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80893F98:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3155          # a1 = 00003155
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80893FB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0844             # a1 = 06000844
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0xC110                # $at = C1100000
    mtc1    $at, $f4                   # $f4 = -9.00
    lh      t7, 0x008A(a0)             # 0000008A
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    lui     a1, %hi(func_80894014)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80894014) # a1 = 80894014
    sw      t6, 0x02A0(a0)             # 000002A0
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_80892000
    sh      t7, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80894014:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s4, 0x0068($sp)
    sw      s1, 0x005C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lh      t6, 0x02E2(s1)             # 000002E2
    lh      t7, 0x02E0(s1)             # 000002E0
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    addu    t8, t6, t7
    jal     func_8008C9C0
    sh      t8, 0x02E2(s1)             # 000002E2
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0068(s1)            # 00000068
    mtc1    $zero, $f10                # $f10 = 0.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0068(s1)            # 00000068
    lwc1    $f16, 0x0068(s1)           # 00000068
    c.eq.s  $f10, $f16
    nop
    bc1fl   lbl_808941C0
    or      a0, s1, $zero              # a0 = 00000000
    lh      t9, 0x001C(s1)             # 0000001C
    lui     t0, %hi(var_80895338)      # t0 = 80890000
    addiu   s2, $sp, 0x0084            # s2 = FFFFFFF4
    blez    t9, lbl_8089418C
    addiu   t0, t0, %lo(var_80895338)  # t0 = 80895338
    lw      t2, 0x0000(t0)             # 80895338
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    sw      t2, 0x0000(s2)             # FFFFFFF4
    lw      t1, 0x0004(t0)             # 8089533C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    sw      t1, 0x0004(s2)             # FFFFFFF8
    lw      t2, 0x0008(t0)             # 80895340
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFE4
    sw      t2, 0x0008(s2)             # FFFFFFFC
lbl_808940C8:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f18, 0x0024(s1)           # 00000024
    mov.s   $f12, $f22
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0074($sp)
    lwc1    $f6, 0x0028(s1)            # 00000028
    mov.s   $f12, $f20
    add.s   $f8, $f0, $f6
    jal     func_80026D90
    swc1    $f8, 0x0078($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    add.s   $f16, $f0, $f10
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    swc1    $f16, 0x007C($sp)
    sw      t2, 0x003C($sp)
    sw      t1, 0x0038($sp)
    sw      t0, 0x0034($sp)
    sw      t9, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFE4
    or      a2, s2, $zero              # a2 = FFFFFFF4
    jal     func_8001E1D4
    or      a3, s2, $zero              # a3 = FFFFFFF4
    addiu   s0, s0, 0xFFFF             # s0 = 00000003
    bgez    s0, lbl_808940C8
    nop
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808941C0
    or      a0, s1, $zero              # a0 = 00000000
lbl_8089418C:
    jal     func_808930C0
    or      a0, s1, $zero              # a0 = 00000000
    lh      t3, 0x001C(s1)             # 0000001C
    bgezl   t3, lbl_808941C0
    or      a0, s1, $zero              # a0 = 00000000
    lh      t4, 0x02EA(s1)             # 000002EA
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beql    t4, $zero, lbl_808941BC
    sh      t5, 0x02EA(s1)             # 000002EA
    beq     $zero, $zero, lbl_808941BC
    sh      $zero, 0x02EA(s1)          # 000002EA
    sh      t5, 0x02EA(s1)             # 000002EA
lbl_808941BC:
    or      a0, s1, $zero              # a0 = 00000000
lbl_808941C0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3155          # a1 = 00003155
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_808941F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0080(a0)            # 00000080
    lwc1    $f6, 0x0028(a0)            # 00000028
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sw      t6, 0x02A0(a0)             # 000002A0
    c.lt.s  $f4, $f6
    lui     $at, 0xC110                # $at = C1100000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    bc1f    lbl_8089422C
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $at, $f8                   # $f8 = -9.00
    nop
    swc1    $f8, 0x0068(a0)            # 00000068
lbl_8089422C:
    lh      t7, 0x008A(a0)             # 0000008A
    sh      $zero, 0x02E0(a0)          # 000002E0
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sh      t7, 0x0032(a0)             # 00000032
    sw      a0, 0x0020($sp)
    jal     func_80027090
    sw      t8, 0x0010($sp)
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     a1, %hi(func_80894274)     # a1 = 80890000
    lw      a0, 0x0020($sp)
    jal     func_80892000
    addiu   a1, a1, %lo(func_80894274) # a1 = 80894274
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80894274:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0020($sp)
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mfc1    a1, $f0
    mfc1    a2, $f2
    mfc1    a3, $f2
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x0080(s0)             # 00000080
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lbu     t6, 0x0114(s0)             # 00000114
    bnel    t6, $zero, lbl_808942E0
    lw      $ra, 0x0024($sp)
    jal     func_80892BE0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808942E0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808942F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      $zero, 0x02E0(a0)          # 000002E0
    sw      t6, 0x02A4(a0)             # 000002A4
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    swc1    $f4, 0x0068(a0)            # 00000068
    sw      a0, 0x0020($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, %hi(func_8089435C)     # a1 = 80890000
    lh      t8, 0x008A(a0)             # 0000008A
    addiu   a1, a1, %lo(func_8089435C) # a1 = 8089435C
    sw      $zero, 0x02A0(a0)          # 000002A0
    swc1    $f6, 0x02DC(a0)            # 000002DC
    jal     func_80892000
    sh      t8, 0x0032(a0)             # 00000032
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8089435C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x02A4(s0)             # 000002A4
    beq     t6, $zero, lbl_80894440
    nop
    lw      t7, 0x02C4(s0)             # 000002C4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    blez    t8, lbl_8089439C
    sw      t8, 0x02C4(s0)             # 000002C4
    lbu     t0, 0x00AF(s0)             # 000000AF
    bne     t0, $zero, lbl_808943E0
lbl_8089439C:
    addiu   a1, a1, 0x0844             # a1 = 06000844
    jal     func_8008D21C
    lui     a2, 0xC080                 # a2 = C0800000
    lui     $at, 0x40C0                # $at = 40C00000
    sh      $zero, 0x00B4(s0)          # 000000B4
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f4                   # $f4 = 6.00
    lh      t3, 0x00B4(s0)             # 000000B4
    addiu   t1, $zero, 0x0FA0          # t1 = 00000FA0
    addiu   t2, $zero, 0x000E          # t2 = 0000000E
    sh      t1, 0x02E0(s0)             # 000002E0
    sw      t2, 0x02C4(s0)             # 000002C4
    sw      $zero, 0x02A4(s0)          # 000002A4
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f4, 0x0060(s0)            # 00000060
    beq     $zero, $zero, lbl_80894608
    sh      t3, 0x00B8(s0)             # 000000B8
lbl_808943E0:
    lbu     t4, 0x0114(s0)             # 00000114
    lui     a1, 0x3E51                 # a1 = 3E510000
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    andi    t5, t4, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_80894420
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a3, 0x3E70                 # a3 = 3E700000
    ori     a3, a3, 0xA3D7             # a3 = 3E70A3D7
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    ori     a1, a1, 0xEB85             # a1 = 3E51EB85
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    beq     $zero, $zero, lbl_8089460C
    lw      $ra, 0x002C($sp)
lbl_80894420:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    mfc1    a1, $f2
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    beq     $zero, $zero, lbl_8089460C
    lw      $ra, 0x002C($sp)
lbl_80894440:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t7, 0x02E0(s0)             # 000002E0
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addu    t8, t6, t7
    sh      t8, 0x02E2(s0)             # 000002E2
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x00FA          # a3 = 000000FA
    lbu     t9, 0x00AF(s0)             # 000000AF
    lui     $at, %hi(var_808953D8)     # $at = 80890000
    bnel    t9, $zero, lbl_808944A0
    lui     $at, 0x42B1                # $at = 42B10000
    lwc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f8, %lo(var_808953D8)($at)
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0050(s0)           # 00000050
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lui     $at, 0x42B1                # $at = 42B10000
lbl_808944A0:
    mtc1    $at, $f18                  # $f18 = 88.50
    lwc1    $f16, 0x0080(s0)           # 00000080
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f4, $f16, $f18
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4040                 # a3 = 40400000
    swc1    $f6, 0x0010($sp)
    mfc1    a1, $f4
    jal     func_80064178
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    c.eq.s  $f0, $f8
    nop
    bc1fl   lbl_8089458C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0080(s0)           # 00000080
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f4                   # $f4 = 59.00
    sub.s   $f18, $f10, $f16
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_8089458C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      t1, 0x0024(s0)             # 00000024
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sw      t1, 0x0000(a1)             # FFFFFFF4
    lw      t0, 0x0028(s0)             # 00000028
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     a2, 0x42A0                 # a2 = 42A00000
    sw      t0, 0x0004(a1)             # FFFFFFF8
    lw      t1, 0x002C(s0)             # 0000002C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t1, 0x0008(a1)             # FFFFFFFC
    lwc1    $f6, 0x0080(s0)            # 00000080
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x0044($sp)
    jal     func_80026308
    swc1    $f6, 0x0038($sp)
    lui     $at, %hi(var_808953DC)     # $at = 80890000
    lwc1    $f8, %lo(var_808953DC)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0010($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lui     a3, 0x4296                 # a3 = 42960000
    swc1    $f8, 0x0014($sp)
    jal     func_808922F0
    swc1    $f10, 0x0018($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8089458C:
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3E80                # $at = 3E800000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808945B8
    lw      t6, 0x02C4(s0)             # 000002C4
    mtc1    $at, $f16                  # $f16 = 0.25
    nop
    add.s   $f18, $f0, $f16
    swc1    $f18, 0x0068(s0)           # 00000068
    lw      t6, 0x02C4(s0)             # 000002C4
lbl_808945B8:
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bgtz    t7, lbl_80894608
    sw      t7, 0x02C4(s0)             # 000002C4
    lbu     t9, 0x00AF(s0)             # 000000AF
    bnel    t9, $zero, lbl_808945E4
    lh      t0, 0x001C(s0)             # 0000001C
    jal     func_8089461C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8089460C
    lw      $ra, 0x002C($sp)
    lh      t0, 0x001C(s0)             # 0000001C
lbl_808945E4:
    bgez    t0, lbl_80894600
    nop
    jal     func_80893AA4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    beq     $zero, $zero, lbl_80894608
    sh      t1, 0x02E6(s0)             # 000002E6
lbl_80894600:
    jal     func_80892A20
    or      a0, s0, $zero              # a0 = 00000000
lbl_80894608:
    lw      $ra, 0x002C($sp)
lbl_8089460C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8089461C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C4             # a1 = 060005C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     a1, %hi(func_80894674)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80894674) # a1 = 80894674
    sw      t6, 0x02A0(a0)             # 000002A0
    sh      t7, 0x02EC(a0)             # 000002EC
    jal     func_80892000
    swc1    $f4, 0x02D0(a0)            # 000002D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80894674:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lh      v0, 0x02EC(s0)             # 000002EC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    bne     v0, $at, lbl_808946E0
    or      a1, s1, $zero              # a1 = 00000000
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t6, $zero, 0x0602          # t6 = 00000602
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beql    v0, $zero, lbl_808946E0
    lh      v0, 0x02EC(s0)             # 000002EC
    sh      $zero, 0x01E8(v0)          # 000001E8
    lh      v0, 0x02EC(s0)             # 000002EC
lbl_808946E0:
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x02EC(s0)             # 000002EC
    lh      t8, 0x02EC(s0)             # 000002EC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bne     t8, $zero, lbl_80894738
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_80013A84
    sw      a2, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0038($sp)
    jal     func_80013A84
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0038($sp)
    jal     func_80013A84
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80894738:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8089474C:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s3, 0x0040($sp)
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lbu     v0, 0x0301(s1)             # 00000301
    andi    t6, v0, 0x0080             # t6 = 00000000
    bne     t6, $zero, lbl_80894794
    andi    t1, v0, 0xFF7F             # t1 = 00000000
    lbu     t7, 0x03AD(s1)             # 000003AD
    andi    t8, t7, 0x0080             # t8 = 00000000
    beql    t8, $zero, lbl_808947B8
    lbu     v0, 0x034D(s1)             # 0000034D
lbl_80894794:
    lbu     t9, 0x03AD(s1)             # 000003AD
    lbu     t2, 0x034D(s1)             # 0000034D
    sb      t1, 0x0301(s1)             # 00000301
    andi    t0, t9, 0xFF7F             # t0 = 00000000
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    sb      t0, 0x03AD(s1)             # 000003AD
    beq     $zero, $zero, lbl_80894914
    sb      t3, 0x034D(s1)             # 0000034D
    lbu     v0, 0x034D(s1)             # 0000034D
lbl_808947B8:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x033C             # a1 = 0000033C
    andi    t4, v0, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80894914
    andi    t5, v0, 0xFFFD             # t5 = 00000000
    sb      t5, 0x034D(s1)             # 0000034D
    jal     func_800284A8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     v0, 0x00B1(s1)             # 000000B1
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_80894914
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80894914
    addiu   v1, $zero, 0x000D          # v1 = 0000000D
    bne     v1, v0, lbl_80894800
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     $zero, $zero, lbl_80894854
    sb      $zero, 0x00AF(s1)          # 000000AF
lbl_80894800:
    bne     v0, $at, lbl_80894824
    nop
    lw      t6, 0x02A0(s1)             # 000002A0
    beql    v1, t6, lbl_80894918
    lw      $ra, 0x0044($sp)
    jal     func_808941F0
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80894918
    lw      $ra, 0x0044($sp)
lbl_80894824:
    jal     func_80028390
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t7, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3956          # a1 = 00003956
lbl_80894854:
    lbu     t8, 0x00B1(s1)             # 000000B1
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    bne     t8, $at, lbl_80894900
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f22                  # $f22 = 25.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s2, $sp, 0x0054            # s2 = FFFFFFF4
lbl_80894878:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0024(s1)            # 00000024
    add.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0054($sp)
    mul.s   $f8, $f0, $f22
    lwc1    $f10, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20
    add.s   $f16, $f8, $f10
    jal     func_80026D90
    swc1    $f16, 0x0058($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0018($sp)
    add.s   $f4, $f0, $f18
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f4, 0x005C($sp)
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFF4
    jal     func_8001DFEC
    addiu   a3, $zero, 0x0046          # a3 = 00000046
    addiu   s0, s0, 0xFFFF             # s0 = 00000003
    bgez    s0, lbl_80894878
    nop
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sw      t0, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
lbl_80894900:
    lbu     t1, 0x00AF(s1)             # 000000AF
    bnel    t1, $zero, lbl_80894918
    lw      $ra, 0x0044($sp)
    jal     func_808942F0
    or      a0, s1, $zero              # a0 = 00000000
lbl_80894914:
    lw      $ra, 0x0044($sp)
lbl_80894918:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80894938:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t6, 0x1C44(s4)             # 00001C44
    or      a0, s3, $zero              # a0 = 00000000
    sw      t6, 0x007C($sp)
    lh      t7, 0x001C(s3)             # 0000001C
    bgtzl   t7, lbl_80894984
    lbu     t8, 0x00B1(s3)             # 000000B1
    jal     func_8089474C
    or      a1, s4, $zero              # a1 = 00000000
    lbu     t8, 0x00B1(s3)             # 000000B1
lbl_80894984:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t8, $at, lbl_80894A50
    lh      t2, 0x001C(s3)             # 0000001C
    mtc1    $zero, $f20                # $f20 = 0.00
    lwc1    $f4, 0x0068(s3)            # 00000068
    c.eq.s  $f20, $f4
    nop
    bc1f    lbl_808949BC
    nop
    lwc1    $f6, 0x0060(s3)            # 00000060
    c.eq.s  $f20, $f6
    nop
    bc1tl   lbl_808949F0
    lw      t9, 0x02A8(s3)             # 000002A8
lbl_808949BC:
    jal     func_8002121C
    or      a0, s3, $zero              # a0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x0014($sp)
    mfc1    a3, $f0
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    lui     a2, 0x41C8                 # a2 = 41C80000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x02A8(s3)             # 000002A8
lbl_808949F0:
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s4
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x007F             # t1 = 00000000
    bnel    t1, $zero, lbl_80894A40
    lwc1    $f4, 0x02D4(s3)            # 000002D4
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x02D8(s3)           # 000002D8
    lwc1    $f4, 0x02D4(s3)            # 000002D4
lbl_80894A40:
    lwc1    $f6, 0x02D8(s3)            # 000002D8
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x02D4(s3)            # 000002D4
    lh      t2, 0x001C(s3)             # 0000001C
lbl_80894A50:
    mtc1    $zero, $f20                # $f20 = 0.00
    bgezl   t2, lbl_80894AF0
    lw      t1, 0x0024(s3)             # 00000024
    lw      t3, 0x0358(s3)             # 00000358
    lw      t5, 0x0358(s3)             # 00000358
    lw      t7, 0x0358(s3)             # 00000358
    lh      t4, 0x0030(t3)             # 00000030
    lw      t9, 0x02A0(s3)             # 000002A0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    mtc1    t4, $f10                   # $f10 = 0.00
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f16, $f10
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    swc1    $f16, 0x0038(s3)           # 00000038
    lh      t6, 0x0032(t5)             # 00000032
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x003C(s3)            # 0000003C
    lh      t8, 0x0034(t7)             # 00000034
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    bne     t9, $at, lbl_80894ADC
    swc1    $f8, 0x0040(s3)            # 00000040
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x012C          # a3 = 0000012C
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80894B08
    addiu   s2, s3, 0x02F0             # s2 = 000002F0
lbl_80894ADC:
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80894B08
    addiu   s2, s3, 0x02F0             # s2 = 000002F0
    lw      t1, 0x0024(s3)             # 00000024
lbl_80894AF0:
    lw      t0, 0x0028(s3)             # 00000028
    sw      t1, 0x0038(s3)             # 00000038
    lw      t1, 0x002C(s3)             # 0000002C
    sw      t0, 0x003C(s3)             # 0000003C
    sw      t1, 0x0040(s3)             # 00000040
    addiu   s2, s3, 0x02F0             # s2 = 000002F0
lbl_80894B08:
    or      a1, s2, $zero              # a1 = 000002F0
    jal     func_80050B00
    or      a0, s3, $zero              # a0 = 00000000
    lbu     t2, 0x00AF(s3)             # 000000AF
    blezl   t2, lbl_80894BCC
    lw      v0, 0x02A0(s3)             # 000002A0
    lh      t3, 0x001C(s3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bgtz    t3, lbl_80894B90
    or      a0, s4, $zero              # a0 = 00000000
    addu    s0, s4, $at
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s2, $zero              # a2 = 000002F0
    addiu   s1, s3, 0x033C             # s1 = 0000033C
    or      a2, s1, $zero              # a2 = 0000033C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t4, 0x0114(s3)             # 00000114
    beql    t4, $zero, lbl_80894B78
    lw      t7, 0x02A0(s3)             # 000002A0
    lhu     t5, 0x0112(s3)             # 00000112
    andi    t6, t5, 0x4000             # t6 = 00000000
    bnel    t6, $zero, lbl_80894B94
    lh      t8, 0x001C(s3)             # 0000001C
    lw      t7, 0x02A0(s3)             # 000002A0
lbl_80894B78:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s4, $zero              # a0 = 00000000
    beq     t7, $at, lbl_80894B90
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 0000033C
lbl_80894B90:
    lh      t8, 0x001C(s3)             # 0000001C
lbl_80894B94:
    beql    t8, $zero, lbl_80894BCC
    lw      v0, 0x02A0(s3)             # 000002A0
    lbu     v0, 0x03AC(s3)             # 000003AC
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80894BC8
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x03AC(s3)             # 000003AC
    lw      t1, 0x007C($sp)
    lw      t2, 0x03A0(s3)             # 000003A0
    bnel    t1, t2, lbl_80894BCC
    lw      v0, 0x02A0(s3)             # 000002A0
    jal     func_80893FB4
    or      a0, s3, $zero              # a0 = 00000000
lbl_80894BC8:
    lw      v0, 0x02A0(s3)             # 000002A0
lbl_80894BCC:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_80894BF8
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_80894BF8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80894BF8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80894BF8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80894D48
    or      a0, s4, $zero              # a0 = 00000000
lbl_80894BF8:
    lh      v1, 0x001C(s3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    beq     v1, $zero, lbl_80894C34
    or      a0, s4, $zero              # a0 = 00000000
    addu    s0, s4, $at
    addiu   s1, s3, 0x039C             # s1 = 0000039C
    or      a2, s1, $zero              # a2 = 0000039C
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 0000039C
    lh      v1, 0x001C(s3)             # 0000001C
lbl_80894C34:
    bgez    v1, lbl_80894D24
    nop
    lw      t3, 0x0004(s3)             # 00000004
    addiu   a1, s3, 0x0024             # a1 = 00000024
    addiu   s0, $zero, 0x000C          # s0 = 0000000C
    andi    t4, t3, 0x0040             # t4 = 00000000
    beq     t4, $zero, lbl_80894D24
    addiu   a0, s4, 0x07C0             # a0 = 000007C0
    addiu   s1, s3, 0x02B8             # s1 = 000002B8
    sw      a0, 0x0058($sp)
    sw      a1, 0x0060($sp)
    addiu   s2, $sp, 0x0070            # s2 = FFFFFFE8
lbl_80894C64:
    addiu   t5, $sp, 0x006C            # t5 = FFFFFFE4
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $sp, 0x0068            # t9 = FFFFFFE0
    lw      a0, 0x0058($sp)
    lw      a1, 0x0060($sp)
    sw      $zero, 0x006C($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    or      a2, s1, $zero              # a2 = 000002B8
    or      a3, s2, $zero              # a3 = FFFFFFE8
    jal     func_800308B4
    sw      $zero, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80894D10
    or      a0, s4, $zero              # a0 = 00000000
    mfc1    a2, $f20
    addiu   t0, $zero, 0x012C          # t0 = 0000012C
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    or      a1, s2, $zero              # a1 = FFFFFFE8
    jal     func_80026308
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_808953E0)     # $at = 80890000
    lwc1    $f10, %lo(var_808953E0)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    mfc1    a3, $f20
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sw      t3, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFE8
    swc1    $f10, 0x0014($sp)
    jal     func_808922F0
    swc1    $f16, 0x0018($sp)
lbl_80894D10:
    addiu   s0, s0, 0xFFF4             # s0 = 00000000
    bgez    s0, lbl_80894C64
    addiu   s1, s1, 0xFFF4             # s1 = 000002AC
    beq     $zero, $zero, lbl_80894D60
    mfc1    a1, $f20
lbl_80894D24:
    beq     v1, $zero, lbl_80894D5C
    or      a0, s4, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s4, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s2, $zero              # a2 = FFFFFFE8
    beq     $zero, $zero, lbl_80894D60
    mfc1    a1, $f20
lbl_80894D48:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s4, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s2, $zero              # a2 = FFFFFFE8
lbl_80894D5C:
    mfc1    a1, $f20
lbl_80894D60:
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    addiu   a0, s3, 0x02DC             # a0 = 000002DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80894D9C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a3, 0x0034($sp)
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    bne     a1, a3, lbl_80894DD4
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lw      s0, 0x003C($sp)
    lw      t8, 0x0038($sp)
    lh      t6, 0x02E2(s0)             # 000002E2
    subu    t7, $zero, t6
    sh      t7, 0x0000(t8)             # 00000000
lbl_80894DD4:
    beq     a1, v1, lbl_80894E04
    lw      s0, 0x003C($sp)
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bnel    a1, $at, lbl_80894F5C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x02A0(s0)             # 000002A0
    beql    v0, $zero, lbl_80894E08
    lw      t9, 0x0028($sp)
    beql    v1, v0, lbl_80894E08
    lw      t9, 0x0028($sp)
    bnel    a3, v0, lbl_80894F5C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80894E04:
    lw      t9, 0x0028($sp)
lbl_80894E08:
    lw      t0, 0x0000(t9)             # 00000000
    jal     func_800AA6EC
    sw      t0, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, %hi(var_808953E4)     # $at = 80890000
    lwc1    $f6, %lo(var_808953E4)($at)
    lwc1    $f4, 0x02D4(s0)            # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lui     $at, %hi(var_808953E8)     # $at = 80890000
    lwc1    $f10, %lo(var_808953E8)($at)
    lwc1    $f8, 0x02D4(s0)            # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_808953EC)     # $at = 80890000
    lwc1    $f18, %lo(var_808953EC)($at)
    lwc1    $f16, 0x02D4(s0)           # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x02DC(s0)            # 000002DC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f12, $f2, $f0
    add.s   $f14, $f0, $f2
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lui     $at, %hi(var_808953F0)     # $at = 80890000
    lwc1    $f6, %lo(var_808953F0)($at)
    lwc1    $f4, 0x02D4(s0)            # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    neg.s   $f12, $f12
    lui     $at, %hi(var_808953F4)     # $at = 80890000
    lwc1    $f10, %lo(var_808953F4)($at)
    lwc1    $f8, 0x02D4(s0)            # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    neg.s   $f12, $f12
    lui     $at, %hi(var_808953F8)     # $at = 80890000
    lwc1    $f18, %lo(var_808953F8)($at)
    lwc1    $f16, 0x02D4(s0)           # 000002D4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lw      v0, 0x0020($sp)
    lw      s0, 0x02C0(v0)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(v0)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, 0x0028($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      t4, 0x0020($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    lw      v1, 0x02C0(t4)             # 000002C0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t4)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0030($sp)
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    beq     $zero, $zero, lbl_80894F5C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80894F5C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80894F70:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_80894FBC
    lui     a0, %hi(var_80895344)      # a0 = 80890000
    lw      a1, 0x0040($sp)
    addiu   a0, a0, %lo(var_80895344)  # a0 = 80895344
    jal     func_800AB958
    addiu   a1, a1, 0x02AC             # a1 = 000002AC
    lw      a1, 0x0040($sp)
    lui     a0, %hi(var_80895350)      # a0 = 80890000
    addiu   a0, a0, %lo(var_80895350)  # a0 = 80895350
    jal     func_800AB958
    addiu   a1, a1, 0x02B8             # a1 = 000002B8
    beq     $zero, $zero, lbl_80895118
    lw      $ra, 0x0014($sp)
lbl_80894FBC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_80895114
    lw      t6, 0x0040($sp)
    lh      t7, 0x001C(t6)             # 0000001C
    bgtzl   t7, lbl_80895118
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t8, 0x0030($sp)
    swc1    $f4, 0x0028($sp)
    lw      t9, 0x0000(t8)             # 00000000
    jal     func_800AA6EC
    sw      t9, 0x0024($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f12                  # $f12 = -1000.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a1, 0x0040($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, a1, 0x033C             # a1 = 0000033C
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x0040($sp)
    lbu     v0, 0x0114(v1)             # 00000114
    beq     v0, $zero, lbl_80895080
    nop
    lhu     t0, 0x0112(v1)             # 00000112
    sll     a0, v0,  2
    addu    a0, a0, v0
    andi    t1, t0, 0x4000             # t1 = 00000000
    beq     t1, $zero, lbl_80895080
    sll     a0, a0,  3
    subu    a0, a0, v0
    sll     a0, a0,  4
    addu    a0, a0, v0
    sll     a0, a0,  5
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_808953FC)     # $at = 80890000
    lwc1    $f6, %lo(var_808953FC)($at)
    mul.s   $f8, $f0, $f6
    swc1    $f8, 0x0028($sp)
lbl_80895080:
    lui     $at, %hi(var_80895400)     # $at = 80890000
    lwc1    $f10, %lo(var_80895400)($at)
    lwc1    $f16, 0x0028($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    add.s   $f12, $f10, $f16
    lui     $at, %hi(var_80895404)     # $at = 80890000
    lwc1    $f14, %lo(var_80895404)($at)
    lui     $at, %hi(var_80895408)     # $at = 80890000
    lwc1    $f12, %lo(var_80895408)($at)
    mfc1    a2, $f14
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x0024($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(v0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0030($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t5, 0x0024($sp)
    lw      v1, 0x02C0(t5)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t5)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0038($sp)
    lw      t9, 0x0000(t8)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
lbl_80895114:
    lw      $ra, 0x0014($sp)
lbl_80895118:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80895124:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lui     t7, %hi(func_80894F70)     # t7 = 80890000
    addiu   t7, t7, %lo(func_80894F70) # t7 = 80894F70
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lui     a3, %hi(func_80894D9C)     # a3 = 80890000
    addiu   a3, a3, %lo(func_80894D9C) # a3 = 80894D9C
    sw      s0, 0x0014($sp)
    sw      t7, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x0044($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     a0, %hi(var_8089535C)      # a0 = 80890000
    addiu   a0, a0, %lo(var_8089535C)  # a0 = 8089535C
    c.eq.s  $f0, $f4
    addiu   a1, s0, 0x03E8             # a1 = 000003E8
    bc1f    lbl_808951A0
    nop
    lwc1    $f6, 0x0060(s0)            # 00000060
    c.eq.s  $f0, $f6
    nop
    bc1tl   lbl_80895208
    lw      $ra, 0x0024($sp)
lbl_808951A0:
    jal     func_800AB958
    sw      a1, 0x0034($sp)
    lui     a0, %hi(var_80895368)      # a0 = 80890000
    addiu   a1, s0, 0x03DC             # a1 = 000003DC
    sw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_80895368)  # a0 = 80895368
    lui     a0, %hi(var_80895374)      # a0 = 80890000
    addiu   a1, s0, 0x0400             # a1 = 00000400
    sw      a1, 0x002C($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_80895374)  # a0 = 80895374
    lui     a0, %hi(var_80895380)      # a0 = 80890000
    addiu   a3, s0, 0x03F4             # a3 = 000003F4
    or      a1, a3, $zero              # a1 = 000003F4
    sw      a3, 0x0030($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_80895380)  # a0 = 80895380
    lw      t8, 0x002C($sp)
    lw      a3, 0x0030($sp)
    addiu   a0, s0, 0x039C             # a0 = 0000039C
    lw      a1, 0x0038($sp)
    lw      a2, 0x0034($sp)
    jal     func_80050B64
    sw      t8, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80895208:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_80895220: .word 0x001D0500, 0x01000015, 0x00180000, 0x0000041C
.word func_8089200C
.word func_8089227C
.word func_80894938
.word func_80895124
var_80895240: .word \
0x0B000909, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, \
0x003200A0, 0xFFBA0000, 0x00000000
var_8089526C: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010100, 0x00000000, 0x00000000, \
0x00140064
var_80895290: .word 0x06000909, 0x10000000, 0x00000001
.word var_8089526C
var_808952A0: .word \
0x09110D00, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_808952F0: .word \
0xF0020102, 0xE00202D2, 0x010204C4, 0x02020202, \
0x02C36060, 0x00000104, 0x02020804, 0x00000400
var_80895310: .word 0x304C02BC
var_80895314: .word 0x00000000, 0x41000000, 0x00000000
var_80895320: .word 0x00000000, 0xBFC00000, 0x00000000
var_8089532C: .word 0x00000000, 0x00000000, 0x00000000
var_80895338: .word 0x00000000, 0x00000000, 0x00000000
var_80895344: .word 0x00000000, 0x00000000, 0x45ABE000
var_80895350: .word 0x00000000, 0x00000000, 0xC5ABE000
var_8089535C: .word 0x00000000, 0x00000000, 0xC58CA000
var_80895368: .word 0xC58CA000, 0x00000000, 0x00000000
var_80895374: .word 0x458CA000, 0x00000000, 0x00000000
var_80895380: .word 0x00000000, 0x00000000, 0x458CA000, 0x00000000

.section .rodata

var_80895390: .word 0x45834000
var_80895394: .word 0x3BC49BA6
var_80895398: .word 0x3B449BA6
var_8089539C: .word 0x40C8F5C3
var_808953A0: .word 0x477FFF00
var_808953A4: .word 0x477FFF00
var_808953A8: .word 0x3F866666
var_808953AC: .word 0x3F866666
var_808953B0: .word 0x40A9999A
var_808953B4: .word 0x3A03126F
var_808953B8: .word 0x3F866666
var_808953BC: .word 0x3F866666
var_808953C0: .word 0x3FB33333
var_808953C4: .word 0x3E3851EC
var_808953C8: .word 0x3D8F5C29
var_808953CC: .word 0x3FB33333
var_808953D0: .word 0x3E3851EC
var_808953D4: .word 0x3D8F5C29
var_808953D8: .word 0x3AC49BA6
var_808953DC: .word 0x3F866666
var_808953E0: .word 0x3F866666
var_808953E4: .word 0x3DEB851F
var_808953E8: .word 0x3E051EB8
var_808953EC: .word 0x3DCCCCCD
var_808953F0: .word 0x3DCCCCCD
var_808953F4: .word 0x3E051EB8
var_808953F8: .word 0x3DEB851F
var_808953FC: .word 0x3EB33333
var_80895400: .word 0x404CCCCD
var_80895404: .word 0x3E4CCCCD
var_80895408: .word 0x3E99999A, 0x00000000

