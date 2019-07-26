.section .text
func_80AFC720:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lw      t0, 0x0024(s0)             # 00000024
    lw      t9, 0x0028(s0)             # 00000028
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sh      t7, 0x0270(s0)             # 00000270
    lh      t2, 0x0270(s0)             # 00000270
    sw      t0, 0x025C(s0)             # 0000025C
    lw      t0, 0x002C(s0)             # 0000002C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   $at, $zero, 0x0007         # $at = 00000007
    sb      t8, 0x00AE(s0)             # 000000AE
    sb      t1, 0x001F(s0)             # 0000001F
    sw      t9, 0x0260(s0)             # 00000260
    bne     t2, $at, lbl_80AFC7E0
    sw      t0, 0x0264(s0)             # 00000264
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mfc1    a3, $f0
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20
    swc1    $f0, 0x0268(s0)            # 00000268
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t3, s0, 0x0180             # t3 = 00000180
    addiu   t4, s0, 0x01E6             # t4 = 000001E6
    addiu   t5, $zero, 0x0011          # t5 = 00000011
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    addiu   a3, a3, 0xC444             # a3 = 0600C444
    addiu   a2, a2, 0xBAC8             # a2 = 0600BAC8
    lw      a0, 0x0044($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    b       lbl_80AFC844
    addiu   a1, s0, 0x02AC             # a1 = 000002AC
lbl_80AFC7E0:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lui     a2, 0x8002                 # a2 = 80020000
    mfc1    a3, $f0
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    swc1    $f4, 0x0268(s0)            # 00000268
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x5C30             # a3 = 06005C30
    addiu   a2, a2, 0xBAC8             # a2 = 0600BAC8
    lw      a0, 0x0044($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x02AC             # a1 = 000002AC
lbl_80AFC844:
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80AFD4D8)      # a3 = 80B00000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80AFD4D8)  # a3 = 80AFD4D8
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      v0, 0x0270(s0)             # 00000270
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addiu   t0, $zero, 0x0046          # t0 = 00000046
    sh      $zero, 0x02F0(s0)          # 000002F0
    sh      t9, 0x02EC(s0)             # 000002EC
    beq     v0, $zero, lbl_80AFC8AC
    sh      t0, 0x02EE(s0)             # 000002EE
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80AFC8AC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80AFC8BC
    addiu   t2, $zero, 0x001C          # t2 = 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80AFC8D8
    lui     t5, %hi(func_80AFCB48)     # t5 = 80B00000
    b       lbl_80AFC8E4
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80AFC8AC:
    lui     t1, %hi(func_80AFC92C)     # t1 = 80B00000
    addiu   t1, t1, %lo(func_80AFC92C) # t1 = 80AFC92C
    b       lbl_80AFC8E0
    sw      t1, 0x024C(s0)             # 0000024C
lbl_80AFC8BC:
    lui     t4, %hi(func_80AFCD34)     # t4 = 80B00000
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   t4, t4, %lo(func_80AFCD34) # t4 = 80AFCD34
    sh      t2, 0x02EC(s0)             # 000002EC
    sh      t3, 0x02EE(s0)             # 000002EE
    b       lbl_80AFC8E0
    sw      t4, 0x024C(s0)             # 0000024C
lbl_80AFC8D8:
    addiu   t5, t5, %lo(func_80AFCB48) # t5 = 80AFCB48
    sw      t5, 0x024C(s0)             # 0000024C
lbl_80AFC8E0:
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80AFC8E4:
    sra     t7, t6,  8
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sh      t8, 0x026C(s0)             # 0000026C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80AFC900:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x02AC             # a1 = 000002AC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFC92C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_80AFC9C0)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AFC9C0) # t0 = 80AFC9C0
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFC9C0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0270(a2)             # 00000270
    sb      $zero, 0x02A4(a2)          # 000002A4
    lw      a0, 0x0024($sp)
    addiu   v0, v0, 0xFFFC             # v0 = FFFFFFFC
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgez    v0, lbl_80AFC9F4
    lui     t7, %hi(var_80AFD4D0)      # t7 = 80B00000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFC9F4:
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80AFCA04
    addiu   t7, t7, %lo(var_80AFD4D0)  # t7 = 80AFD4D0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AFCA04:
    sll     t6, v0,  2
    addu    v1, t6, t7
    lw      a1, 0x0000(v1)             # 00000000
    sw      v1, 0x0018($sp)
    jal     func_800597C0
    sw      a2, 0x0020($sp)
    lw      v1, 0x0018($sp)
    beq     v0, $zero, lbl_80AFCA58
    lw      a2, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lw      a1, 0x0000(v1)             # 00000000
    jal     func_800597C0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lui     t9, %hi(func_80AFD114)     # t9 = 80B00000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, t9, %lo(func_80AFD114) # t9 = 80AFD114
    sh      v0, 0x010E(a2)             # 0000010E
    sb      t8, 0x02A4(a2)             # 000002A4
    b       lbl_80AFCB38
    sw      t9, 0x024C(a2)             # 0000024C
lbl_80AFCA58:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EE4(v0)             # 8011B4B4
    lui     t3, %hi(func_80AFD114)     # t3 = 80B00000
    addiu   t2, $zero, 0x5065          # t2 = 00005065
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80AFCA84
    addiu   t3, t3, %lo(func_80AFD114) # t3 = 80AFD114
    sh      t2, 0x010E(a2)             # 0000010E
    b       lbl_80AFCB38
    sw      t3, 0x024C(a2)             # 0000024C
lbl_80AFCA84:
    lhu     t4, 0x0EDC(v0)             # 8011B4AC
    lui     t7, %hi(func_80AFD114)     # t7 = 80B00000
    addiu   t6, $zero, 0x5068          # t6 = 00005068
    andi    t5, t4, 0x0020             # t5 = 00000000
    beq     t5, $zero, lbl_80AFCAA8
    addiu   t7, t7, %lo(func_80AFD114) # t7 = 80AFD114
    sh      t6, 0x010E(a2)             # 0000010E
    b       lbl_80AFCB38
    sw      t7, 0x024C(a2)             # 0000024C
lbl_80AFCAA8:
    lh      t8, 0x0270(a2)             # 00000270
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t8, $at, lbl_80AFCAE0
    lw      t2, 0x0010(v0)             # 8011A5E0
    lh      t9, 0x0274(a2)             # 00000274
    addiu   t0, $zero, 0x5079          # t0 = 00005079
    addiu   t1, $zero, 0x507A          # t1 = 0000507A
    bne     t9, $zero, lbl_80AFCAD4
    nop
    b       lbl_80AFCB2C
    sh      t0, 0x010E(a2)             # 0000010E
lbl_80AFCAD4:
    b       lbl_80AFCB2C
    sh      t1, 0x010E(a2)             # 0000010E
    lw      t2, 0x0010(v0)             # 8011A5E0
lbl_80AFCAE0:
    bnel    t2, $zero, lbl_80AFCB10
    lh      t6, 0x0274(a2)             # 00000274
    lh      t3, 0x0274(a2)             # 00000274
    addiu   t4, $zero, 0x5063          # t4 = 00005063
    addiu   t5, $zero, 0x5064          # t5 = 00005064
    bne     t3, $zero, lbl_80AFCB04
    nop
    b       lbl_80AFCB2C
    sh      t4, 0x010E(a2)             # 0000010E
lbl_80AFCB04:
    b       lbl_80AFCB2C
    sh      t5, 0x010E(a2)             # 0000010E
    lh      t6, 0x0274(a2)             # 00000274
lbl_80AFCB10:
    addiu   t7, $zero, 0x5066          # t7 = 00005066
    addiu   t8, $zero, 0x5067          # t8 = 00005067
    bnel    t6, $zero, lbl_80AFCB2C
    sh      t8, 0x010E(a2)             # 0000010E
    b       lbl_80AFCB2C
    sh      t7, 0x010E(a2)             # 0000010E
    sh      t8, 0x010E(a2)             # 0000010E
lbl_80AFCB2C:
    lui     t9, %hi(func_80AFD114)     # t9 = 80B00000
    addiu   t9, t9, %lo(func_80AFD114) # t9 = 80AFD114
    sw      t9, 0x024C(a2)             # 0000024C
lbl_80AFCB38:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFCB48:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    lw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     t0, $zero, lbl_80AFCBDC
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    b       lbl_80AFCBDC
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80AFCBDC:
    beq     v0, $at, lbl_80AFCBF4
    lui     t1, %hi(func_80AFCC0C)     # t1 = 80B00000
    jal     func_80020EB4
    nop
    b       lbl_80AFCC00
    lw      $ra, 0x0024($sp)
lbl_80AFCBF4:
    addiu   t1, t1, %lo(func_80AFCC0C) # t1 = FFFFCC0C
    sw      t1, 0x024C(a0)             # 0000024C
    lw      $ra, 0x0024($sp)
lbl_80AFCC00:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFCC0C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x0270(a2)             # 00000270
    sb      $zero, 0x02A4(a2)          # 000002A4
    or      a0, a3, $zero              # a0 = 00000000
    addiu   v0, v0, 0xFFFC             # v0 = FFFFFFFC
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgez    v0, lbl_80AFCC40
    lui     t7, %hi(var_80AFD4D0)      # t7 = 80B00000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFCC40:
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80AFCC50
    addiu   t7, t7, %lo(var_80AFD4D0)  # t7 = 80AFD4D0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AFCC50:
    sll     t6, v0,  2
    addu    v1, t6, t7
    lw      a1, 0x0000(v1)             # 00000000
    sw      v1, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_800597C0
    sw      a3, 0x0024($sp)
    lw      v1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    beq     v0, $zero, lbl_80AFCCAC
    lw      a3, 0x0024($sp)
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    jal     func_800597C0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lui     t9, %hi(func_80AFD114)     # t9 = 80B00000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, t9, %lo(func_80AFD114) # t9 = 80AFD114
    sh      v0, 0x010E(a2)             # 0000010E
    sb      t8, 0x02A4(a2)             # 000002A4
    b       lbl_80AFCD24
    sw      t9, 0x024C(a2)             # 0000024C
lbl_80AFCCAC:
    lh      v0, 0x00A4(a3)             # 000000A4
    addiu   $at, $zero, 0x004D         # $at = 0000004D
    lui     t7, %hi(func_80AFD114)     # t7 = 80B00000
    bne     v0, $at, lbl_80AFCCE8
    addiu   t7, t7, %lo(func_80AFD114) # t7 = 80AFD114
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A20(t0)            # 8011A5E0
    addiu   t1, $zero, 0x7004          # t1 = 00007004
    addiu   t2, $zero, 0x709A          # t2 = 0000709A
    bne     t0, $zero, lbl_80AFCCE0
    nop
    b       lbl_80AFCD20
    sh      t1, 0x010E(a2)             # 0000010E
lbl_80AFCCE0:
    b       lbl_80AFCD20
    sh      t2, 0x010E(a2)             # 0000010E
lbl_80AFCCE8:
    addiu   $at, $zero, 0x0021         # $at = 00000021
    beq     v0, $at, lbl_80AFCD1C
    addiu   t6, $zero, 0x7003          # t6 = 00007003
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x5A20(t3)            # 8011A5E0
    addiu   t4, $zero, 0x7002          # t4 = 00007002
    addiu   t5, $zero, 0x7003          # t5 = 00007003
    bne     t3, $zero, lbl_80AFCD14
    nop
    b       lbl_80AFCD20
    sh      t4, 0x010E(a2)             # 0000010E
lbl_80AFCD14:
    b       lbl_80AFCD20
    sh      t5, 0x010E(a2)             # 0000010E
lbl_80AFCD1C:
    sh      t6, 0x010E(a2)             # 0000010E
lbl_80AFCD20:
    sw      t7, 0x024C(a2)             # 0000024C
lbl_80AFCD24:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFCD34:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     t6, 0x0EDC(v0)             # 8011B4AC
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80AFCD74
    sh      $zero, 0x0274(s0)          # 00000274
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFCE38
    lw      $ra, 0x002C($sp)
    sh      $zero, 0x0274(s0)          # 00000274
lbl_80AFCD74:
    lhu     t8, 0x0EE4(v0)             # 00000EE4
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80AFCE2C
    nop
    lhu     t0, 0x0F04(v0)             # 00000F04
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   t9, $zero, 0x7008          # t9 = 00007008
    andi    t1, t0, 0x1000             # t1 = 00000000
    bne     t1, $zero, lbl_80AFCE14
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    jal     func_8008A194
    addiu   a0, a0, 0xC444             # a0 = 0600C444
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC444             # a1 = 0600C444
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mfc1    t3, $f8
    nop
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t6, $zero, 0x7007          # t6 = 00007007
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t6, 0x010E(s0)             # 0000010E
    sh      t7, 0x0272(s0)             # 00000272
    b       lbl_80AFCE1C
    sh      t8, 0x0274(s0)             # 00000274
lbl_80AFCE14:
    sh      t9, 0x010E(s0)             # 0000010E
    sh      t0, 0x0272(s0)             # 00000272
lbl_80AFCE1C:
    lui     t1, %hi(func_80AFCE48)     # t1 = 80B00000
    addiu   t1, t1, %lo(func_80AFCE48) # t1 = 80AFCE48
    b       lbl_80AFCE34
    sw      t1, 0x024C(s0)             # 0000024C
lbl_80AFCE2C:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AFCE34:
    lw      $ra, 0x002C($sp)
lbl_80AFCE38:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AFCE48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0274(a3)             # 00000274
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    beql    t6, $zero, lbl_80AFCE78
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
lbl_80AFCE78:
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80AFCEB4
    lw      a3, 0x0018($sp)
    lh      t7, 0x0274(a3)             # 00000274
    lui     t9, %hi(func_80AFCED4)     # t9 = 80B00000
    lui     t8, %hi(func_80AFCD34)     # t8 = 80B00000
    bne     t7, $zero, lbl_80AFCEAC
    addiu   t9, t9, %lo(func_80AFCED4) # t9 = 80AFCED4
    addiu   t8, t8, %lo(func_80AFCD34) # t8 = 80AFCD34
    b       lbl_80AFCEC4
    sw      t8, 0x024C(a3)             # 0000024C
lbl_80AFCEAC:
    b       lbl_80AFCEC4
    sw      t9, 0x024C(a3)             # 0000024C
lbl_80AFCEB4:
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
lbl_80AFCEC4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFCED4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC6C8             # a0 = 0600C6C8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC6C8             # a1 = 0600C6C8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_80AFCF68)     # t0 = 80B00000
    addiu   t0, t0, %lo(func_80AFCF68) # t0 = 80AFCF68
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFCF68:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0038(s0)             # 00000038
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t7, 0x0010($sp)
    lw      t6, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0250             # a2 = 00000250
    addiu   a3, s0, 0x0256             # a3 = 00000256
    sw      t6, 0x0014($sp)
    lw      t7, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t7, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t8, 0x0272(s0)             # 00000272
    bnel    t8, v0, lbl_80AFD014
    lw      $ra, 0x002C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AFD014
    lw      $ra, 0x002C($sp)
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0F04(v0)             # 8011B4D4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    ori     t0, t9, 0x1000             # t0 = 00001000
    sh      t0, 0x0F04(v0)             # 8011B4D4
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t1, %hi(func_80AFD024)     # t1 = 80B00000
    addiu   t1, t1, %lo(func_80AFD024) # t1 = 80AFD024
    sw      t1, 0x024C(s0)             # 0000024C
    lw      $ra, 0x002C($sp)
lbl_80AFD014:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80AFD024:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xC374             # a0 = 0600C374
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f0, $f4
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0xC374             # a1 = 0600C374
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0278(v1)            # 00000278
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_80AFD0A0)     # t7 = 80B00000
    addiu   t7, t7, %lo(func_80AFD0A0) # t7 = 80AFD0A0
    sw      t7, 0x024C(t8)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFD0A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0154(a3)            # 00000154
    sw      a3, 0x0020($sp)
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x001C($sp)
    lw      a3, 0x0020($sp)
    lwc1    $f6, 0x001C($sp)
    lw      a0, 0x0024($sp)
    lwc1    $f8, 0x0278(a3)            # 00000278
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_80AFD108
    lw      $ra, 0x0014($sp)
    jal     func_800218EC
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
    lui     t6, %hi(func_80AFCD34)     # t6 = 80B00000
    addiu   t6, t6, %lo(func_80AFCD34) # t6 = 80AFCD34
    sw      t6, 0x024C(a3)             # 0000024C
    lw      $ra, 0x0014($sp)
