.section .text
func_8097F200:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0060         # $at = 00000060
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     t6, $at, lbl_8097F220
    lui     v0, 0x8012                 # v0 = 80120000
    sh      t7, 0x014A(a0)             # 0000014A
lbl_8097F220:
    lh      t8, 0x014A(a0)             # 0000014A
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bne     t8, $zero, lbl_8097F258
    nop
    lw      t9, 0x0004(v0)             # 8011A5D4
    bne     t9, $zero, lbl_8097F258
    nop
    lhu     t0, 0x0EDC(v0)             # 8011B4AC
    andi    t1, t0, 0x0200             # t1 = 00000000
    beq     t1, $zero, lbl_8097F258
    nop
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_8097F258:
    lui     t2, %hi(func_8097F274)     # t2 = 80980000
    addiu   t2, t2, %lo(func_8097F274) # t2 = 8097F274
    sw      t2, 0x013C(a0)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097F274:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x014A(s0)             # 0000014A
    lw      v0, 0x1C44(a2)             # 00001C44
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t6, $zero, lbl_8097F32C
    lui     $at, 0x442F                # $at = 442F0000
    lui     $at, %hi(var_80980330)     # $at = 80980000
    lwc1    $f4, %lo(var_80980330)($at)
    lwc1    $f6, 0x0028(v0)            # 00000028
    lui     $at, 0xC42F                # $at = C42F0000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_8097F39C
    nop
    lwc1    $f0, 0x0024(v0)            # 00000024
    mtc1    $at, $f8                   # $f8 = -700.00
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_8097F39C
    nop
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     $at, %hi(var_80980334)     # $at = 80980000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_8097F39C
    nop
    lwc1    $f0, 0x002C(v0)            # 0000002C
    lwc1    $f16, %lo(var_80980334)($at)
    lui     $at, 0xC561                # $at = C5610000
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_8097F39C
    nop
    mtc1    $at, $f18                  # $f18 = -3600.00
    nop
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_8097F39C
    nop
    b       lbl_8097F39C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8097F32C:
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = -3600.00
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_8097F39C
    nop
    sh      v1, 0x0028($sp)
    jal     func_8002049C
    sw      a2, 0x0034($sp)
    lh      v1, 0x0028($sp)
    beq     v0, $zero, lbl_8097F39C
    lw      a2, 0x0034($sp)
    lh      v0, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    beq     v0, $at, lbl_8097F38C
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_8097F38C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8097F38C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_8097F39C
    nop
lbl_8097F38C:
    lh      t7, 0x014C(s0)             # 0000014C
    bne     t7, $zero, lbl_8097F39C
    nop
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_8097F39C:
    beq     v1, $zero, lbl_8097F3BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     v1, v0, lbl_8097F3EC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $at, lbl_8097F474
    lh      t9, 0x0168(s0)             # 00000168
    b       lbl_8097F4BC
    lw      $ra, 0x0024($sp)
lbl_8097F3BC:
    lh      t0, 0x0168(s0)             # 00000168
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0168(s0)             # 00000168
    lh      t2, 0x0168(s0)             # 00000168
    sw      t9, 0x0174(s0)             # 00000174
    sw      t8, 0x0170(s0)             # 00000170
    bgtzl   t2, lbl_8097F4BC
    lw      $ra, 0x0024($sp)
    b       lbl_8097F4B8
    sh      $zero, 0x0168(s0)          # 00000168
lbl_8097F3EC:
    lh      t3, 0x0144(s0)             # 00000144
    beql    v0, t3, lbl_8097F414
    lh      t6, 0x07A0(a2)             # 000007A0
    lw      t4, 0x0170(s0)             # 00000170
    lw      t5, 0x0174(s0)             # 00000174
    bnel    t4, $zero, lbl_8097F474
    lh      t9, 0x0168(s0)             # 00000168
    bnel    t5, $zero, lbl_8097F474
    lh      t9, 0x0168(s0)             # 00000168
    lh      t6, 0x07A0(a2)             # 000007A0
