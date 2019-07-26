.section .text
func_80AFD620:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0368             # a1 = 00000368
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_80B046F0)      # a3 = 80B00000
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_80B046F0)  # a3 = 80B046F0
    jal     func_8004AC84
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFD66C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    addiu   a2, a0, 0x0368             # a2 = 00000368
    or      a1, a2, $zero              # a1 = 00000368
    jal     func_80050B00
    sw      a2, 0x0018($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AFD6B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0368             # a1 = 00000368
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFD6DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CAA70
    addiu   a0, $zero, 0x0062          # a0 = 00000062
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFD6FC:
    lw      v1, 0x03C4(a0)             # 000003C4
    bnel    v1, $zero, lbl_80AFD740
    or      v0, v1, $zero              # v0 = 00000000
    lw      v0, 0x1C7C(a1)             # 00001C7C
    addiu   a1, $zero, 0x017A          # a1 = 0000017A
    beql    v0, $zero, lbl_80AFD740
    or      v0, v1, $zero              # v0 = 00000000
    lh      t6, 0x0000(v0)             # 00000000
lbl_80AFD71C:
    bnel    a1, t6, lbl_80AFD734
    lw      v0, 0x0124(v0)             # 00000124
    sw      v0, 0x03C4(a0)             # 000003C4
    b       lbl_80AFD73C
    or      v1, v0, $zero              # v1 = 00000000
    lw      v0, 0x0124(v0)             # 00000124
lbl_80AFD734:
    bnel    v0, $zero, lbl_80AFD71C
    lh      t6, 0x0000(v0)             # 00000000
lbl_80AFD73C:
    or      v0, v1, $zero              # v0 = 00000000
lbl_80AFD740:
    jr      $ra
    nop


func_80AFD748:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0236(a2)             # 00000236
    addiu   v1, a2, 0x0236             # v1 = 00000236
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80AFD770
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    b       lbl_80AFD780
    addiu   v1, a2, 0x0236             # v1 = 00000236
lbl_80AFD770:
    lh      t7, 0x0000(v1)             # 00000236
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 00000236
    lh      v0, 0x0000(v1)             # 00000236
lbl_80AFD780:
    bne     v0, $zero, lbl_80AFD7A0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)
    jal     func_80063BF0
    sw      a2, 0x0038($sp)
    lw      v1, 0x001C($sp)
    lw      a2, 0x0038($sp)
    sh      v0, 0x0000(v1)             # 00000000
lbl_80AFD7A0:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x0234             # v0 = 00000234
    sh      t9, 0x0000(v0)             # 00000234
    lh      t0, 0x0000(v0)             # 00000234
    slti    $at, t0, 0x0003
    bnel    $at, $zero, lbl_80AFD7C4
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x0000(v0)          # 00000234
    lw      $ra, 0x0014($sp)
lbl_80AFD7C4:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AFD7D0:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sh      a1, 0x0234(a0)             # 00000234
    jr      $ra
    nop


func_80AFD7E8:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sh      a1, 0x0238(a0)             # 00000238
    jr      $ra
    nop


func_80AFD800:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    sub.s   $f6, $f0, $f4
    lw      v0, 0x0030($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f16, 0x0024(v0)           # 00000024
    addiu   v0, v0, 0x0024             # v0 = 00000024
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x0004(v0)            # 00000028
    sw      v0, 0x001C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0024($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    sub.s   $f8, $f0, $f6
    lw      v0, 0x001C($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFF0
    mul.s   $f16, $f8, $f10
    lwc1    $f18, 0x0008(v0)           # 00000008
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    add.s   $f4, $f16, $f18
    jal     func_80013678
    swc1    $f4, 0x0028($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AFD89C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    lui     $at, %hi(var_80B04880)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B04880)($at)
    lui     $at, %hi(var_80B04884)     # $at = 80B00000
    lwc1    $f6, %lo(var_80B04884)($at)
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    sw      t6, 0x0024($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x003B          # a2 = 0000003B
    lui     a3, 0xC3DD                 # a3 = C3DD0000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AFD8F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    lw      a0, 0x0024($sp)
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFD93C:
    lhu     t6, 0x0088(a0)             # 00000088
    andi    t7, t6, 0xFFF6             # t7 = 00000000
    sh      t7, 0x0088(a0)             # 00000088
    jr      $ra
    nop


func_80AFD950:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    lw      a0, 0x0038($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)
    addiu   a0, a0, 0x03F0             # a0 = 000003F0
    sw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      a0, 0x0024($sp)
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      a0, 0x0038($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    addiu   a0, a0, 0x03F6             # a0 = 000003F6
    sw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      a0, 0x0024($sp)
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AFD9F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a1, a0, 0x03E8             # a1 = 000003E8
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x0400(a0)             # 00000400
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x0404(a0)             # 00000404
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x0408(a0)             # 00000408
    lw      t9, 0x0000(v1)             # 8011BA00
    lh      t0, 0x1474(t9)             # 00001474
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x03FC(a0)           # 000003FC
    lw      t1, 0x0000(v1)             # 8011BA00
    lh      a2, 0x1476(t1)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFDA7C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s2, 0x0028($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lh      s1, 0x008A(s2)             # 0000008A
    lh      t6, 0x0032(s2)             # 00000032
    addiu   a0, s2, 0x03C0             # a0 = 000003C0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    subu    t7, s1, t6
    sll     t8, t7, 16
    sra     t9, t8, 16
    bltz    t9, lbl_80AFDAD0
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   s0, s2, 0x0032             # s0 = 00000032
    lh      t0, 0x0000(s0)             # 00000032
    subu    v0, s1, t0
    sll     v0, v0, 16
    b       lbl_80AFDAE8
    sra     v0, v0, 16
lbl_80AFDAD0:
    addiu   s0, s2, 0x0032             # s0 = 00000032
    lh      t1, 0x0000(s0)             # 00000032
    subu    v0, s1, t1
    sll     v0, v0, 16
    sra     v0, v0, 16
    subu    v0, $zero, v0
lbl_80AFDAE8:
    sll     a1, v0, 16
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t2, 0x0010($sp)
    sra     a1, a1, 16
    jal     func_80064508
    sw      a0, 0x0030($sp)
    lw      t3, 0x0030($sp)
    sll     a1, s1, 16
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    lh      a3, 0x0000(t3)             # 00000000
    sw      t4, 0x0010($sp)
    sra     a1, a1, 16
    or      a0, s0, $zero              # a0 = 00000032
    jal     func_80064508
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lh      t5, 0x0000(s0)             # 00000032
    sh      t5, 0x00B6(s2)             # 000000B6
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80AFDB44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x008A(a0)             # 0000008A
    lh      t6, 0x0032(a0)             # 00000032
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     t3, %hi(var_80B04748)      # t3 = 80B00000
    subu    t7, v0, t6
    sll     t8, t7, 16
    sra     t9, t8, 16
    bltzl   t9, lbl_80AFDB88
    lh      t1, 0x0032(a0)             # 00000032
    lh      t0, 0x0032(a0)             # 00000032
    subu    v1, v0, t0
    sll     v1, v1, 16
    b       lbl_80AFDB98
    sra     v1, v1, 16
    lh      t1, 0x0032(a0)             # 00000032
lbl_80AFDB88:
    subu    v1, v0, t1
    sll     v1, v1, 16
    sra     v1, v1, 16
    subu    v1, $zero, v1
lbl_80AFDB98:
    slti    $at, v1, 0x1556
    bne     $at, $zero, lbl_80AFDBA8
    lui     $at, %hi(var_80B04748)     # $at = 80B00000
    sw      t2, %lo(var_80B04748)($at)
lbl_80AFDBA8:
    lw      t3, %lo(var_80B04748)(t3)
    beql    t3, $zero, lbl_80AFDBD0
    sh      $zero, 0x03C0(a0)          # 000003C0
    jal     func_80AFDA7C
    nop
    bne     v0, $zero, lbl_80AFDBD0
    lui     $at, %hi(var_80B04748)     # $at = 80B00000
    b       lbl_80AFDBD0
    sw      $zero, %lo(var_80B04748)($at)
    sh      $zero, 0x03C0(a0)          # 000003C0
lbl_80AFDBD0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFDBE0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFDC04:
    lbu     v0, 0x03B8(a0)             # 000003B8
    jr      $ra
    nop


func_80AFDC10:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x03B8(a0)             # 000003B8
    jr      $ra
    nop


func_80AFDC24:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lw      t6, 0x02EC(a0)             # 000002EC
    sll     t7, a2,  1
    lw      v0, 0x023C(a0)             # 0000023C
    beq     t6, $zero, lbl_80AFDDF8
    addu    t1, a0, t7
    lh      t9, 0x02AC(t1)             # 000002AC
    lh      t8, 0x027C(t1)             # 0000027C
    lh      t2, 0x024C(t1)             # 0000024C
    subu    t0, a1, t9
    mtc1    t0, $f4                    # $f4 = 0.00
    ori     $at, $zero, 0x8001         # $at = 00008001
    addu    a3, t8, a1
    cvt.s.w $f0, $f4
    sll     a3, a3, 16
    sra     a3, a3, 16
    or      v1, t2, $zero              # v1 = 00000000
    abs.s   $f0, $f0
    trunc.w.s $f6, $f0
    mfc1    t4, $f6
    nop
    slt     $at, t4, $at
    bne     $at, $zero, lbl_80AFDCA4
    nop
    blez    a1, lbl_80AFDCA0
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    b       lbl_80AFDCA4
    addu    t0, t0, $at
lbl_80AFDCA0:
    addu    t0, t0, $at
lbl_80AFDCA4:
    bne     a2, $zero, lbl_80AFDCB4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80AFDCD0
    nop
lbl_80AFDCB4:
    beq     t0, $zero, lbl_80AFDCD0
    subu    t5, t0, v1
    bgez    t5, lbl_80AFDCCC
    sra     t6, t5,  4
    addiu   $at, t5, 0x000F            # $at = 0000000F
    sra     t6, $at,  4
lbl_80AFDCCC:
    addu    v1, v1, t6
lbl_80AFDCD0:
    beq     v1, $zero, lbl_80AFDCEC
    subu    t0, a3, a1
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v1, $at
    mflo    t7
    subu    v1, v1, t7
    nop
lbl_80AFDCEC:
    sll     t0, t0, 16
    sra     t0, t0, 16
    beq     t0, $zero, lbl_80AFDD0C
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, t0, $at
    mflo    t8
    subu    v1, v1, t8
    nop
lbl_80AFDD0C:
    multu   t2, v1
    addu    a3, a3, v1
    subu    t0, a3, a1
    sll     t0, t0, 16
    sra     t0, t0, 16
    slti    $at, t0, 0xFF9D
    mflo    t9
    bgtz    t9, lbl_80AFDD48
    nop
    bne     $at, $zero, lbl_80AFDD48
    slti    $at, t0, 0x0064
    beq     $at, $zero, lbl_80AFDD48
    nop
    or      a3, a1, $zero              # a3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AFDD48:
    bne     a2, $zero, lbl_80AFDDEC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80AFDDEC
    addiu   t0, a0, 0x013C             # t0 = 0000013C
    lbu     t3, 0x0001(t0)             # 0000013D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   v0, a1, 0xD508             # v0 = FFFFD508
    bnel    t3, $at, lbl_80AFDDC8
    slt     $at, a3, v0
    lwc1    $f0, 0x0018(t0)            # 00000154
    lwc1    $f2, 0x03CC(a0)            # 000003CC
    lui     $at, %hi(var_80B04888)     # $at = 80B00000
    lwc1    $f10, %lo(var_80B04888)($at)
    div.s   $f8, $f0, $f2
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    addu    v0, t5, a1
    slt     $at, a3, v0
    bnel    $at, $zero, lbl_80AFDDF0
    subu    t6, a3, a1
    blez    v1, lbl_80AFDDEC
    or      a3, v0, $zero              # a3 = FFFFD508
    bgez    v1, lbl_80AFDDB4
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFDDB4:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFDDF0
    subu    t6, a3, a1
    slt     $at, a3, v0
lbl_80AFDDC8:
    bnel    $at, $zero, lbl_80AFDDF0
    subu    t6, a3, a1
    blez    v1, lbl_80AFDDEC
    or      a3, v0, $zero              # a3 = FFFFD508
    bgez    v1, lbl_80AFDDE4
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFDDE4:
    sra     v1, $at,  1
    subu    v1, $zero, v1
lbl_80AFDDEC:
    subu    t6, a3, a1
lbl_80AFDDF0:
    sh      v1, 0x024C(t1)             # 0000024C
    sh      t6, 0x027C(t1)             # 0000027C
lbl_80AFDDF8:
    sll     t7, a2,  1
    addu    t8, a0, t7
    sh      a1, 0x02AC(t8)             # 000002AC
    jr      $ra
    nop


func_80AFDE0C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lw      t6, 0x0000($sp)
    lw      t7, 0x0000($sp)
    bne     a2, t0, lbl_80AFDE38
    lw      a3, 0x023C(t6)             # 0000023C
    addiu   a0, $zero, 0x3A98          # a0 = 00003A98
    or      t4, $zero, $zero           # t4 = 00000000
    b       lbl_80AFDEA4
    addiu   t3, $zero, 0x0005          # t3 = 00000005
lbl_80AFDE38:
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    bne     a2, t3, lbl_80AFDE50
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   a0, $zero, 0x32C8          # a0 = 000032C8
    b       lbl_80AFDEA4
    addiu   t4, $zero, 0x0003          # t4 = 00000003
lbl_80AFDE50:
    bne     a2, $at, lbl_80AFDE60
    addiu   a0, $zero, 0x2EE0          # a0 = 00002EE0
    b       lbl_80AFDEA4
    addiu   t4, $zero, 0x0006          # t4 = 00000006
lbl_80AFDE60:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a2, $at, lbl_80AFDE74
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    b       lbl_80AFDEA4
    addiu   t4, $zero, 0x0009          # t4 = 00000009
lbl_80AFDE74:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a2, $at, lbl_80AFDE88
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    b       lbl_80AFDEA4
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
lbl_80AFDE88:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a2, $at, lbl_80AFDEA0
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    b       lbl_80AFDEA4
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
lbl_80AFDEA0:
    addiu   t4, $zero, 0x0012          # t4 = 00000012
lbl_80AFDEA4:
    lw      t8, 0x02EC(t7)             # 000002EC
    sll     t9, a2,  1
    addu    t2, t7, t9
    beql    t8, $zero, lbl_80AFE604
    lw      t6, 0x0000($sp)
    lh      t8, 0x0006($sp)
    lh      t7, 0x02AC(t2)             # 000002AC
    lh      t6, 0x027C(t2)             # 0000027C
    lh      t1, 0x024C(t2)             # 0000024C
    subu    v0, t8, t7
    mtc1    v0, $f4                    # $f4 = 0.00
    addu    a1, t6, t8
    lw      t7, 0x0000($sp)
    cvt.s.w $f0, $f4
    ori     $at, $zero, 0x8001         # $at = 00008001
    sll     a1, a1, 16
    sll     t9, t4,  1
    sra     a1, a1, 16
    or      v1, t1, $zero              # v1 = 00000000
    abs.s   $f0, $f0
    trunc.w.s $f6, $f0
    mfc1    t6, $f6
    nop
    slt     $at, t6, $at
    bne     $at, $zero, lbl_80AFDF24
    addu    t6, t7, t9
    blez    t8, lbl_80AFDF20
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    b       lbl_80AFDF24
    addu    v0, v0, $at
lbl_80AFDF20:
    addu    v0, v0, $at
lbl_80AFDF24:
    bltz    t4, lbl_80AFDF50
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t5, 0x024C(t6)             # 0000024C
    bltz    t5, lbl_80AFDF40
    subu    t4, $zero, t5
    b       lbl_80AFDF40
    or      t4, t5, $zero              # t4 = 00000000
lbl_80AFDF40:
    div     $zero, t4, $at
    mflo    t8
    addu    v0, v0, t8
    nop
lbl_80AFDF50:
    bne     a2, t0, lbl_80AFDF8C
    nop
    beq     a3, t3, lbl_80AFDF68
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     a3, $at, lbl_80AFDF8C
    nop
lbl_80AFDF68:
    beq     v0, $zero, lbl_80AFE034
    subu    t7, v0, v1
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, t7, $at
    mflo    t9
    subu    v1, v1, t9
    nop
    b       lbl_80AFE034
    nop
lbl_80AFDF8C:
    bne     a2, t0, lbl_80AFDFCC
    addiu   $at, $zero, 0x0016         # $at = 00000016
    bne     a3, $at, lbl_80AFDFCC
    lw      t6, 0x0000($sp)
    lbu     t8, 0x013D(t6)             # 0000013D
    bne     t0, t8, lbl_80AFDFCC
    nop
    beq     v0, $zero, lbl_80AFE034
    subu    t7, v0, v1
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, t7, $at
    mflo    t9
    subu    v1, v1, t9
    nop
    b       lbl_80AFE034
    nop
lbl_80AFDFCC:
    bne     a2, t0, lbl_80AFE018
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     a3, $at, lbl_80AFDFE8
    lw      t6, 0x0000($sp)
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     a3, $at, lbl_80AFE018
    nop
lbl_80AFDFE8:
    lbu     t8, 0x013D(t6)             # 0000013D
    bne     t0, t8, lbl_80AFE018
    nop
    beq     v0, $zero, lbl_80AFE034
    subu    t7, v0, v1
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, t7, $at
    mflo    t9
    subu    v1, v1, t9
    nop
    b       lbl_80AFE034
    nop
lbl_80AFE018:
    beq     v0, $zero, lbl_80AFE034
    subu    t6, v0, v1
    bgez    t6, lbl_80AFE030
    sra     t8, t6,  4
    addiu   $at, t6, 0x000F            # $at = 0000000F
    sra     t8, $at,  4
lbl_80AFE030:
    addu    v1, v1, t8
lbl_80AFE034:
    beq     v1, $zero, lbl_80AFE050
    subu    v0, a1, a0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v1, $at
    mflo    t7
    subu    v1, v1, t7
    nop
lbl_80AFE050:
    sll     v0, v0, 16
    sra     v0, v0, 16
    beq     v0, $zero, lbl_80AFE070
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, v0, $at
    mflo    t9
    subu    v1, v1, t9
    nop
lbl_80AFE070:
    multu   t1, v1
    addu    a1, a1, v1
    subu    v0, a1, a0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0xFF9D
    mflo    t6
    bgtz    t6, lbl_80AFE0AC
    nop
    bne     $at, $zero, lbl_80AFE0AC
    slti    $at, v0, 0x0064
    beq     $at, $zero, lbl_80AFE0AC
    nop
    or      a1, a0, $zero              # a1 = 00004000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AFE0AC:
    bne     a2, t0, lbl_80AFE4D0
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a3, $at, lbl_80AFE12C
    lw      t8, 0x0000($sp)
    addiu   v0, t8, 0x013C             # v0 = 0000013C
    lbu     t7, 0x0001(v0)             # 0000013D
    bnel    t0, t7, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    lwc1    $f0, 0x0018(v0)            # 00000154
    lwc1    $f2, 0x03D0(t8)            # 000003D0
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f16                  # $f16 = -2000.00
    sub.s   $f8, $f2, $f0
    div.s   $f10, $f8, $f2
    mul.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addu    a3, t6, a0
    slt     $at, a3, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE11C
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE11C:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE12C:
    bne     a3, t3, lbl_80AFE1D4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lw      t7, 0x0000($sp)
    addiu   v0, t7, 0x013C             # v0 = 0000013C
    lbu     t8, 0x0001(v0)             # 0000013D
    bnel    t0, t8, lbl_80AFE1A4
    addiu   v0, a0, 0xF830             # v0 = 00003830
    lwc1    $f0, 0x0018(v0)            # 00003848
    lwc1    $f2, 0x03D4(t7)            # 000003D4
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f8                   # $f8 = -2000.00
    div.s   $f6, $f0, $f2
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    addu    a3, t6, a0
    slt     $at, a3, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE190
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE190:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0xF830             # v0 = 00003830
lbl_80AFE1A4:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00003830
    bgez    v1, lbl_80AFE1C4
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE1C4:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE1D4:
    beq     a3, $at, lbl_80AFE1E4
    lw      t8, 0x0000($sp)
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     a3, $at, lbl_80AFE2B4
lbl_80AFE1E4:
    addiu   v0, t8, 0x013C             # v0 = 0000013C
    lbu     t7, 0x0001(v0)             # 0000013D
    lui     $at, 0x4228                # $at = 42280000
    bnel    t0, t7, lbl_80AFE284
    addiu   v0, a0, 0x1068             # v0 = 00005068
    mtc1    $at, $f12                  # $f12 = 42.00
    lui     $at, %hi(var_80B0488C)     # $at = 80B00000
    lwc1    $f0, 0x0018(v0)            # 00005080
    lwc1    $f2, 0x03E4(t8)            # 000003E4
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_80AFE224
    sub.s   $f18, $f0, $f12
    b       lbl_80AFE250
    addiu   v0, a0, 0xF830             # v0 = 00003830
    sub.s   $f18, $f0, $f12
lbl_80AFE224:
    lwc1    $f4, %lo(var_80B0488C)($at)
    lui     $at, 0xC4FA                # $at = C4FA0000
    sub.s   $f8, $f2, $f12
    mul.s   $f6, $f18, $f4
    mtc1    $at, $f16                  # $f16 = -2000.00
    div.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addu    v0, t6, a0
lbl_80AFE250:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00003830
    bgez    v1, lbl_80AFE270
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE270:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0x1068             # v0 = 00005068
lbl_80AFE284:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00005068
    bgez    v1, lbl_80AFE2A4
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE2A4:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE2B4:
    addiu   $at, $zero, 0x0016         # $at = 00000016
    bne     a3, $at, lbl_80AFE368
    lw      t7, 0x0000($sp)
    addiu   v0, t7, 0x013C             # v0 = 0000013C
    lbu     t8, 0x0001(v0)             # 0000013D
    bnel    t0, t8, lbl_80AFE338
    addiu   v0, a0, 0xF830             # v0 = 00003830
    lwc1    $f0, 0x0018(v0)            # 00003848
    lwc1    $f2, 0x03DC(t7)            # 000003DC
    lui     $at, %hi(var_80B04890)     # $at = 80B00000
    lwc1    $f8, %lo(var_80B04890)($at)
    div.s   $f6, $f0, $f2
    lui     $at, %hi(var_80B04894)     # $at = 80B00000
    lwc1    $f16, %lo(var_80B04894)($at)
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addu    a3, t6, a0
    slt     $at, a3, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE324
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE324:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0xF830             # v0 = 00003830
lbl_80AFE338:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00003830
    bgez    v1, lbl_80AFE358
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE358:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE368:
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     a3, $at, lbl_80AFE41C
    lw      t8, 0x0000($sp)
    addiu   v0, t8, 0x013C             # v0 = 0000013C
    lbu     t7, 0x0001(v0)             # 0000013D
    bnel    t0, t7, lbl_80AFE3EC
    addiu   v0, a0, 0xDA80             # v0 = 00001A80
    lwc1    $f0, 0x0018(v0)            # 00001A98
    lwc1    $f2, 0x03E0(t8)            # 000003E0
    lui     $at, %hi(var_80B04898)     # $at = 80B00000
    lwc1    $f8, %lo(var_80B04898)($at)
    div.s   $f6, $f0, $f2
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f16                  # $f16 = -2000.00
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addu    a3, t6, a0
    slt     $at, a3, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE3D8
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE3D8:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0xDA80             # v0 = 00001A80
lbl_80AFE3EC:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00001A80
    bgez    v1, lbl_80AFE40C
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE40C:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE41C:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     a3, $at, lbl_80AFE5F0
    lw      t7, 0x0000($sp)
    addiu   v0, t7, 0x013C             # v0 = 0000013C
    lbu     t8, 0x0001(v0)             # 0000013D
    bnel    t0, t8, lbl_80AFE4A0
    addiu   v0, a0, 0x2C88             # v0 = 00006C88
    lwc1    $f0, 0x0018(v0)            # 00006CA0
    lwc1    $f2, 0x03D8(t7)            # 000003D8
    lui     $at, %hi(var_80B0489C)     # $at = 80B00000
    lwc1    $f8, %lo(var_80B0489C)($at)
    div.s   $f6, $f0, $f2
    lui     $at, 0xC616                # $at = C6160000
    mtc1    $at, $f16                  # $f16 = -9600.00
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    nop
    addu    a3, t6, a0
    slt     $at, a3, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE48C
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE48C:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0x2C88             # v0 = 00006C88
lbl_80AFE4A0:
    slt     $at, v0, a1
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    bgez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 00006C88
    bgez    v1, lbl_80AFE4C0
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE4C0:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE4D0:
    beq     a2, $at, lbl_80AFE4DC
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a2, $at, lbl_80AFE5F0
lbl_80AFE4DC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a3, $at, lbl_80AFE584
    lw      t8, 0x0000($sp)
    addiu   v0, t8, 0x013C             # v0 = 0000013C
    lbu     t7, 0x0001(v0)             # 0000013D
    bnel    t0, t7, lbl_80AFE554
    addiu   v0, a0, 0xE4A8             # v0 = 000024A8
    lwc1    $f0, 0x0018(v0)            # 000024C0
    lwc1    $f2, 0x03D0(t8)            # 000003D0
    lui     $at, %hi(var_80B048A0)     # $at = 80B00000
    lwc1    $f8, %lo(var_80B048A0)($at)
    div.s   $f6, $f0, $f2
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    addu    a3, t6, a0
    slt     $at, a1, a3
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    blez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE540
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE540:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    addiu   v0, a0, 0xE4A8             # v0 = 000024A8
lbl_80AFE554:
    slt     $at, a1, v0
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    blez    v1, lbl_80AFE5F0
    or      a1, v0, $zero              # a1 = 000024A8
    bgez    v1, lbl_80AFE574
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE574:
    sra     v1, $at,  1
    subu    v1, $zero, v1
    b       lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE584:
    bne     a3, t3, lbl_80AFE5F0
    lw      t7, 0x0000($sp)
    addiu   v0, t7, 0x013C             # v0 = 0000013C
    lbu     t8, 0x0001(v0)             # 0000013D
    bnel    t0, t8, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    lwc1    $f0, 0x0018(v0)            # 00000154
    lwc1    $f2, 0x03D4(t7)            # 000003D4
    lui     $at, %hi(var_80B048A4)     # $at = 80B00000
    lwc1    $f6, %lo(var_80B048A4)($at)
    sub.s   $f18, $f2, $f0
    div.s   $f4, $f18, $f2
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    addu    a3, t6, a0
    slt     $at, a1, a3
    bnel    $at, $zero, lbl_80AFE5F4
    sh      v1, 0x024C(t2)             # 0000024C
    blez    v1, lbl_80AFE5F0
    or      a1, a3, $zero              # a1 = 00000000
    bgez    v1, lbl_80AFE5E8
    addu    $at, v1, $zero
    addiu   $at, v1, 0x0001            # $at = 00000001
lbl_80AFE5E8:
    sra     v1, $at,  1
    subu    v1, $zero, v1
lbl_80AFE5F0:
    sh      v1, 0x024C(t2)             # 0000024C
lbl_80AFE5F4:
    lh      t8, 0x0006($sp)
    subu    t7, a1, t8
    sh      t7, 0x027C(t2)             # 0000027C
    lw      t6, 0x0000($sp)
lbl_80AFE604:
    lh      t9, 0x0006($sp)
    sll     t8, a2,  1
    addu    t7, t6, t8
    sh      t9, 0x02AC(t7)             # 000002AC
    jr      $ra
    nop


func_80AFE61C:
    sll     a3, a1, 16
    sra     a3, a3, 16
    sw      a1, 0x0004($sp)
    lw      t6, 0x02EC(a0)             # 000002EC
    sll     t7, a2,  1
    addu    a1, a0, t7
    beq     t6, $zero, lbl_80AFE838
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t8, 0x027C(a1)             # 0000027C
    lh      t1, 0x024C(a1)             # 0000024C
    lh      t9, 0x02AC(a1)             # 000002AC
    subu    v1, t8, a3
    sll     t0, v1, 16
    sra     t0, t0, 16
    or      t2, t0, $zero              # t2 = 00000000
    or      v0, t1, $zero              # v0 = 00000000
    bne     a2, $at, lbl_80AFE670
    subu    t3, a3, t9
    or      t4, $zero, $zero           # t4 = 00000000
    b       lbl_80AFE758
    lh      t5, 0x024C(a0)             # 0000024C
lbl_80AFE670:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a2, $at, lbl_80AFE684
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    b       lbl_80AFE758
    lh      t5, 0x0252(a0)             # 00000252
lbl_80AFE684:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a2, $at, lbl_80AFE698
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    b       lbl_80AFE758
    lh      t5, 0x0258(a0)             # 00000258
lbl_80AFE698:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a2, $at, lbl_80AFE6CC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lh      t6, 0x025E(a0)             # 0000025E
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    bltzl   t6, lbl_80AFE6C0
    lh      t5, 0x025E(a0)             # 0000025E
    b       lbl_80AFE758
    lh      t5, 0x025E(a0)             # 0000025E
    lh      t5, 0x025E(a0)             # 0000025E
lbl_80AFE6C0:
    b       lbl_80AFE758
    subu    t5, $zero, t5
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_80AFE6CC:
    bnel    a2, $at, lbl_80AFE6FC
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lh      t7, 0x0264(a0)             # 00000264
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    bltzl   t7, lbl_80AFE6F0
    lh      t5, 0x0264(a0)             # 00000264
    b       lbl_80AFE758
    lh      t5, 0x0264(a0)             # 00000264
    lh      t5, 0x0264(a0)             # 00000264
lbl_80AFE6F0:
    b       lbl_80AFE758
    subu    t5, $zero, t5
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_80AFE6FC:
    bnel    a2, $at, lbl_80AFE734
    lh      t9, 0x0270(a0)             # 00000270
    lh      t8, 0x026A(a0)             # 0000026A
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    bltzl   t8, lbl_80AFE724
    lh      t5, 0x026A(a0)             # 0000026A
    lh      t5, 0x026A(a0)             # 0000026A
    b       lbl_80AFE758
    subu    t5, $zero, t5
    lh      t5, 0x026A(a0)             # 0000026A
lbl_80AFE724:
    subu    t5, $zero, t5
    b       lbl_80AFE758
    subu    t5, $zero, t5
    lh      t9, 0x0270(a0)             # 00000270
lbl_80AFE734:
    addiu   t4, $zero, 0x0012          # t4 = 00000012
    bltzl   t9, lbl_80AFE750
    lh      t5, 0x0270(a0)             # 00000270
    lh      t5, 0x0270(a0)             # 00000270
    b       lbl_80AFE758
    subu    t5, $zero, t5
    lh      t5, 0x0270(a0)             # 00000270
lbl_80AFE750:
    subu    t5, $zero, t5
    subu    t5, $zero, t5
lbl_80AFE758:
    mtc1    t3, $f4                    # $f4 = 0.00
    ori     $at, $zero, 0x8001         # $at = 00008001
    cvt.s.w $f0, $f4
    abs.s   $f0, $f0
    trunc.w.s $f6, $f0
    mfc1    t7, $f6
    nop
    slt     $at, t7, $at
    bne     $at, $zero, lbl_80AFE798
    nop
    blez    a3, lbl_80AFE794
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    b       lbl_80AFE798
    addu    t3, t3, $at
lbl_80AFE794:
    addu    t3, t3, $at
lbl_80AFE798:
    bltz    t4, lbl_80AFE7B0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, t5, $at
    mflo    t8
    addu    t3, t3, t8
    nop
lbl_80AFE7B0:
    beq     t3, $zero, lbl_80AFE7CC
    subu    t9, t3, v0
    bgez    t9, lbl_80AFE7C8
    sra     t6, t9,  4
    addiu   $at, t9, 0x000F            # $at = 0000000F
    sra     t6, $at,  4
lbl_80AFE7C8:
    addu    v0, v0, t6
lbl_80AFE7CC:
    beq     v0, $zero, lbl_80AFE7E4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at
    mflo    t7
    subu    v0, v0, t7
    nop
lbl_80AFE7E4:
    beq     t0, $zero, lbl_80AFE7FC
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, t0, $at
    mflo    t8
    subu    v0, v0, t8
    nop
lbl_80AFE7FC:
    multu   t1, v0
    addu    v1, v1, v0
    slti    $at, t2, 0xFF9D
    mflo    t9
    bgtzl   t9, lbl_80AFE830
    addu    t6, a3, v1
    bne     $at, $zero, lbl_80AFE82C
    slti    $at, t2, 0x0064
    beql    $at, $zero, lbl_80AFE830
    addu    t6, a3, v1
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFE82C:
    addu    t6, a3, v1
lbl_80AFE830:
    sh      v0, 0x024C(a1)             # 0000024C
    sh      t6, 0x027C(a1)             # 0000027C
lbl_80AFE838:
    sll     t7, a2,  1
    addu    t8, a0, t7
    sh      a3, 0x02AC(t8)             # 000002AC
    jr      $ra
    nop


func_80AFE84C:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0098($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_80AFEEFC
    lw      v0, 0x00A8($sp)
    lw      a3, 0x00B0($sp)
    lw      s0, 0x00AC($sp)
    lw      t6, 0x0098($sp)
    addiu   v1, s0, 0x03F0             # v1 = 000003F0
    lw      a0, 0x0000(t6)             # 00000000
    lw      t0, 0x02C4(a0)             # 000002C4
    addiu   t0, t0, 0xFE40             # t0 = FFFFFE40
    sw      t0, 0x02C4(a0)             # 000002C4
    lh      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0002(v1)             # 000003F2
    lh      t1, 0x0004(v0)             # 00000004
    addu    t9, t7, t8
    sh      t9, 0x0000(v0)             # 00000000
    lh      t2, 0x0000(v1)             # 000003F0
    addu    t3, t1, t2
    sh      t3, 0x0004(v0)             # 00000004
    lw      a2, 0x0000(a3)             # 00000000
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0030             # t5 = DB060030
    addiu   t4, a2, 0x0008             # t4 = 00000008
    sw      t4, 0x0000(a3)             # 00000000
    sw      t0, 0x0004(a2)             # 00000004
    sw      t5, 0x0000(a2)             # 00000000
    jal     func_800AA6EC
    sw      t0, 0x0028($sp)
    lw      v1, 0x00A4($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0000(v1)           # 00000000
    lwc1    $f14, 0x0004(v1)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(v1)             # 00000008
    lw      v0, 0x00A8($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0000(v0)             # 00000000
    lh      a1, 0x0002(v0)             # 00000002
    jal     func_800AAF00
    lh      a2, 0x0004(v0)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0x43B5                # $at = 43B50000
    mtc1    $at, $f12                  # $f12 = 362.00
    lui     $at, 0xC305                # $at = C3050000
    mtc1    $at, $f14                  # $f14 = -133.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFE97C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003C($sp)
    jal     func_80AFDE0C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_80AFE97C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   v1, s0, 0x027C             # v1 = 0000027C
    lh      t7, 0x0000(v1)             # 0000027C
    lh      t9, 0x0002(v1)             # 0000027E
    lh      t2, 0x0004(v1)             # 00000280
    lh      t6, 0x1492(v0)             # 80121492
    lh      t8, 0x1494(v0)             # 80121494
    lh      t1, 0x1496(v0)             # 80121496
    addu    a0, t6, t7
    addu    a1, t8, t9
    addu    a2, t1, t2
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      v1, 0x0024($sp)
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0xC33C                # $at = C33C0000
    mtc1    $at, $f12                  # $f12 = -188.00
    lui     $at, 0xC338                # $at = C3380000
    mtc1    $at, $f14                  # $f14 = -184.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0028($sp)
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFEA28
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    addiu   a2, $zero, 0x0003          # a2 = 00000003
lbl_80AFEA28:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0024($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t4, 0x0006(v1)             # 00000006
    lh      t6, 0x0008(v1)             # 00000008
    lh      t8, 0x000A(v1)             # 0000000A
    lh      t3, 0x1498(v0)             # 80121498
    lh      t5, 0x149A(v0)             # 8012149A
    lh      t7, 0x149C(v0)             # 8012149C
    addu    a0, t3, t4
    addu    a1, t5, t6
    addu    a2, t7, t8
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, 0xC3CD                # $at = C3CD0000
    mtc1    $at, $f12                  # $f12 = -410.00
    lui     $at, 0xC338                # $at = C3380000
    mtc1    $at, $f14                  # $f14 = -184.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x0040             # a0 = 00000040
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFEAD4
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80AFEAD4:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0024($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t1, 0x000C(v1)             # 0000000C
    lh      t3, 0x000E(v1)             # 0000000E
    lh      t5, 0x0010(v1)             # 00000010
    lh      t9, 0x149E(v0)             # 8012149E
    lh      t2, 0x14A0(v0)             # 801214A0
    lh      t4, 0x14A2(v0)             # 801214A2
    addu    a0, t9, t1
    addu    a1, t2, t3
    addu    a2, t4, t5
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, %hi(var_80B048A8)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B048A8)($at)
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f14                  # $f14 = -26.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x0080             # a0 = 00000080
    jal     func_800AA724
    nop
    jal     func_800AA6EC
    nop
    lui     $at, %hi(var_80B048AC)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B048AC)($at)
    lui     $at, %hi(var_80B048B0)     # $at = 80B00000
    lui     a2, 0x43C2                 # a2 = 43C20000
    ori     a2, a2, 0x8000             # a2 = 43C28000
    lwc1    $f14, %lo(var_80B048B0)($at)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFEBD0
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003C($sp)
    jal     func_80AFDE0C
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
lbl_80AFEBD0:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0024($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t7, 0x0012(v1)             # 00000012
    lh      t9, 0x0014(v1)             # 00000014
    lh      t2, 0x0016(v1)             # 00000016
    lh      t6, 0x14A4(v0)             # 801214A4
    lh      t8, 0x14A6(v0)             # 801214A6
    lh      t1, 0x14A8(v0)             # 801214A8
    addu    a0, t6, t7
    addu    a1, t8, t9
    addu    a2, t1, t2
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, %hi(var_80B048B4)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B048B4)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f14                  # $f14 = -1.00
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x00C0             # a0 = 000000C0
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFEC9C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003C($sp)
    jal     func_80AFDE0C
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
lbl_80AFEC9C:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0024($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t4, 0x0018(v1)             # 00000018
    lh      t6, 0x001A(v1)             # 0000001A
    lh      t8, 0x001C(v1)             # 0000001C
    lh      t3, 0x14AA(v0)             # 801214AA
    lh      t5, 0x14AC(v0)             # 801214AC
    lh      t7, 0x14AE(v0)             # 801214AE
    addu    a0, t3, t4
    addu    a1, t5, t6
    addu    a2, t7, t8
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0x42A8                 # a2 = 42A80000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x0100             # a0 = 00000100
    jal     func_800AA724
    nop
    jal     func_800AA6EC
    nop
    lui     $at, %hi(var_80B048B8)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B048B8)($at)
    lui     $at, %hi(var_80B048BC)     # $at = 80B00000
    lui     a2, 0xC3C2                 # a2 = C3C20000
    ori     a2, a2, 0x8000             # a2 = C3C28000
    lwc1    $f14, %lo(var_80B048BC)($at)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFED98
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003C($sp)
    jal     func_80AFDE0C
    addiu   a2, $zero, 0x0011          # a2 = 00000011
lbl_80AFED98:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0024($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t1, 0x001E(v1)             # 0000001E
    lh      t3, 0x0020(v1)             # 00000020
    lh      t5, 0x0022(v1)             # 00000022
    lh      t9, 0x14B0(v0)             # 801214B0
    lh      t2, 0x14B2(v0)             # 801214B2
    lh      t4, 0x14B4(v0)             # 801214B4
    addu    a0, t9, t1
    addu    a1, t2, t3
    addu    a2, t4, t5
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, %hi(var_80B048C0)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B048C0)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f14                  # $f14 = -1.00
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x0140             # a0 = 00000140
    jal     func_800AA740
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFA8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFA0
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54
    lw      a0, 0x0098($sp)
    bne     v0, $zero, lbl_80AFEE64
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003A($sp)
    jal     func_80AFDC24
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x0038($sp)
    jal     func_80AFE61C
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x003C($sp)
    jal     func_80AFDE0C
    addiu   a2, $zero, 0x0014          # a2 = 00000014
lbl_80AFEE64:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lw      t7, 0x0024($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t6, 0x14B6(v0)             # 801214B6
    lh      t9, 0x14B8(v0)             # 801214B8
    lh      t2, 0x14BA(v0)             # 801214BA
    lh      t8, 0x0024(t7)             # 00000024
    lh      t1, 0x0026(t7)             # 00000026
    lh      t3, 0x0028(t7)             # 00000028
    addu    a0, t6, t8
    addu    a1, t9, t1
    addu    a2, t2, t3
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    jal     func_800AAF00
    sra     a2, a2, 16
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0xC2A8                 # a2 = C2A80000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0028($sp)
    jal     func_800AB8D8
    addiu   a0, a0, 0x0180             # a0 = 00000180
    jal     func_800AA724
    nop
    jal     func_800AA724
    nop
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x02EC(s0)             # 000002EC
    b       lbl_80AFEF34
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFEEFC:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_80AFEF30
    lw      v0, 0x00A8($sp)
    lw      s0, 0x00AC($sp)
    lh      t5, 0x0000(v0)             # 00000000
    lh      t9, 0x0002(v0)             # 00000002
    addiu   v1, s0, 0x03F6             # v1 = 000003F6
    lh      t6, 0x0002(v1)             # 000003F8
    addu    t8, t5, t6
    sh      t8, 0x0000(v0)             # 00000000
    lh      t1, 0x0000(v1)             # 000003F6
    subu    t7, t9, t1
    sh      t7, 0x0002(v0)             # 00000002
lbl_80AFEF30:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFEF34:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_80AFEF48:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a1, $at, lbl_80AFEF9C
    lw      v0, 0x0058($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    lui     t6, %hi(var_80B0474C)      # t6 = 80B00000
    addiu   t6, t6, %lo(var_80B0474C)  # t6 = 80B0474C
    lw      t8, 0x0000(t6)             # 80B0474C
    addiu   a1, v0, 0x030C             # a1 = 0000030C
    sw      t8, 0x0000(a0)             # FFFFFFEC
    lw      t7, 0x0004(t6)             # 80B04750
    sw      t7, 0x0004(a0)             # FFFFFFF0
    lw      t8, 0x0008(t6)             # 80B04754
    jal     func_800AB958
    sw      t8, 0x0008(a0)             # FFFFFFF4
    b       lbl_80AFF008
    lw      $ra, 0x0014($sp)
lbl_80AFEF9C:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_80AFF004
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    lui     t9, %hi(var_80B04758)      # t9 = 80B00000
    addiu   t9, t9, %lo(var_80B04758)  # t9 = 80B04758
    lw      t1, 0x0000(t9)             # 80B04758
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFD0
    sw      t1, 0x0000(a0)             # FFFFFFDC
    lw      t0, 0x0004(t9)             # 80B0475C
    sw      t0, 0x0004(a0)             # FFFFFFE0
    lw      t1, 0x0008(t9)             # 80B04760
    jal     func_800AB958
    sw      t1, 0x0008(a0)             # FFFFFFE4
    lw      v0, 0x0058($sp)
    lwc1    $f4, 0x0018($sp)
    lh      t2, 0x0030(v0)             # 00000030
    swc1    $f4, 0x0038(v0)            # 00000038
    lwc1    $f6, 0x001C($sp)
    lh      t3, 0x0032(v0)             # 00000032
    lh      t4, 0x0034(v0)             # 00000034
    swc1    $f6, 0x003C(v0)            # 0000003C
    lwc1    $f8, 0x0020($sp)
    sh      t2, 0x0044(v0)             # 00000044
    sh      t3, 0x0046(v0)             # 00000046
    sh      t4, 0x0048(v0)             # 00000048
    swc1    $f8, 0x0040(v0)            # 00000040
lbl_80AFF004:
    lw      $ra, 0x0014($sp)
lbl_80AFF008:
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80AFF014:
    lh      v1, 0x001C(a0)             # 0000001C
    sra     v1, v1,  8
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra
    nop


func_80AFF028:
    lh      v1, 0x001C(a0)             # 0000001C
    sra     v1, v1,  4
    andi    v0, v1, 0x000F             # v0 = 00000000
    jr      $ra
    nop


func_80AFF03C:
    lh      v1, 0x001C(a0)             # 0000001C
    andi    v0, v1, 0x000F             # v0 = 00000000
    jr      $ra
    nop


func_80AFF04C:
    lw      v0, 0x0308(a0)             # 00000308
    lui     t8, 0x0001                 # t8 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t6, v0,  4
    addu    t6, t6, v0
    sll     t6, t6,  2
    addu    t7, a1, t6
    addu    t8, t8, t7
    lw      t8, 0x17B4(t8)             # 000117B4
    addu    t9, t8, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, 0x0C50($at)            # 80120C50
    jr      $ra
    nop


func_80AFF084:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    lw      t6, 0x0038($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    bne     t6, $zero, lbl_80AFF0D0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    b       lbl_80AFF0E4
    cvt.s.w $f2, $f4
lbl_80AFF0D0:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6
lbl_80AFF0E4:
    lbu     t7, 0x0033($sp)
    lwc1    $f8, 0x0034($sp)
    mfc1    a2, $f12
    mfc1    a3, $f0
    swc1    $f2, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFF114:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x01CC          # a2 = 000001CC
    lwc1    $f0, 0x0024(t6)            # 00000024
    lwc1    $f2, 0x0028(t6)            # 00000028
    lwc1    $f12, 0x002C(t6)           # 0000002C
    mfc1    a3, $f0
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f2, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f12, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AFF168:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6879          # a1 = 00006879
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFF190:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x02E8(s0)             # 000002E8
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    t6, $zero, lbl_80AFF220
    lw      $ra, 0x003C($sp)
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f8                   # $f8 = -26.00
    lh      t8, 0x145E(t7)             # 8012145E
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0024(s0)            # 00000024
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f12, 0x002C(s0)           # 0000002C
    addiu   t9, $zero, 0x4000          # t9 = 00004000
    cvt.s.w $f6, $f4
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t0, 0x0028($sp)
    sw      t9, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    add.s   $f10, $f6, $f8
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    add.s   $f2, $f10, $f16
    swc1    $f0, 0x0010($sp)
    swc1    $f12, 0x0018($sp)
    jal     func_800253F0
    swc1    $f2, 0x0014($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x02E8(s0)             # 000002E8
    lw      $ra, 0x003C($sp)
lbl_80AFF220:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AFF230:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8AD0             # a1 = 06008AD0
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD7D0
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD7E8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      v0, 0x023C(s0)             # 0000023C
    sw      v0, 0x0240(s0)             # 00000240
    lw      a1, 0x002C($sp)
    jal     func_80AFF190
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x0034(s0)             # 00000034
    lh      t7, 0x00B8(s0)             # 000000B8
    sw      t6, 0x03B4(s0)             # 000003B4
    sh      t7, 0x0034(s0)             # 00000034
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AFF2B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      t6, 0x0318(a1)             # 00000318
    beql    t6, $zero, lbl_80AFF348
    lw      $ra, 0x0014($sp)
    lw      a0, 0x011C(a1)             # 0000011C
    lui     $at, 0x4198                # $at = 41980000
    beql    a0, $zero, lbl_80AFF348
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x02DC(a1)            # 000002DC
    mtc1    $at, $f6                   # $f6 = 19.00
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   v0, a1, 0x02DC             # v0 = 000002DC
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80AFF334
    nop
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f10, 0x0000(v0)           # 000002DC
    lui     $at, 0x414C                # $at = 414C0000
    mtc1    $at, $f18                  # $f18 = 12.75
    sub.s   $f16, $f8, $f10
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0198(a0)            # 00000198
    lwc1    $f6, 0x0000(v0)            # 000002DC
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(v0)           # 000002DC
    b       lbl_80AFF348
    lw      $ra, 0x0014($sp)
lbl_80AFF334:
    jal     func_80020EB4
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      $zero, 0x011C(a1)          # 0000011C
    lw      $ra, 0x0014($sp)
lbl_80AFF348:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFF354:
    lw      v0, 0x011C(a0)             # 0000011C
    beq     v0, $zero, lbl_80AFF3A0
    nop
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0xC1D0                # $at = C1D00000
    swc1    $f4, 0x0024(v0)            # 00000024
    lw      t6, -0x4600(t6)            # 8011BA00
    mtc1    $at, $f10                  # $f10 = -26.00
    lwc1    $f18, 0x0028(a0)           # 00000028
    lh      t7, 0x145E(t6)             # 8012145E
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f6, 0x002C(a0)            # 0000002C
    swc1    $f6, 0x002C(v0)            # 0000002C
lbl_80AFF3A0:
    jr      $ra
    nop


func_80AFF3A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, %hi(var_80B04764)     # $at = 80B00000
    lwc1    $f0, %lo(var_80B04764)($at)
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x4080                # $at = 40800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80AFF3FC
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, %hi(var_80B04764)     # $at = 80B00000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    add.s   $f0, $f0, $f6
    jal     func_80AFD7D0
    swc1    $f0, %lo(var_80B04764)($at)
    b       lbl_80AFF43C
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_80AFF3FC:
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80AFF430
    nop
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, %hi(var_80B04764)     # $at = 80B00000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    add.s   $f0, $f0, $f10
    jal     func_80AFD7D0
    swc1    $f0, %lo(var_80B04764)($at)
    b       lbl_80AFF43C
    lw      $ra, 0x0014($sp)
lbl_80AFF430:
    jal     func_80AFD748
    nop
    lw      $ra, 0x0014($sp)
lbl_80AFF43C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFF448:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8AD0             # a1 = 06008AD0
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFF488:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x91D8             # a1 = 060091D8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80AFD7E8
    sw      t6, 0x023C(a0)             # 0000023C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF4D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x91D8             # a1 = 060091D8
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFF510:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFF534
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x99A0             # a1 = 060099A0
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFF534:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF544:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA598             # a1 = 0600A598
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    jal     func_80AFF168
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80AFD7E8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    jal     func_80AFD6DC
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF5A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFF5C4
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAACC             # a1 = 0600AACC
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFF5C4:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF5D4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA334             # a1 = 0600A334
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0020($sp)
    jal     func_80AFD7E8
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFF620:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFF644
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFF644:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF654:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B03E80
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFF674:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a1, 0x011C(a2)             # 0000011C
    beq     a1, $zero, lbl_80AFF698
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80020EB4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_80AFF698:
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFF6B0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_80AFDC04
    or      a0, s0, $zero              # a0 = 00000000
    bltz    v0, lbl_80AFF7A0
    sw      v0, 0x0024($sp)
    lw      v1, 0x02E0(s0)             # 000002E0
    sltiu   $at, v0, 0x0009
    beql    v0, v1, lbl_80AFF7A4
    lw      $ra, 0x001C($sp)
    beq     $at, $zero, lbl_80AFF798
    sll     t6, v0,  2
    lui     $at, %hi(var_80B048C4)     # $at = 80B00000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B048C4)($at)
    jr      t6
    nop
var_80AFF700:
    jal     func_80AFF448
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF710:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD7D0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80AFF168
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF72C:
    jal     func_80AFF488
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF73C:
    jal     func_80AFF4D0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF74C:
    jal     func_80AFF544
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF75C:
    jal     func_80AFF5D4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF76C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF654
    lw      a1, 0x002C($sp)
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF780:
    jal     func_80AFF674
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80AFF79C
    lw      t8, 0x0024($sp)
var_80AFF790:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0318(s0)             # 00000318
lbl_80AFF798:
    lw      t8, 0x0024($sp)
lbl_80AFF79C:
    sw      t8, 0x02E0(s0)             # 000002E0
lbl_80AFF7A0:
    lw      $ra, 0x001C($sp)
lbl_80AFF7A4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFF7B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF354
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF810:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD7D0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AFF354
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF2B4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF878:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFF3A8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF510
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80AFF2B4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF8E8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF5A0
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF950:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF620
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFF9B8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF6B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFFA14:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5A0C             # a1 = 06005A0C
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t6, 0x023C(a0)             # 0000023C
    jal     func_80AFD7E8
    sw      t7, 0x0240(a0)             # 00000240
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t8, 0x0004(a0)             # 00000004
    and     t9, t8, $at
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFA78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6879          # a1 = 00006879
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFFAA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a0, %hi(var_80B04768)      # a0 = 80B00000
    addiu   a0, a0, %lo(var_80B04768)  # a0 = 80B04768
    addiu   a1, $zero, 0x6875          # a1 = 00006875
    jal     func_800C4F20
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFFAD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t6, 0x013D(a2)             # 0000013D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    bne     t6, $at, lbl_80AFFB0C
    lui     a1, 0x4080                 # a1 = 40800000
    jal     func_8008D6A8
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80AFFB0C
    lw      a2, 0x0018($sp)
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6879          # a1 = 00006879
lbl_80AFFB0C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFFB1C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    addiu   v0, $sp, 0x002C            # v0 = FFFFFFDC
    or      a1, a0, $zero              # a1 = 00000000
    lw      t7, 0x0024(a1)             # 00000024
    lh      s1, 0x0032(a1)             # 00000032
    addiu   s0, a1, 0x0328             # s0 = 00000328
    sw      t7, 0x0000(v0)             # FFFFFFDC
    lw      t6, 0x0028(a1)             # 00000028
    lw      t9, 0x0000(v0)             # FFFFFFDC
    sll     a0, s1, 16
    sw      t6, 0x0004(v0)             # FFFFFFE0
    lw      t7, 0x002C(a1)             # 0000002C
    sra     a0, a0, 16
    sw      t7, 0x0008(v0)             # FFFFFFE4
    sw      t9, 0x031C(a1)             # 0000031C
    lw      t8, 0x0004(v0)             # FFFFFFE0
    sw      t8, 0x0320(a1)             # 00000320
    lw      t9, 0x0008(v0)             # FFFFFFE4
    sw      t9, 0x0324(a1)             # 00000324
    lw      t1, 0x0000(v0)             # FFFFFFDC
    sw      t1, 0x0000(s0)             # 00000328
    lw      t0, 0x0004(v0)             # FFFFFFE0
    sw      t0, 0x0004(s0)             # 0000032C
    lw      t1, 0x0008(v0)             # FFFFFFE4
    jal     func_800636C4              # sins?
    sw      t1, 0x0008(s0)             # 00000330
    sll     a0, s1, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lui     $at, %hi(var_80B048E8)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B048E8)($at)
    lwc1    $f6, 0x0024($sp)
    lui     $at, %hi(var_80B048EC)     # $at = 80B00000
    lwc1    $f10, %lo(var_80B048EC)($at)
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(s0)            # 00000330
    sll     a0, s1, 16
    mul.s   $f16, $f10, $f0
    sra     a0, a0, 16
    sub.s   $f18, $f16, $f8
    add.s   $f6, $f4, $f18
    jal     func_80063684              # coss?
    swc1    $f6, 0x0008(s0)            # 00000330
    sll     a0, s1, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f0, 0x0024($sp)
    lui     $at, %hi(var_80B048F0)     # $at = 80B00000
    lwc1    $f10, %lo(var_80B048F0)($at)
    lwc1    $f16, 0x0024($sp)
    lui     $at, %hi(var_80B048F4)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B048F4)($at)
    mul.s   $f8, $f10, $f16
    lwc1    $f10, 0x0000(s0)           # 00000328
    lui     $at, %hi(var_80B048F8)     # $at = 80B00000
    mul.s   $f18, $f4, $f0
    lwc1    $f4, 0x0004(s0)            # 0000032C
    add.s   $f6, $f18, $f8
    add.s   $f16, $f10, $f6
    swc1    $f16, 0x0000(s0)           # 00000328
    lwc1    $f18, %lo(var_80B048F8)($at)
    add.s   $f8, $f4, $f18
    swc1    $f8, 0x0004(s0)            # 0000032C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80AFFC3C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5248             # a0 = 06005248
    lw      t0, 0x0020($sp)
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    andi    a0, v0, 0xFFFF             # a0 = 00000000
    lwc1    $f4, 0x0154(t0)            # 00000154
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    trunc.w.s $f6, $f4
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    mfc1    a2, $f6
    jal     func_8005C714
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    lw      t0, 0x0020($sp)
    addiu   v1, t0, 0x031C             # v1 = 0000031C
    addiu   a0, t0, 0x0328             # a0 = 00000328
    lwc1    $f8, 0x0000(a0)            # 00000328
    lwc1    $f2, 0x0000(v1)            # 0000031C
    addiu   v0, t0, 0x0024             # v0 = 00000024
    sub.s   $f10, $f8, $f2
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f2, $f16
    swc1    $f18, 0x0000(v0)           # 00000024
    lwc1    $f4, 0x0008(a0)            # 00000330
    lwc1    $f12, 0x0008(v1)           # 00000324
    sub.s   $f6, $f4, $f12
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f12, $f8
    swc1    $f10, 0x0008(v0)           # 0000002C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFCCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x07A0(a1)             # 000007A0
    bnel    t6, $zero, lbl_80AFFCEC
    lw      $ra, 0x0014($sp)
    jal     func_80AFDA7C
    nop
    lw      $ra, 0x0014($sp)
lbl_80AFFCEC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFFCF8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5A0C             # a1 = 06005A0C
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFD38:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x499C             # a1 = 0600499C
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFD78:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFFD9C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4408             # a1 = 06004408
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFFD9C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFFDAC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6508             # a1 = 06006508
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFDEC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFFE10
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x61C4             # a1 = 060061C4
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFFE10:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFFE20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5248             # a1 = 06005248
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    jal     func_80AFFB1C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFA78
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD7E8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x023C(s0)             # 0000023C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AFFE84:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x54E0             # a1 = 060054E0
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFEC4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beql    a1, $zero, lbl_80AFFEE0
    lw      $ra, 0x0014($sp)
    jal     func_80AFFE84
    nop
    lw      $ra, 0x0014($sp)
lbl_80AFFEE0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AFFEEC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8684             # a1 = 06008684
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    lw      t7, 0x0004(a0)             # 00000004
    sw      t6, 0x023C(a0)             # 0000023C
    and     t8, t7, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t0, t8, $at
    sw      t8, 0x0004(a0)             # 00000004
    sw      t0, 0x0004(a0)             # 00000004
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AFFF44:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80AFFF68
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6F04             # a1 = 06006F04
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80AFFF68:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AFFF78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AFFFA4
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    b       lbl_80B0001C
    sw      t6, 0x023C(a0)             # 0000023C
lbl_80AFFFA4:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AFFFC8
    subu    v1, $zero, v0
    b       lbl_80AFFFC8
    or      v1, v0, $zero              # v1 = 00000000
lbl_80AFFFC8:
    slti    $at, v1, 0x4301
    beql    $at, $zero, lbl_80B00004
    lw      t4, 0x0004(a0)             # 00000004
    lw      t9, 0x0004(a0)             # 00000004
    addiu   t3, $zero, 0x70D5          # t3 = 000070D5
    sh      t3, 0x010E(a0)             # 0000010E
    ori     t0, t9, 0x0009             # t0 = 00000009
    sw      t0, 0x0004(a0)             # 00000004
    ori     t2, t0, 0x0001             # t2 = 00000009
    sw      t2, 0x0004(a0)             # 00000004
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    b       lbl_80B00020
    lw      $ra, 0x0014($sp)
    lw      t4, 0x0004(a0)             # 00000004
lbl_80B00004:
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    and     t5, t4, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t5, 0x0004(a0)             # 00000004
    and     t7, t5, $at
    sw      t7, 0x0004(a0)             # 00000004
lbl_80B0001C:
    lw      $ra, 0x0014($sp)
lbl_80B00020:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B0002C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B00074
    lw      a2, 0x0018($sp)
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    and     t7, t6, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t7, 0x0004(a2)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a2)             # 00000004
    sw      t0, 0x023C(a2)             # 0000023C
lbl_80B00074:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B00084:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6AB0             # a1 = 06006AB0
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B000C4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B000E8
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8050             # a1 = 06008050
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B000E8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B000F8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7A78             # a1 = 06007A78
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00138:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B0015C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7C84             # a1 = 06007C84
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B0015C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0016C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x82F8             # a1 = 060082F8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80AFD7E8
    sw      t6, 0x023C(a0)             # 0000023C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B001B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B001D8
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B001D8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B001E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B00214
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    b       lbl_80B002BC
    sw      t6, 0x023C(a0)             # 0000023C
lbl_80B00214:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lw      a1, 0x001C($sp)
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B0023C
    subu    v1, $zero, v0
    b       lbl_80B0023C
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B0023C:
    slti    $at, v1, 0x4301
    beql    $at, $zero, lbl_80B002A4
    lw      t4, 0x0004(a0)             # 00000004
    jal     func_80AFD6FC
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B002BC
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80B048FC)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B048FC)($at)
    lwc1    $f6, 0x0314(v0)            # 00000314
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B002C0
    lw      $ra, 0x0014($sp)
    lw      t9, 0x0004(a0)             # 00000004
    addiu   t3, $zero, 0x7059          # t3 = 00007059
    sh      t3, 0x010E(a0)             # 0000010E
    ori     t0, t9, 0x0009             # t0 = 00000009
    sw      t0, 0x0004(a0)             # 00000004
    ori     t2, t0, 0x0001             # t2 = 00000009
    sw      t2, 0x0004(a0)             # 00000004
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    b       lbl_80B002C0
    lw      $ra, 0x0014($sp)
    lw      t4, 0x0004(a0)             # 00000004
lbl_80B002A4:
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    and     t5, t4, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t5, 0x0004(a0)             # 00000004
    and     t7, t5, $at
    sw      t7, 0x0004(a0)             # 00000004
lbl_80B002BC:
    lw      $ra, 0x0014($sp)
lbl_80B002C0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B002CC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7664             # a1 = 06007664
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    jal     func_80AFFAA0
    sw      t6, 0x023C(a0)             # 0000023C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00310:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_80AFDC04
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x02E0(s0)             # 000002E0
    lw      t7, 0x002C($sp)
    bnel    v0, t6, lbl_80B0037C
    lw      $ra, 0x0024($sp)
    beq     t7, $zero, lbl_80B00378
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x023C(s0)             # 0000023C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDC10
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sw      t9, 0x02E0(s0)             # 000002E0
lbl_80B00378:
    lw      $ra, 0x0024($sp)
lbl_80B0037C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B0038C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B003D4
    lw      a2, 0x0018($sp)
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    and     t7, t6, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t7, 0x0004(a2)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a2)             # 00000004
    sw      t0, 0x023C(a2)             # 0000023C
lbl_80B003D4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B003E4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01D8             # a1 = 060001D8
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0013          # t6 = 00000013
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00424:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1110             # a1 = 06001110
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00464:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B00488
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04F4             # a1 = 060004F4
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B00488:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00498:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B004C4
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    b       lbl_80B0056C
    sw      t6, 0x023C(a0)             # 0000023C
lbl_80B004C4:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lw      a1, 0x001C($sp)
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B004EC
    subu    v1, $zero, v0
    b       lbl_80B004EC
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B004EC:
    slti    $at, v1, 0x4301
    beql    $at, $zero, lbl_80B00554
    lw      t4, 0x0004(a0)             # 00000004
    jal     func_80AFD6FC
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B0056C
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80B04900)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B04900)($at)
    lwc1    $f6, 0x0314(v0)            # 00000314
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B00570
    lw      $ra, 0x0014($sp)
    lw      t9, 0x0004(a0)             # 00000004
    addiu   t3, $zero, 0x7059          # t3 = 00007059
    sh      t3, 0x010E(a0)             # 0000010E
    ori     t0, t9, 0x0009             # t0 = 00000009
    sw      t0, 0x0004(a0)             # 00000004
    ori     t2, t0, 0x0001             # t2 = 00000009
    sw      t2, 0x0004(a0)             # 00000004
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    b       lbl_80B00570
    lw      $ra, 0x0014($sp)
    lw      t4, 0x0004(a0)             # 00000004
lbl_80B00554:
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    and     t5, t4, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t5, 0x0004(a0)             # 00000004
    and     t7, t5, $at
    sw      t7, 0x0004(a0)             # 00000004
lbl_80B0056C:
    lw      $ra, 0x0014($sp)
lbl_80B00570:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B0057C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B005C4
    lw      a2, 0x0018($sp)
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    and     t7, t6, $at
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t7, 0x0004(a2)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a2)             # 00000004
    sw      t0, 0x023C(a2)             # 0000023C
lbl_80B005C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B005D4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2348             # a1 = 06002348
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00614:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B00638
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x210C             # a1 = 0600210C
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B00638:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00648:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2E54             # a1 = 06002E54
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00688:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B006AC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2710             # a1 = 06002710
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B006AC:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B006BC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1D8C             # a1 = 06001D8C
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0018          # t6 = 00000018
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B006FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80B00720
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14DC             # a1 = 060014DC
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B00720:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00730:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_80AFDC04
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, %hi(var_80B04774)      # v1 = 80B00000
    lw      v1, %lo(var_80B04774)(v1)
    sw      v0, 0x0024($sp)
    lui     $at, %hi(var_80B04774)     # $at = 80B00000
    blez    v1, lbl_80B00770
    nop
    addiu   v1, v1, 0xFFFF             # v1 = 80AFFFFF
    b       lbl_80B00794
    sw      v1, %lo(var_80B04774)($at)
lbl_80B00770:
    bne     v1, $zero, lbl_80B00794
    lui     $at, %hi(var_80B04774)     # $at = 80B00000
    addiu   v1, v1, 0xFFFF             # v1 = 80AFFFFE
    sw      v1, %lo(var_80B04774)($at)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    v0, $at, lbl_80B00798
    lw      t6, 0x0024($sp)
    jal     func_80B002CC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B00794:
    lw      t6, 0x0024($sp)
lbl_80B00798:
    bltzl   t6, lbl_80B008C0
    lw      $ra, 0x001C($sp)
    lw      v0, 0x02E0(s0)             # 000002E0
    sltiu   $at, t6, 0x000F
    beql    t6, v0, lbl_80B008C0
    lw      $ra, 0x001C($sp)
    beq     $at, $zero, lbl_80B008B4
    sll     t7, t6,  2
    lui     $at, %hi(var_80B04904)     # $at = 80B00000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B04904)($at)
    jr      t7
    nop
var_80B007CC:
    jal     func_80AFFCF8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B007DC:
    jal     func_80AFFD38
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B007EC:
    jal     func_80AFFDAC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B007FC:
    jal     func_80AFFE20
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0080C:
    jal     func_80AFFEEC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0081C:
    jal     func_80B00084
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0082C:
    jal     func_80B000F8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0083C:
    jal     func_80B0016C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0084C:
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
    lui     $at, %hi(var_80B04774)     # $at = 80B00000
    b       lbl_80B008B4
    sw      v1, %lo(var_80B04774)($at)
var_80B0085C:
    jal     func_80B003E4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0086C:
    jal     func_80B00424
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0087C:
    jal     func_80B005D4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0088C:
    jal     func_80B00648
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B0089C:
    jal     func_80B006BC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B008B8
    lw      t8, 0x0024($sp)
var_80B008AC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B008B4:
    lw      t8, 0x0024($sp)
lbl_80B008B8:
    sw      t8, 0x02E0(s0)             # 000002E0
    lw      $ra, 0x001C($sp)
lbl_80B008C0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B008D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0092C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFD78
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00994:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFDEC
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B009FC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x002C($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    jal     func_80AFFC3C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFEC4
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B00A64:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00ACC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFCCC
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFF44
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFFF78
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00B5C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0002C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00BCC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B000C4
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00C34:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00138
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80AFFAD0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00CA4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B001B4
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B001E8
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00D30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x002C($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x002C($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00310
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B00DB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B001B4
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0038C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00E2C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00E88:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00464
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00498
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B00F0C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0057C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00F74:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00614
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B00FDC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00688
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B01044:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B006FC
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B00730
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B010AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x28D9          # a0 = 000028D9
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B010D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6879          # a1 = 00006879
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B010F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t6, 0x013D(a2)             # 0000013D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    bne     t6, $at, lbl_80B01134
    lui     a1, 0x4110                 # a1 = 41100000
    jal     func_8008D6A8
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80B01134
    lw      a2, 0x0018($sp)
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x6877          # a1 = 00006877
lbl_80B01134:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01144:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x40C0                 # a1 = 40C00000
    bne     v0, $zero, lbl_80B01180
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_80B011B4
    lw      $ra, 0x001C($sp)
lbl_80B01180:
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B011B0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   v1, v0, 0x0800             # v1 = 00000800
    andi    a1, v1, 0xFFFF             # a1 = 00000800
    jal     func_80064780
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
lbl_80B011B0:
    lw      $ra, 0x001C($sp)
lbl_80B011B4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B011C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80AFF014
    nop
    lw      a0, 0x001C($sp)
    jal     func_800204D0
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B011F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80AFF014
    nop
    lw      a0, 0x001C($sp)
    jal     func_8002049C
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01224:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, a1
    lw      v1, 0x1E08(v1)             # 00011E08
    beql    v1, $zero, lbl_80B0126C
    lw      $ra, 0x0014($sp)
    sw      v1, 0x0018($sp)
    jal     func_80AFF028
    sw      a0, 0x0020($sp)
    lw      v1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    sll     t6, v0,  3
    addu    v1, v1, t6
    sw      v1, 0x02FC(a0)             # 000002FC
    lbu     t7, 0x0000(v1)             # 00000000
    sw      t7, 0x0300(a0)             # 00000300
    lw      $ra, 0x0014($sp)
lbl_80B0126C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B01278:
    lw      v0, 0x0300(a0)             # 00000300
    slt     $at, a1, v0
    beq     $at, $zero, lbl_80B01290
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01290:
    jr      $ra
    nop


func_80B01298:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      a2, 0x02FC(a0)             # 000002FC
    lw      a1, 0x0024($sp)
    beql    a2, $zero, lbl_80B01314
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80B01278
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80B01310
    lw      a2, 0x0018($sp)
    lw      v1, 0x0004(a2)             # 00000004
    lw      t2, 0x0024($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t2,  2
    and     t0, v1, $at
    subu    t3, t3, t2
    sll     t3, t3,  1
    addu    t1, t9, t0
    addu    a0, t1, t3
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80B01314
    addu    v0, a0, $at
lbl_80B01310:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01314:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B01324:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    jal     func_80B01298
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0028($sp)
    jal     func_80B01298
    sw      v0, 0x001C($sp)
    beq     v0, $zero, lbl_80B013E4
    lw      v1, 0x001C($sp)
    beql    v1, $zero, lbl_80B013E8
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lh      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x0000(v1)             # 00000000
    lh      t9, 0x0004(v0)             # 00000004
    lh      t0, 0x0004(v1)             # 00000004
    subu    t8, t6, t7
    mtc1    t8, $f4                    # $f4 = 0.00
    subu    t1, t9, t0
    mtc1    t1, $f6                    # $f6 = 0.00
    cvt.s.w $f12, $f4
    cvt.s.w $f14, $f6
    c.eq.s  $f12, $f0
    nop
    bc1f    lbl_80B013B4
    nop
    c.eq.s  $f14, $f0
    nop
    bc1f    lbl_80B013B4
    nop
    b       lbl_80B013E8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B013B4:
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_80B04940)     # $at = 80B00000
    lwc1    $f8, %lo(var_80B04940)($at)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    v1, $f16
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    b       lbl_80B013E8
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B013E4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B013E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B013F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B01298
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B0148C
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lh      t6, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x0024(a0)            # 00000024
    lh      t7, 0x0004(v0)             # 00000004
    mtc1    t6, $f4                    # $f4 = 0.00
    lwc1    $f18, 0x002C(a0)           # 0000002C
    mtc1    t7, $f10                   # $f10 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    c.eq.s  $f12, $f0
    nop
    bc1f    lbl_80B01460
    nop
    c.eq.s  $f14, $f0
    nop
    bc1tl   lbl_80B01490
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01460:
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_80B04944)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B04944)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v0, v0, 16
    b       lbl_80B01490
    sra     v0, v0, 16
lbl_80B0148C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01490:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B014A0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lw      a3, 0x0304(a0)             # 00000304
    sw      a0, 0x0028($sp)
    addiu   a2, a3, 0x0001             # a2 = 00000001
    or      a1, a2, $zero              # a1 = 00000001
    sw      a2, 0x0018($sp)
    jal     func_80B01278
    sw      a3, 0x0020($sp)
    lw      a0, 0x0028($sp)
    lw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80B014DC
    lw      a3, 0x0020($sp)
    b       lbl_80B014E4
    lh      v0, 0x00B6(a0)             # 000000B6
lbl_80B014DC:
    jal     func_80B01324
    or      a1, a3, $zero              # a1 = 00000000
lbl_80B014E4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B014F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lw      a1, 0x0304(a0)             # 00000304
    sw      a0, 0x0020($sp)
    jal     func_80B01278
    sw      a1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    bne     v0, $zero, lbl_80B01520
    lw      a1, 0x0018($sp)
    b       lbl_80B01528
    lh      v0, 0x00B6(a0)             # 000000B6
lbl_80B01520:
    jal     func_80B013F8
    nop
lbl_80B01528:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B01538:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    jal     func_80B014F4
    lw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    sll     a1, v0, 16
    addiu   t6, $zero, 0x03E8          # t6 = 000003E8
    addiu   a0, a0, 0x0032             # a0 = 00000032
    sw      a0, 0x0024($sp)
    sw      t6, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x1900          # a3 = 00001900
    lw      a0, 0x0024($sp)
    lw      t8, 0x0030($sp)
    lh      t7, 0x0000(a0)             # 00000000
    sh      t7, 0x00B6(t8)             # 000000B6
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B01590:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    jal     func_80B014A0
    lw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    sll     a1, v0, 16
    addiu   t6, $zero, 0x03E8          # t6 = 000003E8
    addiu   a0, a0, 0x0032             # a0 = 00000032
    sw      a0, 0x0024($sp)
    sw      t6, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x1900          # a3 = 00001900
    lw      a0, 0x0024($sp)
    lw      t8, 0x0030($sp)
    lh      t7, 0x0000(a0)             # 00000000
    sh      t7, 0x00B6(t8)             # 000000B6
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B015E8:
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    v0, $at, lbl_80B01604
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    b       lbl_80B01614
    addiu   v1, $zero, 0x71A8          # v1 = 000071A8
    addiu   $at, $zero, 0x001A         # $at = 0000001A
lbl_80B01604:
    bne     v0, $at, lbl_80B01614
    addiu   v1, $zero, 0x71AB          # v1 = 000071AB
    b       lbl_80B01614
    addiu   v1, $zero, 0x71A9          # v1 = 000071A9
lbl_80B01614:
    or      v0, v1, $zero              # v0 = 000071A9
    jr      $ra
    nop


func_80B01620:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022930
    nop
    beq     v0, $zero, lbl_80B01640
    lw      $ra, 0x0014($sp)
    b       lbl_80B01644
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01640:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01644:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B0164C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x008A(a2)             # 0000008A
    lh      t7, 0x00B6(a2)             # 000000B6
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B01680
    subu    v1, $zero, v0
    b       lbl_80B01680
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B01680:
    slti    $at, v1, 0x4301
    beql    $at, $zero, lbl_80B016B8
    lw      $ra, 0x0014($sp)
    lw      t8, 0x0004(a2)             # 00000004
    ori     t9, t8, 0x0009             # t9 = 00000009
    sw      t9, 0x0004(a2)             # 00000004
    sw      a2, 0x0018($sp)
    jal     func_80B015E8
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    sh      v0, 0x010E(a0)             # 0000010E
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80B016B8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B016C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B016EC
    lw      $ra, 0x0014($sp)
    b       lbl_80B016F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B016EC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B016F0:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B016F8:
    sw      a2, 0x0008($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    lwc1    $f12, 0x0024(a0)           # 00000024
    lwc1    $f14, 0x002C(a0)           # 0000002C
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f2, 0x002C(v0)            # 0000002C
    lwc1    $f10, 0x0008($sp)
    sub.s   $f16, $f0, $f12
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f18, $f2, $f14
    mul.s   $f4, $f16, $f16
    nop
    mul.s   $f6, $f18, $f18
    add.s   $f8, $f4, $f6
    mul.s   $f4, $f10, $f10
    c.lt.s  $f8, $f4
    nop
    bc1f    lbl_80B0174C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B0174C:
    jr      $ra
    nop


func_80B01754:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0014($sp)
    sw      a1, 0x004C($sp)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lw      t6, 0x004C($sp)
    swc1    $f4, 0x0040($sp)
    lw      v0, 0x1C44(t6)             # 00001C44
    lwc1    $f0, 0x002C(a0)            # 0000002C
    lwc1    $f6, 0x0024(v0)            # 00000024
    swc1    $f6, 0x002C($sp)
    lwc1    $f2, 0x002C(v0)            # 0000002C
    sw      a0, 0x0048($sp)
    swc1    $f0, 0x003C($sp)
    jal     func_80B014A0
    swc1    $f2, 0x0028($sp)
    lwc1    $f8, 0x002C($sp)
    lwc1    $f10, 0x0040($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    sll     v1, v0, 16
    sub.s   $f12, $f8, $f10
    sra     v1, v1, 16
    lw      a0, 0x0048($sp)
    lwc1    $f0, 0x003C($sp)
    c.eq.s  $f12, $f14
    lwc1    $f2, 0x0028($sp)
    bc1fl   lbl_80B017E0
    sub.s   $f14, $f2, $f0
    sub.s   $f16, $f2, $f0
    c.eq.s  $f16, $f14
    nop
    bc1fl   lbl_80B017E0
    sub.s   $f14, $f2, $f0
    b       lbl_80B01854
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f14, $f2, $f0
lbl_80B017E0:
    sh      v1, 0x001C($sp)
    jal     func_800CD76C
    sw      a0, 0x0048($sp)
    lui     $at, %hi(var_80B04948)     # $at = 80B00000
    lwc1    $f18, %lo(var_80B04948)($at)
    lh      v1, 0x001C($sp)
    lw      a0, 0x0048($sp)
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    subu    v0, v1, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x1555
    beql    $at, $zero, lbl_80B01830
    slti    $at, v0, 0x4000
    b       lbl_80B01854
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slti    $at, v0, 0x4000
lbl_80B01830:
    beq     $at, $zero, lbl_80B01850
    lw      a1, 0x004C($sp)
    jal     func_80B016F8
    lui     a2, 0x4316                 # a2 = 43160000
    beql    v0, $zero, lbl_80B01854
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01854
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01850:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01854:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B01864:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80B016F8
    lui     a2, 0x4248                 # a2 = 42480000
    bne     v0, $zero, lbl_80B0189C
    lw      a0, 0x0018($sp)
    jal     func_80B01754
    lw      a1, 0x001C($sp)
    beql    v0, $zero, lbl_80B018A8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B0189C:
    b       lbl_80B018A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B018A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B018B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B016F8
    lui     a2, 0x4316                 # a2 = 43160000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B018D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B016F8
    lui     a2, 0x4248                 # a2 = 42480000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B018F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    v0, $at, lbl_80B01944
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80AFF014
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0026         # $at = 00000026
    bne     v0, $at, lbl_80B01940
    lw      t6, 0x0018($sp)
    lw      v0, 0x0304(t6)             # 00000304
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80B01944
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01944
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01940:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01944:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01954:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lh      v0, 0x00A4(t6)             # 000000A4
    bnel    v0, $at, lbl_80B019C8
    lw      $ra, 0x001C($sp)
    jal     func_80AFF014
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0026         # $at = 00000026
    bne     v0, $at, lbl_80B019C4
    lw      t7, 0x0020($sp)
    lw      v0, 0x0304(t7)             # 00000304
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bnel    v0, $at, lbl_80B019C8
    lw      $ra, 0x001C($sp)
    jal     func_8009CB08
    lw      a0, 0x0024($sp)
    bne     v0, $zero, lbl_80B019C4
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    lw      a3, 0x0020($sp)
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_80B019C4:
    lw      $ra, 0x001C($sp)
lbl_80B019C8:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B019D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B018F8
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B01A04
    lw      t6, 0x0018($sp)
    lw      t7, 0x03C8(t6)             # 000003C8
    bnel    t7, $zero, lbl_80B01A08
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01A08
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01A04:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01A08:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01A18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      a1, 0x03B4(a2)             # 000003B4
    jal     func_800204D0
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01A44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      a1, 0x03B4(a2)             # 000003B4
    jal     func_80020510
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01A70:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x4640(t6)            # 8011B9C0
    lw      t7, 0x0030($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bnel    t6, $zero, lbl_80B01AD0
    lw      $ra, 0x002C($sp)
    lwc1    $f4, 0x0028(t7)            # 00000028
    lw      a3, 0x0024(t7)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(t7)            # 0000002C
    sw      t8, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x01CB          # a2 = 000001CB
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    jal     func_80B010AC
    lw      a0, 0x0030($sp)
    lw      $ra, 0x002C($sp)
lbl_80B01AD0:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B01ADC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lwc1    $f18, 0x0004(a1)           # 00000004
    lwc1    $f16, 0x0000(a1)           # 00000000
    lw      v0, 0x1C44(t6)             # 00001C44
    swc1    $f18, 0x0034($sp)
    lwc1    $f18, 0x0008(a1)           # 00000008
    lwc1    $f10, 0x0024(v0)           # 00000024
    lwc1    $f8, 0x002C(v0)            # 0000002C
    swc1    $f16, 0x0038($sp)
    sub.s   $f12, $f10, $f16
    swc1    $f18, 0x0030($sp)
    jal     func_800CD76C
    sub.s   $f14, $f8, $f18
    lui     $at, %hi(var_80B0494C)     # $at = 80B00000
    lwc1    $f18, %lo(var_80B0494C)($at)
    lwc1    $f2, 0x0038($sp)
    lw      a1, 0x0048($sp)
    mul.s   $f4, $f0, $f18
    lwc1    $f16, 0x0030($sp)
    lwc1    $f10, 0x0034($sp)
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    mfc1    a3, $f2
    sw      t9, 0x0024($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    trunc.w.s $f6, $f4
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    mfc1    t8, $f6
    swc1    $f16, 0x0014($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B01B7C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a1, %hi(var_80B04778)      # a1 = 80B00000
    addiu   a1, a1, %lo(var_80B04778)  # a1 = 80B04778
    jal     func_80B01ADC
    lw      a0, 0x0018($sp)
    lui     a1, %hi(var_80B04784)      # a1 = 80B00000
    addiu   a1, a1, %lo(var_80B04784)  # a1 = 80B04784
    jal     func_80B01ADC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01BB8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, a2
    lbu     a3, 0x1DEA(a3)             # 00011DEA
    lh      v1, 0x00A4(a2)             # 000000A4
    sw      a2, 0x002C($sp)
    sb      a3, 0x0023($sp)
    jal     func_80AFF014
    sh      v1, 0x0020($sp)
    lh      v1, 0x0020($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lw      a2, 0x002C($sp)
    lbu     a3, 0x0023($sp)
    bne     v1, $at, lbl_80B01C88
    or      t0, v0, $zero              # t0 = 00000000
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bnel    v0, $at, lbl_80B01C1C
    addiu   $at, $zero, 0x0025         # $at = 00000025
    bnel    a3, $zero, lbl_80B01C1C
    addiu   $at, $zero, 0x0025         # $at = 00000025
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   $at, $zero, 0x0025         # $at = 00000025
lbl_80B01C1C:
    bne     v0, $at, lbl_80B01C34
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a3, $at, lbl_80B01C38
    addiu   $at, $zero, 0x0026         # $at = 00000026
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01C34:
    addiu   $at, $zero, 0x0026         # $at = 00000026
lbl_80B01C38:
    bne     v0, $at, lbl_80B01C50
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a3, $at, lbl_80B01C54
    addiu   $at, $zero, 0x0027         # $at = 00000027
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01C50:
    addiu   $at, $zero, 0x0027         # $at = 00000027
lbl_80B01C54:
    bne     v0, $at, lbl_80B01C6C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a3, $at, lbl_80B01C70
    addiu   $at, $zero, 0x0028         # $at = 00000028
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01C6C:
    addiu   $at, $zero, 0x0028         # $at = 00000028
lbl_80B01C70:
    bne     v0, $at, lbl_80B01D8C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a3, $at, lbl_80B01D90
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01C88:
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    bne     v1, $at, lbl_80B01D4C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    v0, $at, lbl_80B01CFC
    addiu   $at, $zero, 0x0021         # $at = 00000021
    bne     a3, $zero, lbl_80B01CF8
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    sw      a2, 0x002C($sp)
    sb      a3, 0x0023($sp)
    jal     func_8002049C
    sw      t0, 0x001C($sp)
    lw      a2, 0x002C($sp)
    lbu     a3, 0x0023($sp)
    beq     v0, $zero, lbl_80B01CF8
    lw      t0, 0x001C($sp)
    lh      v0, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    beq     v0, $at, lbl_80B01CF0
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_80B01CF0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_80B01CF0
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_80B01CFC
    addiu   $at, $zero, 0x0021         # $at = 00000021
lbl_80B01CF0:
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01CF8:
    addiu   $at, $zero, 0x0021         # $at = 00000021
lbl_80B01CFC:
    bne     t0, $at, lbl_80B01D14
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a3, $at, lbl_80B01D18
    addiu   $at, $zero, 0x0022         # $at = 00000022
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01D14:
    addiu   $at, $zero, 0x0022         # $at = 00000022
lbl_80B01D18:
    bne     t0, $at, lbl_80B01D30
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a3, $at, lbl_80B01D34
    addiu   $at, $zero, 0x0023         # $at = 00000023
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01D30:
    addiu   $at, $zero, 0x0023         # $at = 00000023
lbl_80B01D34:
    bne     t0, $at, lbl_80B01D8C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a3, $at, lbl_80B01D90
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01D4C:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v1, $at, lbl_80B01D8C
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bnel    v0, $at, lbl_80B01D74
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    a3, $zero, lbl_80B01D74
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   $at, $zero, 0x002A         # $at = 0000002A
lbl_80B01D74:
    bnel    v0, $at, lbl_80B01D90
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    a3, $zero, lbl_80B01D90
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B01D90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01D8C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B01D90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B01DA0:
    lw      v0, 0x1C64(a0)             # 00001C64
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   v1, $zero, 0x00B4          # v1 = 000000B4
    beq     v0, $zero, lbl_80B01DD0
    nop
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B01DB8:
    bnel    v1, t6, lbl_80B01DC8
    lw      v0, 0x0124(v0)             # 00000124
    sh      a0, 0x014C(v0)             # 0000014C
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B01DC8:
    bnel    v0, $zero, lbl_80B01DB8
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B01DD0:
    jr      $ra
    nop


func_80B01DD8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    beq     a1, $zero, lbl_80B01DFC
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a1, 0x0028($sp)
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
lbl_80B01DFC:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B01E0C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0014($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x004C($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    addiu   s1, s0, 0x0338             # s1 = 00000338
    or      a0, s0, $zero              # a0 = 00000000
    sh      t6, 0x0042($sp)
    lw      t7, 0x0304(s0)             # 00000304
    lw      t0, 0x0024(s0)             # 00000024
    sh      $zero, 0x0334(s0)          # 00000334
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0304(s0)             # 00000304
    swc1    $f0, 0x0350(s0)            # 00000350
    swc1    $f0, 0x0354(s0)            # 00000354
    swc1    $f0, 0x0358(s0)            # 00000358
    sw      t0, 0x0000(s1)             # 00000338
    lw      t9, 0x0028(s0)             # 00000028
    sw      t9, 0x0004(s1)             # 0000033C
    lw      t0, 0x002C(s0)             # 0000002C
    sw      t0, 0x0008(s1)             # 00000340
    jal     func_80B01298
    lw      a1, 0x0304(s0)             # 00000304
    beq     v0, $zero, lbl_80B01EC0
    nop
    lh      t1, 0x0000(v0)             # 00000000
    addiu   v1, s0, 0x0344             # v1 = 00000344
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(v1)            # 00000344
    lh      t2, 0x0002(v0)             # 00000002
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(v1)           # 00000348
    lh      t3, 0x0004(v0)             # 00000004
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    b       lbl_80B01F14
    swc1    $f18, 0x0008(v1)           # 0000034C
lbl_80B01EC0:
    jal     func_800636C4              # sins?
    lh      a0, 0x0042($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x0000(s1)            # 00000338
    addiu   v1, s0, 0x0344             # v1 = 00000344
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0000(v1)           # 00000344
    lwc1    $f16, 0x0004(s1)           # 0000033C
    swc1    $f16, 0x0004(v1)           # 00000348
    sw      v1, 0x0020($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0042($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    lwc1    $f6, 0x0008(s1)            # 00000340
    lw      v1, 0x0020($sp)
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0008(v1)            # 00000008
lbl_80B01F14:
    lwc1    $f10, 0x0000(v1)           # 00000000
    lwc1    $f16, 0x0000(s1)           # 00000338
    lwc1    $f18, 0x0008(v1)           # 00000008
    lwc1    $f4, 0x0008(s1)            # 00000340
    sub.s   $f2, $f10, $f16
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    sub.s   $f12, $f18, $f4
    mul.s   $f6, $f2, $f2
    lh      t5, 0x1460(t4)             # 80121460
    lui     $at, 0x4100                # $at = 41000000
    mul.s   $f8, $f12, $f12
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = 8.00
    cvt.s.w $f16, $f10
    add.s   $f0, $f6, $f8
    add.s   $f4, $f16, $f18
    sqrt.s  $f0, $f0
    div.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x0336(s0)             # 00000336
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80B01F84:
    lhu     t6, 0x0334(a0)             # 00000334
    lhu     t7, 0x0336(a0)             # 00000336
    or      v0, $zero, $zero           # v0 = 00000000
    slt     $at, t6, t7
    bne     $at, $zero, lbl_80B01FA4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B01FA4:
    jr      $ra
    nop


func_80B01FAC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_80B01FC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a1, 0x0304(a0)             # 00000304
    jal     func_80B01278
    addiu   a1, a1, 0x0002             # a1 = 00000002
    sltiu   v0, v0, 0x0001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B01FE8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     t6, 0x0334(s0)             # 00000334
    lhu     a0, 0x0336(s0)             # 00000336
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0334(s0)             # 00000334
    sw      t8, 0x0010($sp)
    andi    a2, t7, 0xFFFF             # a2 = 00000001
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8005C714
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    addiu   v0, s0, 0x0338             # v0 = 00000338
    addiu   v1, s0, 0x0344             # v1 = 00000344
    lwc1    $f4, 0x0000(v1)            # 00000344
    lwc1    $f2, 0x0000(v0)            # 00000338
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sub.s   $f6, $f4, $f2
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0000(a0)           # 00000024
    lwc1    $f16, 0x0004(v1)           # 00000348
    lwc1    $f12, 0x0004(v0)           # 0000033C
    lwc1    $f8, 0x0350(s0)            # 00000350
    sub.s   $f18, $f16, $f12
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f12, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(a0)           # 00000028
    lwc1    $f16, 0x0008(v1)           # 0000034C
    lwc1    $f14, 0x0008(v0)           # 00000340
    sub.s   $f18, $f16, $f14
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f14, $f4
    swc1    $f6, 0x0008(a0)            # 0000002C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80B02090:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80B01538
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B020B4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x1C44(a2)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0038($sp)
    jal     func_80B013F8
    lw      a1, 0x0304(s0)             # 00000304
    lw      t7, 0x0038($sp)
    sh      v0, 0x0032($sp)
    addiu   a1, s0, 0x03E8             # a1 = 000003E8
    lwc1    $f4, 0x0028(t7)            # 00000028
    sll     a0, v0, 16
    sra     a0, a0, 16
    swc1    $f4, 0x001C(a1)            # 00000404
    jal     func_800636C4              # sins?
    sw      a1, 0x0024($sp)
    lwc1    $f6, 0x0090(s0)            # 00000090
    lwc1    $f10, 0x0024(s0)           # 00000024
    lw      a1, 0x0024($sp)
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0018(a1)           # 00000018
    jal     func_80063684              # coss?
    lh      a0, 0x0032($sp)
    lwc1    $f18, 0x0090(s0)           # 00000090
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lw      a1, 0x0024($sp)
    mul.s   $f4, $f0, $f18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f18                  # $f18 = 16.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0020(a1)            # 00000020
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x1474(t8)             # 00001474
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0014(a1)            # 00000014
    lw      t0, 0x0000(v0)             # 8011BA00
    lh      a2, 0x1476(t0)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    addiu   v0, s0, 0x00B6             # v0 = 000000B6
    lh      a2, 0x0032($sp)
    lh      a1, 0x0000(v0)             # 000000B6
    subu    a0, a2, a1
    bltz    a0, lbl_80B021A8
    subu    v1, $zero, a0
    sll     v1, a0, 16
    b       lbl_80B021B0
    sra     v1, v1, 16
lbl_80B021A8:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B021B0:
    slti    $at, v1, 0x0321
    beql    $at, $zero, lbl_80B021D4
    sh      a1, 0x0032(s0)             # 00000032
    sh      a2, 0x0000(v0)             # 000000B6
    lh      t1, 0x0000(v0)             # 000000B6
    or      v1, $zero, $zero           # v1 = 00000000
    sh      t1, 0x0032(s0)             # 00000032
    lh      a1, 0x0000(v0)             # 000000B6
    sh      a1, 0x0032(s0)             # 00000032
lbl_80B021D4:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B021EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80B01620
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B0221C
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x001A          # t6 = 0000001A
    sw      t6, 0x023C(a0)             # 0000023C
    b       lbl_80B02228
    lw      $ra, 0x0014($sp)
lbl_80B0221C:
    jal     func_80B0164C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_80B02228:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B02234:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B016C4
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B02258
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x001B          # t6 = 0000001B
    sw      t6, 0x023C(t7)             # 0000023C
lbl_80B02258:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B02268:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80B020B4
    sw      a0, 0x0020($sp)
    bne     v0, $zero, lbl_80B022C4
    lw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9BE4             # a1 = 06009BE4
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0022          # t6 = 00000022
    lw      t7, 0x0304(a0)             # 00000304
    sw      t6, 0x023C(a0)             # 0000023C
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x0304(a0)             # 00000304
    jal     func_80B01E0C
    lw      a1, 0x0024($sp)
lbl_80B022C4:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B022D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B018D8
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80B02354
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01FAC
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B02358
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_8009CB08
    lw      a0, 0x002C($sp)
    bne     v0, $zero, lbl_80B02354
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0024          # t6 = 00000024
    sw      t6, 0x023C(s0)             # 0000023C
    swc1    $f4, 0x02DC(s0)            # 000002DC
    jal     func_80B01DA0
    lw      a0, 0x002C($sp)
    b       lbl_80B02358
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B02354:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B02358:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B0236C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lb      t6, 0x0A68(v0)             # 00000A68
    sw      v0, 0x0030($sp)
    jal     func_80B01620
    sb      t6, 0x002F($sp)
    beq     v0, $zero, lbl_80B023D8
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC130                 # a3 = C1300000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x023C(s0)             # 0000023C
    jal     func_80AFDB44
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B02568
    lw      $ra, 0x0024($sp)
lbl_80B023D8:
    jal     func_80B01FC0
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B02418
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B022D4
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B02418
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    sh      $zero, 0x03C0(s0)          # 000003C0
    b       lbl_80B02568
    lw      $ra, 0x0024($sp)
lbl_80B02418:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B019D4
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B02488
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B018B8
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B02488
    nop
    jal     func_8009CB08
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B02488
    addiu   t8, $zero, 0x001F          # t8 = 0000001F
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t8, 0x023C(s0)             # 0000023C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDA7C
    swc1    $f4, 0x03BC(s0)            # 000003BC
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x03C8(s0)             # 000003C8
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0FAA          # a1 = 00000FAA
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    b       lbl_80B02568
    lw      $ra, 0x0024($sp)
lbl_80B02488:
    jal     func_80B01FC0
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B024FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B019D4
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B024FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01864
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B024FC
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9BE4             # a1 = 06009BE4
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01954
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t0, $zero, 0x0022          # t0 = 00000022
    sw      t0, 0x023C(s0)             # 0000023C
    sh      $zero, 0x03C0(s0)          # 000003C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01E0C
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80B02568
    lw      $ra, 0x0024($sp)
lbl_80B024FC:
    lb      t1, 0x002F($sp)
    lw      t2, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t1, lbl_80B0251C
    lui     a1, 0x0600                 # a1 = 06000000
    lh      t3, 0x0886(t2)             # 00000886
    slti    $at, t3, 0x0033
    bne     $at, $zero, lbl_80B02550
lbl_80B0251C:
    addiu   a1, a1, 0x7664             # a1 = 06007664
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC130                 # a3 = C1300000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    sw      t4, 0x023C(s0)             # 0000023C
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B010D0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B02568
    lw      $ra, 0x0024($sp)
lbl_80B02550:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0164C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFDB44
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B02568:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B02578:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_80B016C4
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B025C0
    lw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC130                 # a3 = C1300000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    sw      t6, 0x023C(t7)             # 0000023C
    lw      t8, 0x0020($sp)
    sh      $zero, 0x03C0(t8)          # 000003C0
lbl_80B025C0:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B025D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    lb      v0, 0x0A68(v1)             # 00000A68
    bgtzl   v0, lbl_80B02624
    lw      $ra, 0x001C($sp)
    lh      t6, 0x0886(v1)             # 00000886
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    slti    $at, t6, 0x0033
    beq     $at, $zero, lbl_80B02620
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC130                 # a3 = C1300000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t7, $zero, 0x001C          # t7 = 0000001C
    sw      t7, 0x023C(a0)             # 0000023C
    sh      $zero, 0x03C0(a0)          # 000003C0
lbl_80B02620:
    lw      $ra, 0x001C($sp)
lbl_80B02624:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02630:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t6, 0x1470(v1)             # 80121470
    lwc1    $f4, 0x03BC(a0)            # 000003BC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t6, $f6                    # $f6 = 0.00
    addiu   v0, a0, 0x03BC             # v0 = 000003BC
    cvt.s.w $f8, $f6
    add.s   $f16, $f8, $f10
    c.eq.s  $f4, $f16
    nop
    bc1fl   lbl_80B026BC
    lh      t7, 0x1472(v1)             # 80121472
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f18, 0x0000(v0)           # 000003BC
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8050             # a1 = 06008050
    add.s   $f6, $f18, $f12
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    swc1    $f6, 0x0000(v0)            # 000003BC
    sw      a0, 0x0030($sp)
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0030($sp)
    jal     func_80B01A18
    lw      a1, 0x0034($sp)
    b       lbl_80B02810
    lw      $ra, 0x001C($sp)
    lh      t7, 0x1472(v1)             # 00001472
lbl_80B026BC:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   v0, a0, 0x03BC             # v0 = 000003BC
    lwc1    $f0, 0x0000(v0)            # 000003BC
    cvt.s.w $f10, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f16, $f10, $f4
    c.eq.s  $f0, $f16
    nop
    bc1fl   lbl_80B0272C
    lh      t8, 0x1474(v1)             # 00001474
    mtc1    $at, $f12                  # $f12 = 1.00
    nop
    add.s   $f18, $f0, $f12
    swc1    $f18, 0x0000(v0)           # 000003BC
    jal     func_80B010D0
    sw      a0, 0x0030($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    lw      a0, 0x0030($sp)
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    b       lbl_80B02810
    lw      $ra, 0x001C($sp)
    lh      t8, 0x1474(v1)             # 00001474
lbl_80B0272C:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f8, $f6
    add.s   $f4, $f8, $f10
    c.eq.s  $f0, $f4
    nop
    bc1fl   lbl_80B02778
    lh      t9, 0x1476(v1)             # 00001476
    mtc1    $at, $f12                  # $f12 = 1.00
    nop
    add.s   $f16, $f0, $f12
    swc1    $f16, 0x0000(v0)           # 00000000
    jal     func_80B01B7C
    lw      a0, 0x0034($sp)
    b       lbl_80B02810
    lw      $ra, 0x001C($sp)
    lh      t9, 0x1476(v1)             # 00001476
lbl_80B02778:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    mtc1    t9, $f18                   # $f18 = 0.00
    lw      t0, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f6, $f18
    add.s   $f2, $f6, $f8
    c.eq.s  $f0, $f2
    nop
    bc1fl   lbl_80B027DC
    mtc1    $at, $f12                  # $f12 = 1.00
    lh      t1, 0x07A0(t0)             # 000007A0
    sll     t2, t1,  2
    addu    t3, t0, t2
    lw      a0, 0x0790(t3)             # 00000790
    jal     func_80049DB4
    sw      v0, 0x0024($sp)
    lw      v0, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f10, 0x0000(v0)           # 00000000
    add.s   $f4, $f10, $f12
    b       lbl_80B0280C
    swc1    $f4, 0x0000(v0)            # 00000000
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_80B027DC:
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    add.s   $f16, $f2, $f12
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B02808
    add.s   $f6, $f0, $f12
    mtc1    $zero, $f18                # $f18 = 0.00
    sw      t4, 0x023C(a0)             # 0000023C
    b       lbl_80B0280C
    swc1    $f18, 0x0000(v0)           # 00000000
    add.s   $f6, $f0, $f12
lbl_80B02808:
    swc1    $f6, 0x0000(v0)            # 00000000
lbl_80B0280C:
    lw      $ra, 0x001C($sp)
lbl_80B02810:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B0281C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x1C44(s1)             # 00001C44
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f4                   # $f4 = 8000.00
    lb      t6, 0x0A68(v0)             # 00000A68
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    sb      t6, 0x002F($sp)
    jal     func_80028158
    swc1    $f4, 0x0010($sp)
    lui     t7, %hi(var_80B0479C)      # t7 = 80B00000
    lw      t7, %lo(var_80B0479C)(t7)
    bne     t7, $zero, lbl_80B028EC
    nop
    bnel    v0, $zero, lbl_80B028B0
    lb      t9, 0x002F($sp)
    jal     func_8009CB08
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B028AC
    addiu   t8, $zero, 0x0021          # t8 = 00000021
    sw      t8, 0x023C(s0)             # 0000023C
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0FAB          # a1 = 00000FAB
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    b       lbl_80B0297C
    lw      $ra, 0x0024($sp)
lbl_80B028AC:
    lb      t9, 0x002F($sp)
lbl_80B028B0:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    blez    t9, lbl_80B02978
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, %hi(var_80B0479C)     # $at = 80B00000
    sw      t0, %lo(var_80B0479C)($at)
    jal     func_80B010D0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B0297C
    lw      $ra, 0x0024($sp)
lbl_80B028EC:
    bnel    v0, $zero, lbl_80B02950
    lb      t2, 0x002F($sp)
    jal     func_8009CB08
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B0294C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7664             # a1 = 06007664
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lui     $at, %hi(var_80B0479C)     # $at = 80B00000
    sw      $zero, %lo(var_80B0479C)($at)
    addiu   t1, $zero, 0x0021          # t1 = 00000021
    sw      t1, 0x023C(s0)             # 0000023C
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0FAB          # a1 = 00000FAB
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
    b       lbl_80B0297C
    lw      $ra, 0x0024($sp)
lbl_80B0294C:
    lb      t2, 0x002F($sp)
lbl_80B02950:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7664             # a1 = 06007664
    bgtz    t2, lbl_80B02978
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lui     $at, %hi(var_80B0479C)     # $at = 80B00000
    sw      $zero, %lo(var_80B0479C)($at)
lbl_80B02978:
    lw      $ra, 0x0024($sp)
lbl_80B0297C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B0298C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t6, 0x1478(v0)             # 80121478
    lwc1    $f4, 0x03BC(s0)            # 000003BC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t6, $f6                    # $f6 = 0.00
    addiu   v1, s0, 0x03BC             # v1 = 000003BC
    cvt.s.w $f8, $f6
    add.s   $f16, $f8, $f10
    c.eq.s  $f4, $f16
    nop
    bc1fl   lbl_80B02A24
    lh      t7, 0x147A(v0)             # 8012147A
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f18, 0x0000(v1)           # 000003BC
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8050             # a1 = 06008050
    add.s   $f6, $f18, $f12
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    swc1    $f6, 0x0000(v1)            # 000003BC
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01A44
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80B02BAC
    lw      $ra, 0x0024($sp)
    lh      t7, 0x147A(v0)             # 0000147A
lbl_80B02A24:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   v1, s0, 0x03BC             # v1 = 000003BC
    lwc1    $f0, 0x0000(v1)            # 000003BC
    cvt.s.w $f10, $f8
    addiu   t8, $zero, 0x71AC          # t8 = 000071AC
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f2, $f10, $f4
    c.eq.s  $f0, $f2
    nop
    bc1fl   lbl_80B02AA8
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    nop
    add.s   $f16, $f0, $f12
    or      a0, s1, $zero              # a0 = 00000000
    andi    a1, t8, 0xFFFF             # a1 = 000071AC
    or      a2, $zero, $zero           # a2 = 00000000
    swc1    $f16, 0x0000(v1)           # 000003BC
    jal     func_800DCE14
    sh      t8, 0x010E(s0)             # 0000010E
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3FF8             # a1 = 06003FF8
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    b       lbl_80B02BAC
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f12                  # $f12 = 0.00
lbl_80B02AA8:
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    add.s   $f18, $f2, $f12
    c.eq.s  $f0, $f18
    nop
    bc1fl   lbl_80B02B30
    lh      t9, 0x147C(v0)             # 0000147C
    jal     func_800DD464
    sw      v1, 0x0028($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B02BA8
    lw      v1, 0x0028($sp)
    lwc1    $f6, 0x0000(v1)            # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f8, $f6, $f12
    jal     func_80AFD800
    swc1    $f8, 0x0000(v1)            # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD800
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD800
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD800
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD800
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80B02BAC
    lw      $ra, 0x0024($sp)
    lh      t9, 0x147C(v0)             # 0000147C
lbl_80B02B30:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    mtc1    t9, $f10                   # $f10 = 0.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    cvt.s.w $f4, $f10
    add.s   $f18, $f4, $f16
    c.le.s  $f18, $f0
    nop
    bc1fl   lbl_80B02BA4
    add.s   $f8, $f0, $f12
    sw      t0, 0x023C(s0)             # 0000023C
    lh      t1, 0x07A0(s1)             # 000007A0
    sll     t2, t1,  2
    addu    t3, s1, t2
    lw      a0, 0x0790(t3)             # 00000790
    jal     func_80049DB4
    sw      v1, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC140                 # a3 = C1400000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      v1, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    b       lbl_80B02BA8
    swc1    $f6, 0x0000(v1)            # 00000000
    add.s   $f8, $f0, $f12
lbl_80B02BA4:
    swc1    $f8, 0x0000(v1)            # 00000000
lbl_80B02BA8:
    lw      $ra, 0x0024($sp)
lbl_80B02BAC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B02BBC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x38C0             # a1 = 060038C0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x023C(a0)             # 0000023C
    sw      t7, 0x035C(a0)             # 0000035C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02C08:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)
    addiu   a1, a1, 0x38C0             # a1 = 060038C0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t7, $zero, 0x0026          # t7 = 00000026
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t7, 0x023C(a0)             # 0000023C
    sw      t8, 0x0364(a0)             # 00000364
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02C58:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9BE4             # a1 = 06009BE4
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0020($sp)
    jal     func_80B01E0C
    lw      a1, 0x0024($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x0027          # t6 = 00000027
    sw      t6, 0x023C(t7)             # 0000023C
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B02CA8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_80B01F84
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B02CFC
    lw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t6, 0x023C(t7)             # 0000023C
    lw      t8, 0x0020($sp)
    b       lbl_80B02D00
    sh      $zero, 0x03C0(t8)          # 000003C0
lbl_80B02CFC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B02D00:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02D10:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80B02D80
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x1C44(a1)             # 00001C44
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7664             # a1 = 06007664
    lb      v0, 0x0A68(v1)             # 00000A68
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC130                 # a3 = C1300000
    bgtzl   v0, lbl_80B02D5C
    sw      $zero, 0x0010($sp)
    lh      t8, 0x0886(v1)             # 00000886
    slti    $at, t8, 0x0033
    bnel    $at, $zero, lbl_80B02D80
    or      v0, $zero, $zero           # v0 = 00000000
    sw      $zero, 0x0010($sp)
lbl_80B02D5C:
    jal     func_80AFF084
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t9, $zero, 0x0023          # t9 = 00000023
    jal     func_80B010D0
    sw      t9, 0x023C(a0)             # 0000023C
    b       lbl_80B02D80
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B02D80:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02D90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B02CA8
    lw      a1, 0x001C($sp)
    bne     v0, $zero, lbl_80B02DBC
    lw      a0, 0x0018($sp)
    jal     func_80B02D10
    lw      a1, 0x001C($sp)
lbl_80B02DBC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B02DCC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    lb      v0, 0x0A68(v1)             # 00000A68
    bgtzl   v0, lbl_80B02E20
    lw      $ra, 0x001C($sp)
    lh      t6, 0x0886(v1)             # 00000886
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9BE4             # a1 = 06009BE4
    slti    $at, t6, 0x0033
    beq     $at, $zero, lbl_80B02E1C
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC130                 # a3 = C1300000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t8, 0x0020($sp)
    addiu   t7, $zero, 0x0022          # t7 = 00000022
    sw      t7, 0x023C(t8)             # 0000023C
lbl_80B02E1C:
    lw      $ra, 0x001C($sp)
lbl_80B02E20:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B02E2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x02DC(a0)            # 000002DC
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, 0x41C0                # $at = 41C00000
    add.s   $f8, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 24.00
    swc1    $f8, 0x02DC(a0)            # 000002DC
    lw      v0, -0x4600(v0)            # 8011BA00
    lwc1    $f10, 0x02DC(a0)           # 000002DC
    lh      t6, 0x1462(v0)             # 80121462
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    add.s   $f6, $f18, $f4
    c.le.s  $f6, $f10
    nop
    bc1fl   lbl_80B02EB0
    lh      t8, 0x1464(v0)             # 80121464
    lw      t7, 0x035C(a0)             # 0000035C
    bnel    t7, $zero, lbl_80B02EB0
    lh      t8, 0x1464(v0)             # 80121464
    sw      a0, 0x0018($sp)
    jal     func_80B01A70
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B02BBC
    lw      a1, 0x001C($sp)
    b       lbl_80B02F7C
    lw      $ra, 0x0014($sp)
    lh      t8, 0x1464(v0)             # 00001464
lbl_80B02EB0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lwc1    $f0, 0x02DC(a0)            # 000002DC
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80B02F00
    lh      t1, 0x1466(v0)             # 00001466
    lw      t9, 0x0360(a0)             # 00000360
    bnel    t9, $zero, lbl_80B02F00
    lh      t1, 0x1466(v0)             # 00001466
    jal     func_80B011C4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    b       lbl_80B02F78
    sw      t0, 0x0360(a0)             # 00000360
    lh      t1, 0x1466(v0)             # 00001466
lbl_80B02F00:
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f8                   # $f8 = 56.00
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    add.s   $f16, $f6, $f8
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_80B02F48
    lh      t3, 0x1468(v0)             # 00001468
    lw      t2, 0x0364(a0)             # 00000364
    bnel    t2, $zero, lbl_80B02F48
    lh      t3, 0x1468(v0)             # 00001468
    jal     func_80B02C08
    nop
    b       lbl_80B02F7C
    lw      $ra, 0x0014($sp)
    lh      t3, 0x1468(v0)             # 00001468
lbl_80B02F48:
    lui     $at, 0x42A4                # $at = 42A40000
    mtc1    $at, $f10                  # $f10 = 82.00
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f6, $f4, $f10
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_80B02F7C
    lw      $ra, 0x0014($sp)
    jal     func_80B02C58
    nop
lbl_80B02F78:
    lw      $ra, 0x0014($sp)
lbl_80B02F7C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B02F88:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lhu     t6, 0x0334(s0)             # 00000334
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t1, 0x0336(s0)             # 00000336
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0334(s0)             # 00000334
    lw      t8, -0x4600(t8)            # 8011BA00
    andi    t0, t7, 0xFFFF             # t0 = 00000001
    andi    a2, t0, 0xFFFF             # a2 = 00000001
    lh      t9, 0x146A(t8)             # 8012146A
    sw      t0, 0x0030($sp)
    sw      $zero, 0x0010($sp)
    subu    t2, t1, t9
    addiu   t3, t2, 0xFFFE             # t3 = FFFFFFFE
    sw      t3, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    sw      t1, 0x002C($sp)
    jal     func_8005C714
    andi    a0, t1, 0xFFFF             # a0 = 00000000
    addiu   v0, s0, 0x0338             # v0 = 00000338
    addiu   v1, s0, 0x0344             # v1 = 00000344
    lwc1    $f4, 0x0000(v1)            # 00000344
    lwc1    $f2, 0x0000(v0)            # 00000338
    lw      t0, 0x0030($sp)
    lw      t1, 0x002C($sp)
    sub.s   $f6, $f4, $f2
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     t7, 0x8012                 # t7 = 80120000
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0000(a0)           # 00000024
    lwc1    $f16, 0x0004(v1)           # 00000348
    lwc1    $f12, 0x0004(v0)           # 0000033C
    lwc1    $f8, 0x0350(s0)            # 00000350
    sub.s   $f18, $f16, $f12
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f12, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(a0)           # 00000028
    lwc1    $f16, 0x0008(v1)           # 0000034C
    lwc1    $f14, 0x0008(v0)           # 00000340
    sub.s   $f18, $f16, $f14
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f14, $f4
    swc1    $f6, 0x0008(a0)            # 0000002C
    lw      t4, 0x0028($sp)
    subu    t5, t0, t4
    bltzl   t5, lbl_80B030AC
    subu    t5, t1, t0
    lw      t7, -0x4600(t7)            # 8011BA00
    subu    t6, t1, t0
    mtc1    t6, $f8                    # $f8 = 0.00
    lh      t8, 0x146A(t7)             # 8012146A
    lui     $at, 0x437F                # $at = 437F0000
    cvt.s.w $f10, $f8
    addiu   t9, t8, 0x0002             # t9 = 00000002
    mtc1    t9, $f16                   # $f16 = 0.00
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    cvt.s.w $f18, $f16
    sw      t4, 0x0240(s0)             # 00000240
    div.s   $f4, $f10, $f18
    mul.s   $f8, $f4, $f6
    trunc.w.s $f16, $f8
    mfc1    t3, $f16
    nop
    sw      t3, 0x0248(s0)             # 00000248
    subu    t5, t1, t0
lbl_80B030AC:
    bgtzl   t5, lbl_80B030C0
    lw      $ra, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B030C0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B030D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B021EC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03138:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02234
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B031A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02268
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03214:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD9F4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0236C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD93C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B03294:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD9F4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02578
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B03314:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B025D0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0338C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02630
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03404:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0281C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0347C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFDA7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0298C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B034F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01144
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01FE8
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02090
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02D90
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B0358C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDB44
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02DCC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03604:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01590
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02E2C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03688:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01590
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x3D20             # a2 = 06003D20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01DD8
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80B010F8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02E2C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03728:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01590
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD66C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x9FBC             # a2 = 06009FBC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01DD8
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02E2C
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B037C0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF04C
    lw      a1, 0x0024($sp)
    jal     func_80AFD950
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01590
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD8F4
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B01144
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    jal     func_80AFD748
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFDBE0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B02F88
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03844:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_80B03A28
    lw      a2, 0x0038($sp)
    lw      a1, 0x0034($sp)
    lw      t0, 0x0030($sp)
    lw      t6, 0x0020($sp)
    lw      v0, 0x0000(t6)             # 00000000
    lw      s0, 0x02C4(v0)             # 000002C4
    addiu   s0, s0, 0xFE40             # s0 = FFFFFE40
    sw      s0, 0x02C4(v0)             # 000002C4
    lw      a0, 0x0000(a2)             # 00000000
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a2)             # 00000000
    sw      s0, 0x0004(a0)             # 00000004
    sw      t8, 0x0000(a0)             # 00000000
    lh      t9, 0x0000(t0)             # 00000000
    lh      t1, 0x03F2(a1)             # 000003F2
    lh      t3, 0x0004(t0)             # 00000004
    addu    t2, t9, t1
    sh      t2, 0x0000(t0)             # 00000000
    lh      t4, 0x03F0(a1)             # 000003F0
    addu    t5, t3, t4
    jal     func_800AA6EC
    sh      t5, 0x0004(t0)             # 00000004
    lw      v0, 0x002C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(v0)             # 00000008
    lw      t0, 0x0030($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0000(t0)             # 00000000
    lh      a1, 0x0002(t0)             # 00000002
    jal     func_800AAF00
    lh      a2, 0x0004(t0)             # 00000004
    jal     func_800AA6EC
    nop
    lui     $at, 0x432E                # $at = 432E0000
    mtc1    $at, $f12                  # $f12 = 174.00
    lui     $at, %hi(var_80B04950)     # $at = 80B00000
    lwc1    $f14, %lo(var_80B04950)($at)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    or      a0, s0, $zero              # a0 = FFFFFE40
    lui     $at, 0xC3CD                # $at = C3CD0000
    mtc1    $at, $f12                  # $f12 = -410.00
    lui     $at, 0xC338                # $at = C3380000
    mtc1    $at, $f14                  # $f14 = -184.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x0040             # a0 = FFFFFE80
    lui     $at, %hi(var_80B04954)     # $at = 80B00000
    lwc1    $f12, %lo(var_80B04954)($at)
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f14                  # $f14 = -26.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x0080             # a0 = FFFFFEC0
    jal     func_800AA724
    nop
    jal     func_800AA6EC
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0x4384                # $at = 43840000
    mtc1    $at, $f14                  # $f14 = 264.00
    lui     a2, 0x43C1                 # a2 = 43C10000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x00C0             # a0 = FFFFFF00
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0x42A8                 # a2 = 42A80000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x0100             # a0 = FFFFFF40
    jal     func_800AA724
    nop
    jal     func_800AA6EC
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0x4384                # $at = 43840000
    mtc1    $at, $f14                  # $f14 = 264.00
    lui     a2, 0xC3C1                 # a2 = C3C10000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x0140             # a0 = FFFFFF80
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0xC2A8                 # a2 = C2A80000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    addiu   a0, s0, 0x0180             # a0 = FFFFFFC0
    jal     func_800AA724
    nop
    jal     func_800AA724
    nop
lbl_80B03A28:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03A40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    jal     func_8002049C
    sw      a2, 0x0024($sp)
    sltu    v1, $zero, v0
    beq     v1, $zero, lbl_80B03AA8
    lw      a2, 0x0024($sp)
    lh      v0, 0x00A4(a2)             # 000000A4
    xori    v1, v0, 0x004F             # v1 = 0000004F
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03AA8
    nop
    xori    v1, v0, 0x001A             # v1 = 0000001A
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03AA8
    nop
    xori    v1, v0, 0x000E             # v1 = 0000000E
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03AA8
    nop
    xori    v1, v0, 0x000F             # v1 = 0000000F
    sltiu   v1, v1, 0x0001
lbl_80B03AA8:
    beq     v1, $zero, lbl_80B03AFC
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a2
    lbu     t6, 0x1DEA(t6)             # 00011DEA
    lw      a0, 0x0020($sp)
    jal     func_80AFF014
    sb      t6, 0x001B($sp)
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     v0, $at, lbl_80B03AFC
    lbu     t7, 0x001B($sp)
    bne     t7, $zero, lbl_80B03AFC
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t8, 0x13D4(v0)             # 8011B9A4
    blez    t8, lbl_80B03AF4
    nop
    lh      t9, 0x13D2(v0)             # 8011B9A2
    bnel    t9, $zero, lbl_80B03B00
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B03AF4:
    b       lbl_80B03B00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B03AFC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B03B00:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03B10:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    jal     func_8002049C
    sw      a2, 0x0024($sp)
    sltu    v1, $zero, v0
    beq     v1, $zero, lbl_80B03B78
    lw      a2, 0x0024($sp)
    lh      v0, 0x00A4(a2)             # 000000A4
    xori    v1, v0, 0x004F             # v1 = 0000004F
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03B78
    nop
    xori    v1, v0, 0x001A             # v1 = 0000001A
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03B78
    nop
    xori    v1, v0, 0x000E             # v1 = 0000000E
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_80B03B78
    nop
    xori    v1, v0, 0x000F             # v1 = 0000000F
    sltiu   v1, v1, 0x0001
lbl_80B03B78:
    beq     v1, $zero, lbl_80B03BBC
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a2
    lbu     t6, 0x1DEA(t6)             # 00011DEA
    lw      a0, 0x0020($sp)
    jal     func_80AFF014
    sb      t6, 0x001B($sp)
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     v0, $at, lbl_80B03BBC
    lbu     t7, 0x001B($sp)
    bne     t7, $zero, lbl_80B03BBC
    lui     t8, 0x8012                 # t8 = 80120000
    lh      t8, -0x465C(t8)            # 8011B9A4
    bgtzl   t8, lbl_80B03BC0
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B03BC0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B03BBC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B03BC0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03BD0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B03A40
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B03C18
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B011F4
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80B03C84
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B01BB8
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B03C84
lbl_80B03C18:
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9FBC             # a1 = 06009FBC
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80AFF084
    sw      $zero, 0x0010($sp)
    lw      t6, 0x0004(s1)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    ori     t7, t6, 0x0009             # t7 = 00000009
    jal     func_80B01224
    sw      t7, 0x0004(s1)             # 00000004
    jal     func_80B014A0
    or      a0, s1, $zero              # a0 = 00000000
    sh      $zero, 0x00B8(s1)          # 000000B8
    lh      t8, 0x0034(s1)             # 00000034
    lh      t9, 0x00B8(s1)             # 000000B8
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      v0, 0x00B6(s1)             # 000000B6
    sh      v0, 0x0032(s1)             # 00000032
    sw      t0, 0x023C(s1)             # 0000023C
    sw      t1, 0x0240(s1)             # 00000240
    sw      t8, 0x03B4(s1)             # 000003B4
    b       lbl_80B03C8C
    sh      t9, 0x0034(s1)             # 00000034
lbl_80B03C84:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B03C8C:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B03A40
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B03D9C
    nop
    jal     func_800738E8
    addiu   a0, $zero, 0x00B4          # a0 = 000000B4
    jal     func_80AFD6DC
    nop
    addiu   t2, $zero, 0x0140          # t2 = 00000140
    lui     $at, 0x8012                # $at = 80120000
    sh      t2, -0x460C($at)           # 8011B9F4
    jal     func_80072500
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002049C
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    beq     v0, $zero, lbl_80B03D24
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    lui     $at, %hi(var_80B04958)     # $at = 80B00000
    lwc1    $f4, %lo(var_80B04958)($at)
    lui     $at, 0xC22C                # $at = C22C0000
    mtc1    $at, $f6                   # $f6 = -43.00
    addiu   t3, $zero, 0x2000          # t3 = 00002000
    addiu   t4, $zero, 0x2000          # t4 = 00002000
    sw      t4, 0x0024($sp)
    sw      t3, 0x001C($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0177          # a2 = 00000177
    lui     a3, 0xC310                 # a3 = C3100000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
lbl_80B03D24:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0024          # a1 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0027          # a1 = 00000027
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x0029          # a1 = 00000029
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020510
    addiu   a1, $zero, 0x002A          # a1 = 0000002A
lbl_80B03D9C:
    jal     func_80AFF014
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     v0, $at, lbl_80B03E1C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80AFF114
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002049C
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    sltu    a0, $zero, v0
    beq     a0, $zero, lbl_80B03E0C
    or      a1, s0, $zero              # a1 = 00000000
    lh      v0, 0x00A4(s0)             # 000000A4
    xori    a0, v0, 0x004F             # a0 = 0000004F
    sltiu   a0, a0, 0x0001
    bne     a0, $zero, lbl_80B03E0C
    nop
    xori    a0, v0, 0x001A             # a0 = 0000001A
    sltiu   a0, a0, 0x0001
    bne     a0, $zero, lbl_80B03E0C
    nop
    xori    a0, v0, 0x000E             # a0 = 0000000E
    sltiu   a0, a0, 0x0001
    bne     a0, $zero, lbl_80B03E0C
    nop
    xori    a0, v0, 0x000F             # a0 = 0000000F
    sltiu   a0, a0, 0x0001
lbl_80B03E0C:
    beql    a0, $zero, lbl_80B03E20
    lw      $ra, 0x0034($sp)
    jal     func_80AFD89C
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B03E1C:
    lw      $ra, 0x0034($sp)
lbl_80B03E20:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B03E30:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    jal     func_80B03B10
    nop
    beq     v0, $zero, lbl_80B03E70
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x5806          # a0 = 00005806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80B03E70:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B03E80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    addiu   a1, $zero, 0x0036          # a1 = 00000036
    jal     func_800738E8
    addiu   a0, $zero, 0x00B4          # a0 = 000000B4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFF114
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AFD89C
    or      a1, s1, $zero              # a1 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EEC(v0)             # 8011B4BC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t7, t6, 0xFF7F             # t7 = 00000000
    jal     func_80B01224
    sh      t7, 0x0EEC(v0)             # 8011B4BC
    addiu   t8, $zero, 0x0140          # t8 = 00000140
    lui     $at, 0x8012                # $at = 80120000
    sh      t8, -0x460C($at)           # 8011B9F4
    jal     func_80072500
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x001B          # t9 = 0000001B
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t9, 0x023C(s0)             # 0000023C
    sw      t0, 0x0240(s0)             # 00000240
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B03F1C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0034($sp)
    jal     func_80AFF03C
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x0601                 # v1 = 06010000
    addiu   v1, v1, 0x91D8             # v1 = 060091D8
    sll     t6, v1,  4
    lui     s1, 0x8012                 # s1 = 80120000
    srl     t7, t6, 28
    addiu   s1, s1, 0x0C38             # s1 = 80120C38
    sll     t8, t7,  2
    addu    t9, s1, t8
    lw      t0, 0x0000(t9)             # 00000000
    lui     s2, 0x00FF                 # s2 = 00FF0000
    ori     s2, s2, 0xFFFF             # s2 = 00FFFFFF
    and     t1, v1, s2
    lui     s3, 0x8000                 # s3 = 80000000
    addu    t2, t0, t1
    sw      v0, 0x002C($sp)
    jal     func_8008A194
    addu    a0, t2, s3
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, 0x0601                 # v1 = 06010000
    addiu   v1, v1, 0xA598             # v1 = 0600A598
    cvt.s.w $f6, $f4
    sll     t3, v1,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, s1, t5
    and     t8, v1, s2
    swc1    $f6, 0x03CC(s0)            # 000003CC
    lw      t7, 0x0000(t6)             # 00000000
    addu    t9, t7, t8
    jal     func_8008A194
    addu    a0, t9, s3
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     v1, 0x0601                 # v1 = 06010000
    addiu   v1, v1, 0xA334             # v1 = 0600A334
    cvt.s.w $f10, $f8
    sll     t0, v1,  4
    srl     t1, t0, 28
    sll     t2, t1,  2
    addu    t3, s1, t2
    and     t5, v1, s2
    swc1    $f10, 0x03D0(s0)           # 000003D0
    lw      t4, 0x0000(t3)             # 00000000
    addu    t6, t4, t5
    jal     func_8008A194
    addu    a0, t6, s3
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x1110             # v1 = 06001110
    cvt.s.w $f18, $f16
    sll     t7, v1,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, s1, t9
    and     t2, v1, s2
    swc1    $f18, 0x03D4(s0)           # 000003D4
    lw      t1, 0x0000(t0)             # 00000000
    addu    t3, t1, t2
    jal     func_8008A194
    addu    a0, t3, s3
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x2348             # v1 = 06002348
    cvt.s.w $f6, $f4
    sll     t4, v1,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, s1, t6
    and     t9, v1, s2
    swc1    $f6, 0x03E4(s0)            # 000003E4
    lw      t8, 0x0000(t7)             # 00000000
    addu    t0, t8, t9
    jal     func_8008A194
    addu    a0, t0, s3
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x2E54             # v1 = 06002E54
    cvt.s.w $f10, $f8
    sll     t1, v1,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, s1, t3
    and     t6, v1, s2
    swc1    $f10, 0x03DC(s0)           # 000003DC
    lw      t5, 0x0000(t4)             # 00000000
    addu    t7, t5, t6
    jal     func_8008A194
    addu    a0, t7, s3
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x1D8C             # v1 = 06001D8C
    cvt.s.w $f18, $f16
    sll     t8, v1,  4
    srl     t9, t8, 28
    sll     t0, t9,  2
    addu    t1, s1, t0
    and     t3, v1, s2
    swc1    $f18, 0x03E0(s0)           # 000003E0
    lw      t2, 0x0000(t1)             # 00000000
    addu    t4, t2, t3
    jal     func_8008A194
    addu    a0, t4, s3
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    cvt.s.w $f6, $f4
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_80B04110
    swc1    $f6, 0x03D8(s0)            # 000003D8
    beq     v1, $at, lbl_80B04120
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80B04130
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B04140
    nop
lbl_80B04110:
    jal     func_80AFF230
    lw      a1, 0x0034($sp)
    b       lbl_80B0414C
    lw      $ra, 0x0024($sp)
lbl_80B04120:
    jal     func_80AFFA14
    lw      a1, 0x0034($sp)
    b       lbl_80B0414C
    lw      $ra, 0x0024($sp)
lbl_80B04130:
    jal     func_80B03BD0
    lw      a1, 0x0034($sp)
    b       lbl_80B0414C
    lw      $ra, 0x0024($sp)
lbl_80B04140:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B0414C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B04164:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x001C($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x014F          # a1 = 0000014F
    lw      a0, 0x001C($sp)
    sw      v0, 0x0024($sp)
    jal     func_80081688
    or      a1, v0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B041C4
    lw      a0, 0x0030($sp)
    lw      t6, 0x0024($sp)
    sw      t6, 0x0308(a0)             # 00000308
    jal     func_80AFF04C
    lw      a1, 0x0034($sp)
    lw      a0, 0x0030($sp)
    jal     func_80B03F1C
    lw      a1, 0x0034($sp)
lbl_80B041C4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B041D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x023C(a0)             # 0000023C
    bltz    v0, lbl_80B0420C
    slti    $at, v0, 0x0028
    beq     $at, $zero, lbl_80B0420C
    sll     t6, v0,  2
    lui     v1, %hi(var_80B047A0)      # v1 = 80B00000
    addu    v1, v1, t6
    lw      v1, %lo(var_80B047A0)(v1)
    beql    v1, $zero, lbl_80B04210
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80B0420C:
    lw      $ra, 0x0014($sp)
lbl_80B04210:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B0421C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    sw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x0014(t6)          # 00000014
    jal     func_80AFD620
    lw      a1, 0x004C($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x01DA             # t8 = 000001DA
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a2, a2, 0x0D70             # a2 = 06010D70
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80AFF03C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B042B4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B042C0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B042CC
    lw      $ra, 0x002C($sp)
lbl_80B042B4:
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_80B042C8
    sh      $zero, -0x465E($at)        # 8011B9A2
lbl_80B042C0:
    jal     func_80B03E30
    lw      a1, 0x004C($sp)
lbl_80B042C8:
    lw      $ra, 0x002C($sp)
lbl_80B042CC:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B042DC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x003C($sp)
    lw      v0, 0x02F8(t6)             # 000002F8
    bltz    v0, lbl_80B04314
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_80B04314
    sll     t7, v0,  2
    lui     v1, %hi(var_80B04840)      # v1 = 80B00000
    addu    v1, v1, t7
    lw      v1, %lo(var_80B04840)(v1)
    lw      t8, 0x0038($sp)
    bnel    v1, $zero, lbl_80B04320
    lw      t9, 0x003C($sp)
lbl_80B04314:
    b       lbl_80B04334
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x003C($sp)
lbl_80B04320:
    lw      t0, 0x0040($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    jalr    $ra, v1
    sw      t0, 0x0018($sp)
lbl_80B04334:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B04344:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B04354:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0234(a3)             # 00000234
    lh      a2, 0x0238(a3)             # 00000238
    lui     t2, %hi(var_80B0471C)      # t2 = 80B00000
    lui     t3, %hi(var_80B0473C)      # t3 = 80B00000
    sll     t6, v0,  2
    sll     t7, a2,  2
    addu    t2, t2, t6
    addu    t3, t3, t7
    lw      t2, %lo(var_80B0471C)(t2)
    lw      t3, %lo(var_80B0473C)(t3)
    lw      t8, 0x0054($sp)
    lw      a0, 0x0000(t8)             # 00000000
    sw      t3, 0x0034($sp)
    sw      t2, 0x0040($sp)
    sw      a3, 0x0050($sp)
    jal     func_8007E298
    sw      a0, 0x002C($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lw      v1, 0x002C($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t2, 0x0040($sp)
    lw      t3, 0x0034($sp)
    lw      $ra, 0x0050($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t7, t2,  4
    srl     t8, t7, 28
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2
    addu    a1, t4, t9
    sw      t6, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a1)             # 00000000
    and     a2, t2, t5
    addiu   t0, $ra, 0x013C            # t0 = 0000013C
    addu    t7, t6, a2
    addu    t8, t7, t1
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 00000000
    addu    t8, t7, a2
    addu    t9, t8, t1
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    sll     t8, t3,  4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    srl     t9, t8, 28
    ori     t7, t7, 0x0028             # t7 = DB060028
    sll     t6, t9,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t6
    lw      t8, 0x0000(t7)             # DB060028
    and     t9, t3, t5
    addu    t6, t8, t9
    addu    t7, t6, t1
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    addiu   t9, t9, 0x8520             # t9 = 800E8520
    ori     t8, t8, 0x002C             # t8 = DB06002C
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    lui     t6, %hi(func_80B042DC)     # t6 = 80B00000
    lui     t7, %hi(func_80AFEF48)     # t7 = 80B00000
    addiu   t7, t7, %lo(func_80AFEF48) # t7 = 80AFEF48
    addiu   t6, t6, %lo(func_80B042DC) # t6 = 80B042DC
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      $ra, 0x0018($sp)
    lw      t8, 0x02C0(v1)             # 000002C0
    sw      v1, 0x002C($sp)
    lw      a0, 0x0054($sp)
    jal     func_8008A88C
    sw      t8, 0x001C($sp)
    lw      v1, 0x002C($sp)
    sw      v0, 0x02C0(v1)             # 000002C0
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80B04500:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x005C($sp)
    lh      v0, 0x0234(s0)             # 00000234
    lh      a2, 0x0238(s0)             # 00000238
    lui     t2, %hi(var_80B0471C)      # t2 = 80B00000
    lui     t3, %hi(var_80B0473C)      # t3 = 80B00000
    sll     t6, v0,  2
    sll     t7, a2,  2
    addu    t2, t2, t6
    addu    t3, t3, t7
    lw      t2, %lo(var_80B0471C)(t2)
    lw      t3, %lo(var_80B0473C)(t3)
    lw      t8, 0x005C($sp)
    lw      a0, 0x0000(t8)             # 00000000
    sw      t3, 0x003C($sp)
    sw      t2, 0x0048($sp)
    jal     func_8007E2C0
    sw      a0, 0x0034($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lw      v1, 0x0034($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t2, 0x0048($sp)
    lw      t3, 0x003C($sp)
    lw      v0, 0x02D0(v1)             # 000002D0
    sll     t7, t2,  4
    srl     t8, t7, 28
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2
    addu    a1, t4, t9
    sw      t6, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a1)             # 00000000
    and     a2, t2, t5
    addiu   t0, s0, 0x013C             # t0 = 0000013C
    addu    t7, t6, a2
    addu    t8, t7, t1
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 00000000
    addu    t8, t7, a2
    addu    t9, t8, t1
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    sll     t8, t3,  4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    srl     t9, t8, 28
    ori     t7, t7, 0x0028             # t7 = DB060028
    sll     t6, t9,  2
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t6
    lw      t8, 0x0000(t7)             # DB060028
    and     t9, t3, t5
    addu    t6, t8, t9
    addu    t7, t6, t1
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0248(s0)             # 00000248
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x002C             # t9 = DB06002C
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8510             # t6 = 800E8510
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    lui     t7, %hi(func_80B042DC)     # t7 = 80B00000
    addiu   t7, t7, %lo(func_80B042DC) # t7 = 80B042DC
    sw      t7, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    lw      t8, 0x02D0(v1)             # 000002D0
    sw      v1, 0x0034($sp)
    lw      a0, 0x005C($sp)
    jal     func_8008A88C
    sw      t8, 0x001C($sp)
    lw      v1, 0x0034($sp)
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80B046A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0240(a0)             # 00000240
    bltz    v0, lbl_80B046E0
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_80B046E0
    sll     t6, v0,  2
    lui     v1, %hi(var_80B04848)      # v1 = 80B00000
    addu    v1, v1, t6
    lw      v1, %lo(var_80B04848)(v1)
    beql    v1, $zero, lbl_80B046E4
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80B046E0:
    lw      $ra, 0x0014($sp)
lbl_80B046E4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_80B046F0: .word \
0x00000009, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_80B0471C: .word \
0x060030C8, 0x06003C48, 0x06004048, 0x06004548, \
0x06004948, 0x06004D48, 0x06005148, 0x00000000
var_80B0473C: .word 0x06003508, 0x06005548, 0x06005948
var_80B04748: .word 0x00000000
var_80B0474C: .word 0x00000000, 0x00000000, 0x00000000
var_80B04758: .word 0x00000000, 0x41200000, 0x00000000
var_80B04764: .word 0x00000000
var_80B04768: .word 0x00000000, 0x00000000, 0x00000000
var_80B04774: .word 0xFFFFFFFF
var_80B04778: .word 0x43140000, 0x43820000, 0xC2AE0000
var_80B04784: .word \
0xC1400000, 0x43820000, 0xC3130000, 0x42280000, \
0x43820000, 0x41500000
var_80B0479C: .word 0x00000000
var_80B047A0: .word func_80B04164
.word func_80AFF7B4
.word func_80AFF810
.word func_80AFF878
.word func_80AFF8E8
.word func_80AFF950
.word func_80AFF9B8
.word func_80B008D0
.word func_80B0092C
.word func_80B00994
.word func_80B009FC
.word func_80B00A64
.word func_80B00ACC
.word func_80B00B5C
.word func_80B00BCC
.word func_80B00C34
.word func_80B00CA4
.word func_80B00D30
.word func_80B00DB0
.word func_80B00E2C
.word func_80B00E88
.word func_80B00F0C
.word func_80B00F74
.word func_80B00FDC
.word func_80B01044
.word func_80B030D0
.word func_80B03138
.word func_80B031A0
.word func_80B03214
.word func_80B03294
.word func_80B03314
.word func_80B0338C
.word func_80B03404
.word func_80B0347C
.word func_80B034F4
.word func_80B0358C
.word func_80B03604
.word func_80B03688
.word func_80B03728
.word func_80B037C0
var_80B04840: .word func_80AFE84C
.word func_80B03844
var_80B04848: .word func_80B04344
.word func_80B04354
.word func_80B04500
var_80B04854: .word 0x01790400, 0x00000010, 0x00600000, 0x00000410
.word func_80B0421C
.word func_80AFD6B0
.word func_80B041D4
.word func_80B046A8
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B04880: .word 0x45803000
var_80B04884: .word 0xC3B98000
var_80B04888: .word 0xC62BE000
var_80B0488C: .word 0x45C1C000
var_80B04890: .word 0xC5A28000
var_80B04894: .word 0x45834000
var_80B04898: .word 0xC5ED8000
var_80B0489C: .word 0x46A41000
var_80B048A0: .word 0xC5DAC000
var_80B048A4: .word 0xC5DAC000
var_80B048A8: .word 0xC47EC000
var_80B048AC: .word 0x43E98000
var_80B048B0: .word 0x43848000
var_80B048B4: .word 0xC3D58000
var_80B048B8: .word 0x43E98000
var_80B048BC: .word 0x43848000
var_80B048C0: .word 0xC3D58000
var_80B048C4: .word var_80AFF700
.word var_80AFF710
.word var_80AFF780
.word var_80AFF72C
.word var_80AFF73C
.word var_80AFF74C
.word var_80AFF75C
.word var_80AFF76C
.word var_80AFF790
var_80B048E8: .word 0x404A5E38
var_80B048EC: .word 0xBFCDBF48
var_80B048F0: .word 0x404A5E38
var_80B048F4: .word 0xBFCDBF48
var_80B048F8: .word 0xBC47E000
var_80B048FC: .word 0x3DFCD6EA
var_80B04900: .word 0x3DFCD6EA
var_80B04904: .word var_80B007CC
.word var_80B007DC
.word var_80B007EC
.word var_80B007FC
.word var_80B0080C
.word var_80B0081C
.word var_80B0082C
.word var_80B0083C
.word var_80B0084C
.word var_80B0085C
.word var_80B0086C
.word var_80B0087C
.word var_80B0088C
.word var_80B0089C
.word var_80B008AC
var_80B04940: .word 0x4622F983
var_80B04944: .word 0x4622F983
var_80B04948: .word 0x4622F983
var_80B0494C: .word 0x4622F983
var_80B04950: .word 0xC39E8000
var_80B04954: .word 0xC47EC000
var_80B04958: .word 0x455D8000, 0x00000000