lbl_80AFD108:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFD114:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lui     a1, %hi(var_80AFD4D0)      # a1 = 80B00000
    lh      v1, 0x0270(a2)             # 00000270
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFC
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgezl   v1, lbl_80AFD15C
    slti    $at, v1, 0x0003
    or      v1, $zero, $zero           # v1 = 00000000
    slti    $at, v1, 0x0003
lbl_80AFD15C:
    bnel    $at, $zero, lbl_80AFD16C
    sll     t6, v1,  2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     t6, v1,  2
lbl_80AFD16C:
    addu    a1, a1, t6
    lw      a1, %lo(var_80AFD4D0)(a1)
    jal     func_800597C0
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80AFD1CC
    lw      a2, 0x0018($sp)
    lbu     t7, 0x02A4(a2)             # 000002A4
    bnel    t7, $zero, lbl_80AFD218
    or      a0, a2, $zero              # a0 = 00000000
    lh      v0, 0x0270(a2)             # 00000270
    lui     t8, %hi(func_80AFC9C0)     # t8 = 80B00000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $zero, lbl_80AFD1AC
    addiu   t8, t8, %lo(func_80AFC9C0) # t8 = 80AFC9C0
    bnel    v0, $at, lbl_80AFD1B8
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80AFD1AC:
    b       lbl_80AFD278
    sw      t8, 0x024C(a2)             # 0000024C
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80AFD1B8:
    bne     v0, $at, lbl_80AFD214
    lui     t9, %hi(func_80AFCC0C)     # t9 = 80B00000
    addiu   t9, t9, %lo(func_80AFCC0C) # t9 = 80AFCC0C
    b       lbl_80AFD278
    sw      t9, 0x024C(a2)             # 0000024C
