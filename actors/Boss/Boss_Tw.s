.section .text
func_809D1160:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    lh      s0, 0x0042($sp)
    sw      $ra, 0x001C($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    lw      v1, 0x1E10(v1)             # 00011E10
    blez    s0, lbl_809D1240
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D1184:
    lbu     t6, 0x0000(v1)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809D1234
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v1)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0004(v1)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0008(v1)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    mtc1    $at, $f12                  # $f12 = 10.00
    sw      t9, 0x000C(v1)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v1)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v1)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v1)             # 00010018
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v1)             # 0001001C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v1)             # 00010020
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(v1)             # 00010024
    lwc1    $f4, 0x0038($sp)
    sh      t4, 0x002C(v1)             # 0001002C
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x0034(v1)            # 00010034
    jal     func_80026D64
    sw      v1, 0x0020($sp)
    trunc.w.s $f10, $f0
    lw      v1, 0x0020($sp)
    mfc1    t8, $f10
    nop
    sb      t8, 0x0001(v1)             # 00000001
    lh      t9, 0x003E($sp)
    beq     $zero, $zero, lbl_809D1240
    sh      t9, 0x002E(v1)             # 0000002E
lbl_809D1234:
    slt     $at, v0, s0
    bne     $at, $zero, lbl_809D1184
    addiu   v1, v1, 0x0048             # v1 = 00000048
lbl_809D1240:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D1254:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    sw      s0, 0x0018($sp)
    lh      s0, 0x004A($sp)
    sra     a1, a1, 16
    sw      $ra, 0x001C($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    lw      v1, 0x1E10(v1)             # 00011E10
    blez    s0, lbl_809D133C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D1284:
    lbu     t6, 0x0000(v1)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809D1330
    sra     v0, v0, 16
    sb      a1, 0x0000(v1)             # 00010000
    lw      t8, 0x0000(a2)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t8, 0x0004(v1)             # 00010004
    lw      t7, 0x0004(a2)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sw      t7, 0x0008(v1)             # 00010008
    lw      t8, 0x0008(a2)             # 00000008
    sw      t8, 0x000C(v1)             # 0001000C
    lw      t0, 0x0000(a3)             # 00000000
    sw      t0, 0x0010(v1)             # 00010010
    lw      t9, 0x0004(a3)             # 00000004
    sw      t9, 0x0014(v1)             # 00010014
    lw      t0, 0x0008(a3)             # 00000008
    sw      t0, 0x0018(v1)             # 00010018
    lw      t1, 0x0038($sp)
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x001C(v1)             # 0001001C
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x0020(v1)             # 00010020
    lw      t3, 0x0008(t1)             # 00000008
    sw      t3, 0x0024(v1)             # 00010024
    lwc1    $f4, 0x003C($sp)
    div.s   $f8, $f4, $f6
    swc1    $f8, 0x0034(v1)            # 00010034
    lh      t4, 0x0046($sp)
    sh      t4, 0x002E(v1)             # 0001002E
    lh      t5, 0x0042($sp)
    sh      t5, 0x002C(v1)             # 0001002C
    jal     func_80026D64
    sw      v1, 0x0020($sp)
    trunc.w.s $f10, $f0
    lw      v1, 0x0020($sp)
    mfc1    t9, $f10
    beq     $zero, $zero, lbl_809D133C
    sb      t9, 0x0001(v1)             # 00000001
lbl_809D1330:
    slt     $at, v0, s0
    bne     $at, $zero, lbl_809D1284
    addiu   v1, v1, 0x0048             # v1 = 00000048
lbl_809D133C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D1350:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a2, $f14                   # $f14 = 0.00
    lh      a2, 0x003E($sp)
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    lw      v1, 0x1E10(v1)             # 00011E10
    blez    a2, lbl_809D1444
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D1378:
    lbu     t6, 0x0000(v1)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809D1438
    sra     v0, v0, 16
    lui     $at, %hi(var_809E2A50)     # $at = 809E0000
    lwc1    $f0, %lo(var_809E2A50)($at)
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0000(v1)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     v0, %hi(var_809E27CC)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E27CC)  # v0 = 809E27CC
    sw      t9, 0x0004(v1)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    mul.s   $f4, $f14, $f0
    lui     $at, %hi(var_809E2A54)     # $at = 809E0000
    sw      t8, 0x0008(v1)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v1)             # 0001000C
    lw      t1, 0x0000(v0)             # 809E27CC
    sw      t1, 0x0010(v1)             # 00010010
    lw      t0, 0x0004(v0)             # 809E27D0
    sw      t0, 0x0014(v1)             # 00010014
    lw      t1, 0x0008(v0)             # 809E27D4
    sw      t1, 0x0018(v1)             # 00010018
    lw      t3, 0x0000(v0)             # 809E27CC
    sw      t3, 0x001C(v1)             # 0001001C
    lw      t2, 0x0004(v0)             # 809E27D0
    sw      t2, 0x0020(v1)             # 00010020
    lw      t3, 0x0008(v0)             # 809E27D4
    swc1    $f4, 0x0034(v1)            # 00010034
    sw      t3, 0x0024(v1)             # 00010024
    lwc1    $f6, 0x002C($sp)
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0038(v1)            # 00010038
    lh      t4, 0x0036($sp)
    sh      t4, 0x002E(v1)             # 0001002E
    lh      t5, 0x003A($sp)
    sh      t5, 0x0030(v1)             # 00010030
    lh      t6, 0x0032($sp)
    sh      t6, 0x002C(v1)             # 0001002C
    sw      v1, 0x0018($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2A54)($at)
    lw      v1, 0x0018($sp)
    swc1    $f0, 0x003C(v1)            # 0000003C
    beq     $zero, $zero, lbl_809D1444
    sb      $zero, 0x0001(v1)          # 00000001
lbl_809D1438:
    slt     $at, v0, a2
    bne     $at, $zero, lbl_809D1378
    addiu   v1, v1, 0x0048             # v1 = 00000048
lbl_809D1444:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809D1454:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809D1464:
    lbu     t6, 0x0000(v0)             # 00010000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t6, $zero, lbl_809D14EC
    sra     v1, v1, 16
    lui     v1, %hi(var_809E27CC)      # v1 = 809E0000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   v1, v1, %lo(var_809E27CC)  # v1 = 809E27CC
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(v1)             # 809E27CC
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t9, 0x0010(v0)             # 00010010
    lw      t8, 0x0004(v1)             # 809E27D0
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sw      t8, 0x0014(v0)             # 00010014
    lw      t9, 0x0008(v1)             # 809E27D4
    sw      t9, 0x0018(v0)             # 00010018
    lw      t1, 0x0000(v1)             # 809E27CC
    sw      t1, 0x001C(v0)             # 0001001C
    lw      t0, 0x0004(v1)             # 809E27D0
    sw      t0, 0x0020(v0)             # 00010020
    lw      t1, 0x0008(v1)             # 809E27D4
    sb      $zero, 0x0001(v0)          # 00010001
    sw      a1, 0x0044(v0)             # 00010044
    swc1    $f0, 0x0038(v0)            # 00010038
    swc1    $f0, 0x0034(v0)            # 00010034
    swc1    $f0, 0x003C(v0)            # 0001003C
    bne     a1, $zero, lbl_809D14E4
    sw      t1, 0x0024(v0)             # 00010024
    jr      $ra
    sh      t2, 0x002E(v0)             # 0001002E
lbl_809D14E4:
    jr      $ra
    sh      t3, 0x002E(v0)             # 0001002E
lbl_809D14EC:
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809D1464
    addiu   v0, v0, 0x0048             # v0 = 00010048
    jr      $ra
    nop


func_809D1500:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809D1518:
    lbu     t6, 0x0000(v0)             # 00010000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t6, $zero, lbl_809D15BC
    sra     v1, v1, 16
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(v0)             # 00010024
    lwc1    $f4, 0x0030($sp)
    div.s   $f6, $f4, $f12
    swc1    $f6, 0x0034(v0)            # 00010034
    lh      t4, 0x0036($sp)
    sh      $zero, 0x0030(v0)          # 00010030
    sh      $zero, 0x002C(v0)          # 0001002C
    sh      t4, 0x002E(v0)             # 0001002E
    jal     func_80026D64
    sw      v0, 0x0018($sp)
    trunc.w.s $f8, $f0
    lw      v0, 0x0018($sp)
    mfc1    t8, $f8
    beq     $zero, $zero, lbl_809D15C8
    sb      t8, 0x0001(v0)             # 00000001
lbl_809D15BC:
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809D1518
    addiu   v0, v0, 0x0048             # v0 = 00000048
lbl_809D15C8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809D15D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x002C($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a0
    lw      v1, 0x1E10(v1)             # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D15F8:
    lbu     t6, 0x0000(v1)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_809D16C4
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sb      t7, 0x0000(v1)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    sw      t9, 0x0004(v1)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    lui     v0, %hi(var_809E27CC)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E27CC)  # v0 = 809E27CC
    sw      t8, 0x0008(v1)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    div.s   $f6, $f14, $f4
    lui     $at, %hi(var_809E2A58)     # $at = 809E0000
    sw      t9, 0x000C(v1)             # 0001000C
    lw      t1, 0x0000(v0)             # 809E27CC
    sw      t1, 0x0010(v1)             # 00010010
    lw      t0, 0x0004(v0)             # 809E27D0
    sw      t0, 0x0014(v1)             # 00010014
    lw      t1, 0x0008(v0)             # 809E27D4
    sw      t1, 0x0018(v1)             # 00010018
    lw      t3, 0x0000(v0)             # 809E27CC
    sw      t3, 0x001C(v1)             # 0001001C
    lw      t2, 0x0004(v0)             # 809E27D0
    sw      t2, 0x0020(v1)             # 00010020
    lw      t3, 0x0008(v0)             # 809E27D4
    swc1    $f6, 0x0034(v1)            # 00010034
    sw      t3, 0x0024(v1)             # 00010024
    lh      t4, 0x0032($sp)
    sh      $zero, 0x0030(v1)          # 00010030
    sh      t4, 0x002E(v1)             # 0001002E
    lwc1    $f8, 0x002C($sp)
    swc1    $f8, 0x0038(v1)            # 00010038
    sw      v1, 0x0018($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2A58)($at)
    lw      v1, 0x0018($sp)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    swc1    $f0, 0x003C(v1)            # 0000003C
    jal     func_80026D64
    sh      $zero, 0x002C(v1)          # 0000002C
    trunc.w.s $f10, $f0
    lw      v1, 0x0018($sp)
    mfc1    t8, $f10
    beq     $zero, $zero, lbl_809D16D0
    sb      t8, 0x0001(v1)             # 00000001
lbl_809D16C4:
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809D15F8
    addiu   v1, v1, 0x0048             # v1 = 00000048
lbl_809D16D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809D16E0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809D16F8:
    lbu     t6, 0x0000(v0)             # 00010000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t6, $zero, lbl_809D17AC
    sra     v1, v1, 16
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sb      t7, 0x0000(v0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    sw      t9, 0x0004(v0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0008(v0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v0)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v0)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v0)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v0)             # 00010018
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v0)             # 0001001C
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v0)             # 00010020
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(v0)             # 00010024
    lwc1    $f4, 0x0030($sp)
    div.s   $f6, $f4, $f12
    swc1    $f6, 0x0034(v0)            # 00010034
    lwc1    $f8, 0x0034($sp)
    div.s   $f10, $f8, $f12
    swc1    $f10, 0x0038(v0)           # 00010038
    lh      t4, 0x003E($sp)
    sh      $zero, 0x0030(v0)          # 00010030
    sh      t4, 0x002E(v0)             # 0001002E
    lh      t5, 0x003A($sp)
    sh      t5, 0x002C(v0)             # 0001002C
    jal     func_80026D64
    sw      v0, 0x0018($sp)
    trunc.w.s $f16, $f0
    lw      v0, 0x0018($sp)
    mfc1    t9, $f16
    beq     $zero, $zero, lbl_809D17B8
    sb      t9, 0x0001(v0)             # 00000001
lbl_809D17AC:
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809D16F8
    addiu   v0, v0, 0x0048             # v0 = 00000048
lbl_809D17B8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809D17C8:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s5, 0x0050($sp)
    sw      s4, 0x004C($sp)
    sdc1    $f22, 0x0018($sp)
    sll     s4, a2, 16
    lui     s5, %hi(var_809E4200)      # s5 = 809E0000
    mtc1    a1, $f22                   # $f22 = 0.00
    addiu   s5, s5, %lo(var_809E4200)  # s5 = 809E4200
    sra     s4, s4, 16
    sw      $ra, 0x005C($sp)
    sw      s7, 0x0058($sp)
    sw      s6, 0x0054($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x0068($sp)
    lw      v0, 0x1C44(a0)             # 00001C44
    lui     $at, %hi(var_809E420C)     # $at = 809E0000
    lui     s2, %hi(var_809E27CC)      # s2 = 809E0000
    lw      t7, 0x09AC(v0)             # 000009AC
    mtc1    $zero, $f28                # $f28 = 0.00
    addiu   s2, s2, %lo(var_809E27CC)  # s2 = 809E27CC
    sw      t7, 0x0000(s5)             # 809E4200
    lw      t6, 0x09B0(v0)             # 000009B0
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x00FF          # s7 = 000000FF
    sw      t6, 0x0004(s5)             # 809E4204
    lw      t7, 0x09B4(v0)             # 000009B4
    addiu   s6, $zero, 0x0009          # s6 = 00000009
    sw      t7, 0x0008(s5)             # 809E4208
    lh      t8, 0x00B6(v0)             # 000000B6
    sh      t8, %lo(var_809E420C)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    s3, a0, $at
    lui     $at, %hi(var_809E2A5C)     # $at = 809E0000
    lwc1    $f26, %lo(var_809E2A5C)($at)
    lui     $at, %hi(var_809E2A60)     # $at = 809E0000
    lwc1    $f24, %lo(var_809E2A60)($at)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    nop
    lw      s0, 0x1E10(s3)             # 00001E10
lbl_809D1884:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D1888:
    lbu     t9, 0x0000(s0)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t9, $zero, lbl_809D192C
    sra     v0, v0, 16
    sb      s6, 0x0000(s0)             # 00000000
    lw      t1, 0x0000(s5)             # 809E4200
    div.s   $f10, $f22, $f20
    mtc1    s1, $f4                    # $f4 = 0.00
    sw      t1, 0x0004(s0)             # 00000004
    lw      t0, 0x0004(s5)             # 809E4204
    cvt.s.w $f6, $f4
    mov.s   $f12, $f20
    sw      t0, 0x0008(s0)             # 00000008
    lw      t1, 0x0008(s5)             # 809E4208
    sw      t1, 0x000C(s0)             # 0000000C
    lw      t3, 0x0000(s2)             # 809E27CC
    sw      t3, 0x0010(s0)             # 00000010
    lw      t2, 0x0004(s2)             # 809E27D0
    sw      t2, 0x0014(s0)             # 00000014
    lw      t3, 0x0008(s2)             # 809E27D4
    sw      t3, 0x0018(s0)             # 00000018
    lw      t5, 0x0000(s2)             # 809E27CC
    mul.s   $f8, $f6, $f24
    sw      t5, 0x001C(s0)             # 0000001C
    lw      t4, 0x0004(s2)             # 809E27D0
    sw      t4, 0x0020(s0)             # 00000020
    lw      t5, 0x0008(s2)             # 809E27D4
    swc1    $f8, 0x003C(s0)            # 0000003C
    swc1    $f26, 0x0040(s0)           # 00000040
    swc1    $f28, 0x0038(s0)           # 00000038
    swc1    $f10, 0x0034(s0)           # 00000034
    sh      s4, 0x002E(s0)             # 0000002E
    sh      $zero, 0x0030(s0)          # 00000030
    sh      s7, 0x002C(s0)             # 0000002C
    jal     func_80026D64
    sw      t5, 0x0024(s0)             # 00000024
    trunc.w.s $f16, $f0
    mfc1    t9, $f16
    beq     $zero, $zero, lbl_809D1938
    sb      t9, 0x0001(s0)             # 00000001
lbl_809D192C:
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809D1888
    addiu   s0, s0, 0x0048             # s0 = 00000048
lbl_809D1938:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0008
    bnel    $at, $zero, lbl_809D1884
    lw      s0, 0x1E10(s3)             # 00001E10
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    lw      s4, 0x004C($sp)
    lw      s5, 0x0050($sp)
    lw      s6, 0x0054($sp)
    lw      s7, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809D1990:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s5, 0x0050($sp)
    sw      s4, 0x004C($sp)
    sdc1    $f22, 0x0018($sp)
    sll     s4, a2, 16
    lui     s5, %hi(var_809E4200)      # s5 = 809E0000
    mtc1    a1, $f22                   # $f22 = 0.00
    addiu   s5, s5, %lo(var_809E4200)  # s5 = 809E4200
    sra     s4, s4, 16
    sw      $ra, 0x005C($sp)
    sw      s7, 0x0058($sp)
    sw      s6, 0x0054($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x0068($sp)
    lw      v0, 0x1C44(a0)             # 00001C44
    lui     $at, %hi(var_809E420C)     # $at = 809E0000
    lui     s2, %hi(var_809E27CC)      # s2 = 809E0000
    lw      t7, 0x09AC(v0)             # 000009AC
    mtc1    $zero, $f28                # $f28 = 0.00
    addiu   s2, s2, %lo(var_809E27CC)  # s2 = 809E27CC
    sw      t7, 0x0000(s5)             # 809E4200
    lw      t6, 0x09B0(v0)             # 000009B0
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x00FF          # s7 = 000000FF
    sw      t6, 0x0004(s5)             # 809E4204
    lw      t7, 0x09B4(v0)             # 000009B4
    addiu   s6, $zero, 0x000A          # s6 = 0000000A
    sw      t7, 0x0008(s5)             # 809E4208
    lh      t8, 0x00B6(v0)             # 000000B6
    sh      t8, %lo(var_809E420C)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    s3, a0, $at
    lui     $at, %hi(var_809E2A64)     # $at = 809E0000
    lwc1    $f26, %lo(var_809E2A64)($at)
    lui     $at, %hi(var_809E2A68)     # $at = 809E0000
    lwc1    $f24, %lo(var_809E2A68)($at)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    nop
    lw      s0, 0x1E10(s3)             # 00001E10
lbl_809D1A4C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D1A50:
    lbu     t9, 0x0000(s0)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t9, $zero, lbl_809D1AF4
    sra     v0, v0, 16
    sb      s6, 0x0000(s0)             # 00000000
    lw      t1, 0x0000(s5)             # 809E4200
    div.s   $f10, $f22, $f20
    mtc1    s1, $f4                    # $f4 = 0.00
    sw      t1, 0x0004(s0)             # 00000004
    lw      t0, 0x0004(s5)             # 809E4204
    cvt.s.w $f6, $f4
    mov.s   $f12, $f20
    sw      t0, 0x0008(s0)             # 00000008
    lw      t1, 0x0008(s5)             # 809E4208
    sw      t1, 0x000C(s0)             # 0000000C
    lw      t3, 0x0000(s2)             # 809E27CC
    sw      t3, 0x0010(s0)             # 00000010
    lw      t2, 0x0004(s2)             # 809E27D0
    sw      t2, 0x0014(s0)             # 00000014
    lw      t3, 0x0008(s2)             # 809E27D4
    sw      t3, 0x0018(s0)             # 00000018
    lw      t5, 0x0000(s2)             # 809E27CC
    mul.s   $f8, $f6, $f24
    sw      t5, 0x001C(s0)             # 0000001C
    lw      t4, 0x0004(s2)             # 809E27D0
    sw      t4, 0x0020(s0)             # 00000020
    lw      t5, 0x0008(s2)             # 809E27D4
    swc1    $f8, 0x003C(s0)            # 0000003C
    swc1    $f26, 0x0040(s0)           # 00000040
    swc1    $f28, 0x0038(s0)           # 00000038
    swc1    $f10, 0x0034(s0)           # 00000034
    sh      s4, 0x002E(s0)             # 0000002E
    sh      $zero, 0x0030(s0)          # 00000030
    sh      s7, 0x002C(s0)             # 0000002C
    jal     func_80026D64
    sw      t5, 0x0024(s0)             # 00000024
    trunc.w.s $f16, $f0
    mfc1    t9, $f16
    beq     $zero, $zero, lbl_809D1B00
    sb      t9, 0x0001(s0)             # 00000001
lbl_809D1AF4:
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809D1A50
    addiu   s0, s0, 0x0048             # s0 = 00000048
lbl_809D1B00:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0008
    bnel    $at, $zero, lbl_809D1A4C
    lw      s0, 0x1E10(s3)             # 00001E10
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    lw      s4, 0x004C($sp)
    lw      s5, 0x0050($sp)
    lw      s6, 0x0054($sp)
    lw      s7, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809D1B58:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a1, %hi(var_809E2890)      # a1 = 809E0000
    addiu   a1, a1, %lo(var_809E2890)  # a1 = 809E2890
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    slti    $at, t6, 0x0064
    bne     $at, $zero, lbl_809D1CD0
    nop
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lui     t7, %hi(func_809DEC40)     # t7 = 809E0000
    lui     t8, %hi(func_809DEDBC)     # t8 = 809E0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t7, t7, %lo(func_809DEC40) # t7 = 809DEC40
    addiu   t8, t8, %lo(func_809DEDBC) # t8 = 809DEDBC
    and     t6, t9, $at
    sw      t7, 0x0130(s0)             # 00000130
    sw      t8, 0x0134(s0)             # 00000134
    sw      t6, 0x0004(s0)             # 00000004
    addiu   a1, s0, 0x059C             # a1 = 0000059C
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809E27D8)      # a3 = 809E0000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_809E27D8)  # a3 = 809E27D8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lui     t7, %hi(func_809DD504)     # t7 = 809E0000
    beq     v1, $at, lbl_809D1C30
    addiu   t7, t7, %lo(func_809DD504) # t7 = 809DD504
    addiu   $at, $zero, 0x0065         # $at = 00000065
    bne     v1, $at, lbl_809D1C40
lbl_809D1C30:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t7, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_809D1CC4
    sb      t8, 0x05B8(s0)             # 000005B8
lbl_809D1C40:
    addiu   $at, $zero, 0x0066         # $at = 00000066
    beq     v1, $at, lbl_809D1C54
    lui     t9, %hi(func_809DDE3C)     # t9 = 809E0000
    addiu   $at, $zero, 0x0067         # $at = 00000067
    bne     v1, $at, lbl_809D1C60
lbl_809D1C54:
    addiu   t9, t9, %lo(func_809DDE3C) # t9 = 809DDE3C
    beq     $zero, $zero, lbl_809D1CC4
    sw      t9, 0x013C(s0)             # 0000013C
lbl_809D1C60:
    slti    $at, v1, 0x0068
    bne     $at, $zero, lbl_809D1CC4
    lui     t6, %hi(func_809D72EC)     # t6 = 809D0000
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f4                   # $f4 = 128.00
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t7, %hi(func_809DF318)     # t7 = 809E0000
    addiu   t6, t6, %lo(func_809D72EC) # t6 = 809D72EC
    addiu   t7, t7, %lo(func_809DF318) # t7 = 809DF318
    addiu   $at, $zero, 0x0068         # $at = 00000068
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0134(s0)             # 00000134
    bne     t8, $at, lbl_809D1CB0
    swc1    $f4, 0x019C(s0)            # 0000019C
    lui     t9, %hi(var_809E41EC)      # t9 = 809E0000
    lw      t9, %lo(var_809E41EC)(t9)
    lh      t6, 0x0032(t9)             # 809E0032
    addiu   t7, t6, 0x4000             # t7 = 809DB2EC
    beq     $zero, $zero, lbl_809D1CC4
    sh      t7, 0x0032(s0)             # 00000032
lbl_809D1CB0:
    lui     t8, %hi(var_809E41EC)      # t8 = 809E0000
    lw      t8, %lo(var_809E41EC)(t8)
    lh      t9, 0x0032(t8)             # 809E0032
    addiu   t6, t9, 0xC000             # t6 = 809DC000
    sh      t6, 0x0032(s0)             # 00000032
lbl_809D1CC4:
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    beq     $zero, $zero, lbl_809D2360
    sh      t7, 0x016A(s0)             # 0000016A
lbl_809D1CD0:
    jal     func_80020F88
    ori     a1, a1, 0xCCCC             # a1 = 0000CCCC
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00AE(s0)             # 000000AE
    sb      $zero, 0x00AF(s0)          # 000000AF
    addiu   a1, s0, 0x059C             # a1 = 0000059C
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     t9, %hi(var_809E288C)      # t9 = 809E0000
    lbu     t9, %lo(var_809E288C)(t9)
    lui     v0, %hi(var_809E41F1)      # v0 = 809E0000
    lw      a1, 0x0044($sp)
    bne     t9, $zero, lbl_809D1F10
    addiu   v0, v0, %lo(var_809E41F1)  # v0 = 809E41F1
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, %hi(var_809E288C)     # $at = 809E0000
    sb      t6, %lo(var_809E288C)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    sb      t9, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    lui     t1, %hi(var_809E41E0)      # t1 = 809E0000
    addu    $at, $at, s1
    addiu   t1, t1, %lo(var_809E41E0)  # t1 = 809E41E0
    swc1    $f0, 0x0AFC($at)           # 00010AFC
    sb      $zero, 0x0000(t1)          # 809E41E0
    lb      t8, 0x0000(t1)             # 809E41E0
    lui     t2, %hi(var_809E420E)      # t2 = 809E0000
    lui     t3, %hi(var_809E4212)      # t3 = 809E0000
    addiu   t3, t3, %lo(var_809E4212)  # t3 = 809E4212
    addiu   t2, t2, %lo(var_809E420E)  # t2 = 809E420E
    andi    t9, t8, 0x00FF             # t9 = 00000001
    sh      t9, 0x0000(t3)             # 809E4212
    sb      t8, 0x0000(t2)             # 809E420E
    lh      t8, 0x0000(t3)             # 809E4212
    lui     v1, %hi(var_809E41F0)      # v1 = 809E0000
    lui     a0, %hi(var_809E41FE)      # a0 = 809E0000
    lui     a2, %hi(var_809E41FC)      # a2 = 809E0000
    lui     a3, %hi(var_809E41FF)      # a3 = 809E0000
    lui     t0, %hi(var_809E41E1)      # t0 = 809E0000
    lui     t4, %hi(var_809E420F)      # t4 = 809E0000
    lui     t5, %hi(var_809E4210)      # t5 = 809E0000
    lui     $ra, %hi(var_809E421E)     # $ra = 809E0000
    addiu   $ra, $ra, %lo(var_809E421E) # $ra = 809E421E
    addiu   t5, t5, %lo(var_809E4210)  # t5 = 809E4210
    addiu   t4, t4, %lo(var_809E420F)  # t4 = 809E420F
    addiu   t0, t0, %lo(var_809E41E1)  # t0 = 809E41E1
    addiu   a3, a3, %lo(var_809E41FF)  # a3 = 809E41FF
    addiu   a2, a2, %lo(var_809E41FC)  # a2 = 809E41FC
    addiu   a0, a0, %lo(var_809E41FE)  # a0 = 809E41FE
    addiu   v1, v1, %lo(var_809E41F0)  # v1 = 809E41F0
    sb      $zero, 0x0000(v1)          # 809E41F0
    sb      $zero, 0x0000(a0)          # 809E41FE
    sb      $zero, 0x0000(a2)          # 809E41FC
    sb      $zero, 0x0000(a3)          # 809E41FF
    sb      $zero, 0x0000(t0)          # 809E41E1
    sb      $zero, 0x0000(v0)          # 809E41F1
    lui     $at, %hi(var_809E421C)     # $at = 809E0000
    sb      t8, 0x0000(t4)             # 809E420F
    sb      t8, 0x0000(t5)             # 809E4210
    sb      t8, 0x0000($ra)            # 809E421E
    andi    t9, t8, 0x00FF             # t9 = 00000001
    sh      t9, %lo(var_809E421C)($at)
    lui     t6, %hi(var_809E421C)      # t6 = 809E0000
    lh      t6, %lo(var_809E421C)(t6)
    lui     $at, %hi(var_809E421A)     # $at = 809E0000
    sw      a1, 0x0044($sp)
    sh      t6, %lo(var_809E421A)($at)
    lui     $at, %hi(var_809E4218)     # $at = 809E0000
    sb      t6, %lo(var_809E4218)($at)
    lui     $at, %hi(var_809E4216)     # $at = 809E0000
    andi    t9, t6, 0x00FF             # t9 = 00000000
    sh      t9, %lo(var_809E4216)($at)
    lui     $at, %hi(var_809E4214)     # $at = 809E0000
    sh      t9, %lo(var_809E4214)($at)
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    swc1    $f0, %lo(var_809E41F4)($at)
    lwc1    $f6, %lo(var_809E41F4)($at)
    lui     $at, %hi(var_809E41F8)     # $at = 809E0000
    swc1    $f6, %lo(var_809E41F8)($at)
    lui     $at, %hi(var_809E2A6C)     # $at = 809E0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2A6C)($at)
    cfc1    t6, $f31
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    ctc1    t7, $f31
    lui     a0, %hi(var_809E4220)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E4220)  # a0 = 809E4220
    cvt.w.s $f8, $f0
    lw      a1, 0x0044($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    or      v0, $zero, $zero           # v0 = 00000000
    cfc1    t7, $f31
    addiu   v1, $zero, 0x0048          # v1 = 00000048
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_809D1EC8
    mfc1    t7, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f8, $f0, $f8
    ctc1    t7, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_809D1EBC
    nop
    mfc1    t7, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809D1ED4
    or      t7, t7, $at                # t7 = 80000000
lbl_809D1EBC:
    beq     $zero, $zero, lbl_809D1ED4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f8
lbl_809D1EC8:
    nop
    bltz    t7, lbl_809D1EBC
    nop
lbl_809D1ED4:
    lui     $at, %hi(var_809E41FD)     # $at = 809E0000
    sb      t7, %lo(var_809E41FD)($at)
    lui     $at, 0x0001                # $at = 00010000
    ctc1    t6, $f31
    addu    $at, $at, s1
    sw      a0, 0x1E10($at)            # 00011E10
lbl_809D1EEC:
    multu   v0, v1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0096
    mflo    t8
    addu    t9, a0, t8
    bne     $at, $zero, lbl_809D1EEC
    sb      $zero, 0x0000(t9)          # 00000000
lbl_809D1F10:
    lh      v1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    bne     v1, $zero, lbl_809D1FE0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a3, %hi(var_809E2804)      # a3 = 809E0000
    jal     func_8004ACEC
    addiu   a3, a3, %lo(var_809E2804)  # a3 = 809E2804
    addiu   t6, $zero, 0x0033          # t6 = 00000033
    sb      t6, 0x0117(s0)             # 00000117
    addiu   a1, s0, 0x0558             # a1 = 00000558
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x6F28             # a3 = 06006F28
    addiu   a2, a2, 0x70E0             # a2 = 060070E0
    sw      a1, 0x0048($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008C788
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B4E(t7)            # 8011B4B2
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_809D1FB8
    nop
    jal     func_809D254C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC416                # $at = C4160000
    mtc1    $at, $f10                  # $f10 = -600.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    swc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f16, 0x0028(s0)           # 00000028
    jal     func_800CAA70
    swc1    $f18, 0x002C(s0)           # 0000002C
    beq     $zero, $zero, lbl_809D1FC0
    nop
lbl_809D1FB8:
    jal     func_809D5A18
    or      a1, s1, $zero              # a1 = 00000000
lbl_809D1FC0:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    lw      a0, 0x0048($sp)
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_809D22D8
    sb      t9, 0x0554(s0)             # 00000554
lbl_809D1FE0:
    bne     v1, $at, lbl_809D20A0
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809E2804)      # a3 = 809E0000
    addiu   a3, a3, %lo(var_809E2804)  # a3 = 809E2804
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sb      t6, 0x0117(s0)             # 00000117
    addiu   a1, s0, 0x0558             # a1 = 00000558
    lui     a2, 0x0602                 # a2 = 06020000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x6F28             # a3 = 06006F28
    addiu   a2, a2, 0xF888             # a2 = 0601F888
    sw      a1, 0x0048($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008C788
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lhu     t7, -0x4B4E(t7)            # 8011B4B2
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_809D2078
    nop
    jal     func_809D254C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f4                   # $f4 = 600.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_809D2080
    swc1    $f8, 0x002C(s0)            # 0000002C
lbl_809D2078:
    jal     func_809D5A18
    or      a1, s1, $zero              # a1 = 00000000
lbl_809D2080:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    lw      a0, 0x0048($sp)
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_809D22D8
    sb      t9, 0x0554(s0)             # 00000554
lbl_809D20A0:
    lui     a3, %hi(var_809E2830)      # a3 = 809E0000
    addiu   a3, a3, %lo(var_809E2830)  # a3 = 809E2830
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     t8, %hi(func_809D922C)     # t8 = 809E0000
    lui     t9, %hi(func_809DD1CC)     # t9 = 809E0000
    addiu   t6, $zero, 0x005B          # t6 = 0000005B
    addiu   t7, $zero, 0x0018          # t7 = 00000018
    addiu   t8, t8, %lo(func_809D922C) # t8 = 809D922C
    addiu   t9, t9, %lo(func_809DD1CC) # t9 = 809DD1CC
    sb      t6, 0x0117(s0)             # 00000117
    sb      t7, 0x00AF(s0)             # 000000AF
    sw      t8, 0x0130(s0)             # 00000130
    sw      t9, 0x0134(s0)             # 00000134
    addiu   a1, s0, 0x0558             # a1 = 00000558
    lui     a2, 0x0603                 # a2 = 06030000
    lui     a3, 0x0602                 # a3 = 06020000
    addiu   a3, a3, 0x44B4             # a3 = 060244B4
    addiu   a2, a2, 0x0C20             # a2 = 06030C20
    sw      a1, 0x0048($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008C788
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x44B4             # a1 = 060244B4
    lw      a0, 0x0048($sp)
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B4E(t6)            # 8011B4B2
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beq     t7, $zero, lbl_809D2144
    nop
    jal     func_809D4CE0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809D216C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
lbl_809D2144:
    jal     func_809D5A60
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f16                  # $f16 = 1000.00
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f18, 0x002C(s0)           # 0000002C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
lbl_809D216C:
    sh      t8, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_809E41EC)     # $at = 809E0000
    lui     a1, 0x0001                 # a1 = 00010000
    sw      s0, %lo(var_809E41EC)($at)
    addu    a1, a1, s1
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809D222C
    lwc1    $f18, 0x0024(s0)           # 00000024
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f4                   # $f4 = 600.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f6                   # $f6 = 230.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0028($sp)
    sw      a0, 0x0048($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f10                  # $f10 = 230.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      a0, 0x0048($sp)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0xC416                 # a3 = C4160000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_809D22DC
    lbu     t7, 0x07AF(s1)             # 000007AF
    lwc1    $f18, 0x0024(s0)           # 00000024
lbl_809D222C:
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      a0, 0x0048($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    lui     $at, %hi(var_809E41E4)     # $at = 809E0000
    sw      v0, %lo(var_809E41E4)($at)
    lwc1    $f8, 0x0024(s0)            # 00000024
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lw      a0, 0x0048($sp)
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t6, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E41E4)  # a0 = 809E41E4
    lw      t8, 0x0000(a0)             # 809E41E4
    lui     v1, %hi(var_809E41E8)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41E8)  # v1 = 809E41E8
    sw      v0, 0x0000(v1)             # 809E41E8
    sw      v0, 0x0118(t8)             # 00000118
    lw      t6, 0x0000(v1)             # 809E41E8
    lw      t9, 0x0000(a0)             # 809E41E4
    sw      t9, 0x0118(t6)             # 00000118
lbl_809D22D8:
    lbu     t7, 0x07AF(s1)             # 000007AF
lbl_809D22DC:
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f18                   # $f18 = 0.00
    bgez    t7, lbl_809D22F8
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_809D22F8:
    swc1    $f4, 0x01C4(s0)            # 000001C4
    lbu     t8, 0x07B0(s1)             # 000007B0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f8                    # $f8 = 0.00
    bgez    t8, lbl_809D231C
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_809D231C:
    swc1    $f10, 0x01C8(s0)           # 000001C8
    lbu     t9, 0x07B1(s1)             # 000007B1
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f18                   # $f18 = 0.00
    bgez    t9, lbl_809D2340
    cvt.s.w $f6, $f18
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f6, $f6, $f4
lbl_809D2340:
    swc1    $f6, 0x01CC(s0)            # 000001CC
    lh      t6, 0x07B2(s1)             # 000007B2
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    mtc1    t6, $f8                    # $f8 = 0.00
    swc1    $f10, 0x01D4(s0)           # 000001D4
    cvt.s.w $f16, $f8
    swc1    $f16, 0x01D0(s0)           # 000001D0
lbl_809D2360:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809D2374:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x059C             # a1 = 0000059C
    lw      v1, 0x0018($sp)
    lh      v0, 0x001C(v1)             # 0000001C
    addiu   a0, v1, 0x0558             # a0 = 00000558
    slti    $at, v0, 0x0064
    beql    $at, $zero, lbl_809D23C0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_8008D6D0
    lw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lh      v0, 0x001C(t6)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809D23C0:
    bne     v0, $at, lbl_809D23CC
    lui     $at, %hi(var_809E288C)     # $at = 809E0000
    sb      $zero, %lo(var_809E288C)($at)
lbl_809D23CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809D23DC:
    sw      a1, 0x0004($sp)
    lw      v0, 0x0118(a0)             # 00000118
    lui     t6, %hi(func_809D242C)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D242C) # t6 = 809D242C
    beq     v0, $zero, lbl_809D2410
    sw      t6, 0x013C(a0)             # 0000013C
    lw      t8, 0x013C(v0)             # 0000013C
    lui     t7, %hi(func_809D3664)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809D3664) # t7 = 809D3664
    bne     t7, t8, lbl_809D2410
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    beq     $zero, $zero, lbl_809D2418
    sh      t9, 0x0168(a0)             # 00000168
lbl_809D2410:
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    sh      t0, 0x0168(a0)             # 00000168
lbl_809D2418:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x04B8(a0)            # 000004B8
    jr      $ra
    nop


func_809D242C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0118(s0)             # 00000118
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      t6, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80064280
    nop
    lwc1    $f4, 0x04B8(s0)            # 000004B8
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lwc1    $f8, 0x04B8(s0)            # 000004B8
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f10, $f8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f10
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4348                 # a3 = 43480000
    jal     func_80021248
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x0168(s0)             # 00000168
    lw      t1, 0x0024($sp)
    bnel    t9, $zero, lbl_809D253C
    lw      $ra, 0x001C($sp)
    lw      t2, 0x013C(t1)             # 0000013C
    lui     t0, %hi(func_809D3664)     # t0 = 809D0000
    addiu   t0, t0, %lo(func_809D3664) # t0 = 809D3664
    beq     t0, t2, lbl_809D2530
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x014E(s0)             # 0000014E
    beq     t3, $zero, lbl_809D2530
    nop
    sh      $zero, 0x014E(s0)          # 0000014E
    lw      a1, 0x002C($sp)
    jal     func_809D2984
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f16                # $f16 = 0.00
    beq     $zero, $zero, lbl_809D2538
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_809D2530:
    jal     func_809D254C
    lw      a1, 0x002C($sp)
lbl_809D2538:
    lw      $ra, 0x001C($sp)
lbl_809D253C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D254C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0118(s0)             # 00000118
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t0, %hi(func_809D2750)     # t0 = 809D0000
    sw      t6, 0x0024($sp)
    lw      t8, 0x0004(s0)             # 00000004
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t0, t0, %lo(func_809D2750) # t0 = 809D2750
    lui     a1, 0x0600                 # a1 = 06000000
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t7, 0x05E8(s0)             # 000005E8
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lui     a2, 0xC120                 # a2 = C1200000
    jal     func_8008D328
    swc1    $f4, 0x04B8(s0)            # 000004B8
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lw      v0, 0x0024($sp)
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_809D265C
    nop
    beq     v0, $zero, lbl_809D265C
    nop
    lw      t2, 0x013C(v0)             # 0000013C
    lui     t1, %hi(func_809D3664)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809D3664) # t1 = 809D3664
    bne     t1, t2, lbl_809D265C
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D90
    nop
    lw      t3, 0x0024($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    lwc1    $f8, 0x0024(t3)            # 00000024
    add.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x04A0(s0)           # 000004A0
    lui     $at, 0x43AA                # $at = 43AA0000
    mtc1    $at, $f16                  # $f16 = 340.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x04A4(s0)           # 000004A4
    lw      t4, 0x0024($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f4, 0x002C(t4)            # 0000002C
    add.s   $f6, $f0, $f4
    jal     func_80026D64
    swc1    $f6, 0x04A8(s0)            # 000004A8
    trunc.w.s $f8, $f0
    mfc1    t8, $f8
    nop
    addiu   t9, t8, 0x0032             # t9 = 00000032
    beq     $zero, $zero, lbl_809D273C
    sh      t9, 0x0168(s0)             # 00000168
lbl_809D265C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, %hi(var_809E2A70)     # $at = 809E0000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_809D26E4
    nop
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f12                  # $f12 = 800.00
    jal     func_80026D90
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D64
    swc1    $f0, 0x04A0(s0)            # 000004A0
    lui     $at, 0x43AA                # $at = 43AA0000
    mtc1    $at, $f16                  # $f16 = 340.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f12                  # $f12 = 800.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x04A4(s0)           # 000004A4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64
    swc1    $f0, 0x04A8(s0)            # 000004A8
    trunc.w.s $f4, $f0
    mfc1    t3, $f4
    nop
    addiu   t4, t3, 0x0032             # t4 = 00000032
    beq     $zero, $zero, lbl_809D273C
    sh      t4, 0x0168(s0)             # 00000168
lbl_809D26E4:
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2A70)($at)
    trunc.w.s $f6, $f0
    lui     t0, %hi(var_809E289C)      # t0 = 809E0000
    addiu   t0, t0, %lo(var_809E289C)  # t0 = 809E289C
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    mfc1    t6, $f6
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t7, t6, 16
    sra     t8, t7, 16
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t1, t9, t0
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x04A0(s0)             # 000004A0
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x04A4(s0)             # 000004A4
    lw      t3, 0x0008(t1)             # 00000008
    sh      t4, 0x0168(s0)             # 00000168
    sh      t5, 0x014E(s0)             # 0000014E
    sw      t3, 0x04A8(s0)             # 000004A8
lbl_809D273C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D2750:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    addiu   a0, s0, 0x04C0             # a0 = 000004C0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_8008C9C0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lwc1    $f8, 0x04A4(s0)            # 000004A4
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x04A0(s0)            # 000004A0
    lwc1    $f6, 0x0024(s0)            # 00000024
    sub.s   $f18, $f8, $f10
    sub.s   $f12, $f4, $f6
    swc1    $f18, 0x0038($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f4, 0x04A8(s0)            # 000004A8
    swc1    $f12, 0x003C($sp)
    sub.s   $f14, $f4, $f6
    jal     func_800CD76C
    swc1    $f14, 0x0034($sp)
    lui     $at, %hi(var_809E2A74)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2A74)($at)
    lwc1    $f2, 0x003C($sp)
    lwc1    $f16, 0x0034($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f12, 0x0038($sp)
    mul.s   $f8, $f2, $f2
    trunc.w.s $f18, $f10
    mul.s   $f10, $f16, $f16
    mfc1    t7, $f18
    nop
    sll     t8, t7, 16
    add.s   $f0, $f8, $f10
    sra     t9, t8, 16
    mtc1    t9, $f4                    # $f4 = 0.00
    sqrt.s  $f14, $f0
    cvt.s.w $f6, $f4
    swc1    $f14, 0x0028($sp)
    jal     func_800CD76C
    swc1    $f6, 0x002C($sp)
    lui     $at, %hi(var_809E2A78)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2A78)($at)
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f2, $f8
    swc1    $f2, 0x0030($sp)
    lwc1    $f18, 0x04B8(s0)           # 000004B8
    trunc.w.s $f10, $f2
    trunc.w.s $f4, $f18
    mfc1    a1, $f10
    mfc1    a3, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lwc1    $f6, 0x002C($sp)
    lwc1    $f10, 0x04B8(s0)           # 000004B8
    addiu   a0, s0, 0x0032             # a0 = 00000032
    trunc.w.s $f8, $f6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    trunc.w.s $f18, $f10
    mfc1    a1, $f8
    mfc1    a3, $f18
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_80064624
    sw      a1, 0x0024($sp)
    lwc1    $f4, 0x04B8(s0)            # 000004B8
    lw      a1, 0x0024($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lwc1    $f8, 0x0030($sp)
    lwc1    $f18, 0x04B8(s0)           # 000004B8
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    trunc.w.s $f10, $f8
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    trunc.w.s $f4, $f18
    mfc1    a1, $f10
    mfc1    a3, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80021248
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x0168(s0)             # 00000168
    lwc1    $f6, 0x0028($sp)
    lui     $at, 0x428C                # $at = 428C0000
    beq     t1, $zero, lbl_809D2968
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f8                   # $f8 = 70.00
    nop
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809D2974
    lw      $ra, 0x001C($sp)
lbl_809D2968:
    jal     func_809D23DC
    lw      a1, 0x0044($sp)
    lw      $ra, 0x001C($sp)
lbl_809D2974:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_809D2984:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lui     t8, %hi(func_809D3664)     # t8 = 809D0000
    addiu   t8, t8, %lo(func_809D3664) # t8 = 809D3664
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7688             # a1 = 06007688
    sw      t7, 0x001C($sp)
    sw      t8, 0x013C(a3)             # 0000013C
    sw      a3, 0x0020($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x7688             # a0 = 06007688
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0020($sp)
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    cvt.s.w $f6, $f4
    sh      t9, 0x016A(a3)             # 0000016A
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    lui     $at, %hi(var_809E2A7C)     # $at = 809E0000
    lw      t5, 0x047C(a3)             # 0000047C
    swc1    $f6, 0x0194(a3)            # 00000194
    lw      t0, 0x001C($sp)
    lw      t4, 0x0480(a3)             # 00000480
    lw      t2, 0x0024(t0)             # 00000024
    sw      t2, 0x04A0(a3)             # 000004A0
    lw      t1, 0x0028(t0)             # 00000028
    sw      t1, 0x04A4(a3)             # 000004A4
    lw      t2, 0x002C(t0)             # 0000002C
    sh      $zero, 0x0430(a3)          # 00000430
    sh      t3, 0x04EC(a3)             # 000004EC
    swc1    $f0, 0x051C(a3)            # 0000051C
    swc1    $f0, 0x0538(a3)            # 00000538
    sw      t2, 0x04A8(a3)             # 000004A8
    lwc1    $f8, %lo(var_809E2A7C)($at)
    lui     $at, 0x44FA                # $at = 44FA0000
    sw      t5, 0x04FC(a3)             # 000004FC
    mtc1    $at, $f10                  # $f10 = 2000.00
    lw      t5, 0x0484(a3)             # 00000484
    swc1    $f0, 0x04C4(a3)            # 000004C4
    swc1    $f0, 0x04C8(a3)            # 000004C8
    swc1    $f0, 0x04D4(a3)            # 000004D4
    swc1    $f0, 0x04DC(a3)            # 000004DC
    swc1    $f0, 0x04E0(a3)            # 000004E0
    sw      t4, 0x0500(a3)             # 00000500
    swc1    $f8, 0x04E8(a3)            # 000004E8
    sw      t5, 0x0504(a3)             # 00000504
    swc1    $f10, 0x04D0(a3)           # 000004D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809D2A6C:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s6, 0x0074($sp)
    sll     s6, a2, 16
    sw      s7, 0x0078($sp)
    sw      s3, 0x0068($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    sra     s6, s6, 16
    sw      $ra, 0x007C($sp)
    sw      s5, 0x0070($sp)
    sw      s4, 0x006C($sp)
    sw      s2, 0x0064($sp)
    sw      s1, 0x0060($sp)
    sw      s0, 0x005C($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a2, 0x00C0($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f28                  # $f28 = 2.00
    lui     $at, %hi(var_809E2A80)     # $at = 809E0000
    lwc1    $f26, %lo(var_809E2A80)($at)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f22                  # $f22 = 0.25
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s7, 0x04F0             # s2 = 000004F0
    addiu   s5, $sp, 0x008C            # s5 = FFFFFFD4
    addiu   s4, $sp, 0x0098            # s4 = FFFFFFE0
    addiu   s1, $sp, 0x00A4            # s1 = FFFFFFEC
lbl_809D2AF8:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0098($sp)
    jal     func_80026D64
    mov.s   $f12, $f24
    swc1    $f0, 0x009C($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00A0($sp)
    swc1    $f26, 0x0090($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x008C($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x0094($sp)
    lw      t7, 0x0000(s2)             # 000004F0
    mov.s   $f12, $f28
    sw      t7, 0x0000(s1)             # FFFFFFEC
    lw      t6, 0x0004(s2)             # 000004F4
    sw      t6, 0x0004(s1)             # FFFFFFF0
    lw      t7, 0x0008(s2)             # 000004F8
    jal     func_80026D64
    sw      t7, 0x0008(s1)             # FFFFFFF4
    trunc.w.s $f4, $f0
    addiu   t3, $zero, 0x004B          # t3 = 0000004B
    sw      t3, 0x0018($sp)
    or      a0, s3, $zero              # a0 = 00000000
    mfc1    t9, $f4
    or      a1, s1, $zero              # a1 = FFFFFFEC
    or      a2, s4, $zero              # a2 = FFFFFFE0
    sll     t0, t9, 16
    sra     t1, t0, 16
    addiu   t2, t1, 0x0008             # t2 = 00000008
    mtc1    t2, $f6                    # $f6 = 0.00
    or      a3, s5, $zero              # a3 = FFFFFFD4
    sw      s6, 0x0014($sp)
    cvt.s.w $f8, $f6
    jal     func_809D1160
    swc1    $f8, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0096
    bne     $at, $zero, lbl_809D2AF8
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     s6, $at, lbl_809D2CB0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, %hi(var_809E41E1)     # $at = 809E0000
    sb      t4, %lo(var_809E41E1)($at)
    lwc1    $f10, 0x04F0(s7)           # 000004F0
    addiu   t5, $zero, 0x0065          # t5 = 00000065
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x04F4(s7)           # 000004F4
    or      a1, s7, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x04F8(s7)           # 000004F8
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    beq     v0, $zero, lbl_809D2DA8
    lui     t7, %hi(var_809E41EC)      # t7 = 809E0000
    lw      t7, %lo(var_809E41EC)(t7)
    lui     t6, %hi(func_809D4D18)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4D18) # t6 = 809D4D18
    lw      t8, 0x013C(t7)             # 809E013C
    lui     v1, %hi(var_809E41E8)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41E8)  # v1 = 809E41E8
    bne     t6, t8, lbl_809D2C3C
    lui     $at, 0x437F                # $at = 437F0000
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    beq     $zero, $zero, lbl_809D2C44
    sh      t9, 0x0168(v0)             # 00000168
lbl_809D2C3C:
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sh      t0, 0x0168(v0)             # 00000168
lbl_809D2C44:
    mtc1    $at, $f4                   # $f4 = 255.00
    lw      t1, 0x0000(v1)             # 809E41E8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f4, 0x01A0(t1)            # 000001A0
    lw      a0, 0x0000(v1)             # 809E41E8
    lui     $at, %hi(var_809E2A84)     # $at = 809E0000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lwc1    $f0, 0x01A0(a0)            # 000001A0
    swc1    $f0, 0x019C(a0)            # 0000019C
    lw      t2, 0x0000(v1)             # 809E41E8
    swc1    $f0, 0x0198(t2)            # 00000198
    lw      t3, 0x0000(v1)             # 809E41E8
    swc1    $f6, 0x01A4(t3)            # 000001A4
    lw      t4, 0x0000(v1)             # 809E41E8
    lwc1    $f8, %lo(var_809E2A84)($at)
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    swc1    $f8, 0x01A8(t4)            # 000001A8
    lw      t6, 0x0024(v0)             # 00000024
    lw      t5, 0x0000(v1)             # 809E41E8
    sw      t6, 0x04AC(t5)             # 000004AC
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x04B0(t5)             # 000004B0
    lw      t6, 0x002C(v0)             # 0000002C
    sw      t6, 0x04B4(t5)             # 000004B4
    beq     $zero, $zero, lbl_809D2DA8
    sb      t8, %lo(var_809E41E0)($at)
lbl_809D2CB0:
    lui     $at, %hi(var_809E41E1)     # $at = 809E0000
    sb      t9, %lo(var_809E41E1)($at)
    lwc1    $f10, 0x04F0(s7)           # 000004F0
    addiu   t0, $zero, 0x0067          # t0 = 00000067
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x04F4(s7)           # 000004F4
    or      a1, s7, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x04F8(s7)           # 000004F8
    sw      t0, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    beq     v0, $zero, lbl_809D2DA8
    lui     t2, %hi(var_809E41EC)      # t2 = 809E0000
    lw      t2, %lo(var_809E41EC)(t2)
    lui     t1, %hi(func_809D4D18)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809D4D18) # t1 = 809D4D18
    lw      t3, 0x013C(t2)             # 809E013C
    lui     v1, %hi(var_809E41E4)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41E4)  # v1 = 809E41E4
    bne     t1, t3, lbl_809D2D2C
    lui     $at, 0x4248                # $at = 42480000
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    beq     $zero, $zero, lbl_809D2D34
    sh      t4, 0x0168(v0)             # 00000168
lbl_809D2D2C:
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    sh      t5, 0x0168(v0)             # 00000168
lbl_809D2D34:
    mtc1    $at, $f4                   # $f4 = 50.00
    lw      t7, 0x0000(v1)             # 809E41E4
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    swc1    $f4, 0x01A0(t7)            # 000001A0
    lw      t6, 0x0000(v1)             # 809E41E4
    lui     $at, %hi(var_809E2A88)     # $at = 809E0000
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    swc1    $f6, 0x0198(t6)            # 00000198
    lw      t8, 0x0000(v1)             # 809E41E4
    lwc1    $f8, %lo(var_809E2A88)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f8, 0x01A4(t8)            # 000001A4
    lw      t9, 0x0000(v1)             # 809E41E4
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f16                  # $f16 = 70.00
    swc1    $f10, 0x01AC(t9)           # 000001AC
    lw      t0, 0x0000(v1)             # 809E41E4
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    swc1    $f16, 0x01B4(t0)           # 000001B4
    lw      t3, 0x0024(v0)             # 00000024
    lw      t2, 0x0000(v1)             # 809E41E4
    sw      t3, 0x04AC(t2)             # 809E04AC
    lw      t1, 0x0028(v0)             # 00000028
    sw      t1, 0x04B0(t2)             # 809E04B0
    lw      t3, 0x002C(v0)             # 0000002C
    sw      t3, 0x04B4(t2)             # 809E04B4
    sb      t4, %lo(var_809E41E0)($at)
lbl_809D2DA8:
    lw      $ra, 0x007C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    lw      s0, 0x005C($sp)
    lw      s1, 0x0060($sp)
    lw      s2, 0x0064($sp)
    lw      s3, 0x0068($sp)
    lw      s4, 0x006C($sp)
    lw      s5, 0x0070($sp)
    lw      s6, 0x0074($sp)
    lw      s7, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_809D2DE8:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    lwc1    $f6, 0x047C(s0)            # 0000047C
    or      a1, $zero, $zero           # a1 = 00000000
    lw      s1, 0x1C44(t6)             # 00001C44
    lwc1    $f4, 0x0024(s1)            # 00000024
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0044($sp)
    lwc1    $f16, 0x0480(s0)           # 00000480
    lwc1    $f10, 0x0028(s1)           # 00000028
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0048($sp)
    lwc1    $f6, 0x0484(s0)            # 00000484
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x004C($sp)
    lwc1    $f12, 0x0508(s0)           # 00000508
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lwc1    $f12, 0x050C(s0)           # 0000050C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    neg.s   $f12, $f12
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lwc1    $f0, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    abs.s   $f0, $f0
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f10
    lwc1    $f0, 0x003C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    bc1f    lbl_809D2FCC
    nop
    mtc1    $at, $f16                  # $f16 = 50.00
    abs.s   $f0, $f0
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f16
    lwc1    $f4, 0x0040($sp)
    bc1f    lbl_809D2FCC
    nop
    mtc1    $at, $f18                  # $f18 = 100.00
    nop
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_809D2FCC
    nop
    lwc1    $f6, 0x051C(s0)            # 0000051C
    c.le.s  $f4, $f6
    nop
    bc1f    lbl_809D2FCC
    nop
    lui     v0, %hi(var_809E41EC)      # v0 = 809E0000
    lw      v0, %lo(var_809E41EC)(v0)
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    lh      t7, 0x016C(v0)             # 809E016C
    bne     t7, $zero, lbl_809D2FC4
    nop
    sh      t8, 0x016C(v0)             # 809E016C
    lwc1    $f8, 0x0044($sp)
    lwc1    $f16, 0x0048($sp)
    lwc1    $f4, 0x004C($sp)
    mul.s   $f10, $f8, $f8
    lh      a3, 0x00B6(s0)             # 000000B6
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    mul.s   $f18, $f16, $f16
    mtc1    $zero, $f16                # $f16 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    mul.s   $f8, $f4, $f4
    lui     a2, 0x4040                 # a2 = 40400000
    add.s   $f6, $f10, $f18
    add.s   $f0, $f6, $f8
    sqrt.s  $f0, $f0
    swc1    $f0, 0x051C(s0)            # 0000051C
    sw      t9, 0x0014($sp)
    lw      a0, 0x0054($sp)
    jal     func_80022E7C
    swc1    $f16, 0x0010($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    lui     v0, %hi(var_809E41FF)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41FF)  # v0 = 809E41FF
    bnel    t0, $zero, lbl_809D2F70
    lbu     t3, 0x0A50(s1)             # 00000A50
    lbu     t1, 0x0000(v0)             # 809E41FF
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bne     t1, $zero, lbl_809D2FC4
    nop
    sb      t2, 0x0000(v0)             # 809E41FF
    beq     $zero, $zero, lbl_809D2FCC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lbu     t3, 0x0A50(s1)             # 00000A50
lbl_809D2F70:
    or      s0, $zero, $zero           # s0 = 00000000
    bne     t3, $zero, lbl_809D2FC4
    nop
lbl_809D2F7C:
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80063BF0
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addu    t4, s1, s0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0012
    bne     $at, $zero, lbl_809D2F7C
    sb      v0, 0x0A51(t4)             # 00000A51
    lw      t6, 0x0668(s1)             # 00000668
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0A50(s1)             # 00000A50
    lhu     a1, 0x0092(t6)             # 00000092
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, a1, 0x681E             # a1 = 0000681E
    jal     func_80022F84
    andi    a1, a1, 0xFFFF             # a1 = 0000681E
lbl_809D2FC4:
    beq     $zero, $zero, lbl_809D2FCC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809D2FCC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809D2FE0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      v0, 0x1C44(t6)             # 00001C44
    lw      t7, 0x066C(v0)             # 0000066C
    sll     t8, t7,  9
    bgezl   t8, lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x00B6(v0)             # 000000B6
    lh      t0, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    v1, t9, t0
    addu    v1, v1, $at
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x2000
    beq     $at, $zero, lbl_809D3250
    slti    $at, v1, 0xE001
    bnel    $at, $zero, lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    swc1    $f0, 0x003C($sp)
    swc1    $f0, 0x0040($sp)
    swc1    $f4, 0x0044($sp)
    lh      t1, 0x00B6(v0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t1, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_809E2A8C)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2A8C)($at)
    cvt.s.w $f8, $f6
    sw      v0, 0x002C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lw      v0, 0x002C($sp)
    lwc1    $f6, 0x0030($sp)
    lwc1    $f10, 0x047C(s0)           # 0000047C
    lwc1    $f4, 0x0024(v0)            # 00000024
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0034($sp)
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x003C($sp)
    lwc1    $f18, 0x0028(v0)           # 00000028
    lwc1    $f8, 0x0480(s0)            # 00000480
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x0038($sp)
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0040($sp)
    lwc1    $f16, 0x002C(v0)           # 0000002C
    lwc1    $f6, 0x0484(s0)            # 00000484
    add.s   $f4, $f16, $f18
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0044($sp)
    lwc1    $f12, 0x0508(s0)           # 00000508
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lwc1    $f12, 0x050C(s0)           # 0000050C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    neg.s   $f12, $f12
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lwc1    $f0, 0x0030($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    abs.s   $f0, $f0
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f0, $f10
    lwc1    $f0, 0x0034($sp)
    bc1fl   lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f16                  # $f16 = 70.00
    abs.s   $f0, $f0
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f16
    lwc1    $f4, 0x0038($sp)
    bc1fl   lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f18                  # $f18 = 100.00
    nop
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f6, 0x051C(s0)            # 0000051C
    c.le.s  $f4, $f6
    nop
    bc1fl   lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80079B64
    lw      a0, 0x004C($sp)
    beq     v0, $zero, lbl_809D31B8
    lui     v1, %hi(var_809E420E)      # v1 = 809E0000
    lwc1    $f8, 0x003C($sp)
    lwc1    $f16, 0x0040($sp)
    lwc1    $f4, 0x0044($sp)
    mul.s   $f10, $f8, $f8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f18, $f16, $f16
    add.s   $f6, $f10, $f18
    mul.s   $f8, $f4, $f4
    add.s   $f0, $f6, $f8
    sqrt.s  $f0, $f0
    beq     $zero, $zero, lbl_809D3254
    swc1    $f0, 0x051C(s0)            # 0000051C
lbl_809D31B8:
    lbu     v1, %lo(var_809E420E)(v1)
    slti    $at, v1, 0x000B
    bne     $at, $zero, lbl_809D31D0
    or      v0, v1, $zero              # v0 = 809E0000
    beq     $zero, $zero, lbl_809D3254
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D31D0:
    bne     v0, $zero, lbl_809D3214
    lw      a0, 0x004C($sp)
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_809D17C8
    lh      a2, 0x001C(s0)             # 0000001C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      t2, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    addu    $at, $at, t2
    swc1    $f16, 0x0AFC($at)          # 00010AFC
    sh      t3, 0x0168(s0)             # 00000168
    jal     func_800646F0
    addiu   a0, $zero, 0x1838          # a0 = 00001838
    lui     v1, %hi(var_809E420E)      # v1 = 809E0000
    lbu     v1, %lo(var_809E420E)(v1)
lbl_809D3214:
    lwc1    $f10, 0x003C($sp)
    lwc1    $f4, 0x0040($sp)
    lwc1    $f16, 0x0044($sp)
    mul.s   $f18, $f10, $f10
    addiu   t4, v1, 0x0001             # t4 = 809E0001
    lui     $at, %hi(var_809E420E)     # $at = 809E0000
    mul.s   $f6, $f4, $f4
    sb      t4, %lo(var_809E420E)($at)
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    mul.s   $f10, $f16, $f16
    add.s   $f8, $f18, $f6
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    beq     $zero, $zero, lbl_809D3254
    swc1    $f0, 0x051C(s0)            # 0000051C
lbl_809D3250:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D3254:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_809D3268:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lwc1    $f4, 0x0000(a2)            # 00000000
    lwc1    $f6, 0x04FC(s0)            # 000004FC
    or      a1, $zero, $zero           # a1 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x002C($sp)
    lwc1    $f16, 0x0500(s0)           # 00000500
    lwc1    $f10, 0x0004(a2)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0030($sp)
    lwc1    $f6, 0x0504(s0)            # 00000504
    lwc1    $f4, 0x0008(a2)            # 00000008
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0034($sp)
    lwc1    $f12, 0x052C(s0)           # 0000052C
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lwc1    $f12, 0x0530(s0)           # 00000530
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94
    neg.s   $f12, $f12
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    lwc1    $f0, 0x0020($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    abs.s   $f0, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f0, $f2
    lwc1    $f0, 0x0024($sp)
    bc1f    lbl_809D337C
    nop
    abs.s   $f0, $f0
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f2
    lwc1    $f16, 0x0028($sp)
    bc1f    lbl_809D337C
    nop
    mtc1    $at, $f10                  # $f10 = 100.00
    nop
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_809D337C
    nop
    lwc1    $f18, 0x0538(s0)           # 00000538
    lwc1    $f4, 0x002C($sp)
    lwc1    $f8, 0x0030($sp)
    c.le.s  $f16, $f18
    nop
    bc1f    lbl_809D337C
    nop
    mul.s   $f6, $f4, $f4
    lwc1    $f16, 0x0034($sp)
    lui     $at, %hi(var_809E2A90)     # $at = 809E0000
    mul.s   $f10, $f8, $f8
    lwc1    $f8, %lo(var_809E2A90)($at)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f4, $f16, $f16
    add.s   $f18, $f6, $f10
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    mul.s   $f6, $f0, $f8
    beq     $zero, $zero, lbl_809D337C
    swc1    $f6, 0x0538(s0)            # 00000538
lbl_809D337C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809D3390:
    lui     $at, 0x43AF                # $at = 43AF0000
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    mtc1    $at, $f2                   # $f2 = 350.00
    sw      $ra, 0x0014($sp)
    lwc1    $f16, 0x0000(a0)           # 00000000
    abs.s   $f4, $f16
    swc1    $f4, 0x0024($sp)
    lwc1    $f0, 0x0024($sp)
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809D3428
    lui     $at, 0x42DC                # $at = 42DC0000
    lwc1    $f0, 0x0008(a0)            # 00000008
    lui     $at, 0x4370                # $at = 43700000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809D3428
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    lwc1    $f2, 0x0004(a0)            # 00000004
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_809D3428
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f6                   # $f6 = 110.00
    lui     $at, 0x420C                # $at = 420C0000
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_809D341C
    mtc1    $at, $f0                   # $f0 = 35.00
    beq     $zero, $zero, lbl_809D3654
    mov.s   $f0, $f12
    mtc1    $at, $f0                   # $f0 = 35.00
lbl_809D341C:
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
    lui     $at, 0x42DC                # $at = 42DC0000
lbl_809D3428:
    mtc1    $at, $f12                  # $f12 = 110.00
    lwc1    $f0, 0x0024($sp)
    lui     $at, 0x4416                # $at = 44160000
    lwc1    $f14, 0x0008(a0)           # 00000008
    c.lt.s  $f0, $f12
    lwc1    $f2, 0x0004(a0)            # 00000004
    bc1fl   lbl_809D34D8
    abs.s   $f18, $f14
    mtc1    $at, $f8                   # $f8 = 600.00
    lui     $at, 0x4416                # $at = 44160000
    sub.s   $f0, $f14, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_809D3488
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f10                  # $f10 = 230.00
    nop
    add.s   $f0, $f14, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_809D34D4
    lui     $at, 0x4366                # $at = 43660000
lbl_809D3488:
    mtc1    $at, $f4                   # $f4 = 230.00
    lui     $at, 0x433E                # $at = 433E0000
    c.lt.s  $f2, $f4
    nop
    bc1fl   lbl_809D34D8
    abs.s   $f18, $f14
    mtc1    $at, $f6                   # $f6 = 190.00
    lui     $at, 0x420C                # $at = 420C0000
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_809D34CC
    mtc1    $at, $f0                   # $f0 = 35.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f0                   # $f0 = 230.00
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f0                   # $f0 = 230.00
lbl_809D34CC:
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
lbl_809D34D4:
    abs.s   $f18, $f14
lbl_809D34D8:
    lui     $at, 0x4416                # $at = 44160000
    c.lt.s  $f18, $f12
    nop
    bc1fl   lbl_809D357C
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f8                   # $f8 = -20.00
    lui     $at, 0x4416                # $at = 44160000
    sub.s   $f0, $f16, $f8
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_809D352C
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f10                  # $f10 = 230.00
    nop
    add.s   $f0, $f16, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_809D3578
    lui     $at, 0x4366                # $at = 43660000
lbl_809D352C:
    mtc1    $at, $f4                   # $f4 = 230.00
    lui     $at, 0x433E                # $at = 433E0000
    c.lt.s  $f2, $f4
    nop
    bc1fl   lbl_809D357C
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f6                   # $f6 = -20.00
    lui     $at, 0x420C                # $at = 420C0000
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_809D3570
    mtc1    $at, $f0                   # $f0 = 35.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f0                   # $f0 = 230.00
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f0                   # $f0 = 230.00
lbl_809D3570:
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
lbl_809D3578:
    lui     $at, 0xC1A0                # $at = C1A00000
lbl_809D357C:
    mtc1    $at, $f8                   # $f8 = -20.00
    lui     $at, %hi(var_809E2A94)     # $at = 809E0000
    lwc1    $f0, 0x0024($sp)
    c.lt.s  $f2, $f8
    nop
    bc1f    lbl_809D35A4
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
lbl_809D35A4:
    lwc1    $f2, %lo(var_809E2A94)($at)
    lui     $at, 0x420C                # $at = 420C0000
    c.lt.s  $f2, $f0
    nop
    bc1tl   lbl_809D35D0
    mtc1    $at, $f0                   # $f0 = 35.00
    c.lt.s  $f2, $f18
    nop
    bc1f    lbl_809D35D8
    nop
    mtc1    $at, $f0                   # $f0 = 35.00
lbl_809D35D0:
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
lbl_809D35D8:
    jal     func_800AA6EC
    sw      a0, 0x0038($sp)
    lui     $at, %hi(var_809E2A98)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2A98)($at)
    jal     func_800AAB94
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    jal     func_800AA724
    nop
    lwc1    $f0, 0x002C($sp)
    lui     $at, 0x4466                # $at = 44660000
    mtc1    $at, $f2                   # $f2 = 920.00
    abs.s   $f0, $f0
    lui     $at, 0x420C                # $at = 420C0000
    c.lt.s  $f2, $f0
    lwc1    $f0, 0x0034($sp)
    bc1tl   lbl_809D3640
    mtc1    $at, $f0                   # $f0 = 35.00
    abs.s   $f0, $f0
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_809D364C
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f0                   # $f0 = -100.00
lbl_809D3640:
    beq     $zero, $zero, lbl_809D3658
    lw      $ra, 0x0014($sp)
    lui     $at, 0xC2C8                # $at = C2C80000
lbl_809D364C:
    mtc1    $at, $f0                   # $f0 = -100.00
    nop
lbl_809D3654:
    lw      $ra, 0x0014($sp)
lbl_809D3658:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809D3664:
    addiu   $sp, $sp, 0xFEB0           # $sp = FFFFFEB0
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lw      t6, 0x1C44(s6)             # 00001C44
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    sw      t6, 0x0124($sp)
    lw      t7, 0x0118(s5)             # 00000118
    addiu   a0, s5, 0x0028             # a0 = 00000028
    lui     a1, 0x43C8                 # a1 = 43C80000
    sw      t7, 0x0120($sp)
    jal     func_80064280
    lw      a3, 0x0068(s5)             # 00000068
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f20                  # $f20 = 5.00
    addiu   a0, s5, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f20
    jal     func_80064280
    lui     a3, 0x3E80                 # a3 = 3E800000
    addiu   a0, s5, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0074($sp)
    lui     $at, %hi(var_809E2A9C)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2A9C)($at)
    lwc1    $f4, 0x0510(s5)            # 00000510
    lh      t8, 0x016A(s5)             # 0000016A
    add.s   $f8, $f4, $f6
    beq     t8, $zero, lbl_809D3B28
    swc1    $f8, 0x0510(s5)            # 00000510
    lwc1    $f10, 0x04B8(s5)           # 000004B8
    addiu   a0, s5, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s5)             # 0000008A
    trunc.w.s $f18, $f10
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lw      v1, 0x0124($sp)
    addiu   a0, s5, 0x04A0             # a0 = 000004A0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t0, 0x066C(v1)             # 0000066C
    lui     a3, 0x43C8                 # a3 = 43C80000
    sll     t1, t0,  9
    bgez    t1, lbl_809D37D0
    nop
    lh      t2, 0x00B6(v1)             # 000000B6
    lh      t3, 0x00B6(s5)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    v0, t2, t3
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x2000
    beq     $at, $zero, lbl_809D37D0
    slti    $at, v0, 0xE001
    bne     $at, $zero, lbl_809D37D0
    nop
    addiu   a0, s5, 0x04A0             # a0 = 000004A0
    lw      a1, 0x09AC(v1)             # 000009AC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43C8                 # a3 = 43C80000
    lw      t4, 0x0124($sp)
    addiu   a0, s5, 0x04A4             # a0 = 000004A4
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80064280
    lw      a1, 0x09B0(t4)             # 000009B0
    lw      t5, 0x0124($sp)
    addiu   a0, s5, 0x04A8             # a0 = 000004A8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80064280
    lw      a1, 0x09B4(t5)             # 000009B4
    beq     $zero, $zero, lbl_809D3820
    mtc1    $zero, $f22                # $f22 = 0.00
lbl_809D37D0:
    jal     func_80064280
    lw      a1, 0x0024(v1)             # 00000024
    lw      t6, 0x0124($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0028(t6)            # 00000028
    addiu   a0, s5, 0x04A4             # a0 = 000004A4
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f8, $f4, $f6
    lui     a3, 0x43C8                 # a3 = 43C80000
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lw      t7, 0x0124($sp)
    addiu   a0, s5, 0x04A8             # a0 = 000004A8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80064280
    lw      a1, 0x002C(t7)             # 0000002C
    mtc1    $zero, $f22                # $f22 = 0.00
lbl_809D3820:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f26                  # $f26 = 255.00
    addiu   t8, $zero, 0x0046          # t8 = 00000046
    sh      t8, 0x0168(s5)             # 00000168
    lui     $at, %hi(var_809E2AA0)     # $at = 809E0000
    swc1    $f22, 0x04F8(s5)           # 000004F8
    swc1    $f22, 0x04F4(s5)           # 000004F4
    swc1    $f22, 0x04F0(s5)           # 000004F0
    lwc1    $f18, %lo(var_809E2AA0)($at)
    lwc1    $f10, 0x04E0(s5)           # 000004E0
    lwc1    $f6, 0x04DC(s5)            # 000004DC
    addiu   a0, s5, 0x04C8             # a0 = 000004C8
    mul.s   $f4, $f10, $f18
    mfc1    a3, $f20
    mfc1    a1, $f26
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x04DC(s5)            # 000004DC
    jal     func_80064280
    sw      a0, 0x006C($sp)
    addiu   a0, s5, 0x04E0             # a0 = 000004E0
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lh      v0, 0x016A(s5)             # 0000016A
    slti    $at, v0, 0x0032
    beq     $at, $zero, lbl_809D3AA4
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_809D39DC
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_809D38E4
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    swc1    $f10, 0x0AFC($at)          # 00010AFC
    lh      t9, 0x001C(s5)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    subu    t1, t0, t9
    sb      t1, 0x0AE1($at)            # 00010AE1
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3913          # a1 = 00003913
    lh      v0, 0x016A(s5)             # 0000016A
lbl_809D38E4:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_809D3900
    addiu   s4, $sp, 0x00F4            # s4 = FFFFFFA4
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    lh      v0, 0x016A(s5)             # 0000016A
    swc1    $f18, 0x04C0(s5)           # 000004C0
lbl_809D3900:
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_809D39DC
    addiu   s3, $sp, 0x0100            # s3 = FFFFFFB0
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f24                  # $f24 = 25.00
    sh      $zero, 0x011A($sp)
    addiu   s2, $sp, 0x010C            # s2 = FFFFFFBC
    addiu   s1, $zero, 0x000C          # s1 = 0000000C
lbl_809D3920:
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809D3924:
    multu   s0, s1
    mov.s   $f12, $f20
    mflo    t2
    addu    v0, s5, t2
    lwc1    $f6, 0x0440(v0)            # 00000440
    swc1    $f6, 0x010C($sp)
    lwc1    $f4, 0x0444(v0)            # 00000444
    swc1    $f4, 0x0110($sp)
    lwc1    $f8, 0x0448(v0)            # 00000448
    jal     func_80026D90
    swc1    $f8, 0x0114($sp)
    swc1    $f0, 0x0100($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0104($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0108($sp)
    swc1    $f22, 0x00F4($sp)
    swc1    $f22, 0x00F8($sp)
    swc1    $f22, 0x00FC($sp)
    jal     func_80026D64
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f24
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFBC
    or      a2, s3, $zero              # a2 = FFFFFFB0
    swc1    $f10, 0x0010($sp)
    lh      t3, 0x001C(s5)             # 0000001C
    or      a3, s4, $zero              # a3 = FFFFFFA4
    jal     func_809D1500
    sw      t3, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bne     $at, $zero, lbl_809D3924
    nop
    lh      t4, 0x011A($sp)
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sll     t6, t5, 16
    sra     t7, t6, 16
    slti    $at, t7, 0x0002
    bne     $at, $zero, lbl_809D3920
    sh      t5, 0x011A($sp)
    lh      v0, 0x016A(s5)             # 0000016A
lbl_809D39DC:
    slti    $at, v0, 0x0014
    beq     $at, $zero, lbl_809D3A20
    addiu   a0, s5, 0x04C4             # a0 = 000004C4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f26                  # $f26 = 20.00
    addiu   a0, s5, 0x04C4             # a0 = 000004C4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    a3, $f26
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a0, 0x006C($sp)
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    beq     $zero, $zero, lbl_809D3A5C
    nop
lbl_809D3A20:
    mfc1    a1, $f26
    mfc1    a3, $f20
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t8, 0x001C(s5)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x310E          # a1 = 0000310E
    bne     t8, $at, lbl_809D3A54
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    or      a0, s5, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809D3A5C
    nop
lbl_809D3A54:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3112          # a1 = 00003112
lbl_809D3A5C:
    lui     $at, %hi(var_809E2AA4)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2AA4)($at)
    lwc1    $f0, 0x04D4(s5)            # 000004D4
    lwc1    $f18, 0x04D8(s5)           # 000004D8
    mfc1    a1, $f22
    mul.s   $f4, $f0, $f6
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s5, 0x04D0             # a0 = 000004D0
    add.s   $f8, $f18, $f4
    jal     func_80064280
    swc1    $f8, 0x04D8(s5)            # 000004D8
    addiu   a0, s5, 0x04D4             # a0 = 000004D4
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
lbl_809D3AA4:
    lw      a0, 0x0074($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s5)             # 00000194
    beq     v0, $zero, lbl_809D3AD4
    lw      a0, 0x0074($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f22
    jal     func_8008D328
    addiu   a1, a1, 0x9398             # a1 = 06009398
    lui     $at, %hi(var_809E2AA8)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2AA8)($at)
    swc1    $f10, 0x0194(s5)           # 00000194
lbl_809D3AD4:
    lh      t0, 0x016A(s5)             # 0000016A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s0, 0x0600                 # s0 = 06000000
    bne     t0, $at, lbl_809D3B20
    addiu   s0, s0, 0x3614             # s0 = 06003614
    mfc1    a2, $f22
    lw      a0, 0x0074($sp)
    jal     func_8008D21C
    or      a1, s0, $zero              # a1 = 06003614
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06003614
    mtc1    v0, $f6                    # $f6 = 0.00
    swc1    $f22, 0x04CC(s5)           # 000004CC
    swc1    $f22, 0x04C8(s5)           # 000004C8
    cvt.s.w $f18, $f6
    swc1    $f22, 0x04C4(s5)           # 000004C4
    lui     $at, %hi(var_809E420E)     # $at = 809E0000
    swc1    $f18, 0x0194(s5)           # 00000194
    sb      $zero, %lo(var_809E420E)($at)
lbl_809D3B20:
    beq     $zero, $zero, lbl_809D40DC
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
lbl_809D3B28:
    lw      a0, 0x0074($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s5)             # 00000194
    beql    v0, $zero, lbl_809D3B64
    lwc1    $f8, 0x0194(s5)            # 00000194
    mtc1    $zero, $f22                # $f22 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3E34             # a1 = 06003E34
    mfc1    a2, $f22
    jal     func_8008D328
    lw      a0, 0x0074($sp)
    lui     $at, %hi(var_809E2AAC)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2AAC)($at)
    swc1    $f4, 0x0194(s5)            # 00000194
    lwc1    $f8, 0x0194(s5)            # 00000194
lbl_809D3B64:
    mtc1    $zero, $f22                # $f22 = 0.00
    lw      a0, 0x0074($sp)
    sub.s   $f10, $f8, $f20
    mfc1    a1, $f10
    jal     func_8008D6A8
    nop
    beql    v0, $zero, lbl_809D3B9C
    lui     $at, 0x4150                # $at = 41500000
    lh      t9, 0x001C(s5)             # 0000001C
    sh      $zero, 0x04EC(s5)          # 000004EC
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sb      t1, %lo(var_809E41E0)($at)
    lui     $at, 0x4150                # $at = 41500000
lbl_809D3B9C:
    mtc1    $at, $f18                  # $f18 = 13.00
    lwc1    $f6, 0x0194(s5)            # 00000194
    lw      a0, 0x0074($sp)
    sub.s   $f4, $f6, $f18
    mfc1    a1, $f4
    jal     func_8008D6A8
    nop
    beq     v0, $zero, lbl_809D3BD4
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3923          # a1 = 00003923
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B3          # a1 = 000039B3
lbl_809D3BD4:
    lwc1    $f8, 0x04A0(s5)            # 000004A0
    lwc1    $f10, 0x047C(s5)           # 0000047C
    lwc1    $f4, 0x04A8(s5)            # 000004A8
    lwc1    $f6, 0x04A4(s5)            # 000004A4
    sub.s   $f20, $f8, $f10
    lwc1    $f8, 0x0484(s5)            # 00000484
    lwc1    $f18, 0x0480(s5)           # 00000480
    sub.s   $f24, $f4, $f8
    mov.s   $f12, $f20
    sub.s   $f26, $f6, $f18
    jal     func_800CD76C
    mov.s   $f14, $f24
    mul.s   $f2, $f20, $f20
    swc1    $f0, 0x050C(s5)            # 0000050C
    mov.s   $f12, $f26
    mul.s   $f16, $f24, $f24
    swc1    $f2, 0x0074($sp)
    add.s   $f0, $f2, $f16
    swc1    $f16, 0x0070($sp)
    jal     func_800CD76C
    sqrt.s  $f14, $f0
    lh      v0, 0x04EC(s5)             # 000004EC
    neg.s   $f10, $f0
    lwc1    $f20, 0x0074($sp)
    lwc1    $f24, 0x0070($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_809D3C5C
    swc1    $f10, 0x0508(s5)           # 00000508
    beq     v0, $zero, lbl_809D3C64
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_809D3ED8
    lhu     t5, 0x0014(s6)             # 00000014
    beq     $zero, $zero, lbl_809D4068
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
lbl_809D3C5C:
    beq     $zero, $zero, lbl_809D4068
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
lbl_809D3C64:
    lh      t2, 0x0168(s5)             # 00000168
    or      a0, s5, $zero              # a0 = 00000000
    beql    t2, $zero, lbl_809D3E48
    lui     $at, 0x0001                # $at = 00010000
    jal     func_809D2FE0
    or      a1, s6, $zero              # a1 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809D3DFC
    addiu   s3, $sp, 0x00CC            # s3 = FFFFFF7C
    lui     t3, %hi(var_809E28CC)      # t3 = 809E0000
    addiu   t3, t3, %lo(var_809E28CC)  # t3 = 809E28CC
    lw      t5, 0x0000(t3)             # 809E28CC
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f20                  # $f20 = 15.00
    sw      t5, 0x0000(s3)             # FFFFFF7C
    lw      t4, 0x0004(t3)             # 809E28D0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $sp, 0x00D8            # s4 = FFFFFF88
    sw      t4, 0x0004(s3)             # FFFFFF80
    lw      t5, 0x0008(t3)             # 809E28D4
    addiu   s1, $sp, 0x00E4            # s1 = FFFFFF94
    sw      t5, 0x0008(s3)             # FFFFFF84
    lw      s2, 0x0124($sp)
    addiu   s2, s2, 0x09AC             # s2 = 00000968
lbl_809D3CC4:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00D8($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00DC($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00E0($sp)
    lw      t7, 0x0000(s2)             # 00000968
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    sw      t7, 0x0000(s1)             # FFFFFF94
    lw      t6, 0x0004(s2)             # 0000096C
    sw      t6, 0x0004(s1)             # FFFFFF98
    lw      t7, 0x0008(s2)             # 00000970
    jal     func_80026D64
    sw      t7, 0x0008(s1)             # FFFFFF9C
    trunc.w.s $f6, $f0
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFF94
    mfc1    t0, $f6
    or      a2, s4, $zero              # a2 = FFFFFF88
    or      a3, s3, $zero              # a3 = FFFFFF7C
    sll     t9, t0, 16
    sra     t1, t9, 16
    addiu   t2, t1, 0x0005             # t2 = 00000005
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0010($sp)
    lh      t3, 0x001C(s5)             # 0000001C
    sw      t4, 0x0018($sp)
    jal     func_809D1160
    sw      t3, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0096
    bne     $at, $zero, lbl_809D3CC4
    nop
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x04EC(s5)             # 000004EC
    lw      a0, 0x0124($sp)
    addiu   a1, $zero, 0x180C          # a1 = 0000180C
    jal     func_80064780
    addiu   a0, a0, 0x00E4             # a0 = 000000E4
    lw      a0, 0x0124($sp)
    addiu   a1, $sp, 0x0128            # a1 = FFFFFFD8
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800ABF50
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    lh      t6, 0x012A($sp)
    lh      t8, 0x0128($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t7, t6, $at
    subu    t1, $zero, t8
    sh      t7, 0x012A($sp)
    sh      t1, 0x0128($sp)
    sh      t1, 0x0514(s5)             # 00000514
    lh      t2, 0x012A($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f22, 0x04F0(s5)           # 000004F0
    swc1    $f22, 0x04F4(s5)           # 000004F4
    swc1    $f22, 0x04F8(s5)           # 000004F8
    addu    $at, $at, s6
    sh      t2, 0x0516(s5)             # 00000516
    mov.s   $f12, $f22
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_800915CC
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    beq     $zero, $zero, lbl_809D3E48
    lui     $at, 0x0001                # $at = 00010000
lbl_809D3DFC:
    bne     v0, $zero, lbl_809D3E44
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_809D2DE8
    or      a1, s6, $zero              # a1 = 00000000
    lh      t3, 0x0430(s5)             # 00000430
    bnel    t3, $zero, lbl_809D3E48
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f10, $f26, $f26
    addiu   a0, s5, 0x051C             # a0 = 0000051C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4220                 # a3 = 42200000
    add.s   $f6, $f20, $f10
    add.s   $f0, $f6, $f24
    sqrt.s  $f0, $f0
    add.s   $f18, $f0, $f0
    mfc1    a1, $f18
    jal     func_80064280
    nop
lbl_809D3E44:
    lui     $at, 0x0001                # $at = 00010000
lbl_809D3E48:
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
    addiu   s1, s5, 0x053C             # s1 = 0000053C
    or      a2, s1, $zero              # a2 = 0000053C
    or      a1, s3, $zero              # a1 = 000004FC
    addu    a0, s6, $at
    jal     func_8008EC20
    addiu   a3, s5, 0x00F0             # a3 = 000000F0
    lh      t4, 0x001C(s5)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s0, 0x8010                 # s0 = 80100000
    bne     t4, $at, lbl_809D3EAC
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    lui     s0, 0x8010                 # s0 = 80100000
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   s2, s2, 0x43A8             # s2 = 801043A8
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sw      a3, 0x0010($sp)
    sw      s2, 0x0014($sp)
    addiu   a0, $zero, 0x3122          # a0 = 00003122
    or      a1, s1, $zero              # a1 = 0000053C
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_809D406C
    lh      v0, 0x0168(s5)             # 00000168
lbl_809D3EAC:
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   s2, s2, 0x43A8             # s2 = 801043A8
    sw      s2, 0x0014($sp)
    addiu   a0, $zero, 0x3111          # a0 = 00003111
    or      a1, s1, $zero              # a1 = 0000053C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    beq     $zero, $zero, lbl_809D406C
    lh      v0, 0x0168(s5)             # 00000168
    lhu     t5, 0x0014(s6)             # 00000014
lbl_809D3ED8:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    andi    t6, t5, 0x0010             # t6 = 00000000
    bnel    t6, $at, lbl_809D3F9C
    sh      $zero, 0x04EC(s5)          # 000004EC
    mul.s   $f4, $f26, $f26
    lw      s0, 0x1C44(s6)             # 00001C44
    addiu   a0, s5, 0x0538             # a0 = 00000538
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4220                 # a3 = 42200000
    add.s   $f8, $f20, $f4
    add.s   $f0, $f8, $f24
    sqrt.s  $f0, $f0
    jal     func_80064280
    swc1    $f0, 0x051C(s5)            # 0000051C
    addiu   a0, s5, 0x04A0             # a0 = 000004A0
    lw      a1, 0x09AC(s0)             # 801009AC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43C8                 # a3 = 43C80000
    addiu   a0, s5, 0x04A4             # a0 = 000004A4
    lw      a1, 0x09B0(s0)             # 801009B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43C8                 # a3 = 43C80000
    addiu   a0, s5, 0x04A8             # a0 = 000004A8
    lw      a1, 0x09B4(s0)             # 801009B4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43C8                 # a3 = 43C80000
    lh      t7, 0x0140(s5)             # 00000140
    or      a0, s6, $zero              # a0 = 00000000
    addiu   a1, s0, 0x09AC             # a1 = 801009AC
    andi    t8, t7, 0x0003             # t8 = 00000000
    bne     t8, $zero, lbl_809D3FA0
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sw      t0, 0x0010($sp)
    lh      t9, 0x001C(s5)             # 0000001C
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_809D1350
    sw      t9, 0x0014($sp)
    beq     $zero, $zero, lbl_809D3FA4
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x04EC(s5)          # 000004EC
lbl_809D3F9C:
    swc1    $f22, 0x0538(s5)           # 00000538
lbl_809D3FA0:
    lui     $at, 0x0001                # $at = 00010000
lbl_809D3FA4:
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   s1, s5, 0x0548             # s1 = 00000548
    or      a2, s1, $zero              # a2 = 00000548
    addu    a0, s6, $at
    addiu   a1, s5, 0x0520             # a1 = 00000520
    jal     func_8008EC20
    addiu   a3, s5, 0x00F0             # a3 = 000000F0
    lh      t3, 0x001C(s5)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s0, 0x8010                 # s0 = 80100000
    bne     t3, $at, lbl_809D4024
    addiu   s0, s0, 0x43A0             # s0 = 801043A0
    lui     s0, 0x8010                 # s0 = 80100000
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   s2, s2, 0x43A8             # s2 = 801043A8
    addiu   s0, s0, 0x43A0             # s0 = 801043A0
    or      a3, s0, $zero              # a3 = 801043A0
    sw      s0, 0x0010($sp)
    sw      s2, 0x0014($sp)
    addiu   a0, $zero, 0x3122          # a0 = 00003122
    or      a1, s1, $zero              # a1 = 00000548
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a0, $zero, 0x3117          # a0 = 00003117
    or      a1, s1, $zero              # a1 = 00000548
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    sw      s0, 0x0010($sp)
    jal     func_800C806C
    sw      s2, 0x0014($sp)
    beq     $zero, $zero, lbl_809D4068
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
lbl_809D4024:
    lui     s2, 0x8010                 # s2 = 80100000
    addiu   s2, s2, 0x43A8             # s2 = 801043A8
    sw      s2, 0x0014($sp)
    addiu   a0, $zero, 0x3111          # a0 = 00003111
    or      a1, s1, $zero              # a1 = 00000548
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s0, 0x0010($sp)
    addiu   a0, $zero, 0x3118          # a0 = 00003118
    or      a1, s1, $zero              # a1 = 00000548
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    sw      s0, 0x0010($sp)
    jal     func_800C806C
    sw      s2, 0x0014($sp)
    addiu   s3, s5, 0x04FC             # s3 = 000004FC
lbl_809D4068:
    lh      v0, 0x0168(s5)             # 00000168
lbl_809D406C:
    lui     a0, %hi(var_809E41E0)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E41E0)  # a0 = 809E41E0
    bne     v0, $zero, lbl_809D409C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lb      v1, 0x0000(a0)             # 809E41E0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_809D4094
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_809D409C
    nop
lbl_809D4094:
    sb      $zero, 0x0000(a0)          # 809E41E0
    lh      v0, 0x0168(s5)             # 00000168
lbl_809D409C:
    bne     v0, $zero, lbl_809D40DC
    addiu   a0, s5, 0x04E8             # a0 = 000004E8
    mfc1    a1, $f22
    lui     a3, 0x3A03                 # a3 = 3A030000
    jal     func_80064280
    ori     a3, a3, 0x126F             # a3 = 3A03126F
    lwc1    $f10, 0x04E8(s5)           # 000004E8
    or      a0, s5, $zero              # a0 = 00000000
    c.eq.s  $f22, $f10
    nop
    bc1fl   lbl_809D40E0
    lui     $at, 0x4120                # $at = 41200000
    jal     func_809D461C
    or      a1, s6, $zero              # a1 = 00000000
    swc1    $f22, 0x0538(s5)           # 00000538
    swc1    $f22, 0x051C(s5)           # 0000051C
lbl_809D40DC:
    lui     $at, 0x4120                # $at = 41200000
lbl_809D40E0:
    mtc1    $at, $f20                  # $f20 = 10.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f24                  # $f24 = 25.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f26                  # $f26 = 20.00
    lwc1    $f12, 0x047C(s5)           # 0000047C
    lwc1    $f14, 0x0480(s5)           # 00000480
    lw      a2, 0x0484(s5)             # 00000484
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x050C(s5)           # 0000050C
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0508(s5)           # 00000508
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    swc1    $f22, 0x0130($sp)
    swc1    $f22, 0x0134($sp)
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f18                  # $f18 = -5.00
    lwc1    $f6, 0x051C(s5)            # 0000051C
    addiu   s2, $sp, 0x0130            # s2 = FFFFFFE0
    or      a0, s2, $zero              # a0 = FFFFFFE0
    add.s   $f4, $f6, $f18
    or      a1, s3, $zero              # a1 = 000004FC
    jal     func_800AB958
    swc1    $f4, 0x0138($sp)
    lh      t4, 0x0430(s5)             # 00000430
    bnel    t4, $zero, lbl_809D41B8
    lh      t0, 0x04EC(s5)             # 000004EC
    lh      t5, 0x04EC(s5)             # 000004EC
    bnel    t5, $zero, lbl_809D41B8
    lh      t0, 0x04EC(s5)             # 000004EC
    lh      t6, 0x0168(s5)             # 00000168
    beql    t6, $zero, lbl_809D41B8
    lh      t0, 0x04EC(s5)             # 000004EC
    jal     func_809D3390
    or      a0, s3, $zero              # a0 = 000004FC
    c.le.s  $f22, $f0
    swc1    $f0, 0x04F4(s5)            # 000004F4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    or      a0, s5, $zero              # a0 = 00000000
    bc1f    lbl_809D41B4
    or      a1, s6, $zero              # a1 = 00000000
    lwc1    $f8, 0x04FC(s5)            # 000004FC
    lwc1    $f10, 0x0504(s5)           # 00000504
    sh      t7, 0x0430(s5)             # 00000430
    lh      a2, 0x001C(s5)             # 0000001C
    swc1    $f8, 0x04F0(s5)            # 000004F0
    jal     func_809D2A6C
    swc1    $f10, 0x04F8(s5)           # 000004F8
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      t8, 0x0168(s5)             # 00000168
lbl_809D41B4:
    lh      t0, 0x04EC(s5)             # 000004EC
lbl_809D41B8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t0, $at, lbl_809D45E8
    lw      $ra, 0x0064($sp)
    lh      t9, 0x0430(s5)             # 00000430
    lw      a0, 0x0124($sp)
    addiu   s3, s5, 0x0520             # s3 = 00000520
    bne     t9, $zero, lbl_809D426C
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    addiu   a1, $sp, 0x0128            # a1 = FFFFFFD8
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    lh      a1, 0x0128($sp)
    lh      t1, 0x012A($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    a1, $zero, a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addu    t2, t1, $at
    sh      t2, 0x012A($sp)
    sh      a1, 0x0128($sp)
    addiu   a0, s5, 0x0514             # a0 = 00000514
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    addiu   a0, s5, 0x0516             # a0 = 00000516
    lh      a1, 0x012A($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lh      t3, 0x0514(s5)             # 00000514
    lh      t4, 0x0516(s5)             # 00000516
    lui     $at, 0x4700                # $at = 47000000
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t4, $f10                   # $f10 = 0.00
    mtc1    $at, $f0                   # $f0 = 32768.00
    cvt.s.w $f18, $f6
    lui     $at, %hi(var_809E2AB0)     # $at = 809E0000
    lwc1    $f2, %lo(var_809E2AB0)($at)
    cvt.s.w $f6, $f10
    div.s   $f4, $f18, $f0
    div.s   $f18, $f6, $f0
    mul.s   $f8, $f4, $f2
    swc1    $f8, 0x052C(s5)            # 0000052C
    mul.s   $f4, $f18, $f2
    swc1    $f4, 0x0530(s5)            # 00000530
lbl_809D426C:
    lwc1    $f12, 0x04FC(s5)           # 000004FC
    lwc1    $f14, 0x0500(s5)           # 00000500
    lw      a2, 0x0504(s5)             # 00000504
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0530(s5)           # 00000530
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x052C(s5)           # 0000052C
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    swc1    $f22, 0x0130($sp)
    swc1    $f22, 0x0134($sp)
    lui     $at, 0xC32A                # $at = C32A0000
    mtc1    $at, $f10                  # $f10 = -170.00
    lwc1    $f8, 0x0538(s5)            # 00000538
    or      a0, s2, $zero              # a0 = FFFFFFE0
    or      a1, s3, $zero              # a1 = 00000520
    add.s   $f6, $f8, $f10
    jal     func_800AB958
    swc1    $f6, 0x0138($sp)
    lh      t5, 0x0430(s5)             # 00000430
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $sp, 0x00BC            # s1 = FFFFFF6C
    bnel    t5, $zero, lbl_809D4454
    or      a0, s5, $zero              # a0 = 00000000
    swc1    $f22, 0x0138($sp)
    or      a0, s2, $zero              # a0 = FFFFFFE0
lbl_809D42DC:
    jal     func_800AB958
    or      a1, s1, $zero              # a1 = FFFFFF6C
    jal     func_809D3390
    or      a0, s1, $zero              # a0 = FFFFFF6C
    c.le.s  $f22, $f0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    swc1    $f0, 0x04F4(s5)            # 000004F4
    sll     s0, s0, 16
    bc1f    lbl_809D4424
    lwc1    $f8, 0x0138($sp)
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f18                  # $f18 = 35.00
    lwc1    $f4, 0x04F4(s5)            # 000004F4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $sp, 0x00A4            # s2 = FFFFFF54
    c.eq.s  $f18, $f4
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFF60
    bc1t    lbl_809D437C
    nop
    lwc1    $f8, 0x052C(s5)            # 0000052C
    c.lt.s  $f22, $f8
    nop
    bc1f    lbl_809D437C
    nop
    lh      t6, 0x0168(s5)             # 00000168
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     t6, $zero, lbl_809D437C
    nop
    sh      t7, 0x0430(s5)             # 00000430
    lwc1    $f10, 0x00BC($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    swc1    $f10, 0x04F0(s5)           # 000004F0
    lwc1    $f6, 0x00C4($sp)
    lh      a2, 0x001C(s5)             # 0000001C
    jal     func_809D2A6C
    swc1    $f6, 0x04F8(s5)            # 000004F8
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    beq     $zero, $zero, lbl_809D4450
    sh      t8, 0x0168(s5)             # 00000168
lbl_809D437C:
    jal     func_80026D90
    mov.s   $f12, $f26
    swc1    $f0, 0x00B0($sp)
    jal     func_80026D90
    mov.s   $f12, $f26
    swc1    $f0, 0x00B4($sp)
    jal     func_80026D90
    mov.s   $f12, $f26
    swc1    $f0, 0x00B8($sp)
    swc1    $f22, 0x00A4($sp)
    swc1    $f22, 0x00A8($sp)
    swc1    $f22, 0x00AC($sp)
    jal     func_80026D64
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f24
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000520
    or      a2, s1, $zero              # a2 = FFFFFF60
    swc1    $f18, 0x0010($sp)
    lh      t0, 0x001C(s5)             # 0000001C
    or      a3, s2, $zero              # a3 = FFFFFF54
    jal     func_809D1500
    sw      t0, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bne     $at, $zero, lbl_809D437C
    nop
    lwc1    $f4, 0x0138($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    addu    a0, s6, $at
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    swc1    $f4, 0x0538(s5)            # 00000538
    beq     $zero, $zero, lbl_809D4454
    or      a0, s5, $zero              # a0 = 00000000
lbl_809D4424:
    add.s   $f10, $f8, $f26
    sra     s0, s0, 16
    slti    $at, s0, 0x00C8
    swc1    $f10, 0x0138($sp)
    lwc1    $f6, 0x0538(s5)            # 00000538
    c.lt.s  $f6, $f10
    nop
    bc1tl   lbl_809D4454
    or      a0, s5, $zero              # a0 = 00000000
    bnel    $at, $zero, lbl_809D42DC
    or      a0, s2, $zero              # a0 = FFFFFF54
lbl_809D4450:
    or      a0, s5, $zero              # a0 = 00000000
lbl_809D4454:
    jal     func_809D3268
    addiu   a1, s5, 0x0024             # a1 = 00000024
    beql    v0, $zero, lbl_809D44A8
    lw      a1, 0x0120($sp)
    lh      t9, 0x0140(s5)             # 00000140
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000520
    andi    t1, t9, 0x0003             # t1 = 00000000
    bne     t1, $zero, lbl_809D44A4
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sw      t2, 0x0010($sp)
    lh      t3, 0x001C(s5)             # 0000001C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_809D1350
    sw      t3, 0x0014($sp)
lbl_809D44A4:
    lw      a1, 0x0120($sp)
lbl_809D44A8:
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_809D3268
    addiu   a1, a1, 0x0024             # a1 = 00000024
    beq     v0, $zero, lbl_809D45E4
    lw      t7, 0x0120($sp)
    lw      t8, 0x013C(t7)             # 0000013C
    lui     t6, %hi(func_809D4778)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4778) # t6 = 809D4778
    beq     t6, t8, lbl_809D45E4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $sp, 0x0080            # s3 = FFFFFF30
    addiu   s2, $sp, 0x008C            # s2 = FFFFFF3C
    addiu   s1, $sp, 0x0098            # s1 = FFFFFF48
    lui     $at, 0x4248                # $at = 42480000
lbl_809D44E0:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90
    nop
    lw      t0, 0x0120($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f18, 0x0024(t0)           # 00000024
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0098($sp)
    lw      t9, 0x0120($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f8, 0x0028(t9)            # 00000028
    add.s   $f6, $f0, $f8
    jal     func_80026D90
    swc1    $f6, 0x009C($sp)
    lw      t1, 0x0120($sp)
    mov.s   $f12, $f26
    lwc1    $f10, 0x002C(t1)           # 0000002C
    add.s   $f18, $f0, $f10
    jal     func_80026D90
    swc1    $f18, 0x00A0($sp)
    swc1    $f0, 0x008C($sp)
    jal     func_80026D90
    mov.s   $f12, $f26
    swc1    $f0, 0x0090($sp)
    jal     func_80026D90
    mov.s   $f12, $f26
    swc1    $f0, 0x0094($sp)
    swc1    $f22, 0x0080($sp)
    swc1    $f22, 0x0084($sp)
    swc1    $f22, 0x0088($sp)
    jal     func_80026D64
    mov.s   $f12, $f20
    add.s   $f4, $f0, $f24
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFF48
    or      a2, s2, $zero              # a2 = FFFFFF3C
    swc1    $f4, 0x0010($sp)
    lh      t2, 0x001C(s5)             # 0000001C
    or      a3, s3, $zero              # a3 = FFFFFF30
    jal     func_809D1500
    sw      t2, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809D44E0
    lui     $at, 0x4248                # $at = 42480000
    lw      a0, 0x0120($sp)
    jal     func_809D4710
    or      a1, s6, $zero              # a1 = 00000000
    lw      a0, 0x0120($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3916          # a1 = 00003916
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s6
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lw      t3, 0x0120($sp)
    lbu     t4, 0x00AF(t3)             # 000000AF
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x00AF(t3)             # 000000AF
lbl_809D45E4:
    lw      $ra, 0x0064($sp)
lbl_809D45E8:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0150           # $sp = 00000000


func_809D461C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809D4678)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4678) # t6 = 809D4678
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4548             # a1 = 06004548
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4548             # a0 = 06004548
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t7, 0x0018($sp)
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0194(t7)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809D4678:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    addiu   a0, s0, 0x04C0             # a0 = 000004C0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809D46FC
    lui     t6, %hi(var_809E41EC)      # t6 = 809E0000
    lw      t6, %lo(var_809E41EC)(t6)
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x016C(t6)             # 809E016C
    bne     t7, $zero, lbl_809D46E8
    nop
    jal     func_809D254C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809D46F4
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_809D46E8:
    jal     func_809D4A40
    lw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_809D46F4:
    nop
    swc1    $f4, 0x04C0(s0)            # 000004C0
lbl_809D46FC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D4710:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809D4778)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4778) # t6 = 809D4778
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x578C             # a1 = 0600578C
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, $zero, 0x0035          # t7 = 00000035
    lh      t8, 0x001C(a3)             # 0000001C
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sh      t7, 0x0168(a3)             # 00000168
    bne     t8, $zero, lbl_809D4768
    swc1    $f4, 0x0068(a3)            # 00000068
    sh      t9, 0x014C(a3)             # 0000014C
lbl_809D4768:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809D4778:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x006C($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x003C($sp)
    lh      t6, 0x0140(s0)             # 00000140
    lui     $at, 0x42A0                # $at = 42A00000
    andi    t7, t6, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_809D4870
    lh      t0, 0x001C(s0)             # 0000001C
    mtc1    $at, $f12                  # $f12 = 80.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f12                  # $f12 = 80.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f12                  # $f12 = 80.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_809E2AB4)     # $at = 809E0000
    add.s   $f18, $f0, $f16
    lwc1    $f4, %lo(var_809E2AB4)($at)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f18, 0x0064($sp)
    swc1    $f2, 0x0050($sp)
    swc1    $f2, 0x0054($sp)
    swc1    $f2, 0x0058($sp)
    swc1    $f2, 0x0044($sp)
    swc1    $f2, 0x004C($sp)
    jal     func_80026D64
    swc1    $f4, 0x0048($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lh      a1, 0x001C(s0)             # 0000001C
    addiu   t8, $sp, 0x0044            # t8 = FFFFFFDC
    add.s   $f8, $f0, $f6
    addiu   a1, a1, 0x0002             # a1 = 00000002
    sll     a1, a1, 16
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    sw      t9, 0x0020($sp)
    sra     a1, a1, 16
    swc1    $f8, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x006C($sp)
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFF4
    jal     func_809D1254
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    lh      t0, 0x001C(s0)             # 0000001C
lbl_809D4870:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    bne     t0, $at, lbl_809D48E0
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    lui     a1, 0x4461                 # a1 = 44610000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a1, 0x4489                 # a1 = 44890000
    ori     a1, a1, 0x6000             # a1 = 44896000
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x41F0                 # a3 = 41F00000
lbl_809D48E0:
    lh      a0, 0x0140(s0)             # 00000140
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f18                  # $f18 = 350.00
    mul.s   $f16, $f0, $f10
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a3, 0x0068(s0)             # 00000068
    add.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_80064280
    nop
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    sub.s   $f16, $f10, $f0
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    swc1    $f16, 0x0028(s0)           # 00000028
    sw      t1, 0x0014($sp)
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f18, 0x0010($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lhu     t2, 0x0088(s0)             # 00000088
    lui     a1, 0x0600                 # a1 = 06000000
    add.s   $f8, $f4, $f6
    andi    t3, t2, 0x0001             # t3 = 00000000
    addiu   a1, a1, 0x6530             # a1 = 06006530
    beq     t3, $zero, lbl_809D49D4
    swc1    $f8, 0x0028(s0)            # 00000028
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_809D49D4:
    lh      v1, 0x0168(s0)             # 00000168
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x003C($sp)
    bne     v1, $at, lbl_809D4A0C
    nop
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x6530             # a0 = 06006530
    mtc1    v0, $f16                   # $f16 = 0.00
    lh      v1, 0x0168(s0)             # 00000168
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0194(s0)           # 00000194
lbl_809D4A0C:
    bne     v1, $zero, lbl_809D4A2C
    lw      a0, 0x003C($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809D4A2C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809D254C
    lw      a1, 0x006C($sp)
lbl_809D4A2C:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_809D4A40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809D4AA4)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4AA4) # t6 = 809D4AA4
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x88C8             # a1 = 060088C8
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x88C8             # a0 = 060088C8
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4
    swc1    $f8, 0x0068(a3)            # 00000068
    swc1    $f6, 0x0194(a3)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809D4AA4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lui     a1, 0x4120                 # a1 = 41200000
    beql    v0, $zero, lbl_809D4B08
    lw      a0, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x39B0          # a1 = 000039B0
    bne     t6, $at, lbl_809D4AFC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809D4B08
    lw      a0, 0x0024($sp)
lbl_809D4AFC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B1          # a1 = 000039B1
    lw      a0, 0x0024($sp)
lbl_809D4B08:
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809D4B20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809D254C
    lw      a1, 0x002C($sp)
lbl_809D4B20:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D4B34:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     t6, %hi(func_809D4BB0)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4BB0) # t6 = 809D4BB0
    sw      t6, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7CA8             # a1 = 06007CA8
    sw      a0, 0x0024($sp)
    jal     func_8008D21C
    lui     a2, 0xC040                 # a2 = C0400000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x7CA8             # a0 = 06007CA8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4
    swc1    $f8, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0194(s0)            # 00000194
    jal     func_8008C9C0
    lw      a0, 0x0024($sp)
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0168(s0)             # 00000168
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D4BB0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0168(s0)             # 00000168
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   a0, s0, 0x0558             # a0 = 00000558
    beq     v0, $zero, lbl_809D4C04
    nop
    lh      t7, 0x00B6(s0)             # 000000B6
    andi    t9, v0, 0x0003             # t9 = 00000000
    sb      t6, 0x05B0(s0)             # 000005B0
    addiu   t8, t7, 0xD000             # t8 = FFFFD000
    bne     t9, $zero, lbl_809D4C3C
    sh      t8, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3921          # a1 = 00003921
    beq     $zero, $zero, lbl_809D4C40
    lw      $ra, 0x001C($sp)
lbl_809D4C04:
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0032(s0)             # 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809D4C3C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809D254C
    lw      a1, 0x002C($sp)
lbl_809D4C3C:
    lw      $ra, 0x001C($sp)
lbl_809D4C40:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809D4C50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809D4C9C)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4C9C) # t6 = 809D4C9C
    lui     a1, 0x0600                 # a1 = 06000000
    sw      t6, 0x013C(a3)             # 0000013C
    swc1    $f0, 0x04B8(a3)            # 000004B8
    swc1    $f0, 0x0068(a3)            # 00000068
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D328
    lui     a2, 0xC120                 # a2 = C1200000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809D4C9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064280
    addiu   a0, a0, 0x04C0             # a0 = 000004C0
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809D4CE0:
    sw      a1, 0x0004($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f4                   # $f4 = -2000.00
    lw      t7, 0x0004(a0)             # 00000004
    lui     t6, %hi(func_809D4D18)     # t6 = 809D0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, t6, %lo(func_809D4D18) # t6 = 809D4D18
    and     t8, t7, $at
    sw      t6, 0x013C(a0)             # 0000013C
    sb      $zero, 0x0554(a0)          # 00000554
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_809D4D18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v1, %hi(var_809E41E8)      # v1 = 809E0000
    bnel    t6, $at, lbl_809D4DB0
    lw      $ra, 0x0014($sp)
    lw      v1, %lo(var_809E41E8)(v1)
    lui     v0, %hi(func_809D2750)     # v0 = 809D0000
    addiu   v0, v0, %lo(func_809D2750) # v0 = 809D2750
    lw      t7, 0x013C(v1)             # 809E013C
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    bnel    v0, t7, lbl_809D4DB0
    lw      $ra, 0x0014($sp)
    lw      a0, %lo(var_809E41E4)(a0)
    lw      t8, 0x013C(a0)             # 809E013C
    bnel    v0, t8, lbl_809D4DB0
    lw      $ra, 0x0014($sp)
    lbu     t9, 0x00AF(v1)             # 809E00AF
    lbu     t0, 0x00AF(a0)             # 809E00AF
    or      a0, a2, $zero              # a0 = 00000000
    addu    t1, t9, t0
    slti    $at, t1, 0x0004
    bnel    $at, $zero, lbl_809D4DB0
    lw      $ra, 0x0014($sp)
    jal     func_809D4DBC
    lw      a1, 0x001C($sp)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_809D4C50
    lw      a1, 0x001C($sp)
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    jal     func_809D4C50
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_809D4DB0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809D4DBC:
    sw      a1, 0x0004($sp)
    lui     t6, %hi(func_809D4DDC)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4DDC) # t6 = 809D4DDC
    sw      t6, 0x013C(a0)             # 0000013C
    sh      $zero, 0x05EA(a0)          # 000005EA
    sh      $zero, 0x0430(a0)          # 00000430
    jr      $ra
    nop


func_809D4DDC:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lw      t6, 0x1C44(s2)             # 00001C44
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x00A0($sp)
    lh      v0, 0x05EA(s1)             # 000005EA
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s2, 0x1D64             # a1 = 00001D64
    beq     v0, $zero, lbl_809D4E44
    nop
    beq     v0, $at, lbl_809D4EF8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809D4FD4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f22                # $f22 = 0.00
    beq     $zero, $zero, lbl_809D50D8
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D4E44:
    jal     func_80052328
    sh      t7, 0x05EA(s1)             # 000005EA
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    jal     func_8009D0F0
    or      a0, s2, $zero              # a0 = 00000000
    sh      v0, 0x05EC(s1)             # 000005EC
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    lh      a1, 0x05EC(s1)             # 000005EC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    lui     $at, %hi(var_809E2AB8)     # $at = 809E0000
    lui     t8, %hi(var_809E41E8)      # t8 = 809E0000
    swc1    $f4, 0x0694(s1)            # 00000694
    lwc1    $f6, %lo(var_809E2AB8)($at)
    lui     t9, %hi(var_809E41E8)      # t9 = 809E0000
    lui     t0, %hi(var_809E41E4)      # t0 = 809E0000
    swc1    $f6, 0x069C(s1)            # 0000069C
    lw      t8, %lo(var_809E41E8)(t8)
    lui     t1, %hi(var_809E41E4)      # t1 = 809E0000
    mtc1    $zero, $f22                # $f22 = 0.00
    sh      $zero, 0x0030(t8)          # 809E0030
    lw      t9, %lo(var_809E41E8)(t9)
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f8                   # $f8 = 600.00
    sh      $zero, 0x00B4(t9)          # 809E00B4
    lw      t0, %lo(var_809E41E4)(t0)
    lui     a0, 0x10C8                 # a0 = 10C80000
    ori     a0, a0, 0x00FF             # a0 = 10C800FF
    sh      $zero, 0x0030(t0)          # 809E0030
    lw      t1, %lo(var_809E41E4)(t1)
    sh      $zero, 0x00B4(t1)          # 809E00B4
    swc1    $f22, 0x0198(s1)           # 00000198
    swc1    $f22, 0x019C(s1)           # 0000019C
    jal     func_800CAA70
    swc1    $f8, 0x01A0(s1)            # 000001A0
    sh      $zero, 0x0142(s1)          # 00000142
lbl_809D4EF8:
    lh      v0, 0x0142(s1)             # 00000142
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v0, $at, lbl_809D4F1C
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6059          # a1 = 00006059
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x0142(s1)             # 00000142
lbl_809D4F1C:
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     v0, $at, lbl_809D4F34
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x605A          # a1 = 0000605A
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_809D4F34:
    lui     $at, 0x43DC                # $at = 43DC0000
    mtc1    $at, $f10                  # $f10 = 440.00
    swc1    $f22, 0x05FC(s1)           # 000005FC
    swc1    $f22, 0x0604(s1)           # 00000604
    swc1    $f10, 0x0600(s1)           # 00000600
    swc1    $f22, 0x00B0($sp)
    swc1    $f22, 0x00B4($sp)
    lwc1    $f16, 0x0694(s1)           # 00000694
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f16, 0x00B8($sp)
    jal     func_800AAB94
    lwc1    $f12, 0x069C(s1)           # 0000069C
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, $sp, 0x00A4            # a1 = FFFFFFE4
    lui     $at, 0x4396                # $at = 43960000
    lwc1    $f18, 0x00A4($sp)
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     a1, 0x3E99                 # a1 = 3E990000
    swc1    $f18, 0x05F0(s1)           # 000005F0
    swc1    $f4, 0x05F4(s1)            # 000005F4
    lwc1    $f6, 0x00AC($sp)
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    ori     a1, a1, 0x999A             # a1 = 3E99999A
    addiu   a0, s1, 0x069C             # a0 = 0000069C
    jal     func_80064280
    swc1    $f6, 0x05F8(s1)            # 000005F8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0694             # a0 = 00000694
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    beq     $zero, $zero, lbl_809D50D8
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D4FD4:
    mtc1    $zero, $f22                # $f22 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f22, 0x00B0($sp)
    swc1    $f22, 0x00B4($sp)
    lwc1    $f8, 0x0694(s1)            # 00000694
    swc1    $f8, 0x00B8($sp)
    jal     func_800AAB94
    lwc1    $f12, 0x069C(s1)           # 0000069C
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, $sp, 0x00A4            # a1 = FFFFFFE4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f18, 0x068C(s1)           # 0000068C
    lwc1    $f10, 0x00A4($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f18, $f4
    swc1    $f10, 0x05F0(s1)           # 000005F0
    lwc1    $f16, 0x00AC($sp)
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x05F4             # a0 = 000005F4
    lui     a1, 0x43D2                 # a1 = 43D20000
    swc1    $f16, 0x05F8(s1)           # 000005F8
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lwc1    $f8, 0x068C(s1)            # 0000068C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f16, $f8, $f10
    addiu   a0, s1, 0x0600             # a0 = 00000600
    lui     a1, 0x43EB                 # a1 = 43EB0000
    mfc1    a3, $f16
    jal     func_80064280
    nop
    lui     a1, 0x3E99                 # a1 = 3E990000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    ori     a1, a1, 0x999A             # a1 = 3E99999A
    jal     func_80064280
    addiu   a0, s1, 0x069C             # a0 = 0000069C
    lui     $at, 0x4200                # $at = 42000000
    mtc1    $at, $f4                   # $f4 = 32.00
    lwc1    $f18, 0x068C(s1)           # 0000068C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f6, $f18, $f4
    addiu   a0, s1, 0x0694             # a0 = 00000694
    lui     a1, 0x4270                 # a1 = 42700000
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f20
    mfc1    a2, $f20
    jal     func_80064280
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D50D8:
    beql    a1, $zero, lbl_809D5114
    lh      v0, 0x0430(s1)             # 00000430
    lbu     t2, 0x05E9(s1)             # 000005E9
    addiu   a3, s1, 0x05F0             # a3 = 000005F0
    or      a0, s2, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_809D5108
    addiu   a2, s1, 0x0620             # a2 = 00000620
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D328
    addiu   a2, s1, 0x05FC             # a2 = 000005FC
    beq     $zero, $zero, lbl_809D5114
    lh      v0, 0x0430(s1)             # 00000430
lbl_809D5108:
    jal     func_8009D328
    addiu   a3, s1, 0x0614             # a3 = 00000614
    lh      v0, 0x0430(s1)             # 00000430
lbl_809D5114:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    beq     v0, $zero, lbl_809D5140
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    beq     v0, $at, lbl_809D55B0
    addiu   s0, s1, 0x0558             # s0 = 00000558
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809D5610
    nop
    beq     $zero, $zero, lbl_809D588C
    lw      $ra, 0x003C($sp)
lbl_809D5140:
    jal     func_80022FD0
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    jal     func_80022FD0
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    lui     $at, 0x43C8                # $at = 43C80000
    lwc1    $f8, 0x01A0(s1)            # 000001A0
    mtc1    $at, $f10                  # $f10 = 400.00
    swc1    $f22, 0x00B8($sp)
    swc1    $f8, 0x00B0($sp)
    swc1    $f10, 0x00B4($sp)
    lwc1    $f12, 0x0198(s1)           # 00000198
    jal     func_800AAB94
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, $sp, 0x00A4            # a1 = FFFFFFE4
    lui     v0, %hi(var_809E41E8)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41E8)  # v0 = 809E41E8
    lw      t3, 0x0000(v0)             # 809E41E8
    lwc1    $f16, 0x00A4($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f0                   # $f0 = 32768.00
    swc1    $f16, 0x0024(t3)           # 00000024
    lwc1    $f18, 0x00A8($sp)
    lw      t4, 0x0000(v0)             # 809E41E8
    lui     $at, %hi(var_809E2ABC)     # $at = 809E0000
    lui     v1, %hi(var_809E41E4)      # v1 = 809E0000
    swc1    $f18, 0x0028(t4)           # 00000028
    lwc1    $f4, 0x00AC($sp)
    lw      t5, 0x0000(v0)             # 809E41E8
    addiu   v1, v1, %lo(var_809E41E4)  # v1 = 809E41E4
    mfc1    a1, $f22
    swc1    $f4, 0x002C(t5)            # 0000002C
    lwc1    $f6, 0x0198(s1)            # 00000198
    lwc1    $f8, %lo(var_809E2ABC)($at)
    lw      t8, 0x0000(v0)             # 809E41E8
    lui     $at, %hi(var_809E2AC0)     # $at = 809E0000
    div.s   $f10, $f6, $f8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x01A0             # a0 = 000001A0
    lui     a3, 0x40E0                 # a3 = 40E00000
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x00B6(t8)             # 000000B6
    lwc1    $f4, 0x00A4($sp)
    lw      t9, 0x0000(v1)             # 809E41E4
    neg.s   $f6, $f4
    swc1    $f6, 0x0024(t9)            # 00000024
    lw      t0, 0x0000(v1)             # 809E41E4
    lwc1    $f8, 0x00A8($sp)
    swc1    $f8, 0x0028(t0)            # 00000028
    lwc1    $f10, 0x00AC($sp)
    lw      t1, 0x0000(v1)             # 809E41E4
    neg.s   $f16, $f10
    swc1    $f16, 0x002C(t1)           # 0000002C
    lwc1    $f4, %lo(var_809E2AC0)($at)
    lwc1    $f18, 0x0198(s1)           # 00000198
    lw      t4, 0x0000(v1)             # 809E41E4
    div.s   $f6, $f18, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f8, $f0
    trunc.w.s $f16, $f10
    mfc1    t3, $f16
    jal     func_80064280
    sh      t3, 0x00B6(t4)             # 000000B6
    lwc1    $f18, 0x0198(s1)           # 00000198
    lwc1    $f4, 0x019C(s1)            # 0000019C
    mfc1    a2, $f20
    lui     a3, 0x3B83                 # a3 = 3B830000
    sub.s   $f6, $f18, $f4
    ori     a3, a3, 0x126E             # a3 = 3B83126E
    addiu   a0, s1, 0x019C             # a0 = 0000019C
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_80064280
    swc1    $f6, 0x0198(s1)            # 00000198
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f8, 0x01A0(s1)            # 000001A0
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_809D556C
    nop
    lh      t5, 0x0156(s1)             # 00000156
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    addiu   a1, $zero, 0x3910          # a1 = 00003910
    bne     t5, $zero, lbl_809D52C0
    nop
    jal     func_80022FD0
    lw      a0, %lo(var_809E41E8)(a0)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0156(s1)             # 00000156
lbl_809D52C0:
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    mfc1    a2, $f20
    lui     a3, 0x39C4                 # a3 = 39C40000
    ori     a3, a3, 0x9BA9             # a3 = 39C49BA9
    ori     a1, a1, 0xD70C             # a1 = 3BA3D70C
    jal     func_80064280
    addiu   a0, a0, 0x0050             # a0 = 809E0050
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809D52E8:
    lui     t7, %hi(var_809E41E8)      # t7 = 809E0000
    lw      t7, %lo(var_809E41E8)(t7)
    lui     $at, %hi(var_809E2AC4)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2AC4)($at)
    lwc1    $f16, 0x0050(t7)           # 809E0050
    mul.s   $f20, $f16, $f18
    jal     func_80026D90
    add.s   $f12, $f20, $f20
    lui     $at, %hi(var_809E2AC8)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2AC8)($at)
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f8, $f6, $f0
    swc1    $f22, 0x009C($sp)
    swc1    $f0, 0x0090($sp)
    swc1    $f4, 0x0094($sp)
    jal     func_80026D64
    swc1    $f8, 0x0098($sp)
    mul.s   $f10, $f20, $f20
    lwc1    $f2, 0x0090($sp)
    swc1    $f0, 0x0054($sp)
    lui     $at, %hi(var_809E2ACC)     # $at = 809E0000
    mul.s   $f16, $f2, $f2
    lwc1    $f12, %lo(var_809E2ACC)($at)
    sub.s   $f0, $f10, $f16
    sqrt.s  $f0, $f0
    jal     func_80026D64
    swc1    $f0, 0x0058($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f18, 0x0054($sp)
    trunc.w.s $f8, $f0
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFD4
    add.s   $f6, $f18, $f4
    mfc1    t9, $f8
    lw      a3, 0x0058($sp)
    mfc1    a2, $f6
    jal     func_809D15D8
    sw      t9, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bne     $at, $zero, lbl_809D52E8
    nop
    lui     t0, %hi(var_809E41E8)      # t0 = 809E0000
    lw      t0, %lo(var_809E41E8)(t0)
    lui     $at, %hi(var_809E2AD0)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2AD0)($at)
    lwc1    $f16, 0x0050(t0)           # 809E0050
    lui     $at, 0x43C8                # $at = 43C80000
    or      s0, $zero, $zero           # s0 = 00000000
    c.le.s  $f16, $f10
    addiu   v0, s1, 0x0024             # v0 = 00000024
    bc1f    lbl_809D556C
    nop
    mtc1    $at, $f18                  # $f18 = 400.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f20                  # $f20 = 25.00
    swc1    $f18, 0x0028(s1)           # 00000028
    sw      v0, 0x004C($sp)
    lw      v0, 0x004C($sp)
lbl_809D53EC:
    addiu   t1, $sp, 0x0080            # t1 = FFFFFFC0
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t3, 0x0000(v0)             # 00000024
    mtc1    $at, $f12                  # $f12 = 20.00
    sw      t3, 0x0000(t1)             # FFFFFFC0
    lw      t2, 0x0004(v0)             # 00000028
    sw      t2, 0x0004(t1)             # FFFFFFC4
    lw      t3, 0x0008(v0)             # 0000002C
    jal     func_80026D90
    sw      t3, 0x0008(t1)             # FFFFFFC8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0074($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0078($sp)
    lwc1    $f4, 0x0080($sp)
    lwc1    $f6, 0x0074($sp)
    lwc1    $f10, 0x0084($sp)
    lwc1    $f16, 0x0078($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0088($sp)
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f18, $f10, $f16
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f0, 0x007C($sp)
    add.s   $f6, $f4, $f0
    swc1    $f8, 0x0080($sp)
    swc1    $f18, 0x0084($sp)
    swc1    $f22, 0x0068($sp)
    swc1    $f6, 0x0088($sp)
    swc1    $f22, 0x006C($sp)
    jal     func_80026D64
    swc1    $f22, 0x0070($sp)
    lwc1    $f10, 0x0074($sp)
    add.s   $f8, $f0, $f20
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0080            # a1 = FFFFFFC0
    c.lt.s  $f10, $f22
    swc1    $f8, 0x0010($sp)
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFB4
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFA8
    bc1f    lbl_809D54A8
    or      t4, $zero, $zero           # t4 = 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
lbl_809D54A8:
    jal     func_809D1500
    sw      t4, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809D53EC
    lw      v0, 0x004C($sp)
    lw      t7, 0x0004(s1)             # 00000004
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t5, 0x0430(s1)             # 00000430
    sb      t6, 0x0554(s1)             # 00000554
    sw      t8, 0x0004(s1)             # 00000004
    sh      $zero, 0x00B6(s1)          # 000000B6
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_809D4CE0
    or      a1, s2, $zero              # a1 = 00000000
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    jal     func_809D4CE0
    or      a1, s2, $zero              # a1 = 00000000
    mfc1    a1, $f22
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lui     s0, 0x0603                 # s0 = 06030000
    addiu   s0, s0, 0x7A2C             # s0 = 06037A2C
    mfc1    a2, $f22
    or      a1, s0, $zero              # a1 = 06037A2C
    jal     func_8008D21C
    addiu   a0, s1, 0x0558             # a0 = 00000558
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06037A2C
    mtc1    v0, $f16                   # $f16 = 0.00
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sh      t9, 0x0168(s1)             # 00000168
    cvt.s.w $f18, $f16
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_800218EC
    swc1    $f18, 0x0194(s1)           # 00000194
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x390D          # a1 = 0000390D
    jal     func_800CAA70
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
lbl_809D556C:
    lui     v0, %hi(var_809E41E8)      # v0 = 809E0000
    lw      v0, %lo(var_809E41E8)(v0)
    lui     t0, %hi(var_809E41E8)      # t0 = 809E0000
    lui     t1, %hi(var_809E41E4)      # t1 = 809E0000
    lwc1    $f0, 0x0050(v0)            # 809E0050
    lui     t2, %hi(var_809E41E4)      # t2 = 809E0000
    lui     t3, %hi(var_809E41E4)      # t3 = 809E0000
    swc1    $f0, 0x0058(v0)            # 809E0058
    lw      t0, %lo(var_809E41E8)(t0)
    swc1    $f0, 0x0054(t0)            # 809E0054
    lw      t1, %lo(var_809E41E4)(t1)
    swc1    $f0, 0x0058(t1)            # 809E0058
    lw      t2, %lo(var_809E41E4)(t2)
    swc1    $f0, 0x0054(t2)            # 809E0054
    lw      t3, %lo(var_809E41E4)(t3)
    beq     $zero, $zero, lbl_809D5888
    swc1    $f0, 0x0050(t3)            # 809E0050
lbl_809D55B0:
    or      a0, s0, $zero              # a0 = 06037A2C
    jal     func_8008D6A8
    lw      a1, 0x0194(s1)             # 00000194
    beq     v0, $zero, lbl_809D55D4
    or      a0, s0, $zero              # a0 = 06037A2C
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    jal     func_8008D328
    lui     a2, 0xC170                 # a2 = C1700000
lbl_809D55D4:
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      t4, %lo(var_809E41E0)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f20
    mfc1    a2, $f20
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_80064280
    addu    a0, s2, $at
lbl_809D5610:
    jal     func_8008C9C0
    addiu   a0, s1, 0x0558             # a0 = 00000558
    lui     a1, 0x3BE5                 # a1 = 3BE50000
    mfc1    a2, $f20
    lui     a3, 0x3A37                 # a3 = 3A370000
    ori     a3, a3, 0x8033             # a3 = 3A378033
    ori     a1, a1, 0x6040             # a1 = 3BE56040
    jal     func_80064280
    addiu   a0, s1, 0x0050             # a0 = 00000050
    lwc1    $f0, 0x0050(s1)            # 00000050
    lh      t6, 0x0168(s1)             # 00000168
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f0, 0x0058(s1)            # 00000058
    bne     t6, $at, lbl_809D56E0
    swc1    $f0, 0x0054(s1)            # 00000054
    lw      a3, 0x00A0($sp)
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f4                   # $f4 = 240.00
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0041          # t8 = 00000041
    addiu   t9, $zero, 0x005A          # t9 = 0000005A
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sh      t7, 0x05EA(s1)             # 000005EA
    swc1    $f22, 0x068C(s1)           # 0000068C
    sh      t8, 0x016A(s1)             # 0000016A
    sh      t9, 0x016C(s1)             # 0000016C
    sh      t0, 0x016E(s1)             # 0000016E
    lui     $at, 0x4387                # $at = 43870000
    addiu   t1, $zero, 0x8000          # t1 = FFFF8000
    mtc1    $at, $f6                   # $f6 = 270.00
    sh      t1, 0x00B6(a3)             # 000000B6
    lh      t2, 0x00B6(a3)             # 000000B6
    lui     $at, 0x4391                # $at = 43910000
    mtc1    $at, $f8                   # $f8 = 290.00
    lui     $at, 0x435E                # $at = 435E0000
    mtc1    $at, $f10                  # $f10 = 222.00
    swc1    $f22, 0x0024(a3)           # 00000024
    swc1    $f4, 0x0028(a3)            # 00000028
    swc1    $f6, 0x002C(a3)            # 0000002C
    sh      t2, 0x0032(a3)             # 00000032
    swc1    $f22, 0x0614(s1)           # 00000614
    swc1    $f8, 0x0618(s1)            # 00000618
    swc1    $f10, 0x061C(s1)           # 0000061C
    lwc1    $f16, 0x0024(a3)           # 00000024
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f4                   # $f4 = 54.00
    swc1    $f16, 0x0620(s1)           # 00000620
    lwc1    $f18, 0x0028(a3)           # 00000028
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0624(s1)            # 00000624
    lwc1    $f8, 0x002C(a3)            # 0000002C
    swc1    $f8, 0x0628(s1)            # 00000628
lbl_809D56E0:
    lh      v1, 0x016E(s1)             # 0000016E
    addiu   $at, $zero, 0x0013         # $at = 00000013
    lw      a3, 0x00A0($sp)
    bne     v1, $at, lbl_809D5708
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lh      v1, 0x016E(s1)             # 0000016E
    lw      a3, 0x00A0($sp)
lbl_809D5708:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v1, $at, lbl_809D5730
    nop
    lw      t3, 0x0668(a3)             # 00000668
    or      a0, a3, $zero              # a0 = 00000000
    lhu     a1, 0x0092(t3)             # 00000092
    addiu   a1, a1, 0x6816             # a1 = 00006816
    jal     func_80022F84
    andi    a1, a1, 0xFFFF             # a1 = 00006816
    lh      v1, 0x016E(s1)             # 0000016E
lbl_809D5730:
    beq     v1, $zero, lbl_809D5764
    slti    $at, v1, 0x0014
    beq     $at, $zero, lbl_809D5764
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sb      t4, 0x05E9(s1)             # 000005E9
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x061C             # a0 = 0000061C
    lui     a1, 0x4372                 # a1 = 43720000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     $zero, $zero, lbl_809D576C
    lh      t5, 0x016A(s1)             # 0000016A
lbl_809D5764:
    sb      $zero, 0x05E9(s1)          # 000005E9
    lh      t5, 0x016A(s1)             # 0000016A
lbl_809D576C:
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    addiu   a0, $zero, 0x39BB          # a0 = 000039BB
    bnel    v0, t5, lbl_809D5788
    lh      v0, 0x016C(s1)             # 0000016C
    jal     func_800646F0
    sh      v0, 0x0152(s1)             # 00000152
    lh      v0, 0x016C(s1)             # 0000016C
lbl_809D5788:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    bne     v0, $at, lbl_809D57B0
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41E0)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      t6, 0x0AE2($at)            # 00010AE2
    lh      v0, 0x016C(s1)             # 0000016C
lbl_809D57B0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809D5888
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, s2, 0x1D64             # t7 = 00001D64
    addiu   t8, s1, 0x05FC             # t8 = 000005FC
    sw      t8, 0x0048($sp)
    sw      t7, 0x004C($sp)
    jal     func_8009D2F0
    addiu   s0, s1, 0x05F0             # s0 = 000005F0
    lw      t0, 0x0000(s0)             # 000005F0
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t0, 0x005C(v0)             # 0000005C
    lw      t9, 0x0004(s0)             # 000005F4
    sw      t9, 0x0060(v0)             # 00000060
    lw      t0, 0x0008(s0)             # 000005F8
    sw      t0, 0x0064(v0)             # 00000064
    lw      t2, 0x0000(s0)             # 000005F0
    sw      t2, 0x0074(v0)             # 00000074
    lw      t1, 0x0004(s0)             # 000005F4
    sw      t1, 0x0078(v0)             # 00000078
    lw      t2, 0x0008(s0)             # 000005F8
    sw      t2, 0x007C(v0)             # 0000007C
    lw      t3, 0x0048($sp)
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0050(v0)             # 00000050
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0054(v0)             # 00000054
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x05EC(s1)             # 000005EC
    sh      $zero, 0x05EC(s1)          # 000005EC
    lh      t6, 0x05EC(s1)             # 000005EC
    or      a0, s2, $zero              # a0 = 00000000
    sh      t6, 0x05EA(s1)             # 000005EA
    jal     func_80052340
    lw      a1, 0x004C($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t7, %hi(var_809E285C)      # t7 = 809E0000
    sh      $zero, 0x0144(s1)          # 00000144
    addiu   t7, t7, %lo(var_809E285C)  # t7 = 809E285C
    lw      t9, 0x0000(t7)             # 809E285C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    sw      t9, 0x04A0(s1)             # 000004A0
    lw      t8, 0x0004(t7)             # 809E2860
    sw      t8, 0x04A4(s1)             # 000004A4
    lw      t9, 0x0008(t7)             # 809E2864
    jal     func_809E21B4
    sw      t9, 0x04A8(s1)             # 000004A8
lbl_809D5888:
    lw      $ra, 0x003C($sp)
lbl_809D588C:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_809D58A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809D5910)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D5910) # t6 = 809D5910
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04A4             # a1 = 060004A4
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    lw      t7, 0x0018($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D64
    sb      $zero, 0x05E8(t7)          # 000005E8
    trunc.w.s $f4, $f0
    lw      t0, 0x0018($sp)
    mfc1    t9, $f4
    nop
    sh      t9, 0x0142(t0)             # 00000142
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809D5910:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0168(s0)             # 00000168
    bnel    t6, $zero, lbl_809D5940
    lwc1    $f4, 0x04B8(s0)            # 000004B8
    jal     func_8008C9C0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lwc1    $f4, 0x04B8(s0)            # 000004B8
lbl_809D5940:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0154(s0)             # 00000154
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a1, 0x46A0                 # a1 = 46A00000
    mfc1    a2, $f20
    jal     func_80064280
    lui     a3, 0x447A                 # a3 = 447A0000
    lui     t8, %hi(var_809E41EC)      # t8 = 809E0000
    lw      t8, %lo(var_809E41EC)(t8)
    addiu   a0, s0, 0x01C4             # a0 = 000001C4
    lui     a1, 0x42C8                 # a1 = 42C80000
    lh      t9, 0x0142(t8)             # 809E0142
    slti    $at, t9, 0x008D
    bnel    $at, $zero, lbl_809D5A08
    lw      $ra, 0x0024($sp)
    mfc1    a2, $f20
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    mfc1    a2, $f20
    addiu   a0, s0, 0x01C8             # a0 = 000001C8
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    mfc1    a2, $f20
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lui     a1, 0x4454                 # a1 = 44540000
    mfc1    a2, $f20
    ori     a1, a1, 0x8000             # a1 = 44548000
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lui     a1, 0x4489                 # a1 = 44890000
    mfc1    a2, $f20
    ori     a1, a1, 0x6000             # a1 = 44896000
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lw      $ra, 0x0024($sp)
lbl_809D5A08:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809D5A18:
    sw      a1, 0x0004($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f4                   # $f4 = -2000.00
    lw      t7, 0x0004(a0)             # 00000004
    lui     t6, %hi(func_809D5A50)     # t6 = 809D0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, t6, %lo(func_809D5A50) # t6 = 809D5A50
    and     t8, t7, $at
    sw      t6, 0x013C(a0)             # 0000013C
    sb      $zero, 0x0554(a0)          # 00000554
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_809D5A50:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809D5A60:
    sw      a1, 0x0004($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f4                   # $f4 = -2000.00
    lw      t7, 0x0004(a0)             # 00000004
    lui     t6, %hi(func_809D5A98)     # t6 = 809D0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, t6, %lo(func_809D5A98) # t6 = 809D5A98
    and     t8, t7, $at
    sw      t6, 0x013C(a0)             # 0000013C
    sb      $zero, 0x0554(a0)          # 00000554
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_809D5A98:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x00A4($sp)
    sb      $zero, 0x009F($sp)
    lh      v0, 0x05EE(s1)             # 000005EE
    lw      t6, 0x00A4($sp)
    slti    $at, v0, 0x00DD
    bne     $at, $zero, lbl_809D5AE8
    lw      s0, 0x1C44(t6)             # 00001C44
    slti    $at, v0, 0x0276
    beql    $at, $zero, lbl_809D5AEC
    addiu   s3, $zero, 0x00B4          # s3 = 000000B4
    jal     func_800646F0
    addiu   a0, $zero, 0x3120          # a0 = 00003120
    lh      v0, 0x05EE(s1)             # 000005EE
lbl_809D5AE8:
    addiu   s3, $zero, 0x00B4          # s3 = 000000B4
lbl_809D5AEC:
    bnel    s3, v0, lbl_809D5B24
    lhu     t8, 0x05EA(s1)             # 000005EA
    lui     s2, %hi(var_809E27C0)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E27C0)  # s2 = 809E27C0
    or      a0, s2, $zero              # a0 = 809E27C0
    jal     func_80064780
    addiu   a1, $zero, 0x39B0          # a1 = 000039B0
    or      a0, s2, $zero              # a0 = 809E27C0
    jal     func_80064780
    addiu   a1, $zero, 0x39B1          # a1 = 000039B1
    jal     func_800CAA70
    addiu   a0, $zero, 0x0061          # a0 = 00000061
    lh      v0, 0x05EE(s1)             # 000005EE
    lhu     t8, 0x05EA(s1)             # 000005EA
lbl_809D5B24:
    addiu   t7, v0, 0x0001             # t7 = 00000001
    sh      t7, 0x05EE(s1)             # 000005EE
    sltiu   $at, t8, 0x0015
    beq     $at, $zero, lbl_809D71C8
    sll     t8, t8,  2
    lui     $at, %hi(var_809E2AD4)     # $at = 809E0000
    addu    $at, $at, t8
    lw      t8, %lo(var_809E2AD4)($at)
    jr      t8
    nop
var_809D5B4C:
    sh      $zero, 0x05EE(s1)          # 000005EE
    lwc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f2, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_809E2B28)     # $at = 809E0000
    mul.s   $f4, $f0, $f0
    lwc1    $f10, %lo(var_809E2B28)($at)
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_809D71CC
    lh      a1, 0x05EC(s1)             # 000005EC
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f0, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x0024(s0)            # 00000024
    sh      t9, 0x05EA(s1)             # 000005EA
    lw      a0, 0x00A4($sp)
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x00A4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    jal     func_8009D0F0
    lw      a0, 0x00A4($sp)
    sh      v0, 0x05EC(s1)             # 000005EC
    lw      a0, 0x00A4($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x00A4($sp)
    lh      a1, 0x05EC(s1)             # 000005EC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f16                  # $f16 = 450.00
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f14                  # $f14 = 900.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f12                  # $f12 = 350.00
    lui     $at, %hi(var_809E2B2C)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2B2C)($at)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    abs.s   $f4, $f16
    sub.s   $f2, $f14, $f12
    swc1    $f6, 0x05F8(s1)            # 000005F8
    lwc1    $f6, 0x05F8(s1)            # 000005F8
    swc1    $f10, 0x0664(s1)           # 00000664
    lwc1    $f10, 0x0664(s1)           # 00000664
    abs.s   $f2, $f2
    lui     $at, 0x4387                # $at = 43870000
    sub.s   $f6, $f10, $f6
    mtc1    $at, $f10                  # $f10 = 270.00
    swc1    $f18, 0x05FC(s1)           # 000005FC
    lwc1    $f0, 0x05FC(s1)            # 000005FC
    swc1    $f10, 0x0600(s1)           # 00000600
    lwc1    $f10, 0x0600(s1)           # 00000600
    abs.s   $f6, $f6
    swc1    $f18, 0x0674(s1)           # 00000674
    lui     $at, 0x4370                # $at = 43700000
    swc1    $f18, 0x0604(s1)           # 00000604
    mtc1    $at, $f18                  # $f18 = 240.00
    lui     $at, 0x430C                # $at = 430C0000
    swc1    $f8, 0x05F0(s1)            # 000005F0
    mtc1    $at, $f8                   # $f8 = 140.00
    swc1    $f18, 0x0678(s1)           # 00000678
    lwc1    $f18, 0x0674(s1)           # 00000674
    swc1    $f8, 0x067C(s1)            # 0000067C
    lwc1    $f8, 0x0678(s1)            # 00000678
    sub.s   $f0, $f18, $f0
    lwc1    $f18, 0x067C(s1)           # 0000067C
    swc1    $f12, 0x05F4(s1)           # 000005F4
    lwc1    $f12, 0x0604(s1)           # 00000604
    abs.s   $f0, $f0
    sub.s   $f10, $f8, $f10
    swc1    $f16, 0x065C(s1)           # 0000065C
    swc1    $f14, 0x0660(s1)           # 00000660
    swc1    $f4, 0x0644(s1)            # 00000644
    abs.s   $f10, $f10
    sub.s   $f12, $f18, $f12
    swc1    $f2, 0x0648(s1)            # 00000648
    swc1    $f6, 0x064C(s1)            # 0000064C
    swc1    $f0, 0x0650(s1)            # 00000650
    abs.s   $f12, $f12
    swc1    $f10, 0x0654(s1)           # 00000654
    swc1    $f12, 0x0658(s1)           # 00000658
    lui     $at, %hi(var_809E2B30)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2B30)($at)
    sh      $zero, 0x0140(s1)          # 00000140
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f12, 0x0690(s1)           # 00000690
var_809D5CC8:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x009F($sp)
    lh      t2, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      a0, 0x00A4($sp)
    bne     t2, $at, lbl_809D5CEC
    addiu   a1, $zero, 0x6048          # a1 = 00006048
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_809D5CEC:
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0140(s1)             # 00000140
    lw      t3, 0x00A4($sp)
    lui     a1, 0x3F80                 # a1 = 3F800000
    slti    $at, v1, 0x0065
    bne     $at, $zero, lbl_809D5D4C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lw      a0, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    jal     func_80064280
    addu    a0, a0, $at
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D5D4C:
    bnel    s3, v1, lbl_809D5D64
    slti    $at, v1, 0x00B5
    jal     func_800646F0
    addiu   a0, $zero, 0x390C          # a0 = 0000390C
    lh      v1, 0x0140(s1)             # 00000140
    slti    $at, v1, 0x00B5
lbl_809D5D64:
    bne     $at, $zero, lbl_809D71C8
    addiu   a0, s1, 0x04C8             # a0 = 000004C8
    lui     $at, %hi(var_809E2B34)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2B34)($at)
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    swc1    $f8, 0x04D0(s1)            # 000004D0
    lh      t4, 0x0140(s1)             # 00000140
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    slti    $at, t4, 0x00EC
    bne     $at, $zero, lbl_809D71C8
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sh      t5, 0x05EA(s1)             # 000005EA
    lw      t6, 0x0000(s2)             # 809E41E8
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04A4             # a1 = 060004A4
    sb      s0, 0x0554(t6)             # 00000554
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f12                  # $f12 = -30.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t7, 0x0000(s2)             # 809E41E8
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f14                  # $f14 = 600.00
    lui     $at, 0x42A0                # $at = 42A00000
    swc1    $f10, 0x0024(t7)           # 00000024
    lw      t8, 0x0000(s2)             # 809E41E8
    mtc1    $at, $f4                   # $f4 = 80.00
    addiu   t0, $zero, 0x8000          # t0 = FFFF8000
    lui     $at, 0x43EB                # $at = 43EB0000
    swc1    $f4, 0x0028(t8)            # 00000028
    lw      t9, 0x0000(s2)             # 809E41E8
    mtc1    $at, $f6                   # $f6 = 470.00
    lui     $at, 0x4387                # $at = 43870000
    swc1    $f14, 0x002C(t9)           # 0000002C
    lw      t1, 0x0000(s2)             # 809E41E8
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f10                  # $f10 = 270.00
    sh      t0, 0x0032(t1)             # 00000032
    lw      s0, 0x0000(s2)             # 809E41E8
    lui     a1, 0x3C75                 # a1 = 3C750000
    ori     a1, a1, 0xC28E             # a1 = 3C75C28E
    lh      t2, 0x0032(s0)             # 00000033
    sh      t2, 0x00B6(s0)             # 000000B7
    sh      $zero, 0x0140(s1)          # 00000140
    swc1    $f2, 0x05F4(s1)            # 000005F4
    swc1    $f12, 0x05F0(s1)           # 000005F0
    swc1    $f14, 0x0604(s1)           # 00000604
    swc1    $f6, 0x05F8(s1)            # 000005F8
    swc1    $f8, 0x05FC(s1)            # 000005FC
    swc1    $f10, 0x0600(s1)           # 00000600
    jal     func_80020F88
    lw      a0, 0x0000(s2)             # 809E41E8
    beq     $zero, $zero, lbl_809D71CC
    lh      a1, 0x05EC(s1)             # 000005EC
var_809D5E64:
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    lw      a0, 0x0000(s2)             # 809E41E8
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      a0, 0x0000(s2)             # 809E41E8
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lui     a1, 0x4370                 # a1 = 43700000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     $at, %hi(var_809E2B38)     # $at = 809E0000
    lwc1    $f0, %lo(var_809E2B38)($at)
    lwc1    $f4, 0x05F0(s1)            # 000005F0
    lwc1    $f8, 0x05F8(s1)            # 000005F8
    lh      t3, 0x0140(s1)             # 00000140
    sub.s   $f6, $f4, $f0
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    slti    $at, t3, 0x0033
    add.s   $f10, $f8, $f0
    swc1    $f6, 0x05F0(s1)            # 000005F0
    bne     $at, $zero, lbl_809D71C8
    swc1    $f10, 0x05F8(s1)           # 000005F8
    lwc1    $f18, 0x05F0(s1)           # 000005F0
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f14, 0x05F4(s1)           # 000005F4
    lwc1    $f12, 0x05F8(s1)           # 000005F8
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f10                  # $f10 = 260.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f8                   # $f8 = -30.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x05FC(s1)            # 000005FC
    sub.s   $f18, $f8, $f18
    lui     $at, %hi(var_809E2B3C)     # $at = 809E0000
    lwc1    $f2, %lo(var_809E2B3C)($at)
    swc1    $f8, 0x065C(s1)            # 0000065C
    abs.s   $f18, $f18
    sub.s   $f14, $f10, $f14
    swc1    $f10, 0x0660(s1)           # 00000660
    swc1    $f16, 0x0674(s1)           # 00000674
    lwc1    $f16, 0x0600(s1)           # 00000600
    abs.s   $f14, $f14
    sub.s   $f12, $f2, $f12
    swc1    $f2, 0x0664(s1)            # 00000664
    sh      t4, 0x05EA(s1)             # 000005EA
    lui     $at, %hi(var_809E2B40)     # $at = 809E0000
    lwc1    $f2, %lo(var_809E2B40)($at)
    abs.s   $f12, $f12
    sub.s   $f4, $f6, $f4
    swc1    $f2, 0x0678(s1)            # 00000678
    lwc1    $f2, 0x0678(s1)            # 00000678
    lwc1    $f6, 0x0604(s1)            # 00000604
    abs.s   $f4, $f4
    sub.s   $f16, $f2, $f16
    lui     $at, 0x4411                # $at = 44110000
    mtc1    $at, $f2                   # $f2 = 580.00
    mtc1    $zero, $f10                # $f10 = 0.00
    abs.s   $f16, $f16
    swc1    $f2, 0x067C(s1)            # 0000067C
    lwc1    $f2, 0x067C(s1)            # 0000067C
    swc1    $f18, 0x0644(s1)           # 00000644
    swc1    $f14, 0x0648(s1)           # 00000648
    sub.s   $f6, $f2, $f6
    swc1    $f12, 0x064C(s1)           # 0000064C
    swc1    $f4, 0x0650(s1)            # 00000650
    swc1    $f16, 0x0654(s1)           # 00000654
    abs.s   $f6, $f6
    swc1    $f10, 0x068C(s1)           # 0000068C
    swc1    $f6, 0x0658(s1)            # 00000658
    lui     $at, %hi(var_809E2B44)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2B44)($at)
    sh      $zero, 0x0140(s1)          # 00000140
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f6, 0x0690(s1)            # 00000690
var_809D5F94:
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    lw      a0, 0x0000(s2)             # 809E41E8
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    sb      t5, 0x009F($sp)
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lui     a1, 0x4370                 # a1 = 43700000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      a0, 0x00A4($sp)
    bne     v1, $at, lbl_809D6004
    addiu   a1, $zero, 0x6049          # a1 = 00006049
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6004:
    slti    $at, v1, 0x0051
    bne     $at, $zero, lbl_809D71C8
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $at, $f12                  # $f12 = -80.00
    lui     $at, 0x43D7                # $at = 43D70000
    mtc1    $at, $f14                  # $f14 = 430.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t6, 0x05EA(s1)             # 000005EA
    swc1    $f2, 0x0660(s1)            # 00000660
    swc1    $f12, 0x065C(s1)           # 0000065C
    swc1    $f14, 0x0664(s1)           # 00000664
    swc1    $f8, 0x0068(s1)            # 00000068
    lw      t7, 0x0000(s2)             # 809E41E8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f10, 0x0024(t7)           # 00000024
    lui     $at, %hi(var_809E2B48)     # $at = 809E0000
    lui     s0, 0x0600                 # s0 = 06000000
    swc1    $f10, 0x0674(s1)           # 00000674
    lw      t8, 0x0000(s2)             # 809E41E8
    addiu   s0, s0, 0x0AAC             # s0 = 06000AAC
    or      a1, s0, $zero              # a1 = 06000AAC
    lwc1    $f4, 0x0028(t8)            # 00000028
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x05F0(s1)            # 000005F0
    lwc1    $f6, 0x05F4(s1)            # 000005F4
    sub.s   $f0, $f12, $f4
    swc1    $f8, 0x0678(s1)            # 00000678
    lw      t9, 0x0000(s2)             # 809E41E8
    lwc1    $f8, 0x05F8(s1)            # 000005F8
    abs.s   $f0, $f0
    lwc1    $f10, 0x002C(t9)           # 0000002C
    swc1    $f0, 0x0644(s1)            # 00000644
    sub.s   $f0, $f2, $f6
    swc1    $f10, 0x067C(s1)           # 0000067C
    lwc1    $f10, 0x0674(s1)           # 00000674
    lwc1    $f4, 0x05FC(s1)            # 000005FC
    abs.s   $f0, $f0
    lwc1    $f6, 0x0678(s1)            # 00000678
    swc1    $f0, 0x0648(s1)            # 00000648
    sub.s   $f0, $f14, $f8
    lwc1    $f8, 0x0600(s1)            # 00000600
    abs.s   $f0, $f0
    swc1    $f0, 0x064C(s1)            # 0000064C
    sub.s   $f0, $f10, $f4
    lwc1    $f4, 0x0604(s1)            # 00000604
    lwc1    $f10, 0x067C(s1)           # 0000067C
    abs.s   $f0, $f0
    swc1    $f0, 0x0650(s1)            # 00000650
    sub.s   $f0, $f6, $f8
    mtc1    $zero, $f6                 # $f6 = 0.00
    abs.s   $f0, $f0
    swc1    $f6, 0x068C(s1)            # 0000068C
    swc1    $f0, 0x0654(s1)            # 00000654
    sub.s   $f0, $f10, $f4
    abs.s   $f0, $f0
    swc1    $f0, 0x0658(s1)            # 00000658
    lwc1    $f8, %lo(var_809E2B48)($at)
    swc1    $f8, 0x0690(s1)            # 00000690
    lw      a0, 0x0000(s2)             # 809E41E8
    jal     func_8008D21C
    addiu   a0, a0, 0x0558             # a0 = 00000558
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06000AAC
    mtc1    v0, $f10                   # $f10 = 0.00
    sh      $zero, 0x0140(s1)          # 00000140
    cvt.s.w $f4, $f10
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f4, 0x0194(s1)            # 00000194
var_809D6128:
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x009F($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      t1, 0x0000(s2)             # 809E41E8
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f16                  # $f16 = 350.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x0028(t1)            # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a1, $f16
    add.s   $f10, $f6, $f8
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a3, 0x0068(s1)             # 00000068
    swc1    $f10, 0x0678(s1)           # 00000678
    lw      a0, 0x0000(s2)             # 809E41E8
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     a3, 0x3F66                 # a3 = 3F660000
    ori     a3, a3, 0x6666             # a3 = 3F666666
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x4110                 # a1 = 41100000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0140(s1)             # 00000140
    slti    $at, v1, 0x001E
    bne     $at, $zero, lbl_809D6590
    andi    t8, v1, 0x0007             # t8 = 00000000
    slti    $at, v1, 0x002D
    beq     $at, $zero, lbl_809D620C
    lw      a0, 0x00A4($sp)
    lw      t2, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addu    $at, $at, t2
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lw      t4, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t4
    sb      t3, 0x0AE1($at)            # 00010AE1
    lw      t5, 0x00A4($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    beq     $zero, $zero, lbl_809D6228
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_809D620C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addu    a0, a0, $at
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
lbl_809D6228:
    lh      v1, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      s0, $zero, $zero           # s0 = 00000000
    bne     v1, $at, lbl_809D633C
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFD4
    lui     $at, 0x4248                # $at = 42480000
lbl_809D6240:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90
    nop
    lw      t6, 0x0000(s2)             # 809E41E8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f6, 0x0024(t6)            # 00000024
    add.s   $f8, $f0, $f6
    jal     func_80026D90
    swc1    $f8, 0x0074($sp)
    lw      t7, 0x0000(s2)             # 809E41E8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f10, 0x0028(t7)           # 00000028
    add.s   $f4, $f0, $f10
    jal     func_80026D90
    swc1    $f4, 0x0078($sp)
    lw      t8, 0x0000(s2)             # 809E41E8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    lwc1    $f6, 0x002C(t8)            # 0000002C
    add.s   $f8, $f0, $f6
    jal     func_80026D90
    swc1    $f8, 0x007C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0068($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x006C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64
    swc1    $f0, 0x0070($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lui     a3, %hi(var_809E27CC)      # a3 = 809E0000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    add.s   $f4, $f0, $f10
    sw      t9, 0x0014($sp)
    addiu   a3, a3, %lo(var_809E27CC)  # a3 = 809E27CC
    lw      a0, 0x00A4($sp)
    swc1    $f4, 0x0010($sp)
    or      a1, s3, $zero              # a1 = FFFFFFD4
    jal     func_809D1500
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFC8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809D6240
    lui     $at, 0x4248                # $at = 42480000
    lw      a0, 0x0000(s2)             # 809E41E8
    jal     func_80022FD0
    addiu   a1, $zero, 0x390D          # a1 = 0000390D
    lw      t0, 0x00A4($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t0
    swc1    $f6, 0x0AFC($at)           # 00010AFC
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D633C:
    slti    $at, v1, 0x0023
    bne     $at, $zero, lbl_809D656C
    slti    $at, v1, 0x0032
    beq     $at, $zero, lbl_809D63B0
    sll     a0, v1,  5
    addu    a0, a0, v1
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, %hi(var_809E2B4C)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2B4C)($at)
    mul.s   $f10, $f0, $f8
    lui     $at, %hi(var_809E2B50)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2B50)($at)
    lw      a0, 0x0000(s2)             # 809E41E8
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    lui     a2, 0x3F80                 # a2 = 3F800000
    div.s   $f6, $f10, $f4
    addiu   a0, a0, 0x0050             # a0 = 00000050
    add.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809D6464
    lw      s0, 0x0000(s2)             # 809E41E8
lbl_809D63B0:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_809D63EC
    lui     s0, 0x0601                 # s0 = 06010000
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   s0, s0, 0x88C8             # s0 = 060088C8
    or      a1, s0, $zero              # a1 = 060088C8
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C
    addiu   a0, a0, 0x0558             # a0 = 00000558
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060088C8
    mtc1    v0, $f4                    # $f4 = 0.00
    lh      v1, 0x0140(s1)             # 00000140
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0194(s1)            # 00000194
lbl_809D63EC:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_809D6400
    addiu   a1, $zero, 0x39B0          # a1 = 000039B0
    jal     func_80022FD0
    lw      a0, 0x0000(s2)             # 809E41E8
lbl_809D6400:
    lw      a0, 0x0000(s2)             # 809E41E8
    lw      a1, 0x0194(s1)             # 00000194
    jal     func_8008D6A8
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     v0, $zero, lbl_809D643C
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    nop
    swc1    $f8, 0x0194(s1)            # 00000194
lbl_809D643C:
    lw      a0, 0x0000(s2)             # 809E41E8
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCC             # a1 = 3CCCCCCC
    jal     func_80064280
    addiu   a0, a0, 0x0050             # a0 = 00000050
    lw      s0, 0x0000(s2)             # 809E41E8
lbl_809D6464:
    or      a0, s0, $zero              # a0 = 060088C8
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 06008918
    lw      t2, 0x0000(s2)             # 809E41E8
    addiu   t1, $zero, 0x8000          # t1 = FFFF8000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    sh      t1, 0x00B6(t2)             # 000000B6
    lw      t3, 0x0000(s2)             # 809E41E8
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    sb      s0, 0x05E8(t3)             # 000005E8
    lh      t4, 0x0140(s1)             # 00000140
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    bnel    a0, t4, lbl_809D71CC
    lh      a1, 0x05EC(s1)             # 000005EC
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t5, 0x05EA(s1)             # 000005EA
    sh      $zero, 0x0140(s1)          # 00000140
    swc1    $f10, 0x06A0(s1)           # 000006A0
    lw      t6, 0x0000(s3)             # 809E41E4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04A4             # a1 = 060004A4
    sb      s0, 0x0554(t6)             # 00000554
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 000005BC
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f12                  # $f12 = -30.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t7, 0x0000(s3)             # 809E41E4
    lui     $at, 0xC416                # $at = C4160000
    mtc1    $at, $f16                  # $f16 = -600.00
    lui     $at, 0x42A0                # $at = 42A00000
    swc1    $f4, 0x0024(t7)            # 00000024
    lw      t8, 0x0000(s3)             # 809E41E4
    mtc1    $at, $f6                   # $f6 = 80.00
    lui     $at, 0xC3EB                # $at = C3EB0000
    mtc1    $at, $f8                   # $f8 = -470.00
    swc1    $f6, 0x0028(t8)            # 00000028
    lw      t9, 0x0000(s3)             # 809E41E4
    lui     $at, 0x4387                # $at = 43870000
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f16, 0x002C(t9)           # 0000002C
    lw      t0, 0x0000(s3)             # 809E41E4
    mtc1    $at, $f4                   # $f4 = 270.00
    lui     a1, 0x3C75                 # a1 = 3C750000
    sh      $zero, 0x0032(t0)          # 00000032
    lw      s0, 0x0000(s3)             # 809E41E4
    ori     a1, a1, 0xC28E             # a1 = 3C75C28E
    lh      t1, 0x0032(s0)             # 00000033
    sh      t1, 0x00B6(s0)             # 000000B7
    sh      $zero, 0x0140(s1)          # 00000140
    swc1    $f2, 0x05F4(s1)            # 000005F4
    swc1    $f12, 0x05F0(s1)           # 000005F0
    swc1    $f16, 0x0604(s1)           # 00000604
    swc1    $f8, 0x05F8(s1)            # 000005F8
    swc1    $f10, 0x05FC(s1)           # 000005FC
    swc1    $f4, 0x0600(s1)            # 00000600
    jal     func_80020F88
    lw      a0, 0x0000(s3)             # 809E41E4
    beq     $zero, $zero, lbl_809D71CC
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D656C:
    lwc1    $f6, 0x06A0(s1)            # 000006A0
    lw      s0, 0x0000(s2)             # 809E41E8
    trunc.w.s $f8, $f6
    lh      t2, 0x00B6(s0)             # 000000B7
    mfc1    t6, $f8
    nop
    addu    t7, t2, t6
    beq     $zero, $zero, lbl_809D71C8
    sh      t7, 0x00B6(s0)             # 000000B7
lbl_809D6590:
    bne     t8, $zero, lbl_809D65A0
    addiu   a1, $zero, 0x3921          # a1 = 00003921
    jal     func_80022FD0
    lw      a0, 0x0000(s2)             # 809E41E8
lbl_809D65A0:
    lwc1    $f10, 0x06A0(s1)           # 000006A0
    lw      s0, 0x0000(s2)             # 809E41E8
    addiu   a0, s1, 0x06A0             # a0 = 000006A0
    trunc.w.s $f4, $f10
    lh      t9, 0x00B6(s0)             # 000000B7
    lui     a1, 0x4640                 # a1 = 46400000
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    t4, $f4
    lui     a3, 0x43C0                 # a3 = 43C00000
    addu    t5, t9, t4
    jal     func_80064280
    sh      t5, 0x00B6(s0)             # 000000B7
    lw      a0, 0x0000(s2)             # 809E41E8
    lw      a1, 0x0194(s1)             # 00000194
    jal     func_8008D6A8
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     v0, $zero, lbl_809D71C8
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0000(s2)             # 809E41E8
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f6, 0x0194(s1)            # 00000194
var_809D660C:
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      a0, 0x0000(s3)             # 809E41E4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lui     a1, 0x4370                 # a1 = 43700000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     $at, %hi(var_809E2B54)     # $at = 809E0000
    lwc1    $f0, %lo(var_809E2B54)($at)
    lwc1    $f8, 0x05F0(s1)            # 000005F0
    lwc1    $f4, 0x05F8(s1)            # 000005F8
    lh      t2, 0x0140(s1)             # 00000140
    sub.s   $f10, $f8, $f0
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    slti    $at, t2, 0x0033
    sub.s   $f6, $f4, $f0
    swc1    $f10, 0x05F0(s1)           # 000005F0
    bne     $at, $zero, lbl_809D71C8
    swc1    $f6, 0x05F8(s1)            # 000005F8
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f16, 0x05F0(s1)           # 000005F0
    lwc1    $f14, 0x05F4(s1)           # 000005F4
    lwc1    $f12, 0x05F8(s1)           # 000005F8
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f10                  # $f10 = 260.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f8                   # $f8 = -30.00
    lwc1    $f6, 0x05FC(s1)            # 000005FC
    lui     $at, %hi(var_809E2B58)     # $at = 809E0000
    sub.s   $f16, $f8, $f16
    lwc1    $f4, %lo(var_809E2B58)($at)
    swc1    $f8, 0x065C(s1)            # 0000065C
    lwc1    $f8, 0x0600(s1)            # 00000600
    abs.s   $f16, $f16
    sub.s   $f14, $f10, $f14
    swc1    $f10, 0x0660(s1)           # 00000660
    sh      t6, 0x05EA(s1)             # 000005EA
    swc1    $f4, 0x0664(s1)            # 00000664
    abs.s   $f14, $f14
    sub.s   $f12, $f4, $f12
    swc1    $f18, 0x0674(s1)           # 00000674
    lui     $at, %hi(var_809E2B5C)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2B5C)($at)
    abs.s   $f12, $f12
    sub.s   $f6, $f18, $f6
    swc1    $f4, 0x0678(s1)            # 00000678
    lwc1    $f4, 0x0678(s1)            # 00000678
    lwc1    $f10, 0x0604(s1)           # 00000604
    abs.s   $f6, $f6
    sub.s   $f8, $f4, $f8
    lui     $at, 0xC411                # $at = C4110000
    mtc1    $at, $f4                   # $f4 = -580.00
    swc1    $f16, 0x0644(s1)           # 00000644
    abs.s   $f8, $f8
    swc1    $f4, 0x067C(s1)            # 0000067C
    lwc1    $f4, 0x067C(s1)            # 0000067C
    swc1    $f14, 0x0648(s1)           # 00000648
    swc1    $f12, 0x064C(s1)           # 0000064C
    sub.s   $f10, $f4, $f10
    swc1    $f6, 0x0650(s1)            # 00000650
    swc1    $f8, 0x0654(s1)            # 00000654
    swc1    $f18, 0x068C(s1)           # 0000068C
    abs.s   $f10, $f10
    lui     $at, %hi(var_809E2B60)     # $at = 809E0000
    swc1    $f10, 0x0658(s1)           # 00000658
    lwc1    $f10, %lo(var_809E2B60)($at)
    sh      $zero, 0x0140(s1)          # 00000140
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f10, 0x0690(s1)           # 00000690
var_809D6734:
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    sb      t7, 0x009F($sp)
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lui     a1, 0x4370                 # a1 = 43700000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      a0, 0x00A4($sp)
    bne     v1, $at, lbl_809D67A4
    addiu   a1, $zero, 0x604A          # a1 = 0000604A
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D67A4:
    slti    $at, v1, 0x0051
    bne     $at, $zero, lbl_809D71C8
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $at, $f12                  # $f12 = -80.00
    lui     $at, 0xC3D7                # $at = C3D70000
    mtc1    $at, $f14                  # $f14 = -430.00
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      t8, 0x05EA(s1)             # 000005EA
    swc1    $f2, 0x0660(s1)            # 00000660
    swc1    $f12, 0x065C(s1)           # 0000065C
    swc1    $f14, 0x0664(s1)           # 00000664
    swc1    $f16, 0x0068(s1)           # 00000068
    lw      t0, 0x0000(s3)             # 809E41E4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f6, 0x0024(t0)            # 00000024
    lui     $at, %hi(var_809E2B64)     # $at = 809E0000
    lui     s0, 0x0600                 # s0 = 06000000
    swc1    $f6, 0x0674(s1)            # 00000674
    lw      t1, 0x0000(s3)             # 809E41E4
    addiu   s0, s0, 0x0AAC             # s0 = 06000AAC
    mfc1    a2, $f16
    lwc1    $f8, 0x0028(t1)            # 00000028
    or      a1, s0, $zero              # a1 = 06000AAC
    add.s   $f4, $f8, $f10
    lwc1    $f8, 0x05F0(s1)            # 000005F0
    lwc1    $f10, 0x05F4(s1)           # 000005F4
    sub.s   $f0, $f12, $f8
    swc1    $f4, 0x0678(s1)            # 00000678
    lw      t3, 0x0000(s3)             # 809E41E4
    lwc1    $f4, 0x05F8(s1)            # 000005F8
    abs.s   $f0, $f0
    lwc1    $f6, 0x002C(t3)            # 0000002C
    swc1    $f0, 0x0644(s1)            # 00000644
    sub.s   $f0, $f2, $f10
    swc1    $f6, 0x067C(s1)            # 0000067C
    lwc1    $f6, 0x0674(s1)            # 00000674
    lwc1    $f8, 0x05FC(s1)            # 000005FC
    abs.s   $f0, $f0
    lwc1    $f10, 0x0678(s1)           # 00000678
    swc1    $f0, 0x0648(s1)            # 00000648
    sub.s   $f0, $f14, $f4
    lwc1    $f4, 0x0600(s1)            # 00000600
    swc1    $f16, 0x068C(s1)           # 0000068C
    abs.s   $f0, $f0
    swc1    $f0, 0x064C(s1)            # 0000064C
    sub.s   $f0, $f6, $f8
    lwc1    $f8, 0x0604(s1)            # 00000604
    lwc1    $f6, 0x067C(s1)            # 0000067C
    abs.s   $f0, $f0
    swc1    $f0, 0x0650(s1)            # 00000650
    sub.s   $f0, $f10, $f4
    abs.s   $f0, $f0
    swc1    $f0, 0x0654(s1)            # 00000654
    sub.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x0658(s1)            # 00000658
    lwc1    $f10, %lo(var_809E2B64)($at)
    swc1    $f10, 0x0690(s1)           # 00000690
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_8008D21C
    addiu   a0, a0, 0x0558             # a0 = 00000558
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 06000AAC
    mtc1    v0, $f4                    # $f4 = 0.00
    sh      $zero, 0x0140(s1)          # 00000140
    cvt.s.w $f6, $f4
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f6, 0x0194(s1)            # 00000194
var_809D68C4:
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x009F($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lw      t4, 0x0000(s3)             # 809E41E4
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f16                  # $f16 = 350.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0028(t4)            # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a1, $f16
    add.s   $f4, $f8, $f10
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a3, 0x0068(s1)             # 00000068
    swc1    $f4, 0x0678(s1)            # 00000678
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 00000028
    lui     a3, 0x3F66                 # a3 = 3F660000
    ori     a3, a3, 0x6666             # a3 = 3F666666
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a1, 0x4110                 # a1 = 41100000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addiu   a0, s1, 0x068C             # a0 = 0000068C
    lh      v1, 0x0140(s1)             # 00000140
    slti    $at, v1, 0x001E
    bne     $at, $zero, lbl_809D6CB4
    andi    t3, v1, 0x0007             # t3 = 00000000
    slti    $at, v1, 0x002D
    beq     $at, $zero, lbl_809D69A0
    lw      a0, 0x00A4($sp)
    lw      t2, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addu    $at, $at, t2
    sb      t5, 0x0AE1($at)            # 00010AE1
    lw      t6, 0x00A4($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    beq     $zero, $zero, lbl_809D69BC
    swc1    $f6, 0x0AFC($at)           # 00010AFC
lbl_809D69A0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addu    a0, a0, $at
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
lbl_809D69BC:
    lh      v1, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      s0, $zero, $zero           # s0 = 00000000
    bne     v1, $at, lbl_809D6ACC
    addiu   s2, $sp, 0x005C            # s2 = FFFFFFBC
    lui     $at, 0x4248                # $at = 42480000
lbl_809D69D4:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90
    nop
    lw      t7, 0x0000(s3)             # 809E41E4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f8, 0x0024(t7)            # 00000024
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x005C($sp)
    lw      t8, 0x0000(s3)             # 809E41E4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f4, 0x0028(t8)            # 00000028
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0060($sp)
    lw      t0, 0x0000(s3)             # 809E41E4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    lwc1    $f8, 0x002C(t0)            # 0000002C
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0064($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0054($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64
    swc1    $f0, 0x0058($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lui     a3, %hi(var_809E27CC)      # a3 = 809E0000
    addiu   a3, a3, %lo(var_809E27CC)  # a3 = 809E27CC
    add.s   $f6, $f0, $f4
    lw      a0, 0x00A4($sp)
    or      a1, s2, $zero              # a1 = FFFFFFBC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFB0
    swc1    $f6, 0x0010($sp)
    jal     func_809D1500
    sw      $zero, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809D69D4
    lui     $at, 0x4248                # $at = 42480000
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_80022FD0
    addiu   a1, $zero, 0x390D          # a1 = 0000390D
    lw      t1, 0x00A4($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6ACC:
    slti    $at, v1, 0x0023
    bne     $at, $zero, lbl_809D6C90
    slti    $at, v1, 0x0032
    beq     $at, $zero, lbl_809D6B40
    sll     a0, v1,  5
    addu    a0, a0, v1
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     $at, %hi(var_809E2B68)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2B68)($at)
    mul.s   $f4, $f0, $f10
    lui     $at, %hi(var_809E2B6C)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2B6C)($at)
    lw      a0, 0x0000(s3)             # 809E41E4
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    lui     a2, 0x3F80                 # a2 = 3F800000
    div.s   $f8, $f4, $f6
    addiu   a0, a0, 0x0050             # a0 = 00000050
    add.s   $f4, $f8, $f10
    mfc1    a1, $f4
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809D6BF4
    lw      s0, 0x0000(s3)             # 809E41E4
lbl_809D6B40:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_809D6B7C
    lui     s0, 0x0601                 # s0 = 06010000
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   s0, s0, 0x88C8             # s0 = 060088C8
    or      a1, s0, $zero              # a1 = 060088C8
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C
    addiu   a0, a0, 0x0558             # a0 = 00000558
    jal     func_8008A194
    or      a0, s0, $zero              # a0 = 060088C8
    mtc1    v0, $f6                    # $f6 = 0.00
    lh      v1, 0x0140(s1)             # 00000140
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0194(s1)            # 00000194
lbl_809D6B7C:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_809D6B90
    addiu   a1, $zero, 0x39B1          # a1 = 000039B1
    jal     func_80022FD0
    lw      a0, 0x0000(s3)             # 809E41E4
lbl_809D6B90:
    lw      a0, 0x0000(s3)             # 809E41E4
    lw      a1, 0x0194(s1)             # 00000194
    jal     func_8008D6A8
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     v0, $zero, lbl_809D6BCC
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    nop
    swc1    $f10, 0x0194(s1)           # 00000194
lbl_809D6BCC:
    lw      a0, 0x0000(s3)             # 809E41E4
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCC             # a1 = 3CCCCCCC
    jal     func_80064280
    addiu   a0, a0, 0x0050             # a0 = 00000050
    lw      s0, 0x0000(s3)             # 809E41E4
lbl_809D6BF4:
    or      a0, s0, $zero              # a0 = 060088C8
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 06008918
    lw      t3, 0x0000(s3)             # 809E41E4
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    sh      $zero, 0x00B6(t3)          # 000000B6
    lw      t9, 0x0000(s3)             # 809E41E4
    lui     $at, 0x4416                # $at = 44160000
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      s0, 0x05E8(t9)             # 000005E8
    lh      t4, 0x0140(s1)             # 00000140
    bnel    a0, t4, lbl_809D71CC
    lh      a1, 0x05EC(s1)             # 000005EC
    mtc1    $at, $f14                  # $f14 = 600.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f8                   # $f8 = 400.00
    sh      t5, 0x05EA(s1)             # 000005EA
    sh      $zero, 0x0140(s1)          # 00000140
    lui     $at, %hi(var_809E2B70)     # $at = 809E0000
    swc1    $f14, 0x01A0(s1)           # 000001A0
    swc1    $f4, 0x05F0(s1)            # 000005F0
    swc1    $f6, 0x05F4(s1)            # 000005F4
    swc1    $f0, 0x05F8(s1)            # 000005F8
    swc1    $f0, 0x0604(s1)            # 00000604
    swc1    $f2, 0x05FC(s1)            # 000005FC
    swc1    $f8, 0x0600(s1)            # 00000600
    lwc1    $f10, %lo(var_809E2B70)($at)
    swc1    $f2, 0x019C(s1)            # 0000019C
    swc1    $f2, 0x0644(s1)            # 00000644
    swc1    $f2, 0x04C8(s1)            # 000004C8
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f10, 0x0198(s1)           # 00000198
lbl_809D6C90:
    lwc1    $f4, 0x06A0(s1)            # 000006A0
    lw      s0, 0x0000(s3)             # 809E41E4
    trunc.w.s $f6, $f4
    lh      t2, 0x00B6(s0)             # 000000B7
    mfc1    t0, $f6
    nop
    addu    t1, t2, t0
    beq     $zero, $zero, lbl_809D71C8
    sh      t1, 0x00B6(s0)             # 000000B7
lbl_809D6CB4:
    bne     t3, $zero, lbl_809D6CC4
    addiu   a1, $zero, 0x3921          # a1 = 00003921
    jal     func_80022FD0
    lw      a0, 0x0000(s3)             # 809E41E4
lbl_809D6CC4:
    lwc1    $f8, 0x06A0(s1)            # 000006A0
    lw      s0, 0x0000(s3)             # 809E41E4
    addiu   a0, s1, 0x06A0             # a0 = 000006A0
    trunc.w.s $f10, $f8
    lh      t9, 0x00B6(s0)             # 000000B7
    lui     a1, 0x4640                 # a1 = 46400000
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    t7, $f10
    lui     a3, 0x43C0                 # a3 = 43C00000
    addu    t8, t9, t7
    jal     func_80064280
    sh      t8, 0x00B6(s0)             # 000000B7
    lw      a0, 0x0000(s3)             # 809E41E4
    lw      a1, 0x0194(s1)             # 00000194
    jal     func_8008D6A8
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     v0, $zero, lbl_809D71C8
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0000(s3)             # 809E41E4
    addiu   a1, a1, 0x6F28             # a1 = 06006F28
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    beq     $zero, $zero, lbl_809D71C8
    swc1    $f4, 0x0194(s1)            # 00000194
var_809D6D30:
    lh      v1, 0x0140(s1)             # 00000140
    slti    $at, v1, 0x0015
    bne     $at, $zero, lbl_809D6D88
    slti    $at, v1, 0x0078
    beq     $at, $zero, lbl_809D6D88
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    lw      t2, 0x00A4($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2
    sb      s0, 0x0AE1($at)            # 00010AE1
    lw      a0, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3C75                 # a3 = 3C750000
    mfc1    a1, $f0
    mfc1    a2, $f0
    ori     a3, a3, 0xC28F             # a3 = 3C75C28F
    jal     func_80064280
    addu    a0, a0, $at
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6D88:
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v1, $at, lbl_809D6DA4
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    lui     a0, 0x105A                 # a0 = 105A0000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 105A00FF
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6DA4:
    addiu   $at, $zero, 0x0078         # $at = 00000078
    bne     v1, $at, lbl_809D6E68
    lui     v0, 0x0603                 # v0 = 06030000
    lw      t0, 0x00A4($sp)
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41E0)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t0
    sb      s0, 0x0AE2($at)            # 00010AE2
    lw      t1, 0x00A4($sp)
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addu    $at, $at, t1
    sb      s0, 0x0AE1($at)            # 00010AE1
    lw      t3, 0x00A4($sp)
    addiu   v0, v0, 0xE170             # v0 = 0602E170
    lui     $at, 0x0001                # $at = 00010000
    sll     t5, v0,  4
    srl     t6, t5, 28
    addu    $at, $at, t3
    sll     t9, t6,  2
    lui     t7, 0x8012                 # t7 = 80120000
    swc1    $f6, 0x0AFC($at)           # 00010AFC
    lui     $at, 0x00FF                # $at = 00FF0000
    addu    t7, t7, t9
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, v0, $at
    lw      a0, 0x00A4($sp)
    lui     $at, 0x8000                # $at = 80000000
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    addiu   t2, $zero, 0x00B4          # t2 = 000000B4
    addu    a2, t7, t8
    addu    a2, a2, $at
    sw      t2, 0x0010($sp)
    sw      t0, 0x0014($sp)
    sw      t1, 0x0018($sp)
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    jal     func_80020780
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0EE2(v0)             # 8011B4B2
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    ori     t4, t3, 0x0020             # t4 = 00000020
    jal     func_800CAA70
    sh      t4, 0x0EE2(v0)             # 8011B4B2
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6E68:
    slti    $at, v1, 0x00A0
    bne     $at, $zero, lbl_809D6EF0
    addiu   s0, s1, 0x05F0             # s0 = 000005F0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    v1, $at, lbl_809D6E90
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0644(s1)            # 00000644
    lui     $at, 0x3F00                # $at = 3F000000
lbl_809D6E90:
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f10, 0x0644(s1)           # 00000644
    addiu   s0, s1, 0x05F0             # s0 = 000005F0
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f6, $f10, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    or      a0, s0, $zero              # a0 = 000005F0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x05F8             # a0 = 000005F8
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280
    lw      a3, 0x0644(s1)             # 00000644
    addiu   a0, s1, 0x0644             # a0 = 00000644
    lui     a1, 0x4220                 # a1 = 42200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    beq     $zero, $zero, lbl_809D6F20
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6EF0:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    or      a0, s0, $zero              # a0 = 000005F0
    lui     a1, 0x4396                 # a1 = 43960000
    jal     func_80064280
    lw      a3, 0x0644(s1)             # 00000644
    addiu   a0, s1, 0x0644             # a0 = 00000644
    lui     a1, 0x40A0                 # a1 = 40A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D6F20:
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    slti    $at, v1, 0x00C8
    beq     $at, $zero, lbl_809D7090
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    jal     func_80022FD0
    lw      a0, 0x0000(s2)             # 809E41E8
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    lw      a0, 0x0000(s3)             # 809E41E4
    jal     func_80022FD0
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    lui     $at, 0x43C8                # $at = 43C80000
    lwc1    $f8, 0x01A0(s1)            # 000001A0
    mtc1    $at, $f10                  # $f10 = 400.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f8, 0x0090($sp)
    swc1    $f10, 0x0094($sp)
    swc1    $f4, 0x0098($sp)
    lwc1    $f12, 0x0198(s1)           # 00000198
    jal     func_800AAB94
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFE4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f0                   # $f0 = 32768.00
    lwc1    $f6, 0x0084($sp)
    lw      t5, 0x0000(s2)             # 809E41E8
    lui     $at, %hi(var_809E2B74)     # $at = 809E0000
    lwc1    $f2, %lo(var_809E2B74)($at)
    swc1    $f6, 0x0024(t5)            # 00000024
    lwc1    $f8, 0x0088($sp)
    lw      t6, 0x0000(s2)             # 809E41E8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    swc1    $f8, 0x0028(t6)            # 00000028
    lwc1    $f10, 0x008C($sp)
    lw      t9, 0x0000(s2)             # 809E41E8
    addiu   a0, s1, 0x01A0             # a0 = 000001A0
    lui     a1, 0x42A0                 # a1 = 42A00000
    swc1    $f10, 0x002C(t9)           # 0000002C
    lwc1    $f4, 0x0198(s1)            # 00000198
    lw      t8, 0x0000(s2)             # 809E41E8
    lui     a3, 0x40A0                 # a3 = 40A00000
    div.s   $f6, $f4, $f2
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    v0, $f10
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x00B6(t8)             # 000000B6
    lw      t2, 0x0000(s2)             # 809E41E8
    sh      v0, 0x0032(t2)             # 00000032
    lwc1    $f4, 0x0084($sp)
    lw      t0, 0x0000(s3)             # 809E41E4
    neg.s   $f6, $f4
    swc1    $f6, 0x0024(t0)            # 00000024
    lw      t1, 0x0000(s3)             # 809E41E4
    lwc1    $f8, 0x0088($sp)
    swc1    $f8, 0x0028(t1)            # 00000028
    lwc1    $f10, 0x008C($sp)
    lw      t3, 0x0000(s3)             # 809E41E4
    neg.s   $f4, $f10
    swc1    $f4, 0x002C(t3)            # 0000002C
    lwc1    $f6, 0x0198(s1)            # 00000198
    lw      t5, 0x0000(s3)             # 809E41E4
    div.s   $f8, $f6, $f2
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f0
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x0032(t5)             # 00000032
    lw      t6, 0x0000(s3)             # 809E41E4
    jal     func_80064280
    sh      v0, 0x00B6(t6)             # 000000B6
    lwc1    $f8, 0x0198(s1)            # 00000198
    lwc1    $f10, 0x019C(s1)           # 0000019C
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a3, 0x3B03                 # a3 = 3B030000
    sub.s   $f4, $f8, $f10
    ori     a3, a3, 0x126C             # a3 = 3B03126C
    ori     a1, a1, 0xCCCC             # a1 = 3E4CCCCC
    addiu   a0, s1, 0x019C             # a0 = 0000019C
    swc1    $f4, 0x0198(s1)            # 00000198
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D7090:
    lui     s2, %hi(var_809E41E8)      # s2 = 809E0000
    lui     s3, %hi(var_809E41E4)      # s3 = 809E0000
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    addiu   s3, s3, %lo(var_809E41E4)  # s3 = 809E41E4
    bne     v1, $at, lbl_809D7128
    addiu   s2, s2, %lo(var_809E41E8)  # s2 = 809E41E8
    lw      t9, 0x0000(s2)             # 809E41E8
    lui     v0, %hi(func_809D2750)     # v0 = 809D0000
    addiu   v0, v0, %lo(func_809D2750) # v0 = 809D2750
    sw      v0, 0x013C(t9)             # 0000013C
    lw      t7, 0x0000(s3)             # 809E41E4
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f14                  # $f14 = 600.00
    sw      v0, 0x013C(t7)             # 0000013C
    lw      t8, 0x0000(s2)             # 809E41E8
    lui     $at, 0xC416                # $at = C4160000
    mtc1    $at, $f16                  # $f16 = -600.00
    lui     $at, 0x43C8                # $at = 43C80000
    swc1    $f14, 0x04A0(t8)           # 000004A0
    lw      t2, 0x0000(s2)             # 809E41E8
    mtc1    $at, $f6                   # $f6 = 400.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    swc1    $f6, 0x04A4(t2)            # 000004A4
    lw      t0, 0x0000(s2)             # 809E41E8
    mtc1    $at, $f8                   # $f8 = 400.00
    swc1    $f0, 0x04A8(t0)            # 000004A8
    lw      t1, 0x0000(s2)             # 809E41E8
    sh      a0, 0x0168(t1)             # 00000168
    lw      t3, 0x0000(s3)             # 809E41E4
    swc1    $f16, 0x04A0(t3)           # 000004A0
    lw      t4, 0x0000(s3)             # 809E41E4
    swc1    $f8, 0x04A4(t4)            # 000004A4
    lw      t5, 0x0000(s3)             # 809E41E4
    swc1    $f0, 0x04A8(t5)            # 000004A8
    lw      t6, 0x0000(s3)             # 809E41E4
    sh      a0, 0x0168(t6)             # 00000168
    lh      v1, 0x0140(s1)             # 00000140
lbl_809D7128:
    addiu   $at, $zero, 0x0104         # $at = 00000104
    bne     v1, $at, lbl_809D71C8
    lw      a0, 0x00A4($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x0000(s0)             # 000005F0
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t7, 0x005C(v0)             # 0000005C
    lw      t9, 0x0004(s0)             # 000005F4
    sw      t9, 0x0060(v0)             # 00000060
    lw      t7, 0x0008(s0)             # 000005F8
    sw      t7, 0x0064(v0)             # 00000064
    lw      t2, 0x0000(s0)             # 000005F0
    sw      t2, 0x0074(v0)             # 00000074
    lw      t8, 0x0004(s0)             # 000005F4
    sw      t8, 0x0078(v0)             # 00000078
    lw      t2, 0x0008(s0)             # 000005F8
    sw      t2, 0x007C(v0)             # 0000007C
    lw      t1, 0x05FC(s1)             # 000005FC
    sw      t1, 0x0050(v0)             # 00000050
    lw      t0, 0x0600(s1)             # 00000600
    sw      t0, 0x0054(v0)             # 00000054
    lw      t1, 0x0604(s1)             # 00000604
    sw      t1, 0x0058(v0)             # 00000058
    lh      a1, 0x05EC(s1)             # 000005EC
    jal     func_8009D718
    lw      a0, 0x00A4($sp)
    lw      a0, 0x00A4($sp)
    sh      $zero, 0x05EC(s1)          # 000005EC
    lh      t3, 0x05EC(s1)             # 000005EC
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_80052340
    sh      t3, 0x05EA(s1)             # 000005EA
    lw      a0, 0x00A4($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809D4CE0
    lw      a1, 0x00A4($sp)
lbl_809D71C8:
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D71CC:
    lbu     t4, 0x009F($sp)
    beq     a1, $zero, lbl_809D72D0
    addiu   s0, s1, 0x05F0             # s0 = 000005F0
    beq     t4, $zero, lbl_809D72C0
    addiu   s3, s1, 0x05FC             # s3 = 000005FC
    lwc1    $f10, 0x0644(s1)           # 00000644
    lwc1    $f4, 0x068C(s1)            # 0000068C
    or      a0, s0, $zero              # a0 = 000005F0
    lw      a1, 0x065C(s1)             # 0000065C
    mul.s   $f6, $f10, $f4
    lw      a2, 0x0690(s1)             # 00000690
    addiu   s2, s1, 0x05F8             # s2 = 000005F8
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lwc1    $f8, 0x0648(s1)            # 00000648
    lwc1    $f10, 0x068C(s1)           # 0000068C
    addiu   a0, s1, 0x05F4             # a0 = 000005F4
    lw      a1, 0x0660(s1)             # 00000660
    mul.s   $f4, $f8, $f10
    lw      a2, 0x0690(s1)             # 00000690
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lwc1    $f6, 0x064C(s1)            # 0000064C
    lwc1    $f8, 0x068C(s1)            # 0000068C
    or      a0, s2, $zero              # a0 = 000005F8
    lw      a1, 0x0664(s1)             # 00000664
    mul.s   $f10, $f6, $f8
    lw      a2, 0x0690(s1)             # 00000690
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f4, 0x0650(s1)            # 00000650
    lwc1    $f6, 0x068C(s1)            # 0000068C
    or      a0, s3, $zero              # a0 = 000005FC
    lw      a1, 0x0674(s1)             # 00000674
    mul.s   $f8, $f4, $f6
    lw      a2, 0x0690(s1)             # 00000690
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lwc1    $f10, 0x0654(s1)           # 00000654
    lwc1    $f4, 0x068C(s1)            # 0000068C
    addiu   a0, s1, 0x0600             # a0 = 00000600
    lw      a1, 0x0678(s1)             # 00000678
    mul.s   $f6, $f10, $f4
    lw      a2, 0x0690(s1)             # 00000690
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lwc1    $f8, 0x0658(s1)            # 00000658
    lwc1    $f10, 0x068C(s1)           # 0000068C
    addiu   a0, s1, 0x0604             # a0 = 00000604
    lw      a1, 0x067C(s1)             # 0000067C
    mul.s   $f4, $f8, $f10
    lw      a2, 0x0690(s1)             # 00000690
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lh      a1, 0x05EC(s1)             # 000005EC
lbl_809D72C0:
    lw      a0, 0x00A4($sp)
    or      a2, s3, $zero              # a2 = 000005FC
    jal     func_8009D328
    or      a3, s0, $zero              # a3 = 000005F0
lbl_809D72D0:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_809D72EC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x000F             # t7 = 00000000
    bne     t7, $zero, lbl_809D731C
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x391E          # a1 = 0000391E
lbl_809D731C:
    lui     t8, %hi(var_809E41EC)      # t8 = 809E0000
    lw      t8, %lo(var_809E41EC)(t8)
    lh      t9, 0x05EA(t8)             # 809E05EA
    slti    $at, t9, 0x0002
    beql    $at, $zero, lbl_809D73CC
    lh      t5, 0x016A(s0)             # 0000016A
    lh      t0, 0x0168(s0)             # 00000168
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    lui     $at, 0x42C8                # $at = 42C80000
    bnel    t0, $zero, lbl_809D73A8
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f12                  # $f12 = 8192.00
    jal     func_80026D90
    sh      t1, 0x0168(s0)             # 00000168
    lui     t2, %hi(var_809E41EC)      # t2 = 809E0000
    lw      t2, %lo(var_809E41EC)(t2)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f4, 0x0024(t2)            # 809E0024
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x04A0(s0)            # 000004A0
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x04A4(s0)           # 000004A4
    lui     t3, %hi(var_809E41EC)      # t3 = 809E0000
    lw      t3, %lo(var_809E41EC)(t3)
    lwc1    $f18, 0x002C(t3)           # 809E002C
    add.s   $f4, $f0, $f18
    swc1    $f4, 0x04A8(s0)            # 000004A8
    lui     $at, 0x4600                # $at = 46000000
lbl_809D73A8:
    mtc1    $at, $f6                   # $f6 = 8192.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sh      t4, 0x016A(s0)             # 0000016A
    swc1    $f6, 0x04B8(s0)            # 000004B8
    beq     $zero, $zero, lbl_809D74EC
    swc1    $f8, 0x0068(s0)            # 00000068
    lh      t5, 0x016A(s0)             # 0000016A
lbl_809D73CC:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t5, $at, lbl_809D7434
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     $at, %hi(var_809E2B78)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2B78)($at)
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    swc1    $f10, 0x04A4(s0)           # 000004A4
    swc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f4, 0x0024(s0)            # 00000024
lbl_809D73FC:
    multu   v0, v1
    lw      t9, 0x0000(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0032
    mflo    t6
    addu    t7, s0, t6
    sw      t9, 0x01D8(t7)             # 000001D8
    lw      t8, 0x0004(a0)             # 00000028
    sw      t8, 0x01DC(t7)             # 000001DC
    lw      t9, 0x0008(a0)             # 0000002C
    bne     $at, $zero, lbl_809D73FC
    sw      t9, 0x01E0(t7)             # 000001E0
lbl_809D7434:
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0069         # $at = 00000069
    lui     v0, %hi(var_809E41E8)      # v0 = 809E0000
    bne     t0, $at, lbl_809D7464
    addiu   v0, v0, %lo(var_809E41E8)  # v0 = 809E41E8
    lw      t1, 0x0000(v0)             # 809E41E8
    lwc1    $f6, 0x0024(t1)            # 00000024
    swc1    $f6, 0x04A0(s0)            # 000004A0
    lw      t2, 0x0000(v0)             # 809E41E8
    lwc1    $f8, 0x002C(t2)            # 0000002C
    beq     $zero, $zero, lbl_809D7484
    swc1    $f8, 0x04A8(s0)            # 000004A8
lbl_809D7464:
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41E4)  # v0 = 809E41E4
    lw      t3, 0x0000(v0)             # 809E41E4
    lwc1    $f10, 0x0024(t3)           # 809E0024
    swc1    $f10, 0x04A0(s0)           # 000004A0
    lw      t4, 0x0000(v0)             # 809E41E4
    lwc1    $f18, 0x002C(t4)           # 00000036
    swc1    $f18, 0x04A8(s0)           # 000004A8
lbl_809D7484:
    lui     a1, 0x4383                 # a1 = 43830000
    ori     a1, a1, 0x8000             # a1 = 43838000
    addiu   a0, s0, 0x04A4             # a0 = 000004A4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lui     $at, %hi(var_809E2B7C)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2B7C)($at)
    lwc1    $f6, 0x04A4(s0)            # 000004A4
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    c.eq.s  $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    bc1fl   lbl_809D74F0
    lwc1    $f18, 0x04A4(s0)           # 000004A4
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lui     t5, %hi(var_809E41EC)      # t5 = 809E0000
    lw      t5, %lo(var_809E41EC)(t5)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t6, 0x05EA(t5)             # 809E05EA
    bnel    t6, $at, lbl_809D74F0
    lwc1    $f18, 0x04A4(s0)           # 000004A4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_809D74EC:
    lwc1    $f18, 0x04A4(s0)           # 000004A4
lbl_809D74F0:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x04A0(s0)            # 000004A0
    lwc1    $f10, 0x0024(s0)           # 00000024
    sub.s   $f6, $f18, $f4
    sub.s   $f12, $f8, $f10
    swc1    $f6, 0x0030($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f8, 0x04A8(s0)            # 000004A8
    swc1    $f12, 0x0034($sp)
    sub.s   $f14, $f8, $f10
    jal     func_800CD76C
    swc1    $f14, 0x002C($sp)
    lui     $at, %hi(var_809E2B80)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2B80)($at)
    lwc1    $f2, 0x0034($sp)
    lwc1    $f16, 0x002C($sp)
    mul.s   $f4, $f0, $f18
    lwc1    $f12, 0x0030($sp)
    mul.s   $f8, $f2, $f2
    nop
    mul.s   $f10, $f16, $f16
    trunc.w.s $f6, $f4
    add.s   $f0, $f8, $f10
    mfc1    t8, $f6
    sqrt.s  $f14, $f0
    jal     func_800CD76C
    sh      t8, 0x0024($sp)
    lui     $at, %hi(var_809E2B84)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2B84)($at)
    lwc1    $f8, 0x04B8(s0)            # 000004B8
    addiu   a0, s0, 0x0030             # a0 = 00000030
    mul.s   $f4, $f0, $f18
    trunc.w.s $f10, $f8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f10
    trunc.w.s $f6, $f4
    sll     a3, a3, 16
    sra     a3, a3, 16
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    jal     func_80064624
    sra     a1, a1, 16
    lwc1    $f18, 0x04B8(s0)           # 000004B8
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x0024($sp)
    trunc.w.s $f4, $f18
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f4
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    jal     func_80021248
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809D75E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     t6, %hi(func_809D7EC4)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D7EC4) # t6 = 809D7EC4
    lui     a1, 0x0602                 # a1 = 06020000
    sw      t6, 0x013C(s0)             # 0000013C
    addiu   a1, a1, 0x4374             # a1 = 06024374
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    lw      t8, 0x0004(s0)             # 00000004
    sh      $zero, 0x0430(s0)          # 00000430
    sh      $zero, 0x0142(s0)          # 00000142
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      t0, 0x0430(s0)             # 00000430
    lh      t1, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t2, $zero, 0x2710          # t2 = 00002710
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    sh      t2, 0x014A(s0)             # 0000014A
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    sh      t7, 0x0032(s0)             # 00000032
    sh      t0, 0x05EA(s0)             # 000005EA
    sh      t1, 0x0140(s0)             # 00000140
    lw      a1, 0x0024($sp)
    jal     func_809D58A8
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_809D58A8
    lw      a1, 0x0024($sp)
    lui     t4, %hi(var_809E41E4)      # t4 = 809E0000
    lw      t4, %lo(var_809E41E4)(t4)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    sh      t3, 0x0168(t4)             # 809E0168
    swc1    $f4, 0x01C0(s0)            # 000001C0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809D76A4:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    sh      $zero, 0x0038($sp)
    sb      $zero, 0x0037($sp)
    sb      $zero, 0x0036($sp)
    sb      $zero, 0x0035($sp)
    lh      v0, 0x0142(s0)             # 00000142
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    bne     a2, v0, lbl_809D76E4
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0036($sp)
lbl_809D76E4:
    bne     a2, v0, lbl_809D76F4
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addiu   v1, $zero, 0x604B          # v1 = 0000604B
    sb      t7, 0x0035($sp)
lbl_809D76F4:
    bne     v0, $at, lbl_809D7708
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x0037($sp)
    sb      t8, 0x0036($sp)
lbl_809D7708:
    addiu   $at, $zero, 0x00AA         # $at = 000000AA
    bnel    v0, $at, lbl_809D7754
    addiu   $at, $zero, 0x00D2         # $at = 000000D2
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41E4)  # v0 = 809E41E4
    lw      t2, 0x0000(v0)             # 809E41E4
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x0037($sp)
    addiu   t1, $zero, 0xC000          # t1 = FFFFC000
    sh      t1, 0x0154(t2)             # 00000154
    lw      t3, 0x0000(v0)             # 809E41E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, $zero, 0x39B4          # a1 = 000039B4
    swc1    $f4, 0x04B8(t3)            # 000004B8
    jal     func_80022FD0
    lw      a0, 0x0000(v0)             # 809E41E4
    addiu   v1, $zero, 0x604C          # v1 = 0000604C
    lh      v0, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x00D2         # $at = 000000D2
lbl_809D7754:
    bne     v0, $at, lbl_809D7768
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    lui     $at, %hi(var_809E4214)     # $at = 809E0000
    sh      t4, %lo(var_809E4214)($at)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7768:
    addiu   $at, $zero, 0x010E         # $at = 0000010E
    bnel    v0, $at, lbl_809D77B8
    addiu   $at, $zero, 0x0122         # $at = 00000122
    lui     v0, %hi(var_809E41E8)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41E8)  # v0 = 809E41E8
    lw      t7, 0x0000(v0)             # 809E41E8
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x0036($sp)
    addiu   t6, $zero, 0x4000          # t6 = 00004000
    sh      t6, 0x0154(t7)             # 00000154
    lw      t8, 0x0000(v0)             # 809E41E8
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a1, $zero, 0x39B4          # a1 = 000039B4
    swc1    $f6, 0x04B8(t8)            # 000004B8
    sh      v1, 0x003A($sp)
    jal     func_80022FD0
    lw      a0, 0x0000(v0)             # 809E41E8
    lh      v1, 0x003A($sp)
    lh      v0, 0x0142(s0)             # 00000142
    addiu   $at, $zero, 0x0122         # $at = 00000122
lbl_809D77B8:
    bne     v0, $at, lbl_809D77C8
    addiu   t9, $zero, 0x0023          # t9 = 00000023
    addiu   v1, $zero, 0x604D          # v1 = 0000604D
    sb      t9, 0x0035($sp)
lbl_809D77C8:
    addiu   $at, $zero, 0x015E         # $at = 0000015E
    bne     v0, $at, lbl_809D7830
    lui     t2, %hi(var_809E41E4)      # t2 = 809E0000
    lw      t2, %lo(var_809E41E4)(t2)
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x0036($sp)
    sb      t0, 0x0037($sp)
    lui     t3, %hi(var_809E41E4)      # t3 = 809E0000
    sh      $zero, 0x0154(t2)          # 809E0154
    lw      t3, %lo(var_809E41E4)(t3)
    lui     t5, %hi(var_809E41E8)      # t5 = 809E0000
    lw      t5, %lo(var_809E41E8)(t5)
    lh      t4, 0x0154(t3)             # 809E0154
    lui     t6, %hi(var_809E41E4)      # t6 = 809E0000
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t4, 0x0154(t5)             # 809E0154
    lw      t6, %lo(var_809E41E4)(t6)
    lui     t7, %hi(var_809E41E4)      # t7 = 809E0000
    lui     t8, %hi(var_809E41E8)      # t8 = 809E0000
    swc1    $f8, 0x04B8(t6)            # 809E04B8
    lw      t7, %lo(var_809E41E4)(t7)
    lw      t8, %lo(var_809E41E8)(t8)
    lwc1    $f10, 0x04B8(t7)           # 809E04B8
    swc1    $f10, 0x04B8(t8)           # 809E04B8
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7830:
    addiu   $at, $zero, 0x017C         # $at = 0000017C
    bne     v0, $at, lbl_809D7848
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x0036($sp)
    sb      t9, 0x0037($sp)
lbl_809D7848:
    addiu   $at, $zero, 0x0190         # $at = 00000190
    bne     v0, $at, lbl_809D7860
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t2, 0x0036($sp)
    sb      t1, 0x0037($sp)
lbl_809D7860:
    addiu   $at, $zero, 0x01AE         # $at = 000001AE
    bne     v0, $at, lbl_809D788C
    addiu   t4, $zero, 0x01B3          # t4 = 000001B3
    lui     $at, %hi(var_809E4214)     # $at = 809E0000
    sh      t4, %lo(var_809E4214)($at)
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    lui     $at, %hi(var_809E4218)     # $at = 809E0000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t3, 0x0036($sp)
    sb      t5, %lo(var_809E4218)($at)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D788C:
    slti    $at, v0, 0x01B9
    bne     $at, $zero, lbl_809D78B0
    slti    $at, v0, 0x035C
    beq     $at, $zero, lbl_809D78B0
    addiu   a0, $zero, 0x31E7          # a0 = 000031E7
    jal     func_800646F0
    sh      v1, 0x003A($sp)
    lh      v1, 0x003A($sp)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D78B0:
    addiu   $at, $zero, 0x01AE         # $at = 000001AE
    bne     v0, $at, lbl_809D78C0
    addiu   a0, $zero, 0x01E0          # a0 = 000001E0
    addiu   v1, $zero, 0x604E          # v1 = 0000604E
lbl_809D78C0:
    bne     a0, v0, lbl_809D78E4
    addiu   $at, $zero, 0x01F4         # $at = 000001F4
    lui     t8, %hi(var_809E41E4)      # t8 = 809E0000
    lw      t8, %lo(var_809E41E4)(t8)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sb      t6, 0x0037($sp)
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    sh      t7, 0x0154(t8)             # 809E0154
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D78E4:
    bne     v0, $at, lbl_809D78F0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x0036($sp)
lbl_809D78F0:
    bne     a0, v0, lbl_809D78FC
    addiu   t0, $zero, 0x604F          # t0 = 0000604F
    sh      t0, 0x0038($sp)
lbl_809D78FC:
    addiu   a0, $zero, 0x0212          # a0 = 00000212
    bne     a0, v0, lbl_809D7938
    lui     t3, %hi(var_809E41E8)      # t3 = 809E0000
    lw      t3, %lo(var_809E41E8)(t3)
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sb      t1, 0x0036($sp)
    addiu   t2, $zero, 0x4000          # t2 = 00004000
    addiu   t4, $zero, 0x014F          # t4 = 0000014F
    lui     $at, %hi(var_809E421A)     # $at = 809E0000
    sh      t2, 0x0154(t3)             # 809E0154
    sh      t4, %lo(var_809E421A)($at)
    lui     $at, %hi(var_809E421E)     # $at = 809E0000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, %lo(var_809E421E)($at)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7938:
    bne     a0, v0, lbl_809D7944
    addiu   $at, $zero, 0x0244         # $at = 00000244
    addiu   v1, $zero, 0x6050          # v1 = 00006050
lbl_809D7944:
    bne     v0, $at, lbl_809D7950
    addiu   t6, $zero, 0x6051          # t6 = 00006051
    sh      t6, 0x0038($sp)
lbl_809D7950:
    addiu   $at, $zero, 0x026C         # $at = 0000026C
    bnel    v0, $at, lbl_809D7964
    addiu   $at, $zero, 0x0294         # $at = 00000294
    addiu   v1, $zero, 0x6052          # v1 = 00006052
    addiu   $at, $zero, 0x0294         # $at = 00000294
lbl_809D7964:
    bne     v0, $at, lbl_809D7970
    addiu   t7, $zero, 0x6053          # t7 = 00006053
    sh      t7, 0x0038($sp)
lbl_809D7970:
    addiu   $at, $zero, 0x02BC         # $at = 000002BC
    bnel    v0, $at, lbl_809D7984
    addiu   $at, $zero, 0x02E4         # $at = 000002E4
    addiu   v1, $zero, 0x6054          # v1 = 00006054
    addiu   $at, $zero, 0x02E4         # $at = 000002E4
lbl_809D7984:
    bne     v0, $at, lbl_809D7990
    addiu   t8, $zero, 0x6055          # t8 = 00006055
    sh      t8, 0x0038($sp)
lbl_809D7990:
    addiu   $at, $zero, 0x030C         # $at = 0000030C
    bnel    v0, $at, lbl_809D79A4
    addiu   $at, $zero, 0x0334         # $at = 00000334
    addiu   v1, $zero, 0x6056          # v1 = 00006056
    addiu   $at, $zero, 0x0334         # $at = 00000334
lbl_809D79A4:
    bne     v0, $at, lbl_809D79C8
    addiu   t9, $zero, 0x6057          # t9 = 00006057
    lui     a0, 0x1050                 # a0 = 10500000
    sh      t9, 0x0038($sp)
    ori     a0, a0, 0x00FF             # a0 = 105000FF
    jal     func_800CAA70
    sh      v1, 0x003A($sp)
    lh      v1, 0x003A($sp)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D79C8:
    addiu   $at, $zero, 0x035C         # $at = 0000035C
    bne     v0, $at, lbl_809D79E0
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t1, 0x0036($sp)
    sb      t0, 0x0037($sp)
lbl_809D79E0:
    addiu   $at, $zero, 0x0384         # $at = 00000384
    bne     v0, $at, lbl_809D7A14
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    addiu   a1, $zero, 0x39B5          # a1 = 000039B5
    jal     func_80022FD0
    sh      v1, 0x003A($sp)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B5          # a1 = 000039B5
    lh      v1, 0x003A($sp)
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7A14:
    addiu   $at, $zero, 0x03A2         # $at = 000003A2
    bne     v0, $at, lbl_809D7A24
    lw      a0, 0x004C($sp)
    addiu   v1, $zero, 0x6058          # v1 = 00006058
lbl_809D7A24:
    beq     v1, $zero, lbl_809D7A5C
    andi    a1, v1, 0xFFFF             # a1 = 00006058
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t2, 0x0035($sp)
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    lui     $at, %hi(var_809E4216)     # $at = 809E0000
    beql    t2, $zero, lbl_809D7A60
    lh      t4, 0x0038($sp)
    sh      t3, %lo(var_809E4216)($at)
    lui     $at, %hi(var_809E4214)     # $at = 809E0000
    sh      t2, %lo(var_809E4214)($at)
    lui     $at, %hi(var_809E4218)     # $at = 809E0000
    sb      $zero, %lo(var_809E4218)($at)
lbl_809D7A5C:
    lh      t4, 0x0038($sp)
lbl_809D7A60:
    lw      a0, 0x004C($sp)
    lhu     a1, 0x0038($sp)
    beql    t4, $zero, lbl_809D7A7C
    lbu     v0, 0x0037($sp)
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     v0, 0x0037($sp)
lbl_809D7A7C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    beq     v0, $at, lbl_809D7AB8
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809D7AD4
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809D7AF4
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809D7B14
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    beq     $zero, $zero, lbl_809D7B30
    lbu     v0, 0x0036($sp)
lbl_809D7AB8:
    lw      a0, %lo(var_809E41E4)(a0)
    addiu   a1, a1, 0x230C             # a1 = 0600230C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 809E0558
    beq     $zero, $zero, lbl_809D7B30
    lbu     v0, 0x0036($sp)
lbl_809D7AD4:
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1D10             # a1 = 06001D10
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     $zero, $zero, lbl_809D7B30
    lbu     v0, 0x0036($sp)
lbl_809D7AF4:
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x17E0             # a1 = 060017E0
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     $zero, $zero, lbl_809D7B30
    lbu     v0, 0x0036($sp)
lbl_809D7B14:
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x12A4             # a1 = 060012A4
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lbu     v0, 0x0036($sp)
lbl_809D7B30:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    beq     v0, $at, lbl_809D7B6C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809D7B88
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809D7BA8
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809D7BC8
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    beq     $zero, $zero, lbl_809D7BE4
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7B6C:
    lw      a0, %lo(var_809E41E8)(a0)
    addiu   a1, a1, 0x230C             # a1 = 0600230C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 809E0558
    beq     $zero, $zero, lbl_809D7BE4
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7B88:
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1D10             # a1 = 06001D10
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     $zero, $zero, lbl_809D7BE4
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7BA8:
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x17E0             # a1 = 060017E0
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    beq     $zero, $zero, lbl_809D7BE4
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7BC8:
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x12A4             # a1 = 060012A4
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x0558             # a0 = 00000558
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7BE4:
    slti    $at, v0, 0x0078
    bne     $at, $zero, lbl_809D7C10
    slti    $at, v0, 0x01F4
    beq     $at, $zero, lbl_809D7C10
    addiu   a0, s0, 0x01BC             # a0 = 000001BC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lh      v0, 0x0142(s0)             # 00000142
lbl_809D7C10:
    slti    $at, v0, 0x0096
    bnel    $at, $zero, lbl_809D7EB4
    lw      $ra, 0x001C($sp)
    lh      a0, 0x0140(s0)             # 00000140
    addu    $at, a0, $zero
    sll     a0, a0,  5
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  4
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_809E2B88)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2B88)($at)
    lui     $at, %hi(var_809E2B8C)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2B8C)($at)
    mul.s   $f18, $f0, $f16
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f6, $f18, $f4
    addiu   a0, a0, 0x01B8             # a0 = 809E01B8
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lh      a0, 0x0140(s0)             # 00000140
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, %hi(var_809E2B90)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2B90)($at)
    lui     $at, %hi(var_809E2B94)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2B94)($at)
    mul.s   $f10, $f0, $f8
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f18, $f10, $f16
    addiu   a0, a0, 0x01B8             # a0 = 809E01B8
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lh      v0, 0x0142(s0)             # 00000142
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    slti    $at, v0, 0x0370
    bne     $at, $zero, lbl_809D7DAC
    sll     a0, v0,  2
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lw      a3, 0x0068(s0)             # 00000068
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 809E0028
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0068(s0)             # 00000068
    jal     func_80064280
    addiu   a0, a0, 0x0028             # a0 = 809E0028
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x3E80                 # a3 = 3E800000
    lh      t5, 0x0142(s0)             # 00000142
    addiu   a0, s0, 0x01C0             # a0 = 000001C0
    lui     a1, 0x40A0                 # a1 = 40A00000
    slti    $at, t5, 0x03A2
    bne     $at, $zero, lbl_809D7D98
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    addiu   t6, s0, 0x01BC             # t6 = 000001BC
    sw      t6, 0x0024($sp)
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
lbl_809D7D98:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2086          # a1 = 00002086
    beq     $zero, $zero, lbl_809D7EB4
    lw      $ra, 0x001C($sp)
lbl_809D7DAC:
    subu    a0, a0, v0
    sll     a0, a0,  2
    addu    a0, a0, v0
    sll     a0, a0,  2
    addu    a0, a0, v0
    sll     a0, a0,  3
    addu    a0, a0, v0
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, %hi(var_809E2B98)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2B98)($at)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mul.s   $f8, $f0, $f6
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a3, 0x0068(s0)             # 00000068
    addiu   a0, a0, 0x0028             # a0 = 809E0028
    add.s   $f10, $f4, $f8
    add.s   $f18, $f10, $f16
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lh      a0, 0x0142(s0)             # 00000142
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_809E2B9C)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2B9C)($at)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mul.s   $f8, $f0, $f4
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a3, 0x0068(s0)             # 00000068
    addiu   a0, a0, 0x0028             # a0 = 809E0028
    add.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x001C($sp)
lbl_809D7EB4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_809D7EC4:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t6, 0x1C44(s3)             # 00001C44
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D2F0
    sw      t6, 0x00CC($sp)
    addiu   s0, s2, 0x0558             # s0 = 00000558
    sw      v0, 0x00C8($sp)
    jal     func_8008C9C0
    or      a0, s0, $zero              # a0 = 00000558
    lh      t7, 0x0150(s2)             # 00000150
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   a0, s2, 0x01A4             # a0 = 000001A4
    addiu   t8, t7, 0x0014             # t8 = 00000014
    sh      t8, 0x0150(s2)             # 00000150
    lh      t9, 0x0150(s2)             # 00000150
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    slti    $at, t9, 0x0100
    bne     $at, $zero, lbl_809D7F3C
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    sh      t0, 0x0150(s2)             # 00000150
lbl_809D7F3C:
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lh      v0, 0x0430(s2)             # 00000430
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x05E8(s2)             # 000005E8
    beq     v0, $zero, lbl_809D7F68
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_809D8280
    lhu     t7, 0x05EA(s2)             # 000005EA
    beq     $zero, $zero, lbl_809D8280
    lhu     t7, 0x05EA(s2)             # 000005EA
lbl_809D7F68:
    lh      v0, 0x0140(s2)             # 00000140
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, s0, $zero              # a0 = 00000558
    bne     v0, $at, lbl_809D7F8C
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x16DC             # a1 = 060216DC
    jal     func_8008D21C
    lui     a2, 0xC040                 # a2 = C0400000
    lh      v0, 0x0140(s2)             # 00000140
lbl_809D7F8C:
    slti    $at, v0, 0x000F
    bne     $at, $zero, lbl_809D7FB0
    addiu   a0, s2, 0x0028             # a0 = 00000028
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lui     a1, 0x43C8                 # a1 = 43C80000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lh      v0, 0x0140(s2)             # 00000140
lbl_809D7FB0:
    slti    $at, v0, 0x0037
    bne     $at, $zero, lbl_809D8270
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v0, $at, lbl_809D7FD8
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_809D7FD8:
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      t2, %lo(var_809E41E0)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      t3, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3C75                 # a3 = 3C750000
    ori     a3, a3, 0xC28F             # a3 = 3C75C28F
    addu    a0, s3, $at
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a1, 0x3983                 # a1 = 39830000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3851                 # a3 = 38510000
    ori     a3, a3, 0xB717             # a3 = 3851B717
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x126E             # a1 = 3983126E
    jal     func_80064280
    addiu   a0, s2, 0x0050             # a0 = 00000050
    lwc1    $f0, 0x0068(s2)            # 00000068
    lwc1    $f8, 0x01A8(s2)            # 000001A8
    lui     $at, 0x4780                # $at = 47800000
    trunc.w.s $f6, $f0
    mtc1    $at, $f12                  # $f12 = 65536.00
    lh      t4, 0x00B6(s2)             # 000000B6
    add.s   $f10, $f8, $f0
    mfc1    t8, $f6
    swc1    $f10, 0x01A8(s2)           # 000001A8
    lwc1    $f2, 0x01A8(s2)            # 000001A8
    addu    t9, t4, t8
    sh      t9, 0x00B6(s2)             # 000000B6
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_809D8090
    addiu   a0, s2, 0x0068             # a0 = 00000068
    sub.s   $f16, $f2, $f12
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3921          # a1 = 00003921
    jal     func_80022FD0
    swc1    $f16, 0x01A8(s2)           # 000001A8
    addiu   a0, s2, 0x0068             # a0 = 00000068
lbl_809D8090:
    lui     a1, 0x4640                 # a1 = 46400000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4380                 # a3 = 43800000
    lh      t0, 0x0140(s2)             # 00000140
    addiu   $at, $zero, 0x0087         # $at = 00000087
    addiu   t1, $sp, 0x00A4            # t1 = FFFFFFC4
    bne     t0, $at, lbl_809D8270
    lui     t2, %hi(var_809E28D8)      # t2 = 809E0000
    addiu   t2, t2, %lo(var_809E28D8)  # t2 = 809E28D8
    lw      t5, 0x0000(t2)             # 809E28D8
    lw      t3, 0x0004(t2)             # 809E28DC
    addiu   a0, $zero, 0x390D          # a0 = 0000390D
    sw      t5, 0x0000(t1)             # FFFFFFC4
    lw      t5, 0x0008(t2)             # 809E28E0
    sw      t3, 0x0004(t1)             # FFFFFFC8
    jal     func_800646F0
    sw      t5, 0x0008(t1)             # FFFFFFCC
    addiu   t6, s2, 0x0024             # t6 = 00000024
    sw      t6, 0x0064($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $sp, 0x00BC            # s1 = FFFFFFDC
    lui     $at, 0x40A0                # $at = 40A00000
lbl_809D80EC:
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    swc1    $f0, 0x00B0($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    swc1    $f0, 0x00B4($sp)
    lw      t7, 0x0064($sp)
    swc1    $f0, 0x00B8($sp)
    lui     $at, 0x4000                # $at = 40000000
    lw      t8, 0x0000(t7)             # 00000000
    mtc1    $at, $f12                  # $f12 = 2.00
    sw      t8, 0x0000(s1)             # FFFFFFDC
    lw      t4, 0x0004(t7)             # 00000004
    sw      t4, 0x0004(s1)             # FFFFFFE0
    lw      t8, 0x0008(t7)             # 00000008
    sw      t8, 0x0008(s1)             # FFFFFFE4
    lwc1    $f18, 0x00BC($sp)
    lwc1    $f4, 0x00B0($sp)
    lwc1    $f8, 0x00C0($sp)
    lwc1    $f10, 0x00B4($sp)
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x00C4($sp)
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x00BC($sp)
    add.s   $f4, $f18, $f0
    swc1    $f16, 0x00C0($sp)
    jal     func_80026D64
    swc1    $f4, 0x00C4($sp)
    lui     $at, %hi(var_809E2BA0)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2BA0)($at)
    jal     func_80026D64
    mov.s   $f20, $f0
    lui     $at, 0x40A0                # $at = 40A00000
    trunc.w.s $f10, $f0
    mtc1    $at, $f6                   # $f6 = 5.00
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFDC
    add.s   $f8, $f20, $f6
    mfc1    t0, $f10
    addiu   a2, $sp, 0x00B0            # a2 = FFFFFFD0
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFC4
    swc1    $f8, 0x0010($sp)
    jal     func_809D1500
    sw      t0, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0064
    bnel    $at, $zero, lbl_809D80EC
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0024(s2)           # 00000024
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x0430(s2)             # 00000430
    sb      $zero, 0x0554(s2)          # 00000554
    swc1    $f16, 0x0050(s2)           # 00000050
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0028(s2)            # 00000028
    addiu   s0, s3, 0x1C24             # s0 = 00001C24
    addiu   t2, $zero, 0x0069          # t2 = 00000069
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s2)            # 0000002C
    sw      t2, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0024(s2)            # 00000024
    addiu   t3, $zero, 0x0068          # t3 = 00000068
    or      a0, s0, $zero              # a0 = 00001C24
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s2)           # 00000028
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s2)           # 0000002C
    sw      t3, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lw      t5, 0x0004(s2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t6, t5, $at
    sw      t6, 0x0004(s2)             # 00000004
lbl_809D8270:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s2)             # 00000050
    lhu     t7, 0x05EA(s2)             # 000005EA
lbl_809D8280:
    sltiu   $at, t7, 0x0005
    beq     $at, $zero, lbl_809D8B7C
    sll     t7, t7,  2
    lui     $at, %hi(var_809E2BA4)     # $at = 809E0000
    addu    $at, $at, t7
    lw      t7, %lo(var_809E2BA4)($at)
    jr      t7
    nop
var_809D82A0:
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t4, 0x05EA(s2)             # 000005EA
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s3, 0x1D64             # a1 = 00001D64
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0
    or      a0, s3, $zero              # a0 = 00000000
    sh      v0, 0x05EC(s2)             # 000005EC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    lh      a1, 0x05EC(s2)             # 000005EC
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      v1, 0x00C8($sp)
    lui     a0, 0x1001                 # a0 = 10010000
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lw      t9, 0x005C(v1)             # 0000005C
    sw      t9, 0x05F0(s2)             # 000005F0
    lw      t8, 0x0060(v1)             # 00000060
    sw      t8, 0x05F4(s2)             # 000005F4
    lw      t9, 0x0064(v1)             # 00000064
    sw      t9, 0x05F8(s2)             # 000005F8
    lw      t1, 0x0050(v1)             # 00000050
    sw      t1, 0x05FC(s2)             # 000005FC
    lw      t0, 0x0054(v1)             # 00000054
    sw      t0, 0x0600(s2)             # 00000600
    lw      t1, 0x0058(v1)             # 00000058
    jal     func_800CAA70
    sw      t1, 0x0604(s2)             # 00000604
    beq     $zero, $zero, lbl_809D8B80
    lh      a1, 0x05EC(s2)             # 000005EC
var_809D8338:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s2)             # 00000032
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    nop
    mul.s   $f4, $f0, $f18
    swc1    $f4, 0x00D0($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s2)             # 00000032
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f16, 0x00D0($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f0, $f6
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x05F0             # a0 = 000005F0
    swc1    $f8, 0x00D8($sp)
    lwc1    $f10, 0x0024(s2)           # 00000024
    add.s   $f18, $f10, $f16
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x05F4             # a0 = 000005F4
    jal     func_80064280
    lui     a1, 0x4396                 # a1 = 43960000
    lwc1    $f4, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x00D8($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20
    add.s   $f8, $f4, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x05F8             # a0 = 000005F8
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x05FC             # a0 = 000005FC
    jal     func_80064280
    lw      a1, 0x0024(s2)             # 00000024
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x0600             # a0 = 00000600
    jal     func_80064280
    lw      a1, 0x0028(s2)             # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x0604             # a0 = 00000604
    jal     func_80064280
    lw      a1, 0x002C(s2)             # 0000002C
    lh      t2, 0x0140(s2)             # 00000140
    addiu   $at, $zero, 0x00AA         # $at = 000000AA
    lw      v1, 0x00CC($sp)
    bne     t2, $at, lbl_809D8B7C
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f0                   # $f0 = 170.00
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f10                  # $f10 = 260.00
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f16                  # $f16 = -40.00
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f18                  # $f18 = 240.00
    sh      t3, 0x05EA(s2)             # 000005EA
    sh      $zero, 0x0142(s2)          # 00000142
    lui     $at, 0x42B4                # $at = 42B40000
    swc1    $f0, 0x05F8(s2)            # 000005F8
    swc1    $f0, 0x0694(s2)            # 00000694
    swc1    $f2, 0x05F0(s2)            # 000005F0
    swc1    $f2, 0x05FC(s2)            # 000005FC
    swc1    $f2, 0x0604(s2)            # 00000604
    swc1    $f10, 0x05F4(s2)           # 000005F4
    mtc1    $at, $f4                   # $f4 = 90.00
    addiu   t5, $zero, 0x8000          # t5 = FFFF8000
    sh      t5, 0x00B6(v1)             # 000000B6
    lui     $at, 0xC214                # $at = C2140000
    lui     t6, %hi(var_809E41E8)      # t6 = 809E0000
    swc1    $f16, 0x0024(v1)           # 00000024
    swc1    $f18, 0x0028(v1)           # 00000028
    swc1    $f4, 0x002C(v1)            # 0000002C
    lw      t6, %lo(var_809E41E8)(t6)
    mtc1    $at, $f6                   # $f6 = -37.00
    lui     $at, 0x4214                # $at = 42140000
    lui     t7, %hi(var_809E41E4)      # t7 = 809E0000
    swc1    $f6, 0x0024(t6)            # 809E0024
    lw      t7, %lo(var_809E41E4)(t7)
    mtc1    $at, $f8                   # $f8 = 37.00
    lui     $at, %hi(var_809E2BB8)     # $at = 809E0000
    lui     t4, %hi(var_809E41E4)      # t4 = 809E0000
    swc1    $f8, 0x0024(t7)            # 809E0024
    lw      t4, %lo(var_809E41E4)(t4)
    lwc1    $f10, %lo(var_809E2BB8)($at)
    lui     t8, %hi(var_809E41E4)      # t8 = 809E0000
    lui     t9, %hi(var_809E41E8)      # t9 = 809E0000
    swc1    $f10, 0x0028(t4)           # 809E0028
    lw      t8, %lo(var_809E41E4)(t8)
    lw      t9, %lo(var_809E41E8)(t9)
    lui     t0, %hi(var_809E41E8)      # t0 = 809E0000
    lwc1    $f16, 0x0028(t8)           # 809E0028
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f4                   # $f4 = 17.00
    swc1    $f16, 0x0028(t9)           # 809E0028
    lw      t0, %lo(var_809E41E8)(t0)
    lui     t1, %hi(var_809E41E4)      # t1 = 809E0000
    lui     t2, %hi(var_809E41E4)      # t2 = 809E0000
    lwc1    $f18, 0x0028(t0)           # 809E0028
    lui     t3, %hi(var_809E41E8)      # t3 = 809E0000
    lui     t5, %hi(var_809E41E4)      # t5 = 809E0000
    add.s   $f6, $f18, $f4
    lui     t6, %hi(var_809E41E4)      # t6 = 809E0000
    lui     t7, %hi(var_809E41E8)      # t7 = 809E0000
    lui     t4, %hi(var_809E41E4)      # t4 = 809E0000
    swc1    $f6, 0x0600(s2)            # 00000600
    lw      t1, %lo(var_809E41E4)(t1)
    lui     t8, %hi(var_809E41E8)      # t8 = 809E0000
    lui     t9, %hi(var_809E41E4)      # t9 = 809E0000
    swc1    $f2, 0x002C(t1)            # 809E002C
    lw      t2, %lo(var_809E41E4)(t2)
    lw      t3, %lo(var_809E41E8)(t3)
    lui     t0, %hi(var_809E41E8)      # t0 = 809E0000
    lwc1    $f8, 0x002C(t2)            # 809E002C
    lui     a1, %hi(var_809E41E8)      # a1 = 809E0000
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f8, 0x002C(t3)            # 809E002C
    lw      t5, %lo(var_809E41E4)(t5)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      $zero, 0x00B6(t5)          # 809E00B6
    lw      t6, %lo(var_809E41E4)(t6)
    lw      t7, %lo(var_809E41E8)(t7)
    lh      v0, 0x00B6(t6)             # 809E00B6
    sh      v0, 0x00B6(t7)             # 809E00B6
    lw      t4, %lo(var_809E41E4)(t4)
    sh      v0, 0x00B4(t4)             # 809E00B4
    lw      t8, %lo(var_809E41E8)(t8)
    sh      v0, 0x00B4(t8)             # 809E00B4
    lw      t9, %lo(var_809E41E4)(t9)
    sh      v0, 0x0154(t9)             # 809E0154
    lw      t0, %lo(var_809E41E8)(t0)
    sh      v0, 0x0154(t0)             # 809E0154
    jal     func_800218EC
    lw      a1, %lo(var_809E41E8)(a1)
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lw      t1, 0x0004(a0)             # 809E0004
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_809D8B7C
    sw      t2, 0x0004(a0)             # 809E0004
var_809D85AC:
    lh      t3, 0x0142(s2)             # 00000142
    addiu   $at, $zero, 0x0064         # $at = 00000064
    addiu   t5, $sp, 0x0080            # t5 = FFFFFFA0
    bne     t3, $at, lbl_809D8B7C
    lui     t6, %hi(var_809E28E4)      # t6 = 809E0000
    addiu   t6, t6, %lo(var_809E28E4)  # t6 = 809E28E4
    lw      t4, 0x0000(t6)             # 809E28E4
    lw      t7, 0x0004(t6)             # 809E28E8
    lui     $at, 0x4040                # $at = 40400000
    sw      t4, 0x0000(t5)             # FFFFFFA0
    lw      t4, 0x0008(t6)             # 809E28EC
    mtc1    $at, $f20                  # $f20 = 3.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $sp, 0x0098            # s1 = FFFFFFB8
    sw      t7, 0x0004(t5)             # FFFFFFA4
    sw      t4, 0x0008(t5)             # FFFFFFA8
lbl_809D85EC:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x008C($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0090($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     t8, %hi(var_809E41E8)      # t8 = 809E0000
    lw      t8, %lo(var_809E41E8)(t8)
    swc1    $f0, 0x0094($sp)
    lui     $at, 0x4000                # $at = 40000000
    lw      t0, 0x0024(t8)             # 809E0024
    mtc1    $at, $f12                  # $f12 = 2.00
    sw      t0, 0x0000(s1)             # FFFFFFB8
    lw      t9, 0x0028(t8)             # 809E0028
    sw      t9, 0x0004(s1)             # FFFFFFBC
    lw      t0, 0x002C(t8)             # 809E002C
    sw      t0, 0x0008(s1)             # FFFFFFC0
    lwc1    $f10, 0x008C($sp)
    lwc1    $f18, 0x0098($sp)
    lwc1    $f6, 0x0090($sp)
    add.s   $f16, $f10, $f10
    lwc1    $f10, 0x009C($sp)
    add.s   $f8, $f6, $f6
    add.s   $f4, $f18, $f16
    lwc1    $f16, 0x00A0($sp)
    add.s   $f18, $f10, $f8
    swc1    $f4, 0x0098($sp)
    add.s   $f4, $f0, $f0
    swc1    $f18, 0x009C($sp)
    add.s   $f6, $f16, $f4
    jal     func_80026D64
    swc1    $f6, 0x00A0($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0014($sp)
    add.s   $f8, $f0, $f10
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFB8
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFAC
    swc1    $f8, 0x0010($sp)
    jal     func_809D1500
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFA0
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x008C($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0090($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     t2, %hi(var_809E41E4)      # t2 = 809E0000
    lw      t2, %lo(var_809E41E4)(t2)
    swc1    $f0, 0x0094($sp)
    lui     $at, 0x4000                # $at = 40000000
    lw      t5, 0x0024(t2)             # 809E0024
    mtc1    $at, $f12                  # $f12 = 2.00
    sw      t5, 0x0000(s1)             # FFFFFFB8
    lw      t3, 0x0028(t2)             # 809E0028
    sw      t3, 0x0004(s1)             # FFFFFFBC
    lw      t5, 0x002C(t2)             # 809E002C
    sw      t5, 0x0008(s1)             # FFFFFFC0
    lwc1    $f18, 0x008C($sp)
    lwc1    $f4, 0x0098($sp)
    lwc1    $f10, 0x0090($sp)
    add.s   $f16, $f18, $f18
    lwc1    $f18, 0x009C($sp)
    add.s   $f8, $f10, $f10
    add.s   $f6, $f4, $f16
    lwc1    $f16, 0x00A0($sp)
    add.s   $f4, $f18, $f8
    swc1    $f6, 0x0098($sp)
    add.s   $f6, $f0, $f0
    swc1    $f4, 0x009C($sp)
    add.s   $f10, $f16, $f6
    jal     func_80026D64
    swc1    $f10, 0x00A0($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFB8
    add.s   $f8, $f0, $f18
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFAC
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFA0
    sw      $zero, 0x0014($sp)
    jal     func_809D1500
    swc1    $f8, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bne     $at, $zero, lbl_809D85EC
    nop
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     t7, %hi(var_809E41E8)      # t7 = 809E0000
    lw      t7, %lo(var_809E41E8)(t7)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t8, %hi(var_809E41E4)      # t8 = 809E0000
    sb      t6, 0x0554(t7)             # 809E0554
    lw      t8, %lo(var_809E41E4)(t8)
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   a0, $zero, 0x390D          # a0 = 0000390D
    jal     func_800646F0
    sb      t4, 0x0554(t8)             # 809E0554
    jal     func_800CAA70
    addiu   a0, $zero, 0x0061          # a0 = 00000061
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x05EA(s2)             # 000005EA
    sh      $zero, 0x0142(s2)          # 00000142
    swc1    $f0, 0x0690(s2)            # 00000690
    swc1    $f0, 0x0068(s2)            # 00000068
    swc1    $f0, 0x06A0(s2)            # 000006A0
    swc1    $f0, 0x069C(s2)            # 0000069C
    beq     $zero, $zero, lbl_809D8B80
    lh      a1, 0x05EC(s2)             # 000005EC
var_809D87E0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    s0, s3, $at
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_809D76A4
    or      a1, s3, $zero              # a1 = 00000000
    lh      t0, 0x0142(s2)             # 00000142
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    slti    $at, t0, 0x0096
    beq     $at, $zero, lbl_809D8844
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      t1, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    sb      $zero, 0x0AE1($at)         # 00010AE1
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_809D88A4
    nop
lbl_809D8844:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      t2, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      t3, 0x0AE1($at)            # 00010AE1
    lh      a0, 0x0142(s2)             # 00000142
    sll     a0, a0, 12
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f6                   # $f6 = 0.75
    mul.s   $f16, $f0, $f4
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    or      a0, s0, $zero              # a0 = 00000001
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f10, $f16, $f6
    mfc1    a1, $f10
    jal     func_80064280
    nop
lbl_809D88A4:
    lui     t5, %hi(var_809E41E8)      # t5 = 809E0000
    lw      t5, %lo(var_809E41E8)(t5)
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f8                   # $f8 = 17.00
    lwc1    $f18, 0x0028(t5)           # 809E0028
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    add.s   $f4, $f18, $f8
    addiu   a0, s2, 0x0600             # a0 = 00000600
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f4
    jal     func_80064280
    nop
    lh      t6, 0x0142(s2)             # 00000142
    addiu   a0, s2, 0x0694             # a0 = 00000694
    lui     a1, 0x42DC                 # a1 = 42DC0000
    slti    $at, t6, 0x0032
    bne     $at, $zero, lbl_809D89A4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_80064280
    lw      a3, 0x0690(s2)             # 00000690
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addiu   a0, s2, 0x0690             # a0 = 00000690
    jal     func_800CF470
    lwc1    $f12, 0x069C(s2)           # 0000069C
    lwc1    $f16, 0x0694(s2)           # 00000694
    lwc1    $f12, 0x069C(s2)           # 0000069C
    mul.s   $f6, $f0, $f16
    jal     func_800D2CD0
    swc1    $f6, 0x05F0(s2)            # 000005F0
    lwc1    $f10, 0x0694(s2)           # 00000694
    lh      v0, 0x0142(s2)             # 00000142
    mul.s   $f18, $f0, $f10
    slti    $at, v0, 0x0097
    bne     $at, $zero, lbl_809D89A4
    swc1    $f18, 0x05F8(s2)           # 000005F8
    lwc1    $f8, 0x069C(s2)            # 0000069C
    lwc1    $f4, 0x06A0(s2)            # 000006A0
    slti    $at, v0, 0x0320
    lui     a1, 0x3C75                 # a1 = 3C750000
    add.s   $f16, $f8, $f4
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    addiu   a0, s2, 0x06A0             # a0 = 000006A0
    bne     $at, $zero, lbl_809D8994
    swc1    $f16, 0x069C(s2)           # 0000069C
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    addiu   a0, s2, 0x06A0             # a0 = 000006A0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_809D89A4
    nop
lbl_809D8994:
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
lbl_809D89A4:
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xD709             # a1 = 3C23D709
    jal     func_80064280
    addiu   a0, a0, 0x0050             # a0 = 809E0050
    lui     a0, %hi(var_809E41E8)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E8)(a0)
    jal     func_80020F88
    lw      a1, 0x0050(a0)             # 809E0050
    lui     t7, %hi(var_809E41E8)      # t7 = 809E0000
    lw      t7, %lo(var_809E41E8)(t7)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    jal     func_80020F88
    lw      a1, 0x0050(t7)             # 809E0050
    lh      t4, 0x0142(s2)             # 00000142
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, t4, 0x03FC
    bnel    $at, $zero, lbl_809D8B80
    lh      a1, 0x05EC(s2)             # 000005EC
    jal     func_8009D2F0
    addiu   s0, s3, 0x1C24             # s0 = 00001C24
    addiu   s1, s2, 0x05F0             # s1 = 000005F0
    lw      t9, 0x0000(s1)             # 000005F0
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x005C(v0)             # 0000005C
    lw      t8, 0x0004(s1)             # 000005F4
    sw      t8, 0x0060(v0)             # 00000060
    lw      t9, 0x0008(s1)             # 000005F8
    sw      t9, 0x0064(v0)             # 00000064
    lw      t1, 0x0000(s1)             # 000005F0
    sw      t1, 0x0074(v0)             # 00000074
    lw      t0, 0x0004(s1)             # 000005F4
    sw      t0, 0x0078(v0)             # 00000078
    lw      t1, 0x0008(s1)             # 000005F8
    sw      t1, 0x007C(v0)             # 0000007C
    lw      t3, 0x05FC(s2)             # 000005FC
    sw      t3, 0x0050(v0)             # 00000050
    lw      t2, 0x0600(s2)             # 00000600
    sw      t2, 0x0054(v0)             # 00000054
    lw      t3, 0x0604(s2)             # 00000604
    sw      t3, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x05EC(s2)             # 000005EC
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sh      t5, 0x05EA(s2)             # 000005EA
    sh      $zero, 0x05EC(s2)          # 000005EC
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s3, 0x1D64             # a1 = 00001D64
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_800CAA70
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f6                   # $f6 = 600.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f10                  # $f10 = 230.00
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f8                   # $f8 = 230.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0xC416                 # a3 = C4160000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f16                  # $f16 = -2000.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     v1, %hi(var_809E41E4)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41E4)  # v1 = 809E41E4
    swc1    $f16, 0x0028(s2)           # 00000028
    swc1    $f6, 0x01BC(s2)            # 000001BC
    lw      t7, 0x0000(v1)             # 809E41E4
    lui     t9, %hi(var_809E41E8)      # t9 = 809E0000
    lui     a1, 0x0001                 # a1 = 00010000
    sb      $zero, 0x0554(t7)          # 00000554
    lw      t4, 0x0000(v1)             # 809E41E4
    lw      t9, %lo(var_809E41E8)(t9)
    addu    a1, a1, s3
    lbu     t8, 0x0554(t4)             # 00000554
    or      a0, s3, $zero              # a0 = 00000000
    sb      t8, 0x0554(t9)             # 809E0554
    jal     func_80020658
    lb      a1, 0x1CBC(a1)             # 00011CBC
    beq     $zero, $zero, lbl_809D8B80
    lh      a1, 0x05EC(s2)             # 000005EC
var_809D8B74:
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41E0)($at)
lbl_809D8B7C:
    lh      a1, 0x05EC(s2)             # 000005EC
lbl_809D8B80:
    addiu   a3, s2, 0x05F0             # a3 = 000005F0
    addiu   a2, s2, 0x05FC             # a2 = 000005FC
    beql    a1, $zero, lbl_809D8B9C
    lw      $ra, 0x004C($sp)
    jal     func_8009D328
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)
lbl_809D8B9C:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_809D8BB8:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    sdc1    $f22, 0x0028($sp)
    sw      s3, 0x0048($sp)
    sw      s1, 0x0040($sp)
    mtc1    $at, $f22                  # $f22 = 1.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s2, 0x0044($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f24, 0x0030($sp)
    lw      s2, 0x1C44(s3)             # 00001C44
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x05B0(s1)             # 000005B0
    lbu     t7, 0x07AF(s3)             # 000007AF
    mfc1    a2, $f22
    mfc1    a3, $f20
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a0, s1, 0x01C4             # a0 = 000001C4
    bgez    t7, lbl_809D8C2C
    cvt.s.w $f4, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_809D8C2C:
    mfc1    a1, $f4
    jal     func_80064280
    nop
    lbu     t8, 0x07B0(s3)             # 000007B0
    mfc1    a2, $f22
    mfc1    a3, $f20
    mtc1    t8, $f8                    # $f8 = 0.00
    addiu   a0, s1, 0x01C8             # a0 = 000001C8
    bgez    t8, lbl_809D8C64
    cvt.s.w $f8, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_809D8C64:
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lbu     t9, 0x07B1(s3)             # 000007B1
    mfc1    a2, $f22
    mfc1    a3, $f20
    mtc1    t9, $f16                   # $f16 = 0.00
    addiu   a0, s1, 0x01CC             # a0 = 000001CC
    bgez    t9, lbl_809D8C9C
    cvt.s.w $f16, $f16
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_809D8C9C:
    mfc1    a1, $f16
    jal     func_80064280
    nop
    lh      t0, 0x07B2(s3)             # 000007B2
    mfc1    a2, $f22
    mfc1    a3, $f20
    mtc1    t0, $f4                    # $f4 = 0.00
    addiu   a0, s1, 0x01D0             # a0 = 000001D0
    cvt.s.w $f4, $f4
    mfc1    a1, $f4
    jal     func_80064280
    nop
    mfc1    a2, $f22
    mfc1    a3, $f20
    addiu   a0, s1, 0x01D4             # a0 = 000001D4
    jal     func_80064280
    lui     a1, 0x447A                 # a1 = 447A0000
    lh      t5, 0x0146(s1)             # 00000146
    lh      t1, 0x0140(s1)             # 00000140
    lh      t3, 0x0142(s1)             # 00000142
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0146(s1)             # 00000146
    lh      v0, 0x0146(s1)             # 00000146
    addiu   t2, t1, 0x0001             # t2 = 00000001
    addiu   t4, t3, 0x0001             # t4 = 00000001
    slti    $at, v0, 0x0032
    sh      t2, 0x0140(s1)             # 00000140
    bne     $at, $zero, lbl_809D8D18
    sh      t4, 0x0142(s1)             # 00000142
    sh      $zero, 0x0146(s1)          # 00000146
    lh      v0, 0x0146(s1)             # 00000146
lbl_809D8D18:
    sll     t7, v0,  2
    lw      t0, 0x0024(s1)             # 00000024
    subu    t7, t7, v0
    sll     t7, t7,  2
    addu    t8, s1, t7
    sw      t0, 0x01D8(t8)             # 000001D8
    lw      t9, 0x0028(s1)             # 00000028
    lui     t6, %hi(func_809D4BB0)     # t6 = 809D0000
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t9, 0x01DC(t8)             # 000001DC
    lw      t0, 0x002C(s1)             # 0000002C
    addiu   t6, t6, %lo(func_809D4BB0) # t6 = 809D4BB0
    sw      t0, 0x01E0(t8)             # 000001E0
    sll     t1, s0,  1
lbl_809D8D50:
    addu    v0, s1, t1
    lh      v1, 0x0168(v0)             # 00000168
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_809D8D70
    sra     s0, s0, 16
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0168(v0)             # 00000168
lbl_809D8D70:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809D8D50
    sll     t1, s0,  1
    lh      v0, 0x014A(s1)             # 0000014A
    beq     v0, $zero, lbl_809D8D8C
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x014A(s1)             # 0000014A
lbl_809D8D8C:
    lh      v0, 0x014C(s1)             # 0000014C
    beq     v0, $zero, lbl_809D8D9C
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x014C(s1)             # 0000014C
lbl_809D8D9C:
    lw      s0, 0x013C(s1)             # 0000013C
    lui     t5, %hi(func_809D2750)     # t5 = 809D0000
    addiu   t5, t5, %lo(func_809D2750) # t5 = 809D2750
    beql    t5, s0, lbl_809D8DC8
    lh      t8, 0x00B6(s2)             # 000000B6
    beq     t6, s0, lbl_809D8DC4
    lui     t7, %hi(func_809D242C)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809D242C) # t7 = 809D242C
    bnel    t7, s0, lbl_809D8E14
    or      a0, s1, $zero              # a0 = 00000000
lbl_809D8DC4:
    lh      t8, 0x00B6(s2)             # 000000B6
lbl_809D8DC8:
    lh      t9, 0x008A(s1)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    v0, t8, t9
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809D8E10
    slti    $at, v0, 0xF001
    bnel    $at, $zero, lbl_809D8E14
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t0, 0x0A63(s2)             # 00000A63
    or      a0, s1, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_809D8E14
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809D4B34
    or      a1, s3, $zero              # a1 = 00000000
    lw      s0, 0x013C(s1)             # 0000013C
lbl_809D8E10:
    or      a0, s1, $zero              # a0 = 00000000
lbl_809D8E14:
    jalr    $ra, s0
    or      a1, s3, $zero              # a1 = 00000000
    lw      s0, 0x013C(s1)             # 0000013C
    lui     t1, %hi(func_809D4D18)     # t1 = 809D0000
    addiu   t1, t1, %lo(func_809D4D18) # t1 = 809D4D18
    beq     t1, s0, lbl_809D9204
    addiu   t2, $zero, 0x002D          # t2 = 0000002D
    lui     t3, %hi(func_809D4BB0)     # t3 = 809D0000
    addiu   t3, t3, %lo(func_809D4BB0) # t3 = 809D4BB0
    bne     t3, s0, lbl_809D8E4C
    sh      t2, 0x05DC(s1)             # 000005DC
    lh      t4, 0x05DC(s1)             # 000005DC
    sll     t5, t4,  1
    sh      t5, 0x05DC(s1)             # 000005DC
lbl_809D8E4C:
    lh      t8, 0x014A(s1)             # 0000014A
    addiu   t6, $zero, 0x0078          # t6 = 00000078
    addiu   t7, $zero, 0xFFE2          # t7 = FFFFFFE2
    sh      t6, 0x05DE(s1)             # 000005DE
    bne     t8, $zero, lbl_809D8EB4
    sh      t7, 0x05E0(s1)             # 000005E0
    lbu     v0, 0x05AD(s1)             # 000005AD
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x059C             # s0 = 0000059C
    andi    t9, v0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_809D8E80
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x05AD(s1)             # 000005AD
lbl_809D8E80:
    jal     func_80050B00
    or      a1, s0, $zero              # a1 = 0000059C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s2, s3, $at
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 0000059C
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a2, s0, $zero              # a2 = 0000059C
lbl_809D8EB4:
    lh      t1, 0x001C(s1)             # 0000001C
    lui     $at, 0xC170                # $at = C1700000
    bnel    t1, $zero, lbl_809D8EF8
    lwc1    $f8, 0x0178(s1)            # 00000178
    lwc1    $f6, 0x0178(s1)            # 00000178
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f16                  # $f16 = 7.00
    lwc1    $f10, 0x0188(s1)           # 00000188
    lwc1    $f4, 0x018C(s1)            # 0000018C
    add.s   $f8, $f6, $f22
    sub.s   $f18, $f10, $f16
    swc1    $f8, 0x0178(s1)            # 00000178
    add.s   $f6, $f4, $f22
    swc1    $f18, 0x0188(s1)           # 00000188
    beq     $zero, $zero, lbl_809D8F28
    swc1    $f6, 0x018C(s1)            # 0000018C
    lwc1    $f8, 0x0178(s1)            # 00000178
lbl_809D8EF8:
    mtc1    $at, $f18                  # $f18 = 7.00
    lwc1    $f10, 0x0180(s1)           # 00000180
    lui     $at, 0xC120                # $at = C1200000
    swc1    $f8, 0x0178(s1)            # 00000178
    lwc1    $f16, 0x0188(s1)           # 00000188
    mtc1    $at, $f8                   # $f8 = -10.00
    lwc1    $f6, 0x0190(s1)            # 00000190
    swc1    $f10, 0x0180(s1)           # 00000180
    add.s   $f4, $f16, $f18
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x0188(s1)            # 00000188
    swc1    $f10, 0x0190(s1)           # 00000190
lbl_809D8F28:
    lh      t2, 0x0142(s1)             # 00000142
    andi    t3, t2, 0x001F             # t3 = 00000000
    bnel    t3, $zero, lbl_809D8F64
    lh      v0, 0x0148(s1)             # 00000148
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809E2BBC)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2BBC)($at)
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_809D8F64
    lh      v0, 0x0148(s1)             # 00000148
    sh      t4, 0x0148(s1)             # 00000148
    lh      v0, 0x0148(s1)             # 00000148
lbl_809D8F64:
    lui     t6, %hi(var_809E28F0)      # t6 = 809E0000
    sll     t5, v0,  1
    addu    t6, t6, t5
    lh      t6, %lo(var_809E28F0)(t6)
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     v0, $zero, lbl_809D8F84
    sh      t6, 0x04BC(s1)             # 000004BC
    sh      t7, 0x0148(s1)             # 00000148
lbl_809D8F84:
    lw      t9, 0x013C(s1)             # 0000013C
    lui     t8, %hi(func_809D4C9C)     # t8 = 809D0000
    addiu   t8, t8, %lo(func_809D4C9C) # t8 = 809D4C9C
    beql    t8, t9, lbl_809D9208
    lw      $ra, 0x004C($sp)
    lbu     t0, 0x05E8(s1)             # 000005E8
    lui     t2, %hi(var_809E2910)      # t2 = 809E0000
    addiu   t2, t2, %lo(var_809E2910)  # t2 = 809E2910
    beq     t0, $zero, lbl_809D9204
    addiu   t1, $sp, 0x0068            # t1 = FFFFFFD8
    lw      t4, 0x0000(t2)             # 809E2910
    lw      t3, 0x0004(t2)             # 809E2914
    lui     t6, %hi(var_809E291C)      # t6 = 809E0000
    sw      t4, 0x0000(t1)             # FFFFFFD8
    lw      t4, 0x0008(t2)             # 809E2918
    addiu   t6, t6, %lo(var_809E291C)  # t6 = 809E291C
    sw      t3, 0x0004(t1)             # FFFFFFDC
    sw      t4, 0x0008(t1)             # FFFFFFE0
    lw      t8, 0x0000(t6)             # 809E291C
    addiu   t5, $sp, 0x005C            # t5 = FFFFFFCC
    lw      t7, 0x0004(t6)             # 809E2920
    sw      t8, 0x0000(t5)             # FFFFFFCC
    lw      t8, 0x0008(t6)             # 809E2924
    sw      t7, 0x0004(t5)             # FFFFFFD0
    mtc1    $zero, $f18                # $f18 = 0.00
    sw      t8, 0x0008(t5)             # FFFFFFD4
    lwc1    $f4, 0x04C0(s1)            # 000004C0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   v0, s1, 0x0440             # v0 = 00000440
    c.lt.s  $f18, $f4
    lui     $at, %hi(var_809E2BC0)     # $at = 809E0000
    addiu   s2, $sp, 0x0074            # s2 = FFFFFFE4
    bc1fl   lbl_809D9104
    lui     $at, 0x428C                # $at = 428C0000
    lwc1    $f24, %lo(var_809E2BC0)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f20                  # $f20 = 70.00
    sw      v0, 0x0054($sp)
    lw      v0, 0x0054($sp)
lbl_809D9028:
    mov.s   $f12, $f20
    lw      t0, 0x0000(v0)             # 00000440
    sw      t0, 0x0000(s2)             # FFFFFFE4
    lw      t9, 0x0004(v0)             # 00000444
    sw      t9, 0x0004(s2)             # FFFFFFE8
    lw      t0, 0x0008(v0)             # 00000448
    jal     func_80026D90
    sw      t0, 0x0008(s2)             # FFFFFFEC
    lwc1    $f6, 0x0074($sp)
    mov.s   $f12, $f20
    add.s   $f8, $f6, $f0
    jal     func_80026D90
    swc1    $f8, 0x0074($sp)
    lwc1    $f10, 0x0078($sp)
    mov.s   $f12, $f20
    add.s   $f16, $f10, $f0
    jal     func_80026D90
    swc1    $f16, 0x0078($sp)
    lwc1    $f18, 0x007C($sp)
    swc1    $f24, 0x0060($sp)
    mov.s   $f12, $f22
    add.s   $f4, $f18, $f0
    jal     func_80026D90
    swc1    $f4, 0x007C($sp)
    swc1    $f0, 0x005C($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x0064($sp)
    trunc.w.s $f6, $f0
    addiu   t7, $zero, 0x0025          # t7 = 00000025
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFE4
    mfc1    t2, $f6
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFD8
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFCC
    sll     t3, t2, 16
    sra     t4, t3, 16
    addiu   t5, t4, 0x0008             # t5 = 00000008
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0010($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    sw      t7, 0x0018($sp)
    jal     func_809D1160
    sw      t6, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    blezl   s0, lbl_809D9028
    lw      v0, 0x0054($sp)
    lui     $at, 0x428C                # $at = 428C0000
lbl_809D9104:
    mtc1    $at, $f20                  # $f20 = 70.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, %hi(var_809E2BC4)     # $at = 809E0000
    addiu   v0, s1, 0x0434             # v0 = 00000434
    lwc1    $f24, %lo(var_809E2BC4)($at)
    addiu   s2, $sp, 0x0074            # s2 = FFFFFFE4
    sw      v0, 0x0054($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v0, 0x0054($sp)
lbl_809D912C:
    mov.s   $f12, $f20
    lw      t9, 0x0000(v0)             # 00000434
    sw      t9, 0x0000(s2)             # FFFFFFE4
    lw      t8, 0x0004(v0)             # 00000438
    sw      t8, 0x0004(s2)             # FFFFFFE8
    lw      t9, 0x0008(v0)             # 0000043C
    jal     func_80026D90
    sw      t9, 0x0008(s2)             # FFFFFFEC
    lwc1    $f16, 0x0074($sp)
    mov.s   $f12, $f20
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x0074($sp)
    lwc1    $f4, 0x0078($sp)
    mov.s   $f12, $f20
    add.s   $f6, $f4, $f0
    jal     func_80026D90
    swc1    $f6, 0x0078($sp)
    lwc1    $f8, 0x007C($sp)
    swc1    $f24, 0x0060($sp)
    mov.s   $f12, $f22
    add.s   $f10, $f8, $f0
    jal     func_80026D90
    swc1    $f10, 0x007C($sp)
    swc1    $f0, 0x005C($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x0064($sp)
    trunc.w.s $f16, $f0
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFE4
    mfc1    t1, $f16
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFD8
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFCC
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, t3, 0x0008             # t4 = 00000008
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0010($sp)
    lh      t5, 0x001C(s1)             # 0000001C
    sw      t6, 0x0018($sp)
    jal     func_809D1160
    sw      t5, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    blezl   s0, lbl_809D912C
    lw      v0, 0x0054($sp)
lbl_809D9204:
    lw      $ra, 0x004C($sp)
lbl_809D9208:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809D922C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x4120                # $at = 41200000
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    mtc1    $at, $f20                  # $f20 = 10.00
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    lw      t6, 0x1C44(s3)             # 00001C44
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t6, 0x0088($sp)
    lw      t7, 0x0004(s2)             # 00000004
    sb      $zero, 0x05E8(s2)          # 000005E8
    sb      t9, 0x05B0(s2)             # 000005B0
    and     t8, t7, $at
    sw      t8, 0x0004(s2)             # 00000004
    lbu     t0, 0x07AF(s3)             # 000007AF
    mfc1    a3, $f20
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f4                    # $f4 = 0.00
    addiu   a0, s2, 0x01C4             # a0 = 000001C4
    bgez    t0, lbl_809D92A8
    cvt.s.w $f4, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_809D92A8:
    mfc1    a1, $f4
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t1, 0x07B0(s3)             # 000007B0
    mfc1    a3, $f20
    addiu   a0, s2, 0x01C8             # a0 = 000001C8
    mtc1    t1, $f8                    # $f8 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t1, lbl_809D92DC
    cvt.s.w $f8, $f8
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_809D92DC:
    mfc1    a1, $f8
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t2, 0x07B1(s3)             # 000007B1
    mfc1    a3, $f20
    addiu   a0, s2, 0x01CC             # a0 = 000001CC
    mtc1    t2, $f16                   # $f16 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t2, lbl_809D9310
    cvt.s.w $f16, $f16
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_809D9310:
    mfc1    a1, $f16
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t3, 0x07B2(s3)             # 000007B2
    mfc1    a3, $f20
    addiu   a0, s2, 0x01D0             # a0 = 000001D0
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    cvt.s.w $f4, $f4
    mfc1    a1, $f4
    jal     func_80064280
    nop
    mfc1    a3, $f20
    addiu   a0, s2, 0x01D4             # a0 = 000001D4
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t4, 0x0140(s2)             # 00000140
    lh      t6, 0x0142(s2)             # 00000142
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t5, 0x0140(s2)             # 00000140
    sh      t7, 0x0142(s2)             # 00000142
    sll     t8, s0,  1
lbl_809D9374:
    addu    v0, s2, t8
    lh      v1, 0x0168(v0)             # 00000168
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_809D9394
    sra     s0, s0, 16
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0168(v0)             # 00000168
lbl_809D9394:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_809D9374
    sll     t8, s0,  1
    lh      v0, 0x014A(s2)             # 0000014A
    beq     v0, $zero, lbl_809D93B0
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x014A(s2)             # 0000014A
lbl_809D93B0:
    lh      v0, 0x014C(s2)             # 0000014C
    beq     v0, $zero, lbl_809D93C0
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x014C(s2)             # 0000014C
lbl_809D93C0:
    lw      t9, 0x013C(s2)             # 0000013C
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      v0, 0x013C(s2)             # 0000013C
    lui     t2, %hi(func_809E19A8)     # t2 = 809E0000
    addiu   t2, t2, %lo(func_809E19A8) # t2 = 809E19A8
    beq     t2, v0, lbl_809D9458
    lui     t3, %hi(func_809E1734)     # t3 = 809E0000
    addiu   t3, t3, %lo(func_809E1734) # t3 = 809E1734
    beql    t3, v0, lbl_809D945C
    lh      v0, 0x0148(s2)             # 00000148
    lbu     t4, 0x0554(s2)             # 00000554
    beql    t4, $zero, lbl_809D945C
    lh      v0, 0x0148(s2)             # 00000148
    lbu     t5, 0x05E8(s2)             # 000005E8
    lw      t6, 0x0088($sp)
    bnel    t5, $zero, lbl_809D945C
    lh      v0, 0x0148(s2)             # 00000148
    lh      t7, 0x00B6(t6)             # 000000B6
    lh      t8, 0x008A(s2)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    v0, t7, t8
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_809D9458
    slti    $at, v0, 0xF001
    bnel    $at, $zero, lbl_809D945C
    lh      v0, 0x0148(s2)             # 00000148
    lbu     t0, 0x0A63(t6)             # 00000A63
    or      a0, s2, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_809D945C
    lh      v0, 0x0148(s2)             # 00000148
    jal     func_809E2600
    or      a1, s3, $zero              # a1 = 00000000
lbl_809D9458:
    lh      v0, 0x0148(s2)             # 00000148
lbl_809D945C:
    lui     t9, %hi(var_809E28F0)      # t9 = 809E0000
    sll     t1, v0,  1
    addu    t9, t9, t1
    lh      t9, %lo(var_809E28F0)(t9)
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    beq     v0, $zero, lbl_809D947C
    sh      t9, 0x04BC(s2)             # 000004BC
    sh      t2, 0x0148(s2)             # 00000148
lbl_809D947C:
    lh      t3, 0x0142(s2)             # 00000142
    andi    t4, t3, 0x001F             # t4 = 00000000
    bnel    t4, $zero, lbl_809D94CC
    lw      v0, 0x013C(s2)             # 0000013C
    lw      t7, 0x013C(s2)             # 0000013C
    lui     t5, %hi(func_809D4DDC)     # t5 = 809D0000
    addiu   t5, t5, %lo(func_809D4DDC) # t5 = 809D4DDC
    beql    t5, t7, lbl_809D94CC
    lw      v0, 0x013C(s2)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_809E2BC8)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2BC8)($at)
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809D94CC
    lw      v0, 0x013C(s2)             # 0000013C
    sh      t8, 0x0148(s2)             # 00000148
    lw      v0, 0x013C(s2)             # 0000013C
lbl_809D94CC:
    lui     t6, %hi(func_809D4DDC)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4DDC) # t6 = 809D4DDC
    bne     t6, v0, lbl_809D9504
    lui     t2, %hi(func_809E1E08)     # t2 = 809E0000
    lh      v0, 0x0152(s2)             # 00000152
    lui     t1, %hi(var_809E28FC)      # t1 = 809E0000
    sll     t0, v0,  1
    addu    t1, t1, t0
    lh      t1, %lo(var_809E28FC)(t1)
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    beq     v0, $zero, lbl_809D9534
    sh      t1, 0x04BE(s2)             # 000004BE
    beq     $zero, $zero, lbl_809D9534
    sh      t9, 0x0152(s2)             # 00000152
lbl_809D9504:
    addiu   t2, t2, %lo(func_809E1E08) # t2 = 809E1E08
    bne     t2, v0, lbl_809D951C
    lui     t4, %hi(func_809D7EC4)     # t4 = 809D0000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t3, 0x04BC(s2)             # 000004BC
    lw      v0, 0x013C(s2)             # 0000013C
lbl_809D951C:
    addiu   t4, t4, %lo(func_809D7EC4) # t4 = 809D7EC4
    bne     t4, v0, lbl_809D952C
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sh      t5, 0x04BC(s2)             # 000004BC
lbl_809D952C:
    lh      t7, 0x04BC(s2)             # 000004BC
    sh      t7, 0x04BE(s2)             # 000004BE
lbl_809D9534:
    lbu     t8, 0x0554(s2)             # 00000554
    beql    t8, $zero, lbl_809D9794
    lw      t4, 0x013C(s2)             # 0000013C
    lbu     t6, 0x05E8(s2)             # 000005E8
    lui     t1, %hi(var_809E2928)      # t1 = 809E0000
    addiu   t1, t1, %lo(var_809E2928)  # t1 = 809E2928
    bne     t6, $zero, lbl_809D9790
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t2, 0x0000(t1)             # 809E2928
    addiu   t0, $sp, 0x0070            # t0 = FFFFFFD8
    lw      t9, 0x0004(t1)             # 809E292C
    sw      t2, 0x0000(t0)             # FFFFFFD8
    lw      t2, 0x0008(t1)             # 809E2930
    mtc1    $at, $f0                   # $f0 = 1.00
    sw      t9, 0x0004(t0)             # FFFFFFDC
    sw      t2, 0x0008(t0)             # FFFFFFE0
    lh      v0, 0x0150(s2)             # 00000150
    mfc1    a1, $f0
    mfc1    a2, $f0
    beq     v0, $zero, lbl_809D95A0
    addiu   a0, s2, 0x01A4             # a0 = 000001A4
    addiu   t3, v0, 0xFFEC             # t3 = FFFFFFEC
    sh      t3, 0x0150(s2)             # 00000150
    lh      t4, 0x0150(s2)             # 00000150
    bgezl   t4, lbl_809D95A4
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    sh      $zero, 0x0150(s2)          # 00000150
lbl_809D95A0:
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
lbl_809D95A4:
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lui     $at, %hi(var_809E2BCC)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2BCC)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   v0, s2, 0x0488             # v0 = 00000488
    mtc1    $at, $f20                  # $f20 = 30.00
    sw      v0, 0x0050($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFE4
    swc1    $f8, 0x0068($sp)
    lw      v0, 0x0050($sp)
lbl_809D95DC:
    mov.s   $f12, $f20
    lw      t7, 0x0000(v0)             # 00000488
    sw      t7, 0x0000(s1)             # FFFFFFE4
    lw      t5, 0x0004(v0)             # 0000048C
    sw      t5, 0x0004(s1)             # FFFFFFE8
    lw      t7, 0x0008(v0)             # 00000490
    jal     func_80026D90
    sw      t7, 0x0008(s1)             # FFFFFFEC
    lwc1    $f10, 0x007C($sp)
    mov.s   $f12, $f20
    add.s   $f16, $f10, $f0
    jal     func_80026D90
    swc1    $f16, 0x007C($sp)
    lwc1    $f18, 0x0080($sp)
    mov.s   $f12, $f20
    add.s   $f4, $f18, $f0
    jal     func_80026D90
    swc1    $f4, 0x0080($sp)
    lwc1    $f6, 0x0084($sp)
    mov.s   $f12, $f22
    add.s   $f8, $f6, $f0
    jal     func_80026D90
    swc1    $f8, 0x0084($sp)
    swc1    $f0, 0x0064($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x006C($sp)
    trunc.w.s $f10, $f0
    addiu   t2, $zero, 0x004B          # t2 = 0000004B
    sw      t2, 0x0018($sp)
    or      a0, s3, $zero              # a0 = 00000000
    mfc1    t6, $f10
    or      a1, s1, $zero              # a1 = FFFFFFE4
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD8
    sll     t0, t6, 16
    sra     t1, t0, 16
    addiu   t9, t1, 0x0007             # t9 = 00000007
    mtc1    t9, $f16                   # $f16 = 0.00
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFCC
    sw      $zero, 0x0014($sp)
    cvt.s.w $f18, $f16
    jal     func_809D1160
    swc1    $f18, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0002
    bnel    $at, $zero, lbl_809D95DC
    lw      v0, 0x0050($sp)
    addiu   v0, s2, 0x0494             # v0 = 00000494
    sw      v0, 0x0050($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    lw      v0, 0x0050($sp)
lbl_809D96BC:
    mov.s   $f12, $f20
    lw      t4, 0x0000(v0)             # 00000494
    sw      t4, 0x0000(s1)             # FFFFFFE4
    lw      t3, 0x0004(v0)             # 00000498
    sw      t3, 0x0004(s1)             # FFFFFFE8
    lw      t4, 0x0008(v0)             # 0000049C
    jal     func_80026D90
    sw      t4, 0x0008(s1)             # FFFFFFEC
    lwc1    $f4, 0x007C($sp)
    mov.s   $f12, $f20
    add.s   $f6, $f4, $f0
    jal     func_80026D90
    swc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0080($sp)
    mov.s   $f12, $f20
    add.s   $f10, $f8, $f0
    jal     func_80026D90
    swc1    $f10, 0x0080($sp)
    lwc1    $f16, 0x0084($sp)
    mov.s   $f12, $f22
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x0084($sp)
    swc1    $f0, 0x0064($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x006C($sp)
    trunc.w.s $f4, $f0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t9, $zero, 0x004B          # t9 = 0000004B
    sw      t9, 0x0018($sp)
    mfc1    t7, $f4
    sw      t1, 0x0014($sp)
    or      a0, s3, $zero              # a0 = 00000000
    sll     t8, t7, 16
    sra     t6, t8, 16
    addiu   t0, t6, 0x0007             # t0 = 00000007
    mtc1    t0, $f6                    # $f6 = 0.00
    or      a1, s1, $zero              # a1 = FFFFFFE4
    addiu   a2, $sp, 0x0070            # a2 = FFFFFFD8
    cvt.s.w $f8, $f6
    addiu   a3, $sp, 0x0064            # a3 = FFFFFFCC
    jal     func_809D1160
    swc1    $f8, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0002
    bnel    $at, $zero, lbl_809D96BC
    lw      v0, 0x0050($sp)
lbl_809D9790:
    lw      t4, 0x013C(s2)             # 0000013C
lbl_809D9794:
    lui     $at, 0x3F00                # $at = 3F000000
    lui     t3, %hi(func_809E2658)     # t3 = 809E0000
    mtc1    $at, $f22                  # $f22 = 0.50
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    addiu   t3, t3, %lo(func_809E2658) # t3 = 809E2658
    bne     t3, t4, lbl_809D97BC
    sh      t2, 0x05DC(s2)             # 000005DC
    lh      t5, 0x05DC(s2)             # 000005DC
    sll     t7, t5,  1
    sh      t7, 0x05DC(s2)             # 000005DC
lbl_809D97BC:
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t6, $zero, 0xFFC4          # t6 = FFFFFFC4
    sh      t8, 0x05DE(s2)             # 000005DE
    sh      t6, 0x05E0(s2)             # 000005E0
    addiu   a1, s2, 0x059C             # a1 = 0000059C
    sw      a1, 0x004C($sp)
    jal     func_80050B00
    or      a0, s2, $zero              # a0 = 00000000
    lh      t0, 0x014A(s2)             # 0000014A
    bnel    t0, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
    lw      t9, 0x013C(s2)             # 0000013C
    lui     t1, %hi(func_809E1E08)     # t1 = 809E0000
    addiu   t1, t1, %lo(func_809E1E08) # t1 = 809E1E08
    beql    t1, t9, lbl_809D9874
    lbu     v0, 0x05AD(s2)             # 000005AD
    lbu     t2, 0x04E4(s2)             # 000004E4
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    or      a0, s2, $zero              # a0 = 00000000
    beq     t2, $zero, lbl_809D9834
    or      a1, s3, $zero              # a1 = 00000000
    sb      $zero, 0x04E4(s2)          # 000004E4
    sh      t3, 0x014C(s2)             # 0000014C
    jal     func_809E1CDC
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x391A          # a1 = 0000391A
    beq     $zero, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
lbl_809D9834:
    lbu     v0, 0x05AD(s2)             # 000005AD
    andi    t4, v0, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
    lw      v1, 0x05D8(s2)             # 000005D8
    andi    t5, v0, 0xFFFD             # t5 = 00000000
    sb      t5, 0x05AD(s2)             # 000005AD
    lw      t7, 0x0000(v1)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF824           # $at = 0001F824
    and     t8, t7, $at
    beql    t8, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
    beq     $zero, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
    lbu     v0, 0x05AD(s2)             # 000005AD
lbl_809D9874:
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809D98E0
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    lw      s0, 0x05D8(s2)             # 000005D8
    sb      t0, 0x05AD(s2)             # 000005AD
    or      s1, $zero, $zero           # s1 = 00000000
    jal     func_80051A34
    lw      a0, 0x0000(s0)             # 00000001
    bne     v0, $zero, lbl_809D98A4
    andi    a2, v0, 0x00FF             # a2 = 00000000
    beq     $zero, $zero, lbl_809D98A8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_809D98A4:
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_809D98A8:
    lw      t1, 0x0000(s0)             # 00000001
    or      a0, s2, $zero              # a0 = 00000000
    andi    t9, t1, 0x0080             # t9 = 00000000
    bnel    t9, $zero, lbl_809D98E4
    lui     $at, 0x0001                # $at = 00010000
    lb      t2, 0x00AF(s2)             # 000000AF
    slti    $at, t2, 0x0003
    beq     $at, $zero, lbl_809D98D8
    nop
    bne     s1, $zero, lbl_809D98D8
    nop
    or      a2, $zero, $zero           # a2 = 00000000
lbl_809D98D8:
    jal     func_809E1CDC
    or      a1, s3, $zero              # a1 = 00000000
lbl_809D98E0:
    lui     $at, 0x0001                # $at = 00010000
lbl_809D98E4:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s0, s3, $at
    or      a1, s0, $zero              # a1 = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x004C($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000001
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   s0, $zero, 0x0002          # s0 = 00000002
    addu    $at, $at, s3
    sb      s0, 0x0B00($at)            # 00010B00
    lui     t3, %hi(var_809E41E0)      # t3 = 809E0000
    lb      t3, %lo(var_809E41E0)(t3)
    addiu   t4, t3, 0x0001             # t4 = 809E0001
    sltiu   $at, t4, 0x0007
    beq     $at, $zero, lbl_809D9AF0
    sll     t4, t4,  2
    lui     $at, %hi(var_809E2BD0)     # $at = 809E0000
    addu    $at, $at, t4
    lw      t4, %lo(var_809E2BD0)($at)
    jr      t4
    nop
var_809D9948:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addu    a0, s3, $at
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_809D9AF0
    nop
var_809D996C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f22
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addu    a0, s3, $at
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_809D9AF0
    nop
var_809D99A4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      s0, 0x0AE1($at)            # 00010AE1
    lh      a0, 0x0140(s2)             # 00000140
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0, 12
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    a0, s3, $at
    lui     $at, %hi(var_809E2BEC)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2BEC)($at)
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    mul.s   $f16, $f0, $f10
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f18, $f16, $f22
    mfc1    a1, $f18
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809D9AF0
    nop
var_809D9A0C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mfc1    a1, $f0
    mfc1    a2, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_80064280
    addu    a0, s3, $at
    beq     $zero, $zero, lbl_809D9AF0
    nop
var_809D9A4C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      s0, 0x0AE1($at)            # 00010AE1
    lh      a0, 0x0140(s2)             # 00000140
    addu    $at, a0, $zero
    sll     a0, a0,  5
    subu    a0, a0, $at
    sll     a0, a0,  9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    a0, s3, $at
    lui     $at, %hi(var_809E2BF0)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2BF0)($at)
    lui     $at, %hi(var_809E2BF4)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2BF4)($at)
    mul.s   $f6, $f0, $f4
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_809D9AF0
    nop
var_809D9ABC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f0
    mfc1    a2, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280
    addu    a0, s3, $at
lbl_809D9AF0:
    jal     func_809DF860
    or      a0, s3, $zero              # a0 = 00000000
    lui     v0, %hi(var_809E41FF)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41FF)  # v0 = 809E41FF
    lbu     t8, 0x0000(v0)             # 809E41FF
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    bne     t8, $at, lbl_809D9B58
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_809D1454
    sb      s0, 0x0000(v0)             # 809E41FF
    lw      s0, 0x0088($sp)
    addiu   a1, $zero, 0x6806          # a1 = 00006806
    addiu   s0, s0, 0x00E4             # s0 = 000000E6
    jal     func_80064780
    or      a0, s0, $zero              # a0 = 000000E6
    or      a0, s0, $zero              # a0 = 000000E6
    jal     func_80064780
    addiu   a1, $zero, 0x086E          # a1 = 0000086E
    lui     v0, %hi(var_809E41F0)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41F0)  # v0 = 809E41F0
    lbu     t6, 0x0000(v0)             # 809E41F0
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    beql    t6, $zero, lbl_809D9B5C
    lw      t1, 0x0088($sp)
    sb      t0, 0x0000(v0)             # 809E41F0
lbl_809D9B58:
    lw      t1, 0x0088($sp)
lbl_809D9B5C:
    lui     v0, %hi(var_809E41F1)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41F1)  # v0 = 809E41F1
    lbu     t9, 0x0A50(t1)             # 00000A50
    beql    t9, $zero, lbl_809D9B88
    lw      $ra, 0x0044($sp)
    lbu     t2, 0x0000(v0)             # 809E41F1
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    beql    t2, $zero, lbl_809D9B88
    lw      $ra, 0x0044($sp)
    sb      t3, 0x0000(v0)             # 809E41F1
    lw      $ra, 0x0044($sp)
lbl_809D9B88:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809D9BA8:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     a1, $at, lbl_809D9BEC
    lw      v0, 0x0014($sp)
    lbu     t6, 0x05E8(v0)             # 000005E8
    bnel    t6, $zero, lbl_809D9BF0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lh      t7, 0x001C(v0)             # 0000001C
    lui     t9, 0x0601                 # t9 = 06010000
    lui     t8, 0x0601                 # t8 = 06010000
    bne     t7, $zero, lbl_809D9BE8
    addiu   t9, t9, 0x34B8             # t9 = 060134B8
    addiu   t8, t8, 0x2CE0             # t8 = 06012CE0
    beq     $zero, $zero, lbl_809D9BEC
    sw      t8, 0x0000(a2)             # 00000000
lbl_809D9BE8:
    sw      t9, 0x0000(a2)             # 00000000
lbl_809D9BEC:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_809D9BF0:
    bne     a1, $at, lbl_809D9C50
    lw      v0, 0x0014($sp)
    lw      t1, 0x013C(v0)             # 0000013C
    lui     t0, %hi(func_809D5910)     # t0 = 809D0000
    addiu   t0, t0, %lo(func_809D5910) # t0 = 809D5910
    bnel    t0, t1, lbl_809D9C18
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_809D9C50
    sw      $zero, 0x0000(a2)          # 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_809D9C18:
    lwc1    $f6, 0x04C0(v0)            # 000004C0
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_809D9C54
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t2, 0x001C(v0)             # 0000001C
    lui     t4, 0x0601                 # t4 = 06010000
    lui     t3, 0x0601                 # t3 = 06010000
    bne     t2, $zero, lbl_809D9C4C
    addiu   t4, t4, 0x3310             # t4 = 06013310
    addiu   t3, t3, 0x2B38             # t3 = 06012B38
    beq     $zero, $zero, lbl_809D9C50
    sw      t3, 0x0000(a2)             # 00000000
lbl_809D9C4C:
    sw      t4, 0x0000(a2)             # 00000000
lbl_809D9C50:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809D9C54:
    jr      $ra
    nop


func_809D9C5C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lw      t6, 0x0040($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     a1, $at, lbl_809D9DB0
    lw      s0, 0x0000(t6)             # 00000000
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     a1, $at, lbl_809DA04C
    lw      s1, 0x0050($sp)
    lui     a0, %hi(var_809E2934)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2934)  # a0 = 809E2934
    jal     func_800AB958
    addiu   a1, s1, 0x0038             # a1 = 00000038
    lui     a0, %hi(var_809E2940)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2940)  # a0 = 809E2940
    jal     func_800AB958
    addiu   a1, s1, 0x0434             # a1 = 00000434
    lbu     t7, 0x05E8(s1)             # 000005E8
    beql    t7, $zero, lbl_809DA050
    lw      $ra, 0x001C($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t5, 0x0040($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0030($sp)
    lw      v1, 0x0030($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t2, 0x8012                 # t2 = 80120000
    sw      v0, 0x0004(v1)             # 00000004
    lh      t6, 0x001C(s1)             # 0000001C
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    bne     t6, $zero, lbl_809D9D68
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x3AE8             # a0 = 06013AE8
    sll     t8, a0,  4
    srl     t9, t8, 28
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sll     t5, t9,  2
    addu    t6, t2, t5
    sw      t1, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, a0, t3
    addu    t9, t7, t8
    addu    t5, t9, t4
    sw      t5, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_809DA050
    lw      $ra, 0x001C($sp)
lbl_809D9D68:
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x3D68             # a0 = 06013D68
    sll     t7, a0,  4
    srl     t8, t7, 28
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sll     t9, t8,  2
    addu    t5, t2, t9
    sw      t1, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, a0, t3
    addu    t8, t6, t7
    addu    t9, t8, t4
    sw      t9, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_809DA050
    lw      $ra, 0x001C($sp)
lbl_809D9DB0:
    lw      s1, 0x0050($sp)
    lui     a0, %hi(var_809E294C)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E294C)  # a0 = 809E294C
    jal     func_800AB958
    addiu   a1, s1, 0x0440             # a1 = 00000440
    lui     a0, %hi(var_809E2958)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2958)  # a0 = 809E2958
    jal     func_800AB958
    addiu   a1, s1, 0x044C             # a1 = 0000044C
    lui     a0, %hi(var_809E2964)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2964)  # a0 = 809E2964
    jal     func_800AB958
    addiu   a1, s1, 0x0458             # a1 = 00000458
    lui     a0, %hi(var_809E2970)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2970)  # a0 = 809E2970
    jal     func_800AB958
    addiu   a1, s1, 0x0464             # a1 = 00000464
    lui     a0, %hi(var_809E297C)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E297C)  # a0 = 809E297C
    jal     func_800AB958
    addiu   a1, s1, 0x0470             # a1 = 00000470
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x04C0(s1)            # 000004C0
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809DA050
    lw      $ra, 0x001C($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0040($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    lui     t0, 0xFA00                 # t0 = FA000000
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(v1)             # 00000004
    lh      t8, 0x001C(s1)             # 0000001C
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    bne     t8, $zero, lbl_809D9F6C
    lui     t3, 0x00FF                 # t3 = 00FF0000
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    lui     t0, 0xFA00                 # t0 = FA000000
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     $at, 0xFFE1                # $at = FFE10000
    ori     $at, $at, 0xFF00           # $at = FFE1FF00
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x04C0(s1)            # 000004C0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x3E98             # a1 = 06013E98
    trunc.w.s $f10, $f8
    sll     t7, a1,  4
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t5, t9, $at                # t5 = FFE1FF00
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    srl     t8, t7, 28
    sll     t9, t8,  2
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    addu    t5, t2, t9
    sw      t1, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(t5)             # FFE1FF00
    and     t7, a1, t3
    addu    t8, t6, t7
    addu    t9, t8, t4
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     $at, 0xC3E1                # $at = C3E10000
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x04C0(s1)           # 000004C0
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    andi    t5, t9, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = C3E1EB00
    sw      t6, 0x0004(v0)             # 00000004
    lw      a3, 0x02D0(s0)             # 000002D0
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0x3F98             # v0 = 06013F98
    sll     t8, v0,  4
    srl     t9, t8, 28
    addiu   t7, a3, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sll     t5, t9,  2
    addu    t6, t2, t5
    sw      t1, 0x0000(a3)             # 00000000
    lw      t7, 0x0000(t6)             # C3E1EB00
    and     t8, v0, t3
    addu    t9, t7, t8
    addu    t5, t9, t4
    sw      t5, 0x0004(a3)             # 00000004
    beq     $zero, $zero, lbl_809DA050
    lw      $ra, 0x001C($sp)
lbl_809D9F6C:
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     $at, 0x6414                # $at = 64140000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, v0, 0x0008             # t6 = 06013FA0
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v0)             # 06013F98
    lwc1    $f4, 0x04C0(s1)            # 000004C0
    addiu   a1, a1, 0x4070             # a1 = 06014070
    sll     t9, a1,  4
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = 64140000
    sw      t7, 0x0004(v0)             # 06013F9C
    lw      v0, 0x02D0(s0)             # 000002D0
    srl     t5, t9, 28
    sll     t6, t5,  2
    addiu   t8, v0, 0x0008             # t8 = 06013FA0
    sw      t8, 0x02D0(s0)             # 000002D0
    addu    t7, t2, t6
    sw      t1, 0x0000(v0)             # 06013F98
    lw      t8, 0x0000(t7)             # 64140000
    and     t9, a1, t3
    addu    t5, t8, t9
    addu    t6, t5, t4
    sw      t6, 0x0004(v0)             # 06013F9C
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     $at, 0xFF46                # $at = FF460000
    addiu   t7, v0, 0x0008             # t7 = 06013FA0
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v0)             # 06013F98
    lwc1    $f8, 0x04C0(s1)            # 000004C0
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FF460000
    sw      t8, 0x0004(v0)             # 06013F9C
    lw      a3, 0x02D0(s0)             # 000002D0
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0x4158             # v0 = 06014158
    sll     t5, v0,  4
    srl     t6, t5, 28
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t1, 0x0000(a3)             # 00000000
    lw      t9, 0x0000(t8)             # FF460000
    and     t5, v0, t3
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(a3)             # 00000004
lbl_809DA04C:
    lw      $ra, 0x001C($sp)
lbl_809DA050:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809DA060:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    jal     func_800AA6EC
    lw      s1, 0x0000(s3)             # 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s3)             # 00000000
    lwc1    $f12, 0x04AC(s2)           # 000004AC
    lwc1    $f14, 0x04B0(s2)           # 000004B0
    lw      a2, 0x04B4(s2)             # 000004B4
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x01A4(s2)           # 000001A4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0070($sp)
    lw      a3, 0x0070($sp)
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lui     a2, 0x0602                 # a2 = 06020000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x01A0(s2)            # 000001A0
    addiu   a2, a2, 0xBC00             # a2 = 0601BC00
    lui     t4, 0xDE00                 # t4 = DE000000
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0028                 # t9 = 00280000
    ori     t9, t9, 0x1E50             # t9 = 00281E50
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t5, a2,  4
    srl     t6, t5, 28
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sll     t7, t6,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t4, 0x0000(s0)             # 00000000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t8, t9
    addu    t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    lw      t0, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(t0)             # 00000000
    lwc1    $f10, 0x01A0(s2)           # 000001A0
    lwc1    $f8, 0x01AC(s2)            # 000001AC
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f8, $f4
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_809DA230
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_809DA228
    nop
    mfc1    t4, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DA240
    or      t4, t4, $at                # t4 = 80000000
lbl_809DA228:
    beq     $zero, $zero, lbl_809DA240
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_809DA230:
    mfc1    t4, $f10
    nop
    bltz    t4, lbl_809DA228
    nop
lbl_809DA240:
    lui     $at, 0xD7D7                # $at = D7D70000
    ori     $at, $at, 0xD700           # $at = D7D7D700
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    ctc1    t3, $f31
    or      t6, t5, $at                # t6 = D7D7D7FF
    sw      t6, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t8, $zero, 0xFF80          # t8 = FFFFFF80
    lui     t3, 0xDB06                 # t3 = DB060000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    cfc1    t7, $f31
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    ctc1    t8, $f31
    lwc1    $f16, 0x01B4(s2)           # 000001B4
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.w.s $f18, $f16
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_809DA320
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809DA318
    nop
    mfc1    t8, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DA330
    or      t8, t8, $at                # t8 = 80000000
lbl_809DA318:
    beq     $zero, $zero, lbl_809DA330
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_809DA320:
    mfc1    t8, $f18
    nop
    bltz    t8, lbl_809DA318
    nop
lbl_809DA330:
    andi    t9, t8, 0x003F             # t9 = 0000003F
    sw      t9, 0x001C($sp)
    lh      t3, 0x0142(s2)             # 00000142
    ctc1    t7, $f31
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sll     t4, t3,  2
    andi    t5, t4, 0x003F             # t5 = 00000020
    sw      t5, 0x0020($sp)
    sw      t7, 0x0028($sp)
    sw      v1, 0x0058($sp)
    jal     func_8007EB84
    sw      t6, 0x0024($sp)
    lw      v1, 0x0058($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_800AA6EC
    nop
    lwc1    $f12, 0x01B0(s2)           # 000001B0
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0054($sp)
    lw      a1, 0x0054($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     a0, 0x0602                 # a0 = 06020000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   a0, a0, 0xC1C0             # a0 = 0601C1C0
    sll     t5, a0,  4
    srl     t6, t5, 28
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sll     t7, t6,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t4, 0x0000(s0)             # 00000000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t8, t9
    addu    t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x004C($sp)
    lw      t0, 0x004C($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0034             # t8 = DB060034
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lh      v1, 0x0142(s2)             # 00000142
    lw      a0, 0x0000(s3)             # 00000000
    sw      t9, 0x0010($sp)
    subu    t5, $zero, v1
    sll     t6, t5,  1
    andi    t7, t6, 0x003F             # t7 = 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sll     a3, v1,  3
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t4, 0x0018($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x0028($sp)
    sw      t7, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      t3, 0x0014($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      s0, 0x0048($sp)
    jal     func_8007EB84
    andi    a2, v1, 0x007F             # a2 = 00000000
    lw      t1, 0x0048($sp)
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0xA790             # v1 = 0601A790
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x0198(s2)            # 00000198
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    trunc.w.s $f4, $f8
    mfc1    t8, $f4
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t3, t9, $at                # t3 = C3E1EB00
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t6, $zero, 0xFF80          # t6 = FFFFFF80
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xE200                 # t8 = E2000000
    lui     t9, 0xC810                 # t9 = C8100000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    ori     t9, t9, 0x4F50             # t9 = C8104F50
    ori     t8, t8, 0x001C             # t8 = E200001C
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xD9FF                 # t4 = D9FF0000
    lui     t5, 0x0001                 # t5 = 00010000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    ori     t5, t5, 0x0400             # t5 = 00010400
    ori     t4, t4, 0xFFFF             # t4 = D9FFFFFF
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t8, v1,  4
    srl     t9, t8, 28
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sll     t3, t9,  2
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_809DA5B8:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    jal     func_800AA6EC
    lw      s1, 0x0000(s3)             # 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s3)             # 00000000
    lwc1    $f12, 0x04AC(s2)           # 000004AC
    lwc1    $f14, 0x04B0(s2)           # 000004B0
    lw      a2, 0x04B4(s2)             # 000004B4
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x01A8(s2)           # 000001A8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lh      v1, 0x0140(s2)             # 00000140
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sll     t3, v1,  1
    andi    t4, t3, 0x007F             # t4 = 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    a2, $zero, v1
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t5, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t4, 0x001C($sp)
    sw      t6, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0078($sp)
    lw      t0, 0x0078($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0074($sp)
    lw      a2, 0x0074($sp)
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     $at, 0x6428                # $at = 64280000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x01A0(s2)            # 000001A0
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x9D40             # v0 = 06019D40
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = 64280000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFFF5                 # t5 = FFF50000
    ori     t5, t5, 0xFF80             # t5 = FFF5FF80
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t8, v0,  4
    srl     t9, t8, 28
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sll     t2, t9,  2
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t3, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s3, $at
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0060($sp)
    lw      t0, 0x0060($sp)
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lh      v1, 0x0140(s2)             # 00000140
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    subu    a3, $zero, v1
    addu    $at, a3, $zero
    sll     a3, a3,  2
    subu    a3, a3, $at
    sll     a3, a3,  1
    sll     t6, v1,  1
    andi    t7, t6, 0x007F             # t7 = 00000000
    andi    a3, a3, 0x00FF             # a3 = 00000000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      a3, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t9, 0x0028($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      s0, 0x005C($sp)
    jal     func_8007EB84
    andi    a2, v1, 0x007F             # a2 = 00000000
    lw      t1, 0x005C($sp)
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0x8FC0             # v1 = 06018FC0
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     $at, 0x5000                # $at = 50000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x019C(s2)            # 0000019C
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 50000000
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t9, v1,  4
    srl     t2, t9, 28
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sll     t3, t2,  2
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t8, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lh      v0, 0x0140(s2)             # 00000140
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    subu    v0, $zero, v0
    sll     t5, v0,  2
    addu    t5, t5, v0
    sll     t5, t5,  1
    sll     a2, v0,  2
    subu    a2, a2, v0
    andi    t6, t5, 0x00FF             # t6 = 00000000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      t6, 0x0020($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t8, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    sw      s0, 0x0048($sp)
    lw      t1, 0x0048($sp)
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     $at, %hi(var_809E2BF8)     # $at = 809E0000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lwc1    $f18, %lo(var_809E2BF8)($at)
    lwc1    $f16, 0x0198(s2)           # 00000198
    lui     $at, 0x6432                # $at = 64320000
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = 64320000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xC8EB                 # t5 = C8EB0000
    ori     t5, t5, 0xF080             # t5 = C8EBF080
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x01A4(s2)           # 000001A4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0x9938             # a0 = 06019938
    sll     t2, a0,  4
    srl     t3, t2, 28
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sll     t4, t3,  2
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x0000(s0)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_809DAA98:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s5, 0x007C($sp)
    sw      s4, 0x0078($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x008C($sp)
    sw      s8, 0x0088($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s3, 0x0074($sp)
    sw      s2, 0x0070($sp)
    sw      s1, 0x006C($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      s3, 0x0000(s5)             # 00000000
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    lh      a3, 0x0142(s4)             # 00000142
    lw      a0, 0x0000(s5)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    a3, $zero, a3
    addu    $at, a3, $zero
    sll     a3, a3,  4
    subu    a3, a3, $at
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t8, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, %hi(var_809E2BFC)     # $at = 809E0000
    lwc1    $f30, %lo(var_809E2BFC)($at)
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f30
    mov.s   $f12, $f22
    jal     func_800AA7F4
    mov.s   $f14, $f22
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f6                   # $f6 = 2000.00
    lwc1    $f4, 0x04D0(s4)            # 000004D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f12, $f4, $f6
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x04DC(s4)           # 000004DC
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lh      t5, 0x001C(s4)             # 0000001C
    lui     s2, 0x8012                 # s2 = 80120000
    addiu   s2, s2, 0x0C38             # s2 = 80120C38
    bne     t5, $zero, lbl_809DAC7C
    lui     s1, 0xFA00                 # s1 = FA000000
    lui     s2, 0x8012                 # s2 = 80120000
    lui     s6, 0x00FF                 # s6 = 00FF0000
    ori     s6, s6, 0xFFFF             # s6 = 00FFFFFF
    addiu   s2, s2, 0x0C38             # s2 = 80120C38
    lui     s1, 0xFA00                 # s1 = FA000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     $at, 0x87AF                # $at = 87AF0000
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      s1, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x04C8(s4)            # 000004C8
    ori     $at, $at, 0xA500           # $at = 87AFA500
    addiu   a0, a0, 0xCEE0             # a0 = 0601CEE0
    trunc.w.s $f10, $f8
    sll     t5, a0,  4
    srl     t6, t5, 28
    lui     t4, 0xDE00                 # t4 = DE000000
    mfc1    t0, $f10
    nop
    andi    t1, t0, 0x00FF             # t1 = 00000000
    or      t2, t1, $at                # t2 = 87AFA500
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    sll     t7, t6,  2
    addu    t8, s2, t7
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000000
    and     t0, a0, s6
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809DACF8
    nop
lbl_809DAC7C:
    lui     s6, 0x00FF                 # s6 = 00FF0000
    ori     s6, s6, 0xFFFF             # s6 = 00FFFFFF
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    lui     $at, 0xFFFF                # $at = FFFF0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      s1, 0x0000(s0)             # 00000000
    lwc1    $f16, 0x04C8(s4)           # 000004C8
    addiu   a0, a0, 0xDBE8             # a0 = 0601DBE8
    sll     t2, a0,  4
    trunc.w.s $f18, $f16
    srl     t3, t2, 28
    lui     t1, 0xDE00                 # t1 = DE000000
    mfc1    t7, $f18
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = FFFF0000
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    sll     t4, t3,  2
    addu    t5, s2, t4
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, a0, s6
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
lbl_809DACF8:
    jal     func_800AA724
    nop
    lh      t0, 0x001C(s4)             # 0000001C
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0xA998             # a0 = 0601A998
    bne     t0, $zero, lbl_809DAD88
    lui     t9, 0xDE00                 # t9 = DE000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     $at, 0xC3E1                # $at = C3E10000
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      s1, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x04C4(s4)            # 000004C4
    sll     t0, a0,  4
    srl     t1, t0, 28
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = C3E1EB00
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    sll     t2, t1,  2
    addu    t3, s2, t2
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t4, 0x0000(t3)             # 00000000
    and     t5, a0, s6
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809DADDC
    lui     $at, 0x0001                # $at = 00010000
lbl_809DAD88:
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     $at, 0xC814                # $at = C8140000
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      s1, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x04C4(s4)            # 000004C4
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    nop
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = C8140000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFFD7                 # t7 = FFD70000
    ori     t7, t7, 0xFF80             # t7 = FFD7FF80
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_809DADDC:
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s6, s5, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0xA430             # v0 = 0601A430
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s8, v0, $at
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f28                  # $f28 = 1.50
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f26                  # $f26 = 0.13
    lui     $at, %hi(var_809E2C00)     # $at = 809E0000
    sll     t8, v0,  4
    srl     t9, t8, 28
    lwc1    $f24, %lo(var_809E2C00)($at)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    lui     $at, %hi(var_809E2C04)     # $at = 809E0000
    sll     t0, t9,  2
    addu    s7, t0, t1
    lwc1    $f20, %lo(var_809E2C04)($at)
    or      s1, $zero, $zero           # s1 = 00000000
lbl_809DAE34:
    jal     func_800AA6EC
    nop
    mfc1    a2, $f30
    mov.s   $f12, $f22
    mov.s   $f14, $f22
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    s1, $f16                   # $f16 = 0.00
    lwc1    $f8, 0x04D8(s4)            # 000004D8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    mul.s   $f0, $f18, $f24
    add.s   $f4, $f0, $f0
    mul.s   $f6, $f4, $f26
    jal     func_800AAD4C
    add.s   $f12, $f6, $f8
    lwc1    $f10, 0x04D0(s4)           # 000004D0
    mfc1    a2, $f22
    mov.s   $f12, $f22
    mul.s   $f14, $f10, $f28
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, s2, 0x0008             # t2 = 80120C40
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0000(s2)             # 80120C38
    lh      v0, 0x0142(s4)             # 00000142
    lw      a0, 0x0000(s5)             # 00000000
    sll     t8, s1,  2
    subu    t8, t8, s1
    sll     t8, t8,  3
    sll     t5, s1,  2
    subu    t6, $zero, v0
    sll     t7, t6,  4
    addu    t5, t5, s1
    addu    t8, t8, s1
    sll     t4, v0,  2
    sll     t8, t8,  1
    sll     t5, t5,  1
    subu    t7, t7, t6
    subu    t4, t4, v0
    addu    a2, t4, t5
    addu    a3, t7, t8
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      t2, 0x0024($sp)
    sw      t3, 0x0028($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s2)             # 80120C3C
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800ABE54
    or      a0, s6, $zero              # a0 = 00FFFFFF
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s2, 0x0008             # t4 = 80120C40
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t5, 0x0000(s2)             # 80120C38
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s2)             # 80120C3C
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0000(s7)             # 00000000
    addu    t9, t8, s8
    addu    t0, t9, $at
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0008
    bne     $at, $zero, lbl_809DAE34
    nop
    lw      $ra, 0x008C($sp)
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
    lw      s5, 0x007C($sp)
    lw      s6, 0x0080($sp)
    lw      s7, 0x0084($sp)
    lw      s8, 0x0088($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809DAFFC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x006C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x051C(s0)            # 0000051C
    lw      t6, 0x006C($sp)
    c.eq.s  $f4, $f6
    lw      s1, 0x0000(t6)             # 00000000
    bc1tl   lbl_809DB358
    lw      $ra, 0x0024($sp)
    jal     func_800AA6EC
    nop
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lh      a2, 0x0140(s0)             # 00000140
    lw      t9, 0x006C($sp)
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    subu    $at, $zero, a2
    sll     a2, $at,  4
    subu    a2, a2, $at
    lw      a0, 0x0000(t9)             # 00000000
    sw      t2, 0x0010($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v1, 0x0054($sp)
    lw      t0, 0x0054($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f8, 0x04E8(s0)            # 000004E8
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    mul.s   $f16, $f8, $f10
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t5, 0xFA00                 # t5 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    bne     t4, $at, lbl_809DB120
    sra     a1, a1, 16
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x3C00           # $at = FFFF3C00
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    andi    t7, a1, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFF3C00
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFF00                 # t3 = FF000000
    ori     t3, t3, 0x0080             # t3 = FF000080
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DB164
    lwc1    $f12, 0x047C(s0)           # 0000047C
lbl_809DB120:
    lw      v1, 0x02D0(s1)             # 000002D0
    andi    t6, a1, 0x00FF             # t6 = 00000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    or      t7, t6, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0x6464                 # t2 = 64640000
    ori     t2, t2, 0xFF80             # t2 = 6464FF80
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x047C(s0)           # 0000047C
lbl_809DB164:
    lwc1    $f14, 0x0480(s0)           # 00000480
    jal     func_800AA7F4
    lw      a2, 0x0484(s0)             # 00000484
    lwc1    $f12, 0x050C(s0)           # 0000050C
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0508(s0)           # 00000508
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0510(s0)           # 00000510
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_809E2C08)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2C08)($at)
    lwc1    $f8, 0x051C(s0)            # 0000051C
    lui     $at, 0x42C4                # $at = 42C40000
    mtc1    $at, $f18                  # $f18 = 98.00
    mul.s   $f16, $f8, $f10
    lui     $at, %hi(var_809E2C0C)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2C0C)($at)
    lwc1    $f12, 0x04E8(s0)           # 000004E8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12
    mul.s   $f4, $f16, $f18
    div.s   $f8, $f4, $f6
    mfc1    a2, $f8
    jal     func_800AA8FC
    nop
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x006C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a2, 0x0040($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     a1, 0x0602                 # a1 = 06020000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   a1, a1, 0xDDF0             # a1 = 0601DDF0
    sll     t8, a1,  4
    srl     t9, t8, 28
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    sll     t2, t9,  2
    addu    t0, t2, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(v1)             # 00000000
    lw      t4, 0x0000(t0)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t4, t1
    addu    t6, t5, $at
    sw      t6, 0x0004(v1)             # 00000004
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f16, 0x0538(s0)           # 00000538
    or      a3, $zero, $zero           # a3 = 00000000
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_809DB34C
    nop
    lwc1    $f12, 0x04FC(s0)           # 000004FC
    lwc1    $f14, 0x0500(s0)           # 00000500
    lw      a2, 0x0504(s0)             # 00000504
    sw      t1, 0x002C($sp)
    jal     func_800AA7F4
    sw      t0, 0x0030($sp)
    lwc1    $f12, 0x0530(s0)           # 00000530
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x052C(s0)           # 0000052C
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0510(s0)           # 00000510
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_809E2C10)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2C10)($at)
    lwc1    $f18, 0x0538(s0)           # 00000538
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mul.s   $f6, $f18, $f4
    lui     $at, %hi(var_809E2C14)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2C14)($at)
    lwc1    $f12, 0x04E8(s0)           # 000004E8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12
    mul.s   $f10, $f6, $f8
    div.s   $f18, $f10, $f16
    mfc1    a2, $f18
    jal     func_800AA8FC
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x006C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0030($sp)
    lw      t6, 0x002C($sp)
    lw      t5, 0x0000(t4)             # 00000000
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
lbl_809DB34C:
    jal     func_800AA724
    nop
    lw      $ra, 0x0024($sp)
lbl_809DB358:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_809DB368:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    jal     func_800AA6EC
    lw      s1, 0x0000(t6)             # 00000000
    lui     $at, 0x4264                # $at = 42640000
    mtc1    $at, $f6                   # $f6 = 57.00
    lwc1    $f4, 0x0028(s2)            # 00000028
    lwc1    $f12, 0x0024(s2)           # 00000024
    lw      a2, 0x002C(s2)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f4, $f6
    lwc1    $f12, 0x01B8(s2)           # 000001B8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x0044($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x002C($sp)
    lw      a2, 0x002C($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     a1, 0x0602                 # a1 = 06020000
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   a1, a1, 0xF608             # a1 = 0601F608
    sll     t5, a1,  4
    srl     t6, t5, 28
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sll     t7, t6,  2
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t4, 0x0000(s0)             # 00000000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t8, t9
    addu    t1, t0, $at
    sw      t1, 0x0004(s0)             # 00000004
    lw      t2, 0x0044($sp)
    jal     func_8007E404
    lw      a0, 0x0000(t2)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f14                  # $f14 = 240.00
    lwc1    $f12, 0x0024(s2)           # 00000024
    lw      a2, 0x002C(s2)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f10                  # $f10 = 4000.00
    lwc1    $f8, 0x0050(s2)            # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    mul.s   $f16, $f8, $f10
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f12, $f16, $f18
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    lw      t8, 0x0044($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0405                 # a0 = 04050000
    addiu   a0, a0, 0xE740             # a0 = 0404E740
    sll     t1, a0,  4
    srl     t2, t1, 28
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sll     t3, t2,  2
    lui     t0, 0xDE00                 # t0 = DE000000
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t0, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809DB56C:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    lw      t6, 0x1C44(s2)             # 00001C44
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    sw      t6, 0x0064($sp)
    lbu     t7, 0x0554(s0)             # 00000554
    lui     t5, %hi(var_809E2988)      # t5 = 809E0000
    lw      s1, 0x0000(s2)             # 00000000
    beq     t7, $zero, lbl_809DBA90
    addiu   t5, t5, %lo(var_809E2988)  # t5 = 809E2988
    lui     $ra, 0x00FF                # $ra = 00FF0000
    ori     $ra, $ra, 0xFFFF           # $ra = 00FFFFFF
    lw      t1, 0x02C0(s1)             # 000002C0
    lui     $at, 0x8000                # $at = 80000000
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(t1)             # 00000000
    lh      t9, 0x04BC(s0)             # 000004BC
    sll     t6, t9,  2
    addu    t7, t5, t6
    lw      v1, 0x0000(t7)             # 00000000
    sll     t9, v1,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t7
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t8, v1, $ra
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(t1)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     $at, 0x8000                # $at = 80000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lh      t9, 0x04BC(s0)             # 000004BC
    sll     t6, t9,  2
    addu    t7, t5, t6
    lw      v1, 0x0000(t7)             # 00000000
    sll     t9, v1,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t7
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t8, v1, $ra
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x0184(s0)            # 00000184
    lwc1    $f4, 0x0174(s0)            # 00000174
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    lwc1    $f18, 0x0178(s0)           # 00000178
    trunc.w.s $f6, $f4
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f4, $f18
    mfc1    a2, $f6
    trunc.w.s $f10, $f8
    mfc1    t6, $f4
    sll     a2, a2, 16
    sra     a2, a2, 16
    andi    t7, t6, 0x007F             # t7 = 00000001
    sw      t7, 0x001C($sp)
    lwc1    $f6, 0x0188(s0)            # 00000188
    mfc1    a3, $f10
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    trunc.w.s $f8, $f6
    sll     a3, a3, 16
    sra     a3, a3, 16
    andi    a3, a3, 0x007F             # a3 = 00000000
    mfc1    t7, $f8
    sw      t6, 0x0028($sp)
    sw      t9, 0x0024($sp)
    andi    t8, t7, 0x00FF             # t8 = 00000001
    sw      t8, 0x0020($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0050($sp)
    lw      t3, 0x0050($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t3)             # 00000004
    lh      t7, 0x001C(s0)             # 0000001C
    bnel    t7, $zero, lbl_809DB780
    lw      v0, 0x02D0(s1)             # 000002D0
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x018C(s0)            # 0000018C
    lwc1    $f10, 0x017C(s0)           # 0000017C
    lw      a0, 0x0000(s2)             # 00000000
    trunc.w.s $f6, $f4
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0010($sp)
    trunc.w.s $f18, $f10
    mfc1    a2, $f6
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    sw      v0, 0x004C($sp)
    mfc1    a1, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    andi    a1, a1, 0x007F             # a1 = 00000000
    jal     func_8007EB00
    andi    a2, a2, 0x00FF             # a2 = 00000000
    lw      v1, 0x004C($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DB828
    nop
    lw      v0, 0x02D0(s1)             # 000002D0
lbl_809DB780:
    ori     t6, t6, 0x0024             # t6 = 00000024
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lwc1    $f18, 0x018C(s0)           # 0000018C
    lwc1    $f8, 0x017C(s0)            # 0000017C
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sw      t9, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    lwc1    $f6, 0x0180(s0)            # 00000180
    trunc.w.s $f10, $f8
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f8, $f6
    mfc1    a2, $f10
    trunc.w.s $f4, $f18
    mfc1    t7, $f8
    sll     a2, a2, 16
    sra     a2, a2, 16
    andi    t8, t7, 0x007F             # t8 = 00000001
    sw      t8, 0x001C($sp)
    lwc1    $f10, 0x0190(s0)           # 00000190
    mfc1    a3, $f4
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    trunc.w.s $f18, $f10
    sll     a3, a3, 16
    sra     a3, a3, 16
    andi    a3, a3, 0x007F             # a3 = 00000000
    mfc1    t8, $f18
    sw      t7, 0x0028($sp)
    sw      t6, 0x0024($sp)
    andi    t9, t8, 0x00FF             # t9 = 00000001
    sw      t9, 0x0020($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0048($sp)
    lw      v1, 0x0048($sp)
    sw      v0, 0x0004(v1)             # 00000004
lbl_809DB828:
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lh      t8, 0x014C(s0)             # 0000014C
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_809DB878
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0384          # t6 = 00000384
    addiu   t7, $zero, 0x044B          # t7 = 0000044B
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8007DC40
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    beq     $zero, $zero, lbl_809DBA40
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_809DB878:
    cfc1    t8, $f31
    ctc1    a1, $f31
    lwc1    $f4, 0x01C4(s0)            # 000001C4
    lw      a0, 0x02C0(s1)             # 000002C0
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_809DB8EC
    mfc1    a1, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    a1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_809DB8E0
    nop
    mfc1    a1, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DB8F8
    or      a1, a1, $at                # a1 = 80000000
lbl_809DB8E0:
    beq     $zero, $zero, lbl_809DB8F8
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f6
lbl_809DB8EC:
    nop
    bltz    a1, lbl_809DB8E0
    nop
lbl_809DB8F8:
    ctc1    t8, $f31
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f8, 0x01C8(s0)            # 000001C8
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t9, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_809DB974
    mfc1    a2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_809DB968
    nop
    mfc1    a2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DB980
    or      a2, a2, $at                # a2 = 80000000
lbl_809DB968:
    beq     $zero, $zero, lbl_809DB980
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f10
lbl_809DB974:
    nop
    bltz    a2, lbl_809DB968
    nop
lbl_809DB980:
    ctc1    t9, $f31
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f18, 0x01CC(s0)           # 000001CC
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    a3, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_809DB9FC
    mfc1    a3, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    a3, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_809DB9F0
    nop
    mfc1    a3, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DBA08
    or      a3, a3, $at                # a3 = 80000000
lbl_809DB9F0:
    beq     $zero, $zero, lbl_809DBA08
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f4
lbl_809DB9FC:
    nop
    bltz    a3, lbl_809DB9F0
    nop
lbl_809DBA08:
    sw      $zero, 0x0010($sp)
    lwc1    $f6, 0x01D0(s0)            # 000001D0
    ctc1    t6, $f31
    nop
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    nop
    sw      t8, 0x0014($sp)
    lwc1    $f10, 0x01D4(s0)           # 000001D4
    trunc.w.s $f18, $f10
    mfc1    t6, $f18
    jal     func_8007DC40
    sw      t6, 0x0018($sp)
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_809DBA40:
    jal     func_800AA6EC
    nop
    lw      a1, 0x055C(s0)             # 0000055C
    lw      a2, 0x0578(s0)             # 00000578
    lbu     a3, 0x055A(s0)             # 0000055A
    lui     t7, %hi(func_809D9BA8)     # t7 = 809E0000
    lui     t8, %hi(func_809D9C5C)     # t8 = 809E0000
    addiu   t8, t8, %lo(func_809D9C5C) # t8 = 809D9C5C
    addiu   t7, t7, %lo(func_809D9BA8) # t7 = 809D9BA8
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AA724
    nop
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009A574
    lw      a1, 0x02C0(s1)             # 000002C0
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_809DBA90:
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_809DBBA4
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0198(s0)            # 00000198
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_809DBB9C
    nop
    lwc1    $f16, 0x01A0(s0)           # 000001A0
    lw      t6, 0x0064($sp)
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_809DBB94
    nop
    lwc1    $f10, 0x04B0(s0)           # 000004B0
    lwc1    $f18, 0x0028(t6)           # 00000028
    lwc1    $f6, 0x04AC(s0)            # 000004AC
    lwc1    $f8, 0x0024(t6)            # 00000024
    sub.s   $f2, $f10, $f18
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f4, 0x04B4(s0)            # 000004B4
    sub.s   $f12, $f6, $f8
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f6, 0x002C(t6)            # 0000002C
    abs.s   $f0, $f2
    c.lt.s  $f0, $f8
    sub.s   $f14, $f4, $f6
    bc1f    lbl_809DBB94
    nop
    lhu     t7, 0x0088(t6)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_809DBB94
    nop
    mul.s   $f10, $f12, $f12
    lui     $at, %hi(var_809E2C18)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2C18)($at)
    mul.s   $f18, $f14, $f14
    lwc1    $f4, 0x01A4(s0)            # 000001A4
    lui     v0, %hi(var_809E41FF)      # v0 = 809E0000
    addiu   v0, v0, %lo(var_809E41FF)  # v0 = 809E41FF
    mul.s   $f8, $f4, $f6
    add.s   $f0, $f10, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_809DBB94
    nop
    lbu     t9, 0x0000(v0)             # 809E41FF
    lui     $at, 0x4348                # $at = 43480000
    bne     t9, $zero, lbl_809DBB94
    nop
    mtc1    $at, $f10                  # $f10 = 200.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t8, %hi(var_809E41EC)      # t8 = 809E0000
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_809DBB94
    nop
    sb      t6, 0x0000(v0)             # 809E41FF
    lw      t8, %lo(var_809E41EC)(t8)
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, 0x016C(t8)             # 809E016C
lbl_809DBB94:
    jal     func_809DA060
    or      a1, s2, $zero              # a1 = 00000000
lbl_809DBB9C:
    beq     $zero, $zero, lbl_809DBBB0
    lbu     v0, 0x0554(s0)             # 00000554
lbl_809DBBA4:
    jal     func_809DA5B8
    or      a1, s2, $zero              # a1 = 00000000
    lbu     v0, 0x0554(s0)             # 00000554
lbl_809DBBB0:
    beql    v0, $zero, lbl_809DBC08
    lw      $ra, 0x0044($sp)
    lw      t6, 0x013C(s0)             # 0000013C
    lui     t9, %hi(func_809D5910)     # t9 = 809D0000
    addiu   t9, t9, %lo(func_809D5910) # t9 = 809D5910
    bne     t9, t6, lbl_809DBBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809DB368
    or      a1, s2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809DBC08
    lw      $ra, 0x0044($sp)
lbl_809DBBE0:
    jal     func_809DAA98
    or      a1, s2, $zero              # a1 = 00000000
    lui     a0, %hi(var_809E2994)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E2994)  # a0 = 809E2994
    jal     func_800AB958
    addiu   a1, s0, 0x047C             # a1 = 0000047C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809DAFFC
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x0044($sp)
lbl_809DBC08:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_809DBC1C:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0068($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    lw      t6, 0x0068($sp)
    addiu   t8, a1, 0xFFF1             # t8 = FFFFFFF1
    sltiu   $at, t8, 0x001C
    lw      t0, 0x0000(t6)             # 00000000
    beq     $at, $zero, lbl_809DC004
    sw      a1, 0x0038($sp)
    sll     t8, t8,  2
    lui     $at, %hi(var_809E2C1C)     # $at = 809E0000
    addu    $at, $at, t8
    lw      t8, %lo(var_809E2C1C)($at)
    jr      t8
    nop
var_809DBC60:
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x007C($sp)
    lw      t7, 0x0068($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t9, 0x0140(t8)             # 00000131
    lw      a0, 0x0000(t7)             # 00000000
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    mtc1    t9, $f4                    # $f4 = 0.00
    sw      t7, 0x0010($sp)
    sw      t0, 0x0060($sp)
    cvt.s.w $f6, $f4
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    sw      v1, 0x0058($sp)
    trunc.w.s $f8, $f6
    mfc1    a2, $f8
    nop
    sll     a2, a2, 16
    jal     func_8007EB00
    sra     a2, a2, 16
    lw      t1, 0x0058($sp)
    lw      t0, 0x0060($sp)
    lui     t3, %hi(var_809E29A0)      # t3 = 809E0000
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    addiu   t3, t3, %lo(var_809E29A0)  # t3 = 809E29A0
    lui     $ra, 0x8000                # $ra = 80000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x007C($sp)
    lh      t7, 0x04BC(t6)             # 000004BC
    sll     t8, t7,  2
    addu    t9, t3, t8
    lw      a2, 0x0000(t9)             # DB060020
    sll     t7, a2,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t7, t5, t9
    lw      t8, 0x0000(t7)             # 00000000
    and     t6, a2, t4
    addu    t9, t6, t8
    addu    t7, t9, $ra
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x007C($sp)
    lh      t7, 0x04BE(t9)             # DB0604DE
    sll     t6, t7,  2
    addu    t8, t3, t6
    lw      a3, 0x0000(t8)             # DB060024
    sll     t7, a3,  4
    srl     t6, t7, 28
    sll     t8, t6,  2
    addu    t7, t5, t8
    lw      t6, 0x0000(t7)             # 00000000
    and     t9, a3, t4
    addu    t8, t9, t6
    addu    t7, t8, $ra
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x007C($sp)
    lh      t7, 0x0150(t8)             # DB060174
    andi    t9, t7, 0x00FF             # t9 = 00000000
    or      t6, t9, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC008
    lw      t8, 0x007C($sp)
var_809DBDBC:
    lw      t8, 0x0070($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sw      $zero, 0x0000(t8)          # DB060024
    lw      v0, 0x02D0(t0)             # 000002D0
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0068($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lw      a0, 0x0000(t6)             # FFFFFF00
    lw      t6, 0x007C($sp)
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lh      t8, 0x0140(t6)             # 00000040
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0024($sp)
    subu    t7, $zero, t8
    sll     t9, t7,  4
    subu    t9, t9, t7
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0028($sp)
    sw      t9, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0048($sp)
    lw      v1, 0x0048($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC008
    lw      t8, 0x007C($sp)
var_809DBE4C:
    lw      t7, 0x0070($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x002C             # t6 = DB06002C
    sw      $zero, 0x0000(t7)          # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t8, 0x0068($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    lw      a0, 0x0000(t8)             # 00000000
    lw      t8, 0x007C($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lh      t7, 0x0140(t8)             # 00000140
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0024($sp)
    subu    t9, $zero, t7
    sll     t6, t9,  2
    addu    t6, t6, t9
    sll     t6, t6,  1
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    sw      t7, 0x0028($sp)
    sw      t6, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0044($sp)
    lw      v1, 0x0044($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC008
    lw      t8, 0x007C($sp)
var_809DBEE0:
    lw      t9, 0x0070($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sw      $zero, 0x0000(t9)          # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0068($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    lw      a0, 0x0000(t7)             # 00000000
    lw      t7, 0x007C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lh      v1, 0x0140(t7)             # 00000140
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    t9, $zero, v1
    sll     t6, t9,  3
    subu    t6, t6, t9
    sw      t6, 0x0020($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0028($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0040($sp)
    jal     func_8007EB84
    sw      v1, 0x001C($sp)
    lw      t1, 0x0040($sp)
    sw      v0, 0x0004(t1)             # 00000004
    beq     $zero, $zero, lbl_809DC008
    lw      t8, 0x007C($sp)
var_809DBF70:
    lw      t9, 0x0070($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    sw      $zero, 0x0000(t9)          # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x007C($sp)
    lw      t7, 0x0068($sp)
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    lh      a2, 0x0140(t9)             # 00000140
    lw      a0, 0x0000(t7)             # 00000000
    sw      t6, 0x0010($sp)
    jal     func_8007EB00
    sw      v0, 0x003C($sp)
    lw      v1, 0x003C($sp)
    sw      v0, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC008
    lw      t8, 0x007C($sp)
var_809DBFC8:
    lw      t8, 0x007C($sp)
    lui     t9, 0x0603                 # t9 = 06030000
    lw      t6, 0x0070($sp)
    lbu     t7, 0x05E8(t8)             # 000005E8
    beq     t7, $zero, lbl_809DC004
    addiu   t9, t9, 0xD940             # t9 = 0602D940
    beq     $zero, $zero, lbl_809DC004
    sw      t9, 0x0000(t6)             # 00000000
var_809DBFE8:
    lw      t8, 0x007C($sp)
    lw      t6, 0x0070($sp)
    lbu     t7, 0x05E8(t8)             # 000005E8
    beq     t7, $zero, lbl_809DC004
    lui     t9, 0x0603                 # t9 = 06030000
    addiu   t9, t9, 0xD890             # t9 = 0602D890
    sw      t9, 0x0000(t6)             # 00000000
lbl_809DC004:
    lw      t8, 0x007C($sp)
lbl_809DC008:
    lw      t9, 0x0038($sp)
    addiu   $at, $zero, 0x0022         # $at = 00000022
    lbu     t7, 0x05E8(t8)             # 000005E8
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t7, $zero, lbl_809DC038
    nop
    beq     t9, $at, lbl_809DC034
    lw      t6, 0x0070($sp)
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     t9, $at, lbl_809DC038
    nop
lbl_809DC034:
    sw      $zero, 0x0000(t6)          # 00000000
lbl_809DC038:
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_809DC048:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t6, 0x0028($sp)
    addiu   t8, a1, 0xFFF1             # t8 = FFFFFFF1
    sltiu   $at, t8, 0x001C
    lw      t7, 0x0000(t6)             # 00000000
    sll     t8, t8,  2
    beq     $at, $zero, lbl_809DC174
    sw      t7, 0x0020($sp)
    lui     $at, %hi(var_809E2C8C)     # $at = 809E0000
    addu    $at, $at, t8
    lw      t8, %lo(var_809E2C8C)($at)
    jr      t8
    nop
var_809DC08C:
    lw      a1, 0x0038($sp)
    lui     a0, %hi(var_809E29C4)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E29C4)  # a0 = 809E29C4
    jal     func_800AB958
    addiu   a1, a1, 0x0488             # a1 = 00000488
    beq     $zero, $zero, lbl_809DC178
    lw      $ra, 0x0014($sp)
var_809DC0A8:
    lw      a1, 0x0038($sp)
    lui     a0, %hi(var_809E29D0)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E29D0)  # a0 = 809E29D0
    jal     func_800AB958
    addiu   a1, a1, 0x0494             # a1 = 00000494
    beq     $zero, $zero, lbl_809DC178
    lw      $ra, 0x0014($sp)
var_809DC0C4:
    lw      a1, 0x0038($sp)
    lui     a0, %hi(var_809E29AC)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E29AC)  # a0 = 809E29AC
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a1, 0x0038($sp)
    lui     a0, %hi(var_809E29B8)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E29B8)  # a0 = 809E29B8
    jal     func_800AB958
    addiu   a1, a1, 0x0434             # a1 = 00000434
    beq     $zero, $zero, lbl_809DC178
    lw      $ra, 0x0014($sp)
var_809DC0F4:
    jal     func_800AA6EC
    nop
    lw      t9, 0x0038($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x01A4(t9)           # 000001A4
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a1, 0x0020($sp)
    lw      v0, 0x02D0(a1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a1)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t2, 0x0028($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0018($sp)
    lw      v1, 0x0018($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      t3, 0x0020($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    lw      v0, 0x02D0(t3)             # 000002D0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t3)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t6, 0x0030($sp)
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
lbl_809DC174:
    lw      $ra, 0x0014($sp)
lbl_809DC178:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809DC184:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x00A8($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x00A0($sp)
    lw      s0, 0x0000(a1)             # 00000000
    jal     func_800AA6EC
    sw      a1, 0x00AC($sp)
    lui     t7, %hi(var_809E41F0)      # t7 = 809E0000
    lui     t8, %hi(var_809E41F1)      # t8 = 809E0000
    lbu     t8, %lo(var_809E41F1)(t8)
    lbu     t7, %lo(var_809E41F0)(t7)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $zero, 0x1032          # a0 = 00001032
    or      t3, t7, t8                 # t3 = 809E0000
    sll     t3, t3, 16
    sra     t3, t3, 16
    bnel    t3, $at, lbl_809DC1E8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_800646F0
    sh      t3, 0x009E($sp)
    beq     $zero, $zero, lbl_809DC218
    lh      t3, 0x009E($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809DC1E8:
    bne     t3, $at, lbl_809DC200
    addiu   a0, $zero, 0x1033          # a0 = 00001033
    jal     func_800646F0
    sh      t3, 0x009E($sp)
    beq     $zero, $zero, lbl_809DC218
    lh      t3, 0x009E($sp)
lbl_809DC200:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t3, $at, lbl_809DC218
    addiu   a0, $zero, 0x1034          # a0 = 00001034
    jal     func_800646F0
    sh      t3, 0x009E($sp)
    lh      t3, 0x009E($sp)
lbl_809DC218:
    beq     t3, $zero, lbl_809DC264
    slti    $at, t3, 0x0004
    beq     $at, $zero, lbl_809DC264
    lui     a0, %hi(var_809E41F4)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E41F4)  # a0 = 809E41F4
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064280
    sh      t3, 0x009E($sp)
    lh      t3, 0x009E($sp)
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    bnel    t3, v0, lbl_809DC2C4
    lw      a0, 0x00AC($sp)
    multu   t3, v0
    mflo    t3
    sll     t3, t3, 16
    beq     $zero, $zero, lbl_809DC2C0
    sra     t3, t3, 16
lbl_809DC264:
    bne     t3, $zero, lbl_809DC27C
    lui     a0, %hi(var_809E41F4)      # a0 = 809E0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    beq     $zero, $zero, lbl_809DC2C0
    swc1    $f4, %lo(var_809E41F4)($at)
lbl_809DC27C:
    addiu   a0, a0, %lo(var_809E41F4)  # a0 = 809E41F4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E41F4)($at)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_809E41F1)     # $at = 809E0000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    c.eq.s  $f6, $f8
    nop
    bc1f    lbl_809DC2C0
    nop
    sb      $zero, %lo(var_809E41F1)($at)
    lui     $at, %hi(var_809E41F0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41F0)($at)
lbl_809DC2C0:
    lw      a0, 0x00AC($sp)
lbl_809DC2C4:
    jal     func_80079B64
    sh      t3, 0x009E($sp)
    beq     v0, $zero, lbl_809DC6D4
    lh      t3, 0x009E($sp)
    beq     t3, $zero, lbl_809DC6D4
    lw      a0, 0x00A0($sp)
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800AA79C
    sh      t3, 0x009E($sp)
    lui     $at, %hi(var_809E2CFC)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2CFC)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x00AC($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0090($sp)
    lw      a1, 0x0090($sp)
    lh      t3, 0x009E($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t8, 0x00A8($sp)
    lh      t9, 0x0140(t8)             # 00000140
    addiu   $at, $zero, 0x0AAA         # $at = 00000AAA
    multu   t9, $at
    mflo    t6
    nop
    nop
    multu   t6, t3
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    lwc1    $f2, %lo(var_809E41F4)($at)
    lui     t8, %hi(var_809E41F0)      # t8 = 809E0000
    lbu     t8, %lo(var_809E41F0)(t8)
    mul.s   $f10, $f0, $f2
    lui     $at, 0xE1FF                # $at = E1FF0000
    lui     t2, 0x0602                 # t2 = 06020000
    lh      t3, 0x009E($sp)
    lui     t6, 0xFB00                 # t6 = FB000000
    ori     $at, $at, 0xFF00           # $at = E1FFFF00
    lui     t9, 0xFB00                 # t9 = FB000000
    mul.s   $f16, $f10, $f12
    addiu   t2, t2, 0xE3A0             # t2 = 0601E3A0
    mul.s   $f18, $f2, $f12
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sll     t4, t4, 16
    beq     t8, $zero, lbl_809DC550
    sra     t4, t4, 16
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     $at, 0xFFF5                # $at = FFF50000
    ori     $at, $at, 0xFF00           # $at = FFF5FF00
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    andi    t7, t4, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFF5FF00
    sw      t8, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0602                 # t2 = 06020000
    addiu   t2, t2, 0xE0E0             # t2 = 0601E0E0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sll     t7, t2,  4
    lui     t6, 0xDE00                 # t6 = DE000000
    srl     t8, t7, 28
    sw      t6, 0x0000(v1)             # 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t9, t8,  2
    addu    t6, t6, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t9, 0x00A8($sp)
    lw      t8, 0x00AC($sp)
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    lh      v0, 0x0140(t9)             # 00000148
    lw      a0, 0x0000(t8)             # FFF5FF00
    sw      t7, 0x0010($sp)
    sll     t6, v0,  1
    multu   t6, t3
    subu    t6, $zero, v0
    sll     t7, t6,  1
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0028($sp)
    mflo    a2
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    multu   t7, t3
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0084($sp)
    mflo    t8
    sw      t8, 0x001C($sp)
    jal     func_8007EB84
    nop
    lw      t5, 0x0084($sp)
    lui     a2, 0x0602                 # a2 = 06020000
    addiu   a2, a2, 0xE020             # a2 = 0601E020
    sw      v0, 0x0004(t5)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f8, %lo(var_809E41F4)($at)
    lui     $at, 0x6414                # $at = 64140000
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t6, t9, $at                # t6 = 64140000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sll     t9, a2,  4
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    srl     t6, t9, 28
    sw      t8, 0x0000(v1)             # 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t7, t6,  2
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC6D4
    nop
lbl_809DC550:
    lw      v1, 0x02D0(s0)             # 000002D0
    andi    t6, t4, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = 80000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    sll     t6, t2,  4
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    srl     t7, t6, 28
    sw      t9, 0x0000(v1)             # 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t8, t7,  2
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t9, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x00A8($sp)
    lw      t7, 0x00AC($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v0, 0x0140(t8)             # 00000148
    lw      a0, 0x0000(t7)             # 80000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    subu    t9, $zero, v0
    sll     t6, t9,  2
    addu    t6, t6, t9
    multu   t6, t3
    sll     t6, v0,  2
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t7, 0x0010($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0024($sp)
    mflo    a3
    sw      t9, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    multu   t6, t3
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v1, 0x0070($sp)
    mflo    t7
    sw      t7, 0x001C($sp)
    jal     func_8007EB84
    nop
    lw      t5, 0x0070($sp)
    lui     a2, 0x0602                 # a2 = 06020000
    addiu   a2, a2, 0xE2C0             # a2 = 0601E2C0
    sw      v0, 0x0004(t5)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, %hi(var_809E41F4)     # $at = 809E0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f16, %lo(var_809E41F4)($at)
    lui     $at, 0xAFCD                # $at = AFCD0000
    ori     $at, $at, 0xC300           # $at = AFCDC300
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = AFCDC300
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sll     t8, a2,  4
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    srl     t9, t8, 28
    sw      t7, 0x0000(v1)             # 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t6, t9,  2
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t6, t9, $at
    sw      t6, 0x0004(v1)             # 00000004
lbl_809DC6D4:
    lui     v1, %hi(var_809E420F)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E420F)  # v1 = 809E420F
    lbu     v0, 0x0000(v1)             # 809E420F
    lui     a0, %hi(var_809E41F8)      # a0 = 809E0000
    lui     t9, %hi(var_809E4212)      # t9 = 809E0000
    beq     v0, $zero, lbl_809DC740
    addiu   a0, a0, %lo(var_809E41F8)  # a0 = 809E41F8
    lui     t7, %hi(var_809E4212)      # t7 = 809E0000
    lh      t7, %lo(var_809E4212)(t7)
    lui     a0, %hi(var_809E41F8)      # a0 = 809E0000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    blez    t7, lbl_809DC718
    addiu   a0, a0, %lo(var_809E41F8)  # a0 = 809E41F8
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    beq     $zero, $zero, lbl_809DC728
    mfc1    a3, $f0
lbl_809DC718:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    nop
    mfc1    a3, $f0
lbl_809DC728:
    sb      t8, 0x0000(v1)             # 809E420F
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_809DC778
    nop
lbl_809DC740:
    lh      t9, %lo(var_809E4212)(t9)
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    blezl   t9, lbl_809DC768
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    beq     $zero, $zero, lbl_809DC770
    mfc1    a3, $f0
    mtc1    $at, $f0                   # $f0 = 40.00
lbl_809DC768:
    nop
    mfc1    a3, $f0
lbl_809DC770:
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
lbl_809DC778:
    jal     func_80079B64
    lw      a0, 0x00AC($sp)
    beq     v0, $zero, lbl_809DC9C8
    lui     $at, %hi(var_809E41F8)     # $at = 809E0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, %lo(var_809E41F8)($at)
    lui     t6, %hi(var_809E4212)      # t6 = 809E0000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_809DC9C8
    nop
    lh      t6, %lo(var_809E4212)(t6)
    lw      a0, 0x00A0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    blez    t6, lbl_809DC7C8
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    lui     $at, %hi(var_809E2D00)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2D00)($at)
    beq     $zero, $zero, lbl_809DC7D4
    swc1    $f8, 0x005C($sp)
lbl_809DC7C8:
    mtc1    $at, $f10                  # $f10 = 0.00
    nop
    swc1    $f10, 0x005C($sp)
lbl_809DC7D4:
    jal     func_800AA79C
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, %hi(var_809E2D04)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D04)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x005C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x00AC($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a1, 0x0058($sp)
    lui     t6, %hi(var_809E41F0)      # t6 = 809E0000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v0, 0x0004(a1)             # 00000004
    lbu     t6, %lo(var_809E41F0)(t6)
    or      a1, $zero, $zero           # a1 = 00000000
    beql    t6, $zero, lbl_809DC8B0
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, %hi(var_809E41F8)     # $at = 809E0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f16, %lo(var_809E41F8)($at)
    lui     $at, 0xFFDC                # $at = FFDC0000
    ori     $at, $at, 0x1400           # $at = FFDC1400
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t6, t9, $at                # t6 = FFDC1400
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFF00                 # t9 = FF000000
    ori     t9, t9, 0x146E             # t9 = FF00146E
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_809DC908
    lw      v1, 0x02D0(s0)             # 000002D0
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809DC8B0:
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, %hi(var_809E41F8)     # $at = 809E0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f4, %lo(var_809E41F8)($at)
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = FFFFFF00
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xB9E1                 # t8 = B9E10000
    ori     t8, t8, 0xCD96             # t8 = B9E1CD96
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_809DC908:
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x00A8($sp)
    lui     t6, %hi(var_809E4212)      # t6 = 809E0000
    lh      t6, %lo(var_809E4212)(t6)
    lh      t9, 0x0140(t8)             # B9E1CED6
    lw      t7, 0x00AC($sp)
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    multu   t9, t6
    lw      a0, 0x0000(t7)             # FB000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0010($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    mflo    a3
    sw      a3, 0x0020($sp)
    sw      t8, 0x0014($sp)
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     a1, 0x0602                 # a1 = 06020000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, 0xE9F0             # a1 = 0601E9F0
    sll     t6, a1,  4
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    srl     t7, t6, 28
    sw      t9, 0x0000(v1)             # 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t8, t7,  2
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t9, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
lbl_809DC9C8:
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000
    jr      $ra
    nop


func_809DC9E4:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lh      a3, 0x0140(s2)             # 00000140
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    a3, $zero, a3
    addu    $at, a3, $zero
    sll     a3, a3,  4
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    sw      t5, 0x0028($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t9, 0x0014($sp)
    subu    a3, a3, $at
    sw      t8, 0x0010($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0080($sp)
    lw      v1, 0x0080($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0x4368                # $at = 43680000
    mtc1    $at, $f14                  # $f14 = 232.00
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0xC416                 # a2 = C4160000
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x04D0(s2)           # 000004D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x04C8(s2)            # 000004C8
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0078($sp)
    lw      t0, 0x0078($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0xEC68             # a0 = 0601EC68
    sll     t3, a0,  4
    srl     t4, t3, 28
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t5, t4,  2
    addu    t1, t5, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x0000(s0)             # 00000000
    lw      t7, 0x0000(t1)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t7, t2
    addu    t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0x87AF                # $at = 87AF0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x04C8(s2)            # 000004C8
    ori     $at, $at, 0xA500           # $at = 87AFA500
    mfc1    a2, $f12
    trunc.w.s $f10, $f8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000008
    or      t3, t9, $at                # t3 = 87AFA508
    sw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f14                  # $f14 = 2.00
    sw      t1, 0x004C($sp)
    jal     func_800AA7F4
    sw      t2, 0x0048($sp)
    lui     $at, %hi(var_809E2D08)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D08)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x006C($sp)
    lw      a1, 0x006C($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     a0, 0x0602                 # a0 = 06020000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   a0, a0, 0xCEE0             # a0 = 0601CEE0
    sll     t8, a0,  4
    srl     t9, t8, 28
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sll     t3, t9,  2
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0x4368                # $at = 43680000
    mtc1    $at, $f14                  # $f14 = 232.00
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0x4416                 # a2 = 44160000
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x04D0(s2)           # 000004D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lwc1    $f16, 0x04C8(s2)           # 000004C8
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0060($sp)
    lw      a1, 0x0060($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x004C($sp)
    lw      t7, 0x0048($sp)
    lw      t6, 0x0000(t5)             # 00000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0xFFFF                # $at = FFFF0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x04C8(s2)            # 000004C8
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t3, t9, $at                # t3 = FFFF0000
    sw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f14                  # $f14 = 2.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_809E2D0C)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D0C)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s2, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0xDBE8             # a0 = 0601DBE8
    sll     t8, a0,  4
    srl     t9, t8, 28
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sll     t3, t9,  2
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_809DCDF4:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s3, 0x0040($sp)
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0078($sp)
    jal     func_800AA6EC
    lw      s1, 0x0000(s3)             # 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, %hi(var_809E2D10)     # $at = 809E0000
    lwc1    $f14, %lo(var_809E2D10)($at)
    mfc1    a2, $f12
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_809E2D14)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D14)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_800AA6EC
    nop
    lw      t6, 0x0078($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x01C0(t6)           # 000001C0
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s2, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0xF390             # a0 = 0601F390
    sll     t5, a0,  4
    srl     t6, t5, 28
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sll     t7, t6,  2
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t4, 0x0000(s0)             # 00000000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t8, t9
    addu    t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t8, %hi(var_809E41E8)      # t8 = 809E0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, %lo(var_809E41E8)(t8)
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    lh      s2, 0x0140(t8)             # 809E0140
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    subu    s2, $zero, s2
    sll     s2, s2,  1
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    or      a2, s2, $zero              # a2 = 00000000
    sw      s2, 0x001C($sp)
    sw      t9, 0x0010($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x005C($sp)
    lw      t0, 0x005C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t4, 0x0078($sp)
    or      v1, s0, $zero              # v1 = 00000000
    lwc1    $f4, 0x01BC(t4)            # 000001BC
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    sll     t7, t6, 16
    sra     t8, t7, 16
    bgez    t8, lbl_809DCFA8
    sra     t9, t8,  1
    addiu   $at, t8, 0x0001            # $at = 00000009
    sra     t9, $at,  1
lbl_809DCFA8:
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    andi    t4, t9, 0x00FF             # t4 = 00000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0054($sp)
    lw      t2, 0x0054($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     t1, 0x0602                 # t1 = 06020000
    sw      v0, 0x0004(t2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t1, t1, 0xF238             # t1 = 0601F238
    sll     t4, t1,  4
    srl     t5, t4, 28
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sll     t6, t5,  2
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x0000(s0)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, t1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t4, t9, $at
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    lui     t7, %hi(var_809E41E8)      # t7 = 809E0000
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, %lo(var_809E41E8)(t7)
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    lh      v1, 0x0140(t7)             # 809E0140
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    v1, $zero, v1
    sll     a2, v1,  2
    sll     s2, v1,  1
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    or      a3, s2, $zero              # a3 = 00000000
    sw      s2, 0x0020($sp)
    addu    a2, a2, v1
    sw      t8, 0x0010($sp)
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      s0, 0x004C($sp)
    lw      t3, 0x004C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    sw      v0, 0x0004(t3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, %hi(var_809E2D18)     # $at = 809E0000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x0078($sp)
    lwc1    $f10, %lo(var_809E2D18)($at)
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lwc1    $f8, 0x01BC(t9)            # 000001BC
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000008
    or      t9, t8, $at                # t9 = FFFFFF08
    sw      t9, 0x0004(s0)             # 00000004
    lw      t4, 0x0078($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x01BC(t4)            # 000001BC
    div.s   $f12, $f4, $f6
    c.lt.s  $f14, $f12
    nop
    bc1fl   lbl_809DD12C
    mfc1    a2, $f12
    mov.s   $f12, $f14
    mfc1    a2, $f12
lbl_809DD12C:
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s2, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   a0, a0, 0xEEB0             # a0 = 0601EEB0
    sll     t9, a0,  4
    srl     t4, t9, 28
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sll     t5, t4,  2
    lui     t8, 0xDE00                 # t8 = DE000000
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t8, 0x0000(s0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_809DD1CC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    lbu     t6, 0x0554(s0)             # 00000554
    lw      a2, 0x0000(s1)             # 00000000
    beq     t6, $zero, lbl_809DD490
    or      s2, a2, $zero              # s2 = 00000000
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lh      t7, 0x014C(s0)             # 0000014C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_809DD250
    cfc1    t1, $f31
    lw      a0, 0x02C0(s2)             # 000002C0
    addiu   t9, $zero, 0x0384          # t9 = 00000384
    addiu   t0, $zero, 0x044B          # t0 = 0000044B
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    jal     func_8007DF4C
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_809DD414
    sw      v0, 0x02C0(s2)             # 000002C0
    cfc1    t1, $f31
lbl_809DD250:
    ctc1    a1, $f31
    lwc1    $f4, 0x01C4(s0)            # 000001C4
    lw      a0, 0x02C0(s2)             # 000002C0
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_809DD2C0
    mfc1    a1, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    a1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_809DD2B4
    nop
    mfc1    a1, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DD2CC
    or      a1, a1, $at                # a1 = 80000000
lbl_809DD2B4:
    beq     $zero, $zero, lbl_809DD2CC
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f6
lbl_809DD2C0:
    nop
    bltz    a1, lbl_809DD2B4
    nop
lbl_809DD2CC:
    ctc1    t1, $f31
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f8, 0x01C8(s0)            # 000001C8
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t2, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_809DD348
    mfc1    a2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_809DD33C
    nop
    mfc1    a2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DD354
    or      a2, a2, $at                # a2 = 80000000
lbl_809DD33C:
    beq     $zero, $zero, lbl_809DD354
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f10
lbl_809DD348:
    nop
    bltz    a2, lbl_809DD33C
    nop
lbl_809DD354:
    ctc1    t2, $f31
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f16, 0x01CC(s0)           # 000001CC
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31
    ctc1    a3, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_809DD3D0
    mfc1    a3, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    a3, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_809DD3C4
    nop
    mfc1    a3, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809DD3DC
    or      a3, a3, $at                # a3 = 80000000
lbl_809DD3C4:
    beq     $zero, $zero, lbl_809DD3DC
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f18
lbl_809DD3D0:
    nop
    bltz    a3, lbl_809DD3C4
    nop
lbl_809DD3DC:
    sw      $zero, 0x0010($sp)
    lwc1    $f4, 0x01D0(s0)            # 000001D0
    ctc1    t3, $f31
    nop
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sw      t5, 0x0014($sp)
    lwc1    $f8, 0x01D4(s0)            # 000001D4
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    jal     func_8007DF4C
    sw      t7, 0x0018($sp)
    sw      v0, 0x02C0(s2)             # 000002C0
lbl_809DD414:
    jal     func_800AA6EC
    nop
    lw      a1, 0x055C(s0)             # 0000055C
    lw      a2, 0x0578(s0)             # 00000578
    lbu     a3, 0x055A(s0)             # 0000055A
    lui     t8, %hi(func_809DBC1C)     # t8 = 809E0000
    lui     t9, %hi(func_809DC048)     # t9 = 809E0000
    addiu   t9, t9, %lo(func_809DC048) # t9 = 809DC048
    addiu   t8, t8, %lo(func_809DBC1C) # t8 = 809DBC1C
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AA724
    nop
    lui     a0, %hi(var_809E29DC)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E29DC)  # a0 = 809E29DC
    jal     func_800AB958
    addiu   a1, s0, 0x047C             # a1 = 0000047C
    lw      a0, 0x02C0(s2)             # 000002C0
    lbu     a1, 0x07AF(s1)             # 000007AF
    lbu     a2, 0x07B0(s1)             # 000007B0
    lbu     a3, 0x07B1(s1)             # 000007B1
    sw      $zero, 0x0010($sp)
    lh      t0, 0x07B2(s1)             # 000007B2
    addiu   t1, $zero, 0x03E8          # t1 = 000003E8
    sw      t1, 0x0018($sp)
    jal     func_8007DF4C
    sw      t0, 0x0014($sp)
    sw      v0, 0x02C0(s2)             # 000002C0
lbl_809DD490:
    jal     func_809E0700
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809DC184
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x04C8(s0)           # 000004C8
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_809DD4CC
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_809DC9E4
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_809DD4CC:
    lwc1    $f6, 0x01BC(s0)            # 000001BC
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809DD4F0
    lw      $ra, 0x0034($sp)
    jal     func_809DCDF4
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0034($sp)
lbl_809DD4F0:
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809DD504:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00D4($sp)
    lw      t6, 0x00D4($sp)
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x00B8($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    beq     v0, $at, lbl_809DD54C
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beql    v0, $at, lbl_809DDBA0
    lh      v0, 0x0168(s1)             # 00000168
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
lbl_809DD54C:
    lh      v0, 0x0430(s1)             # 00000430
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809DD580
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    beq     v0, $at, lbl_809DD690
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809DDB68
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v0, $at, lbl_809DD694
    lh      t8, 0x0168(s1)             # 00000168
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
lbl_809DD580:
    jal     func_80020F88
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    lw      v0, 0x00B8($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0430(s1)             # 00000430
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f4, 0x0024(v0)            # 00000024
    add.s   $f16, $f8, $f10
    lwc1    $f18, 0x0028(s1)           # 00000028
    sub.s   $f20, $f4, $f6
    sub.s   $f4, $f16, $f18
    mov.s   $f12, $f20
    swc1    $f4, 0x00C4($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x002C(v0)            # 0000002C
    sub.s   $f14, $f6, $f8
    jal     func_800CD76C
    swc1    $f14, 0x00C0($sp)
    lui     $at, %hi(var_809E2D1C)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2D1C)($at)
    lwc1    $f2, 0x00C0($sp)
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f4, $f20, $f20
    nop
    mul.s   $f6, $f2, $f2
    trunc.w.s $f18, $f16
    add.s   $f0, $f4, $f6
    mfc1    t0, $f18
    nop
    sh      t0, 0x0032(s1)             # 00000032
    sqrt.s  $f14, $f0
    jal     func_800CD76C
    lwc1    $f12, 0x00C4($sp)
    lui     $at, %hi(var_809E2D20)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2D20)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mul.s   $f10, $f0, $f8
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   v0, s1, 0x0024             # v0 = 00000024
    swc1    $f18, 0x0068(s1)           # 00000068
    trunc.w.s $f16, $f10
    mfc1    t2, $f16
    nop
    sh      t2, 0x0030(s1)             # 00000030
lbl_809DD644:
    sll     t3, s0,  2
    lw      t6, 0x0000(v0)             # 00000024
    subu    t3, t3, s0
    sll     t3, t3,  2
    addu    t4, s1, t3
    sw      t6, 0x01D8(t4)             # 000001D8
    lw      t5, 0x0004(v0)             # 00000028
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sw      t5, 0x01DC(t4)             # 000001DC
    lw      t6, 0x0008(v0)             # 0000002C
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bne     $at, $zero, lbl_809DD644
    sw      t6, 0x01E0(t4)             # 000001E0
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    nop
    swc1    $f4, 0x019C(s1)            # 0000019C
lbl_809DD690:
    lh      t8, 0x0168(s1)             # 00000168
lbl_809DD694:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0555(s1)             # 00000555
    bne     t8, $zero, lbl_809DD6CC
    addiu   v0, s1, 0x0024             # v0 = 00000024
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021248
    sw      v0, 0x0040($sp)
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3122          # a1 = 00003122
    beq     $zero, $zero, lbl_809DD8CC
    nop
lbl_809DD6CC:
    lw      s0, 0x00B8($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f6                   # $f6 = -2000.00
    lw      t0, 0x09AC(s0)             # 000009AD
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFC4
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t0, 0x0000(v0)             # 00000000
    lw      t9, 0x09B0(s0)             # 000009B1
    addiu   s0, s0, 0x09AC             # s0 = 000009AD
    sw      t9, 0x0004(v0)             # 00000004
    lw      t0, 0x0008(s0)             # 000009B5
    sw      t0, 0x0008(v0)             # 00000008
    swc1    $f6, 0x0028(s1)            # 00000028
    lw      a0, 0x00B8($sp)
    jal     func_800ABF50
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    lh      a1, 0x0094($sp)
    lh      t1, 0x0096($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    a1, $zero, a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addu    t2, t1, $at
    sh      t2, 0x0096($sp)
    sh      a1, 0x0094($sp)
    addiu   a0, s1, 0x0514             # a0 = 00000514
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    addiu   a0, s1, 0x0516             # a0 = 00000516
    lh      a1, 0x0096($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    lh      v0, 0x0168(s1)             # 00000168
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    bne     v0, $at, lbl_809DD794
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    lui     $at, %hi(var_809E420F)     # $at = 809E0000
    sb      t3, %lo(var_809E420F)($at)
    lui     $at, %hi(var_809E4212)     # $at = 809E0000
    sh      t4, %lo(var_809E4212)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      t5, 0x00D4($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DD794:
    slti    $at, v0, 0x0033
    beq     $at, $zero, lbl_809DD898
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3122          # a1 = 00003122
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3117          # a1 = 00003117
    lh      t6, 0x0516(s1)             # 00000516
    lui     $at, %hi(var_809E2D24)     # $at = 809E0000
    lwc1    $f20, %lo(var_809E2D24)($at)
    mtc1    t6, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809E2D28)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2D28)($at)
    cvt.s.w $f16, $f10
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f18, $f16, $f20
    mul.s   $f12, $f18, $f4
    jal     func_800AAB94
    nop
    lh      t7, 0x0514(s1)             # 00000514
    lui     $at, %hi(var_809E2D2C)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2D2C)($at)
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f20
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFCC
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFD8
    swc1    $f20, 0x009C($sp)
    swc1    $f20, 0x00A0($sp)
    jal     func_800AB958
    swc1    $f18, 0x00A4($sp)
    lh      v0, 0x0168(s1)             # 00000168
    lw      a0, 0x00D4($sp)
    or      a1, s0, $zero              # a1 = 000009AD
    addu    $at, v0, $zero
    sll     v0, v0,  2
    addu    v0, v0, $at
    sll     v0, v0,  1
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_809DD864
    addiu   a2, $sp, 0x00A8            # a2 = FFFFFFD8
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_809DD864:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lui     a3, %hi(var_809E27CC)      # a3 = 809E0000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x001C($sp)
    addiu   a3, a3, %lo(var_809E27CC)  # a3 = 809E27CC
    sw      v0, 0x0018($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_809D16E0
    swc1    $f6, 0x0014($sp)
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DD898:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809DDE24
    lui     v0, %hi(var_809E41F0)      # v0 = 809E0000
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    addiu   v0, v0, %lo(var_809E41F0)  # v0 = 809E41F0
    sb      $zero, %lo(var_809E41E0)($at)
    lbu     t9, 0x0000(v0)             # 809E41F0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jal     func_80020EB4
    sb      t0, 0x0000(v0)             # 809E41F0
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
lbl_809DD8CC:
    jal     func_809D3390
    lw      a0, 0x0040($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    swc1    $f0, 0x04F4(s1)            # 000004F4
    c.le.s  $f20, $f0
    nop
    bc1f    lbl_809DD9EC
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f8                   # $f8 = 35.00
    lwc1    $f10, 0x04F4(s1)           # 000004F4
    or      a0, s1, $zero              # a0 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    c.eq.s  $f8, $f10
    nop
    bc1t    lbl_809DD930
    nop
    lwc1    $f16, 0x0024(s1)           # 00000024
    lwc1    $f18, 0x002C(s1)           # 0000002C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f16, 0x04F0(s1)           # 000004F0
    swc1    $f18, 0x04F8(s1)           # 000004F8
    jal     func_809D2A6C
    lw      a1, 0x00D4($sp)
    beq     $zero, $zero, lbl_809DD9DC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
lbl_809DD930:
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809DD934:
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0084($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x0088($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f0, 0x008C($sp)
    swc1    $f20, 0x0078($sp)
    swc1    $f20, 0x007C($sp)
    jal     func_80026D64
    swc1    $f20, 0x0080($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    lw      a0, 0x00D4($sp)
    lw      a1, 0x0040($sp)
    add.s   $f6, $f0, $f4
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFB4
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFA8
    swc1    $f6, 0x0010($sp)
    lh      t1, 0x0556(s1)             # 00000556
    jal     func_809D1500
    sw      t1, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809DD934
    lui     $at, 0x41A0                # $at = 41A00000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lw      t2, 0x00D4($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2
    swc1    $f20, 0x0AFC($at)          # 00010AFC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
lbl_809DD9DC:
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sh      t3, 0x0430(s1)             # 00000430
    beq     $zero, $zero, lbl_809DDE24
    sh      t4, 0x0168(s1)             # 00000168
lbl_809DD9EC:
    lui     t6, %hi(var_809E29E8)      # t6 = 809E0000
    addiu   t6, t6, %lo(var_809E29E8)  # t6 = 809E29E8
    lw      t8, 0x0000(t6)             # 809E29E8
    addiu   t5, $sp, 0x0060            # t5 = FFFFFF90
    lw      t7, 0x0004(t6)             # 809E29EC
    sw      t8, 0x0000(t5)             # FFFFFF90
    lw      t8, 0x0008(t6)             # 809E29F0
    lui     t0, %hi(var_809E29F4)      # t0 = 809E0000
    addiu   t0, t0, %lo(var_809E29F4)  # t0 = 809E29F4
    sw      t7, 0x0004(t5)             # FFFFFF94
    sw      t8, 0x0008(t5)             # FFFFFF98
    lw      t2, 0x0000(t0)             # 809E29F4
    addiu   t9, $sp, 0x0054            # t9 = FFFFFF84
    lw      t1, 0x0004(t0)             # 809E29F8
    sw      t2, 0x0000(t9)             # FFFFFF84
    lw      t2, 0x0008(t0)             # 809E29FC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t1, 0x0004(t9)             # FFFFFF88
    sw      t2, 0x0008(t9)             # FFFFFF8C
lbl_809DDA40:
    lui     $at, %hi(var_809E2D30)     # $at = 809E0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2D30)($at)
    trunc.w.s $f8, $f0
    addiu   t3, $sp, 0x006C            # t3 = FFFFFF9C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    mfc1    t5, $f8
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, s1, t8
    lw      t1, 0x01D8(t9)             # 000001D8
    sw      t1, 0x0000(t3)             # FFFFFF9C
    lw      t0, 0x01DC(t9)             # 000001DC
    sw      t0, 0x0004(t3)             # FFFFFFA0
    lw      t1, 0x01E0(t9)             # 000001E0
    jal     func_80026D90
    sw      t1, 0x0008(t3)             # FFFFFFA4
    lwc1    $f10, 0x006C($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f16, $f10, $f0
    jal     func_80026D90
    swc1    $f16, 0x006C($sp)
    lwc1    $f18, 0x0070($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f4, $f18, $f0
    jal     func_80026D90
    swc1    $f4, 0x0070($sp)
    lwc1    $f6, 0x0074($sp)
    lui     $at, %hi(var_809E2D34)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2D34)($at)
    add.s   $f8, $f6, $f0
    mov.s   $f12, $f20
    swc1    $f10, 0x0058($sp)
    jal     func_80026D90
    swc1    $f8, 0x0074($sp)
    swc1    $f0, 0x0054($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x005C($sp)
    trunc.w.s $f16, $f0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t3, $zero, 0x004B          # t3 = 0000004B
    sw      t3, 0x0018($sp)
    mfc1    t4, $f16
    sw      t8, 0x0014($sp)
    lw      a0, 0x00D4($sp)
    sll     t5, t4, 16
    sra     t6, t5, 16
    addiu   t7, t6, 0x0008             # t7 = 00000008
    mtc1    t7, $f18                   # $f18 = 0.00
    addiu   a1, $sp, 0x006C            # a1 = FFFFFF9C
    addiu   a2, $sp, 0x0060            # a2 = FFFFFF90
    cvt.s.w $f4, $f18
    addiu   a3, $sp, 0x0054            # a3 = FFFFFF84
    jal     func_809D1160
    swc1    $f4, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000A
    bne     $at, $zero, lbl_809DDA40
    nop
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
lbl_809DDB68:
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s1, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f20
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lh      t9, 0x0168(s1)             # 00000168
    bnel    t9, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DDBA0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t0, %hi(var_809E41E1)      # t0 = 809E0000
    beq     v0, $zero, lbl_809DDD1C
    lui     t1, %hi(var_809E41E1)      # t1 = 809E0000
    bne     v0, $at, lbl_809DDBC0
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41E0)($at)
lbl_809DDBC0:
    lbu     t0, %lo(var_809E41E1)(t0)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t0, $at, lbl_809DDBD4
    nop
    sh      $zero, 0x0168(s1)          # 00000168
lbl_809DDBD4:
    jal     func_80022FD0
    addiu   a1, $zero, 0x310F          # a1 = 0000310F
    lui     s0, %hi(var_809E41E8)      # s0 = 809E0000
    lw      a2, 0x00B8($sp)
    addiu   s0, s0, %lo(var_809E41E8)  # s0 = 809E41E8
    lw      v0, 0x0000(s0)             # 809E41E8
    lbu     t1, 0x0A50(a2)             # 00000A50
    lwc1    $f8, 0x0024(a2)            # 00000024
    lwc1    $f16, 0x0028(a2)           # 00000028
    lwc1    $f4, 0x002C(a2)            # 0000002C
    lwc1    $f6, 0x04AC(v0)            # 000004AC
    lwc1    $f10, 0x04B0(v0)           # 000004B0
    lwc1    $f18, 0x04B4(v0)           # 000004B4
    sub.s   $f20, $f6, $f8
    sub.s   $f12, $f10, $f16
    bne     t1, $zero, lbl_809DDCF4
    sub.s   $f2, $f18, $f4
    lhu     t2, 0x0088(a2)             # 00000088
    lui     $at, 0x4120                # $at = 41200000
    andi    t4, t2, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_809DDCF8
    lui     a1, 0x3D23                 # a1 = 3D230000
    mtc1    $at, $f6                   # $f6 = 10.00
    abs.s   $f0, $f12
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809DDCF8
    lui     a1, 0x3D23                 # a1 = 3D230000
    mul.s   $f8, $f20, $f20
    lui     $at, %hi(var_809E2D38)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2D38)($at)
    mul.s   $f10, $f2, $f2
    lwc1    $f16, 0x01A8(v0)           # 000001A8
    or      v1, $zero, $zero           # v1 = 00000000
    mul.s   $f4, $f16, $f18
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_809DDCF8
    lui     a1, 0x3D23                 # a1 = 3D230000
lbl_809DDC78:
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    jal     func_80063BF0
    sh      v1, 0x0052($sp)
    lh      v1, 0x0052($sp)
    lw      a0, 0x00B8($sp)
    addu    t5, a0, v1
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0012
    bne     $at, $zero, lbl_809DDC78
    sb      v0, 0x0A51(t5)             # 00000A51
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0A50(a0)             # 00000A50
    lh      t7, 0x0158(s1)             # 00000158
    bne     t7, $zero, lbl_809DDCDC
    nop
    lw      t8, 0x0668(a0)             # 00000668
    lhu     a1, 0x0092(t8)             # 00000092
    addiu   a1, a1, 0x681E             # a1 = 0000681E
    jal     func_80022F84
    andi    a1, a1, 0xFFFF             # a1 = 0000681E
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    sh      t3, 0x0158(s1)             # 00000158
lbl_809DDCDC:
    lui     t0, %hi(var_809E41EC)      # t0 = 809E0000
    lw      t0, %lo(var_809E41EC)(t0)
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    lui     v0, %hi(var_809E41E8)      # v0 = 809E0000
    sh      t9, 0x016C(t0)             # 809E016C
    lw      v0, %lo(var_809E41E8)(v0)
lbl_809DDCF4:
    lui     a1, 0x3D23                 # a1 = 3D230000
lbl_809DDCF8:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xD70A             # a1 = 3D23D70A
    jal     func_80064280
    addiu   a0, v0, 0x01A8             # a0 = 809E01A8
    beq     $zero, $zero, lbl_809DDE28
    lw      $ra, 0x0034($sp)
lbl_809DDD1C:
    lbu     t1, %lo(var_809E41E1)(t1)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_809DDD38
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    beq     $zero, $zero, lbl_809DDD48
    swc1    $f6, 0x004C($sp)
lbl_809DDD38:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    swc1    $f8, 0x004C($sp)
lbl_809DDD48:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f16, 0x004C($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     s0, %hi(var_809E41E8)      # s0 = 809E0000
    mul.s   $f18, $f10, $f16
    addiu   s0, s0, %lo(var_809E41E8)  # s0 = 809E41E8
    lw      a0, 0x0000(s0)             # 809E41E8
    mfc1    a1, $f20
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x0198             # a0 = 00000198
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lui     $at, %hi(var_809E2D3C)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2D3C)($at)
    lwc1    $f6, 0x004C($sp)
    lw      a0, 0x0000(s0)             # 809E41E8
    mfc1    a1, $f20
    mul.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x01A4             # a0 = 000001A4
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f16, 0x004C($sp)
    lw      a0, 0x0000(s0)             # 809E41E8
    mfc1    a1, $f20
    mul.s   $f18, $f10, $f16
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x019C             # a0 = 0000019C
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f6, 0x004C($sp)
    lw      a0, 0x0000(s0)             # 809E41E8
    mfc1    a1, $f20
    mul.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x01A0             # a0 = 000001A0
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lw      t2, 0x0000(s0)             # 809E41E8
    lwc1    $f10, 0x019C(t2)           # 0000019C
    c.le.s  $f10, $f20
    nop
    bc1fl   lbl_809DDE28
    lw      $ra, 0x0034($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_809DDE24:
    lw      $ra, 0x0034($sp)
lbl_809DDE28:
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_809DDE3C:
    addiu   $sp, $sp, 0xFED8           # $sp = FFFFFED8
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lw      t6, 0x1C44(s2)             # 00001C44
    addiu   $at, $zero, 0x0066         # $at = 00000066
    sw      t6, 0x0110($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    beq     v0, $at, lbl_809DDE84
    addiu   $at, $zero, 0x0067         # $at = 00000067
    beql    v0, $at, lbl_809DE4C0
    lh      v0, 0x0168(s1)             # 00000168
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
lbl_809DDE84:
    lh      v0, 0x0430(s1)             # 00000430
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809DDEB8
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    beq     v0, $at, lbl_809DDFC8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809DE488
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v0, $at, lbl_809DDFCC
    lh      t7, 0x0168(s1)             # 00000168
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
lbl_809DDEB8:
    jal     func_80020F88
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    lw      v0, 0x0110($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0430(s1)             # 00000430
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f4, 0x0024(v0)            # 00000024
    add.s   $f16, $f8, $f10
    lwc1    $f18, 0x0028(s1)           # 00000028
    sub.s   $f20, $f4, $f6
    sub.s   $f4, $f16, $f18
    mov.s   $f12, $f20
    swc1    $f4, 0x011C($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x002C(v0)            # 0000002C
    sub.s   $f14, $f6, $f8
    jal     func_800CD76C
    swc1    $f14, 0x0118($sp)
    lui     $at, %hi(var_809E2D40)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2D40)($at)
    lwc1    $f2, 0x0118($sp)
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f4, $f20, $f20
    nop
    mul.s   $f6, $f2, $f2
    trunc.w.s $f18, $f16
    add.s   $f0, $f4, $f6
    mfc1    t9, $f18
    nop
    sh      t9, 0x0032(s1)             # 00000032
    sqrt.s  $f14, $f0
    jal     func_800CD76C
    lwc1    $f12, 0x011C($sp)
    lui     $at, %hi(var_809E2D44)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2D44)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mul.s   $f10, $f0, $f8
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   v0, s1, 0x0024             # v0 = 00000024
    swc1    $f18, 0x0068(s1)           # 00000068
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    nop
    sh      t1, 0x0030(s1)             # 00000030
lbl_809DDF7C:
    sll     t2, s0,  2
    lw      t5, 0x0000(v0)             # 00000024
    subu    t2, t2, s0
    sll     t2, t2,  2
    addu    t3, s1, t2
    sw      t5, 0x01D8(t3)             # 000001D8
    lw      t4, 0x0004(v0)             # 00000028
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sw      t4, 0x01DC(t3)             # 000001DC
    lw      t5, 0x0008(v0)             # 0000002C
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bne     $at, $zero, lbl_809DDF7C
    sw      t5, 0x01E0(t3)             # 000001E0
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    nop
    swc1    $f4, 0x019C(s1)            # 0000019C
lbl_809DDFC8:
    lh      t7, 0x0168(s1)             # 00000168
lbl_809DDFCC:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0555(s1)             # 00000555
    bne     t7, $zero, lbl_809DE004
    addiu   v0, s1, 0x0024             # v0 = 00000024
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80021248
    sw      v0, 0x0050($sp)
    jal     func_80021124
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3111          # a1 = 00003111
    beq     $zero, $zero, lbl_809DE1FC
    nop
lbl_809DE004:
    lw      s0, 0x0110($sp)
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f6                   # $f6 = -2000.00
    lw      t9, 0x09AC(s0)             # 000009AD
    addiu   a1, $sp, 0x00EC            # a1 = FFFFFFC4
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x0000(v0)             # 00000000
    lw      t8, 0x09B0(s0)             # 000009B1
    addiu   s0, s0, 0x09AC             # s0 = 000009AD
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x0008(s0)             # 000009B5
    sw      t9, 0x0008(v0)             # 00000008
    swc1    $f6, 0x0028(s1)            # 00000028
    lw      a0, 0x0110($sp)
    jal     func_800ABF50
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    lh      a1, 0x00EC($sp)
    lh      t0, 0x00EE($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    a1, $zero, a1
    sll     a1, a1, 16
    sra     a1, a1, 16
    addu    t1, t0, $at
    sh      t1, 0x00EE($sp)
    sh      a1, 0x00EC($sp)
    addiu   a0, s1, 0x0514             # a0 = 00000514
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    addiu   a0, s1, 0x0516             # a0 = 00000516
    lh      a1, 0x00EE($sp)
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    lh      v0, 0x0168(s1)             # 00000168
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    bne     v0, $at, lbl_809DE0C8
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    lui     $at, %hi(var_809E420F)     # $at = 809E0000
    sb      t2, %lo(var_809E420F)($at)
    lui     $at, %hi(var_809E4212)     # $at = 809E0000
    sh      t3, %lo(var_809E4212)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DE0C8:
    slti    $at, v0, 0x0033
    beq     $at, $zero, lbl_809DE1C8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3111          # a1 = 00003111
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3118          # a1 = 00003118
    lh      t4, 0x0516(s1)             # 00000516
    lui     $at, %hi(var_809E2D48)     # $at = 809E0000
    lwc1    $f20, %lo(var_809E2D48)($at)
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809E2D4C)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2D4C)($at)
    cvt.s.w $f16, $f10
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f20
    jal     func_800AAB94
    nop
    lh      t5, 0x0514(s1)             # 00000514
    lui     $at, %hi(var_809E2D50)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2D50)($at)
    mtc1    t5, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6
    div.s   $f16, $f8, $f10
    mul.s   $f12, $f16, $f20
    jal     func_800AA9E0
    nop
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    addiu   a0, $sp, 0x00F4            # a0 = FFFFFFCC
    addiu   a1, $sp, 0x0100            # a1 = FFFFFFD8
    swc1    $f20, 0x00F4($sp)
    swc1    $f20, 0x00F8($sp)
    jal     func_800AB958
    swc1    $f18, 0x00FC($sp)
    lh      v0, 0x0168(s1)             # 00000168
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000009AD
    addu    $at, v0, $zero
    sll     v0, v0,  2
    addu    v0, v0, $at
    sll     v0, v0,  1
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_809DE198
    addiu   a2, $sp, 0x0100            # a2 = FFFFFFD8
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_809DE198:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lui     a3, %hi(var_809E27CC)      # a3 = 809E0000
    addiu   a3, a3, %lo(var_809E27CC)  # a3 = 809E27CC
    sw      v0, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_809D16E0
    swc1    $f6, 0x0014($sp)
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DE1C8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_809DE994
    lui     v0, %hi(var_809E41F1)      # v0 = 809E0000
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    addiu   v0, v0, %lo(var_809E41F1)  # v0 = 809E41F1
    sb      $zero, %lo(var_809E41E0)($at)
    lbu     t6, 0x0000(v0)             # 809E41F1
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jal     func_80020EB4
    sb      t7, 0x0000(v0)             # 809E41F1
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
lbl_809DE1FC:
    jal     func_809D3390
    lw      a0, 0x0050($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    swc1    $f0, 0x04F4(s1)            # 000004F4
    c.le.s  $f20, $f0
    nop
    bc1f    lbl_809DE314
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f8                   # $f8 = 35.00
    lwc1    $f10, 0x04F4(s1)           # 000004F4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    c.eq.s  $f8, $f10
    or      s0, $zero, $zero           # s0 = 00000000
    bc1t    lbl_809DE25C
    nop
    lwc1    $f16, 0x0024(s1)           # 00000024
    lwc1    $f18, 0x002C(s1)           # 0000002C
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f16, 0x04F0(s1)           # 000004F0
    jal     func_809D2A6C
    swc1    $f18, 0x04F8(s1)           # 000004F8
    beq     $zero, $zero, lbl_809DE304
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_809DE25C:
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809DE260:
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x00DC($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    swc1    $f0, 0x00E0($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    swc1    $f0, 0x00E4($sp)
    swc1    $f20, 0x00D0($sp)
    swc1    $f20, 0x00D4($sp)
    jal     func_80026D64
    swc1    $f20, 0x00D8($sp)
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x0050($sp)
    add.s   $f6, $f0, $f4
    addiu   a2, $sp, 0x00DC            # a2 = FFFFFFB4
    addiu   a3, $sp, 0x00D0            # a3 = FFFFFFA8
    swc1    $f6, 0x0010($sp)
    lh      t8, 0x0556(s1)             # 00000556
    jal     func_809D1500
    sw      t8, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bnel    $at, $zero, lbl_809DE260
    lui     $at, 0x41A0                # $at = 41A00000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_809DE304:
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sh      t9, 0x0430(s1)             # 00000430
    beq     $zero, $zero, lbl_809DE994
    sh      t0, 0x0168(s1)             # 00000168
lbl_809DE314:
    lui     t2, %hi(var_809E2A00)      # t2 = 809E0000
    addiu   t2, t2, %lo(var_809E2A00)  # t2 = 809E2A00
    lw      t4, 0x0000(t2)             # 809E2A00
    addiu   t1, $sp, 0x00B8            # t1 = FFFFFF90
    lw      t3, 0x0004(t2)             # 809E2A04
    sw      t4, 0x0000(t1)             # FFFFFF90
    lw      t4, 0x0008(t2)             # 809E2A08
    lui     t6, %hi(var_809E2A0C)      # t6 = 809E0000
    addiu   t6, t6, %lo(var_809E2A0C)  # t6 = 809E2A0C
    sw      t3, 0x0004(t1)             # FFFFFF94
    sw      t4, 0x0008(t1)             # FFFFFF98
    lw      t8, 0x0000(t6)             # 809E2A0C
    addiu   t5, $sp, 0x00AC            # t5 = FFFFFF84
    lw      t7, 0x0004(t6)             # 809E2A10
    sw      t8, 0x0000(t5)             # FFFFFF84
    lw      t8, 0x0008(t6)             # 809E2A14
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f20                  # $f20 = 40.00
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t7, 0x0004(t5)             # FFFFFF88
    sw      t8, 0x0008(t5)             # FFFFFF8C
lbl_809DE368:
    lui     $at, %hi(var_809E2D54)     # $at = 809E0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2D54)($at)
    trunc.w.s $f10, $f0
    addiu   t9, $sp, 0x00C4            # t9 = FFFFFF9C
    mov.s   $f12, $f20
    mfc1    t1, $f10
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    sll     t4, t3,  2
    subu    t4, t4, t3
    sll     t4, t4,  2
    addu    t5, s1, t4
    lw      t7, 0x01D8(t5)             # 000001D8
    sw      t7, 0x0000(t9)             # FFFFFF9C
    lw      t6, 0x01DC(t5)             # 000001DC
    sw      t6, 0x0004(t9)             # FFFFFFA0
    lw      t7, 0x01E0(t5)             # 000001E0
    jal     func_80026D90
    sw      t7, 0x0008(t9)             # FFFFFFA4
    lwc1    $f16, 0x00C4($sp)
    mov.s   $f12, $f20
    add.s   $f18, $f16, $f0
    jal     func_80026D90
    swc1    $f18, 0x00C4($sp)
    lwc1    $f4, 0x00C8($sp)
    mov.s   $f12, $f20
    add.s   $f6, $f4, $f0
    jal     func_80026D90
    swc1    $f6, 0x00C8($sp)
    lwc1    $f8, 0x00CC($sp)
    lui     $at, %hi(var_809E2D58)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2D58)($at)
    add.s   $f10, $f8, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    swc1    $f16, 0x00B0($sp)
    jal     func_80026D90
    swc1    $f10, 0x00CC($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    jal     func_80026D90
    swc1    $f0, 0x00AC($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D64
    swc1    $f0, 0x00B4($sp)
    trunc.w.s $f18, $f0
    addiu   t4, $zero, 0x004B          # t4 = 0000004B
    sw      t4, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00000000
    mfc1    t0, $f18
    addiu   a1, $sp, 0x00C4            # a1 = FFFFFF9C
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFF90
    sll     t1, t0, 16
    sra     t2, t1, 16
    addiu   t3, t2, 0x0008             # t3 = 00000008
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a3, $sp, 0x00AC            # a3 = FFFFFF84
    sw      $zero, 0x0014($sp)
    cvt.s.w $f6, $f4
    jal     func_809D1160
    swc1    $f6, 0x0010($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000A
    bne     $at, $zero, lbl_809DE368
    nop
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
lbl_809DE488:
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s1, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f20
    jal     func_80064280
    lui     a3, 0x4170                 # a3 = 41700000
    lh      t9, 0x0168(s1)             # 00000168
    bnel    t9, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DE4C0:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     t5, %hi(var_809E41E1)      # t5 = 809E0000
    beq     v0, $zero, lbl_809DE7B4
    lui     t9, %hi(var_809E41E1)      # t9 = 809E0000
    bne     v1, v0, lbl_809DE4E0
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    sb      $zero, %lo(var_809E41E0)($at)
lbl_809DE4E0:
    lbu     t5, %lo(var_809E41E1)(t5)
    bne     v1, t5, lbl_809DE4F0
    nop
    sh      $zero, 0x0168(s1)          # 00000168
lbl_809DE4F0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x20B2          # a1 = 000020B2
    lui     t7, %hi(var_809E41EC)      # t7 = 809E0000
    lw      t7, %lo(var_809E41EC)(t7)
    lui     t6, %hi(func_809D4D18)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809D4D18) # t6 = 809D4D18
    lw      t8, 0x013C(t7)             # 809E013C
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    bne     t6, t8, lbl_809DE520
    nop
    beq     $zero, $zero, lbl_809DE520
    addiu   v0, $zero, 0x0046          # v0 = 00000046
lbl_809DE520:
    lh      t0, 0x0168(s1)             # 00000168
    slt     $at, v0, t0
    beq     $at, $zero, lbl_809DE6B0
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f20                  # $f20 = 320.00
    nop
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     t1, %hi(var_809E41E4)      # t1 = 809E0000
    lw      t1, %lo(var_809E41E4)(t1)
    mov.s   $f12, $f20
    lwc1    $f8, 0x04AC(t1)            # 809E04AC
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x009C($sp)
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    lw      v0, %lo(var_809E41E4)(v0)
    mtc1    $zero, $f20                # $f20 = 0.00
    lui     $at, %hi(var_809E2D5C)     # $at = 809E0000
    lwc1    $f16, 0x04B4(v0)           # 809E04B4
    lwc1    $f6, %lo(var_809E2D5C)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    add.s   $f18, $f0, $f16
    mtc1    $at, $f12                  # $f12 = 5.00
    swc1    $f18, 0x00A4($sp)
    lwc1    $f4, 0x04B0(v0)            # 809E04B0
    swc1    $f20, 0x0090($sp)
    swc1    $f20, 0x0094($sp)
    swc1    $f20, 0x0098($sp)
    swc1    $f20, 0x0084($sp)
    swc1    $f20, 0x008C($sp)
    swc1    $f6, 0x0088($sp)
    jal     func_80026D64
    swc1    $f4, 0x00A0($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    addiu   s0, $sp, 0x009C            # s0 = FFFFFF74
    addiu   t2, $sp, 0x0084            # t2 = FFFFFF5C
    add.s   $f10, $f0, $f8
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0020($sp)
    sw      t2, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    or      a2, s0, $zero              # a2 = FFFFFF74
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a3, $sp, 0x0090            # a3 = FFFFFF68
    sw      $zero, 0x0018($sp)
    jal     func_809D1254
    sw      $zero, 0x001C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    swc1    $f0, 0x0090($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D64
    swc1    $f0, 0x0098($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    lwc1    $f6, 0x0090($sp)
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    add.s   $f18, $f0, $f16
    mul.s   $f8, $f6, $f2
    lw      v0, %lo(var_809E41E4)(v0)
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f18, 0x0094($sp)
    lwc1    $f4, 0x04AC(v0)            # 809E04AC
    lwc1    $f18, 0x0098($sp)
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f10, $f4, $f8
    mul.s   $f6, $f18, $f2
    swc1    $f10, 0x009C($sp)
    lwc1    $f16, 0x04B4(v0)           # 809E04B4
    add.s   $f4, $f16, $f6
    jal     func_80026D64
    swc1    $f4, 0x00A4($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    addiu   t4, $sp, 0x0084            # t4 = FFFFFF5C
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    add.s   $f10, $f0, $f8
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t7, $zero, 0x0082          # t7 = 00000082
    sw      t7, 0x0020($sp)
    sw      t5, 0x001C($sp)
    swc1    $f10, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t4, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a2, s0, $zero              # a2 = FFFFFF74
    jal     func_809D1254
    addiu   a3, $sp, 0x0090            # a3 = FFFFFF68
lbl_809DE6B0:
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x42A0                 # a1 = 42A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064280
    addiu   a0, a0, 0x0198             # a0 = 809E0198
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064280
    addiu   a0, a0, 0x01A0             # a0 = 809E01A0
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x3D23                 # a1 = 3D230000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xD70A             # a1 = 3D23D70A
    jal     func_80064280
    addiu   a0, a0, 0x01A4             # a0 = 809E01A4
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    lui     a1, 0x428C                 # a1 = 428C0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064280
    addiu   a0, a0, 0x01B4             # a0 = 809E01B4
    lh      v0, 0x0168(s1)             # 00000168
    addiu   $at, $zero, 0x0046         # $at = 00000046
    lui     t6, %hi(var_809E41E4)      # t6 = 809E0000
    beq     v0, $at, lbl_809DE744
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v0, $at, lbl_809DE758
lbl_809DE744:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lw      t6, %lo(var_809E41E4)(t6)
    swc1    $f18, 0x01B4(t6)           # 809E01B4
    lh      v0, 0x0168(s1)             # 00000168
lbl_809DE758:
    andi    t8, v0, 0x0003             # t8 = 00000000
    bne     t8, $zero, lbl_809DE994
    lui     $at, %hi(var_809E2D60)     # $at = 809E0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2D60)($at)
    trunc.w.s $f16, $f0
    lui     $at, %hi(var_809E2D64)     # $at = 809E0000
    lwc1    $f20, %lo(var_809E2D64)($at)
    lui     $at, 0x4120                # $at = 41200000
    mfc1    t1, $f16
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     t4, %hi(var_809E41E4)      # t4 = 809E0000
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f6                    # $f6 = 0.00
    lw      t4, %lo(var_809E41E4)(t4)
    cvt.s.w $f2, $f6
    add.s   $f4, $f2, $f2
    mul.s   $f8, $f4, $f20
    div.s   $f18, $f8, $f10
    swc1    $f18, 0x01B0(t4)           # 809E01B0
    beq     $zero, $zero, lbl_809DE998
    lw      $ra, 0x0044($sp)
lbl_809DE7B4:
    lbu     t9, %lo(var_809E41E1)(t9)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    bnel    t9, $at, lbl_809DE8EC
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    lw      v0, %lo(var_809E41E4)(v0)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f6, 0x01A0(v0)            # 809E01A0
    c.lt.s  $f16, $f6
    nop
    bc1fl   lbl_809DE8D8
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x438C                # $at = 438C0000
lbl_809DE7F8:
    mtc1    $at, $f12                  # $f12 = 280.00
    jal     func_80026D90
    nop
    lui     t5, %hi(var_809E41E4)      # t5 = 809E0000
    lw      t5, %lo(var_809E41E4)(t5)
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f12                  # $f12 = 280.00
    lwc1    $f4, 0x04AC(t5)            # 809E04AC
    add.s   $f8, $f0, $f4
    jal     func_80026D90
    swc1    $f8, 0x0074($sp)
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    lw      v0, %lo(var_809E41E4)(v0)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f10, 0x04B4(v0)           # 809E04B4
    lui     $at, %hi(var_809E2D68)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2D68)($at)
    add.s   $f18, $f0, $f10
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    swc1    $f18, 0x007C($sp)
    lwc1    $f16, 0x04B0(v0)           # 809E04B0
    swc1    $f20, 0x0068($sp)
    swc1    $f20, 0x006C($sp)
    add.s   $f4, $f16, $f6
    swc1    $f20, 0x0070($sp)
    swc1    $f20, 0x005C($sp)
    swc1    $f20, 0x0064($sp)
    swc1    $f4, 0x0078($sp)
    jal     func_80026D64
    swc1    $f8, 0x0060($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    addiu   t7, $sp, 0x005C            # t7 = FFFFFF34
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    add.s   $f18, $f0, $f10
    sw      t6, 0x0020($sp)
    sw      t7, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f18, 0x0014($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $sp, 0x0074            # a2 = FFFFFF4C
    addiu   a3, $sp, 0x0068            # a3 = FFFFFF40
    sw      $zero, 0x0018($sp)
    jal     func_809D1254
    sw      $zero, 0x001C($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0003
    bnel    $at, $zero, lbl_809DE7F8
    lui     $at, 0x438C                # $at = 438C0000
    lui     v0, %hi(var_809E41E4)      # v0 = 809E0000
    lw      v0, %lo(var_809E41E4)(v0)
    lui     $at, 0x4040                # $at = 40400000
lbl_809DE8D8:
    mtc1    $zero, $f20                # $f20 = 0.00
    mtc1    $at, $f0                   # $f0 = 3.00
    beq     $zero, $zero, lbl_809DE8F8
    nop
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809DE8EC:
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    lw      v0, %lo(var_809E41E4)(v0)
lbl_809DE8F8:
    lui     $at, %hi(var_809E2D6C)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2D6C)($at)
    mfc1    a1, $f20
    addiu   a0, v0, 0x01AC             # a0 = 809E01AC
    mul.s   $f6, $f16, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0080($sp)
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f0, 0x0080($sp)
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    mul.s   $f8, $f4, $f0
    mfc1    a1, $f20
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x01A0             # a0 = 809E01A0
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lwc1    $f0, 0x0080($sp)
    lui     a0, %hi(var_809E41E4)      # a0 = 809E0000
    lw      a0, %lo(var_809E41E4)(a0)
    mfc1    a1, $f20
    mfc1    a3, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    addiu   a0, a0, 0x0198             # a0 = 809E0198
    lui     t8, %hi(var_809E41E4)      # t8 = 809E0000
    lw      t8, %lo(var_809E41E4)(t8)
    lwc1    $f10, 0x0198(t8)           # 809E0198
    c.le.s  $f10, $f20
    nop
    bc1fl   lbl_809DE998
    lw      $ra, 0x0044($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_809DE994:
    lw      $ra, 0x0044($sp)
lbl_809DE998:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0128           # $sp = 00000000


func_809DE9B0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0024($sp)
    lh      t8, 0x0430(s0)             # 00000430
    bnel    t8, $at, lbl_809DEC2C
    or      v0, a2, $zero              # v0 = 00000000
    lbu     v1, 0x05AD(s0)             # 000005AD
    addiu   a0, $zero, 0xFFFD          # a0 = FFFFFFFD
    andi    t9, v1, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_809DEC28
    and     t0, v1, a0
    lbu     t1, 0x05AC(s0)             # 000005AC
    lw      v0, 0x05D8(s0)             # 000005D8
    sb      t0, 0x05AD(s0)             # 000005AD
    and     t2, t1, a0
    sb      t2, 0x05AC(s0)             # 000005AC
    lw      t3, 0x0000(v0)             # 00000000
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    lui     $at, 0x3F80                # $at = 3F800000
    sll     t4, t3, 11
    bgez    t4, lbl_809DEC28
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    sh      t5, 0x014A(s0)             # 0000014A
    lw      t6, 0x002C($sp)
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $zero, $f12                # $f12 = 0.00
    addu    $at, $at, t6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_800915CC
    swc1    $f4, 0x0AFC($at)           # 00010AFC
    jal     func_80079B64
    lw      a0, 0x002C($sp)
    beq     v0, $zero, lbl_809DEBE0
    lw      a0, 0x002C($sp)
    lh      t7, 0x0556(s0)             # 00000556
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    bne     t7, $at, lbl_809DEAE8
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
    lui     v1, %hi(var_809E41F1)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41F1)  # v1 = 809E41F1
    lbu     t8, 0x0000(v1)             # 809E41F1
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x4120                 # a1 = 41200000
    beq     t8, $zero, lbl_809DEAA4
    nop
    sb      $zero, 0x0000(v1)          # 809E41F1
    jal     func_809D17C8
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    beq     $zero, $zero, lbl_809DEADC
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
lbl_809DEAA4:
    jal     func_809D1990
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
    lbu     t9, 0x0000(a3)             # 809E41F0
    lui     $at, %hi(var_809E420F)     # $at = 809E0000
    addiu   t4, $zero, 0xFFF9          # t4 = FFFFFFF9
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sll     t2, t1,  1
    sb      t1, 0x0000(a3)             # 809E41F0
    addiu   t3, t2, 0x0008             # t3 = 00000008
    sb      t3, %lo(var_809E420F)($at)
    lui     $at, %hi(var_809E4212)     # $at = 809E0000
    sh      t4, %lo(var_809E4212)($at)
lbl_809DEADC:
    lui     v0, %hi(var_809E41F1)      # v0 = 809E0000
    beq     $zero, $zero, lbl_809DEB60
    lbu     v0, %lo(var_809E41F1)(v0)
lbl_809DEAE8:
    lbu     t5, 0x0000(a3)             # 809E41F0
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x4120                 # a1 = 41200000
    beq     t5, $zero, lbl_809DEB1C
    nop
    sb      $zero, 0x0000(a3)          # 809E41F0
    jal     func_809D17C8
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    lui     v0, %hi(var_809E41F1)      # v0 = 809E0000
    lbu     v0, %lo(var_809E41F1)(v0)
    beq     $zero, $zero, lbl_809DEB60
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
lbl_809DEB1C:
    jal     func_809D1990
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v1, %hi(var_809E41F1)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41F1)  # v1 = 809E41F1
    lbu     t6, 0x0000(v1)             # 809E41F1
    lui     $at, %hi(var_809E420F)     # $at = 809E0000
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    andi    v0, t7, 0x00FF             # v0 = 00000001
    sll     t8, v0,  1
    sb      t7, 0x0000(v1)             # 809E41F1
    addiu   t9, t8, 0x0008             # t9 = 00000008
    sb      t9, %lo(var_809E420F)($at)
    lui     $at, %hi(var_809E4212)     # $at = 809E0000
    addiu   t0, $zero, 0xFFF9          # t0 = FFFFFFF9
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
    sh      t0, %lo(var_809E4212)($at)
lbl_809DEB60:
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_809DEB80
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    lbu     t1, 0x0000(a3)             # 809E41F0
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    slti    $at, t1, 0x0003
    bne     $at, $zero, lbl_809DEBCC
lbl_809DEB80:
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t2, 0x0168(s0)             # 00000168
    sh      t3, 0x0430(s0)             # 00000430
    lw      a0, 0x0024($sp)
    addiu   a1, s0, 0x0514             # a1 = 00000514
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800ABF50
    addiu   a0, a0, 0x0A10             # a0 = 00000A10
    lh      t4, 0x0516(s0)             # 00000516
    lh      t6, 0x0514(s0)             # 00000514
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t5, t4, $at
    subu    t7, $zero, t6
    sh      t5, 0x0516(s0)             # 00000516
    sh      t7, 0x0514(s0)             # 00000514
    lui     $at, %hi(var_809E420F)     # $at = 809E0000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    beq     $zero, $zero, lbl_809DEC24
    sb      t8, %lo(var_809E420F)($at)
lbl_809DEBCC:
    sh      t9, 0x0430(s0)             # 00000430
    sh      t0, 0x0168(s0)             # 00000168
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    beq     $zero, $zero, lbl_809DEC24
    sb      $zero, %lo(var_809E41E0)($at)
lbl_809DEBE0:
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_809D17C8
    lh      a2, 0x0556(s0)             # 00000556
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    lui     v1, %hi(var_809E41F1)      # v1 = 809E0000
    lui     a3, %hi(var_809E41F0)      # a3 = 809E0000
    sh      t1, 0x0430(s0)             # 00000430
    sh      t2, 0x0168(s0)             # 00000168
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    addiu   a3, a3, %lo(var_809E41F0)  # a3 = 809E41F0
    addiu   v1, v1, %lo(var_809E41F1)  # v1 = 809E41F1
    sb      $zero, %lo(var_809E41E0)($at)
    sb      $zero, 0x0000(v1)          # 809E41F1
    sb      $zero, 0x0000(a3)          # 809E41F0
    jal     func_800646F0
    addiu   a0, $zero, 0x1838          # a0 = 00001838
lbl_809DEC24:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_809DEC28:
    or      v0, a2, $zero              # v0 = 00000001
lbl_809DEC2C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809DEC40:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lh      t0, 0x0146(s0)             # 00000146
    lh      t6, 0x0140(s0)             # 00000140
    lh      t8, 0x0142(s0)             # 00000142
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0146(s0)             # 00000146
    lh      v0, 0x0146(s0)             # 00000146
    addiu   t7, t6, 0x0001             # t7 = 00000001
    addiu   t9, t8, 0x0001             # t9 = 00000001
    slti    $at, v0, 0x001E
    sh      t7, 0x0140(s0)             # 00000140
    bne     $at, $zero, lbl_809DEC8C
    sh      t9, 0x0142(s0)             # 00000142
    sh      $zero, 0x0146(s0)          # 00000146
    lh      v0, 0x0146(s0)             # 00000146
lbl_809DEC8C:
    addiu   a2, s0, 0x0024             # a2 = 00000024
    sll     t2, v0,  2
    lw      t5, 0x0000(a2)             # 00000024
    subu    t2, t2, v0
    sll     t2, t2,  2
    addu    t3, s0, t2
    sw      t5, 0x01D8(t3)             # 000001D8
    lw      t4, 0x0004(a2)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    sw      t4, 0x01DC(t3)             # 000001DC
    lw      t5, 0x0008(a2)             # 0000002C
    sw      t5, 0x01E0(t3)             # 000001E0
    sw      a2, 0x0020($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    lw      a2, 0x0020($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t6, v0,  1
lbl_809DECDC:
    addu    v1, s0, t6
    lh      a0, 0x0168(v1)             # 00000168
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    beq     a0, $zero, lbl_809DECFC
    sra     v0, v0, 16
    addiu   t7, a0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0168(v1)             # 00000168
lbl_809DECFC:
    slti    $at, v0, 0x0005
    bnel    $at, $zero, lbl_809DECDC
    sll     t6, v0,  1
    lh      v0, 0x014A(s0)             # 0000014A
    beq     v0, $zero, lbl_809DED18
    addiu   t8, v0, 0xFFFF             # t8 = 00000000
    sh      t8, 0x014A(s0)             # 0000014A
lbl_809DED18:
    lh      v0, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_809DED28
    addiu   t0, v0, 0xFFFF             # t0 = 00000000
    sh      t0, 0x0158(s0)             # 00000158
lbl_809DED28:
    lw      t2, 0x0000(a2)             # 00000000
    addiu   a1, s0, 0x059C             # a1 = 0000059C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t2, 0x0038(s0)             # 00000038
    lw      t1, 0x0004(a2)             # 00000004
    sw      t1, 0x003C(s0)             # 0000003C
    lw      t2, 0x0008(a2)             # 00000008
    sw      t2, 0x0040(s0)             # 00000040
    jal     func_80050B00
    sw      a1, 0x0024($sp)
    lbu     t3, 0x0555(s0)             # 00000555
    beql    t3, $zero, lbl_809DEDA8
    sb      $zero, 0x0555(s0)          # 00000555
    lh      t4, 0x014A(s0)             # 0000014A
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t4, $zero, lbl_809DEDA8
    sb      $zero, 0x0555(s0)          # 00000555
    jal     func_809DE9B0
    lw      a1, 0x003C($sp)
    bne     v0, $zero, lbl_809DEDA4
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0028($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0024($sp)
    lw      a1, 0x0028($sp)
    lw      a0, 0x003C($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0024($sp)
lbl_809DEDA4:
    sb      $zero, 0x0555(s0)          # 00000555
lbl_809DEDA8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809DEDBC:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a0, 0x0000(s5)             # 00000000
    jal     func_8007E2C0
    or      s2, a0, $zero              # s2 = 00000000
    lh      v0, 0x001C(s3)             # 0000001C
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lui     t5, 0xFB00                 # t5 = FB000000
    beq     v0, $at, lbl_809DEE40
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beq     v0, $at, lbl_809DF2E0
    addiu   $at, $zero, 0x0066         # $at = 00000066
    beq     v0, $at, lbl_809DF07C
    lui     s6, 0xDE00                 # s6 = DE000000
    addiu   $at, $zero, 0x0067         # $at = 00000067
    beql    v0, $at, lbl_809DF2E4
    lw      $ra, 0x006C($sp)
    beq     $zero, $zero, lbl_809DF2E4
    lw      $ra, 0x006C($sp)
lbl_809DEE40:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x019C(s3)            # 0000019C
    addiu   a0, a0, 0xA430             # a0 = 0601A430
    lui     $at, 0xC814                # $at = C8140000
    trunc.w.s $f6, $f4
    sll     t7, a0,  4
    srl     t8, t7, 28
    lui     t0, 0x8012                 # t0 = 80120000
    mfc1    t1, $f6
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    sll     t9, t8,  2
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t3, t2, $at                # t3 = C8140000
    sw      t3, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFFD7                 # t6 = FFD70000
    ori     t6, t6, 0xFF80             # t6 = FFD7FF80
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, a0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t3, s5, $at
    lui     $at, %hi(var_809E2D70)     # $at = 809E0000
    lwc1    $f22, %lo(var_809E2D70)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    addu    t1, t9, t0
    lui     s8, 0xDB06                 # s8 = DB060000
    mtc1    $at, $f20                  # $f20 = 1.00
    ori     s8, s8, 0x0020             # s8 = DB060020
    sw      t1, 0x007C($sp)
    sw      t3, 0x0074($sp)
    sw      t2, 0x0078($sp)
    lui     s7, 0x8000                 # s7 = 80000000
    lui     s6, 0xDE00                 # s6 = DE000000
    lw      s4, 0x02D0(s2)             # 000002D0
lbl_809DEEF4:
    sll     t9, s1,  2
    subu    t9, t9, s1
    addiu   t4, s4, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s4)             # 00000000
    lh      v0, 0x0140(s3)             # 00000140
    lw      a0, 0x0000(s5)             # 00000000
    sll     t9, t9,  3
    sll     t6, s1,  2
    subu    t7, $zero, v0
    sll     t8, t7,  4
    addu    t6, t6, s1
    addu    t9, t9, s1
    sll     t5, v0,  2
    sll     t9, t9,  1
    sll     t6, t6,  1
    subu    t8, t8, t7
    subu    t5, t5, v0
    addu    a2, t5, t6
    addu    a3, t8, t9
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    sw      t4, 0x0028($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lh      t5, 0x0146(s3)             # 00000146
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a3, $zero, $zero           # a3 = 00000000
    subu    a0, t5, s1
    addiu   a0, a0, 0x001E             # a0 = 0000001E
    div     $zero, a0, $at
    mfhi    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t6, a0,  2
    subu    t6, t6, a0
    sll     t6, t6,  2
    addu    v1, s3, t6
    lwc1    $f12, 0x01D8(v1)           # 000001D8
    lwc1    $f14, 0x01DC(v1)           # 000001DC
    jal     func_800AA7F4
    lw      a2, 0x01E0(v1)             # 000001E0
    mtc1    s1, $f8                    # $f8 = 0.00
    lwc1    $f18, 0x0050(s3)           # 00000050
    lwc1    $f4, 0x0054(s3)            # 00000054
    cvt.s.w $f10, $f8
    lwc1    $f6, 0x0058(s3)            # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f16, $f10, $f22
    sub.s   $f0, $f20, $f16
    mul.s   $f12, $f18, $f0
    nop
    mul.s   $f14, $f4, $f0
    nop
    mul.s   $f8, $f6, $f0
    mfc1    a2, $f8
    jal     func_800AA8FC
    nop
    jal     func_800ABE54
    lw      a0, 0x0074($sp)
    lw      s4, 0x02D0(s2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s4, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s4)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s1, s1, 0xFFFF             # s1 = 00000008
    sll     s1, s1, 16
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t0, 0x007C($sp)
    lw      t2, 0x0078($sp)
    sra     s1, s1, 16
    lw      t1, 0x0000(t0)             # 00000000
    addu    t3, t1, t2
    addu    t4, t3, s7
    sw      t4, 0x0004(s0)             # 00000004
    bgezl   s1, lbl_809DEEF4
    lw      s4, 0x02D0(s2)             # 000002D0
    beq     $zero, $zero, lbl_809DF2E4
    lw      $ra, 0x006C($sp)
lbl_809DF07C:
    lui     s7, 0x8000                 # s7 = 80000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lwc1    $f10, 0x019C(s3)           # 0000019C
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   a0, a0, 0xA998             # a0 = 0601A998
    trunc.w.s $f16, $f10
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    sll     t4, a0,  4
    srl     t5, t4, 28
    mfc1    t0, $f16
    sll     t6, t5,  2
    lui     t7, 0x8012                 # t7 = 80120000
    andi    t1, t0, 0x00FF             # t1 = 00000000
    or      t2, t1, $at                # t2 = C3E1EB00
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a0, $at
    addu    t9, t7, t8
    addu    t0, t9, s7
    sw      t0, 0x0004(s0)             # 00000004
    lui     a1, 0x0602                 # a1 = 06020000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   a1, a1, 0xAB00             # a1 = 0601AB00
    and     t6, a1, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t7, s5, $at
    lui     $at, %hi(var_809E2D74)     # $at = 809E0000
    sll     t1, a1,  4
    srl     t2, t1, 28
    lwc1    $f22, %lo(var_809E2D74)($at)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lui     $at, 0x3F80                # $at = 3F800000
    sll     t3, t2,  2
    addu    t5, t3, t4
    lui     s8, 0xDB06                 # s8 = DB060000
    mtc1    $at, $f20                  # $f20 = 1.00
    ori     s8, s8, 0x0020             # s8 = DB060020
    sw      t5, 0x007C($sp)
    sw      t7, 0x0074($sp)
    sw      t6, 0x0078($sp)
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    lw      s4, 0x02D0(s2)             # 000002D0
lbl_809DF160:
    sll     t3, s1,  2
    subu    t3, t3, s1
    addiu   t8, s4, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s4)             # 00000000
    lh      v0, 0x0140(s3)             # 00000140
    lw      a0, 0x0000(s5)             # 00000000
    sll     t3, t3,  3
    sll     t0, s1,  2
    subu    t1, $zero, v0
    sll     t2, t1,  4
    addu    t0, t0, s1
    addu    t3, t3, s1
    sll     t9, v0,  2
    sll     t3, t3,  1
    sll     t0, t0,  1
    subu    t2, t2, t1
    subu    t9, t9, v0
    addu    a2, t9, t0
    addu    a3, t2, t3
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t8, 0x0028($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lh      t9, 0x0146(s3)             # 00000146
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a3, $zero, $zero           # a3 = 00000000
    subu    a0, t9, s1
    addiu   a0, a0, 0x001E             # a0 = 0000001E
    div     $zero, a0, $at
    mfhi    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t0, a0,  2
    subu    t0, t0, a0
    sll     t0, t0,  2
    addu    v1, s3, t0
    lwc1    $f12, 0x01D8(v1)           # 000001D8
    lwc1    $f14, 0x01DC(v1)           # 000001DC
    jal     func_800AA7F4
    lw      a2, 0x01E0(v1)             # 000001E0
    mtc1    s1, $f18                   # $f18 = 0.00
    lwc1    $f8, 0x0050(s3)            # 00000050
    lwc1    $f10, 0x0054(s3)           # 00000054
    cvt.s.w $f4, $f18
    lwc1    $f16, 0x0058(s3)           # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f4, $f22
    sub.s   $f0, $f20, $f6
    mul.s   $f12, $f8, $f0
    nop
    mul.s   $f14, $f10, $f0
    nop
    mul.s   $f18, $f16, $f0
    mfc1    a2, $f18
    jal     func_800AA8FC
    nop
    jal     func_800ABE54
    lw      a0, 0x0074($sp)
    lw      s4, 0x02D0(s2)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s4, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0000(s4)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s1, s1, 0xFFFF             # s1 = 00000008
    sll     s1, s1, 16
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t4, 0x007C($sp)
    lw      t6, 0x0078($sp)
    sra     s1, s1, 16
    lw      t5, 0x0000(t4)             # 00000000
    addu    t7, t5, t6
    addu    t8, t7, s7
    sw      t8, 0x0004(s0)             # 00000004
    bgezl   s1, lbl_809DF160
    lw      s4, 0x02D0(s2)             # 000002D0
lbl_809DF2E0:
    lw      $ra, 0x006C($sp)
lbl_809DF2E4:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
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
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000


func_809DF318:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      a0, 0x0000(s5)             # 00000000
    jal     func_8007E2C0
    or      s2, a0, $zero              # s2 = 00000000
    lh      t6, 0x001C(s3)             # 0000001C
    addiu   $at, $zero, 0x0069         # $at = 00000069
    lui     a0, 0x0602                 # a0 = 06020000
    bne     t6, $at, lbl_809DF5BC
    addiu   a0, a0, 0xA998             # a0 = 0601A998
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     a0, 0x0602                 # a0 = 06020000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x019C(s3)            # 0000019C
    addiu   a0, a0, 0xA430             # a0 = 0601A430
    lui     $at, 0xC814                # $at = C8140000
    trunc.w.s $f6, $f4
    sll     t8, a0,  4
    srl     t9, t8, 28
    lui     t6, 0xFB00                 # t6 = FB000000
    mfc1    t2, $f6
    sll     t0, t9,  2
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = C8140000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFFD7                 # t7 = FFD70000
    ori     t7, t7, 0xFF80             # t7 = FFD7FF80
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, a0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t4, s5, $at
    lui     $at, %hi(var_809E2D78)     # $at = 809E0000
    lwc1    $f22, %lo(var_809E2D78)($at)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    lui     $at, 0x3F80                # $at = 3F800000
    addu    t2, t0, t1
    lui     s6, 0xDB06                 # s6 = DB060000
    mtc1    $at, $f20                  # $f20 = 1.00
    ori     s6, s6, 0x0020             # s6 = DB060020
    sw      t2, 0x0078($sp)
    sw      t4, 0x0070($sp)
    sw      t3, 0x0074($sp)
    addiu   s8, $zero, 0x000A          # s8 = 0000000A
    addiu   s7, $zero, 0x0003          # s7 = 00000003
    lw      s4, 0x02D0(s2)             # 000002D0
lbl_809DF430:
    sll     t0, s1,  2
    subu    t0, t0, s1
    addiu   t5, s4, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s4)             # 00000000
    lh      v0, 0x0140(s3)             # 00000140
    lw      a0, 0x0000(s5)             # 00000000
    sll     t0, t0,  3
    multu   v0, s7
    subu    t8, $zero, v0
    sll     t9, t8,  4
    addu    t0, t0, s1
    sll     t0, t0,  1
    subu    t9, t9, t8
    addu    a3, t9, t0
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    mflo    t6
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    multu   s1, s8
    sw      t4, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    sw      t5, 0x0028($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    mflo    t7
    addu    a2, t6, t7
    jal     func_8007EB84
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lh      t6, 0x0146(s3)             # 00000146
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a3, $zero, $zero           # a3 = 00000000
    subu    a0, t6, s1
    addiu   a0, a0, 0x001E             # a0 = 0000001E
    div     $zero, a0, $at
    mfhi    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t7, a0,  2
    subu    t7, t7, a0
    sll     t7, t7,  2
    addu    v1, s3, t7
    lwc1    $f12, 0x01D8(v1)           # 000001D8
    lwc1    $f14, 0x01DC(v1)           # 000001DC
    jal     func_800AA7F4
    lw      a2, 0x01E0(v1)             # 000001E0
    mtc1    s1, $f8                    # $f8 = 0.00
    lwc1    $f18, 0x0050(s3)           # 00000050
    lwc1    $f4, 0x0054(s3)            # 00000054
    cvt.s.w $f10, $f8
    lwc1    $f6, 0x0058(s3)            # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f16, $f10, $f22
    sub.s   $f0, $f20, $f16
    mul.s   $f12, $f18, $f0
    nop
    mul.s   $f14, $f4, $f0
    nop
    mul.s   $f8, $f6, $f0
    mfc1    a2, $f8
    jal     func_800AA8FC
    nop
    jal     func_800ABE54
    lw      a0, 0x0070($sp)
    lw      s4, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s4, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s4)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   s1, s1, 0xFFFF             # s1 = 00000008
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x0078($sp)
    lw      t4, 0x0074($sp)
    lui     $at, 0x8000                # $at = 80000000
    lw      t3, 0x0000(t2)             # 00000000
    sll     s1, s1, 16
    sra     s1, s1, 16
    addu    t5, t3, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(s0)             # 00000004
    bgezl   s1, lbl_809DF430
    lw      s4, 0x02D0(s2)             # 000002D0
    beq     $zero, $zero, lbl_809DF82C
    lw      $ra, 0x006C($sp)
lbl_809DF5BC:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f10, 0x019C(s3)           # 0000019C
    sll     t7, a0,  4
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    trunc.w.s $f16, $f10
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t0, 0x8012                 # t0 = 80120000
    mfc1    t2, $f16
    addu    t0, t0, t9
    lui     t6, 0xDE00                 # t6 = DE000000
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = C3E1EB00
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t0, 0x0C38(t0)             # 80120C38
    and     t1, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1
    addu    t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
    lui     a1, 0x0602                 # a1 = 06020000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   a1, a1, 0xAB00             # a1 = 0601AB00
    and     t9, a1, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t0, s5, $at
    lui     $at, %hi(var_809E2D7C)     # $at = 809E0000
    sll     t4, a1,  4
    srl     t5, t4, 28
    lwc1    $f22, %lo(var_809E2D7C)($at)
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0x0C38             # t7 = 80120C38
    lui     $at, 0x3F80                # $at = 3F800000
    sll     t6, t5,  2
    addu    t8, t6, t7
    lui     s6, 0xDB06                 # s6 = DB060000
    mtc1    $at, $f20                  # $f20 = 1.00
    ori     s6, s6, 0x0020             # s6 = DB060020
    sw      t8, 0x0078($sp)
    sw      t0, 0x0070($sp)
    sw      t9, 0x0074($sp)
    addiu   s1, $zero, 0x0009          # s1 = 00000009
    addiu   s8, $zero, 0x000A          # s8 = 0000000A
    addiu   s7, $zero, 0x0003          # s7 = 00000003
    lw      s4, 0x02D0(s2)             # 000002D0
lbl_809DF6A4:
    sll     t6, s1,  2
    subu    t6, t6, s1
    addiu   t1, s4, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0000(s4)             # 00000000
    lh      v0, 0x0140(s3)             # 00000140
    lw      a0, 0x0000(s5)             # 00000000
    sll     t6, t6,  3
    multu   v0, s7
    subu    t4, $zero, v0
    sll     t5, t4,  4
    addu    t6, t6, s1
    sll     t6, t6,  1
    subu    t5, t5, t4
    addu    a3, t5, t6
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    mflo    t2
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    multu   s1, s8
    sw      t0, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    sw      t1, 0x0028($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    mflo    t3
    addu    a2, t2, t3
    jal     func_8007EB84
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lh      t2, 0x0146(s3)             # 00000146
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a3, $zero, $zero           # a3 = 00000000
    subu    a0, t2, s1
    addiu   a0, a0, 0x001E             # a0 = 0000001E
    div     $zero, a0, $at
    mfhi    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t3, a0,  2
    subu    t3, t3, a0
    sll     t3, t3,  2
    addu    v1, s3, t3
    lwc1    $f12, 0x01D8(v1)           # 000001D8
    lwc1    $f14, 0x01DC(v1)           # 000001DC
    jal     func_800AA7F4
    lw      a2, 0x01E0(v1)             # 000001E0
    mtc1    s1, $f18                   # $f18 = 0.00
    lwc1    $f8, 0x0050(s3)            # 00000050
    lwc1    $f10, 0x0054(s3)           # 00000054
    cvt.s.w $f4, $f18
    lwc1    $f16, 0x0058(s3)           # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f6, $f4, $f22
    sub.s   $f0, $f20, $f6
    mul.s   $f12, $f8, $f0
    nop
    mul.s   $f14, $f10, $f0
    nop
    mul.s   $f18, $f16, $f0
    mfc1    a2, $f18
    jal     func_800AA8FC
    nop
    jal     func_800ABE54
    lw      a0, 0x0070($sp)
    lw      s4, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s4, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(s4)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s5)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   s1, s1, 0xFFFF             # s1 = 00000008
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0078($sp)
    lw      t0, 0x0074($sp)
    lui     $at, 0x8000                # $at = 80000000
    lw      t9, 0x0000(t8)             # 00000000
    sll     s1, s1, 16
    sra     s1, s1, 16
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    bgezl   s1, lbl_809DF6A4
    lw      s4, 0x02D0(s2)             # 000002D0
    lw      $ra, 0x006C($sp)
lbl_809DF82C:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
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
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_809DF860:
    addiu   $sp, $sp, 0xFED8           # $sp = FFFFFED8
    sw      s3, 0x006C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0084($sp)
    sw      s8, 0x0080($sp)
    sw      s7, 0x007C($sp)
    sw      s6, 0x0078($sp)
    sw      s5, 0x0074($sp)
    sw      s4, 0x0070($sp)
    sw      s2, 0x0068($sp)
    sw      s1, 0x0064($sp)
    sw      s0, 0x0060($sp)
    sdc1    $f30, 0x0058($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s3, $at
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f30                  # $f30 = 25.00
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f28                  # $f28 = 70.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    lui     $at, 0x420C                # $at = 420C0000
    lw      s1, 0x1E10(v0)             # 00001E10
    lw      s7, 0x1C44(s3)             # 00001C44
    mtc1    $at, $f24                  # $f24 = 35.00
    lui     $at, 0x41A0                # $at = 41A00000
    lui     s8, %hi(var_809E4200)      # s8 = 809E0000
    lui     s2, %hi(var_809E41EC)      # s2 = 809E0000
    mtc1    $at, $f22                  # $f22 = 20.00
    mtc1    $zero, $f20                # $f20 = 0.00
    sb      $zero, 0x0113($sp)
    addiu   s2, s2, %lo(var_809E41EC)  # s2 = 809E41EC
    addiu   s8, s8, %lo(var_809E4200)  # s8 = 809E4200
    sw      v0, 0x0094($sp)
    sh      $zero, 0x0110($sp)
    addiu   s6, $sp, 0x00DC            # s6 = FFFFFFB4
    addiu   s5, $sp, 0x00E8            # s5 = FFFFFFC0
    addiu   s4, $sp, 0x00F4            # s4 = FFFFFFCC
lbl_809DF90C:
    lbu     t6, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t6, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lwc1    $f0, 0x0010(s1)            # 00000010
    lwc1    $f4, 0x0004(s1)            # 00000004
    lwc1    $f2, 0x0014(s1)            # 00000014
    lwc1    $f8, 0x0008(s1)            # 00000008
    lwc1    $f12, 0x0018(s1)           # 00000018
    lwc1    $f16, 0x000C(s1)           # 0000000C
    add.s   $f6, $f4, $f0
    lwc1    $f4, 0x001C(s1)            # 0000001C
    lbu     t7, 0x0001(s1)             # 00000001
    add.s   $f10, $f8, $f2
    lwc1    $f8, 0x0020(s1)            # 00000020
    swc1    $f6, 0x0004(s1)            # 00000004
    add.s   $f18, $f16, $f12
    lwc1    $f16, 0x0024(s1)           # 00000024
    swc1    $f10, 0x0008(s1)           # 00000008
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x000C(s1)           # 0000000C
    lbu     v0, 0x0000(s1)             # 00000000
    add.s   $f10, $f2, $f8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0001(s1)             # 00000001
    add.s   $f18, $f12, $f16
    swc1    $f6, 0x0010(s1)            # 00000010
    swc1    $f10, 0x0014(s1)           # 00000014
    bne     v0, $at, lbl_809DFA08
    swc1    $f18, 0x0018(s1)           # 00000018
    andi    v1, t8, 0x00FF             # v1 = 00000001
    lh      t9, 0x002E(s1)             # 0000002E
    bgez    v1, lbl_809DF9A0
    andi    v1, v1, 0x0003             # v1 = 00000001
    beq     v1, $zero, lbl_809DF9A0
    nop
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFD
lbl_809DF9A0:
    sll     v1, v1, 16
    bne     t9, $zero, lbl_809DF9B8
    sra     v1, v1, 16
    addiu   v1, v1, 0x0004             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_809DF9B8:
    sll     t0, v1,  2
    lui     t1, %hi(var_809E2A18)      # t1 = 809E0000
    addiu   t1, t1, %lo(var_809E2A18)  # t1 = 809E2A18
    subu    t0, t0, v1
    addu    v0, t0, t1
    lbu     t2, 0x0000(v0)             # 00000000
    lh      t5, 0x002C(s1)             # 0000002C
    sb      t2, 0x0028(s1)             # 00000028
    lbu     t3, 0x0001(v0)             # 00000001
    addiu   t6, t5, 0xFFEC             # t6 = FFFFFFEC
    sb      t3, 0x0029(s1)             # 00000029
    lbu     t4, 0x0002(v0)             # 00000002
    sh      t6, 0x002C(s1)             # 0000002C
    lh      t7, 0x002C(s1)             # 0000002C
    sb      t4, 0x002A(s1)             # 0000002A
    bgtzl   t7, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
lbl_809DFA08:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809DFA1C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_809DFAAC
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_809DFA1C:
    lh      v0, 0x002E(s1)             # 0000002E
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809DFA50
    nop
    lh      t8, 0x002C(s1)             # 0000002C
    addiu   t9, t8, 0xFFEC             # t9 = FFFFFFED
    sh      t9, 0x002C(s1)             # 0000002C
    lh      t0, 0x002C(s1)             # 0000002C
    bgtzl   t0, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
lbl_809DFA50:
    bnel    v0, $zero, lbl_809DFA88
    lh      t6, 0x002C(s1)             # 0000002C
    lh      t1, 0x002C(s1)             # 0000002C
    addiu   t2, t1, 0x000A             # t2 = 809E2A22
    sh      t2, 0x002C(s1)             # 0000002C
    lh      t3, 0x002C(s1)             # 0000002C
    slti    $at, t3, 0x0064
    bnel    $at, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lh      t4, 0x002E(s1)             # 0000002E
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_809E0550
    sh      t5, 0x002E(s1)             # 0000002E
    lh      t6, 0x002C(s1)             # 0000002C
lbl_809DFA88:
    addiu   t7, t6, 0xFFFD             # t7 = FFFFFFE9
    sh      t7, 0x002C(s1)             # 0000002C
    lh      t8, 0x002C(s1)             # 0000002C
    bgtzl   t8, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_809DFAAC:
    bnel    v0, $at, lbl_809DFB28
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t9, 0x0030(s1)             # 00000030
    lh      t1, 0x0110($sp)
    beql    t9, $zero, lbl_809DFAF4
    lh      t6, 0x002C(s1)             # 0000002C
    lh      t0, 0x002C(s1)             # 0000002C
    andi    t2, t1, 0x0007             # t2 = 00000000
    subu    t3, t0, t2
    addiu   t4, t3, 0xFFF3             # t4 = FFFFFFF3
    sh      t4, 0x002C(s1)             # 0000002C
    lh      t5, 0x002C(s1)             # 0000002C
    bgtzl   t5, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
    lh      t6, 0x002C(s1)             # 0000002C
lbl_809DFAF4:
    addiu   t7, t6, 0x012C             # t7 = 00000118
    sh      t7, 0x002C(s1)             # 0000002C
    lh      t8, 0x002C(s1)             # 0000002C
    slti    $at, t8, 0x00FF
    bnel    $at, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lh      t1, 0x0030(s1)             # 00000030
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x002C(s1)             # 0000002C
    addiu   t0, t1, 0x0001             # t0 = 809E2A19
    beq     $zero, $zero, lbl_809E0550
    sh      t0, 0x0030(s1)             # 00000030
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_809DFB28:
    bne     v0, $at, lbl_809DFCE8
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, %hi(var_809E4210)     # $at = 809E0000
    sb      t2, %lo(var_809E4210)($at)
    lh      t3, 0x0030(s1)             # 00000030
    lui     s0, %hi(func_809E1E08)     # s0 = 809E0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0030(s1)             # 00000030
    lh      t5, 0x0030(s1)             # 00000030
    addiu   s0, s0, %lo(func_809E1E08) # s0 = 809E1E08
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    slti    $at, t5, 0x001F
    bne     $at, $zero, lbl_809DFB84
    addiu   a0, s1, 0x0034             # a0 = 00000034
    lh      t6, 0x002C(s1)             # 0000002C
    addiu   t7, t6, 0xFFF6             # t7 = FFFFFFE2
    sh      t7, 0x002C(s1)             # 0000002C
    lh      t8, 0x002C(s1)             # 0000002C
    bgtzl   t8, lbl_809DFB88
    lui     a3, 0x3B44                 # a3 = 3B440000
    sh      $zero, 0x002C(s1)          # 0000002C
    sb      $zero, 0x0000(s1)          # 00000000
lbl_809DFB84:
    lui     a3, 0x3B44                 # a3 = 3B440000
lbl_809DFB88:
    ori     a3, a3, 0x9BA6             # a3 = 3B449BA6
    jal     func_80064280
    lw      a1, 0x0038(s1)             # 00000038
    lw      v0, 0x0000(s2)             # 809E41EC
    lwc1    $f10, 0x0008(s1)           # 00000008
    lwc1    $f6, 0x0004(s1)            # 00000004
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x3F00                # $at = 3F000000
    sub.s   $f16, $f8, $f10
    mtc1    $at, $f18                  # $f18 = 0.50
    lw      t9, 0x013C(v0)             # 0000013C
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0x000C(s1)            # 0000000C
    lwc1    $f4, 0x002C(v0)            # 0000002C
    mul.s   $f2, $f16, $f18
    beq     s0, t9, lbl_809E0550
    sub.s   $f12, $f4, $f6
    mul.s   $f8, $f0, $f0
    lui     $at, 0x4561                # $at = 45610000
    mtc1    $at, $f6                   # $f6 = 3600.00
    mul.s   $f10, $f2, $f2
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f18, $f12, $f12
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809E0554
    lh      v0, 0x0110($sp)
lbl_809DFC00:
    jal     func_80026D90
    mov.s   $f12, $f24
    lw      t1, 0x0000(s2)             # 809E41EC
    mov.s   $f12, $f28
    lwc1    $f8, 0x0024(t1)            # 00000024
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x00F4($sp)
    lw      t0, 0x0000(s2)             # 809E41EC
    mov.s   $f12, $f24
    lwc1    $f16, 0x0028(t0)           # 00000028
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x00F8($sp)
    lw      t2, 0x0000(s2)             # 809E41EC
    mov.s   $f12, $f22
    lwc1    $f4, 0x002C(t2)            # 0000002C
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x00FC($sp)
    swc1    $f0, 0x00E8($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x00EC($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x00F0($sp)
    swc1    $f20, 0x00DC($sp)
    swc1    $f20, 0x00E0($sp)
    swc1    $f20, 0x00E4($sp)
    jal     func_80026D64
    mov.s   $f12, $f26
    add.s   $f8, $f0, $f30
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFCC
    or      a2, s5, $zero              # a2 = FFFFFFC0
    swc1    $f8, 0x0010($sp)
    lh      t3, 0x002E(s1)             # 0000002E
    or      a3, s6, $zero              # a3 = FFFFFFB4
    jal     func_809D1500
    sw      t3, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0032
    bne     $at, $zero, lbl_809DFC00
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t5, 0x0000(s2)             # 809E41EC
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    sb      t4, 0x04E4(t5)             # 000004E4
    swc1    $f10, 0x0AFC($at)          # 00010AFC
    sb      $zero, 0x0000(s1)          # 00000000
    beq     $zero, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
lbl_809DFCE8:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_809DFD94
    addiu   $at, $zero, 0x0009         # $at = 00000009
    swc1    $f20, 0x011C($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    lw      t6, 0x0000(s2)             # 809E41EC
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f16, 0x0120($sp)
    lwc1    $f18, 0x0038(s1)           # 00000038
    swc1    $f18, 0x0124($sp)
    lwc1    $f4, 0x003C(s1)            # 0000003C
    lwc1    $f6, 0x0198(t6)            # 00000198
    jal     func_800AAB94
    add.s   $f12, $f4, $f6
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFF4
    jal     func_800AB958
    addiu   a1, s1, 0x0004             # a1 = 00000004
    lh      t7, 0x0030(s1)             # 00000030
    beql    t7, $zero, lbl_809DFD60
    lh      t0, 0x002C(s1)             # 0000002C
    lh      t8, 0x002C(s1)             # 0000002C
    addiu   t9, t8, 0xFFC4             # t9 = FFFFFFC4
    sh      t9, 0x002C(s1)             # 0000002C
    lh      t1, 0x002C(s1)             # 0000002C
    bgtzl   t1, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
    lh      t0, 0x002C(s1)             # 0000002C
lbl_809DFD60:
    addiu   t2, t0, 0x003C             # t2 = 0000003C
    sh      t2, 0x002C(s1)             # 0000002C
    lh      t3, 0x002C(s1)             # 0000002C
    slti    $at, t3, 0x00FF
    bnel    $at, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lh      t5, 0x0030(s1)             # 00000030
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sh      t4, 0x002C(s1)             # 0000002C
    addiu   t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_809E0550
    sh      t6, 0x0030(s1)             # 00000030
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_809DFD94:
    bnel    v0, $at, lbl_809DFFD0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lh      t7, 0x0030(s1)             # 00000030
    lui     t9, %hi(var_809E420C)      # t9 = 809E0000
    lui     $at, 0x4700                # $at = 47000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0030(s1)             # 00000030
    lh      t9, %lo(var_809E420C)(t9)
    mtc1    $at, $f4                   # $f4 = 32768.00
    swc1    $f20, 0x011C($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    swc1    $f20, 0x0120($sp)
    lwc1    $f8, 0x0038(s1)            # 00000038
    cvt.s.w $f18, $f16
    lui     $at, %hi(var_809E2D80)     # $at = 809E0000
    or      a1, $zero, $zero           # a1 = 00000000
    neg.s   $f10, $f8
    div.s   $f6, $f18, $f4
    lwc1    $f8, %lo(var_809E2D80)($at)
    swc1    $f10, 0x0124($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_809E2D84)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D84)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s1)           # 0000003C
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0040(s1)           # 00000040
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   s0, s1, 0x0004             # s0 = 00000004
    or      a1, s0, $zero              # a1 = 00000004
    jal     func_800AB958
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFF4
    lwc1    $f10, 0x0004(s1)           # 00000004
    lwc1    $f16, 0x0000(s8)           # 809E4200
    lwc1    $f4, 0x0008(s1)            # 00000008
    lh      t1, 0x0030(s1)             # 00000030
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x000C(s1)           # 0000000C
    slti    $at, t1, 0x000A
    lui     a1, 0x4248                 # a1 = 42480000
    swc1    $f18, 0x0004(s1)           # 00000004
    lwc1    $f6, 0x0004(s8)            # 809E4204
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x42C8                 # a3 = 42C80000
    add.s   $f8, $f4, $f6
    addiu   a0, s1, 0x0040             # a0 = 00000040
    swc1    $f8, 0x0008(s1)            # 00000008
    lwc1    $f16, 0x0008(s8)           # 809E4208
    add.s   $f18, $f10, $f16
    beq     $at, $zero, lbl_809DFE84
    swc1    $f18, 0x000C(s1)           # 0000000C
    jal     func_80064280
    addiu   a0, s1, 0x0038             # a0 = 00000038
    beq     $zero, $zero, lbl_809DFF9C
    lui     $at, 0x4120                # $at = 41200000
lbl_809DFE84:
    mfc1    a1, $f20
    mfc1    a3, $f26
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    mfc1    a3, $f26
    addiu   a0, s1, 0x0038             # a0 = 00000038
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v0, 0x0030(s1)             # 00000030
    slti    $at, v0, 0x0010
    bne     $at, $zero, lbl_809DFF98
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v0, $at, lbl_809DFF78
    lbu     t0, 0x0113($sp)
    bne     t0, $zero, lbl_809DFF78
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0113($sp)
    lw      t5, 0x0000(s0)             # 00000004
    addiu   t3, $sp, 0x00D0            # t3 = FFFFFFA8
    lui     $at, 0x4220                # $at = 42200000
    sw      t5, 0x0000(t3)             # FFFFFFA8
    lw      t4, 0x0004(s0)             # 00000008
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     $at, 0xC248                # $at = C2480000
    sw      t4, 0x0004(t3)             # FFFFFFAC
    lw      t5, 0x0008(s0)             # 0000000C
    sw      t5, 0x0008(t3)             # FFFFFFB0
    lwc1    $f6, 0x0008(s1)            # 00000008
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809DFF1C
    mtc1    $at, $f10                  # $f10 = -50.00
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f8                   # $f8 = 220.00
    beq     $zero, $zero, lbl_809DFF24
    swc1    $f8, 0x00D4($sp)
    mtc1    $at, $f10                  # $f10 = 220.00
lbl_809DFF1C:
    nop
    swc1    $f10, 0x00D4($sp)
lbl_809DFF24:
    jal     func_809D3390
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFFA8
    c.le.s  $f20, $f0
    lw      t6, 0x0000(s2)             # 809E41EC
    bc1f    lbl_809DFF78
    swc1    $f0, 0x04F4(t6)            # 000004F4
    lw      v0, 0x0000(s2)             # 809E41EC
    lwc1    $f16, 0x04F4(v0)           # 000004F4
    c.eq.s  $f24, $f16
    nop
    bc1tl   lbl_809DFF7C
    lh      t8, 0x002C(s1)             # 0000002C
    lwc1    $f18, 0x0004(s1)           # 00000004
    or      a1, s3, $zero              # a1 = 00000000
    swc1    $f18, 0x04F0(v0)           # 000004F0
    lw      t7, 0x0000(s2)             # 809E41EC
    lwc1    $f4, 0x000C(s1)            # 0000000C
    swc1    $f4, 0x04F8(t7)            # 000004F8
    lh      a2, 0x002E(s1)             # 0000002E
    jal     func_809D2A6C
    lw      a0, 0x0000(s2)             # 809E41EC
lbl_809DFF78:
    lh      t8, 0x002C(s1)             # 0000002C
lbl_809DFF7C:
    addiu   t9, t8, 0xFED4             # t9 = FFFFFED4
    sh      t9, 0x002C(s1)             # 0000002C
    lh      t1, 0x002C(s1)             # 0000002C
    bgtzl   t1, lbl_809DFF9C
    lui     $at, 0x4120                # $at = 41200000
    sh      $zero, 0x002C(s1)          # 0000002C
    sb      $zero, 0x0000(s1)          # 00000000
lbl_809DFF98:
    lui     $at, 0x4120                # $at = 41200000
lbl_809DFF9C:
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     a2, %hi(var_809E27CC)      # a2 = 809E0000
    addiu   a2, a2, %lo(var_809E27CC)  # a2 = 809E27CC
    swc1    $f6, 0x0010($sp)
    lh      t0, 0x002E(s1)             # 0000002E
    or      a3, a2, $zero              # a3 = 809E27CC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000004
    jal     func_809D1500
    sw      t0, 0x0014($sp)
    beq     $zero, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_809DFFD0:
    bnel    v0, $at, lbl_809E013C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t2, 0x0030(s1)             # 00000030
    lui     t4, %hi(var_809E420C)      # t4 = 809E0000
    lui     $at, 0x4700                # $at = 47000000
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0030(s1)             # 00000030
    lh      t4, %lo(var_809E420C)(t4)
    mtc1    $at, $f4                   # $f4 = 32768.00
    swc1    $f20, 0x011C($sp)
    mtc1    t4, $f16                   # $f16 = 0.00
    swc1    $f20, 0x0120($sp)
    lwc1    $f8, 0x0038(s1)            # 00000038
    cvt.s.w $f18, $f16
    lui     $at, %hi(var_809E2D88)     # $at = 809E0000
    or      a1, $zero, $zero           # a1 = 00000000
    neg.s   $f10, $f8
    div.s   $f6, $f18, $f4
    lwc1    $f8, %lo(var_809E2D88)($at)
    swc1    $f10, 0x0124($sp)
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_809E2D8C)     # $at = 809E0000
    lwc1    $f12, %lo(var_809E2D8C)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s1)           # 0000003C
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0040(s1)           # 00000040
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   s0, s1, 0x0004             # s0 = 00000004
    or      a1, s0, $zero              # a1 = 00000004
    jal     func_800AB958
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFF4
    lwc1    $f10, 0x0004(s1)           # 00000004
    lwc1    $f16, 0x0000(s8)           # 809E4200
    lwc1    $f4, 0x0008(s1)            # 00000008
    lh      t5, 0x0030(s1)             # 00000030
    add.s   $f18, $f10, $f16
    lwc1    $f10, 0x000C(s1)           # 0000000C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    slti    $at, t5, 0x0005
    swc1    $f18, 0x0004(s1)           # 00000004
    lwc1    $f6, 0x0004(s8)            # 809E4204
    lui     a1, 0x4220                 # a1 = 42200000
    lui     a3, 0x42C8                 # a3 = 42C80000
    add.s   $f8, $f4, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0038             # a0 = 00000038
    swc1    $f8, 0x0008(s1)            # 00000008
    lwc1    $f16, 0x0008(s8)           # 809E4208
    add.s   $f18, $f10, $f16
    beq     $at, $zero, lbl_809E00C8
    swc1    $f18, 0x000C(s1)           # 0000000C
    addiu   a0, s1, 0x0038             # a0 = 00000038
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_809E0108
    lui     $at, 0x4120                # $at = 41200000
lbl_809E00C8:
    mfc1    a1, $f20
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lh      t6, 0x0030(s1)             # 00000030
    slti    $at, t6, 0x000B
    bnel    $at, $zero, lbl_809E0108
    lui     $at, 0x4120                # $at = 41200000
    lh      t7, 0x002C(s1)             # 0000002C
    addiu   t8, t7, 0xFFE2             # t8 = FFFFFFE2
    sh      t8, 0x002C(s1)             # 0000002C
    lh      t9, 0x002C(s1)             # 0000002C
    bgtzl   t9, lbl_809E0108
    lui     $at, 0x4120                # $at = 41200000
    sh      $zero, 0x002C(s1)          # 0000002C
    sb      $zero, 0x0000(s1)          # 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_809E0108:
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     a2, %hi(var_809E27CC)      # a2 = 809E0000
    addiu   a2, a2, %lo(var_809E27CC)  # a2 = 809E27CC
    swc1    $f4, 0x0010($sp)
    lh      t1, 0x002E(s1)             # 0000002E
    or      a3, a2, $zero              # a3 = 809E27CC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000004
    jal     func_809D1500
    sw      t1, 0x0014($sp)
    beq     $zero, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809E013C:
    bnel    v0, $at, lbl_809E01D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lh      t0, 0x0030(s1)             # 00000030
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    bne     t0, $zero, lbl_809E01A4
    addiu   a0, s1, 0x0034             # a0 = 00000034
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0034             # a0 = 00000034
    lw      a1, 0x0038(s1)             # 00000038
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lbu     t2, 0x0001(s1)             # 00000001
    slti    $at, t2, 0x0010
    bnel    $at, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lh      t3, 0x002C(s1)             # 0000002C
    addiu   t4, t3, 0xFFF6             # t4 = FFFFFFF6
    sh      t4, 0x002C(s1)             # 0000002C
    lh      t5, 0x002C(s1)             # 0000002C
    bgtzl   t5, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
lbl_809E01A4:
    lw      a1, 0x0038(s1)             # 00000038
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lh      t6, 0x002C(s1)             # 0000002C
    addiu   t7, t6, 0xFFF1             # t7 = FFFFFFF1
    sh      t7, 0x002C(s1)             # 0000002C
    lh      t8, 0x002C(s1)             # 0000002C
    bgtzl   t8, lbl_809E0554
    lh      v0, 0x0110($sp)
    sh      $zero, 0x002C(s1)          # 0000002C
    beq     $zero, $zero, lbl_809E0550
    sb      $zero, 0x0000(s1)          # 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_809E01D8:
    bnel    v0, $at, lbl_809E0554
    lh      v0, 0x0110($sp)
    lh      t9, 0x002E(s1)             # 0000002E
    lbu     t1, 0x0001(s1)             # 00000001
    lui     t6, %hi(var_809E41E1)      # t6 = 809E0000
    addiu   a0, s1, 0x0038             # a0 = 00000038
    slt     $at, t9, t1
    beq     $at, $zero, lbl_809E02A4
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lw      t0, 0x0044(s1)             # 00000044
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    bne     t0, $zero, lbl_809E021C
    lui     t2, %hi(var_809E41E1)      # t2 = 809E0000
    lbu     t2, %lo(var_809E41E1)(t2)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t2, $at, lbl_809E0238
lbl_809E021C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    nop
    mul.s   $f0, $f6, $f8
    nop
lbl_809E0238:
    lui     $at, %hi(var_809E2D90)     # $at = 809E0000
    lwc1    $f10, %lo(var_809E2D90)($at)
    mfc1    a1, $f20
    addiu   a0, s1, 0x0034             # a0 = 00000034
    mul.s   $f16, $f10, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f16
    jal     func_80064280
    nop
    lwc1    $f18, 0x0034(s1)           # 00000034
    c.eq.s  $f20, $f18
    nop
    bc1fl   lbl_809E0554
    lh      v0, 0x0110($sp)
    lw      t3, 0x0044(s1)             # 00000044
    sb      $zero, 0x0000(s1)          # 00000000
    bnel    t3, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    lw      t4, 0x0670(s7)             # 00000670
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t5, t4, $at
    sw      t5, 0x0670(s7)             # 00000670
    lui     $at, %hi(var_809E41FF)     # $at = 809E0000
    sb      $zero, %lo(var_809E41FF)($at)
    beq     $zero, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
lbl_809E02A4:
    lbu     t6, %lo(var_809E41E1)(t6)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    ori     a1, a1, 0xCCCD             # a1 = 0000CCCD
    bne     t6, $at, lbl_809E02C0
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sb      t7, 0x0001(s1)             # 00000001
lbl_809E02C0:
    lui     a3, 0x3D23                 # a3 = 3D230000
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    jal     func_80064280
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lw      t8, 0x0044(s1)             # 00000044
    lui     a1, 0x3D2C                 # a1 = 3D2C0000
    ori     a1, a1, 0x0831             # a1 = 3D2C0831
    bne     t8, $zero, lbl_809E03CC
    addiu   a0, s1, 0x0034             # a0 = 00000034
    lui     a1, 0x3C44                 # a1 = 3C440000
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a1, a1, 0x9BA6             # a1 = 3C449BA6
    addiu   a0, s1, 0x0034             # a0 = 00000034
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f4, 0x003C(s1)            # 0000003C
    lwc1    $f6, 0x0038(s1)            # 00000038
    lui     $at, %hi(var_809E2D94)     # $at = 809E0000
    lui     t3, %hi(var_809E41E4)      # t3 = 809E0000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x003C(s1)            # 0000003C
    lwc1    $f10, %lo(var_809E2D94)($at)
    lwc1    $f0, 0x003C(s1)            # 0000003C
    lui     $at, %hi(var_809E2D98)     # $at = 809E0000
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_809E0354
    lw      t0, 0x0670(s7)             # 00000670
    lwc1    $f16, %lo(var_809E2D98)($at)
    sub.s   $f18, $f0, $f16
    swc1    $f18, 0x003C(s1)           # 0000003C
    lw      t9, 0x0670(s7)             # 00000670
    ori     t1, t9, 0x8000             # t1 = 00008000
    beq     $zero, $zero, lbl_809E0364
    sw      t1, 0x0670(s7)             # 00000670
    lw      t0, 0x0670(s7)             # 00000670
lbl_809E0354:
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t2, t0, $at
    sw      t2, 0x0670(s7)             # 00000670
lbl_809E0364:
    lw      t3, %lo(var_809E41E4)(t3)
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f0, 0x01A0(t3)            # 809E01A0
    c.lt.s  $f26, $f0
    nop
    bc1fl   lbl_809E03A0
    lw      t5, 0x0094($sp)
    mtc1    $at, $f4                   # $f4 = 200.00
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_809E03A0
    lw      t5, 0x0094($sp)
    sb      t4, 0x0001(s1)             # 00000001
    lw      t5, 0x0094($sp)
lbl_809E03A0:
    lw      t6, 0x1DE4(t5)             # 00001DE4
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_809E03DC
    nop
    lw      t9, 0x1D58(t5)             # 00001D58
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_809E03DC
    nop
lbl_809E03CC:
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
lbl_809E03DC:
    lui     $at, %hi(var_809E2D9C)     # $at = 809E0000
    lwc1    $f6, %lo(var_809E2D9C)($at)
    lwc1    $f8, 0x0038(s1)            # 00000038
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809E0554
    lh      v0, 0x0110($sp)
    lbu     t8, 0x0001(s1)             # 00000001
    lui     $at, %hi(var_809E2DA0)     # $at = 809E0000
    andi    t1, t8, 0x0007             # t1 = 00000000
    bnel    t1, $zero, lbl_809E0554
    lh      v0, 0x0110($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2DA0)($at)
    trunc.w.s $f10, $f0
    lw      v0, 0x0044(s1)             # 00000044
    lui     $at, 0x4220                # $at = 42200000
    mfc1    v1, $f10
    or      s0, v0, $zero              # s0 = 00000000
    sll     v1, v1, 16
    bne     v0, $zero, lbl_809E049C
    sra     v1, v1, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    swc1    $f26, 0x00A0($sp)
    jal     func_80026D90
    sh      v1, 0x00A6($sp)
    lh      v1, 0x00A6($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    sll     t2, v1,  2
    subu    t2, t2, v1
    sll     t2, t2,  2
    addu    s0, s7, t2
    lwc1    $f16, 0x08F8(s0)           # 000008F8
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x00C0($sp)
    lwc1    $f4, 0x08FC(s0)            # 000008FC
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x00C4($sp)
    lwc1    $f8, 0x0900(s0)            # 00000900
    add.s   $f10, $f0, $f8
    beq     $zero, $zero, lbl_809E04E4
    swc1    $f10, 0x00C8($sp)
lbl_809E049C:
    mtc1    $at, $f12                  # $f12 = 0.00
    jal     func_80026D90
    swc1    $f22, 0x00A0($sp)
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x00C0($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x00C4($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x00C8($sp)
lbl_809E04E4:
    lui     $at, %hi(var_809E2DA4)     # $at = 809E0000
    lwc1    $f16, %lo(var_809E2DA4)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f18, 0x00A0($sp)
    swc1    $f20, 0x00B4($sp)
    swc1    $f20, 0x00B8($sp)
    mul.s   $f12, $f18, $f4
    swc1    $f20, 0x00BC($sp)
    swc1    $f20, 0x00A8($sp)
    swc1    $f20, 0x00B0($sp)
    jal     func_80026D64
    swc1    $f16, 0x00AC($sp)
    lwc1    $f6, 0x00A0($sp)
    addiu   t3, $sp, 0x00A8            # t3 = FFFFFF80
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    add.s   $f8, $f0, $f6
    sw      t4, 0x0020($sp)
    sw      t3, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f8, 0x0014($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFF98
    addiu   a3, $sp, 0x00B4            # a3 = FFFFFF8C
    sw      $zero, 0x0018($sp)
    jal     func_809D1254
    sw      $zero, 0x001C($sp)
lbl_809E0550:
    lh      v0, 0x0110($sp)
lbl_809E0554:
    addiu   s1, s1, 0x0048             # s1 = 00000048
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809DF90C
    sh      v0, 0x0110($sp)
    lw      $ra, 0x0084($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    ldc1    $f30, 0x0058($sp)
    lw      s0, 0x0060($sp)
    lw      s1, 0x0064($sp)
    lw      s2, 0x0068($sp)
    lw      s3, 0x006C($sp)
    lw      s4, 0x0070($sp)
    lw      s5, 0x0074($sp)
    lw      s6, 0x0078($sp)
    lw      s7, 0x007C($sp)
    lw      s8, 0x0080($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0128           # $sp = 00000000


func_809E05B8:
    lui     $at, %hi(var_809E6C50)     # $at = 809E0000
    sw      a0, %lo(var_809E6C50)($at)
    lui     $at, %hi(var_809E6C54)     # $at = 809E0000
    sw      a1, %lo(var_809E6C54)($at)
    lui     $at, %hi(var_809E6C58)     # $at = 809E0000
    sw      a2, %lo(var_809E6C58)($at)
    jr      $ra
    nop


func_809E05D8:
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_809E6C50)      # v0 = 809E0000
    lui     v1, %hi(var_809E6C54)      # v1 = 809E0000
    lui     a0, %hi(var_809E6C58)      # a0 = 809E0000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, a0, %lo(var_809E6C58)  # a0 = 809E6C58
    addiu   v1, v1, %lo(var_809E6C54)  # v1 = 809E6C54
    addiu   v0, v0, %lo(var_809E6C50)  # v0 = 809E6C50
    lw      t6, 0x0000(v0)             # 809E6C50
    addiu   $at, $zero, 0x763D         # $at = 0000763D
    lw      t9, 0x0000(v1)             # 809E6C54
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    div     $zero, t7, $at
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    subu    t0, t0, t9
    mfhi    t5
    sll     t0, t0,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    addiu   $at, $zero, 0x7663         # $at = 00007663
    div     $zero, t0, $at
    lw      t2, 0x0000(a0)             # 809E6C58
    mfhi    t6
    addiu   $at, $zero, 0x7673         # $at = 00007673
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  1
    div     $zero, t3, $at
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mfhi    t7
    cvt.s.w $f6, $f4
    sw      t5, 0x0000(v0)             # 809E6C50
    sw      t6, 0x0000(v1)             # 809E6C54
    sw      t7, 0x0000(a0)             # 809E6C58
    lui     $at, %hi(var_809E2DA8)     # $at = 809E0000
    cvt.s.w $f18, $f16
    lwc1    $f8, %lo(var_809E2DA8)($at)
    lui     $at, %hi(var_809E2DAC)     # $at = 809E0000
    lwc1    $f4, %lo(var_809E2DAC)($at)
    mtc1    t7, $f16                   # $f16 = 0.00
    div.s   $f10, $f6, $f8
    lui     $at, %hi(var_809E2DB0)     # $at = 809E0000
    div.s   $f6, $f18, $f4
    lwc1    $f4, %lo(var_809E2DB0)($at)
    cvt.s.w $f18, $f16
    add.s   $f8, $f10, $f6
    div.s   $f10, $f18, $f4
    add.s   $f2, $f8, $f10
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_809E06F8
    abs.s   $f0, $f2
    sub.s   $f2, $f2, $f0
lbl_809E06E4:
    c.le.s  $f0, $f2
    nop
    bc1tl   lbl_809E06E4
    sub.s   $f2, $f2, $f0
    abs.s   $f0, $f2
lbl_809E06F8:
    jr      $ra
    nop


func_809E0700:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      $ra, 0x008C($sp)
    sw      s8, 0x0088($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s5, 0x007C($sp)
    sw      s4, 0x0078($sp)
    sw      s3, 0x0074($sp)
    sw      s2, 0x0070($sp)
    sw      s1, 0x006C($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f30, 0x0060($sp)
    sdc1    $f28, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sb      $zero, 0x00AF($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    lui     s5, 0x0001                 # s5 = 00010000
    addu    s5, s5, a1
    sw      t6, 0x00A0($sp)
    lw      a0, 0x0000(a1)             # 00000000
    lw      s5, 0x1E10(s5)             # 00011E10
    or      s4, a0, $zero              # s4 = 00000000
    sw      s5, 0x0094($sp)
    jal     func_8007E2C0
    sw      a1, 0x00B0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s6, 0x0602                 # s6 = 06020000
    mtc1    $at, $f30                  # $f30 = 1.00
    addiu   s6, s6, 0xA528             # s6 = 0601A528
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809E0788:
    lbu     t7, 0x0000(s5)             # 00010000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      s2, 0x00B0($sp)
    bne     t7, $at, lbl_809E0890
    lui     s3, 0x0602                 # s3 = 06020000
    lbu     t8, 0x00AF($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s2, s2, $at
    bne     t8, $zero, lbl_809E07D8
    addiu   s3, s3, 0xA5A8             # s3 = 0601A5A8
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lbu     t2, 0x00AF($sp)
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x00AF($sp)
lbl_809E07D8:
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lbu     t1, 0x0029(s5)             # 00010029
    lbu     t7, 0x0028(s5)             # 00010028
    lbu     t5, 0x002A(s5)             # 0001002A
    lh      t9, 0x002C(s5)             # 0001002C
    sll     t2, t1, 16
    sll     t8, t7, 24
    or      t3, t8, t2                 # t3 = 00000000
    sll     t6, t5,  8
    or      t7, t3, t6                 # t7 = 00000000
    andi    t1, t9, 0x00FF             # t1 = 00000008
    or      t8, t7, t1                 # t8 = 00000008
    sw      t8, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0004(s5)           # 00010004
    lwc1    $f14, 0x0008(s5)           # 00010008
    lw      a2, 0x000C(s5)             # 0001000C
    jal     func_800AA7F4
    sh      v1, 0x00AC($sp)
    jal     func_800ABE54
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f12, 0x0034(s5)           # 00010034
    mfc1    a2, $f30
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t4, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s4)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lh      v1, 0x00AC($sp)
lbl_809E0890:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0096
    bne     $at, $zero, lbl_809E0788
    addiu   s5, s5, 0x0048             # s5 = 00010048
    sb      $zero, 0x00AF($sp)
    lw      s5, 0x0094($sp)
    sh      $zero, 0x00AC($sp)
lbl_809E08B4:
    lbu     t6, 0x0000(s5)             # 00010048
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      s2, 0x00B0($sp)
    bne     t6, $at, lbl_809E0A80
    lui     v0, 0x0602                 # v0 = 06020000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   v0, v0, 0xAB00             # v0 = 0601AB00
    lbu     t2, 0x00AF($sp)
    sll     t9, v0,  4
    addu    s2, s2, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    srl     t7, t9, 28
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    sll     t1, t7,  2
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s8, v0, $at
    bne     t2, $zero, lbl_809E0960
    addu    s7, t1, t8
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0xA998             # v1 = 0601A998
    sll     t3, v1,  4
    srl     t6, t3, 28
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sll     t9, t6,  2
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     t7, 0x8012                 # t7 = 80120000
    addu    t7, t7, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0000(s0)             # 00000000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t7, t1
    addu    t2, t8, $at
    sw      t2, 0x0004(s0)             # 00000004
    lbu     t4, 0x00AF($sp)
    addiu   t5, t4, 0x0001             # t5 = 00000009
    sb      t5, 0x00AF($sp)
lbl_809E0960:
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s4)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lh      t9, 0x002C(s5)             # 00010074
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    lui     t2, 0xDB06                 # t2 = DB060000
    andi    t7, t9, 0x00FF             # t7 = 00000000
    or      t1, t7, $at                # t1 = C3E1EB00
    sw      t1, 0x0004(s0)             # 00000004
    lw      s1, 0x02D0(s4)             # 000002D0
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    sw      t2, 0x0000(s1)             # 00000000
    lbu     v0, 0x0001(s5)             # 00010049
    lw      t4, 0x00B0($sp)
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sll     a2, v0,  2
    lw      a0, 0x0000(t4)             # 00000008
    sll     a3, v0,  4
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    subu    a3, a3, v0
    subu    a2, a2, v0
    andi    a2, a2, 0x007F             # a2 = 00000000
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t7, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t3, 0x0014($sp)
    sw      t5, 0x0010($sp)
    jal     func_8007EB84
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lwc1    $f12, 0x0004(s5)           # 0001004C
    lwc1    $f14, 0x0008(s5)           # 00010050
    lw      a2, 0x000C(s5)             # 00010054
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f12, 0x0034(s5)           # 0001007C
    mfc1    a2, $f30
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t1, s1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t8, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x0000(s7)             # 00000000
    addu    t3, t5, s8
    addu    t6, t3, $at
    sw      t6, 0x0004(s0)             # 00000004
lbl_809E0A80:
    lh      t9, 0x00AC($sp)
    addiu   s5, s5, 0x0048             # s5 = 00010090
    addiu   t7, t9, 0x0001             # t7 = 00000001
    sll     t1, t7, 16
    sra     t8, t1, 16
    slti    $at, t8, 0x0096
    bne     $at, $zero, lbl_809E08B4
    sh      t7, 0x00AC($sp)
    sb      $zero, 0x00AF($sp)
    lw      s5, 0x0094($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
lbl_809E0AB0:
    lbu     t2, 0x0000(s5)             # 00010090
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s7, t2, lbl_809E0C64
    lw      s2, 0x00B0($sp)
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0xA430             # v1 = 0601A430
    lbu     t9, 0x00AF($sp)
    sll     t4, v1,  4
    addu    s2, s2, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    srl     t5, t4, 28
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t3, t5,  2
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s6, v1, $at
    addu    s3, t3, t6
    bne     t9, $zero, lbl_809E0B44
    sh      v0, 0x00AC($sp)
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t4, 0xFFD7                 # t4 = FFD70000
    ori     t4, t4, 0xFF80             # t4 = FFD7FF80
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lbu     t5, 0x00AF($sp)
    addiu   t3, t5, 0x0001             # t3 = 00000001
    sb      t3, 0x00AF($sp)
lbl_809E0B44:
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, 0xC814                # $at = C8140000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lh      t7, 0x002C(s5)             # 000100BC
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    andi    t1, t7, 0x00FF             # t1 = 00000008
    or      t8, t1, $at                # t8 = C8140008
    sw      t8, 0x0004(s0)             # 00000004
    lw      s1, 0x02D0(s4)             # 000002D0
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lbu     v0, 0x0001(s5)             # 00010091
    lw      t5, 0x00B0($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sll     a2, v0,  2
    lw      a0, 0x0000(t5)             # 00000000
    sll     a3, v0,  4
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    subu    a3, a3, v0
    subu    a2, a2, v0
    andi    a2, a2, 0x007F             # a2 = 00000000
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t1, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t3, 0x0010($sp)
    jal     func_8007EB84
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lwc1    $f12, 0x0004(s5)           # 00010094
    lwc1    $f14, 0x0008(s5)           # 00010098
    lw      a2, 0x000C(s5)             # 0001009C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f12, 0x0034(s5)           # 000100C4
    mfc1    a2, $f30
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t2, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t3, 0x0000(s3)             # 0601A5A8
    addu    t6, t3, s6
    addu    t9, t6, $at
    sw      t9, 0x0004(s0)             # 00000004
    lh      v0, 0x00AC($sp)
lbl_809E0C64:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0096
    bne     $at, $zero, lbl_809E0AB0
    addiu   s5, s5, 0x0048             # s5 = 000100D8
    lui     $at, %hi(var_809E2DB4)     # $at = 809E0000
    lwc1    $f24, %lo(var_809E2DB4)($at)
    lui     $at, 0x4270                # $at = 42700000
    lui     s8, 0xDB06                 # s8 = DB060000
    mtc1    $at, $f22                  # $f22 = 60.00
    mtc1    $zero, $f20                # $f20 = 0.00
    sb      $zero, 0x00AF($sp)
    lw      s5, 0x0094($sp)
    ori     s8, s8, 0x0034             # s8 = DB060034
    sh      $zero, 0x00AC($sp)
    addiu   s7, $zero, 0x0004          # s7 = 00000004
lbl_809E0CA8:
    lbu     t7, 0x0000(s5)             # 000100D8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s7, t7, lbl_809E0F40
    lw      s2, 0x00B0($sp)
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0xA790             # v0 = 0601A790
    lbu     t5, 0x00AF($sp)
    sll     t1, v0,  4
    addu    s2, s2, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    srl     t8, t1, 28
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    sll     t2, t8,  2
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s6, v0, $at
    bne     t5, $zero, lbl_809E0CFC
    addu    s3, t2, t4
    addiu   t3, t5, 0x0001             # t3 = DE000001
    sb      t3, 0x00AF($sp)
lbl_809E0CFC:
    lw      s1, 0x02D0(s4)             # 000002D0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    lbu     v0, 0x0001(s5)             # 000100D9
    lw      t9, 0x00B0($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    subu    $at, $zero, v0
    lw      a0, 0x0000(t9)             # 00000000
    sll     t2, $at,  1
    andi    t4, t2, 0x007F             # t4 = 00000000
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    sll     a3, v0,  3
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      t3, 0x0028($sp)
    sw      t5, 0x0024($sp)
    sw      t4, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      t8, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    andi    a2, v0, 0x007F             # a2 = 00000010
    sw      v0, 0x0004(s1)             # 00000004
    lh      t6, 0x002E(s5)             # 00010106
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    bnel    t6, $at, lbl_809E0DEC
    lw      s0, 0x02D0(s4)             # 000002D0
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, 0xFF41                # $at = FF410000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lh      t1, 0x002C(s5)             # 00010104
    lui     t6, 0xFB00                 # t6 = FB000000
    andi    t8, t1, 0x00FF             # t8 = 00000000
    or      t2, t8, $at                # t2 = FF410000
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t9, 0xFFFF                 # t9 = FFFF0000
    ori     t9, t9, 0x0080             # t9 = FFFF0080
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s4)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_809E0E34
    lwc1    $f12, 0x0004(s5)           # 000100DC
    lw      s0, 0x02D0(s4)             # 000002D0
lbl_809E0DEC:
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lh      t8, 0x002C(s5)             # 00010104
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    andi    t2, t8, 0x00FF             # t2 = 00000000
    or      t4, t2, $at                # t4 = C3E1EB00
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t6, $zero, 0xFF80          # t6 = FFFFFF80
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s4)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0004(s5)           # 000100DC
lbl_809E0E34:
    lwc1    $f14, 0x0008(s5)           # 000100E0
    jal     func_800AA7F4
    lw      a2, 0x000C(s5)             # 000100E4
    jal     func_800ABE54
    or      a0, s2, $zero              # a0 = 00000000
    lh      t9, 0x0030(s5)             # 00010108
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    bnel    t9, $zero, lbl_809E0E78
    mfc1    a2, $f20
    mfc1    a2, $f22
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_809E0E88
    lwc1    $f12, 0x003C(s5)           # 00010114
    mfc1    a2, $f20
lbl_809E0E78:
    mov.s   $f12, $f20
    jal     func_800AA7F4
    mov.s   $f14, $f20
    lwc1    $f12, 0x003C(s5)           # 00010114
lbl_809E0E88:
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mov.s   $f12, $f24
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0034(s5)           # 0001010C
    mov.s   $f14, $f30
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t1, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t2, 0xE200                 # t2 = E2000000
    lui     t4, 0x0C18                 # t4 = 0C180000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    ori     t4, t4, 0x49D8             # t4 = 0C1849D8
    ori     t2, t2, 0x001C             # t2 = E200001C
    sw      t2, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t3, 0xD9FE                 # t3 = D9FE0000
    ori     t3, t3, 0xFBFF             # t3 = D9FEFBFF
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s4)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t7, 0x0000(s3)             # 0601A5A8
    addu    t1, t7, s6
    addu    t8, t1, $at
    sw      t8, 0x0004(s0)             # 00000004
lbl_809E0F40:
    lh      t2, 0x00AC($sp)
    addiu   s5, s5, 0x0048             # s5 = 00010120
    addiu   t4, t2, 0x0001             # t4 = E200001D
    sll     t5, t4, 16
    sra     t3, t5, 16
    slti    $at, t3, 0x0096
    bne     $at, $zero, lbl_809E0CA8
    sh      t4, 0x00AC($sp)
    lui     $at, %hi(var_809E2DB8)     # $at = 809E0000
    lwc1    $f28, %lo(var_809E2DB8)($at)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f26                  # $f26 = 30.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    sb      $zero, 0x00AF($sp)
    lw      s5, 0x0094($sp)
    sh      $zero, 0x00AC($sp)
lbl_809E0F84:
    lbu     t6, 0x0000(s5)             # 00010120
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lbu     t9, 0x00AF($sp)
    bnel    t6, $at, lbl_809E1218
    lh      t3, 0x00AC($sp)
    bne     t9, $zero, lbl_809E1090
    or      s3, $zero, $zero           # s3 = 00000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0xAA50             # v1 = 0601AA50
    sll     t8, v1,  4
    srl     t2, t8, 28
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    sll     t4, t2,  2
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t1, 0x0000(s0)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t5, t3
    addu    t9, t6, $at
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t8, 0xC3E1                 # t8 = C3E10000
    ori     t8, t8, 0xEBFF             # t8 = C3E1EBFF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    sw      t1, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0000(s1)             # 00000000
    lw      t5, 0x00B0($sp)
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    lw      a0, 0x0000(t5)             # 80120000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0028($sp)
    sw      t7, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lbu     t8, 0x00AF($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x71AC          # a1 = 000071AC
    addiu   t2, t8, 0x0001             # t2 = 00000001
    sb      t2, 0x00AF($sp)
    jal     func_809E05B8
    addiu   a2, $zero, 0x263A          # a2 = 0000263A
lbl_809E1090:
    lw      s2, 0x0044(s5)             # 00010164
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   s6, $zero, 0x0014          # s6 = 00000014
    bne     s2, $zero, lbl_809E10AC
    addiu   v0, v0, 0xAB00             # v0 = 0601AB00
    beq     $zero, $zero, lbl_809E10AC
    addiu   s6, $zero, 0x0046          # s6 = 00000046
lbl_809E10AC:
    blez    s6, lbl_809E1214
    sll     t4, v0,  4
    srl     t5, t4, 28
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t3, t5,  2
    addu    s7, t3, t6
    and     s8, v0, $at
lbl_809E10D4:
    jal     func_809E05D8
    nop
    mtc1    s3, $f8                    # $f8 = 0.00
    sub.s   $f4, $f0, $f24
    lwc1    $f6, 0x0038(s5)            # 00010158
    cvt.s.w $f10, $f8
    mul.s   $f20, $f4, $f26
    nop
    mul.s   $f22, $f6, $f10
    jal     func_809E05D8
    nop
    sub.s   $f16, $f0, $f24
    lw      v0, 0x00A0($sp)
    mul.s   $f2, $f16, $f26
    beql    s2, $zero, lbl_809E1144
    lwc1    $f18, 0x002C(v0)           # 0000002C
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f18, 0x0024(s2)           # 00000024
    lwc1    $f4, 0x0028(s2)            # 00000028
    add.s   $f6, $f8, $f2
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f18, $f20
    mfc1    a2, $f6
    jal     func_800AA7F4
    add.s   $f14, $f4, $f22
    beq     $zero, $zero, lbl_809E1168
    lwc1    $f12, 0x0034(s5)           # 00010154
    lwc1    $f18, 0x002C(v0)           # 0000002C
lbl_809E1144:
    lwc1    $f10, 0x0024(v0)           # 00000024
    lwc1    $f16, 0x0028(v0)           # 00000028
    add.s   $f4, $f18, $f2
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f10, $f20
    mfc1    a2, $f4
    jal     func_800AA7F4
    add.s   $f14, $f16, $f22
    lwc1    $f12, 0x0034(s5)           # 00010154
lbl_809E1168:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_809E05D8
    nop
    mul.s   $f12, $f0, $f28
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_809E05D8
    nop
    sub.s   $f8, $f0, $f24
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f6, $f8, $f28
    nop
    mul.s   $f12, $f6, $f24
    jal     func_800AA9E0
    nop
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t7, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s4)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t2, 0x0000(s7)             # 00000004
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    addu    t4, t2, s8
    addu    t5, t4, $at
    sw      t5, 0x0004(s0)             # 00000004
    sra     s3, s3, 16
    slt     $at, s3, s6
    bne     $at, $zero, lbl_809E10D4
    nop
lbl_809E1214:
    lh      t3, 0x00AC($sp)
lbl_809E1218:
    addiu   s5, s5, 0x0048             # s5 = 00010168
    addiu   t6, t3, 0x0001             # t6 = 00000001
    sll     t9, t6, 16
    sra     t7, t9, 16
    slti    $at, t7, 0x0096
    bne     $at, $zero, lbl_809E0F84
    sh      t6, 0x00AC($sp)
    lui     s6, 0x0602                 # s6 = 06020000
    lui     s3, 0x0602                 # s3 = 06020000
    lw      s5, 0x0094($sp)
    addiu   s3, s3, 0xAB00             # s3 = 0601AB00
    addiu   s6, s6, 0xA430             # s6 = 0601A430
    sh      $zero, 0x00AC($sp)
lbl_809E124C:
    lbu     t1, 0x0000(s5)             # 00010168
    lw      s2, 0x00B0($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, t1, 0x0006
    bnel    $at, $zero, lbl_809E14D0
    lh      t8, 0x00AC($sp)
    lh      t8, 0x002E(s5)             # 00010196
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     t8, $zero, lbl_809E12FC
    addu    s2, s2, $at
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     $at, 0xC3E1                # $at = C3E10000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s4)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lh      t5, 0x002C(s5)             # 00010194
    ori     $at, $at, 0xEB00           # $at = C3E1EB00
    lui     t7, 0xDE00                 # t7 = DE000000
    andi    t3, t5, 0x00FF             # t3 = 00000000
    or      t6, t3, $at                # t6 = C3E1EB00
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     v1, 0x0602                 # v1 = 06020000
    addiu   v1, v1, 0xA998             # v1 = 0601A998
    sll     t1, v1,  4
    srl     t8, t1, 28
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sll     t2, t8,  2
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t4, t5
    addu    t6, t3, $at
    sw      t6, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809E1360
    lw      s1, 0x02D0(s4)             # 000002D0
lbl_809E12FC:
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, 0xC814                # $at = C8140000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lh      t1, 0x002C(s5)             # 00010194
    lui     t6, 0xFB00                 # t6 = FB000000
    andi    t8, t1, 0x00FF             # t8 = 00000008
    or      t2, t8, $at                # t2 = C8140008
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s4)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s4)             # 000002D0
    lui     t9, 0xFFD7                 # t9 = FFD70000
    ori     t9, t9, 0xFF80             # t9 = FFD7FF80
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s4)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s1, 0x02D0(s4)             # 000002D0
lbl_809E1360:
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s4)             # 000002D0
    sw      t1, 0x0000(s1)             # 00000000
    lbu     v0, 0x0001(s5)             # 00010169
    lw      t8, 0x00B0($sp)
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    subu    a3, $zero, v0
    lw      a0, 0x0000(t8)             # 00000008
    addu    $at, a3, $zero
    sll     a3, a3,  4
    sll     a2, v0,  2
    subu    a3, a3, $at
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    a2, a2, v0
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t6, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_8007EB84
    sw      t2, 0x0010($sp)
    sw      v0, 0x0004(s1)             # 00000004
    lwc1    $f12, 0x0004(s5)           # 0001016C
    lwc1    $f14, 0x0008(s5)           # 00010170
    lw      a2, 0x000C(s5)             # 00010174
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f12, 0x0034(s5)           # 0001019C
    mfc1    a2, $f30
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s4)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s4)             # 000002D0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      t7, 0x0000(s1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lh      t1, 0x002E(s5)             # 00010196
    sll     t4, s6,  4
    srl     t5, t4, 28
    bne     t1, $zero, lbl_809E1490
    lui     t2, 0xDE00                 # t2 = DE000000
    lw      s0, 0x02D0(s4)             # 000002D0
    sll     t4, s3,  4
    srl     t5, t4, 28
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    sll     t3, t5,  2
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(s0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, s3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t6, t9
    addu    t1, t7, $at
    sw      t1, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809E14D0
    lh      t8, 0x00AC($sp)
lbl_809E1490:
    lw      s0, 0x02D0(s4)             # 000002D0
    sll     t3, t5,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s4)             # 000002D0
    addu    t6, t6, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t2, 0x0000(s0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, s6, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t6, t9
    addu    t1, t7, $at
    sw      t1, 0x0004(s0)             # 00000004
    lh      t8, 0x00AC($sp)
lbl_809E14D0:
    addiu   s5, s5, 0x0048             # s5 = 000101B0
    addiu   t2, t8, 0x0001             # t2 = 00000009
    sll     t4, t2, 16
    sra     t5, t4, 16
    slti    $at, t5, 0x0096
    bne     $at, $zero, lbl_809E124C
    sh      t2, 0x00AC($sp)
    lw      $ra, 0x008C($sp)
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
    lw      s5, 0x007C($sp)
    lw      s6, 0x0080($sp)
    lw      s7, 0x0084($sp)
    lw      s8, 0x0088($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000


func_809E1534:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E15A8)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E15A8) # t6 = 809E15A8
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D328
    lui     a2, 0xC040                 # a2 = C0400000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    mfc1    t8, $f4
    sh      t9, 0x016A(a3)             # 0000016A
    swc1    $f6, 0x04B8(a3)            # 000004B8
    sh      t8, 0x0140(a3)             # 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809E15A8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lwc1    $f0, 0x005C(s0)            # 0000005C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f0, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x04A0(s0)             # 000004A0
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f0, $f8
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x04A4(s0)             # 000004A4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    addiu   a0, s0, 0x04A4             # a0 = 000004A4
    lui     a1, 0x43BE                 # a1 = 43BE0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lwc1    $f0, 0x0064(s0)            # 00000064
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f18, $f0, $f16
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x04A8(s0)             # 000004A8
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lh      t6, 0x016A(s0)             # 0000016A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_809E1688
    lwc1    $f4, 0x04B8(s0)            # 000004B8
    jal     func_809E16D4
    lw      a1, 0x0024($sp)
    lwc1    $f4, 0x04B8(s0)            # 000004B8
lbl_809E1688:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a1, 0x4580                 # a1 = 45800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43AF                 # a3 = 43AF0000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809E16D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E1734)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E1734) # t6 = 809E1734
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x5BBC             # a1 = 06035BBC
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0603                 # a0 = 06030000
    jal     func_8008A194
    addiu   a0, a0, 0x5BBC             # a0 = 06035BBC
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    cvt.s.w $f6, $f4
    sh      $zero, 0x0430(a3)          # 00000430
    swc1    $f6, 0x0194(a3)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E1734:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lwc1    $f0, 0x005C(s0)            # 0000005C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    mul.s   $f6, $f0, $f4
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x04A0(s0)             # 000004A0
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    mul.s   $f10, $f0, $f8
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x04A4(s0)             # 000004A4
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lwc1    $f0, 0x0064(s0)            # 00000064
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    mul.s   $f18, $f0, $f16
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x04A8(s0)             # 000004A8
    mfc1    a3, $f18
    jal     func_80064280
    nop
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beql    v0, $zero, lbl_809E1910
    lw      $ra, 0x001C($sp)
    lb      t6, 0x00AF(s0)             # 000000AF
    lui     v1, %hi(var_809E41FE)      # v1 = 809E0000
    addiu   v1, v1, %lo(var_809E41FE)  # v1 = 809E41FE
    slti    $at, t6, 0x000A
    beq     $at, $zero, lbl_809E18B8
    lui     $at, %hi(var_809E2DBC)     # $at = 809E0000
    jal     func_80026D64
    lwc1    $f12, %lo(var_809E2DBC)($at)
    cfc1    t7, $f31
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    ctc1    t8, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f0
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_809E189C
    mfc1    t8, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f0, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809E1890
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809E18A8
    or      t8, t8, $at                # t8 = 80000000
lbl_809E1890:
    beq     $zero, $zero, lbl_809E18A8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f4
lbl_809E189C:
    nop
    bltz    t8, lbl_809E1890
    nop
lbl_809E18A8:
    ctc1    t7, $f31
    lui     $at, %hi(var_809E41FC)     # $at = 809E0000
    beq     $zero, $zero, lbl_809E1900
    sb      t8, %lo(var_809E41FC)($at)
lbl_809E18B8:
    lbu     t9, 0x0000(v1)             # 00000000
    lui     a0, %hi(var_809E41FD)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E41FD)  # a0 = 809E41FD
    addiu   t0, t9, 0x0001             # t0 = 00000001
    andi    t1, t0, 0x00FF             # t1 = 00000001
    slti    $at, t1, 0x0004
    bne     $at, $zero, lbl_809E18EC
    sb      t0, 0x0000(v1)             # 00000000
    lbu     v0, 0x0000(a0)             # 809E41FD
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0000(v1)             # 00000000
    sltiu   v0, v0, 0x0001
    sb      v0, 0x0000(a0)             # 809E41FD
lbl_809E18EC:
    lui     a0, %hi(var_809E41FD)      # a0 = 809E0000
    addiu   a0, a0, %lo(var_809E41FD)  # a0 = 809E41FD
    lbu     t3, 0x0000(a0)             # 809E41FD
    lui     $at, %hi(var_809E41FC)     # $at = 809E0000
    sb      t3, %lo(var_809E41FC)($at)
lbl_809E1900:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809E1920
    lw      a1, 0x0034($sp)
    lw      $ra, 0x001C($sp)
lbl_809E1910:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809E1920:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E19A8)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E19A8) # t6 = 809E19A8
    sw      t6, 0x013C(a3)             # 0000013C
    lui     t7, %hi(var_809E41FC)      # t7 = 809E0000
    lbu     t7, %lo(var_809E41FC)(t7)
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x3750             # a1 = 06023750
    bne     t7, $zero, lbl_809E1974
    addiu   a0, a3, 0x0558             # a0 = 00000558
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x2700             # a1 = 06022700
    addiu   a0, a3, 0x0558             # a0 = 00000558
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    beq     $zero, $zero, lbl_809E1980
    nop
lbl_809E1974:
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
lbl_809E1980:
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x3750             # a0 = 06023750
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t8, 0x0018($sp)
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0194(t8)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E19A8:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    or      s5, a1, $zero              # s5 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    addiu   a0, s6, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0068($sp)
    lw      a0, 0x0068($sp)
    jal     func_8008D6A8
    lui     a1, 0x4100                 # a1 = 41000000
    beq     v0, $zero, lbl_809E1A10
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3923          # a1 = 00003923
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B8          # a1 = 000039B8
lbl_809E1A10:
    lw      a0, 0x0068($sp)
    jal     func_8008D6A8
    lui     a1, 0x4140                 # a1 = 41400000
    beq     v0, $zero, lbl_809E1B98
    lui     t6, %hi(var_809E41FC)      # t6 = 809E0000
    lbu     t6, %lo(var_809E41FC)(t6)
    addiu   s0, $zero, 0x0066          # s0 = 00000066
    addiu   s3, s6, 0x0488             # s3 = 00000488
    beq     t6, $zero, lbl_809E1A44
    nop
    addiu   s0, $zero, 0x0064          # s0 = 00000064
    beq     $zero, $zero, lbl_809E1A44
    addiu   s3, s6, 0x0494             # s3 = 00000494
lbl_809E1A44:
    lwc1    $f4, 0x0000(s3)            # 00000494
    addiu   a0, s5, 0x1C24             # a0 = 00001C24
    or      a1, s6, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0004(s3)            # 00000498
    or      a2, s5, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x0008(s3)            # 0000049C
    sw      s0, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    beq     v0, $zero, lbl_809E1AA0
    or      s4, v0, $zero              # s4 = 00000000
    addiu   $at, $zero, 0x0066         # $at = 00000066
    bne     s0, $at, lbl_809E1A9C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_809E1AA0
    sh      $zero, 0x0556(v0)          # 00000556
lbl_809E1A9C:
    sh      t7, 0x0556(v0)             # 00000556
lbl_809E1AA0:
    lh      t8, 0x0556(v0)             # 00000556
    lui     $at, %hi(var_809E41E0)     # $at = 809E0000
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFE4
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, %lo(var_809E41E0)($at)
    addiu   s2, $sp, 0x0070            # s2 = FFFFFFD8
    lui     t0, %hi(var_809E2A30)      # t0 = 809E0000
    addiu   t0, t0, %lo(var_809E2A30)  # t0 = 809E2A30
    lw      t2, 0x0000(t0)             # 809E2A30
    lui     t3, %hi(var_809E2A3C)      # t3 = 809E0000
    addiu   t3, t3, %lo(var_809E2A3C)  # t3 = 809E2A3C
    sw      t2, 0x0000(s1)             # FFFFFFE4
    lw      t1, 0x0004(t0)             # 809E2A34
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f22                  # $f22 = 2.00
    sw      t1, 0x0004(s1)             # FFFFFFE8
    lw      t2, 0x0008(t0)             # 809E2A38
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f20                  # $f20 = 30.00
    sw      t2, 0x0008(s1)             # FFFFFFEC
    lw      t5, 0x0000(t3)             # 809E2A3C
    or      s0, $zero, $zero           # s0 = 00000000
    sw      t5, 0x0000(s2)             # FFFFFFD8
    lw      t4, 0x0004(t3)             # 809E2A40
    sw      t4, 0x0004(s2)             # FFFFFFDC
    lw      t5, 0x0008(t3)             # 809E2A44
    sw      t5, 0x0008(s2)             # FFFFFFE0
lbl_809E1B0C:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x007C($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0080($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x0084($sp)
    jal     func_80026D64
    mov.s   $f12, $f22
    trunc.w.s $f10, $f0
    addiu   t2, $zero, 0x004B          # t2 = 0000004B
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000494
    mfc1    t7, $f10
    or      a2, s1, $zero              # a2 = FFFFFFE4
    or      a3, s2, $zero              # a3 = FFFFFFD8
    sll     t8, t7, 16
    sra     t9, t8, 16
    addiu   t0, t9, 0x000B             # t0 = 0000000B
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0010($sp)
    lh      t1, 0x0556(s4)             # 00000556
    sw      t2, 0x0018($sp)
    jal     func_809D1160
    sw      t1, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0064
    bne     $at, $zero, lbl_809E1B0C
    nop
lbl_809E1B98:
    lw      a0, 0x0068($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s6)             # 00000194
    beq     v0, $zero, lbl_809E1BB4
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_809E1BF8
    or      a1, s5, $zero              # a1 = 00000000
lbl_809E1BB4:
    addiu   a0, s6, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s6)             # 0000008A
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_809E1BF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E1C44)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E1C44) # t6 = 809E1C44
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D328
    lui     a2, 0xC120                 # a2 = C1200000
    lw      a3, 0x0018($sp)
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sh      t7, 0x016A(a3)             # 0000016A
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E1C44:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lh      t6, 0x016A(s0)             # 0000016A
    lw      a1, 0x0024($sp)
    lui     t7, %hi(var_809E4210)      # t7 = 809E0000
    bne     t6, $zero, lbl_809E1CAC
    nop
    lbu     t7, %lo(var_809E4210)(t7)
    lui     t8, %hi(var_809E41EC)      # t8 = 809E0000
    bne     t7, $zero, lbl_809E1CAC
    nop
    lw      t8, %lo(var_809E41EC)(t8)
    lh      t9, 0x016C(t8)             # 809E016C
    bne     t9, $zero, lbl_809E1CA4
    nop
    jal     func_809E21B4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E1CAC
    nop
lbl_809E1CA4:
    jal     func_809E26D0
    or      a0, s0, $zero              # a0 = 00000000
lbl_809E1CAC:
    lui     $at, %hi(var_809E4210)     # $at = 809E0000
    sb      $zero, %lo(var_809E4210)($at)
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809E1CDC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lui     t6, %hi(func_809E1E08)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E1E08) # t6 = 809E1E08
    sw      t6, 0x0024($sp)
    lw      t7, 0x013C(s0)             # 0000013C
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    beq     t6, t7, lbl_809E1D48
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x24F0             # a1 = 060324F0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    lui     a2, 0xC170                 # a2 = C1700000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sh      t8, 0x0168(s0)             # 00000168
    sh      t9, 0x016A(s0)             # 0000016A
    sh      $zero, 0x0430(s0)          # 00000430
    beq     $zero, $zero, lbl_809E1DEC
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_809E1D48:
    lui     a1, 0x0602                 # a1 = 06020000
    sh      t0, 0x014C(s0)             # 0000014C
    sh      t1, 0x014A(s0)             # 0000014A
    addiu   a1, a1, 0x4374             # a1 = 06024374
    jal     func_8008D21C
    lui     a2, 0xC040                 # a2 = C0400000
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x4374             # a0 = 06024374
    mtc1    v0, $f6                    # $f6 = 0.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x0430(s0)             # 00000430
    cvt.s.w $f8, $f6
    lbu     t3, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0194(s0)            # 00000194
    lbu     t4, 0x0033($sp)
    subu    t5, t3, t4
    sb      t5, 0x00AF(s0)             # 000000AF
    lb      v1, 0x00AF(s0)             # 000000AF
    bgez    v1, lbl_809E1DA8
    nop
    sb      $zero, 0x00AF(s0)          # 000000AF
    lb      v1, 0x00AF(s0)             # 000000AF
lbl_809E1DA8:
    bgtz    v1, lbl_809E1DD8
    lw      a1, 0x002C($sp)
    jal     func_809D75E8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x391B          # a1 = 0000391B
    beq     $zero, $zero, lbl_809E1DF8
    lw      $ra, 0x001C($sp)
lbl_809E1DD8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B7          # a1 = 000039B7
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3914          # a1 = 00003914
lbl_809E1DEC:
    lw      t6, 0x0024($sp)
    sw      t6, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
lbl_809E1DF8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809E1E08:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x006C($sp)
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x05E8(s0)             # 000005E8
    ori     t8, t7, 0x0400             # t8 = 00000400
    sw      t8, 0x0004(s0)             # 00000004
    lui     t9, %hi(var_809E41FC)      # t9 = 809E0000
    lbu     t9, %lo(var_809E41FC)(t9)
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    bne     t9, $zero, lbl_809E1E4C
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    beq     $zero, $zero, lbl_809E1E50
    sh      t0, 0x0066($sp)
lbl_809E1E4C:
    sh      t1, 0x0066($sp)
lbl_809E1E50:
    lh      t2, 0x0140(s0)             # 00000140
    lui     $at, 0x41A0                # $at = 41A00000
    andi    t3, t2, 0x0007             # t3 = 00000000
    bnel    t3, $zero, lbl_809E1F24
    addiu   a0, s0, 0x0558             # a0 = 00000558
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0058($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    add.s   $f10, $f0, $f8
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f18, $f10, $f16
    jal     func_80026D90
    swc1    $f18, 0x005C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_809E2DC0)     # $at = 809E0000
    add.s   $f6, $f0, $f4
    lwc1    $f8, %lo(var_809E2DC0)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    swc1    $f6, 0x0060($sp)
    swc1    $f2, 0x004C($sp)
    swc1    $f2, 0x0050($sp)
    swc1    $f2, 0x0054($sp)
    swc1    $f2, 0x0040($sp)
    swc1    $f2, 0x0048($sp)
    jal     func_80026D64
    swc1    $f8, 0x0044($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    addiu   t4, $sp, 0x0040            # t4 = FFFFFFD8
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    add.s   $f16, $f0, $f10
    sw      t5, 0x0020($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x006C($sp)
    swc1    $f16, 0x0014($sp)
    lh      a1, 0x0066($sp)
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF0
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFE4
    sw      $zero, 0x0018($sp)
    jal     func_809D1254
    sw      $zero, 0x001C($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
lbl_809E1F24:
    jal     func_8008C9C0
    sw      a0, 0x0038($sp)
    lh      t6, 0x0150(s0)             # 00000150
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   a0, s0, 0x01A4             # a0 = 000001A4
    addiu   t7, t6, 0x0014             # t7 = 00000014
    sh      t7, 0x0150(s0)             # 00000150
    lh      t8, 0x0150(s0)             # 00000150
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    slti    $at, t8, 0x0100
    bne     $at, $zero, lbl_809E1F5C
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    sh      t9, 0x0150(s0)             # 00000150
lbl_809E1F5C:
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0xC0A0                 # a1 = C0A00000
    add.s   $f6, $f18, $f4
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064280
    swc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    sub.s   $f16, $f8, $f10
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    swc1    $f16, 0x0028(s0)           # 00000028
    sw      t0, 0x0014($sp)
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f18, 0x0010($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      t1, 0x0430(s0)             # 00000430
    add.s   $f8, $f4, $f6
    bne     t1, $zero, lbl_809E2044
    swc1    $f8, 0x0028(s0)            # 00000028
    lh      t2, 0x016A(s0)             # 0000016A
    lui     a0, 0x0603                 # a0 = 06030000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    bne     t2, $zero, lbl_809E2074
    addiu   a0, a0, 0x2FB4             # a0 = 06032FB4
    jal     func_8008A194
    sh      t3, 0x0430(s0)             # 00000430
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0603                 # a1 = 06030000
    cvt.s.w $f0, $f10
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    mfc1    a3, $f2
    addiu   a1, a1, 0x2FB4             # a1 = 06032FB4
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0194(s0)            # 00000194
    sw      t4, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    lw      a0, 0x0038($sp)
    jal     func_8008D17C
    swc1    $f2, 0x0018($sp)
    beq     $zero, $zero, lbl_809E2078
    lhu     t5, 0x0088(s0)             # 00000088
lbl_809E2044:
    lw      a0, 0x0038($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809E2074
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f16                  # $f16 = 1000.00
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x3C30             # a1 = 06033C30
    swc1    $f16, 0x0194(s0)           # 00000194
    lw      a0, 0x0038($sp)
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_809E2074:
    lhu     t5, 0x0088(s0)             # 00000088
lbl_809E2078:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_809E2098
    lh      t7, 0x0168(s0)             # 00000168
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x0060(s0)           # 00000060
    lh      t7, 0x0168(s0)             # 00000168
lbl_809E2098:
    bnel    t7, $zero, lbl_809E20AC
    lw      $ra, 0x0034($sp)
    jal     func_809E20BC
    lw      a1, 0x006C($sp)
    lw      $ra, 0x0034($sp)
lbl_809E20AC:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_809E20BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x4588             # a1 = 06034588
    addiu   a0, a3, 0x0558             # a0 = 00000558
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lui     a0, 0x0603                 # a0 = 06030000
    jal     func_8008A194
    addiu   a0, a0, 0x4588             # a0 = 06034588
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_809E2120)     # t6 = 809E0000
    cvt.s.w $f6, $f4
    addiu   t6, t6, %lo(func_809E2120) # t6 = 809E2120
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    sw      t6, 0x013C(a3)             # 0000013C
    sh      t7, 0x0168(a3)             # 00000168
    swc1    $f6, 0x0194(a3)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E2120:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x04A4(s0)             # 000004A4
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(s0)             # 00000194
    beq     v0, $zero, lbl_809E2188
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    swc1    $f4, 0x0194(s0)            # 00000194
    lw      a0, 0x0024($sp)
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_809E2188:
    lh      t6, 0x0168(s0)             # 00000168
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_809E21A4
    lw      $ra, 0x001C($sp)
    jal     func_809E21B4
    lw      a1, 0x002C($sp)
    lw      $ra, 0x001C($sp)
lbl_809E21A4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809E21B4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_809E2DC4)     # $at = 809E0000
    lwc1    $f26, %lo(var_809E2DC4)($at)
    lui     $at, %hi(var_809E2DC8)     # $at = 809E0000
    lui     s3, %hi(var_809E285C)      # s3 = 809E0000
    lw      s1, 0x1C44(a1)             # 00001C44
    addiu   s3, s3, %lo(var_809E285C)  # s3 = 809E285C
    lwc1    $f24, %lo(var_809E2DC8)($at)
    addiu   s2, s0, 0x04A0             # s2 = 000004A0
    addiu   s4, $zero, 0x000C          # s4 = 0000000C
lbl_809E2208:
    jal     func_80026D64
    mov.s   $f12, $f24
    trunc.w.s $f4, $f0
    lh      t6, 0x0144(s0)             # 00000144
    mfc1    t8, $f4
    nop
    sll     t9, t8, 16
    sra     t0, t9, 16
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sll     t2, t1, 16
    sra     t3, t2, 16
    addu    t4, t6, t3
    sh      t4, 0x0144(s0)             # 00000144
    lh      t5, 0x0144(s0)             # 00000144
    bgez    t5, lbl_809E2254
    andi    t7, t5, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_809E2254
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFC
lbl_809E2254:
    sh      t7, 0x0144(s0)             # 00000144
    lh      t8, 0x0144(s0)             # 00000144
    multu   t8, s4
    mflo    t9
    addu    t0, s3, t9
    lw      t2, 0x0000(t0)             # 00000000
    sw      t2, 0x0000(s2)             # 000004A0
    lw      t1, 0x0004(t0)             # 00000004
    sw      t1, 0x0004(s2)             # 000004A4
    lw      t2, 0x0008(t0)             # 00000008
    sw      t2, 0x0008(s2)             # 000004A8
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f2, 0x04A0(s0)            # 000004A0
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f16, 0x04A8(s0)           # 000004A8
    sub.s   $f20, $f2, $f6
    sub.s   $f22, $f16, $f8
    mul.s   $f10, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    add.s   $f6, $f10, $f4
    c.lt.s  $f26, $f6
    nop
    bc1f    lbl_809E2208
    nop
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lui     $at, 0x43F0                # $at = 43F00000
    sub.s   $f20, $f2, $f8
    mtc1    $at, $f0                   # $f0 = 480.00
    mtc1    $zero, $f18                # $f18 = 0.00
    sub.s   $f22, $f16, $f4
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     t6, %hi(func_809E238C)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E238C) # t6 = 809E238C
    sw      t6, 0x013C(s0)             # 0000013C
    mov.s   $f14, $f22
    mov.s   $f12, $f20
    swc1    $f0, 0x04A4(s0)            # 000004A4
    swc1    $f18, 0x04B8(s0)           # 000004B8
    swc1    $f18, 0x0068(s0)           # 00000068
    jal     func_800CD76C
    sub.s   $f24, $f0, $f10
    lui     $at, %hi(var_809E2DCC)     # $at = 809E0000
    lwc1    $f26, %lo(var_809E2DCC)($at)
    mov.s   $f12, $f24
    mul.s   $f6, $f0, $f26
    nop
    mul.s   $f10, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    trunc.w.s $f8, $f6
    add.s   $f0, $f10, $f4
    mfc1    t4, $f8
    sqrt.s  $f14, $f0
    jal     func_800CD76C
    sh      t4, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f26
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lui     a2, 0xC120                 # a2 = C1200000
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    jal     func_8008D328
    sh      t7, 0x0030(s0)             # 00000030
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809E238C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x311F          # a1 = 0000311F
    jal     func_8008C9C0
    addiu   a0, s0, 0x0558             # a0 = 00000558
    lwc1    $f8, 0x04A4(s0)            # 000004A4
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x04A0(s0)            # 000004A0
    lwc1    $f6, 0x0024(s0)            # 00000024
    sub.s   $f18, $f8, $f10
    sub.s   $f12, $f4, $f6
    swc1    $f18, 0x0038($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f4, 0x04A8(s0)            # 000004A8
    swc1    $f12, 0x003C($sp)
    sub.s   $f14, $f4, $f6
    jal     func_800CD76C
    swc1    $f14, 0x0034($sp)
    lui     $at, %hi(var_809E2DD0)     # $at = 809E0000
    lwc1    $f8, %lo(var_809E2DD0)($at)
    lwc1    $f2, 0x003C($sp)
    lwc1    $f16, 0x0034($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f12, 0x0038($sp)
    mul.s   $f8, $f2, $f2
    trunc.w.s $f18, $f10
    mul.s   $f10, $f16, $f16
    mfc1    t7, $f18
    nop
    sll     t8, t7, 16
    add.s   $f0, $f8, $f10
    sra     t9, t8, 16
    mtc1    t9, $f4                    # $f4 = 0.00
    sqrt.s  $f14, $f0
    cvt.s.w $f6, $f4
    swc1    $f14, 0x0028($sp)
    jal     func_800CD76C
    swc1    $f6, 0x002C($sp)
    lui     $at, %hi(var_809E2DD4)     # $at = 809E0000
    lwc1    $f18, %lo(var_809E2DD4)($at)
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x04B8(s0)            # 000004B8
    mfc1    t1, $f6
    trunc.w.s $f6, $f4
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f8                    # $f8 = 0.00
    mfc1    a3, $f6
    cvt.s.w $f10, $f8
    sll     a3, a3, 16
    sra     a3, a3, 16
    trunc.w.s $f18, $f10
    mfc1    a1, $f18
    nop
    sll     a1, a1, 16
    jal     func_80064624
    sra     a1, a1, 16
    lwc1    $f8, 0x002C($sp)
    lwc1    $f18, 0x04B8(s0)           # 000004B8
    addiu   a0, s0, 0x0032             # a0 = 00000032
    trunc.w.s $f10, $f8
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    trunc.w.s $f4, $f18
    mfc1    a1, $f10
    mfc1    a3, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_80064624
    sw      a1, 0x0020($sp)
    lwc1    $f6, 0x04B8(s0)            # 000004B8
    lw      a1, 0x0020($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    trunc.w.s $f8, $f6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mfc1    a3, $f8
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    addiu   a0, s0, 0x04B8             # a0 = 000004B8
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80021248
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x005C(s0)            # 0000005C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f18, $f0, $f10
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x04A0(s0)             # 000004A0
    mfc1    a3, $f18
    jal     func_80064280
    nop
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f0, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x04A4(s0)             # 000004A4
    mfc1    a3, $f6
    jal     func_80064280
    nop
    addiu   a0, s0, 0x04A4             # a0 = 000004A4
    lui     a1, 0x43BE                 # a1 = 43BE0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lwc1    $f0, 0x0064(s0)            # 00000064
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    abs.s   $f0, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f0, $f8
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x04A8(s0)             # 000004A8
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f18, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_809E25F0
    lw      $ra, 0x001C($sp)
    jal     func_809E1534
    lw      a1, 0x0044($sp)
    lw      $ra, 0x001C($sp)
lbl_809E25F0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_809E2600:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E2658)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E2658) # t6 = 809E2658
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x17F8             # a1 = 060317F8
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0168(a3)             # 00000168
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809E2658:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    lh      v0, 0x0168(a2)             # 00000168
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_809E26B8
    nop
    lh      t7, 0x00B6(a2)             # 000000B6
    andi    t9, v0, 0x0003             # t9 = 00000000
    sb      t6, 0x05B0(a2)             # 000005B0
    addiu   t8, t7, 0xD000             # t8 = FFFFD000
    bne     t9, $zero, lbl_809E26C0
    sh      t8, 0x00B6(a2)             # 000000B6
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3921          # a1 = 00003921
    beq     $zero, $zero, lbl_809E26C4
    lw      $ra, 0x0014($sp)
lbl_809E26B8:
    jal     func_809E21B4
    lw      a1, 0x001C($sp)
lbl_809E26C0:
    lw      $ra, 0x0014($sp)
lbl_809E26C4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809E26D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_809E2734)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E2734) # t6 = 809E2734
    sw      t6, 0x013C(a3)             # 0000013C
    lui     a1, 0x0604                 # a1 = 06040000
    addiu   a1, a1, 0x8ED0             # a1 = 06038ED0
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0558             # a0 = 00000558
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0604                 # a0 = 06040000
    jal     func_8008A194
    addiu   a0, a0, 0x8ED0             # a0 = 06038ED0
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4
    swc1    $f8, 0x0068(a3)            # 00000068
    swc1    $f6, 0x0194(a3)            # 00000194
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E2734:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   a0, a0, 0x0558             # a0 = 00000558
    jal     func_8008C9C0
    sw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008D6A8
    lui     a1, 0x4120                 # a1 = 41200000
    beq     v0, $zero, lbl_809E2770
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x39B9          # a1 = 000039B9
lbl_809E2770:
    lw      t6, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008D6A8
    lw      a1, 0x0194(t6)             # 00000194
    beq     v0, $zero, lbl_809E2790
    lw      a0, 0x0020($sp)
    jal     func_809E21B4
    lw      a1, 0x0024($sp)
lbl_809E2790:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_809E27A0: .word 0x00DC0900, 0x00000035, 0x00D30000, 0x000006A4
.word func_809D1B58
.word func_809D2374
.word func_809D8BB8
.word func_809DB56C
var_809E27C0: .word 0x00000000, 0x00000000, 0x447A0000
var_809E27CC: .word 0x00000000, 0x00000000, 0x00000000
var_809E27D8: .word \
0x0A390909, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00300000, 0x00100000, 0x00000000, 0x01010100, \
0x00190023, 0xFFEF0000, 0x00000000
var_809E2804: .word \
0x03110909, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00200000, 0xFFCDFFFE, 0x00000000, 0x01010100, \
0x002D0078, 0xFFE20000, 0x00000000
var_809E2830: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00200000, 0xFFCDFFFE, 0x00000000, 0x01050100, \
0x002D0078, 0xFFE20000, 0x00000000
var_809E285C: .word \
0x44110000, 0x43BE0000, 0x00000000, 0x00000000, \
0x43BE0000, 0x44110000, 0xC4110000, 0x43BE0000, \
0x00000000, 0x00000000, 0x43BE0000, 0xC4110000
var_809E288C: .word 0x00000000
var_809E2890: .word 0x801F0005, 0xB86C0000, 0x304C0000
var_809E289C: .word \
0x44160000, 0x43C80000, 0x00000000, 0x00000000, \
0x43C80000, 0x44160000, 0xC4160000, 0x43C80000, \
0x00000000, 0x00000000, 0x43C80000, 0xC4160000
var_809E28CC: .word 0x00000000, 0x00000000, 0x00000000
var_809E28D8: .word 0x00000000, 0x00000000, 0x00000000
var_809E28E4: .word 0x00000000, 0x00000000, 0x00000000
var_809E28F0: .word 0x00000001, 0x00020002, 0x00010000
var_809E28FC: .word \
0x00000001, 0x00020002, 0x00020002, 0x00020002, \
0x00010000
var_809E2910: .word 0x00000000, 0x00000000, 0x00000000
var_809E291C: .word 0x00000000, 0x00000000, 0x00000000
var_809E2928: .word 0x00000000, 0x00000000, 0x00000000
var_809E2934: .word 0x00000000, 0x00000000, 0x00000000
var_809E2940: .word 0x00000000, 0x44FA0000, 0xC4FA0000
var_809E294C: .word 0x00000000, 0x00000000, 0xC61C4000
var_809E2958: .word 0x00000000, 0x00000000, 0xC5FA0000
var_809E2964: .word 0x00000000, 0x00000000, 0xC60CA000
var_809E2970: .word 0x00000000, 0x00000000, 0xC62BE000
var_809E297C: .word 0x00000000, 0x00000000, 0xC63B8000
var_809E2988: .word 0x0600A438, 0x0600B238, 0x0600B638
var_809E2994: .word 0x00000000, 0x43480000, 0x44FA0000
var_809E29A0: .word 0x0602A9B0, 0x0602A070, 0x0602A470
var_809E29AC: .word 0x00000000, 0x00000000, 0x00000000
var_809E29B8: .word 0x00000000, 0x44FA0000, 0xC4FA0000
var_809E29C4: .word 0x464B2000, 0x00000000, 0x00000000
var_809E29D0: .word 0x464B2000, 0x00000000, 0x00000000
var_809E29DC: .word 0x00000000, 0x43480000, 0x44FA0000
var_809E29E8: .word 0x00000000, 0x00000000, 0x00000000
var_809E29F4: .word 0x00000000, 0x00000000, 0x00000000
var_809E2A00: .word 0x00000000, 0x00000000, 0x00000000
var_809E2A0C: .word 0x00000000, 0x00000000, 0x00000000
var_809E2A18: .word \
0xFF8000FF, 0x0000FFFF, 0x00FF0000, 0x646464FF, \
0xFFFF9696, 0x96FFFFFF
var_809E2A30: .word 0x00000000, 0x00000000, 0x00000000
var_809E2A3C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_809E2A50: .word 0x3B23D70A
var_809E2A54: .word 0x40490FDB
var_809E2A58: .word 0x40C90FDB
var_809E2A5C: .word 0x3FC90FDB
var_809E2A60: .word 0x3F490FDB
var_809E2A64: .word 0x3FC90FDB
var_809E2A68: .word 0x3F490FDB
var_809E2A6C: .word 0x3FFEB852
var_809E2A70: .word 0x407F5C29
var_809E2A74: .word 0x4622F983
var_809E2A78: .word 0x4622F983
var_809E2A7C: .word 0x3C23D70A
var_809E2A80: .word 0x3E4CCCCD
var_809E2A84: .word 0x3BA3D70A
var_809E2A88: .word 0x3BA3D70A
var_809E2A8C: .word 0x40490FDB
var_809E2A90: .word 0x3F8CCCCD
var_809E2A94: .word 0x448E8000
var_809E2A98: .word 0x3F490FDB
var_809E2A9C: .word 0xBE99999A
var_809E2AA0: .word 0x3B23D70A
var_809E2AA4: .word 0x3B23D70A
var_809E2AA8: .word 0x461C4000
var_809E2AAC: .word 0x461C4000
var_809E2AB0: .word 0x40490FDB
var_809E2AB4: .word 0x3DCCCCCD
var_809E2AB8: .word 0x40490FDB
var_809E2ABC: .word 0x40490FDB
var_809E2AC0: .word 0x40490FDB
var_809E2AC4: .word 0x453B8000
var_809E2AC8: .word 0x453B8000
var_809E2ACC: .word 0x3FFEB852
var_809E2AD0: .word 0x3BA71DE7
var_809E2AD4: .word var_809D5B4C
.word var_809D5CC8
.word var_809D5E64
.word var_809D5F94
.word var_809D6128
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word var_809D660C
.word var_809D6734
.word var_809D68C4
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word lbl_809D71C8
.word var_809D6D30
var_809E2B28: .word 0x46AFC800
var_809E2B2C: .word 0x44048000
var_809E2B30: .word 0x3D4CCCCD
var_809E2B34: .word 0x3D4CCCCD
var_809E2B38: .word 0x3E4CCCCD
var_809E2B3C: .word 0x44048000
var_809E2B40: .word 0x43848000
var_809E2B44: .word 0x3DCCCCCD
var_809E2B48: .word 0x3D4CCCCD
var_809E2B4C: .word 0x461C4000
var_809E2B50: .word 0x3CCCCCCC
var_809E2B54: .word 0x3E4CCCCD
var_809E2B58: .word 0xC4048000
var_809E2B5C: .word 0x43848000
var_809E2B60: .word 0x3DCCCCCD
var_809E2B64: .word 0x3D4CCCCD
var_809E2B68: .word 0x461C4000
var_809E2B6C: .word 0x3CCCCCCC
var_809E2B70: .word 0xBFC90FDB
var_809E2B74: .word 0x40490FDB
var_809E2B78: .word 0x43CE8000
var_809E2B7C: .word 0x43838000
var_809E2B80: .word 0x4622F983
var_809E2B84: .word 0x4622F983
var_809E2B88: .word 0x3D4CCCCD
var_809E2B8C: .word 0x3ECCCCCD
var_809E2B90: .word 0x3D4CCCCD
var_809E2B94: .word 0x3ECCCCCD
var_809E2B98: .word 0x43838000
var_809E2B9C: .word 0x43838000
var_809E2BA0: .word 0x3FFEB852
var_809E2BA4: .word var_809D82A0
.word var_809D8338
.word var_809D85AC
.word var_809D87E0
.word var_809D8B74
var_809E2BB8: .word 0x43838000
var_809E2BBC: .word 0x3E99999A
var_809E2BC0: .word 0x3ECCCCCD
var_809E2BC4: .word 0x3ECCCCCD
var_809E2BC8: .word 0x3E99999A
var_809E2BCC: .word 0x3ECCCCCD
var_809E2BD0: .word lbl_809D9AF0
.word var_809D9948
.word var_809D996C
.word var_809D99A4
.word var_809D9A0C
.word var_809D9A4C
.word var_809D9ABC
var_809E2BEC: .word 0x3CF5C28F
var_809E2BF0: .word 0x3D4CCCCD
var_809E2BF4: .word 0x3F733333
var_809E2BF8: .word 0x3F333333
var_809E2BFC: .word 0x459C4000
var_809E2C00: .word 0x40490FDB
var_809E2C04: .word 0x3ECCCCCD
var_809E2C08: .word 0x3C23D70A
var_809E2C0C: .word 0x469C4000
var_809E2C10: .word 0x3C23D70A
var_809E2C14: .word 0x469C4000
var_809E2C18: .word 0x458FC000
var_809E2C1C: .word var_809DBF70
.word var_809DBEE0
.word var_809DBDBC
.word var_809DBE4C
.word var_809DBFC8
.word var_809DBFE8
.word var_809DBC60
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word var_809DBF70
.word var_809DBEE0
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word lbl_809DC004
.word var_809DBDBC
.word var_809DBE4C
var_809E2C8C: .word var_809DC0F4
.word var_809DC0F4
.word var_809DC0F4
.word var_809DC0F4
.word lbl_809DC174
.word lbl_809DC174
.word var_809DC0C4
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word var_809DC0F4
.word var_809DC0F4
.word lbl_809DC174
.word var_809DC08C
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word lbl_809DC174
.word var_809DC0A8
.word var_809DC0F4
.word var_809DC0F4
var_809E2CFC: .word 0x3FC90FDB
var_809E2D00: .word 0x3FA66666
var_809E2D04: .word 0x3FC90FDB
var_809E2D08: .word 0x3FC90FDB
var_809E2D0C: .word 0x3FC90FDB
var_809E2D10: .word 0x443B8000
var_809E2D14: .word 0x3EB33333
var_809E2D18: .word 0x3E99999A
var_809E2D1C: .word 0x4622F983
var_809E2D20: .word 0x4622F983
var_809E2D24: .word 0x46FF4C00
var_809E2D28: .word 0x40490FDB
var_809E2D2C: .word 0x40490FDB
var_809E2D30: .word 0x41EF3333
var_809E2D34: .word 0x3ECCCCCD
var_809E2D38: .word 0x458E3000
var_809E2D3C: .word 0x3CF5C28F
var_809E2D40: .word 0x4622F983
var_809E2D44: .word 0x4622F983
var_809E2D48: .word 0x40490FDB
var_809E2D4C: .word 0x46FF4C00
var_809E2D50: .word 0x46FF4C00
var_809E2D54: .word 0x41EF3333
var_809E2D58: .word 0x3ECCCCCD
var_809E2D5C: .word 0x3E051EB8
var_809E2D60: .word 0x411E6666
var_809E2D64: .word 0x40490FDB
var_809E2D68: .word 0x3E051EB8
var_809E2D6C: .word 0x3E4CCCCD
var_809E2D70: .word 0x3DB851EC
var_809E2D74: .word 0x3DB851EC
var_809E2D78: .word 0x3DB851EC
var_809E2D7C: .word 0x3DB851EC
var_809E2D80: .word 0x40490FDB
var_809E2D84: .word 0xBE4CCCCD
var_809E2D88: .word 0x40490FDB
var_809E2D8C: .word 0xBE4CCCCD
var_809E2D90: .word 0x3A03126F
var_809E2D94: .word 0x3F4CCCCD
var_809E2D98: .word 0x3F4CCCCD
var_809E2D9C: .word 0x3ECCCCCD
var_809E2DA0: .word 0x418F3333
var_809E2DA4: .word 0x3DCCCCCD
var_809E2DA8: .word 0x46EC7A00
var_809E2DAC: .word 0x46ECC600
var_809E2DB0: .word 0x46ECE600
var_809E2DB4: .word 0x3FC90FDB
var_809E2DB8: .word 0x40490FDB
var_809E2DBC: .word 0x3FFEB852
var_809E2DC0: .word 0x3DCCCCCD
var_809E2DC4: .word 0x47AFC800
var_809E2DC8: .word 0x403F5C29
var_809E2DCC: .word 0x4622F983
var_809E2DD0: .word 0x4622F983
var_809E2DD4: .word 0x4622F983, 0x00000000, 0x00000000

.bss

var_809E41E0: .space 0x01
var_809E41E1: .space 0x03
var_809E41E4: .space 0x04
var_809E41E8: .space 0x04
var_809E41EC: .space 0x04
var_809E41F0: .space 0x01
var_809E41F1: .space 0x03
var_809E41F4: .space 0x04
var_809E41F8: .space 0x04
var_809E41FC: .space 0x01
var_809E41FD: .space 0x01
var_809E41FE: .space 0x01
var_809E41FF: .space 0x01
var_809E4200: .space 0x0C
var_809E420C: .space 0x02
var_809E420E: .space 0x01
var_809E420F: .space 0x01
var_809E4210: .space 0x02
var_809E4212: .space 0x02
var_809E4214: .space 0x02
var_809E4216: .space 0x02
var_809E4218: .space 0x02
var_809E421A: .space 0x02
var_809E421C: .space 0x02
var_809E421E: .space 0x02
var_809E4220: .space 0x2A30
var_809E6C50: .space 0x04
var_809E6C54: .space 0x04
var_809E6C58: .space 0x08
