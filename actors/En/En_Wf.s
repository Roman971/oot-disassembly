.section .text
func_80B5C930:
    sw      a1, 0x02CC(a0)             # 000002CC
    jr      $ra
    nop


func_80B5C93C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_80B60728)      # a1 = 80B60000
    addiu   a1, a1, %lo(var_80B60728)  # a1 = 80B60728
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t6, %hi(var_80B606E8)      # t6 = 80B60000
    addiu   t6, t6, %lo(var_80B606E8)  # t6 = 80B606E8
    lui     a2, 0x8002                 # a2 = 80020000
    mfc1    a1, $f0
    mfc1    a3, $f0
    sw      t6, 0x0098(s0)             # 00000098
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lw      t8, 0x0024(s0)             # 00000024
    lw      t7, 0x0028(s0)             # 00000028
    lh      t3, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0038(s0)             # 00000038
    lw      t8, 0x002C(s0)             # 0000002C
    mtc1    $at, $f4                   # $f4 = 10.00
    sw      t7, 0x003C(s0)             # 0000003C
    sra     t4, t3,  8
    addiu   t9, $zero, 0x00FE          # t9 = 000000FE
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    andi    t5, t4, 0x00FF             # t5 = 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sb      t9, 0x00AE(s0)             # 000000AE
    sb      t0, 0x00AF(s0)             # 000000AF
    sh      t1, 0x00A8(s0)             # 000000A8
    sh      t2, 0x00AA(s0)             # 000000AA
    sh      t5, 0x02EC(s0)             # 000002EC
    sh      t7, 0x001C(s0)             # 0000001C
    sb      $zero, 0x02F2(s0)          # 000002F2
    addiu   a1, s0, 0x02F4             # a1 = 000002F4
    sw      t8, 0x0040(s0)             # 00000040
    swc1    $f4, 0x02E4(s0)            # 000002E4
    sw      a1, 0x0034($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B60680)      # a3 = 80B60000
    addiu   t8, s0, 0x0314             # t8 = 00000314
    lw      a1, 0x0034($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B60680)  # a3 = 80B60680
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0414             # a1 = 00000414
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B60690)      # a3 = 80B60000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B60690)  # a3 = 80B60690
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0460             # a1 = 00000460
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B606BC)      # a3 = 80B60000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B606BC)  # a3 = 80B606BC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0178             # a1 = 00000178
    bne     t9, $zero, lbl_80B5CAD4
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t0, s0, 0x01BC             # t0 = 000001BC
    addiu   t1, s0, 0x0240             # t1 = 00000240
    addiu   t2, $zero, 0x0016          # t2 = 00000016
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, 0xA4AC             # a3 = 0600A4AC
    addiu   a2, a2, 0x9690             # a2 = 06009690
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s0, 0x0178             # a1 = 00000178
    lui     a1, 0x3BF5                 # a1 = 3BF50000
    ori     a1, a1, 0xC28F             # a1 = 3BF5C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x004C          # t3 = 0000004C
    b       lbl_80B5CB2C
    sb      t3, 0x0117(s0)             # 00000117
lbl_80B5CAD4:
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t4, s0, 0x01BC             # t4 = 000001BC
    addiu   t5, s0, 0x0240             # t5 = 00000240
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addiu   a3, a3, 0xA4AC             # a3 = 0600A4AC
    jal     func_8008C788
    addiu   a2, a2, 0x3BC0             # a2 = 00003BC0
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0310(s0)             # 00000310
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    addiu   t0, $zero, 0x0057          # t0 = 00000057
    sb      t7, 0x0045(t8)             # 00000045
    lw      v0, 0x0310(s0)             # 00000310
    lbu     t9, 0x0045(v0)             # 00000045
    sb      t9, 0x0005(v0)             # 00000005
    sb      t0, 0x0117(s0)             # 00000117
lbl_80B5CB2C:
    jal     func_80B5CFDC
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x02EC(s0)             # 000002EC
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    a1, $at, lbl_80B5CB60
    lw      $ra, 0x002C($sp)
    jal     func_8002049C
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B5CB60
    lw      $ra, 0x002C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80B5CB60:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B5CB70:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004A550
    addiu   a1, s0, 0x02F4             # a1 = 000002F4
    lw      a0, 0x0024($sp)
    jal     func_8004ABCC
    addiu   a1, s0, 0x0414             # a1 = 00000414
    lw      a0, 0x0024($sp)
    jal     func_8004ABCC
    addiu   a1, s0, 0x0460             # a1 = 00000460
    lh      t6, 0x001C(s0)             # 0000001C
    beql    t6, $zero, lbl_80B5CBD0
    lw      v1, 0x0118(s0)             # 00000118
    lh      t7, 0x02EC(s0)             # 000002EC
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    t7, $at, lbl_80B5CBD0
    lw      v1, 0x0118(s0)             # 00000118
    jal     func_800C6894
    nop
    lw      v1, 0x0118(s0)             # 00000118
lbl_80B5CBD0:
    beql    v1, $zero, lbl_80B5CBFC
    lw      $ra, 0x001C($sp)
    lw      t8, 0x0130(v1)             # 00000130
    or      v0, v1, $zero              # v0 = 00000000
    beql    t8, $zero, lbl_80B5CBFC
    lw      $ra, 0x001C($sp)
    lh      v1, 0x0142(v1)             # 00000142
    blez    v1, lbl_80B5CBF8
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0142(v0)             # 00000142
lbl_80B5CBF8:
    lw      $ra, 0x001C($sp)
lbl_80B5CBFC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5CC0C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a2, 0x0048($sp)
    lh      v0, 0x00B6(s0)             # 000000B6
    lh      t6, 0x007E(s0)             # 0000007E
    lw      t1, 0x1C44(a0)             # 00001C44
    or      a1, s0, $zero              # a1 = 00000000
    subu    t0, t6, v0
    sll     t0, t0, 16
    sra     t0, t0, 16
    bgez    t0, lbl_80B5CC50
    lui     a2, 0x42C8                 # a2 = 42C80000
    subu    t0, $zero, t0
    sll     t0, t0, 16
    sra     t0, t0, 16
lbl_80B5CC50:
    lh      t7, 0x008A(s0)             # 0000008A
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    addiu   t8, $zero, 0x2EE0          # t8 = 00002EE0
    subu    v1, t7, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgezl   v1, lbl_80B5CC80
    sw      t8, 0x0010($sp)
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    sw      t8, 0x0010($sp)
lbl_80B5CC80:
    sw      v0, 0x0014($sp)
    sh      v1, 0x0034($sp)
    sw      a0, 0x0040($sp)
    sh      t0, 0x0036($sp)
    jal     func_8002821C
    sw      t1, 0x003C($sp)
    lh      v1, 0x0034($sp)
    lh      t0, 0x0036($sp)
    beq     v0, $zero, lbl_80B5CCF0
    lw      t1, 0x003C($sp)
    lb      t9, 0x0832(t1)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lw      t2, 0x0040($sp)
    bne     t9, $at, lbl_80B5CCCC
    lui     t3, 0x0001                 # t3 = 00010000
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CCCC:
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00001DE4
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80B5CCF4
    addiu   t5, $zero, 0x2AA8          # t5 = 00002AA8
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CCF0:
    addiu   t5, $zero, 0x2AA8          # t5 = 00002AA8
