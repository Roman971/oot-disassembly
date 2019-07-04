.section .text
func_809131D0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80913D34)      # a1 = 80910000
    addiu   a1, a1, %lo(var_80913D34)  # a1 = 80913D34
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t6, v0, 0x4000             # t6 = 00000000
    sw      t6, 0x0028($sp)
    beq     t6, $zero, lbl_8091321C
    andi    a2, v0, 0x003F             # a2 = 00000000
    beq     $zero, $zero, lbl_80913250
    sb      a2, 0x015B(s0)             # 0000015B
lbl_8091321C:
    sra     t8, v0,  8
    andi    t9, t8, 0x003F             # t9 = 00000000
    sb      t9, 0x015B(s0)             # 0000015B
    lb      a1, 0x015B(s0)             # 0000015B
    sw      a2, 0x002C($sp)
    jal     func_8002049C
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_8091324C
    lw      a2, 0x002C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_80913250
    sb      t0, 0x015B(s0)             # 0000015B
lbl_8091324C:
    sb      $zero, 0x015B(s0)          # 0000015B
lbl_80913250:
    lh      t1, 0x001C(s0)             # 0000001C
    or      a1, a2, $zero              # a1 = 00000000
    andi    t2, t1, 0x8000             # t2 = 00000000
    sra     t3, t2, 14
    sh      t3, 0x001C(s0)             # 0000001C
    jal     func_8002049C
    lw      a0, 0x003C($sp)
    beq     v0, $zero, lbl_8091329C
    addiu   a1, $zero, 0x005C          # a1 = 0000005C
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $zero, lbl_80913290
    nop
    beq     $zero, $zero, lbl_8091329C
    sh      t4, 0x001C(s0)             # 0000001C
lbl_80913290:
    bne     v0, $at, lbl_8091329C
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sh      t5, 0x001C(s0)             # 0000001C
lbl_8091329C:
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sb      t6, 0x015A(s0)             # 0000015A
    bne     v0, $zero, lbl_809132EC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    jal     func_80081628              # ObjectIndex
    sw      a0, 0x0024($sp)
    sb      v0, 0x0158(s0)             # 00000158
    lw      t7, 0x0028($sp)
    lw      a0, 0x0024($sp)
    bnel    t7, $zero, lbl_80913364
    lw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    beq     $zero, $zero, lbl_80913360
    sb      v0, 0x015A(s0)             # 0000015A
lbl_809132EC:
    bne     v0, $at, lbl_80913314
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x006F          # a1 = 0000006F
    beq     $zero, $zero, lbl_80913360
    sb      v0, 0x0158(s0)             # 00000158
lbl_80913314:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80913344
    lw      a0, 0x003C($sp)
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0070          # a1 = 00000070
    beq     $zero, $zero, lbl_80913360
    sb      v0, 0x0158(s0)             # 00000158
lbl_80913344:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0071          # a1 = 00000071
    sb      v0, 0x0158(s0)             # 00000158
lbl_80913360:
    lw      a0, 0x0024($sp)
lbl_80913364:
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    sb      v0, 0x0159(s0)             # 00000159
    lw      t8, 0x0028($sp)
    beql    t8, $zero, lbl_8091338C
    lb      t1, 0x0158(s0)             # 00000158
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   t0, t9, 0x0004             # t0 = 00000004
    sh      t0, 0x001C(s0)             # 0000001C
    lb      t1, 0x0158(s0)             # 00000158
lbl_8091338C:
    bltz    t1, lbl_809133A8
    nop
    lb      t2, 0x0159(s0)             # 00000159
    lui     t3, %hi(func_80913404)     # t3 = 80910000
    addiu   t3, t3, %lo(func_80913404) # t3 = 80913404
    bgezl   t2, lbl_809133BC
    sw      t3, 0x0154(s0)             # 00000154
lbl_809133A8:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809133C0
    lw      $ra, 0x001C($sp)
    sw      t3, 0x0154(s0)             # 00000154
lbl_809133BC:
    lw      $ra, 0x001C($sp)
