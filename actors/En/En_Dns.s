.section .text
func_80A74C60:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    bgez    v0, lbl_80A74C98
    lui     a1, %hi(var_80A75E20)      # a1 = 80A70000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A74DC4
    lw      $ra, 0x002C($sp)
lbl_80A74C98:
    bne     v0, $at, lbl_80A74CC8
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_80A74CBC
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beq     $zero, $zero, lbl_80A74CBC
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A74CBC:
    bne     v0, $at, lbl_80A74CC8
    nop
    sh      t7, 0x001C(s0)             # 0000001C
lbl_80A74CC8:
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80A75E20)  # a1 = 00005E20
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t8, s0, 0x0180             # t8 = 00000180
    addiu   t9, s0, 0x01EC             # t9 = 000001EC
    addiu   t0, $zero, 0x0012          # t0 = 00000012
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, 0x09A0             # a3 = 060009A0
    addiu   a2, a2, 0x41A8             # a2 = 060041A8
    lw      a0, 0x0044($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x025C             # a1 = 0000025C
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80A75D00)      # a3 = 80A70000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80A75D00)  # a3 = 80A75D00
    lw      a0, 0x0044($sp)
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x420C                 # a3 = 420C0000
    lh      t1, 0x001C(s0)             # 0000001C
    lui     t3, %hi(var_80A75D2C)      # t3 = 80A70000
    lui     a1, 0x3C23                 # a1 = 3C230000
    sll     t2, t1,  1
    addu    t3, t3, t2
    lhu     t3, %lo(var_80A75D2C)(t3)
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    sh      t3, 0x010E(s0)             # 0000010E
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t5, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     t7, %hi(var_80A75DF4)      # t7 = 80A70000
    sll     t6, t5,  2
    sb      t4, 0x00AE(s0)             # 000000AE
    sb      v0, 0x02AB(s0)             # 000002AB
    sb      v0, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x02AD(s0)          # 000002AD
    addu    t7, t7, t6
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t7, %lo(var_80A75DF4)(t7)
    lui     t8, %hi(func_80A75494)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A75494) # t8 = 80A75494
    sw      t8, 0x0258(s0)             # 00000258
    sw      t7, 0x02B0(s0)             # 000002B0
    lw      $ra, 0x002C($sp)