lbl_80B5CCF4:
    sw      t5, 0x0010($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    sw      t1, 0x003C($sp)
    sh      t0, 0x0036($sp)
    sh      v1, 0x0034($sp)
    lw      a0, 0x0040($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a3, $zero, 0x5DC0          # a3 = 00005DC0
    jal     func_8002821C
    sw      t6, 0x0014($sp)
    lh      v1, 0x0034($sp)
    lh      t0, 0x0036($sp)
    beq     v0, $zero, lbl_80B5CE00
    lw      t1, 0x003C($sp)
    lhu     t7, 0x0088(s0)             # 00000088
    lh      v1, 0x008A(s0)             # 0000008A
    andi    t8, t7, 0x0008             # t8 = 00000000
    sh      v1, 0x0032(s0)             # 00000032
    beq     t8, $zero, lbl_80B5CD8C
    sh      v1, 0x00B6(s0)             # 000000B6
    bltz    t0, lbl_80B5CD58
    subu    v0, $zero, t0
    b       lbl_80B5CD58
    or      v0, t0, $zero              # v0 = 00000000
lbl_80B5CD58:
    slti    $at, v0, 0x2EE0
    beq     $at, $zero, lbl_80B5CD8C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B5CD90
    lb      t9, 0x0832(t1)             # 00000832
    jal     func_80B5ED60
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CD8C:
    lb      t9, 0x0832(t1)             # 00000832
lbl_80B5CD90:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    t9, $at, lbl_80B5CDB0
    lui     $at, 0x42A0                # $at = 42A00000
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x42A0                # $at = 42A00000
lbl_80B5CDB0:
    mtc1    $at, $f10                  # $f10 = 80.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lw      t2, 0x0040($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    c.lt.s  $f8, $f10
    addu    t3, t3, t2
    bc1f    lbl_80B5CDF0
    nop
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80B5CDF0
    nop
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CDF0:
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CE00:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lw      a0, 0x0040($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    sh      v1, 0x0034($sp)
    sh      t0, 0x0036($sp)
    sw      t1, 0x003C($sp)
    jal     func_80028158
    swc1    $f16, 0x0010($sp)
    lh      v1, 0x0034($sp)
    lh      t0, 0x0036($sp)
    lw      t1, 0x003C($sp)
    beq     v0, $zero, lbl_80B5CF08
    or      a1, v0, $zero              # a1 = 00000000
    lhu     t5, 0x0088(s0)             # 00000088
    lh      v1, 0x008A(s0)             # 0000008A
    slti    $at, t0, 0x2EE0
    andi    t6, t5, 0x0008             # t6 = 00000000
    sh      v1, 0x0032(s0)             # 00000032
    beq     t6, $zero, lbl_80B5CE64
    sh      v1, 0x00B6(s0)             # 000000B6
    bnel    $at, $zero, lbl_80B5CE78
    lh      t8, 0x0000(v0)             # 00000000
lbl_80B5CE64:
    lh      t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x00DA         # $at = 000000DA
    bne     t7, $at, lbl_80B5CEF8
    nop
    lh      t8, 0x0000(v0)             # 00000000
lbl_80B5CE78:
    addiu   $at, $zero, 0x00DA         # $at = 000000DA
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_80B5CEE8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214AC
    sw      a1, 0x0030($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lw      a1, 0x0030($sp)
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80B5CEE8
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t2, 0x0032(a1)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    t3, t9, t2
    addu    t4, t3, $at
    sll     t5, t4, 16
    sra     t6, t5, 16
    slti    $at, t6, 0x3E80
    beql    $at, $zero, lbl_80B5CEE8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5ED60
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5CEE8:
    jal     func_80B5F224
    lw      a1, 0x0040($sp)
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CEF8:
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CF08:
    lh      t7, 0x004A($sp)
    beq     t7, $zero, lbl_80B5CFC4
    slti    $at, v1, 0x1B58
    bne     $at, $zero, lbl_80B5CF2C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5F224
    lw      a1, 0x0040($sp)
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CF2C:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lh      t8, 0x00B6(t1)             # 000000B6
    lh      t9, 0x00B6(s0)             # 000000B6
    c.le.s  $f6, $f4
    lw      a0, 0x0040($sp)
    subu    v1, t8, t9
    sll     v1, v1, 16
    bc1f    lbl_80B5CFB4
    sra     v1, v1, 16
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80026950
    sh      v1, 0x002E($sp)
    bne     v0, $zero, lbl_80B5CFB4
    lh      v1, 0x002E($sp)
    lw      t2, 0x0040($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x0007             # t4 = 00000000
    bne     t4, $zero, lbl_80B5CFA4
    nop
    bltz    v1, lbl_80B5CF98
    subu    v0, $zero, v1
    b       lbl_80B5CF98
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5CF98:
    slti    $at, v0, 0x38E0
    beq     $at, $zero, lbl_80B5CFB4
    nop
lbl_80B5CFA4:
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CFB4:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5CFC8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B5CFC4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B5CFC8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B5CFDC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5430             # a1 = 06005430
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a2, 0x3F00                 # a2 = 3F000000
    swc1    $f0, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lw      t8, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f10, $f6, $f8
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    lui     a1, %hi(func_80B5D084)     # a1 = 80B60000
    and     t9, t8, $at
    swc1    $f10, 0x0028(s0)           # 00000028
    sw      t7, 0x02D8(s0)             # 000002D8
    sh      $zero, 0x02F0(s0)          # 000002F0
    sw      $zero, 0x02C4(s0)          # 000002C4
    sw      t9, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_80B5D084) # a1 = 80B5D084
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0054(s0)            # 00000054
    jal     func_80B5C930
    swc1    $f0, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5D084:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      v0, 0x02D8(s0)             # 000002D8
    slti    $at, v0, 0x0006
    bne     $at, $zero, lbl_80B5D108
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f16                  # $f16 = 240.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    c.lt.s  $f10, $f16
    sub.s   $f8, $f4, $f6
    bc1f    lbl_80B5D1A4
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      t7, 0x0004(s0)             # 00000004
    lh      t9, 0x001C(s0)             # 0000001C
    sw      t6, 0x02D8(s0)             # 000002D8
    ori     t8, t7, 0x0001             # t8 = 00000001
    beq     t9, $zero, lbl_80B5D1A4
    sw      t8, 0x0004(s0)             # 00000004
    lh      t0, 0x02EC(s0)             # 000002EC
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    t0, $at, lbl_80B5D1A8
    lw      $ra, 0x0024($sp)
    jal     func_800C6820
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    b       lbl_80B5D1A8
    lw      $ra, 0x0024($sp)
lbl_80B5D108:
    beq     v0, $zero, lbl_80B5D17C
    lui     $at, %hi(var_80B60780)     # $at = 80B60000
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f4, %lo(var_80B60780)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    lwc1    $f8, 0x0054(s0)            # 00000054
    mul.s   $f6, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 0.50
    lwc1    $f16, 0x0028(s0)           # 00000028
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    lui     a1, 0x428C                 # a1 = 428C0000
    add.s   $f4, $f16, $f18
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4160                 # a3 = 41600000
    add.s   $f10, $f8, $f6
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f10, 0x0054(s0)           # 00000054
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lw      t1, 0x02D8(s0)             # 000002D8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    bne     t2, $zero, lbl_80B5D1A4
    sw      t2, 0x02D8(s0)             # 000002D8
    jal     func_80022FD0
    addiu   a1, $zero, 0x383C          # a1 = 0000383C
    b       lbl_80B5D1A8
    lw      $ra, 0x0024($sp)
lbl_80B5D17C:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_80B5D1A4
    lui     $at, 0xC000                # $at = C0000000
    lwc1    $f6, 0x0050(s0)            # 00000050
    mtc1    $at, $f10                  # $f10 = -2.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0054(s0)            # 00000054
    jal     func_80B5D1B8
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_80B5D1A4:
    lw      $ra, 0x0024($sp)
lbl_80B5D1A8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5D1B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA4AC             # a1 = 0600A4AC
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x02C4(a3)             # 000002C4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    mul.s   $f6, $f0, $f4
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a1, %hi(func_80B5D240)     # a1 = 80B60000
    lh      t9, 0x00B6(a0)             # 000000B6
    addiu   a1, a1, %lo(func_80B5D240) # a1 = 80B5D240
    swc1    $f18, 0x0068(a0)           # 00000068
    add.s   $f10, $f6, $f8
    sh      t9, 0x0032(a0)             # 00000032
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    jal     func_80B5C930
    sw      t8, 0x02D8(a0)             # 000002D8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5D240:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x002C($sp)
    lh      a0, 0x02D2(s0)             # 000002D2
    or      a1, s0, $zero              # a1 = 00000000
    beql    a0, $zero, lbl_80B5D2C4
    lh      t3, 0x008A(s0)             # 0000008A
    lh      t8, 0x008A(s0)             # 0000008A
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t1, 0x04C6(s0)             # 000004C6
    addiu   t2, a0, 0xFFFF             # t2 = FFFFFFFF
    subu    t0, t8, t9
    subu    v1, t0, t1
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80B5D2A8
    subu    v0, $zero, v1
    b       lbl_80B5D2A8
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5D2A8:
    slti    $at, v0, 0x2001
    bnel    $at, $zero, lbl_80B5D2C0
    sh      $zero, 0x02D2(s0)          # 000002D2
    b       lbl_80B5D448
    sh      t2, 0x02D2(s0)             # 000002D2
    sh      $zero, 0x02D2(s0)          # 000002D2
lbl_80B5D2C0:
    lh      t3, 0x008A(s0)             # 0000008A
lbl_80B5D2C4:
    lh      t4, 0x00B6(s0)             # 000000B6
    lw      a0, 0x0034($sp)
    subu    v1, t3, t4
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_80B5D2EC
    nop
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B5D2EC:
    jal     func_80B60484
    sh      v1, 0x0026($sp)
    bne     v0, $zero, lbl_80B5D448
    lh      v1, 0x0026($sp)
    lh      v0, 0x02D0(s0)             # 000002D0
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B5D324
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    slti    $at, v1, 0x1FFE
    beq     $at, $zero, lbl_80B5D448
    sh      t5, 0x02D0(s0)             # 000002D0
    b       lbl_80B5D334
    sh      $zero, 0x02D0(s0)          # 000002D0
lbl_80B5D324:
    jal     func_80B5CC0C
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_80B5D44C
    lw      $ra, 0x001C($sp)
lbl_80B5D334:
    lw      v0, 0x002C($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42A0                # $at = 42A00000
    lh      t6, 0x00B6(v0)             # 000000B6
    mtc1    $at, $f6                   # $f6 = 80.00
    subu    v1, t6, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgezl   v1, lbl_80B5D36C
    lwc1    $f4, 0x0090(s0)            # 00000090
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
    lwc1    $f4, 0x0090(s0)            # 00000090
lbl_80B5D36C:
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B5D3B4
    lw      t9, 0x02D8(s0)             # 000002D8
    lb      t8, 0x0833(v0)             # 00000833
    slti    $at, v1, 0x1F40
    beql    t8, $zero, lbl_80B5D3B4
    lw      t9, 0x02D8(s0)             # 000002D8
    bnel    $at, $zero, lbl_80B5D3B4
    lw      t9, 0x02D8(s0)             # 000002D8
    lh      v0, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x0032(s0)             # 00000032
    jal     func_80B5DB88
    sh      v0, 0x00B6(s0)             # 000000B6
    b       lbl_80B5D44C
    lw      $ra, 0x001C($sp)
    lw      t9, 0x02D8(s0)             # 000002D8
lbl_80B5D3B4:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    bne     t0, $zero, lbl_80B5D448
    sw      t0, 0x02D8(s0)             # 000002D8
    jal     func_80021A28
    addiu   a1, $zero, 0x1555          # a1 = 00001555
    beq     v0, $zero, lbl_80B5D418
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B60784)     # $at = 80B60000
    lwc1    $f8, %lo(var_80B60784)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_80B5D408
    nop
    jal     func_80B5D45C
    lw      a1, 0x0034($sp)
    b       lbl_80B5D424
    lw      t2, 0x0034($sp)
lbl_80B5D408:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D424
    lw      t2, 0x0034($sp)
lbl_80B5D418:
    jal     func_80B5D95C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x0034($sp)
lbl_80B5D424:
    lui     t3, 0x0001                 # t3 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x005F             # t4 = 00000000
    bnel    t4, $zero, lbl_80B5D44C
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
lbl_80B5D448:
    lw      $ra, 0x001C($sp)
lbl_80B5D44C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5D45C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x57A0             # a0 = 060057A0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x57A0             # a1 = 060057A0
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0178             # a0 = 00000178
    lw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    lui     a1, %hi(func_80B5D4DC)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5D4DC) # a1 = 80B5D4DC
    jal     func_80B5C930
    sw      t7, 0x02C4(a0)             # 000002C4
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5D4DC:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    or      a2, a1, $zero              # a2 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0050($sp)
    lw      t6, 0x1C44(a2)             # 00001C44
    sw      a2, 0x0064($sp)
    jal     func_80B60484
    sw      t6, 0x0048($sp)
    bne     v0, $zero, lbl_80B5D948
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x02EE          # a3 = 000002EE
    lh      t7, 0x00B6(s0)             # 000000B6
    or      a1, s0, $zero              # a1 = 00000000
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_80026950
    lw      a0, 0x0064($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     v0, $zero, lbl_80B5D558
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    nop
    swc1    $f6, 0x0050($sp)
lbl_80B5D558:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f10, 0x0050($sp)
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   a0, s0, 0x0068             # a0 = 00000068
    add.s   $f16, $f8, $f10
    lui     a1, 0xC100                 # a1 = C1000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    c.le.s  $f0, $f16
    lui     $at, 0x4282                # $at = 42820000
    lwc1    $f4, 0x0050($sp)
    bc1fl   lbl_80B5D5A4
    mtc1    $at, $f18                  # $f18 = 65.00
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    b       lbl_80B5D5F4
    nop
    mtc1    $at, $f18                  # $f18 = 0.00
lbl_80B5D5A4:
    lui     a3, 0x40D4                 # a3 = 40D40000
    lui     a1, 0x4100                 # a1 = 41000000
    add.s   $f6, $f18, $f4
    ori     a3, a3, 0xCCCD             # a3 = 40D4CCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80B5D5EC
    mfc1    a1, $f2
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    b       lbl_80B5D5F4
    nop
    mfc1    a1, $f2
lbl_80B5D5EC:
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
lbl_80B5D5F4:
    lui     $at, %hi(var_80B60788)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B60788)($at)
    lwc1    $f8, 0x0068(s0)            # 00000068
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4316                # $at = 43160000
    mul.s   $f16, $f8, $f10
    mtc1    $at, $f4                   # $f4 = 150.00
    swc1    $f16, 0x0194(s0)           # 00000194
    lw      t8, 0x0048($sp)
    lwc1    $f6, 0x0050($sp)
    lw      t1, 0x0048($sp)
    lh      t9, 0x00B6(t8)             # 000000B6
    add.s   $f8, $f4, $f6
    subu    v0, t9, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgezl   v0, lbl_80B5D64C
    lwc1    $f18, 0x0090(s0)           # 00000090
    subu    v0, $zero, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    lwc1    $f18, 0x0090(s0)           # 00000090
lbl_80B5D64C:
    c.lt.s  $f18, $f8
    nop
    bc1fl   lbl_80B5D6B0
    lwc1    $f16, 0x0190(s0)           # 00000190
    lb      t2, 0x0833(t1)             # 00000833
    slti    $at, v0, 0x1F40
    beql    t2, $zero, lbl_80B5D6B0
    lwc1    $f16, 0x0190(s0)           # 00000190
    bnel    $at, $zero, lbl_80B5D6B0
    lwc1    $f16, 0x0190(s0)           # 00000190
    lh      v0, 0x008A(s0)             # 0000008A
    sh      v0, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80B6078C)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B6078C)($at)
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80B5D6B0
    lwc1    $f16, 0x0190(s0)           # 00000190
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D94C
    lw      $ra, 0x0034($sp)
    lwc1    $f16, 0x0190(s0)           # 00000190
lbl_80B5D6B0:
    addiu   a0, s0, 0x0178             # a0 = 00000178
    trunc.w.s $f4, $f16
    mfc1    t4, $f4
    jal     func_8008C9C0
    sw      t4, 0x005C($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80B5D6EC
    neg.s   $f6, $f0
    b       lbl_80B5D6F0
    swc1    $f0, 0x003C($sp)
    neg.s   $f6, $f0
lbl_80B5D6EC:
    swc1    $f6, 0x003C($sp)
lbl_80B5D6F0:
    lwc1    $f18, 0x0190(s0)           # 00000190
    lwc1    $f8, 0x003C($sp)
    c.le.s  $f2, $f0
    sub.s   $f10, $f18, $f8
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    bc1f    lbl_80B5D718
    sw      t6, 0x0058($sp)
    b       lbl_80B5D720
    swc1    $f0, 0x003C($sp)
lbl_80B5D718:
    neg.s   $f4, $f0
    swc1    $f4, 0x003C($sp)
lbl_80B5D720:
    jal     func_80021A28
    addiu   a1, $zero, 0x11C7          # a1 = 000011C7
    bne     v0, $zero, lbl_80B5D774
    lui     $at, 0x42B4                # $at = 42B40000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80B5D764
    nop
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D884
    lw      a0, 0x0064($sp)
lbl_80B5D764:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D884
    lw      a0, 0x0064($sp)
lbl_80B5D774:
    mtc1    $at, $f8                   # $f8 = 0.00
    lwc1    $f10, 0x0050($sp)
    lwc1    $f18, 0x0090(s0)           # 00000090
    lw      t7, 0x0048($sp)
    add.s   $f16, $f8, $f10
    c.lt.s  $f18, $f16
    nop
    bc1fl   lbl_80B5D884
    lw      a0, 0x0064($sp)
    lh      t8, 0x00B6(t7)             # 000000B6
    lh      t9, 0x00B6(s0)             # 000000B6
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    subu    v1, t8, t9
    sll     v1, v1, 16
    sra     v1, v1, 16
    jal     func_80026950
    sh      v1, 0x0042($sp)
    bne     v0, $zero, lbl_80B5D830
    lh      v1, 0x0042($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sh      v1, 0x0042($sp)
    lui     $at, %hi(var_80B60790)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B60790)($at)
    lui     $at, 0x42A0                # $at = 42A00000
    lh      v1, 0x0042($sp)
    c.lt.s  $f4, $f0
    nop
    bc1t    lbl_80B5D820
    nop
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_80B5D834
    lw      a0, 0x0064($sp)
    bltz    v1, lbl_80B5D814
    subu    v0, $zero, v1
    b       lbl_80B5D814
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5D814:
    slti    $at, v0, 0x38E0
    beql    $at, $zero, lbl_80B5D834
    lw      a0, 0x0064($sp)
lbl_80B5D820:
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D884
    lw      a0, 0x0064($sp)
lbl_80B5D830:
    lw      a0, 0x0064($sp)
lbl_80B5D834:
    jal     func_80026950
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B5D878
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    c.lt.s  $f10, $f0
    nop
    bc1f    lbl_80B5D878
    nop
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5D884
    lw      a0, 0x0064($sp)
lbl_80B5D878:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0064($sp)
lbl_80B5D884:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    or      a2, $zero, $zero           # a2 = 00000000
    bne     v0, $zero, lbl_80B5D948
    lw      t0, 0x0064($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0
    lw      t1, 0x1DE4(t1)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t2, t1, 0x005F             # t2 = 00000000
    bnel    t2, $zero, lbl_80B5D8C0
    lwc1    $f18, 0x0190(s0)           # 00000190
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
    lwc1    $f18, 0x0190(s0)           # 00000190
lbl_80B5D8C0:
    lw      v0, 0x005C($sp)
    lw      t5, 0x0058($sp)
    trunc.w.s $f16, $f18
    mfc1    t4, $f16
    nop
    beql    v0, t4, lbl_80B5D94C
    lw      $ra, 0x0034($sp)
    bgtz    t5, lbl_80B5D948
    lwc1    $f4, 0x003C($sp)
    trunc.w.s $f6, $f4
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t7, $f6
    nop
    addu    t8, t7, v0
    blezl   t8, lbl_80B5D94C
    lw      $ra, 0x0034($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x385A          # a1 = 0000385A
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_800260E8
    swc1    $f8, 0x0014($sp)
lbl_80B5D948:
    lw      $ra, 0x0034($sp)
lbl_80B5D94C:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80B5D95C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x98C8             # a1 = 060098C8
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     a1, %hi(func_80B5D9A8)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5D9A8) # a1 = 80B5D9A8
    jal     func_80B5C930
    sw      t6, 0x02C4(a0)             # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5D9A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_80B60484
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5DB74
    lw      a0, 0x0024($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_80B5DB78
    lw      $ra, 0x001C($sp)
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      t6, 0x008A(s0)             # 0000008A
    subu    v0, t6, a0
    sll     v0, v0, 16
    sra     v0, v0, 16
    blezl   v0, lbl_80B5DA3C
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f8                   # $f8 = 0.25
    cvt.s.w $f6, $f4
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f16                  # $f16 = 2000.00
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    b       lbl_80B5DA6C
    sra     v1, v1, 16
    mtc1    v0, $f6                    # $f6 = 0.00
lbl_80B5DA3C:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    cvt.s.w $f8, $f6
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f18                  # $f18 = 2000.00
    mul.s   $f16, $f8, $f10
    sub.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    v1, $f6
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B5DA6C:
    addu    t9, a0, v1
    sh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0178             # a0 = 00000178
    blez    v0, lbl_80B5DABC
    sh      t0, 0x0032(s0)             # 00000032
    mtc1    v1, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    cvt.s.w $f10, $f8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    mul.s   $f2, $f10, $f16
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80B5DAF4
    neg.s   $f8, $f2
    b       lbl_80B5DAF0
    mov.s   $f2, $f12
lbl_80B5DABC:
    mtc1    v1, $f18                   # $f18 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f4, $f18
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    mul.s   $f2, $f4, $f6
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_80B5DAF4
    neg.s   $f8, $f2
    mov.s   $f2, $f12
lbl_80B5DAF0:
    neg.s   $f8, $f2
lbl_80B5DAF4:
    jal     func_8008C9C0
    swc1    $f8, 0x0194(s0)            # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021A28
    addiu   a1, $zero, 0x1555          # a1 = 00001555
    beql    v0, $zero, lbl_80B5DB50
    lw      t1, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B60794)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B60794)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f0
    nop
    bc1f    lbl_80B5DB44
    nop
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5DB50
    lw      t1, 0x0024($sp)
lbl_80B5DB44:
    jal     func_80B5D45C
    lw      a1, 0x0024($sp)
    lw      t1, 0x0024($sp)
lbl_80B5DB50:
    lui     t2, 0x0001                 # t2 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t2, t2, t1
    lw      t2, 0x1DE4(t2)             # 00011DE4
    andi    t3, t2, 0x005F             # t3 = 00000000
    bnel    t3, $zero, lbl_80B5DB78
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
lbl_80B5DB74:
    lw      $ra, 0x001C($sp)
lbl_80B5DB78:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5DB88:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x57A0             # a0 = 060057A0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x57A0             # a1 = 060057A0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x40C0                # $at = 40C00000
    addiu   t7, $zero, 0x3E80          # t7 = 00003E80
    c.lt.s  $f10, $f0
    mtc1    $at, $f0                   # $f0 = 6.00
    addiu   t8, $zero, 0xC180          # t8 = FFFFC180
    lui     $at, %hi(var_80B60798)     # $at = 80B60000
    bc1fl   lbl_80B5DC18
    sh      t8, 0x02EE(s0)             # 000002EE
    b       lbl_80B5DC18
    sh      t7, 0x02EE(s0)             # 000002EE
    sh      t8, 0x02EE(s0)             # 000002EE
lbl_80B5DC18:
    swc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f16, %lo(var_80B60798)($at)
    lh      t9, 0x00B6(s0)             # 000000B6
    mul.s   $f18, $f0, $f16
    sh      t9, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0194(s0)           # 00000194
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    mul.s   $f4, $f0, $f2
    lui     a1, %hi(func_80B5DC84)     # a1 = 80B60000
    sw      t2, 0x02C4(s0)             # 000002C4
    addiu   a1, a1, %lo(func_80B5DC84) # a1 = 80B5DC84
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x02DC(s0)           # 000002DC
    add.s   $f6, $f4, $f2
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    jal     func_80B5C930
    sw      t1, 0x02D8(s0)             # 000002D8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5DC84:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x005C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t6, 0x005C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    swc1    $f4, 0x004C($sp)
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      t7, 0x003C($sp)
    lh      t9, 0x02EE(s0)             # 000002EE
    lh      t8, 0x008A(s0)             # 0000008A
    sw      t0, 0x0010($sp)
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    addu    a1, t8, t9
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lw      a0, 0x005C($sp)
    jal     func_80B60484
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5E190
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_80B5E194
    lw      $ra, 0x0034($sp)
    lh      a3, 0x00B6(s0)             # 000000B6
    lh      t3, 0x02EE(s0)             # 000002EE
    ori     $at, $zero, 0x8000         # $at = 00008000
    sh      a3, 0x0032(s0)             # 00000032
    lw      t1, 0x003C($sp)
    lh      t2, 0x00B6(t1)             # 000000B6
    addu    t4, t2, t3
    addu    t5, t4, $at
    sh      t5, 0x0056($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
    bne     v0, $zero, lbl_80B5DD50
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x005C($sp)
    jal     func_80026850
    lw      a2, 0x0068(s0)             # 00000068
    bnel    v0, $zero, lbl_80B5DDA8
    lw      a0, 0x005C($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
lbl_80B5DD50:
    beql    v0, $zero, lbl_80B5DD7C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x007E(s0)             # 0000007E
    lh      t7, 0x008A(s0)             # 0000008A
    lh      t9, 0x02EE(s0)             # 000002EE
    subu    t8, t6, t7
    subu    v0, t8, t9
    sll     v0, v0, 16
    b       lbl_80B5DD7C
    sra     v0, v0, 16
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B5DD7C:
    bltz    v0, lbl_80B5DD8C
    subu    v1, $zero, v0
    b       lbl_80B5DD8C
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B5DD8C:
    slti    $at, v1, 0x2EE1
    bnel    $at, $zero, lbl_80B5DDA8
    lw      a0, 0x005C($sp)
    lh      t0, 0x02EE(s0)             # 000002EE
    subu    t1, $zero, t0
    sh      t1, 0x02EE(s0)             # 000002EE
    lw      a0, 0x005C($sp)
lbl_80B5DDA8:
    jal     func_80026950
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B5DDC4
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f2                   # $f2 = 150.00
    nop
    swc1    $f2, 0x004C($sp)
lbl_80B5DDC4:
    lui     $at, 0x4270                # $at = 42700000
    lwc1    $f2, 0x004C($sp)
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    add.s   $f8, $f6, $f2
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80B5DE10
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a1, 0xC080                 # a1 = C0800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    b       lbl_80B5DE70
    lwc1    $f12, 0x02DC(s0)           # 000002DC
    lui     $at, 0x42A0                # $at = 42A00000
lbl_80B5DE10:
    mtc1    $at, $f18                  # $f18 = 80.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    add.s   $f4, $f18, $f2
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D4                 # a3 = 40D40000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80B5DE60
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    b       lbl_80B5DE70
    lwc1    $f12, 0x02DC(s0)           # 000002DC
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80B5DE60:
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lwc1    $f12, 0x02DC(s0)           # 000002DC
lbl_80B5DE70:
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.eq.s  $f10, $f12
    nop
    bc1tl   lbl_80B5DEC4
    mtc1    $zero, $f16                # $f16 = 0.00
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x02DC(s0)            # 000002DC
    lwc1    $f18, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4
    add.s   $f8, $f18, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f12, 0x02DC(s0)           # 000002DC
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f4, $f0, $f12
    add.s   $f18, $f10, $f4
    swc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_80B5DEC4:
    nop
    c.le.s  $f16, $f12
    nop
    bc1fl   lbl_80B5DEE4
    neg.s   $f14, $f12
    b       lbl_80B5DEE4
    mov.s   $f14, $f12
    neg.s   $f14, $f12
lbl_80B5DEE4:
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B5DF04
    neg.s   $f2, $f0
    b       lbl_80B5DF04
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_80B5DF04:
    c.lt.s  $f14, $f2
    lui     $at, %hi(var_80B607A0)     # $at = 80B60000
    bc1f    lbl_80B5DF28
    nop
    lui     $at, %hi(var_80B6079C)     # $at = 80B60000
    lwc1    $f6, %lo(var_80B6079C)($at)
    mul.s   $f8, $f0, $f6
    b       lbl_80B5DF34
    swc1    $f8, 0x0194(s0)            # 00000194
lbl_80B5DF28:
    lwc1    $f10, %lo(var_80B607A0)($at)
    mul.s   $f4, $f12, $f10
    swc1    $f4, 0x0194(s0)            # 00000194
lbl_80B5DF34:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f2                   # $f2 = -3.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80B5DF60
    mtc1    $at, $f18                  # $f18 = 3.00
    b       lbl_80B5DF88
    swc1    $f2, 0x0194(s0)            # 00000194
    mtc1    $at, $f18                  # $f18 = 3.00
lbl_80B5DF60:
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80B5DF84
    mov.s   $f2, $f0
    mtc1    $at, $f2                   # $f2 = 3.00
    b       lbl_80B5DF88
    swc1    $f2, 0x0194(s0)            # 00000194
    mov.s   $f2, $f0
lbl_80B5DF84:
    swc1    $f2, 0x0194(s0)            # 00000194
lbl_80B5DF88:
    lwc1    $f6, 0x0190(s0)            # 00000190
    addiu   a0, s0, 0x0178             # a0 = 00000178
    trunc.w.s $f8, $f6
    mfc1    v1, $f8
    jal     func_8008C9C0
    sw      v1, 0x0048($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    lw      v1, 0x0048($sp)
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B5DFC8
    neg.s   $f2, $f0
    b       lbl_80B5DFC8
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_80B5DFC8:
    lwc1    $f12, 0x0190(s0)           # 00000190
    c.le.s  $f16, $f0
    sub.s   $f10, $f12, $f2
    trunc.w.s $f18, $f12
    trunc.w.s $f4, $f10
    mfc1    t5, $f18
    mfc1    v0, $f4
    bc1fl   lbl_80B5DFF8
    neg.s   $f2, $f0
    b       lbl_80B5DFF8
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_80B5DFF8:
    beql    v1, t5, lbl_80B5E070
    lw      t3, 0x005C($sp)
    bgtzl   v0, lbl_80B5E070
    lw      t3, 0x005C($sp)
    trunc.w.s $f6, $f2
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t7, $f6
    nop
    addu    t8, t7, v1
    blezl   t8, lbl_80B5E070
    lw      t3, 0x005C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x385A          # a1 = 0000385A
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_800260E8
    swc1    $f8, 0x0014($sp)
    lw      t3, 0x005C($sp)
lbl_80B5E070:
    lui     t4, 0x0001                 # t4 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t4, t4, t3
    lw      t4, 0x1DE4(t4)             # 00011DE4
    andi    t5, t4, 0x005F             # t5 = 00000000
    bnel    t5, $zero, lbl_80B5E098
    lh      t6, 0x0056($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
    lh      t6, 0x0056($sp)
lbl_80B5E098:
    lh      t7, 0x00B6(s0)             # 000000B6
    subu    a0, t6, t7
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, %hi(var_80B607A4)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B607A4)($at)
    lw      a0, 0x005C($sp)
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80B5E104
    lw      t8, 0x02D8(s0)             # 000002D8
    jal     func_80026950
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5E100
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f18, 0x0090(s0)           # 00000090
    c.le.s  $f18, $f4
    nop
    bc1fl   lbl_80B5E104
    lw      t8, 0x02D8(s0)             # 000002D8
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5E194
    lw      $ra, 0x0034($sp)
lbl_80B5E100:
    lw      t8, 0x02D8(s0)             # 000002D8
lbl_80B5E104:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    bne     t9, $zero, lbl_80B5E190
    sw      t9, 0x02D8(s0)             # 000002D8
    jal     func_80026950
    lw      a0, 0x005C($sp)
    beq     v0, $zero, lbl_80B5E158
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80B5E158
    nop
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5E194
    lw      $ra, 0x0034($sp)
lbl_80B5E158:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f4
    trunc.w.s $f6, $f18
    mfc1    t2, $f6
    nop
    sw      t2, 0x02D8(s0)             # 000002D8
lbl_80B5E190:
    lw      $ra, 0x0034($sp)
lbl_80B5E194:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80B5E1A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4638             # a1 = 06004638
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lbu     t6, 0x0304(a0)             # 00000304
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t8, 0x008A(a0)             # 0000008A
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    lui     a1, %hi(func_80B5E220)     # a1 = 80B60000
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    addiu   a1, a1, %lo(func_80B5E220) # a1 = 80B5E220
    sb      t7, 0x0304(a0)             # 00000304
    sw      t9, 0x02C4(a0)             # 000002C4
    sh      $zero, 0x02EA(a0)          # 000002EA
    sw      t0, 0x02D8(a0)             # 000002D8
    swc1    $f4, 0x0188(a0)            # 00000188
    sh      t8, 0x00B6(a0)             # 000000B6
    jal     func_80B5C930
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5E220:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lh      v0, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      v1, 0x1C44(t6)             # 00001C44
    lh      t7, 0x00B6(v1)             # 000000B6
    subu    t8, t7, v0
    sh      t8, 0x0042($sp)
    lh      t9, 0x008A(s0)             # 0000008A
    lh      t2, 0x0042($sp)
    lh      t3, 0x0042($sp)
    subu    t0, t9, v0
    sh      t0, 0x0040($sp)
    lwc1    $f4, 0x0190(s0)            # 00000190
    subu    t4, $zero, t3
    trunc.w.s $f6, $f4
    mfc1    a2, $f6
    bgezl   t2, lbl_80B5E284
    lh      t5, 0x0040($sp)
    sh      t4, 0x0042($sp)
    lh      t5, 0x0040($sp)
lbl_80B5E284:
    lh      t6, 0x0040($sp)
    slti    $at, a2, 0x0009
    bgez    t5, lbl_80B5E298
    subu    t7, $zero, t6
    sh      t7, 0x0040($sp)
lbl_80B5E298:
    bne     $at, $zero, lbl_80B5E2A8
    swc1    $f8, 0x0068(s0)            # 00000068
    slti    $at, a2, 0x000D
    bne     $at, $zero, lbl_80B5E2BC
lbl_80B5E2A8:
    slti    $at, a2, 0x0011
    bne     $at, $zero, lbl_80B5E2E8
    slti    $at, a2, 0x0014
    beql    $at, $zero, lbl_80B5E2EC
    sh      $zero, 0x02E8(s0)          # 000002E8
lbl_80B5E2BC:
    lh      t8, 0x02E8(s0)             # 000002E8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x383F          # a1 = 0000383F
    bnel    t8, $zero, lbl_80B5E2E0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    jal     func_80022FD0
    sw      a2, 0x003C($sp)
    lw      a2, 0x003C($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
lbl_80B5E2E0:
    b       lbl_80B5E2EC
    sh      t9, 0x02E8(s0)             # 000002E8
lbl_80B5E2E8:
    sh      $zero, 0x02E8(s0)          # 000002E8
lbl_80B5E2EC:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a2, $at, lbl_80B5E33C
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8002691C
    sw      a2, 0x003C($sp)
    bne     v0, $zero, lbl_80B5E33C
    lw      a2, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    jal     func_80021A28
    sw      a2, 0x003C($sp)
    beq     v0, $zero, lbl_80B5E350
    lw      a2, 0x003C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    c.le.s  $f16, $f10
    nop
    bc1t    lbl_80B5E350
lbl_80B5E33C:
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0
    sw      a2, 0x003C($sp)
    beq     v0, $zero, lbl_80B5E560
    lw      a2, 0x003C($sp)
lbl_80B5E350:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a2, $at, lbl_80B5E3FC
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D8(s0)             # 000002D8
    beq     v0, $zero, lbl_80B5E3FC
    addiu   t0, v0, 0xFFFC             # t0 = FFFFFFFC
    mtc1    t0, $f18                   # $f18 = NaN
    lui     $at, %hi(var_80B607A8)     # $at = 80B60000
    lwc1    $f6, %lo(var_80B607A8)($at)
    cvt.s.w $f4, $f18
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lui     $at, %hi(var_80B607AC)     # $at = 80B60000
    lwc1    $f18, %lo(var_80B607AC)($at)
    lh      t5, 0x00B6(s0)             # 000000B6
    mul.s   $f8, $f4, $f6
    lui     $at, 0x4000                # $at = 40000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f16, $f10, $f8
    mtc1    $at, $f10                  # $f10 = 2.00
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4170                 # a3 = 41700000
    mul.s   $f4, $f18, $f16
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    addu    t6, t5, t4
    sh      t6, 0x00B6(s0)             # 000000B6
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x004C($sp)
    jal     func_800260E8
    swc1    $f10, 0x0014($sp)
    lw      t1, 0x02D8(s0)             # 000002D8
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    b       lbl_80B5E560
    sw      t2, 0x02D8(s0)             # 000002D8
lbl_80B5E3FC:
    addiu   a1, $zero, 0x1554          # a1 = 00001554
    jal     func_80021A28
    sw      a2, 0x003C($sp)
    bne     v0, $zero, lbl_80B5E468
    lw      a2, 0x003C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     a2, $at, lbl_80B5E468
    nop
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    mul.s   $f8, $f0, $f2
    add.s   $f18, $f8, $f2
    trunc.w.s $f16, $f18
    mfc1    t5, $f16
    nop
    sw      t5, 0x02D8(s0)             # 000002D8
    lh      t4, 0x0040($sp)
    slti    $at, t4, 0x32C9
    bnel    $at, $zero, lbl_80B5E564
    lw      $ra, 0x0034($sp)
    b       lbl_80B5E560
    sh      t6, 0x02D2(s0)             # 000002D2
lbl_80B5E468:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B607B0)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B607B0)($at)
    lui     $at, 0x42F0                # $at = 42F00000
    c.lt.s  $f4, $f0
    nop
    bc1t    lbl_80B5E4A8
    nop
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 120.00
    nop
    c.le.s  $f10, $f6
    nop
    bc1fl   lbl_80B5E4E0
    lh      t9, 0x008A(s0)             # 0000008A
lbl_80B5E4A8:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    nop
    mul.s   $f8, $f0, $f2
    add.s   $f18, $f8, $f2
    trunc.w.s $f16, $f18
    mfc1    t8, $f16
    b       lbl_80B5E560
    sw      t8, 0x02D8(s0)             # 000002D8
    lh      t9, 0x008A(s0)             # 0000008A
lbl_80B5E4E0:
    jal     func_800CDCCC              # Rand.Next() float
    sh      t9, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80B607B4)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B607B4)($at)
    lh      t0, 0x0042($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0
    slti    $at, t0, 0x2711
    bc1f    lbl_80B5E518
    nop
    jal     func_80B5F224
    lw      a1, 0x004C($sp)
    b       lbl_80B5E564
    lw      $ra, 0x0034($sp)
lbl_80B5E518:
    beq     $at, $zero, lbl_80B5E558
    lh      t1, 0x0040($sp)
    slti    $at, t1, 0x3E81
    bne     $at, $zero, lbl_80B5E544
    lw      a0, 0x004C($sp)
    lh      t2, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5DB88
    sh      t2, 0x0032(s0)             # 00000032
    b       lbl_80B5E564
    lw      $ra, 0x0034($sp)
lbl_80B5E544:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    b       lbl_80B5E564
    lw      $ra, 0x0034($sp)
lbl_80B5E558:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5E560:
    lw      $ra, 0x0034($sp)
lbl_80B5E564:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B5E574:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0028($sp)
    mtc1    $at, $f12                  # $f12 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lwc1    $f2, 0x0190(s0)            # 00000190
    lui     a1, 0x0600                 # a1 = 06000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    trunc.w.s $f4, $f2
    mov.s   $f0, $f12
    addiu   a1, a1, 0x4638             # a1 = 06004638
    addiu   a0, s0, 0x0178             # a0 = 00000178
    mfc1    t7, $f4
    lui     a2, 0xBF00                 # a2 = BF000000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    slti    $at, t7, 0x0010
    bne     $at, $zero, lbl_80B5E5CC
    sub.s   $f6, $f2, $f12
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f0                   # $f0 = 15.00
    nop
lbl_80B5E5CC:
    mfc1    a3, $f6
    swc1    $f0, 0x0010($sp)
    sw      t8, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    lui     a1, %hi(func_80B5E610)     # a1 = 80B60000
    sw      t9, 0x02C4(s0)             # 000002C4
    sh      $zero, 0x02E8(s0)          # 000002E8
    addiu   a1, a1, %lo(func_80B5E610) # a1 = 80B5E610
    jal     func_80B5C930
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5E610:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lh      v0, 0x00B6(s0)             # 000000B6
    lh      t8, 0x008A(s0)             # 0000008A
    lw      v1, 0x1C44(t6)             # 00001C44
    addiu   a0, s0, 0x0178             # a0 = 00000178
    subu    a3, t8, v0
    lh      t7, 0x00B6(v1)             # 000000B6
    sll     a3, a3, 16
    sra     a3, a3, 16
    subu    a2, t7, v0
    sll     a2, a2, 16
    sra     a2, a2, 16
    bgez    a2, lbl_80B5E668
    nop
    subu    a2, $zero, a2
    sll     a2, a2, 16
    sra     a2, a2, 16
lbl_80B5E668:
    bgezl   a3, lbl_80B5E680
    sh      a2, 0x0022($sp)
    subu    a3, $zero, a3
    sll     a3, a3, 16
    sra     a3, a3, 16
    sh      a2, 0x0022($sp)
lbl_80B5E680:
    jal     func_8008C9C0
    sh      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80B5E7F4
    lh      a2, 0x0022($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1554          # a1 = 00001554
    jal     func_80021A28
    sh      a2, 0x0022($sp)
    bne     v0, $zero, lbl_80B5E6F4
    lh      a2, 0x0022($sp)
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    mul.s   $f4, $f0, $f2
    add.s   $f6, $f4, $f2
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    nop
    sw      t0, 0x02D8(s0)             # 000002D8
    lh      t1, 0x0020($sp)
    slti    $at, t1, 0x32C9
    bnel    $at, $zero, lbl_80B5E7F8
    lw      $ra, 0x001C($sp)
    b       lbl_80B5E7F4
    sh      t2, 0x02D2(s0)             # 000002D2
lbl_80B5E6F4:
    jal     func_800CDCCC              # Rand.Next() float
    sh      a2, 0x0022($sp)
    lui     $at, %hi(var_80B607B8)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B607B8)($at)
    lui     $at, 0x42F0                # $at = 42F00000
    lh      a2, 0x0022($sp)
    c.lt.s  $f10, $f0
    nop
    bc1t    lbl_80B5E738
    nop
    lwc1    $f16, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 120.00
    nop
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_80B5E770
    lh      t5, 0x008A(s0)             # 0000008A
lbl_80B5E738:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    nop
    mul.s   $f4, $f0, $f2
    add.s   $f6, $f4, $f2
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    b       lbl_80B5E7F4
    sw      t4, 0x02D8(s0)             # 000002D8
    lh      t5, 0x008A(s0)             # 0000008A
lbl_80B5E770:
    sh      t5, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sh      a2, 0x0022($sp)
    lui     $at, %hi(var_80B607BC)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B607BC)($at)
    lh      a2, 0x0022($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f0
    slti    $at, a2, 0x2711
    bc1f    lbl_80B5E7AC
    nop
    jal     func_80B5F224
    lw      a1, 0x002C($sp)
    b       lbl_80B5E7F8
    lw      $ra, 0x001C($sp)
lbl_80B5E7AC:
    beq     $at, $zero, lbl_80B5E7EC
    lh      t6, 0x0020($sp)
    slti    $at, t6, 0x3E81
    bne     $at, $zero, lbl_80B5E7D8
    lw      a0, 0x002C($sp)
    lh      t7, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5DB88
    sh      t7, 0x0032(s0)             # 00000032
    b       lbl_80B5E7F8
    lw      $ra, 0x001C($sp)
lbl_80B5E7D8:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    b       lbl_80B5E7F8
    lw      $ra, 0x001C($sp)
lbl_80B5E7EC:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5E7F4:
    lw      $ra, 0x001C($sp)
lbl_80B5E7F8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5E808:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4AD0             # a1 = 06004AD0
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f4                   # $f4 = -6.00
    lh      v0, 0x008A(a0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    sw      $zero, 0x02D8(a0)          # 000002D8
    sh      t6, 0x02F0(a0)             # 000002F0
    sw      t7, 0x02C4(a0)             # 000002C4
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      v0, 0x0032(a0)             # 00000032
    jal     func_80022FD0
    sh      v0, 0x00B6(a0)             # 000000B6
    lui     a1, %hi(func_80B5E884)     # a1 = 80B60000
    lw      a0, 0x0018($sp)
    jal     func_80B5C930
    addiu   a1, a1, %lo(func_80B5E884) # a1 = 80B5E884
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5E884:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_80B5E958
    lw      a0, 0x0024($sp)
    jal     func_80026950
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5E920
    lui     $at, 0x432A                # $at = 432A0000
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f4                   # $f4 = 170.00
    lui     $at, 0x430C                # $at = 430C0000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B5E924
    lw      t6, 0x0024($sp)
    mtc1    $at, $f6                   # $f6 = 140.00
    nop
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80B5E924
    lw      t6, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B607C0)     # $at = 80B60000
    lwc1    $f8, %lo(var_80B607C0)($at)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80B5E924
    lw      t6, 0x0024($sp)
    jal     func_80B5D45C
    lw      a1, 0x0024($sp)
    b       lbl_80B5E95C
    lw      t9, 0x0024($sp)
lbl_80B5E920:
    lw      t6, 0x0024($sp)
lbl_80B5E924:
    lui     t7, 0x0001                 # t7 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t7, t7, t6
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B5E950
    nop
    jal     func_80B5F224
    or      a1, t6, $zero              # a1 = 00000000
    b       lbl_80B5E95C
    lw      t9, 0x0024($sp)
lbl_80B5E950:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5E958:
    lw      t9, 0x0024($sp)
lbl_80B5E95C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x009C(t9)             # 0000009C
    andi    t1, t0, 0x005F             # t1 = 00000000
    bnel    t1, $zero, lbl_80B5E97C
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
    lw      $ra, 0x001C($sp)
lbl_80B5E97C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B5E98C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     t6, 0x0088(a3)             # 00000088
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B5E9BC
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0068(a3)            # 00000068
lbl_80B5E9BC:
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9B20             # a1 = 06009B20
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D278
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    lui     a1, %hi(func_80B5EA04)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5EA04) # a1 = 80B5EA04
    jal     func_80B5C930
    sw      t8, 0x02C4(a0)             # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5EA04:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     v0, 0x0088(a3)             # 00000088
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80B5EA34
    andi    t7, v0, 0x0001             # t7 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lhu     v0, 0x0088(a3)             # 00000088
    swc1    $f4, 0x0068(a3)            # 00000068
    andi    t7, v0, 0x0001             # t7 = 00000000
lbl_80B5EA34:
    beql    t7, $zero, lbl_80B5EA6C
    lbu     t8, 0x0114(a3)             # 00000114
    lwc1    $f0, 0x0068(a3)            # 00000068
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_80B607C4)     # $at = 80B60000
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80B5EA68
    sh      $zero, 0x02F0(a3)          # 000002F0
    lwc1    $f8, %lo(var_80B607C4)($at)
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x0068(a3)           # 00000068
    sh      $zero, 0x02F0(a3)          # 000002F0
lbl_80B5EA68:
    lbu     t8, 0x0114(a3)             # 00000114
lbl_80B5EA6C:
    bnel    t8, $zero, lbl_80B5EAB4
    lw      $ra, 0x0014($sp)
    lhu     t9, 0x0088(a3)             # 00000088
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80B5EAB4
    lw      $ra, 0x0014($sp)
    lbu     t1, 0x00AF(a3)             # 000000AF
    lw      a0, 0x001C($sp)
    or      a1, a3, $zero              # a1 = 00000000
    bne     t1, $zero, lbl_80B5EAA8
    nop
    jal     func_80B5F90C
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80B5EAB4
    lw      $ra, 0x0014($sp)
lbl_80B5EAA8:
    jal     func_80B5CC0C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
lbl_80B5EAB4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5EAC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9B20             # a1 = 06009B20
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0xC080                # $at = C0800000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lhu     t6, 0x0088(a3)             # 00000088
    or      a0, a3, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80B5EB18
    sh      t8, 0x02F0(a3)             # 000002F0
    mtc1    $at, $f4                   # $f4 = -4.00
    sh      $zero, 0x02F0(a3)          # 000002F0
    b       lbl_80B5EB18
    swc1    $f4, 0x0068(a3)            # 00000068
    sh      t8, 0x02F0(a3)             # 000002F0
lbl_80B5EB18:
    lh      t9, 0x008A(a3)             # 0000008A
    sh      $zero, 0x02D2(a3)          # 000002D2
    addiu   a1, $zero, 0x3843          # a1 = 00003843
    sh      t9, 0x0032(a3)             # 00000032
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    lui     a1, %hi(func_80B5EB58)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5EB58) # a1 = 80B5EB58
    jal     func_80B5C930
    sw      t0, 0x02C4(a0)             # 000002C4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5EB58:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B5EB90
    addiu   a3, $zero, 0x1194          # a3 = 00001194
    mtc1    $zero, $f4                 # $f4 = 0.00
    lhu     v0, 0x0088(s0)             # 00000088
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80B5EB90:
    andi    t7, v0, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80B5EBCC
    lh      a1, 0x008A(s0)             # 0000008A
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_80B607C8)     # $at = 80B60000
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80B5EBC8
    sh      $zero, 0x02F0(s0)          # 000002F0
    lwc1    $f8, %lo(var_80B607C8)($at)
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x0068(s0)           # 00000068
    sh      $zero, 0x02F0(s0)          # 000002F0