lbl_80AFD1CC:
    lbu     t0, 0x02A4(a2)             # 000002A4
    beql    t0, $zero, lbl_80AFD218
    or      a0, a2, $zero              # a0 = 00000000
    lh      v0, 0x0270(a2)             # 00000270
    lui     t1, %hi(func_80AFC9C0)     # t1 = 80B00000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $zero, lbl_80AFD1F4
    addiu   t1, t1, %lo(func_80AFC9C0) # t1 = 80AFC9C0
    bnel    v0, $at, lbl_80AFD200
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80AFD1F4:
    b       lbl_80AFD278
    sw      t1, 0x024C(a2)             # 0000024C
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80AFD200:
    bne     v0, $at, lbl_80AFD214
    lui     t2, %hi(func_80AFCC0C)     # t2 = 80B00000
    addiu   t2, t2, %lo(func_80AFCC0C) # t2 = 80AFCC0C
    b       lbl_80AFD278
    sw      t2, 0x024C(a2)             # 0000024C
lbl_80AFD214:
    or      a0, a2, $zero              # a0 = 00000000
lbl_80AFD218:
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80AFD26C
    lw      a2, 0x0018($sp)
    lh      v0, 0x0270(a2)             # 00000270
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     v0, $zero, lbl_80AFD244
    lui     t4, %hi(func_80AFC9C0)     # t4 = 80B00000
    bne     v0, $at, lbl_80AFD254