lbl_809133C0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809133D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80913404:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0158(s0)             # 00000158
    addu    a0, a0, $at
    jal     func_80081688
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_809135E8
    lw      a0, 0x0028($sp)
    lb      a1, 0x0159(s0)             # 00000159
    jal     func_80081688
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_809135E8
    lw      a0, 0x0028($sp)
    lb      a1, 0x015A(s0)             # 0000015A
    bltzl   a1, lbl_80913470
    lh      v0, 0x001C(s0)             # 0000001C
    jal     func_80081688
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_809135E8
    lw      a0, 0x0028($sp)
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80913470:
    lb      t6, 0x0158(s0)             # 00000158
    or      a1, s0, $zero              # a1 = 00000000
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_80913518
    sb      t6, 0x001E(s0)             # 0000001E
    addiu   t7, v0, 0xFFFC             # t7 = FFFFFFFC
    sh      t7, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_809134AC
    nop
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x006F          # a1 = 0000006F
    beq     $zero, $zero, lbl_809134EC
    sb      v0, 0x0158(s0)             # 00000158
lbl_809134AC:
    bnel    v0, $at, lbl_809134C8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x005C          # a1 = 0000005C
    beq     $zero, $zero, lbl_809134EC
    sb      v0, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809134C8:
    bne     v0, $at, lbl_809134E0
    nop
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0071          # a1 = 00000071
    beq     $zero, $zero, lbl_809134EC
    sb      v0, 0x0158(s0)             # 00000158
lbl_809134E0:
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0070          # a1 = 00000070
    sb      v0, 0x0158(s0)             # 00000158
lbl_809134EC:
    lb      t8, 0x0158(s0)             # 00000158
    lui     t9, %hi(func_80913768)     # t9 = 80910000
    addiu   t9, t9, %lo(func_80913768) # t9 = 80913768
    bgez    t8, lbl_80913510
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809135EC
    lw      $ra, 0x001C($sp)
lbl_80913510:
    beq     $zero, $zero, lbl_809135E8
    sw      t9, 0x0154(s0)             # 00000154
lbl_80913518:
    jal     func_80020FA4
    lw      a0, 0x0034($sp)
    sw      $zero, 0x002C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t0, %hi(func_80913944)     # t0 = 80910000
    addiu   t0, t0, %lo(func_80913944) # t0 = 80913944
    bne     v0, $zero, lbl_8091355C
    sw      t0, 0x0134(s0)             # 00000134
    lui     t1, %hi(func_8091369C)     # t1 = 80910000
    addiu   t1, t1, %lo(func_8091369C) # t1 = 8091369C
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t1, 0x0154(s0)             # 00000154
    addiu   a0, a0, 0x54B8             # a0 = 060054B8
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    beq     $zero, $zero, lbl_809135D4
    lw      a0, 0x0034($sp)
lbl_8091355C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80913588
    lui     t2, %hi(func_8091360C)     # t2 = 80910000
    addiu   t2, t2, %lo(func_8091360C) # t2 = 8091360C
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t2, 0x0154(s0)             # 00000154
    addiu   a0, a0, 0x3490             # a0 = 06003490
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    beq     $zero, $zero, lbl_809135D4
    lw      a0, 0x0034($sp)
lbl_80913588:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809135B8
    lui     t4, %hi(func_8091369C)     # t4 = 80910000
    lui     t3, %hi(func_809135FC)     # t3 = 80910000
    addiu   t3, t3, %lo(func_809135FC) # t3 = 809135FC
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t3, 0x0154(s0)             # 00000154
    addiu   a0, a0, 0x43D0             # a0 = 060043D0
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    beq     $zero, $zero, lbl_809135D4
    lw      a0, 0x0034($sp)
lbl_809135B8:
    addiu   t4, t4, %lo(func_8091369C) # t4 = 0000369C
    lui     a0, 0x0600                 # a0 = 06000000
    sw      t4, 0x0154(s0)             # 00000154
    addiu   a0, a0, 0x6078             # a0 = 06006078
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    lw      a0, 0x0034($sp)
lbl_809135D4:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
lbl_809135E8:
    lw      $ra, 0x001C($sp)