lbl_80B5EBC8:
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B5EBCC:
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B5CC0C
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_80B5ED50
    lw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_80B5ED50
    lw      $ra, 0x0024($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B5ED4C
    andi    t1, v0, 0x0008             # t1 = 00000000
    lh      t9, 0x007E(s0)             # 0000007E
    lh      t0, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)
    subu    v1, t9, t0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_80B5EC38
    nop
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B5EC38:
    beq     t1, $zero, lbl_80B5EC84
    nop
    bltz    v1, lbl_80B5EC50
    subu    v0, $zero, v1
    b       lbl_80B5EC50
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5EC50:
    slti    $at, v0, 0x2EE0
    beq     $at, $zero, lbl_80B5EC84
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f18                  # $f18 = 120.00
    lwc1    $f16, 0x0090(s0)           # 00000090
    c.lt.s  $f16, $f18
    nop
    bc1f    lbl_80B5EC84
    nop
    jal     func_80B5ED60
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5ED50
    lw      $ra, 0x0024($sp)
lbl_80B5EC84:
    jal     func_80B60484
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5ED4C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lw      a0, 0x002C($sp)
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_80B5ECE8
    nop
    jal     func_80026950
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B5ECE8
    lw      t2, 0x002C($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x0007             # t4 = 00000000
    beq     t4, $zero, lbl_80B5ECE8
    nop
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5ED50
    lw      $ra, 0x0024($sp)
lbl_80B5ECE8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    nop
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_80B5ED44
    nop
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sh      t7, 0x02D2(s0)             # 000002D2
    mul.s   $f10, $f0, $f2
    add.s   $f16, $f10, $f2
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    b       lbl_80B5ED4C
    sw      t6, 0x02D8(s0)             # 000002D8
lbl_80B5ED44:
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5ED4C:
    lw      $ra, 0x0024($sp)
lbl_80B5ED50:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5ED60:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4AD0             # a0 = 06004AD0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    cvt.s.w $f4, $f4
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x4AD0             # a1 = 06004AD0
    mfc1    a3, $f4
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lui     $at, 0x40D0                # $at = 40D00000
    mtc1    $at, $f10                  # $f10 = 6.50
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sw      $zero, 0x02D8(s0)          # 000002D8
    sh      $zero, 0x02F0(s0)          # 000002F0
    sw      t7, 0x02C4(s0)             # 000002C4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    swc1    $f10, 0x0068(s0)           # 00000068
    jal     func_80022FD0
    swc1    $f16, 0x0060(s0)           # 00000060
    lh      t8, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_80B5EE18)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5EE18) # a1 = 80B5EE18
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5C930
    sh      t8, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5EE18:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    lw      a0, 0x002C($sp)
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_80B5EE7C
    nop
    jal     func_80028320
    addiu   a1, s0, 0x04B8             # a1 = 000004B8
    lw      a0, 0x002C($sp)
    jal     func_80028320
    addiu   a1, s0, 0x04AC             # a1 = 000004AC