lbl_80A74DC4:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80A74DD4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x025C             # a1 = 0000025C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A74E00:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lbu     t6, 0x0037($sp)
    lui     t8, %hi(var_80A75E2C)      # t8 = 80A70000
    addiu   t8, t8, %lo(var_80A75E2C)  # t8 = 80A75E2C
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    v1, t7, t8
    lw      a0, 0x0000(v1)             # 00000000
    jal     func_8008A194
    sw      v1, 0x0028($sp)
    lw      t0, 0x0030($sp)
    lbu     t9, 0x0037($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    sb      t9, 0x02AA(t0)             # 000002AA
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0008(v1)            # 00000008
    lbu     t1, 0x0004(v1)             # 00000004
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, t0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    sw      t1, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A74E88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7364(t7)            # 800F8C9C
    lw      t6, 0x00A0(v1)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7335(t9)            # 800F8CCB
    and     t8, t6, t7
    lui     v0, 0x8010                 # v0 = 80100000
    srav    t0, t8, t9
    sll     t1, t0,  1
    addu    v0, v0, t1
    lhu     v0, -0x72FC(v0)            # 800F8D04
    lui     t2, 0x8010                 # t2 = 80100000
    beql    v0, $zero, lbl_80A74EF4
    lw      t6, 0x02B0(a0)             # 000002B0
    lbu     t2, -0x70CB(t2)            # 800F8F35
    addu    t3, v1, t2
    lb      t4, 0x008C(t3)             # 0000008C
    slt     $at, t4, v0
    bnel    $at, $zero, lbl_80A74EF4
    lw      t6, 0x02B0(a0)             # 000002B0
    beq     $zero, $zero, lbl_80A74F30
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t6, 0x02B0(a0)             # 000002B0
lbl_80A74EF4:
    lh      t5, 0x0034(v1)             # 8011A604
    lh      t7, 0x0000(t6)             # 00000000
    slt     $at, t5, t7
    beq     $at, $zero, lbl_80A74F10
    nop
    beq     $zero, $zero, lbl_80A74F30
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A74F10:
    jal     func_80071420
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80A74F30
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80A74F30
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80A74F30:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A74F40:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7368(t7)            # 800F8C98
    lw      t6, 0x00A0(v1)             # 8011A670
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7336(t9)            # 800F8CCA
    and     t8, t6, t7
    lui     v0, 0x8010                 # v0 = 80100000
    srav    t0, t8, t9
    sll     t1, t0,  1
    addu    v0, v0, t1
    lhu     v0, -0x7304(v0)            # 800F8CFC
    lui     t2, 0x8010                 # t2 = 80100000
    beql    v0, $zero, lbl_80A74FAC
    lw      t6, 0x02B0(a0)             # 000002B0
    lbu     t2, -0x70CC(t2)            # 800F8F34
    addu    t3, v1, t2
    lb      t4, 0x008C(t3)             # 0000008C
    slt     $at, t4, v0
    bnel    $at, $zero, lbl_80A74FAC
    lw      t6, 0x02B0(a0)             # 000002B0
    beq     $zero, $zero, lbl_80A74FE8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t6, 0x02B0(a0)             # 000002B0
lbl_80A74FAC:
    lh      t5, 0x0034(v1)             # 8011A604
    lh      t7, 0x0000(t6)             # 00000000
    slt     $at, t5, t7
    beq     $at, $zero, lbl_80A74FC8
    nop
    beq     $zero, $zero, lbl_80A74FE8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A74FC8:
    jal     func_80071420
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80A74FE8
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80A74FE8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80A74FE8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A74FF8:
    lw      t7, 0x02B0(a0)             # 000002B0
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lh      t8, 0x0000(t7)             # 00000000
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    slt     $at, t6, t8
    beq     $at, $zero, lbl_80A75020
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A75020:
    jr      $ra
    nop


func_80A75028:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70C6(t6)            # 800F8F3A
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     t0, 0x8010                 # t0 = 80100000
    addu    v0, v1, t6
    lbu     t7, 0x0074(v0)             # 00000074
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    bnel    t7, $at, lbl_80A7506C
    lw      t9, 0x00A0(v1)             # 8011A670
    beq     $zero, $zero, lbl_80A750E0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    lw      t9, 0x00A0(v1)             # 8011A670
lbl_80A7506C:
    lw      t0, -0x736C(t0)            # 800F8C94
    lbu     t2, -0x7337(t2)            # 800F8CC9
    lb      t8, 0x008C(v0)             # 0000008F
    and     t1, t9, t0
    srav    t3, t1, t2
    sll     t4, t3,  1
    addu    t5, t5, t4
    lhu     t5, -0x730C(t5)            # 800F8CF4
    slt     $at, t8, t5
    bnel    $at, $zero, lbl_80A750A4
    lw      t7, 0x02B0(a0)             # 000002B0
    beq     $zero, $zero, lbl_80A750E0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t7, 0x02B0(a0)             # 000002B0
lbl_80A750A4:
    lh      t6, 0x0034(v1)             # 8011A604
    lh      t9, 0x0000(t7)             # 00000000
    slt     $at, t6, t9
    beq     $at, $zero, lbl_80A750C0
    nop
    beq     $zero, $zero, lbl_80A750E0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A750C0:
    jal     func_80071420
    addiu   a0, $zero, 0x0058          # a0 = 00000058
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_80A750E0
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80A750E0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80A750E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A750F0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x7400(t6)            # 800F8C00
    lhu     t7, 0x009C(v0)             # 8011A66C
    and     t8, t6, t7
    beql    t8, $zero, lbl_80A7511C
    lw      t0, 0x02B0(a0)             # 000002B0
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A75118:
    lw      t0, 0x02B0(a0)             # 000002B0
lbl_80A7511C:
    lh      t9, 0x0034(v0)             # 00000035
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lh      t1, 0x0000(t0)             # 00000000
    slt     $at, t9, t1
    beq     $at, $zero, lbl_80A7513C
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A7513C:
    jr      $ra
    nop


func_80A75144:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C4(t6)            # 800F8C3C
    lw      t7, 0x00A4(v0)             # 8011A674
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    and     t8, t6, t7
    bne     t8, $zero, lbl_80A75174
    lui     t5, 0x8010                 # t5 = 80100000
    jr      $ra
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80A75174:
    lw      t2, 0x00A0(v0)             # 000000A3
    lw      t3, -0x737C(t3)            # 800F8C84
    lbu     t5, -0x733B(t5)            # 800F8CC5
    lbu     t9, -0x70CA(t9)            # 800F8F36
    and     t4, t2, t3
    srav    t6, t4, t5
    sll     t7, t6,  1
    lui     t8, 0x8010                 # t8 = 80100000
    addu    t8, t8, t7
    addu    t0, v0, t9
    lb      t1, 0x008C(t0)             # 0000008C
    lhu     t8, -0x732C(t8)            # 800F8CD4
    slt     $at, t1, t8
    bnel    $at, $zero, lbl_80A751BC
    lw      t0, 0x02B0(a0)             # 000002B0
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A751B8:
    lw      t0, 0x02B0(a0)             # 000002B0
lbl_80A751BC:
    lh      t9, 0x0034(v0)             # 00000035
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lh      t2, 0x0000(t0)             # 00000000
    slt     $at, t9, t2
    beq     $at, $zero, lbl_80A751DC
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A751DC:
    jr      $ra
    nop


func_80A751E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80071420
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     v0, $at, lbl_80A7520C
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_80A7528C
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_80A7520C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x7380(t0)            # 800F8C80
    lw      t9, 0x00A0(v0)             # 8011A670
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x733C(t2)            # 800F8CC4
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x70C9(t6)            # 800F8F37
    and     t1, t9, t0
    srav    t3, t1, t2
    sll     t4, t3,  1
    lui     t5, 0x8010                 # t5 = 80100000
    addu    t5, t5, t4
    addu    t7, v0, t6
    lb      t8, 0x008C(t7)             # 0000008C
    lhu     t5, -0x7334(t5)            # 800F8CCC
    lw      t7, 0x0018($sp)
    slt     $at, t8, t5
    bnel    $at, $zero, lbl_80A7526C
    lw      t9, 0x02B0(t7)             # 000002B0
    beq     $zero, $zero, lbl_80A7528C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t9, 0x02B0(t7)             # 000002B0
lbl_80A7526C:
    lh      t6, 0x0034(v0)             # 00000035
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lh      t0, 0x0000(t9)             # 00000000
    slt     $at, t6, t0
    beq     $at, $zero, lbl_80A7528C
    nop
    beq     $zero, $zero, lbl_80A7528C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A7528C:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80A75294:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80071A94
    nop
    bne     v0, $zero, lbl_80A752B8
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_80A752E4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A752B8:
    lw      t7, 0x0018($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x59FC(t6)            # 8011A604
    lw      t8, 0x02B0(t7)             # 000002B0
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lh      t9, 0x0000(t8)             # 00000000
    slt     $at, t6, t9
    beq     $at, $zero, lbl_80A752E4
    nop
    beq     $zero, $zero, lbl_80A752E4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A752E4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80A752EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      t6, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t6)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75320:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      t6, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t6)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75354:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     t6, 0x0EF0(v0)             # 8011B4C0
    ori     t7, t6, 0x0800             # t7 = 00000800
    sh      t7, 0x0EF0(v0)             # 8011B4C0
    lw      t8, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t8)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A7539C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      t6, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t6)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A753D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      t6, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t6)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75404:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     t6, 0x0F2A(v0)             # 8011B4FA
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x0F2A(v0)             # 8011B4FA
    lw      t8, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t8)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A7544C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     t6, 0x0F2A(v0)             # 8011B4FA
    ori     t7, t6, 0x0008             # t7 = 00000008
    sh      t7, 0x0F2A(v0)             # 8011B4FA
    lw      t8, 0x02B0(a1)             # 000002B0
    lh      a0, 0x0000(t8)             # 00000000
    subu    a0, $zero, a0
    sll     a0, a0, 16
    jal     func_800721CC
    sra     a0, a0, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75494:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f4, 0x014C(a0)            # 0000014C
    lwc1    $f6, 0x0154(a0)            # 00000154
    lui     t6, %hi(func_80A754D8)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A754D8) # t6 = 80A754D8
    c.eq.s  $f4, $f6
    or      a1, $zero, $zero           # a1 = 00000000
    bc1fl   lbl_80A754CC
    lw      $ra, 0x0014($sp)
    jal     func_80A74E00
    sw      t6, 0x0258(a0)             # 00000258
    lw      $ra, 0x0014($sp)