lbl_80AFD244:
    addiu   t4, t4, %lo(func_80AFC9C0) # t4 = 80AFC9C0
    sh      t3, 0x0274(a2)             # 00000274
    b       lbl_80AFD278
    sw      t4, 0x024C(a2)             # 0000024C
lbl_80AFD254:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80AFD26C
    lui     t5, %hi(func_80AFCC0C)     # t5 = 80B00000
    addiu   t5, t5, %lo(func_80AFCC0C) # t5 = 80AFCC0C
    b       lbl_80AFD278
    sw      t5, 0x024C(a2)             # 0000024C
lbl_80AFD26C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022A90
    lw      a1, 0x001C($sp)
lbl_80AFD278:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFD288:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x1C44(s1)             # 00001C44
    lwc1    $f4, 0x025C(s0)            # 0000025C
    lwc1    $f6, 0x0260(s0)            # 00000260
    lwc1    $f8, 0x0264(s0)            # 00000264
    lw      a1, 0x0268(s0)             # 00000268
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f8, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    sw      v0, 0x002C($sp)
    lh      t6, 0x0270(s0)             # 00000270
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      v0, 0x002C($sp)
    beq     t6, $at, lbl_80AFD360
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0024(v0)             # 00000024
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0294(s0)             # 00000294
    lw      t7, 0x0028(v0)             # 00000028
    addiu   a1, s0, 0x027C             # a1 = 0000027C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sw      t7, 0x0298(s0)             # 00000298
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x029C(s0)             # 0000029C
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    beq     t9, $zero, lbl_80AFD328
    nop
    lwc1    $f10, 0x0028(v0)           # 00000028
    mtc1    $at, $f16                  # $f16 = 10.00
    nop
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0298(s0)           # 00000298
lbl_80AFD328:
    jal     func_80027854
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lwl     t1, 0x0284(s0)             # 00000284
    lwl     t3, 0x028A(s0)             # 0000028A
    lwr     t1, 0x0287(s0)             # 00000287
    lwr     t3, 0x028D(s0)             # 0000028D
    swl     t1, 0x0250(s0)             # 00000250
    swl     t3, 0x0256(s0)             # 00000256
    swr     t1, 0x0253(s0)             # 00000253
    swr     t3, 0x0259(s0)             # 00000259
    lhu     t1, 0x0288(s0)             # 00000288
    lhu     t3, 0x028E(s0)             # 0000028E
    sh      t1, 0x0254(s0)             # 00000254
    sh      t3, 0x025A(s0)             # 0000025A