lbl_80B5EE7C:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_80B5EEF0
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x0088(s0)             # 00000088
    or      a1, s0, $zero              # a1 = 00000000
    andi    t8, t7, 0x0003             # t8 = 00000000
    beql    t8, $zero, lbl_80B5EEF0
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      v0, 0x008A(s0)             # 0000008A
    lwc1    $f8, 0x0080(s0)            # 00000080
    sh      $zero, 0x00B4(s0)          # 000000B4
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x0032(s0)             # 00000032
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_80026950
    lw      a0, 0x002C($sp)
    bne     v0, $zero, lbl_80B5EEE4
    nop
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5EEF0
    lw      $ra, 0x0024($sp)
lbl_80B5EEE4:
    jal     func_80B5D1B8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B5EEF0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5EF00:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4CA4             # a0 = 06004CA4
    lh      t6, 0x02E8(s0)             # 000002E8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     t6, $zero, lbl_80B5EF38
    cvt.s.w $f2, $f4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sh      t7, 0x02E8(s0)             # 000002E8
lbl_80B5EF38:
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    swc1    $f0, 0x0068(s0)            # 00000068
    sw      t8, 0x02C4(s0)             # 000002C4
    sw      t9, 0x02D8(s0)             # 000002D8
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t0, 0x0014($sp)
    addiu   a1, a1, 0x4CA4             # a1 = 06004CA4
    swc1    $f2, 0x0010($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lui     a1, %hi(func_80B5EFA0)     # a1 = 80B60000
    addiu   a1, a1, %lo(func_80B5EFA0) # a1 = 80B5EFA0
    jal     func_80B5C930
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B5EFA0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      v0, 0x02D8(s0)             # 000002D8
    lw      t6, 0x003C($sp)
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_80B5EFD4
    lw      t1, 0x1C44(t6)             # 00001C44
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_80B5EFE4
    sw      t7, 0x02D8(s0)             # 000002D8
lbl_80B5EFD4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    nop
    swc1    $f4, 0x0194(s0)            # 00000194
lbl_80B5EFE4:
    jal     func_8008C9C0
    sw      t1, 0x0034($sp)
    beq     v0, $zero, lbl_80B5F188
    lw      t1, 0x0034($sp)
    lh      t0, 0x00B6(s0)             # 000000B6
    lh      t8, 0x008A(s0)             # 0000008A
    subu    v0, t8, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B5F018
    subu    v1, $zero, v0
    b       lbl_80B5F018
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B5F018:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_80B5F178
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f6, $f8
    nop
    bc1f    lbl_80B5F178
    nop
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f16                  # $f16 = 50.00
    lw      a0, 0x003C($sp)
    c.le.s  $f10, $f0
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    bc1f    lbl_80B5F070
    addiu   t9, $zero, 0x4000          # t9 = 00004000
    b       lbl_80B5F074
    mov.s   $f2, $f0
lbl_80B5F070:
    neg.s   $f2, $f0
lbl_80B5F074:
    c.lt.s  $f2, $f16
    nop
    bc1f    lbl_80B5F178
    nop
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    jal     func_8002821C
    sw      t1, 0x0034($sp)
    beq     v0, $zero, lbl_80B5F0F4
    lw      t1, 0x0034($sp)
    lb      t2, 0x0832(t1)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lw      t3, 0x003C($sp)
    bne     t2, $at, lbl_80B5F0C0
    lui     t4, 0x0001                 # t4 = 00010000
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F210
    nop
lbl_80B5F0C0:
    addu    t4, t4, t3
    lw      t4, 0x1DE4(t4)             # 00001DE4
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_80B5F0E4
    nop
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F210
    nop
lbl_80B5F0E4:
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F0F4:
    lh      t6, 0x00B6(t1)             # 000000B6
    lh      t7, 0x00B6(s0)             # 000000B6
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    subu    a2, t6, t7
    sll     a2, a2, 16
    sra     a2, a2, 16
    jal     func_80026950
    sh      a2, 0x002C($sp)
    bne     v0, $zero, lbl_80B5F168
    lh      a2, 0x002C($sp)
    lw      t8, 0x003C($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, t8
    lw      t9, 0x1DE4(t9)             # 00011DE4
    andi    t2, t9, 0x0001             # t2 = 00000000
    bne     t2, $zero, lbl_80B5F158
    nop
    bltz    a2, lbl_80B5F14C
    subu    v1, $zero, a2
    b       lbl_80B5F14C
    or      v1, a2, $zero              # v1 = 00000000
lbl_80B5F14C:
    slti    $at, v1, 0x38E0
    beq     $at, $zero, lbl_80B5F168
    nop
lbl_80B5F158:
    jal     func_80B5E1A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F168:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F178:
    jal     func_80B5DB88
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F188:
    lw      t3, 0x02D8(s0)             # 000002D8
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bne     t3, $zero, lbl_80B5F210
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   t4, $zero, 0x4000          # t4 = 00004000
    sw      t4, 0x0010($sp)
    lh      t5, 0x00B6(s0)             # 000000B6
    sw      t1, 0x0034($sp)
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    jal     func_8002821C
    sw      t5, 0x0014($sp)
    beq     v0, $zero, lbl_80B5F210
    lw      t1, 0x0034($sp)
    lb      t6, 0x0832(t1)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lw      t7, 0x003C($sp)
    bne     t6, $at, lbl_80B5F1E4
    lui     t8, 0x0001                 # t8 = 00010000
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F1E4:
    addu    t8, t8, t7
    lw      t8, 0x1DE4(t8)             # 00001DE4
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B5F208
    nop
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5F214
    lw      $ra, 0x0024($sp)
lbl_80B5F208:
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5F210:
    lw      $ra, 0x0024($sp)
lbl_80B5F214:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5F224:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x57A0             # a0 = 060057A0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x57A0             # a1 = 060057A0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      t7, 0x003C($sp)
    lh      t9, 0x02EE(s0)             # 000002EE
    lh      t0, 0x008A(s0)             # 0000008A
    lw      v0, 0x1C44(t7)             # 00001C44
    lh      t8, 0x00B6(v0)             # 000000B6
    addu    v1, t8, t9
    sll     v1, v1, 16
    sra     v1, v1, 16
    subu    a0, v1, t0
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      v1, 0x0036($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      v1, 0x0036($sp)
    addiu   t1, $zero, 0x3E80          # t1 = 00003E80
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80B5F2D8
    lh      t2, 0x008A(s0)             # 0000008A
    b       lbl_80B5F33C
    sh      t1, 0x02EE(s0)             # 000002EE
    lh      t2, 0x008A(s0)             # 0000008A
lbl_80B5F2D8:
    subu    a0, v1, t2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t3, $zero, 0xC180          # t3 = FFFFC180
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80B5F308
    nop
    b       lbl_80B5F33C
    sh      t3, 0x02EE(s0)             # 000002EE
lbl_80B5F308:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    addiu   t4, $zero, 0x3E80          # t4 = 00003E80
    addiu   t5, $zero, 0xC180          # t5 = FFFFC180
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80B5F33C
    sh      t5, 0x02EE(s0)             # 000002EE
    b       lbl_80B5F33C
    sh      t4, 0x02EE(s0)             # 000002EE
    sh      t5, 0x02EE(s0)             # 000002EE
lbl_80B5F33C:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    lui     $at, %hi(var_80B607CC)     # $at = 80B60000
    lh      t6, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f4, %lo(var_80B607CC)($at)
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t6, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f4
    swc1    $f8, 0x02DC(s0)            # 000002DC
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0194(s0)            # 00000194
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    mul.s   $f16, $f0, $f10
    addiu   t9, $zero, 0x000E          # t9 = 0000000E
    lui     a1, %hi(func_80B5F3BC)     # a1 = 80B60000
    sw      t9, 0x02C4(s0)             # 000002C4
    addiu   a1, a1, %lo(func_80B5F3BC) # a1 = 80B5F3BC
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    jal     func_80B5C930
    sw      t8, 0x02D8(s0)             # 000002D8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B5F3BC:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0074($sp)
    lw      t6, 0x0074($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      t7, 0x1C44(t6)             # 00001C44
    swc1    $f4, 0x0058($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    sw      t7, 0x0068($sp)
    lh      t9, 0x02EE(s0)             # 000002EE
    lh      t8, 0x008A(s0)             # 0000008A
    sw      t0, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    a1, t8, t9
    sll     a1, a1, 16
    sra     a1, a1, 16
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lhu     v1, 0x0088(s0)             # 00000088
    andi    v1, v1, 0x0008             # v1 = 00000000
    bne     v1, $zero, lbl_80B5F440
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0074($sp)
    lw      a2, 0x0068(s0)             # 00000068
    jal     func_80026850
    lh      a3, 0x00B6(s0)             # 000000B6
    bnel    v0, $zero, lbl_80B5F494
    lh      t7, 0x00B6(s0)             # 000000B6
    lhu     v1, 0x0088(s0)             # 00000088
    andi    v1, v1, 0x0008             # v1 = 00000000
lbl_80B5F440:
    beq     v1, $zero, lbl_80B5F468
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t1, 0x007E(s0)             # 0000007E
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t4, 0x02EE(s0)             # 000002EE
    subu    t3, t1, t2
    subu    v0, t3, t4
    sll     v0, v0, 16
    b       lbl_80B5F468
    sra     v0, v0, 16
lbl_80B5F468:
    bltz    v0, lbl_80B5F478
    subu    v1, $zero, v0
    b       lbl_80B5F478
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B5F478:
    slti    $at, v1, 0x2EE1
    bnel    $at, $zero, lbl_80B5F494
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      t5, 0x02EE(s0)             # 000002EE
    subu    t6, $zero, t5
    sh      t6, 0x02EE(s0)             # 000002EE
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80B5F494:
    or      a1, s0, $zero              # a1 = 00000000
    sh      t7, 0x0032(s0)             # 00000032
    jal     func_80026950
    lw      a0, 0x0074($sp)
    beq     v0, $zero, lbl_80B5F4B8
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f2                   # $f2 = 150.00
    nop
    swc1    $f2, 0x0058($sp)
lbl_80B5F4B8:
    lui     $at, 0x4270                # $at = 42700000
    lwc1    $f2, 0x0058($sp)
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    add.s   $f8, $f6, $f2
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80B5F504
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a1, 0xC080                 # a1 = C0800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    b       lbl_80B5F564
    lwc1    $f2, 0x02DC(s0)            # 000002DC
    lui     $at, 0x42A0                # $at = 42A00000
lbl_80B5F504:
    mtc1    $at, $f18                  # $f18 = 80.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    add.s   $f4, $f18, $f2
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D4                 # a3 = 40D40000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80B5F554
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    b       lbl_80B5F564
    lwc1    $f2, 0x02DC(s0)            # 000002DC
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80B5F554:
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lwc1    $f2, 0x02DC(s0)            # 000002DC
lbl_80B5F564:
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.eq.s  $f10, $f2
    nop
    bc1tl   lbl_80B5F5B8
    mtc1    $zero, $f16                # $f16 = 0.00
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x02DC(s0)            # 000002DC
    lwc1    $f18, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4
    add.s   $f8, $f18, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f2, 0x02DC(s0)            # 000002DC
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f4, $f0, $f2
    add.s   $f18, $f10, $f4
    swc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_80B5F5B8:
    nop
    c.le.s  $f16, $f2
    nop
    bc1fl   lbl_80B5F5D8
    neg.s   $f14, $f2
    b       lbl_80B5F5D8
    mov.s   $f14, $f2
    neg.s   $f14, $f2
lbl_80B5F5D8:
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_80B607D4)     # $at = 80B60000
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B5F5FC
    neg.s   $f12, $f0
    b       lbl_80B5F5FC
    mov.s   $f12, $f0
    neg.s   $f12, $f0
lbl_80B5F5FC:
    c.lt.s  $f14, $f12
    nop
    bc1f    lbl_80B5F620
    nop
    lui     $at, %hi(var_80B607D0)     # $at = 80B60000
    lwc1    $f6, %lo(var_80B607D0)($at)
    mul.s   $f8, $f0, $f6
    b       lbl_80B5F62C
    swc1    $f8, 0x0194(s0)            # 00000194
lbl_80B5F620:
    lwc1    $f10, %lo(var_80B607D4)($at)
    mul.s   $f4, $f2, $f10
    swc1    $f4, 0x0194(s0)            # 00000194
lbl_80B5F62C:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f2                   # $f2 = -3.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80B5F658
    mtc1    $at, $f18                  # $f18 = 3.00
    b       lbl_80B5F680
    swc1    $f2, 0x0194(s0)            # 00000194
    mtc1    $at, $f18                  # $f18 = 3.00
lbl_80B5F658:
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80B5F67C
    mov.s   $f12, $f0
    mtc1    $at, $f12                  # $f12 = 3.00
    b       lbl_80B5F680
    swc1    $f12, 0x0194(s0)           # 00000194
    mov.s   $f12, $f0
lbl_80B5F67C:
    swc1    $f12, 0x0194(s0)           # 00000194
lbl_80B5F680:
    lwc1    $f6, 0x0190(s0)            # 00000190
    addiu   a0, s0, 0x0178             # a0 = 00000178
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    jal     func_8008C9C0
    sw      t9, 0x0064($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B5F6C4
    neg.s   $f12, $f0
    b       lbl_80B5F6C4
    mov.s   $f12, $f0
    neg.s   $f12, $f0
lbl_80B5F6C4:
    lwc1    $f10, 0x0190(s0)           # 00000190
    c.le.s  $f16, $f0
    lw      a0, 0x0074($sp)
    sub.s   $f4, $f10, $f12
    trunc.w.s $f18, $f4
    mfc1    t1, $f18
    bc1f    lbl_80B5F6EC
    sw      t1, 0x0060($sp)
    b       lbl_80B5F6F0
    mov.s   $f12, $f0
lbl_80B5F6EC:
    neg.s   $f12, $f0
lbl_80B5F6F0:
    jal     func_80B5CC0C
    swc1    $f12, 0x0044($sp)
    bne     v0, $zero, lbl_80B5F8F8
    lwc1    $f12, 0x0044($sp)
    lw      t2, 0x02D8(s0)             # 000002D8
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    bne     t3, $zero, lbl_80B5F83C
    sw      t3, 0x02D8(s0)             # 000002D8
    lw      t5, 0x0068($sp)
    lh      v1, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x00B6(t5)             # 000000B6
    lw      t9, 0x0074($sp)
    subu    v0, t6, v1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgezl   v0, lbl_80B5F748
    slti    $at, v0, 0x3A98
    subu    v0, $zero, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x3A98
lbl_80B5F748:
    bnel    $at, $zero, lbl_80B5F790
    lw      v0, 0x1C44(t9)             # 00001C44
    jal     func_80B5D1B8
    swc1    $f12, 0x0044($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6
    lwc1    $f12, 0x0044($sp)
    add.s   $f4, $f8, $f10
    trunc.w.s $f18, $f4
    mfc1    t8, $f18
    b       lbl_80B5F83C
    sw      t8, 0x02D8(s0)             # 000002D8
    lw      v0, 0x1C44(t9)             # 00001C44
lbl_80B5F790:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lh      t0, 0x00B6(v0)             # 000000B6
    lh      t1, 0x00B6(s0)             # 000000B6
    c.le.s  $f8, $f6
    subu    a2, t0, v1
    sll     a2, a2, 16
    sra     a2, a2, 16
    bc1f    lbl_80B5F828
    sh      t1, 0x0032(s0)             # 00000032
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sh      a2, 0x004E($sp)
    jal     func_80026950
    swc1    $f12, 0x0044($sp)
    lh      a2, 0x004E($sp)
    bne     v0, $zero, lbl_80B5F828
    lwc1    $f12, 0x0044($sp)
    lw      t2, 0x0074($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    andi    t4, t3, 0x0003             # t4 = 00000000
    beq     t4, $zero, lbl_80B5F818
    nop
    bltz    a2, lbl_80B5F80C
    subu    v1, $zero, a2
    b       lbl_80B5F80C
    or      v1, a2, $zero              # v1 = 00000000
lbl_80B5F80C:
    slti    $at, v1, 0x38E0
    beql    $at, $zero, lbl_80B5F82C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5F818:
    jal     func_80B5E1A4
    swc1    $f12, 0x0044($sp)
    b       lbl_80B5F83C
    lwc1    $f12, 0x0044($sp)
lbl_80B5F828:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5F82C:
    lw      a1, 0x0074($sp)
    jal     func_80B5D45C
    swc1    $f12, 0x0044($sp)
    lwc1    $f12, 0x0044($sp)
lbl_80B5F83C:
    lw      t5, 0x0074($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      v0, 0x0064($sp)
    addu    t6, t5, $at
    sw      t6, 0x003C($sp)
    lwc1    $f10, 0x0190(s0)           # 00000190
    lw      t9, 0x0060($sp)
    trunc.w.s $f4, $f10
    mfc1    t8, $f4
    nop
    beql    v0, t8, lbl_80B5F8DC
    lw      t7, 0x003C($sp)
    bgtzl   t9, lbl_80B5F8DC
    lw      t7, 0x003C($sp)
    trunc.w.s $f18, $f12
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t1, $f18
    nop
    addu    t2, t1, v0
    blezl   t2, lbl_80B5F8DC
    lw      t7, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x385A          # a1 = 0000385A
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0010($sp)
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_800260E8
    swc1    $f6, 0x0014($sp)
    lw      t7, 0x003C($sp)
lbl_80B5F8DC:
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x1DE4(t7)             # 00001DE4
    andi    t9, t8, 0x005F             # t9 = 00000000
    bnel    t9, $zero, lbl_80B5F8FC
    lw      $ra, 0x0034($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x383E          # a1 = 0000383E
lbl_80B5F8F8:
    lw      $ra, 0x0034($sp)
lbl_80B5F8FC:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80B5F90C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5430             # a1 = 06005430
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0xC0C0                # $at = C0C00000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lhu     t7, 0x0088(a3)             # 00000088
    lh      t6, 0x008A(a3)             # 0000008A
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B5F964
    sh      t6, 0x0032(a3)             # 00000032
    mtc1    $at, $f4                   # $f4 = -6.00
    sh      $zero, 0x02F0(a3)          # 000002F0
    b       lbl_80B5F968
    swc1    $f4, 0x0068(a3)            # 00000068
lbl_80B5F964:
    sh      t9, 0x02F0(a3)             # 000002F0
lbl_80B5F968:
    lwc1    $f6, 0x018C(a3)            # 0000018C
    lw      t1, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    trunc.w.s $f8, $f6
    and     t2, t1, $at
    sw      t0, 0x02C4(a3)             # 000002C4
    sw      t2, 0x0004(a3)             # 00000004
    mfc1    t4, $f8
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x384B          # a1 = 0000384B
    sw      t4, 0x02D8(a3)             # 000002D8
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lui     a1, %hi(func_80B5F9BC)     # a1 = 80B60000
    lw      a0, 0x0018($sp)
    jal     func_80B5C930
    addiu   a1, a1, %lo(func_80B5F9BC) # a1 = 80B5F9BC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B5F9BC:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s4, 0x0070($sp)
    sw      s1, 0x0064($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s3, 0x006C($sp)
    sw      s2, 0x0068($sp)
    sw      s0, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lhu     v0, 0x0088(s1)             # 00000088
    addiu   a0, s1, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B5FA10
    lui     a3, 0x3F00                 # a3 = 3F000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     v0, 0x0088(s1)             # 00000088
    swc1    $f0, 0x0068(s1)            # 00000068
lbl_80B5FA10:
    mtc1    $zero, $f0                 # $f0 = 0.00
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B5FA30
    nop
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    sh      $zero, 0x02F0(s1)          # 000002F0
lbl_80B5FA30:
    jal     func_8008C9C0
    addiu   a0, s1, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_80B5FA7C
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFE4
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, s1, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lh      a1, 0x02EC(s1)             # 000002EC
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     a1, $at, lbl_80B5FA6C
    nop
    jal     func_800204D0
    or      a0, s4, $zero              # a0 = 00000000
lbl_80B5FA6C:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_80B5FB9C
    lw      $ra, 0x0074($sp)
lbl_80B5FA7C:
    lui     t8, %hi(var_80B60730)      # t8 = 80B60000
    addiu   t8, t8, %lo(var_80B60730)  # t8 = 80B60730
    lw      t0, 0x0000(t8)             # 80B60730
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t0, 0x0000(s2)             # FFFFFFE4
    lw      t9, 0x0004(t8)             # 80B60734
    sw      t9, 0x0004(s2)             # FFFFFFE8
    lw      t0, 0x0008(t8)             # 80B60738
    sw      t0, 0x0008(s2)             # FFFFFFEC
    lwc1    $f4, 0x018C(s1)            # 0000018C
    lw      t1, 0x02D8(s1)             # 000002D8
    trunc.w.s $f6, $f4
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sw      t2, 0x02D8(s1)             # 000002D8
    mfc1    t4, $f6
    nop
    subu    s0, t4, t2
    sra     s0, s0,  1
    bltzl   s0, lbl_80B5FB9C
    lw      $ra, 0x0074($sp)
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    addiu   s3, $sp, 0x0088            # s3 = FFFFFFF0
lbl_80B5FAE4:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f8, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0088($sp)
    lwc1    $f16, 0x002C(s1)           # 0000002C
    mov.s   $f12, $f22
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0090($sp)
    lwc1    $f4, 0x0028(s1)            # 00000028
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    add.s   $f6, $f4, $f24
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    add.s   $f8, $f0, $f6
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f8, 0x008C($sp)
    sw      t4, 0x003C($sp)
    sw      t3, 0x0038($sp)
    sw      t2, 0x0034($sp)
    sw      t1, 0x0030($sp)
    sw      t0, 0x0024($sp)
    sw      t9, 0x0020($sp)
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s2, $zero              # a2 = FFFFFFE4
    jal     func_8001E1D4
    or      a3, s2, $zero              # a3 = FFFFFFE4
    addiu   s0, s0, 0xFFFF             # s0 = FFFFFFFF
    bgez    s0, lbl_80B5FAE4
    nop
    lw      $ra, 0x0074($sp)
lbl_80B5FB9C:
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    lw      s0, 0x0060($sp)
    lw      s1, 0x0064($sp)
    lw      s2, 0x0068($sp)
    lw      s3, 0x006C($sp)
    lw      s4, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_80B5FBC4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lw      v0, 0x02C4(s0)             # 000002C4
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B5FC38
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lh      v1, 0x02D2(s0)             # 000002D2
    beq     v1, $zero, lbl_80B5FC34
    sll     a0, v1,  5
    addu    a0, a0, v1
    sll     a0, a0,  2
    subu    a0, a0, v1
    sll     a0, a0,  2
    addu    a0, a0, v1
    sll     a0, a0,  3
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80B607D8)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B607D8)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    b       lbl_80B5FCA8
    sh      t7, 0x04C6(s0)             # 000004C6
lbl_80B5FC34:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80B5FC38:
    beq     v0, $at, lbl_80B5FCA8
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80B5FCA4
    addiu   a0, s0, 0x04C6             # a0 = 000004C6
    lh      t8, 0x008A(s0)             # 0000008A
    lh      t9, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    a1, t8, t9
    sll     a1, a1, 16
    sra     a1, a1, 16
    jal     func_80064508
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    lh      v0, 0x04C6(s0)             # 000004C6
    addiu   t0, $zero, 0xCED9          # t0 = FFFFCED9
    slti    $at, v0, 0xCED9
    beql    $at, $zero, lbl_80B5FC8C
    slti    $at, v0, 0x3128
    b       lbl_80B5FCA8
    sh      t0, 0x04C6(s0)             # 000004C6
    slti    $at, v0, 0x3128
lbl_80B5FC8C:
    bne     $at, $zero, lbl_80B5FC9C
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80B5FC9C
    addiu   v1, $zero, 0x3127          # v1 = 00003127
lbl_80B5FC9C:
    b       lbl_80B5FCA8
    sh      v1, 0x04C6(s0)             # 000004C6
lbl_80B5FCA4:
    sh      $zero, 0x04C6(s0)          # 000004C6
lbl_80B5FCA8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5FCBC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     v0, 0x0305(s0)             # 00000305
    andi    t6, v0, 0x0080             # t6 = 00000000
    beq     t6, $zero, lbl_80B5FD00
    andi    t7, v0, 0xFF7D             # t7 = 00000000
    lbu     t8, 0x0425(s0)             # 00000425
    lbu     t0, 0x0471(s0)             # 00000471
    sb      t7, 0x0305(s0)             # 00000305
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    sb      t9, 0x0425(s0)             # 00000425
    b       lbl_80B5FE74
    sb      t1, 0x0471(s0)             # 00000471
lbl_80B5FD00:
    lbu     a0, 0x0425(s0)             # 00000425
    andi    v0, a0, 0x0002             # v0 = 00000000
    bnel    v0, $zero, lbl_80B5FD24
    lw      t4, 0x02C4(s0)             # 000002C4
    lbu     t2, 0x0471(s0)             # 00000471
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80B5FE78
    lw      $ra, 0x0024($sp)
    lw      t4, 0x02C4(s0)             # 000002C4
lbl_80B5FD24:
    slti    $at, t4, 0x0006
    bnel    $at, $zero, lbl_80B5FE78
    lw      $ra, 0x0024($sp)
    lh      t5, 0x008A(s0)             # 0000008A
    lh      t6, 0x00B6(s0)             # 000000B6
    addiu   a1, s0, 0x042C             # a1 = 0000042C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    v1, t5, t6
    sll     v1, v1, 16
    bne     v0, $zero, lbl_80B5FD60
    sra     v1, v1, 16
    lbu     t7, 0x0471(s0)             # 00000471
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_80B5FD80
    lbu     t9, 0x00B0(s0)             # 000000B0
lbl_80B5FD60:
    bltz    v1, lbl_80B5FD70
    subu    v0, $zero, v1
    b       lbl_80B5FD70
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B5FD70:
    slti    $at, v0, 0x4A39
    bnel    $at, $zero, lbl_80B5FD90
    lbu     t2, 0x0471(s0)             # 00000471
    lbu     t9, 0x00B0(s0)             # 000000B0
lbl_80B5FD80:
    lbu     a0, 0x0425(s0)             # 00000425
    sll     t0, t9,  2
    sb      t0, 0x00B0(s0)             # 000000B0
    lbu     t2, 0x0471(s0)             # 00000471
lbl_80B5FD90:
    lbu     v0, 0x00B1(s0)             # 000000B1
    andi    t1, a0, 0xFFFD             # t1 = 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    sb      t1, 0x0425(s0)             # 00000425
    beq     v0, $at, lbl_80B5FE74
    sb      t3, 0x0471(s0)             # 00000471
    sb      v0, 0x02D6(s0)             # 000002D6
    jal     func_800283BC
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B5FDD0
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80B5FE10
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5FDD0:
    lw      t4, 0x02C4(s0)             # 000002C4
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    beq     t4, $at, lbl_80B5FE74
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    sw      t5, 0x0010($sp)
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5E98C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B5FE78
    lw      $ra, 0x0024($sp)
lbl_80B5FE10:
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t7, 0x02D6(s0)             # 000002D6
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    bne     t7, $at, lbl_80B5FE40
    nop
    sh      t8, 0x02D4(s0)             # 000002D4
lbl_80B5FE40:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B5FE6C
    nop
    jal     func_80B5F90C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_80B5FE78
    lw      $ra, 0x0024($sp)
lbl_80B5FE6C:
    jal     func_80B5EAC0
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B5FE74:
    lw      $ra, 0x0024($sp)
lbl_80B5FE78:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B5FE88:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5FCBC
    or      a1, s1, $zero              # a1 = 00000000
    lbu     t6, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t6, $at, lbl_80B5FF10
    lhu     t8, 0x0088(s0)             # 00000088
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4200                 # a2 = 42000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lw      t9, 0x02CC(s0)             # 000002CC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B5FBC4
    or      a1, s1, $zero              # a1 = 00000000
    lhu     t8, 0x0088(s0)             # 00000088
lbl_80B5FF10:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t0, t8, 0x0003             # t0 = 00000000
    beq     t0, $zero, lbl_80B5FF3C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x00B6(s0)             # 000000B6
    jal     func_80028720
    addiu   a2, s0, 0x00B4             # a2 = 000000B4
    b       lbl_80B5FF64
    lui     $at, 0x0001                # $at = 00010000
lbl_80B5FF3C:
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lui     $at, 0x0001                # $at = 00010000
lbl_80B5FF64:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    addiu   a2, s0, 0x02F4             # a2 = 000002F4
    sw      a2, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x02C4(s0)             # 000002C4
    slti    $at, v0, 0x0006
    bnel    $at, $zero, lbl_80B5FFE4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lbu     t1, 0x0114(s0)             # 00000114
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0414             # a1 = 00000414
    beq     t1, $zero, lbl_80B5FFB4
    nop
    lhu     t2, 0x0112(s0)             # 00000112
    andi    t3, t2, 0x4000             # t3 = 00000000
    bnel    t3, $zero, lbl_80B5FFE4
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80B5FFB4:
    jal     func_80050B00
    sw      a1, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0460             # a2 = 00000460
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)
    lw      v0, 0x02C4(s0)             # 000002C4
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80B5FFE4:
    bne     v0, $at, lbl_80B5FFF8
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0030($sp)
lbl_80B5FFF8:
    lh      t4, 0x02E8(s0)             # 000002E8
    blezl   t4, lbl_80B60038
    lw      t7, 0x0028(s0)             # 00000028
    lbu     t5, 0x0304(s0)             # 00000304
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    andi    t6, t5, 0x0004             # t6 = 00000000
    bne     t6, $zero, lbl_80B6002C
    nop
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0030($sp)
    b       lbl_80B60038
    lw      t7, 0x0028(s0)             # 00000028
lbl_80B6002C:
    jal     func_80B5E574
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0028(s0)             # 00000028
lbl_80B60038:
    lui     $at, 0x41C8                # $at = 41C80000
    lw      t9, 0x0024(s0)             # 00000024
    sw      t7, 0x003C(s0)             # 0000003C
    lwc1    $f6, 0x003C(s0)            # 0000003C
    mtc1    $at, $f8                   # $f8 = 25.00
    lbu     v0, 0x02F2(s0)             # 000002F2
    sw      t9, 0x0038(s0)             # 00000038
    add.s   $f10, $f6, $f8
    lw      t9, 0x002C(s0)             # 0000002C
    addiu   t4, v0, 0x0001             # t4 = 00000001
    andi    t5, t4, 0x0003             # t5 = 00000001
    swc1    $f10, 0x003C(s0)           # 0000003C
    bne     v0, $zero, lbl_80B600C4
    sw      t9, 0x0040(s0)             # 00000040
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B607DC)     # $at = 80B60000
    lwc1    $f16, %lo(var_80B607DC)($at)
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s1
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80B600CC
    lw      $ra, 0x0024($sp)
    lw      t8, 0x1DE4(t8)             # 00011DE4
    andi    t0, t8, 0x0003             # t0 = 00000000
    bnel    t0, $zero, lbl_80B600CC
    lw      $ra, 0x0024($sp)
    lbu     t1, 0x0114(s0)             # 00000114
    bnel    t1, $zero, lbl_80B600CC
    lw      $ra, 0x0024($sp)
    lbu     t2, 0x02F2(s0)             # 000002F2
    addiu   t3, t2, 0x0001             # t3 = 00000001
    b       lbl_80B600C8
    sb      t3, 0x02F2(s0)             # 000002F2
lbl_80B600C4:
    sb      t5, 0x02F2(s0)             # 000002F2
lbl_80B600C8:
    lw      $ra, 0x0024($sp)
lbl_80B600CC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B600DC:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     a1, $at, lbl_80B60100
    lw      v0, 0x0010($sp)
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bnel    a1, $at, lbl_80B60118
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B60100:
    lw      t7, 0x0014($sp)
    lh      t6, 0x0002(v0)             # 00000002
    lh      t8, 0x04C6(t7)             # 000004C6
    subu    t9, t6, t8
    sh      t9, 0x0002(v0)             # 00000002
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B60118:
    jr      $ra
    nop


func_80B60120:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a2, 0x0040($sp)
    lw      a2, 0x0048($sp)
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a3, 0x0044($sp)
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    sw      v1, 0x0030($sp)
    lw      a0, 0x003C($sp)
    jal     func_80050CE4
    addiu   a1, a2, 0x02F4             # a1 = 000002F4
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      v1, 0x0030($sp)
    bne     t6, $at, lbl_80B601BC
    lw      a2, 0x0048($sp)
    lui     a0, %hi(var_80B6073C)      # a0 = 80B60000
    addiu   a0, a0, %lo(var_80B6073C)  # a0 = 80B6073C
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFEC
    jal     func_800AB958
    sw      v1, 0x0030($sp)
    lwc1    $f4, 0x0024($sp)
    lw      a2, 0x0048($sp)
    lw      v1, 0x0030($sp)
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x04A6(a2)             # 000004A6
    lwc1    $f8, 0x0028($sp)
    trunc.w.s $f10, $f8
    mfc1    t0, $f10
    nop
    sh      t0, 0x04A8(a2)             # 000004A8
    lwc1    $f16, 0x002C($sp)
    trunc.w.s $f18, $f16
    mfc1    t2, $f18
    nop
    sh      t2, 0x04AA(a2)             # 000004AA
lbl_80B601BC:
    lh      t3, 0x02D4(a2)             # 000002D4
    lw      t7, 0x003C($sp)
    bne     t3, $zero, lbl_80B601E4
    addiu   t8, t7, 0xFFFB             # t8 = FFFFFFFB
    lbu     t4, 0x0114(a2)             # 00000114
    beql    t4, $zero, lbl_80B602BC
    lw      $ra, 0x0014($sp)
    lhu     t5, 0x0112(a2)             # 00000112
    andi    t6, t5, 0x4000             # t6 = 00000000
    beq     t6, $zero, lbl_80B602B8
lbl_80B601E4:
    sltiu   $at, t8, 0x0021
    beq     $at, $zero, lbl_80B60250
    sll     t8, t8,  2
    lui     $at, %hi(var_80B607E0)     # $at = 80B60000
    addu    $at, $at, t8
    lw      t8, %lo(var_80B607E0)($at)
    jr      t8
    nop
var_80B60204:
    b       lbl_80B60250
    or      v1, $zero, $zero           # v1 = 00000000
var_80B6020C:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0001          # v1 = 00000001
var_80B60214:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0002          # v1 = 00000002
var_80B6021C:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0003          # v1 = 00000003
var_80B60224:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0004          # v1 = 00000004
var_80B6022C:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0005          # v1 = 00000005
var_80B60234:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0006          # v1 = 00000006
var_80B6023C:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0007          # v1 = 00000007
var_80B60244:
    b       lbl_80B60250
    addiu   v1, $zero, 0x0008          # v1 = 00000008
var_80B6024C:
    addiu   v1, $zero, 0x0009          # v1 = 00000009
lbl_80B60250:
    bltz    v1, lbl_80B602B8
    lui     a0, %hi(var_80B60748)      # a0 = 80B60000
    addiu   a0, a0, %lo(var_80B60748)  # a0 = 80B60748
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFE0
    jal     func_800AB958
    sw      v1, 0x0030($sp)
    lwc1    $f4, 0x0018($sp)
    lw      v1, 0x0030($sp)
    lw      a2, 0x0048($sp)
    trunc.w.s $f6, $f4
    sll     t9, v1,  2
    subu    t9, t9, v1
    sll     t9, t9,  1
    mfc1    t1, $f6
    addu    v0, a2, t9
    sh      t1, 0x013C(v0)             # 0000013C
    lwc1    $f8, 0x001C($sp)
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x013E(v0)             # 0000013E
    lwc1    $f16, 0x0020($sp)
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x0140(v0)             # 00000140
lbl_80B602B8:
    lw      $ra, 0x0014($sp)
lbl_80B602BC:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B602C8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      t7, 0x02C4(s0)             # 000002C4
    lw      a3, 0x0000(t6)             # 00000000
    bne     t7, $zero, lbl_80B602F8
    or      a2, a3, $zero              # a2 = 00000000
    lh      t8, 0x02F0(s0)             # 000002F0
    bne     t8, $zero, lbl_80B60470
lbl_80B602F8:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8007E298
    sw      a2, 0x0030($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    lw      a2, 0x0030($sp)
    bnel    t9, $zero, lbl_80B60380
    lw      v1, 0x02C0(a2)             # 000002C0
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lbu     t2, 0x02F2(s0)             # 000002F2
    lui     a0, %hi(var_80B60754)      # a0 = 80B60000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t3, t2,  2
    addu    a0, a0, t3
    lw      a0, %lo(var_80B60754)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, a0,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, t8, t7
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t4, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t4, t8
    addu    t0, t9, $at
    sw      t0, 0x0004(v1)             # 00000004
    b       lbl_80B603E0
    lw      a1, 0x017C(s0)             # 0000017C
    lw      v1, 0x02C0(a2)             # 000002C0
lbl_80B60380:
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lbu     t3, 0x02F2(s0)             # 000002F2
    lui     a0, %hi(var_80B60764)      # a0 = 80B60000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t5, t3,  2
    addu    a0, a0, t5
    lw      a0, %lo(var_80B60764)(a0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a0,  4
    srl     t4, t7, 28
    sll     t8, t4,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t6, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t6, t9
    addu    t1, t0, $at
    sw      t1, 0x0004(v1)             # 00000004
    lw      a1, 0x017C(s0)             # 0000017C
lbl_80B603E0:
    lw      a2, 0x0198(s0)             # 00000198
    lbu     a3, 0x017A(s0)             # 0000017A
    lui     t2, %hi(func_80B600DC)     # t2 = 80B60000
    lui     t3, %hi(func_80B60120)     # t3 = 80B60000
    addiu   t3, t3, %lo(func_80B60120) # t3 = 80B60120
    addiu   t2, t2, %lo(func_80B600DC) # t2 = 80B600DC
    sw      t2, 0x0010($sp)
    sw      t3, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x003C($sp)
    lh      t5, 0x02D4(s0)             # 000002D4
    beql    t5, $zero, lbl_80B60474
    lw      $ra, 0x002C($sp)
    lh      t8, 0x02D4(s0)             # 000002D4
    lbu     t7, 0x0114(s0)             # 00000114
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t6, t8, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x02D4(s0)             # 000002D4
    lh      v1, 0x02D4(s0)             # 000002D4
    addiu   t4, t7, 0x0001             # t4 = 00000001
    sb      t4, 0x0114(s0)             # 00000114
    andi    t9, v1, 0x0003             # t9 = 00000000
    bne     t9, $zero, lbl_80B60470
    sra     v0, v1,  2
    sll     t0, v0,  2
    subu    t0, t0, v0
    sll     t0, t0,  1
    addu    a2, s0, t0
    addiu   a2, a2, 0x013C             # a2 = 0000013C
    lw      a0, 0x003C($sp)
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8001E064
    sw      v0, 0x0018($sp)
lbl_80B60470:
    lw      $ra, 0x002C($sp)
lbl_80B60474:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B60484:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80026614
    lui     a2, 0x4416                 # a2 = 44160000
    beq     v0, $zero, lbl_80B605D0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_800213B4
    sw      v0, 0x0024($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    lw      a3, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    subu    a2, v0, t7
    sll     a2, a2, 16
    sra     a2, a2, 16
    sh      t7, 0x0032(s0)             # 00000032
    sh      a2, 0x0022($sp)
    jal     func_800214D8
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lh      a2, 0x0022($sp)
    mov.s   $f2, $f0
    bltz    a2, lbl_80B604FC
    subu    v0, $zero, a2
    b       lbl_80B604FC
    or      v0, a2, $zero              # v0 = 00000000
lbl_80B604FC:
    slti    $at, v0, 0x2EE0
    beql    $at, $zero, lbl_80B60544
    lh      t8, 0x00B6(s0)             # 000000B6
    cvt.d.s $f0, $f2
    lui     $at, 0x4079                # $at = 40790000
    sqrt.d  $f0, $f0
    mtc1    $at, $f5                   # $f5 = 3.89
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.d  $f0, $f4
    nop
    bc1fl   lbl_80B60544
    lh      t8, 0x00B6(s0)             # 000000B6
    jal     func_80B5EF00
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B605D4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      t8, 0x00B6(s0)             # 000000B6
lbl_80B60544:
    subu    v0, $zero, a2
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, t8, 0x3FFF             # t9 = 00003FFF
    bltz    a2, lbl_80B60560
    sh      t9, 0x0032(s0)             # 00000032
    b       lbl_80B60560
    or      v0, a2, $zero              # v0 = 00000000
lbl_80B60560:
    slti    $at, v0, 0x2000
    bne     $at, $zero, lbl_80B60588
    nop
    bltz    a2, lbl_80B6057C
    subu    v0, $zero, a2
    b       lbl_80B6057C
    or      v0, a2, $zero              # v0 = 00000000
lbl_80B6057C:
    slti    $at, v0, 0x6000
    bne     $at, $zero, lbl_80B605A4
    nop
lbl_80B60588:
    jal     func_80B5F224
    lw      a1, 0x0028($sp)
    lwc1    $f0, 0x0068(s0)            # 00000068
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f6, $f0, $f0
    b       lbl_80B605D4
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80B605A4:
    bltz    a2, lbl_80B605B4
    subu    v0, $zero, a2
    b       lbl_80B605B4
    or      v0, a2, $zero              # v0 = 00000000
lbl_80B605B4:
    slti    $at, v0, 0x5FFF
    beq     $at, $zero, lbl_80B605C8
    nop
    jal     func_80B5E808
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B605C8:
    b       lbl_80B605D4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B605D0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B605D4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B605F0: .word \
0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, \
0x00000000, 0x01000000, 0x0F000000, 0x00000000, \
0x000F0064, 0x00000000, 0xFFCFFFFF, 0x00040000, \
0x00000000, 0x00000000, 0x01000000, 0x15000000, \
0x00000000, 0x000F0064, 0x01000000, 0x00000000, \
0x00000000, 0xFFC1FFFF, 0x00000000, 0x00050100, \
0x11000320, 0x00000000, 0x00190064, 0x01000000, \
0x00000000, 0x00000000, 0xFFC1FFFF, 0x00000000, \
0x00050100, 0x0C000000, 0x00000000, 0x001E0064
var_80B60680: .word 0x09110D39, 0x10000000, 0x00000004
.word var_80B605F0
var_80B60690: .word \
0x05000900, 0x00010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x00140032, 0x00000000, 0x00000000
var_80B606BC: .word \
0x05000900, 0x00010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x000F0014, 0xFFF10000, 0x00000000
var_80B606E8: .word \
0x10020102, 0x10020210, 0x010204E4, 0x02020202, \
0x02E460D3, 0x00000104, 0x02020804, 0x00000400
var_80B60708: .word 0x01AF0500, 0x00000015, 0x01830000, 0x000004CC
.word func_80B5C93C
.word func_80B5CB70
.word func_80B5FE88
.word func_80B602C8
var_80B60728: .word 0xB04C07D0, 0x386CF448
var_80B60730: .word 0x00000000, 0x3F000000, 0x00000000
var_80B6073C: .word 0x44960000, 0x00000000, 0x00000000
var_80B60748: .word 0x00000000, 0x00000000, 0x00000000
var_80B60754: .word 0x06007B68, 0x06008368, 0x06008568, 0x06008368
var_80B60764: .word \
0x06000300, 0x060027D8, 0x060029D8, 0x060027D8, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B60780: .word 0x3E4CCCCD
var_80B60784: .word 0x3E99999A
var_80B60788: .word 0x3E333333
var_80B6078C: .word 0x3F333333
var_80B60790: .word 0x3CF5C28F
var_80B60794: .word 0x3F4CCCCD
var_80B60798: .word 0x3E333333
var_80B6079C: .word 0x3E333333
var_80B607A0: .word 0x3E333333
var_80B607A4: .word 0xBF59999A
var_80B607A8: .word 0x3ECCCCCD
var_80B607AC: .word 0x454CC000
var_80B607B0: .word 0x3F333333
var_80B607B4: .word 0x3F333333
var_80B607B8: .word 0x3F333333
var_80B607BC: .word 0x3F333333
var_80B607C0: .word 0x3E4CCCCD
var_80B607C4: .word 0x3D4CCCCD
var_80B607C8: .word 0x3D4CCCCD
var_80B607CC: .word 0x3E333333
var_80B607D0: .word 0x3E333333
var_80B607D4: .word 0x3E333333
var_80B607D8: .word 0x460B6000
var_80B607DC: .word 0x3E4CCCCD
var_80B607E0: .word var_80B6024C
.word var_80B6022C
.word var_80B60224
.word lbl_80B60250
.word var_80B60234
.word var_80B60244
.word lbl_80B60250
.word var_80B6021C
.word lbl_80B60250
.word var_80B6020C
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word var_80B60204
.word lbl_80B60250
.word var_80B60214
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word lbl_80B60250
.word var_80B6023C
.word 0x00000000, 0x00000000, 0x00000000