lbl_8097F414:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t7, t6,  2
    addu    t8, a2, t7
    jal     func_8007D85C
    lw      a0, 0x0790(t8)             # 00000790
    sll     a0, v0, 16
    sh      v0, 0x002A($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    lh      a0, 0x002A($sp)
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a0, 0x002A($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x012C          # a1 = 0000012C
    addiu   t0, $zero, 0x0000          # t0 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0174(s0)             # 00000174
    sw      t0, 0x0170(s0)             # 00000170
    lh      t9, 0x0168(s0)             # 00000168
lbl_8097F474:
    lui     t7, %hi(func_8097F4CC)     # t7 = 80980000
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    addiu   t2, t9, 0x0001             # t2 = 00000001
    sh      t2, 0x0168(s0)             # 00000168
    lh      t3, 0x0168(s0)             # 00000168
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, t7, %lo(func_8097F4CC) # t7 = 8097F4CC
    slti    $at, t3, 0x003D
    bnel    $at, $zero, lbl_8097F4A4
    lh      t5, 0x0144(s0)             # 00000144
    sh      t4, 0x0168(s0)             # 00000168
    lh      t5, 0x0144(s0)             # 00000144
lbl_8097F4A4:
    bnel    t5, $zero, lbl_8097F4BC
    lw      $ra, 0x0024($sp)
    sh      t6, 0x0144(s0)             # 00000144
    sh      $zero, 0x0148(s0)          # 00000148
    sw      t7, 0x013C(s0)             # 0000013C
lbl_8097F4B8:
    lw      $ra, 0x0024($sp)
lbl_8097F4BC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8097F4CC:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t9, 0x1C44(a2)             # 00001C44
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    sw      t9, 0x0094($sp)
    lh      t0, 0x0168(s0)             # 00000168
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0168(s0)             # 00000168
    lh      t2, 0x0168(s0)             # 00000168
    slti    $at, t2, 0x003D
    bnel    $at, $zero, lbl_8097F510
    sh      $zero, 0x0060($sp)
    sh      t3, 0x0168(s0)             # 00000168
    sh      $zero, 0x0060($sp)
lbl_8097F510:
    lh      t4, 0x014A(s0)             # 0000014A
    lui     $at, 0x442F                # $at = 442F0000
    bnel    t4, $zero, lbl_8097F5F4
    sw      a2, 0x009C($sp)
    lh      t5, 0x0144(s0)             # 00000144
    lw      t8, 0x0094($sp)
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_8097F54C
    addiu   a1, $zero, 0x2049          # a1 = 00002049
    lui     t7, %hi(func_8097F274)     # t7 = 80980000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, t7, %lo(func_8097F274) # t7 = 8097F274
    sh      t6, 0x0144(s0)             # 00000144
    b       lbl_8097FA80
    sw      t7, 0x013C(s0)             # 0000013C
lbl_8097F54C:
    lui     $at, %hi(var_80980338)     # $at = 80980000
    lwc1    $f4, %lo(var_80980338)($at)
    lwc1    $f10, 0x0028(t8)           # 00000028
    lui     $at, 0xC42F                # $at = C42F0000
    c.lt.s  $f4, $f10
    nop
    bc1f    lbl_8097F5E0
    nop
    lwc1    $f0, 0x0024(t8)            # 00000024
    mtc1    $at, $f6                   # $f6 = -700.00
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_8097F5E0
    nop
    mtc1    $at, $f8                   # $f8 = 100.00
    lui     $at, %hi(var_8098033C)     # $at = 80980000
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_8097F5E0
    nop
    lwc1    $f0, 0x002C(t8)            # 0000002C
    lwc1    $f4, %lo(var_8098033C)($at)
    lui     $at, %hi(var_80980340)     # $at = 80980000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_8097F5E0
    nop
    lwc1    $f10, %lo(var_80980340)($at)
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    c.lt.s  $f10, $f0
    nop
    bc1f    lbl_8097F5E0
    nop
    sh      t9, 0x005E($sp)
    sh      t0, 0x0060($sp)
lbl_8097F5E0:
    jal     func_80022FD0
    sw      a2, 0x009C($sp)
    b       lbl_8097F66C
    lh      t5, 0x0060($sp)
    sw      a2, 0x009C($sp)
lbl_8097F5F4:
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 0.00
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_8097F66C
    lh      t5, 0x0060($sp)
    jal     func_8002049C
    sw      a2, 0x009C($sp)
    beq     v0, $zero, lbl_8097F668
    lw      t1, 0x009C($sp)
    lh      v0, 0x00A4(t1)             # 000000A4
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    beq     v0, $at, lbl_8097F64C
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_8097F64C
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8097F64C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_8097F66C
    lh      t5, 0x0060($sp)
lbl_8097F64C:
    lh      t2, 0x014C(s0)             # 0000014C
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    bnel    t2, $zero, lbl_8097F66C
    lh      t5, 0x0060($sp)
    sh      t3, 0x005E($sp)
    sh      t4, 0x0060($sp)
lbl_8097F668:
    lh      t5, 0x0060($sp)
lbl_8097F66C:
    lw      a2, 0x009C($sp)
    beql    t5, $zero, lbl_8097FA84
    lw      $ra, 0x003C($sp)
    lwc1    $f2, 0x00E0(a2)            # 000000E0
    lwc1    $f4, 0x00EC(a2)            # 000000EC
    lui     $at, 0x4396                # $at = 43960000
    sub.s   $f10, $f4, $f2
    swc1    $f10, 0x008C($sp)
    lwc1    $f6, 0x00F0(a2)            # 000000F0
    lwc1    $f14, 0x00E4(a2)           # 000000E4
    sub.s   $f8, $f6, $f14
    lwc1    $f6, 0x008C($sp)
    swc1    $f8, 0x0088($sp)
    lwc1    $f4, 0x00F4(a2)            # 000000F4
    lwc1    $f16, 0x00E8(a2)           # 000000E8
    mul.s   $f8, $f6, $f6
    swc1    $f6, 0x0040($sp)
    sub.s   $f10, $f4, $f16
    lwc1    $f4, 0x0088($sp)
    sw      a2, 0x009C($sp)
    swc1    $f10, 0x0084($sp)
    mul.s   $f10, $f4, $f4
    add.s   $f8, $f8, $f10
    lwc1    $f10, 0x0084($sp)
    mul.s   $f6, $f10, $f10
    add.s   $f0, $f8, $f6
    lwc1    $f8, 0x0040($sp)
    sqrt.s  $f0, $f0
    div.s   $f18, $f8, $f0
    mtc1    $at, $f8                   # $f8 = 300.00
    lui     $at, 0x4320                # $at = 43200000
    div.s   $f6, $f10, $f0
    swc1    $f18, 0x007C($sp)
    mul.s   $f10, $f18, $f8
    add.s   $f8, $f2, $f10
    swc1    $f6, 0x0048($sp)
    swc1    $f6, 0x0074($sp)
    div.s   $f10, $f4, $f0
    swc1    $f8, 0x008C($sp)
    mtc1    $at, $f8                   # $f8 = 160.00
    lui     $at, 0x43C8                # $at = 43C80000
    mul.s   $f4, $f10, $f8
    mtc1    $at, $f8                   # $f8 = 400.00
    lui     $at, 0x4396                # $at = 43960000
    add.s   $f10, $f14, $f4
    add.s   $f4, $f10, $f8
    mtc1    $at, $f10                  # $f10 = 300.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    mul.s   $f8, $f6, $f10
    swc1    $f4, 0x0088($sp)
    add.s   $f4, $f16, $f8
    jal     func_80026D90
    swc1    $f4, 0x0084($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lwc1    $f6, 0x007C($sp)
    lw      t6, 0x009C($sp)
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f8, $f6, $f10
    lwc1    $f4, 0x00E0(t6)            # 000000E0
    mtc1    $at, $f12                  # $f12 = 50.00
    add.s   $f6, $f4, $f8
    add.s   $f10, $f0, $f6
    jal     func_80026D90
    swc1    $f10, 0x0064($sp)
    lwc1    $f4, 0x0088($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    add.s   $f8, $f0, $f4
    jal     func_80026D90
    swc1    $f8, 0x0068($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lwc1    $f6, 0x0074($sp)
    lw      t7, 0x009C($sp)
    lui     $at, %hi(var_80980344)     # $at = 80980000
    mul.s   $f4, $f6, $f10
    lwc1    $f8, 0x00E8(t7)            # 000000E8
    lwc1    $f12, %lo(var_80980344)($at)
    add.s   $f6, $f8, $f4
    add.s   $f10, $f0, $f6
    jal     func_80026D90
    swc1    $f10, 0x006C($sp)
    lui     $at, %hi(var_80980348)     # $at = 80980000
    lwc1    $f8, %lo(var_80980348)($at)
    lh      t8, 0x0060($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t8, $at, lbl_8097F7EC
    add.s   $f2, $f0, $f8
    mfc1    a2, $f2
    jal     func_8097FE80
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    b       lbl_8097F814
    lh      t1, 0x0148(s0)             # 00000148
lbl_8097F7EC:
    lh      t9, 0x014E(s0)             # 0000014E
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t9, $zero, lbl_8097F814
    lh      t1, 0x0148(s0)             # 00000148
    mfc1    a2, $f2
    jal     func_8097FE80
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sh      t0, 0x014E(s0)             # 0000014E
    lh      t1, 0x0148(s0)             # 00000148
lbl_8097F814:
    lh      t2, 0x005E($sp)
    slt     $at, t1, t2
    beql    $at, $zero, lbl_8097FA84
    lw      $ra, 0x003C($sp)
    lh      t3, 0x0146(s0)             # 00000146
    lh      t4, 0x0060($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t3, $zero, lbl_8097FA84
    lw      $ra, 0x003C($sp)
    bne     t4, $at, lbl_8097F98C
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sh      t5, 0x0146(s0)             # 00000146
    lui     $at, %hi(var_8098034C)     # $at = 80980000
    sh      $zero, 0x0062($sp)
    jal     func_80026D64
    lwc1    $f12, %lo(var_8098034C)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t9, 0x0094($sp)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8097F8C8
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    lui     $at, 0x4120                # $at = 41200000
    beql    t6, $zero, lbl_8097F8C8
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    nop
    lw      t7, 0x0094($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f6, 0x0024(t7)            # 00000024
    add.s   $f10, $f0, $f6
    jal     func_80026D90
    swc1    $f10, 0x007C($sp)
    lw      t8, 0x0094($sp)
    lwc1    $f8, 0x002C(t8)            # 0000002C
    add.s   $f4, $f0, $f8
    b       lbl_8097FA28
    swc1    $f4, 0x0074($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8097F8C8:
    lwc1    $f10, 0x0828(t9)           # 00000828
    lui     $at, 0x4120                # $at = 41200000
    c.eq.s  $f6, $f10
    nop
    bc1tl   lbl_8097F94C
    mtc1    $at, $f12                  # $f12 = 10.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D90
    nop
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f8, 0x007C($sp)
    lw      t0, 0x009C($sp)
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f6, $f8, $f4
    lwc1    $f10, 0x00E0(t0)           # 000000E0
    mtc1    $at, $f12                  # $f12 = 50.00
    add.s   $f8, $f10, $f6
    add.s   $f4, $f0, $f8
    jal     func_80026D90
    swc1    $f4, 0x007C($sp)
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f6                   # $f6 = 600.00
    lwc1    $f10, 0x0074($sp)
    lw      t1, 0x009C($sp)
    mul.s   $f8, $f10, $f6
    lwc1    $f4, 0x00E8(t1)            # 000000E8
    add.s   $f10, $f4, $f8
    add.s   $f6, $f0, $f10
    b       lbl_8097F980
    swc1    $f6, 0x0074($sp)
    mtc1    $at, $f12                  # $f12 = 600.00
lbl_8097F94C:
    jal     func_80026D90
    nop
    lw      t2, 0x0094($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f4, 0x0024(t2)            # 00000024
    add.s   $f8, $f0, $f4
    jal     func_80026D90
    swc1    $f8, 0x007C($sp)
    lw      t3, 0x0094($sp)
    lwc1    $f10, 0x002C(t3)           # 0000002C
    add.s   $f6, $f0, $f10
    swc1    $f6, 0x0074($sp)
lbl_8097F980:
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    b       lbl_8097FA28
    sh      t4, 0x0062($sp)
lbl_8097F98C:
    lui     $at, 0x42C8                # $at = 42C80000
    sh      t5, 0x0146(s0)             # 00000146
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    sh      t6, 0x0062($sp)
    lwc1    $f4, 0x008C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    add.s   $f8, $f0, $f4
    jal     func_80026D90
    swc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x0084($sp)
    lui     $at, %hi(var_80980350)     # $at = 80980000
    lwc1    $f12, %lo(var_80980350)($at)
    add.s   $f6, $f0, $f10
    jal     func_80026D64
    swc1    $f6, 0x0074($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8097FA2C
    lw      a2, 0x009C($sp)
    mtc1    $at, $f12                  # $f12 = 70.00
    jal     func_80026D90
    nop
    lw      t7, 0x0094($sp)
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f12                  # $f12 = 70.00
    lwc1    $f8, 0x0024(t7)            # 00000024
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x007C($sp)
    lw      t8, 0x0094($sp)
    lwc1    $f6, 0x002C(t8)            # 0000002C
    add.s   $f4, $f0, $f6
    swc1    $f4, 0x0074($sp)
lbl_8097FA28:
    lw      a2, 0x009C($sp)
lbl_8097FA2C:
    lwc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x0088($sp)
    lwc1    $f6, 0x0074($sp)
    lh      t9, 0x0062($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x00B5          # a3 = 000000B5
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0010($sp)
    swc1    $f10, 0x0014($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800253F0
    sw      t9, 0x0028($sp)
    beql    v0, $zero, lbl_8097FA84
    lw      $ra, 0x003C($sp)
    sw      s0, 0x0180(v0)             # 00000180
    lh      t0, 0x0148(s0)             # 00000148
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0148(s0)             # 00000148
lbl_8097FA80:
    lw      $ra, 0x003C($sp)
lbl_8097FA84:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_8097FA94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0144(a0)             # 00000144
    beq     v0, $zero, lbl_8097FAAC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0144(a0)             # 00000144
lbl_8097FAAC:
    lh      v0, 0x0146(a0)             # 00000146
    beq     v0, $zero, lbl_8097FABC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0146(a0)             # 00000146
lbl_8097FABC:
    lh      v0, 0x014E(a0)             # 0000014E
    beq     v0, $zero, lbl_8097FACC
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x014E(a0)             # 0000014E
lbl_8097FACC:
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    jal     func_8097FF34
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lh      t0, 0x014A(a0)             # 0000014A
    bnel    t0, $zero, lbl_8097FE54
    lw      $ra, 0x0014($sp)
    lh      t1, 0x0168(a0)             # 00000168
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f14                  # $f14 = -1.50
    mtc1    t1, $f4                    # $f4 = 0.00
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f16                  # $f16 = -50.00
    cvt.s.w $f6, $f4
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a1, $at
    lui     $at, 0xC1A0                # $at = C1A00000
    div.s   $f0, $f6, $f8
    mul.s   $f2, $f0, $f16
    swc1    $f0, 0x016C(a0)            # 0000016C
    trunc.w.s $f10, $f2
    swc1    $f2, 0x0150(a0)            # 00000150
    mfc1    t3, $f10
    nop
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f14
    trunc.w.s $f8, $f6
    mtc1    $at, $f6                   # $f6 = -20.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f2                   # $f2 = 160.00
    mfc1    t7, $f8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sh      t7, 0x0AB0(v0)             # 00000AB0
    lwc1    $f10, 0x0150(a0)           # 00000150
    trunc.w.s $f18, $f10
    mfc1    v1, $f18
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    sh      v1, 0x0AB4(v0)             # 00000AB4
    sh      v1, 0x0AB2(v0)             # 00000AB2
    lwc1    $f4, 0x016C(a0)            # 0000016C
    mul.s   $f12, $f4, $f6
    trunc.w.s $f8, $f12
    swc1    $f12, 0x0158(a0)           # 00000158
    mfc1    t0, $f8
    nop
    sll     t1, t0, 16
    sra     t2, t1, 16
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    mul.s   $f4, $f18, $f14
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x0AB6(v0)             # 00000AB6
    lwc1    $f8, 0x0158(a0)            # 00000158
    trunc.w.s $f10, $f8
    mfc1    v1, $f10
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    sh      v1, 0x0ABA(v0)             # 00000ABA
    sh      v1, 0x0AB8(v0)             # 00000AB8
    lwc1    $f18, 0x016C(a0)           # 0000016C
    mul.s   $f0, $f18, $f16
    trunc.w.s $f4, $f0
    swc1    $f0, 0x0160(a0)            # 00000160
    mfc1    t7, $f4
    nop
    sh      t7, 0x0AC2($at)            # 00010AC2
    lbu     t8, 0x0AF3(v0)             # 00000AF3
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f6                    # $f6 = 0.00
    bgez    t8, lbl_8097FC40
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_8097FC40:
    sub.s   $f18, $f2, $f8
    lwc1    $f4, 0x016C(a0)            # 0000016C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f18, $f4
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_8097FCC0
    mfc1    t0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_8097FCB4
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8097FCCC
    or      t0, t0, $at                # t0 = 80000000
lbl_8097FCB4:
    b       lbl_8097FCCC
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f10
lbl_8097FCC0:
    nop
    bltz    t0, lbl_8097FCB4
    nop
lbl_8097FCCC:
    lbu     t2, 0x0AF4(v0)             # 00000AF4
    ctc1    t9, $f31
    andi    t1, t0, 0x00FF             # t1 = 000000FF
    mtc1    t2, $f8                    # $f8 = 0.00
    sh      t1, 0x0ABC(v0)             # 00000ABC
    bgez    t2, lbl_8097FCF8
    cvt.s.w $f18, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_8097FCF8:
    sub.s   $f6, $f2, $f18
    lwc1    $f10, 0x016C(a0)           # 0000016C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f6, $f10
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_8097FD78
    mfc1    t4, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f4, $f8, $f4
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8097FD6C
    nop
    mfc1    t4, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8097FD84
    or      t4, t4, $at                # t4 = 80000000
lbl_8097FD6C:
    b       lbl_8097FD84
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f4
lbl_8097FD78:
    nop
    bltz    t4, lbl_8097FD6C
    nop
lbl_8097FD84:
    lbu     t6, 0x0AF5(v0)             # 00000AF5
    ctc1    t3, $f31
    lui     $at, 0x4316                # $at = 43160000
    mtc1    t6, $f6                    # $f6 = 0.00
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    mtc1    $at, $f18                  # $f18 = 150.00
    sh      t5, 0x0ABE(v0)             # 00000ABE
    bgez    t6, lbl_8097FDB8
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_8097FDB8:
    sub.s   $f4, $f18, $f10
    lwc1    $f6, 0x016C(a0)            # 0000016C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8097FE38
    mfc1    t8, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f18, $f8, $f18
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8097FE2C
    nop
    mfc1    t8, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8097FE44
    or      t8, t8, $at                # t8 = 80000000
lbl_8097FE2C:
    b       lbl_8097FE44
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f18
lbl_8097FE38:
    nop
    bltz    t8, lbl_8097FE2C
    nop
lbl_8097FE44:
    ctc1    t7, $f31
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    sh      t9, 0x0AC0(v0)             # 00000AC0
    lw      $ra, 0x0014($sp)
lbl_8097FE54:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097FE60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80980108
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097FE80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    addiu   v1, a0, 0x0178             # v1 = 00000178
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8097FE94:
    lbu     t6, 0x0010(v1)             # 00000188
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_8097FF18
    sra     v0, v0, 16
    lw      t8, 0x0000(a1)             # 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t8, 0x0000(v1)             # 00000178
    lw      t7, 0x0004(a1)             # 00000004
    mtc1    $at, $f12                  # $f12 = 20.00
    sw      t7, 0x0004(v1)             # 0000017C
    lw      t8, 0x0008(a1)             # 00000008
    swc1    $f14, 0x000C(v1)           # 00000184
    swc1    $f0, 0x0020(v1)            # 00000198
    swc1    $f0, 0x0024(v1)            # 0000019C
    swc1    $f0, 0x0028(v1)            # 000001A0
    sw      t8, 0x0008(v1)             # 00000180
    jal     func_80026D90
    sw      v1, 0x001C($sp)
    lui     $at, 0xC1A0                # $at = C1A00000
    lw      v1, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = -20.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    swc1    $f0, 0x0014(v1)            # 00000014
    jal     func_80026D90
    swc1    $f4, 0x0018(v1)            # 00000018
    lw      v1, 0x001C($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f0, 0x001C(v1)            # 0000001C
    b       lbl_8097FF24
    sb      t9, 0x0010(v1)             # 00000010
lbl_8097FF18:
    slti    $at, v0, 0x0032
    bne     $at, $zero, lbl_8097FE94
    addiu   v1, v1, 0x002C             # v1 = 0000002C
lbl_8097FF24:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097FF34:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s3, 0x0054($sp)
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_80980354)     # $at = 80980000
    lwc1    $f30, %lo(var_80980354)($at)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f28                  # $f28 = 30.00
    lui     $at, %hi(var_80980358)     # $at = 80980000
    lwc1    $f26, %lo(var_80980358)($at)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f24                  # $f24 = 500.00
    addiu   s0, a0, 0x0178             # s0 = 00000178
    lw      s2, 0x1C44(s3)             # 00001C44
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, $zero, 0x0060          # s4 = 00000060
lbl_8097FF9C:
    lbu     t6, 0x0010(s0)             # 00000188
    beql    t6, $zero, lbl_809800BC
    addiu   s1, s1, 0x0001             # s1 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f24
    lwc1    $f4, 0x0020(s0)            # 00000198
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0020(s0)            # 00000198
    mul.s   $f16, $f0, $f24
    lwc1    $f10, 0x0024(s0)           # 0000019C
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0024(s0)           # 0000019C
    mul.s   $f18, $f0, $f24
    lwc1    $f16, 0x0000(s0)           # 00000178
    lwc1    $f14, 0x0014(s0)           # 0000018C
    lwc1    $f12, 0x0028(s0)           # 000001A0
    lwc1    $f10, 0x0004(s0)           # 0000017C
    add.s   $f14, $f16, $f14
    lwc1    $f16, 0x0018(s0)           # 00000190
    lwc1    $f8, 0x0008(s0)            # 00000180
    add.s   $f18, $f12, $f18
    mfc1    a1, $f14
    lwc1    $f14, 0x001C(s0)           # 00000194
    add.s   $f20, $f10, $f16
    mfc1    a2, $f26
    mfc1    a3, $f28
    add.s   $f22, $f8, $f14
    swc1    $f18, 0x0028(s0)           # 000001A0
    jal     func_80064280
    or      a0, s0, $zero              # a0 = 00000178
    mfc1    a1, $f20
    mfc1    a2, $f30
    addiu   a0, s0, 0x0004             # a0 = 0000017C
    jal     func_80064280
    lui     a3, 0x437A                 # a3 = 437A0000
    mfc1    a1, $f22
    mfc1    a2, $f26
    mfc1    a3, $f28
    jal     func_80064280
    addiu   a0, s0, 0x0008             # a0 = 00000180
    lui     a2, 0x3F66                 # a2 = 3F660000
    ori     a2, a2, 0x6666             # a2 = 3F666666
    addiu   a0, s0, 0x0018             # a0 = 00000190
    lui     a1, 0xC1A0                 # a1 = C1A00000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t7, 0x00A4(s3)             # 000000A4
    lui     $at, %hi(var_8098035C)     # $at = 80980000
    beql    s4, t7, lbl_809800A0
    lwc1    $f6, 0x0004(s0)            # 0000017C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lwc1    $f16, 0x0080(s2)           # 00000080
    lwc1    $f10, 0x0004(s0)           # 0000017C
    sub.s   $f4, $f16, $f18
    c.lt.s  $f10, $f4
    nop
    bc1fl   lbl_809800BC
    addiu   s1, s1, 0x0001             # s1 = 00000002
    b       lbl_809800B8
    sb      $zero, 0x0010(s0)          # 00000188
    lwc1    $f6, 0x0004(s0)            # 0000017C
lbl_809800A0:
    lwc1    $f8, %lo(var_8098035C)($at)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809800BC
    addiu   s1, s1, 0x0001             # s1 = 00000003
    sb      $zero, 0x0010(s0)          # 00000188
lbl_809800B8:
    addiu   s1, s1, 0x0001             # s1 = 00000004
lbl_809800BC:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0032
    bne     $at, $zero, lbl_8097FF9C
    addiu   s0, s0, 0x002C             # s0 = 000001A4
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80980108:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lw      s2, 0x0000(a2)             # 00000000
    addiu   s1, a3, 0x0178             # s1 = 00000178
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    addiu   a1, $zero, 0x0092          # a1 = 00000092
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x004C($sp)
    bltz    v0, lbl_809802D0
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      a1, 0x02D0(s2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    ori     t9, t9, 0x0018             # t9 = DB060018
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t7, 0x0000(a1)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    sll     t1, v0,  4
    addu    t1, t1, v0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s2)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x004C($sp)
    sll     t1, t1,  2
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t2, t0, t1
    addu    t3, t3, t2
    lw      t3, 0x17B4(t3)             # 000117B4
    or      s4, $zero, $zero           # s4 = 00000000
    lui     $at, %hi(var_80980360)     # $at = 80980000
    sw      t3, 0x0004(s0)             # 00000004
    lui     s7, 0xFF9B                 # s7 = FF9B0000
    ori     s7, s7, 0x37FF             # s7 = FF9B37FF
    lwc1    $f20, %lo(var_80980360)($at)
    lui     s8, 0xFB00                 # s8 = FB000000
    lui     s6, 0xFA00                 # s6 = FA000000
lbl_809801D4:
    lbu     t4, 0x0010(s1)             # 00000188
    lui     s5, 0x0600                 # s5 = 06000000
    addiu   s5, s5, 0x0DE0             # s5 = 06000DE0
    beq     t4, $zero, lbl_809802B8
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0000(s1)           # 00000178
    lwc1    $f14, 0x0004(s1)           # 0000017C
    jal     func_800AA7F4
    lw      a2, 0x0008(s1)             # 00000180
    lwc1    $f4, 0x0020(s1)            # 00000198
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f20
    jal     func_800AA9E0
    nop
    lwc1    $f6, 0x0024(s1)            # 0000019C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f20
    jal     func_800AAB94
    nop
    lwc1    $f8, 0x0028(s1)            # 000001A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f20
    jal     func_800AAD4C
    nop
    lwc1    $f12, 0x000C(s1)           # 00000184
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s2)             # 000002C0
    sw      s7, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t7, 0x9BFF                 # t7 = 9BFF0000
    ori     t7, t7, 0x37FF             # t7 = 9BFF37FF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      t7, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s2)             # 000002C0
    sw      t9, 0x0000(s3)             # 00000000
    lw      t0, 0x004C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
lbl_809802B8:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0032
    bne     $at, $zero, lbl_809801D4
    addiu   s1, s1, 0x002C             # s1 = 000001A4
lbl_809802D0:
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    nop
    nop
    nop

.section .data

var_80980310: .word 0x00B40500, 0x00000030, 0x00920000, 0x00000A10
.word func_8097F200
.word 0x00000000
.word func_8097FA94
.word func_8097FE60

.section .rodata

var_80980330: .word 0x44BB8000
var_80980334: .word 0xC4A14000
var_80980338: .word 0x44BB8000
var_8098033C: .word 0xC4A14000
var_80980340: .word 0xC5714000
var_80980344: .word 0x3BA3D70A
var_80980348: .word 0x3BE56042
var_8098034C: .word 0x3FFEB852
var_80980350: .word 0x407F5C29
var_80980354: .word 0x3F4CCCCD
var_80980358: .word 0x3E99999A
var_8098035C: .word 0x44BB8000
var_80980360: .word 0x3C8EFA35, 0x00000000, 0x00000000, 0x00000000