lbl_809135EC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809135FC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8091360C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lui     $at, 0x4313                # $at = 43130000
    mtc1    $at, $f6                   # $f6 = 147.00
    lui     $at, 0xC375                # $at = C3750000
    mtc1    $at, $f16                  # $f16 = -245.00
    lwc1    $f10, 0x0028(t6)           # 00000028
    lwc1    $f4, 0x0024(t6)            # 00000024
    lui     $at, %hi(var_80913D50)     # $at = 80910000
    add.s   $f18, $f10, $f16
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    addiu   t8, $zero, 0x27EE          # t8 = 000027EE
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0010($sp)
    lwc1    $f6, %lo(var_80913D50)($at)
    lwc1    $f4, 0x002C(t6)            # 0000002C
    mfc1    a3, $f8
    sw      t8, 0x0024($sp)
    add.s   $f8, $f4, $f6
    sw      $zero, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    swc1    $f8, 0x0014($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    jal     func_80025110              # ActorSpawn
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      t0, 0x0030($sp)
    lui     t9, %hi(func_809135FC)     # t9 = 80910000
    addiu   t9, t9, %lo(func_809135FC) # t9 = 809135FC
    sw      t9, 0x0154(t0)             # 00000154
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8091369C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f2                 # $f2 = 0.00
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    lwc1    $f6, 0x002C(a2)            # 0000002C
    lui     $at, %hi(var_80913D54)     # $at = 80910000
    lwc1    $f4, 0x002C(v0)            # 0000002C
    lwc1    $f10, %lo(var_80913D54)($at)
    lui     $at, 0x447A                # $at = 447A0000
    sub.s   $f8, $f4, $f6
    sub.s   $f0, $f10, $f8
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809136EC
    mtc1    $at, $f12                  # $f12 = 1000.00
    beq     $zero, $zero, lbl_80913710
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = 1000.00
lbl_809136EC:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8091370C
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_8091370C
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_8091370C:
    mov.s   $f0, $f2
lbl_80913710:
    lui     $at, %hi(var_80913D58)     # $at = 80910000
    lwc1    $f16, %lo(var_80913D58)($at)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x00B8(a2)             # 000000B8
    lw      a0, 0x0790(a3)             # 00000790
    jal     func_800495BC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      t8, 0x001C(a2)             # 0000001C
    beql    t8, $zero, lbl_8091375C
    lw      $ra, 0x0014($sp)
    lh      t9, 0x00B8(a2)             # 000000B8
    subu    t0, $zero, t9
    sh      t0, 0x00B8(a2)             # 000000B8
    lw      $ra, 0x0014($sp)
lbl_8091375C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80913768:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    lb      a1, 0x015B(s0)             # 0000015B
    beq     v0, $zero, lbl_809137AC
    or      a0, s1, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $zero, lbl_809137D0
    nop
    beq     v0, $at, lbl_809137D0
    nop
lbl_809137AC:
    jal     func_8002049C
    lb      a1, 0x015B(s0)             # 0000015B
    bnel    v0, $zero, lbl_80913854
    lw      $ra, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_809137D0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80913850
lbl_809137D0:
    lui     t6, %hi(func_80913944)     # t6 = 80910000
    lui     t7, %hi(func_80913864)     # t7 = 80910000
    addiu   t6, t6, %lo(func_80913944) # t6 = 80913944
    addiu   t7, t7, %lo(func_80913864) # t7 = 80913864
    sw      t6, 0x0134(s0)             # 00000134
    sw      t7, 0x0154(s0)             # 00000154
    lw      t8, 0x0790(s1)             # 00000790
    lh      a1, 0x014E(t8)             # 0000014E
    beq     a1, $zero, lbl_80913818
    sll     t9, a1,  2
    addu    t0, s1, t9
    lw      t1, 0x0790(t0)             # 00000790
    addiu   $at, $zero, 0x0026         # $at = 00000026
    lh      t2, 0x0142(t1)             # 00000142
    bnel    t2, $at, lbl_8091381C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006B9B4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80913818:
    or      a0, s1, $zero              # a0 = 00000000
lbl_8091381C:
    addiu   a1, $zero, 0x0CBC          # a1 = 00000CBC
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0CBD          # a1 = 00000CBD
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     $at, %hi(var_80913D10)     # $at = 80910000
    sh      v0, %lo(var_80913D10)($at)
lbl_80913850:
    lw      $ra, 0x0024($sp)
lbl_80913854:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80913864:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     a2, %hi(var_80913D10)      # a2 = 80910000
    addiu   a2, a2, %lo(var_80913D10)  # a2 = 80913D10
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0000(a2)             # 80913D10
    lh      t6, 0x07A0(a1)             # 000007A0
    bne     v0, t6, lbl_809138CC
    nop
    beq     v0, $zero, lbl_809138B4
    lui     t0, %hi(func_80913768)     # t0 = 80910000
    lh      t8, 0x001C(a0)             # 0000001C
    lb      v1, 0x001E(a0)             # 0000001E
    lb      t7, 0x0158(a0)             # 00000158
    xori    t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x001C(a0)             # 0000001C
    sb      v1, 0x0158(a0)             # 00000158
    sb      t7, 0x001E(a0)             # 0000001E
    sh      $zero, 0x0000(a2)          # 80913D10
    beq     $zero, $zero, lbl_809138CC
    lh      v0, 0x0000(a2)             # 80913D10
lbl_809138B4:
    addiu   t0, t0, %lo(func_80913768) # t0 = 80913768
    sw      $zero, 0x0134(a0)          # 00000134
    sw      t0, 0x0154(a0)             # 00000154
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    sh      t1, 0x0000(a2)             # 80913D10
    lh      v0, 0x0000(a2)             # 80913D10
lbl_809138CC:
    blezl   v0, lbl_80913914
    lw      $ra, 0x0014($sp)
    lh      t2, 0x07A0(a1)             # 000007A0
    lwc1    $f6, 0x002C(a0)            # 0000002C
    lui     $at, %hi(var_80913D5C)     # $at = 80910000
    sll     t3, t2,  2
    addu    t4, a1, t3
    lw      t5, 0x0790(t4)             # 00000790
    lwc1    $f10, %lo(var_80913D5C)($at)
    lwc1    $f4, 0x0064(t5)            # 00000064
    sub.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80913914
    lw      $ra, 0x0014($sp)
    jal     func_80023108
    addiu   a1, $zero, 0x20AD          # a1 = 000020AD
    lw      $ra, 0x0014($sp)
lbl_80913914:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80913920:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80913944:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lb      t8, 0x0159(s1)             # 00000159
    lui     t1, 0x0001                 # t1 = 00010000
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, s2, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a1, 0x0058($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     t8, %hi(var_80913D38)      # t8 = 80910000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lh      t6, 0x001C(s1)             # 0000001C
    sll     t7, t6,  2
    addu    t8, t8, t7
    lw      t8, %lo(var_80913D38)(t8)
    sw      t8, 0x0004(v1)             # 00000004
    lb      t9, 0x015A(s1)             # 0000015A
    blezl   t9, lbl_80913A18
    lw      t1, 0x0154(s1)             # 00000154
    jal     func_800AA740
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFB8
    lw      t1, 0x0154(s1)             # 00000154
lbl_80913A18:
    lui     t0, %hi(func_8091369C)     # t0 = 80910000
    addiu   t0, t0, %lo(func_8091369C) # t0 = 8091369C
    bnel    t0, t1, lbl_80913B08
    lb      t9, 0x015A(s1)             # 0000015A
    lh      t2, 0x00B8(s1)             # 000000B8
    beql    t2, $zero, lbl_80913B08
    lb      t9, 0x015A(s1)             # 0000015A
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lh      t3, 0x001C(s1)             # 0000001C
    lui     a2, 0xC4E3                 # a2 = C4E30000
    ori     a2, a2, 0xA000             # a2 = C4E3A000
    bne     t3, $zero, lbl_80913A78
    lui     $at, %hi(var_80913D68)     # $at = 80910000
    lui     $at, %hi(var_80913D60)     # $at = 80910000
    lwc1    $f12, %lo(var_80913D60)($at)
    lui     $at, %hi(var_80913D64)     # $at = 80910000
    lui     a2, 0xC4E3                 # a2 = C4E30000
    ori     a2, a2, 0xA000             # a2 = C4E3A000
    lwc1    $f14, %lo(var_80913D64)($at)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80913A90
    or      a0, $zero, $zero           # a0 = 00000000
lbl_80913A78:
    lwc1    $f12, %lo(var_80913D68)($at)
    lui     $at, %hi(var_80913D6C)     # $at = 80910000
    lwc1    $f14, %lo(var_80913D6C)($at)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
lbl_80913A90:
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    lh      a2, 0x00B8(s1)             # 000000B8
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f14                  # $f14 = -50.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      a1, 0x0050($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0405                 # t8 = 04050000
    addiu   t8, t8, 0xF510             # t8 = 0404F510
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lb      t9, 0x015A(s1)             # 0000015A
lbl_80913B08:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    blez    t9, lbl_80913CF4
    addu    a0, s2, $at
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    jal     func_80081628              # ObjectIndex
    sw      a0, 0x002C($sp)
    sll     t0, v0, 24
    sra     t1, t0, 24
    lw      a0, 0x002C($sp)
    blez    t1, lbl_80913CF4
    sb      v0, 0x015A(s1)             # 0000015A
    jal     func_80081688
    lb      a1, 0x015A(s1)             # 0000015A
    beq     v0, $zero, lbl_80913CF4
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0018             # t3 = DB060018
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lb      t4, 0x015A(s1)             # 0000015A
    lui     t7, 0x0001                 # t7 = 00010000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t5, t4,  4
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    t6, s2, t5
    addu    t7, t7, t6
    lw      t7, 0x17B4(t7)             # 000117B4
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0x8520             # t0 = 800E8520
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    jal     func_800AA764
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFB8
    lui     $at, 0x4313                # $at = 43130000
    mtc1    $at, $f12                  # $f12 = 147.00
    lui     $at, 0xC375                # $at = C3750000
    mtc1    $at, $f14                  # $f14 = -245.00
    lui     a2, 0xC3E2                 # a2 = C3E20000
    ori     a2, a2, 0x8000             # a2 = C3E28000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80913D70)     # $at = 80910000
    lwc1    $f12, %lo(var_80913D70)($at)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80913D74)     # $at = 80910000
    lwc1    $f12, %lo(var_80913D74)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x0AE8             # t5 = 06000AE8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA764
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFB8
    lui     $at, 0x4327                # $at = 43270000
    mtc1    $at, $f12                  # $f12 = 167.00
    lui     $at, 0xC35A                # $at = C35A0000
    mtc1    $at, $f14                  # $f14 = -218.00
    lui     a2, 0xC3E2                 # a2 = C3E20000
    ori     a2, a2, 0x8000             # a2 = C3E28000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8002060C
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    beq     v0, $zero, lbl_80913C8C
    lui     $at, %hi(var_80913D7C)     # $at = 80910000
    lui     $at, %hi(var_80913D78)     # $at = 80910000
    lwc1    $f12, %lo(var_80913D78)($at)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80913C98
    nop
lbl_80913C8C:
    lwc1    $f12, %lo(var_80913D7C)($at)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80913C98:
    lui     $at, %hi(var_80913D80)     # $at = 80910000
    lwc1    $f12, %lo(var_80913D80)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x1678             # t0 = 06001678
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t0, 0x0004(v1)             # 00000004
lbl_80913CF4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000
    nop

.section .data

var_80913D10: .word 0xFFFF0000
var_80913D14: .word 0x00680100, 0x00000030, 0x00010000, 0x0000015C
.word func_809131D0
.word func_809133D0
.word func_80913920
.word 0x00000000
var_80913D34: .word 0x485003E8
var_80913D38: .word \
0x060024E0, 0x06001980, 0x060020F0, 0x06002B70, \
0x00000000, 0x00000000

.section .rodata

var_80913D50: .word 0xC3E28000
var_80913D54: .word 0x44898000
var_80913D58: .word 0x4183126F
var_80913D5C: .word 0x44898000
var_80913D60: .word 0xC4DC2000
var_80913D64: .word 0x449FC000
var_80913D68: .word 0x44F9E000
var_80913D6C: .word 0x449FC000
var_80913D70: .word 0x3FC90FDB
var_80913D74: .word 0x3C23D70A
var_80913D78: .word 0x3FA68121
var_80913D7C: .word 0x40490FDB
var_80913D80: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

