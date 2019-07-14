# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 800ACB00 / VROM: B22A60
#

.section .text
func_800ACB00:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
lbl_800ACB0C:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    slti    $at, v1, 0x0004
    addiu   a1, a1, 0x0001             # a1 = 00000001
    bne     $at, $zero, lbl_800ACB0C
    sb      $zero, -0x0001(a1)         # 00000000
    lbu     v1, 0x0105(a0)             # 00000105
    lui     t6, 0x8010                 # t6 = 80100000
    lui     $at, 0x8010                # $at = 80100000
    bne     v1, $zero, lbl_800ACB70
    nop
    lbu     t6, -0x11C0(t6)            # 800FEE40
    lui     $at, 0x8012                # $at = 80120000
    beq     t6, $zero, lbl_800ACB64
    nop
    sb      $zero, -0x2852($at)        # 8011D7AE
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x2851($at)        # 8011D7AF
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x2850($at)        # 8011D7B0
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x284F($at)        # 8011D7B1
    lbu     v1, 0x0105(a0)             # 00000105
lbl_800ACB64:
    lui     $at, 0x8010                # $at = 80100000
    jr      $ra
    sb      v1, -0x11C0($at)           # 800FEE40
lbl_800ACB70:
    sb      v1, -0x11C0($at)           # 800FEE40
    lbu     a1, 0x0104(a0)             # 00000104
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     v1, 0x8012                 # v1 = 80120000
    bne     a1, $at, lbl_800ACC20
    addiu   v1, v1, 0xD504             # v1 = 8011D504
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xD500             # a1 = 8011D500
lbl_800ACB90:
    addiu   a1, a1, 0x0001             # a1 = 8011D501
    sltu    $at, a1, v1
    bne     $at, $zero, lbl_800ACB90
    sb      $zero, 0x02AD(a1)          # 8011D7AE
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    addiu   t0, $zero, 0x0040          # t0 = 00000040
lbl_800ACBAC:
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sb      $zero, 0x00C5(a1)          # 000000C5
    sb      $zero, 0x0085(a1)          # 00000085
    sb      $zero, 0x0045(a1)          # 00000045
    sb      $zero, 0x0005(a1)          # 00000005
    sb      $zero, 0x00C6(a1)          # 000000C6
    sb      $zero, 0x0086(a1)          # 00000086
    sb      $zero, 0x0046(a1)          # 00000046
    sb      $zero, 0x0006(a1)          # 00000006
    sb      $zero, 0x00C7(a1)          # 000000C7
    sb      $zero, 0x0087(a1)          # 00000087
    sb      $zero, 0x0047(a1)          # 00000047
    sb      $zero, 0x0007(a1)          # 00000007
    addiu   a1, a1, 0x0004             # a1 = 00000004
    sb      $zero, 0x00C0(a1)          # 000000C4
    sb      $zero, 0x0080(a1)          # 00000084
    sb      $zero, 0x0040(a1)          # 00000044
    bne     v1, t0, lbl_800ACBAC
    sb      $zero, 0x0000(a1)          # 00000004
    andi    v1, $zero, 0x00FF          # v1 = 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      v1, 0x010C(a0)             # 0000010C
    sb      v1, 0x010B(a0)             # 0000010B
    sb      v1, 0x010A(a0)             # 0000010A
    sh      v1, 0x0108(a0)             # 00000108
    sh      v1, 0x0106(a0)             # 00000106
    sb      $zero, 0x010D(a0)          # 0000010D
    sb      t7, 0x0104(a0)             # 00000104
    andi    a1, t7, 0x00FF             # a1 = 00000001
lbl_800ACC20:
    beq     a1, $zero, lbl_800ACD98
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
lbl_800ACC34:
    lbu     a2, 0x0004(a1)             # 00000004
    beql    a2, $zero, lbl_800ACCC0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lbu     a3, 0x0044(a1)             # 00000044
    addu    t4, a0, v0
    blez    a3, lbl_800ACC58
    addiu   t8, a3, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_800ACC74
    sb      t8, 0x0044(a1)             # 00000044
lbl_800ACC58:
    lbu     t9, 0x0084(a1)             # 00000084
    subu    a3, a2, t9
    blezl   a3, lbl_800ACC74
    sb      $zero, 0x0004(a1)          # 00000004
    beq     $zero, $zero, lbl_800ACC74
    sb      a3, 0x0004(a1)             # 00000004
    sb      $zero, 0x0004(a1)          # 00000004
lbl_800ACC74:
    lbu     a2, 0x0004(a1)             # 00000004
    lbu     t2, 0x00C4(a1)             # 000000C4
    addu    a3, a2, t2
    bne     v0, t1, lbl_800ACC9C
    sb      a3, 0x00C4(a1)             # 000000C4
    slti    t3, a3, 0x0100
    xori    t3, t3, 0x0001             # t3 = 00000001
    or      v0, v1, $zero              # v0 = 00000001
    beq     $zero, $zero, lbl_800ACCBC
    sb      t3, 0x0000(a0)             # 00000000
lbl_800ACC9C:
    lbu     t5, 0x0004(t4)             # 00000004
    slti    t6, a3, 0x0100
    xori    t6, t6, 0x0001             # t6 = 80100001
    slt     $at, t5, a2
    beql    $at, $zero, lbl_800ACCC0
    addiu   v1, v1, 0x0001             # v1 = 00000002
    or      v0, v1, $zero              # v0 = 00000002
    sb      t6, 0x0000(a0)             # 00000000
lbl_800ACCBC:
    addiu   v1, v1, 0x0001             # v1 = 00000003
lbl_800ACCC0:
    bne     v1, t0, lbl_800ACC34
    addiu   a1, a1, 0x0001             # a1 = 00000001
    lbu     v1, 0x010A(a0)             # 0000010A
    beq     v1, $zero, lbl_800ACD20
    nop
    lbu     a1, 0x010B(a0)             # 0000010B
    blez    a1, lbl_800ACCE8
    addiu   t7, a1, 0xFFFF             # t7 = 00000000
    beq     $zero, $zero, lbl_800ACD04
    sb      t7, 0x010B(a0)             # 0000010B
lbl_800ACCE8:
    lbu     t8, 0x010C(a0)             # 0000010C
    subu    a3, v1, t8
    blezl   a3, lbl_800ACD04
    sb      $zero, 0x010A(a0)          # 0000010A
    beq     $zero, $zero, lbl_800ACD04
    sb      a3, 0x010A(a0)             # 0000010A
    sb      $zero, 0x010A(a0)          # 0000010A
lbl_800ACD04:
    lbu     v1, 0x010A(a0)             # 0000010A
    lbu     t9, 0x010D(a0)             # 0000010D
    addu    a3, t9, v1
    slti    t2, a3, 0x0100
    xori    t2, t2, 0x0001             # t2 = 00000001
    sb      a3, 0x010D(a0)             # 0000010D
    sb      t2, 0x0000(a0)             # 00000000
lbl_800ACD20:
    beq     v1, $zero, lbl_800ACD30
    nop
    beq     $zero, $zero, lbl_800ACD44
    or      a3, v1, $zero              # a3 = 00000003
lbl_800ACD30:
    bne     v0, t1, lbl_800ACD40
    addu    t3, a0, v0
    beq     $zero, $zero, lbl_800ACD44
    or      a3, $zero, $zero           # a3 = 00000000
lbl_800ACD40:
    lbu     a3, 0x0004(t3)             # 00000005
lbl_800ACD44:
    bnel    a3, $zero, lbl_800ACD78
    lhu     t8, 0x0106(a0)             # 00000106
    lhu     t4, 0x0108(a0)             # 00000108
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t5, t4, 0x0001             # t5 = 00000001
    andi    t6, t5, 0xFFFF             # t6 = 00000001
    slti    $at, t6, 0x0006
    bne     $at, $zero, lbl_800ACE08
    sh      t5, 0x0108(a0)             # 00000108
    sh      $zero, 0x0106(a0)          # 00000106
    jr      $ra
    sh      t7, 0x0108(a0)             # 00000108
lbl_800ACD74:
    lhu     t8, 0x0106(a0)             # 00000106
lbl_800ACD78:
    sh      $zero, 0x0108(a0)          # 00000108
    addiu   t9, t8, 0x0001             # t9 = 00000000
    andi    t2, t9, 0xFFFF             # t2 = 00000000
    slti    $at, t2, 0x1C21
    bne     $at, $zero, lbl_800ACE08
    sh      t9, 0x0106(a0)             # 00000106
    jr      $ra
    sb      $zero, 0x0104(a0)          # 00000104
lbl_800ACD98:
    or      v1, $zero, $zero           # v1 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
lbl_800ACDA0:
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sb      $zero, 0x00C5(a1)          # 000000C5
    sb      $zero, 0x0085(a1)          # 00000085
    sb      $zero, 0x0045(a1)          # 00000045
    sb      $zero, 0x0005(a1)          # 00000005
    sb      $zero, 0x00C6(a1)          # 000000C6
    sb      $zero, 0x0086(a1)          # 00000086
    sb      $zero, 0x0046(a1)          # 00000046
    sb      $zero, 0x0006(a1)          # 00000006
    sb      $zero, 0x00C7(a1)          # 000000C7
    sb      $zero, 0x0087(a1)          # 00000087
    sb      $zero, 0x0047(a1)          # 00000047
    sb      $zero, 0x0007(a1)          # 00000007
    addiu   a1, a1, 0x0004             # a1 = 00000004
    sb      $zero, 0x00C0(a1)          # 000000C4
    sb      $zero, 0x0080(a1)          # 00000084
    sb      $zero, 0x0040(a1)          # 00000044
    bne     v1, t0, lbl_800ACDA0
    sb      $zero, 0x0000(a1)          # 00000004
    andi    v1, $zero, 0x00FF          # v1 = 00000000
    sb      v1, 0x010C(a0)             # 0000010C
    sb      v1, 0x010B(a0)             # 0000010B
    sb      v1, 0x010A(a0)             # 0000010A
    sh      v1, 0x0108(a0)             # 00000108
    sh      v1, 0x0106(a0)             # 00000106
    sb      $zero, 0x010D(a0)          # 0000010D
lbl_800ACE08:
    jr      $ra
    nop


func_800ACE10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x010E          # a1 = 0000010E
    jal     func_80002E80              # bzero
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t6, 0x0104(a0)             # 00000104
    sb      t7, 0x0105(a0)             # 00000105
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800ACE48:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop
    nop
    nop
    nop