lbl_80A754CC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A754D8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064508
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      t6, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    sh      t6, 0x0032(s0)             # 00000032
    jal     func_80022930
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80A7552C
    lui     t7, %hi(func_80A755AC)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A755AC) # t7 = 80A755AC
    beq     $zero, $zero, lbl_80A75598
    sw      t7, 0x0258(s0)             # 00000258
lbl_80A7552C:
    lbu     t8, 0x026E(s0)             # 0000026E
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80A75550
    lw      t1, 0x0004(s0)             # 00000004
    lbu     t0, 0x010C(s0)             # 0000010C
    beql    t0, $zero, lbl_80A75564
    lw      t3, 0x0004(s0)             # 00000004
    lw      t1, 0x0004(s0)             # 00000004
lbl_80A75550:
    lui     $at, 0x0001                # $at = 00010000
    or      t2, t1, $at                # t2 = 00010000
    beq     $zero, $zero, lbl_80A75574
    sw      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0004(s0)             # 00000004
lbl_80A75564:
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
lbl_80A75574:
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f6                   # $f6 = 130.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A7559C
    lw      $ra, 0x0024($sp)
    jal     func_80022A90
    lw      a1, 0x002C($sp)
lbl_80A75598:
    lw      $ra, 0x0024($sp)
lbl_80A7559C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A755AC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0024($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80A756D0
    lw      a2, 0x0024($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x0024($sp)
    beq     v0, $zero, lbl_80A756D0
    lw      a2, 0x0024($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    beq     v0, $zero, lbl_80A75610
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A756BC
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A756D4
    lw      $ra, 0x001C($sp)
lbl_80A75610:
    sw      a2, 0x0024($sp)
    lw      t6, 0x02B0(s0)             # 000002B0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0008(t6)             # 00000008
    jalr    $ra, t9
    nop
    sltiu   $at, v0, 0x0005
    beq     $at, $zero, lbl_80A756D0
    lw      a2, 0x0024($sp)
    sll     t7, v0,  2
    lui     $at, %hi(var_80A75E50)     # $at = 80A70000
    addu    $at, $at, t7
    lw      t7, %lo(var_80A75E50)($at)
    jr      t7
    nop
var_80A7564C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x10A5          # a1 = 000010A5
    lui     t8, %hi(func_80A759A8)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A759A8) # t8 = 80A759A8
    beq     $zero, $zero, lbl_80A756D0
    sw      t8, 0x0258(s0)             # 00000258
var_80A75668:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x10A6          # a1 = 000010A6
    lui     t0, %hi(func_80A759A8)     # t0 = 80A70000
    addiu   t0, t0, %lo(func_80A759A8) # t0 = 80A759A8
    beq     $zero, $zero, lbl_80A756D0
    sw      t0, 0x0258(s0)             # 00000258
var_80A75684:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x10DE          # a1 = 000010DE
    lui     t1, %hi(func_80A759A8)     # t1 = 80A70000
    addiu   t1, t1, %lo(func_80A759A8) # t1 = 80A759A8
    beq     $zero, $zero, lbl_80A756D0
    sw      t1, 0x0258(s0)             # 00000258
var_80A756A0:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x10A7          # a1 = 000010A7
    lui     t2, %hi(func_80A757FC)     # t2 = 80A70000
    addiu   t2, t2, %lo(func_80A757FC) # t2 = 80A757FC
    beq     $zero, $zero, lbl_80A756D0
    sw      t2, 0x0258(s0)             # 00000258
lbl_80A756BC:
    jal     func_800DCE80
    addiu   a1, $zero, 0x10A4          # a1 = 000010A4
    lui     t3, %hi(func_80A759A8)     # t3 = 80A70000
    addiu   t3, t3, %lo(func_80A759A8) # t3 = 80A759A8
    sw      t3, 0x0258(s0)             # 00000258
lbl_80A756D0:
    lw      $ra, 0x001C($sp)
lbl_80A756D4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A756E4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lui     t6, 0x8012                 # t6 = 80120000
    bne     v0, $at, lbl_80A75760
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t6, -0x5990(t6)            # 8011A670
    lw      t7, -0x7368(t7)            # 800F8C98
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x7336(t9)            # 800F8CCA
    and     t8, t6, t7
    lui     a3, 0x4302                 # a3 = 43020000
    srav    t0, t8, t9
    slti    $at, t0, 0x0002
    beq     $at, $zero, lbl_80A75744
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   a2, $zero, 0x0077          # a2 = 00000077
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    beq     $zero, $zero, lbl_80A757F0
    lw      $ra, 0x001C($sp)
lbl_80A75744:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     a3, 0x4302                 # a3 = 43020000
    jal     func_80022BD4
    swc1    $f6, 0x0010($sp)
    beq     $zero, $zero, lbl_80A757F0
    lw      $ra, 0x001C($sp)
lbl_80A75760:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80A757D4
    lui     a3, 0x4302                 # a3 = 43020000
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x7364(t2)            # 800F8C9C
    lw      t1, -0x5990(t1)            # 8011A670
    lui     t4, 0x8010                 # t4 = 80100000
    lbu     t4, -0x7335(t4)            # 800F8CCB
    and     t3, t1, t2
    lui     a3, 0x4302                 # a3 = 43020000
    srav    t5, t3, t4
    slti    $at, t5, 0x0002
    beq     $at, $zero, lbl_80A757B8
    addiu   a2, $zero, 0x007A          # a2 = 0000007A
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    addiu   a2, $zero, 0x0079          # a2 = 00000079
    jal     func_80022BD4
    swc1    $f8, 0x0010($sp)
    beq     $zero, $zero, lbl_80A757F0
    lw      $ra, 0x001C($sp)
lbl_80A757B8:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     a3, 0x4302                 # a3 = 43020000
    jal     func_80022BD4
    swc1    $f10, 0x0010($sp)
    beq     $zero, $zero, lbl_80A757F0
    lw      $ra, 0x001C($sp)
lbl_80A757D4:
    lw      t6, 0x02B0(a0)             # 000002B0
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lw      a2, 0x0004(t6)             # 00000004
    jal     func_80022BD4
    swc1    $f16, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80A757F0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A757FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A7585C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80A7585C
    lw      $ra, 0x0014($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A756E4
    lw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80A75868)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A75868) # t6 = 80A75868
    sw      t6, 0x0258(t7)             # 00000258
    lw      $ra, 0x0014($sp)
lbl_80A7585C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75868:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022BB0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A7589C
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A758B4)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A758B4) # t6 = 80A758B4
    sw      $zero, 0x0118(a0)          # 00000118
    beq     $zero, $zero, lbl_80A758A4
    sw      t6, 0x0258(a0)             # 00000258
lbl_80A7589C:
    jal     func_80A756E4
    lw      a1, 0x001C($sp)
lbl_80A758A4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A758B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    lw      t6, 0x066C(v0)             # 0000066C
    andi    t7, t6, 0x0400             # t7 = 00000000
    beql    t7, $zero, lbl_80A75950
    lw      t4, 0x02B0(s0)             # 000002B0
    jal     func_800DD464
    sw      a1, 0x0024($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80A75994
    lw      a1, 0x0024($sp)
    jal     func_800D6110
    or      a0, a1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A75998
    lw      $ra, 0x001C($sp)
    lw      t8, 0x02B0(s0)             # 000002B0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x000C(t8)             # 0000000C
    jalr    $ra, t9
    nop
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    and     t2, t1, $at
    sb      t0, 0x02AD(s0)             # 000002AD
    sb      $zero, 0x02AB(s0)          # 000002AB
    sw      t2, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A74E00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t3, %hi(func_80A75A20)     # t3 = 80A70000
    addiu   t3, t3, %lo(func_80A75A20) # t3 = 80A75A20
    beq     $zero, $zero, lbl_80A75994
    sw      t3, 0x0258(s0)             # 00000258
    lw      t4, 0x02B0(s0)             # 000002B0
lbl_80A75950:
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x000C(t4)             # 0000000C
    jalr    $ra, t9
    nop
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    and     t7, t6, $at
    sb      t5, 0x02AD(s0)             # 000002AD
    sb      $zero, 0x02AB(s0)          # 000002AB
    sw      t7, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A74E00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t8, %hi(func_80A75A20)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A75A20) # t8 = 80A75A20
    sw      t8, 0x0258(s0)             # 00000258
lbl_80A75994:
    lw      $ra, 0x001C($sp)
lbl_80A75998:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A759A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A75A10
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80A75A0C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t6, 0x0004(s0)             # 00000004
    sb      $zero, 0x02AB(s0)          # 000002AB
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80A74E00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t8, %hi(func_80A75A20)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A75A20) # t8 = 80A75A20
    sw      t8, 0x0258(s0)             # 00000258
lbl_80A75A0C:
    lw      $ra, 0x001C($sp)
lbl_80A75A10:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A75A20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x4404             # a0 = 06004404
    jal     func_8008A194
    sw      a2, 0x0018($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a2, 0x0018($sp)
    addiu   a1, $zero, 0x3987          # a1 = 00003987
    cvt.s.w $f6, $f4
    lwc1    $f8, 0x0154(a2)            # 00000154
    or      a0, a2, $zero              # a0 = 00000000
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A75A90
    lw      $ra, 0x0014($sp)
    jal     func_80022FD0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t6, %hi(func_80A75A9C)     # t6 = 80A70000
    addiu   t6, t6, %lo(func_80A75A9C) # t6 = 80A75A9C
    lwc1    $f10, 0x0028(a2)           # 00000028
    sw      t6, 0x0258(a2)             # 00000258
    sb      $zero, 0x02AC(a2)          # 000002AC
    swc1    $f10, 0x02B4(a2)           # 000002B4
    lw      $ra, 0x0014($sp)
lbl_80A75A90:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A75A9C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lh      t6, 0x02A8(s3)             # 000002A8
    lwc1    $f4, 0x02B4(s3)            # 000002B4
    lwc1    $f6, 0x0028(s3)            # 00000028
    andi    t7, t6, 0x0003             # t7 = 00000000
    bne     t7, $zero, lbl_80A75B08
    sub.s   $f0, $f4, $f6
    lwc1    $f8, 0x0024(s3)            # 00000024
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF0
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x02B4(s3)           # 000002B4
    lui     a1, 0x41A0                 # a1 = 41A00000
    swc1    $f10, 0x003C($sp)
    lwc1    $f16, 0x002C(s3)           # 0000002C
    swc1    $f0, 0x0044($sp)
    jal     func_8001C488
    swc1    $f16, 0x0040($sp)
    lwc1    $f0, 0x0044($sp)
lbl_80A75B08:
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f18                  # $f18 = 400.00
    lh      t8, 0x00B6(s3)             # 000000B6
    addiu   s4, $sp, 0x0038            # s4 = FFFFFFF0
    c.lt.s  $f18, $f0
    addiu   t9, t8, 0x2000             # t9 = 00002000
    sh      t9, 0x00B6(s3)             # 000000B6
    bc1fl   lbl_80A75B84
    lw      $ra, 0x002C($sp)
    lbu     t0, 0x02AD(s3)             # 000002AD
    beq     t0, $zero, lbl_80A75B78
    nop
    lwc1    $f4, 0x0024(s3)            # 00000024
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    swc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x02B4(s3)            # 000002B4
    swc1    $f6, 0x003C($sp)
    lwc1    $f8, 0x002C(s3)            # 0000002C
    swc1    $f8, 0x0040($sp)
    sll     a2, s1, 16
lbl_80A75B5C:
    sra     a2, a2, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80013678
    or      a1, s4, $zero              # a1 = FFFFFFF0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s1, lbl_80A75B5C
    sll     a2, s1, 16
lbl_80A75B78:
    jal     func_80020EB4
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80A75B84:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80A75BA0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x02A8(s0)             # 000002A8
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_80A75D2C)      # t0 = 80A70000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sll     t9, t8,  1
    sh      t7, 0x02A8(s0)             # 000002A8
    addu    t0, t0, t9
    lhu     t0, %lo(var_80A75D2C)(t0)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x4270                 # a1 = 42700000
    jal     func_80020F04
    sh      t0, 0x010E(s0)             # 0000010E
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0258(s0)             # 00000258
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    lbu     t1, 0x02AC(s0)             # 000002AC
    lui     $at, 0x41A0                # $at = 41A00000
    lw      a0, 0x003C($sp)
    beq     t1, $zero, lbl_80A75C48
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sw      t2, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
lbl_80A75C48:
    lbu     t3, 0x02AB(s0)             # 000002AB
    addiu   a2, s0, 0x025C             # a2 = 0000025C
    or      a1, a2, $zero              # a1 = 0000025C
    beq     t3, $zero, lbl_80A75C7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    sw      a2, 0x002C($sp)
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
lbl_80A75C7C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A75C90:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lw      a0, 0x002C($sp)
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop

.section .data

var_80A75CE0: .word 0x011A0100, 0x00000009, 0x01680000, 0x000002B8
.word func_80A74C60
.word func_80A74DD4
.word func_80A75BA0
.word func_80A75C90
var_80A75D00: .word \
0x0A000939, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00120020, 0x00000000, 0x00000000
var_80A75D2C: .word \
0x10A010A1, 0x10A210CA, 0x10CB10CC, 0x10CD10CE, \
0x10CF10DC, 0x10DD0000
var_80A75D44: .word 0x00140005, 0x00000063
.word func_80A74E88
.word func_80A75320
var_80A75D54: .word 0x000F0001, 0x00000007
.word func_80A74F40
.word func_80A752EC
var_80A75D64: .word 0x000A0001, 0x0000003E
.word func_80A74FF8
.word func_80A75354
var_80A75D74: .word 0x0028001E, 0x00000069
.word func_80A75028
.word func_80A752EC
var_80A75D84: .word 0x00320001, 0x00000029
.word func_80A750F0
.word func_80A752EC
var_80A75D94: .word 0x00280005, 0x00000001
.word func_80A75144
.word func_80A7539C
var_80A75DA4: .word 0x00460014, 0x0000004B
.word func_80A751E4
.word func_80A753D0
var_80A75DB4: .word 0x00280001, 0x00000010
.word func_80A75294
.word func_80A752EC
var_80A75DC4: .word 0x00280001, 0x00000011
.word func_80A75294
.word func_80A752EC
var_80A75DD4: .word 0x00280001, 0x00000077
.word func_80A74FF8
.word func_80A75404
var_80A75DE4: .word 0x00280001, 0x00000079
.word func_80A74FF8
.word func_80A7544C
var_80A75DF4: .word var_80A75D44
.word var_80A75D54
.word var_80A75D64
.word var_80A75D74
.word var_80A75D84
.word var_80A75D94
.word var_80A75DA4
.word var_80A75DB4
.word var_80A75DC4
.word var_80A75DD4
.word var_80A75DE4
var_80A75E20: .word 0x8917004E, 0x801F0002, 0x304C001E
var_80A75E2C: .word \
0x06001108, 0x00000000, 0x00000000, 0x06004404, \
0x02000000, 0x00000000, 0x060009A0, 0x02000000, \
0x00000000

.section .rodata

var_80A75E50: .word var_80A7564C
.word var_80A75668
.word var_80A756A0
.word var_80A75684
.word var_80A756A0
.word 0x00000000, 0x00000000, 0x00000000