lbl_80AFD360:
    lh      t4, 0x026E(s0)             # 0000026E
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x026E(s0)             # 0000026E
    jalr    $ra, t9
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    sw      t6, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    addiu   a2, s0, 0x02AC             # a2 = 000002AC
    or      a1, a2, $zero              # a1 = 000002AC
    sw      a2, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80AFD3EC:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80AFD418
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x0258(v0)             # 00000258
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
lbl_80AFD418:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lw      v0, 0x0014($sp)
    bne     a1, $at, lbl_80AFD448
    lw      v1, 0x0010($sp)
    lh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0252(v0)             # 00000252
    lh      t2, 0x0004(v1)             # 00000004
    addu    t1, t9, t0
    sh      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x0254(v0)             # 00000254
    addu    t4, t2, t3
    sh      t4, 0x0004(v1)             # 00000004
lbl_80AFD448:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80AFD454:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0020($sp)
    lui     a3, %hi(func_80AFD3EC)     # a3 = 80B00000
    addiu   a3, a3, %lo(func_80AFD3EC) # a3 = 80AFD3EC
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008993C
    sw      v0, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AFD4B0: .word 0x01780400, 0x00000009, 0x00970000, 0x000002F8
.word func_80AFC720
.word func_80AFC900
.word func_80AFD288
.word func_80AFD454
var_80AFD4D0: .word 0x00000006, 0x00000007
var_80AFD4D8: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00210028, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata


