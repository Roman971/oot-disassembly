.section .text
func_80A56410:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80035260
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A56468:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f10, $f8, $f14
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f14
    nop
    mul.s   $f10, $f6, $f12
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80A564BC:
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0170(a0)             # 00000170
    jr      $ra
    nop


func_80A564CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    addiu   a0, a2, 0x07C0             # a0 = 000007C0
    jal     func_80031464
    lw      a1, 0x0170(t6)             # 00000170
    beq     v0, $zero, lbl_80A56528
    lw      a0, 0x0018($sp)
    lwc1    $f12, 0x0024(v0)           # 00000024
    lwc1    $f14, 0x002C(v0)           # 0000002C
    lw      a2, 0x0024(a0)             # 00000024
    jal     func_800A5470
    lw      a3, 0x002C(a0)             # 0000002C
    lui     $at, %hi(var_80A570B0)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A570B0)($at)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80A5652C
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80A5652C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56528:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A5652C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A5653C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bne     t6, $at, lbl_80A5655C
    nop
    b       lbl_80A56614
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A5655C:
    jal     func_80A564CC
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A56574
    lw      a0, 0x0018($sp)
    b       lbl_80A56614
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A56574:
    lui     $at, %hi(var_80A570B4)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A570B4)($at)
    lwc1    $f6, 0x0024(a0)            # 00000024
    lui     $at, 0xC3B4                # $at = C3B40000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_80A56614
    nop
    lwc1    $f8, 0x002C(a0)            # 0000002C
    mtc1    $at, $f10                  # $f10 = -360.00
    nop
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_80A56614
    nop
    lwc1    $f16, 0x0140(a0)           # 00000140
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_80A565DC
    lh      v0, 0x0032(a0)             # 00000032
    b       lbl_80A565EC
    lh      v0, 0x0032(a0)             # 00000032
    lh      v0, 0x0032(a0)             # 00000032
lbl_80A565DC:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80A565EC:
    slti    $at, v0, 0x2000
    beq     $at, $zero, lbl_80A5660C
    slti    $at, v0, 0xA001
    bne     $at, $zero, lbl_80A5660C
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B5A(v0)            # 8011B4A6
    b       lbl_80A56614
    andi    v0, v0, 0x0010             # v0 = 00000000
lbl_80A5660C:
    b       lbl_80A56614
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56614:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A56624:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x0348             # a2 = 06000348
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80A56410
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80A57044)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A57044)  # a1 = 80A57044
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A564BC
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A566D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A56F44
    lw      a1, 0x0024($sp)
    lui     v0, %hi(var_80A57020)      # v0 = 80A50000
    addiu   v0, v0, %lo(var_80A57020)  # v0 = 80A57020
    lh      t6, 0x0000(v0)             # 80A57020
    lui     t8, %hi(var_80A57054)      # t8 = 80A50000
    addiu   t8, t8, %lo(var_80A57054)  # t8 = 80A57054
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    t9, t7, t8
    lw      t1, 0x0000(t9)             # 00000000
    sw      t1, 0x0024(s0)             # 00000024
    lw      t0, 0x0004(t9)             # 00000004
    sw      t0, 0x0028(s0)             # 00000028
    lw      t1, 0x0008(t9)             # 00000008
    sw      t1, 0x002C(s0)             # 0000002C
    lh      t2, 0x0000(v0)             # 80A57020
    addiu   t3, t2, 0x0001             # t3 = 00000001
    b       lbl_80A566E0
    sh      t3, 0x0000(v0)             # 80A57020
lbl_80A566D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A56B24
    lw      a1, 0x0024($sp)
lbl_80A566E0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A566F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lui     $at, %hi(var_80A57020)     # $at = 80A50000
    sh      $zero, %lo(var_80A57020)($at)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A56730:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    jal     func_80A564BC
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lw      t6, 0x0050($sp)
    lwc1    $f6, 0x0050(s0)            # 00000050
    lui     t8, %hi(var_80A5706C)      # t8 = 80A50000
    sll     t7, t6,  2
    mul.s   $f8, $f6, $f0
    subu    t7, t7, t6
    sll     t7, t7,  2
    addiu   t8, t8, %lo(var_80A5706C)  # t8 = 80A5706C
    addu    v0, t7, t8
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f16, 0x0004(v0)           # 00000004
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFF0
    mul.s   $f10, $f4, $f8
    lwc1    $f8, 0x0008(v0)            # 00000008
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFE4
    swc1    $f10, 0x002C($sp)
    lwc1    $f18, 0x0054(s0)           # 00000054
    mul.s   $f6, $f18, $f0
    nop
    mul.s   $f4, $f16, $f6
    swc1    $f4, 0x0030($sp)
    lwc1    $f10, 0x0058(s0)           # 00000058
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f16, $f8, $f18
    swc1    $f16, 0x0034($sp)
    lw      a3, 0x0160(s0)             # 00000160
    jal     func_80A56468
    lw      a2, 0x015C(s0)             # 0000015C
    lwc1    $f6, 0x0038($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x003C($sp)
    lw      a0, 0x004C($sp)
    add.s   $f10, $f6, $f4
    lwc1    $f6, 0x0040($sp)
    addiu   t9, $sp, 0x0038            # t9 = FFFFFFF0
    addiu   a1, s0, 0x0078             # a1 = 00000078
    swc1    $f10, 0x0038($sp)
    lwc1    $f18, 0x0104(s0)           # 00000104
    addiu   a2, s0, 0x0170             # a2 = 00000170
    or      a3, s0, $zero              # a3 = 00000000
    add.s   $f16, $f8, $f18
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    swc1    $f16, 0x003C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t9, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    add.s   $f10, $f6, $f4
    jal     func_8002F578
    swc1    $f10, 0x0040($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    swc1    $f0, 0x0080(s0)            # 00000080
    lui     $at, %hi(var_80A570B8)     # $at = 80A50000
    sub.s   $f16, $f0, $f18
    lwc1    $f6, %lo(var_80A570B8)($at)
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f6, $f16
    nop
    bc1f    lbl_80A5685C
    nop
    lwc1    $f4, 0x0080(s0)            # 00000080
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80A5685C
    swc1    $f4, 0x0028(s0)            # 00000028
lbl_80A5685C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80A56870:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s2, 0x003C($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s7, 0x0050($sp)
    sw      s6, 0x004C($sp)
    sw      s5, 0x0048($sp)
    sw      s4, 0x0044($sp)
    sw      s3, 0x0040($sp)
    sw      s1, 0x0038($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f22                  # $f22 = -32000.00
    jal     func_80A564BC
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    lui     s1, %hi(var_80A5706C)      # s1 = 80A50000
    addiu   s6, s2, 0x07C0             # s6 = 000007C0
    lui     s5, %hi(var_80A570A8)      # s5 = 80A50000
    mtc1    $at, $f20                  # $f20 = 10.00
    mtc1    $zero, $f24                # $f24 = 0.00
    addiu   s5, s5, %lo(var_80A570A8)  # s5 = 80A570A8
    addiu   s2, $sp, 0x0080            # s2 = FFFFFFF0
    addiu   s1, s1, %lo(var_80A5706C)  # s1 = 80A5706C
    addiu   s7, s0, 0x0078             # s7 = 00000078
    addiu   s4, $sp, 0x0064            # s4 = FFFFFFD4
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFE4
    lwc1    $f6, 0x0050(s0)            # 00000050
lbl_80A568F0:
    lwc1    $f4, 0x0000(s1)            # 80A5706C
    lwc1    $f16, 0x0004(s1)           # 80A57070
    mul.s   $f8, $f6, $f20
    or      a0, s2, $zero              # a0 = FFFFFFF0
    or      a1, s3, $zero              # a1 = FFFFFFE4
    mul.s   $f10, $f4, $f8
    lwc1    $f8, 0x0008(s1)            # 80A57074
    swc1    $f10, 0x0074($sp)
    lwc1    $f18, 0x0054(s0)           # 00000054
    mul.s   $f6, $f18, $f20
    nop
    mul.s   $f4, $f16, $f6
    swc1    $f4, 0x0078($sp)
    lwc1    $f10, 0x0058(s0)           # 00000058
    mul.s   $f18, $f10, $f20
    nop
    mul.s   $f16, $f8, $f18
    swc1    $f16, 0x007C($sp)
    lw      a3, 0x0160(s0)             # 00000160
    jal     func_80A56468
    lw      a2, 0x015C(s0)             # 0000015C
    lwc1    $f6, 0x0080($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0084($sp)
    or      a0, s6, $zero              # a0 = 000007C0
    add.s   $f10, $f6, $f4
    lwc1    $f6, 0x0088($sp)
    or      a1, s7, $zero              # a1 = 00000078
    or      a2, s4, $zero              # a2 = FFFFFFD4
    swc1    $f10, 0x0080($sp)
    lwc1    $f18, 0x0104(s0)           # 00000104
    or      a3, s0, $zero              # a3 = 00000000
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0084($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    swc1    $f24, 0x0014($sp)
    sw      s2, 0x0010($sp)
    add.s   $f10, $f6, $f4
    jal     func_8002F578
    swc1    $f10, 0x0088($sp)
    c.lt.s  $f22, $f0
    addiu   s1, s1, 0x000C             # s1 = 80A57078
    lw      t6, 0x0064($sp)
    bc1f    lbl_80A569AC
    nop
    mov.s   $f22, $f0
    sw      t6, 0x0170(s0)             # 00000170
lbl_80A569AC:
    bnel    s1, s5, lbl_80A568F0
    lwc1    $f6, 0x0050(s0)            # 00000050
    mov.s   $f0, $f22
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    lw      s4, 0x0044($sp)
    lw      s5, 0x0048($sp)
    lw      s6, 0x004C($sp)
    lw      s7, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_80A569F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56730
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_80A56A28
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A56A9C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56A28:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56730
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     v0, $zero, lbl_80A56A44
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A56A9C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56A44:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56730
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     v0, $zero, lbl_80A56A60
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A56A9C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56A60:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56730
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     v0, $zero, lbl_80A56A7C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A56A9C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A56A7C:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56730
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beql    v0, $zero, lbl_80A56A9C
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80A56A9C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A56A9C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A56AB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     $at, 0x4391                # $at = 43910000
    mtc1    $at, $f6                   # $f6 = 290.00
    lwc1    $f4, 0x0050(a1)            # 00000050
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f0, $f4, $f6
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0010($sp)
    lw      a0, 0x0024($sp)
    add.s   $f16, $f0, $f10
    trunc.w.s $f8, $f0
    trunc.w.s $f18, $f16
    mfc1    a2, $f8
    mfc1    a3, $f18
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    jal     func_800353D0
    sra     a3, a3, 16
    sltiu   v0, v0, 0x0001
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A56B24:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a1, 0x0004($sp)
    lui     t6, %hi(func_80A56B50)     # t6 = 80A50000
    addiu   t6, t6, %lo(func_80A56B50) # t6 = 80A56B50
    swc1    $f0, 0x006C(a0)            # 0000006C
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A56B50:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0158(a0)             # 00000158
    lw      v1, 0x1C44(a1)             # 00001C44
    bgtzl   t6, lbl_80A56BF8
    lw      t9, 0x0670(v1)             # 00000670
    lwc1    $f0, 0x0140(a0)            # 00000140
    lui     $at, %hi(var_80A570BC)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A570BC)($at)
    abs.s   $f0, $f0
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A56BF8
    lw      t9, 0x0670(v1)             # 00000670
    sw      v1, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_80A5653C
    sw      a1, 0x0024($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80A56BD8
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    sw      v1, 0x001C($sp)
    jal     func_80A56AB0
    sw      a0, 0x0020($sp)
    lw      v1, 0x001C($sp)
    bne     v0, $zero, lbl_80A56BD8
    lw      a0, 0x0020($sp)
    lwc1    $f6, 0x0140(a0)            # 00000140
    swc1    $f6, 0x016C(a0)            # 0000016C
    jal     func_80A56C1C
    lw      a1, 0x0024($sp)
    b       lbl_80A56C10
    lw      $ra, 0x0014($sp)
lbl_80A56BD8:
    lw      t7, 0x0670(v1)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f8                 # $f8 = 0.00
    and     t8, t7, $at
    sw      t8, 0x0670(v1)             # 00000670
    b       lbl_80A56C0C
    swc1    $f8, 0x0140(a0)            # 00000140
    lw      t9, 0x0670(v1)             # 00000670
lbl_80A56BF8:
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t0, t9, $at
    sw      t0, 0x0670(v1)             # 00000670
    swc1    $f10, 0x0140(a0)           # 00000140
lbl_80A56C0C:
    lw      $ra, 0x0014($sp)
lbl_80A56C10:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A56C1C:
    sw      a1, 0x0004($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80A56C3C)     # t6 = 80A50000
    addiu   t6, t6, %lo(func_80A56C3C) # t6 = 80A56C3C
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x006C(a0)            # 0000006C
    jr      $ra
    nop


func_80A56C3C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x4000                # $at = 40000000
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    mtc1    $at, $f2                   # $f2 = 2.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    sw      t6, 0x0028($sp)
    lwc1    $f4, 0x0164(s0)            # 00000164
    addiu   a0, s0, 0x0168             # a0 = 00000168
    lui     a1, 0x41A0                 # a1 = 41A00000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0164(s0)            # 00000164
    lwc1    $f0, 0x0164(s0)            # 00000164
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80A56CA0
    swc1    $f0, 0x0164(s0)            # 00000164
    b       lbl_80A56CA0
    swc1    $f2, 0x0164(s0)            # 00000164
    swc1    $f0, 0x0164(s0)            # 00000164
lbl_80A56CA0:
    jal     func_8006385C
    lw      a2, 0x0164(s0)             # 00000164
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f10, 0x016C(s0)           # 0000016C
    or      v1, v0, $zero              # v1 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f12, $f10
    nop
    bc1fl   lbl_80A56CDC
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    b       lbl_80A56CE4
    lwc1    $f16, 0x0168(s0)           # 00000168
    mtc1    $at, $f2                   # $f2 = 1.00
lbl_80A56CDC:
    nop
    lwc1    $f16, 0x0168(s0)           # 00000168
lbl_80A56CE4:
    lwc1    $f4, 0x015C(s0)            # 0000015C
    lwc1    $f18, 0x0008(s0)           # 00000008
    mul.s   $f0, $f2, $f16
    lwc1    $f16, 0x0160(s0)           # 00000160
    lwc1    $f10, 0x0010(s0)           # 00000010
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    mul.s   $f6, $f0, $f4
    nop
    mul.s   $f4, $f0, $f16
    add.s   $f8, $f18, $f6
    add.s   $f18, $f10, $f4
    swc1    $f8, 0x0024(s0)            # 00000024
    swc1    $f18, 0x002C(s0)           # 0000002C
    jal     func_80A569F0
    sw      v1, 0x0020($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    bne     v0, $zero, lbl_80A56D74
    lw      v1, 0x0020($sp)
    lw      v0, 0x0028($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f6, 0x0008(s0)            # 00000008
    swc1    $f8, 0x0010(s0)            # 00000010
    lw      t7, 0x0670(v0)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    and     t8, t7, $at
    sw      t8, 0x0670(v0)             # 00000670
    swc1    $f12, 0x0140(s0)           # 00000140
    swc1    $f12, 0x0168(s0)           # 00000168
    jal     func_80A56E28
    swc1    $f12, 0x0164(s0)           # 00000164
    b       lbl_80A56E0C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A56D74:
    beq     v1, $zero, lbl_80A56E08
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x1C44(s1)             # 00001C44
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A56AB0
    sw      t9, 0x0028($sp)
    beq     v0, $zero, lbl_80A56D9C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28C9          # a1 = 000028C9
lbl_80A56D9C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A564CC
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    beql    v0, $zero, lbl_80A56DC8
    lwc1    $f16, 0x0024(s0)           # 00000024
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    lwc1    $f16, 0x0024(s0)           # 00000024
lbl_80A56DC8:
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f16, 0x0008(s0)           # 00000008
    swc1    $f10, 0x0010(s0)           # 00000010
    lw      t0, 0x0028($sp)
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0670(t0)             # 00000670
    or      a1, s1, $zero              # a1 = 00000000
    and     t2, t1, $at
    sw      t2, 0x0670(t0)             # 00000670
    swc1    $f12, 0x0140(s0)           # 00000140
    swc1    $f12, 0x0168(s0)           # 00000168
    swc1    $f12, 0x0164(s0)           # 00000164
    jal     func_80A56B24
    sh      t3, 0x0158(s0)             # 00000158
lbl_80A56E08:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A56E0C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80A56E28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    swc1    $f0, 0x0064(a0)            # 00000064
    swc1    $f0, 0x0060(a0)            # 00000060
    swc1    $f0, 0x005C(a0)            # 0000005C
    swc1    $f4, 0x006C(a0)            # 0000006C
    jal     func_80A56870
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A56E78)     # t6 = 80A50000
    addiu   t6, t6, %lo(func_80A56E78) # t6 = 80A56E78
    swc1    $f0, 0x0080(a0)            # 00000080
    sw      t6, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A56E78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0140(a0)            # 00000140
    lui     $at, %hi(var_80A570C0)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A570C0)($at)
    abs.s   $f0, $f0
    lw      v0, 0x1C44(a1)             # 00001C44
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A56EC0
    sw      a0, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    swc1    $f6, 0x0140(a0)            # 00000140
    lw      t6, 0x0670(v0)             # 00000670
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    sw      a0, 0x0018($sp)
lbl_80A56EC0:
    jal     func_8002121C
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A570C4)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A570C4)($at)
    lwc1    $f2, 0x0028(a0)            # 00000028
    lw      a1, 0x001C($sp)
    c.le.s  $f2, $f8
    nop
    bc1fl   lbl_80A56F00
    lwc1    $f0, 0x0080(a0)            # 00000080
    jal     func_80020EB4
    nop
    b       lbl_80A56F38
    lw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0080(a0)            # 00000080
lbl_80A56F00:
    lui     $at, %hi(var_80A570C8)     # $at = 80A50000
    lwc1    $f16, %lo(var_80A570C8)($at)
    sub.s   $f10, $f0, $f2
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_80A56F38
    lw      $ra, 0x0014($sp)
    swc1    $f0, 0x0028(a0)            # 00000028
    jal     func_80A56B24
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x28C9          # a1 = 000028C9
    lw      $ra, 0x0014($sp)
lbl_80A56F38:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A56F44:
    sw      a1, 0x0004($sp)
    lui     t6, %hi(func_80A56F5C)     # t6 = 80A50000
    addiu   t6, t6, %lo(func_80A56F5C) # t6 = 80A56F5C
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A56F5C:
    lw      v0, 0x1C44(a1)             # 00001C44
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0670(v0)             # 00000670
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f4, 0x0140(a0)            # 00000140
    jr      $ra
    nop


func_80A56F80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0158(a2)             # 00000158
    blez    v0, lbl_80A56FA0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a2)             # 00000158
lbl_80A56FA0:
    lh      t7, 0x0148(a2)             # 00000148
    sh      t7, 0x0032(a2)             # 00000032
    lh      a0, 0x0032(a2)             # 00000032
    jal     func_800636C4              # sins?
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    swc1    $f0, 0x015C(a2)            # 0000015C
    jal     func_80063684              # coss?
    lh      a0, 0x0032(a2)             # 00000032
    lw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    swc1    $f0, 0x0160(a0)            # 00000160
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A56FEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0180             # a1 = 06000180
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_80A57020: .word 0x00000000
var_80A57024: .word 0x01070100, 0x00000000, 0x00F00000, 0x00000174
.word func_80A56624
.word func_80A566F4
.word func_80A56F80
.word func_80A56FEC
var_80A57044: .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
var_80A57054: .word \
0x44408000, 0x44BA4000, 0xC3958000, 0x44408000, \
0x44C1C000, 0xC3958000
var_80A5706C: .word \
0x41EFEB85, 0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, \
0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, 0x3C23D70A, \
0x41EFEB85, 0x41EFEB85, 0x3C23D70A, 0x41EFEB85, \
0x00000000, 0x3C23D70A, 0x00000000
var_80A570A8: .word 0x00000000, 0x00000000

.section .rodata

var_80A570B0: .word 0x3C23D70A
var_80A570B4: .word 0x44688000
var_80A570B8: .word 0xBA83126F
var_80A570BC: .word 0x3A83126F
var_80A570C0: .word 0x3A83126F
var_80A570C4: .word 0xC6F9EC00
var_80A570C8: .word 0xBA83126F, 0x00000000

