.section .text
func_80904520:
    sw      a1, 0x01B0(a0)             # 000001B0
    jr      $ra
    nop


func_8090452C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(var_80908240)      # a1 = 80910000
    sh      $zero, 0x01A8(s0)          # 000001A8
    addiu   a1, a1, %lo(var_80908240)  # a1 = 80908240
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C
    swc1    $f4, 0x01A4(s0)            # 000001A4
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8090467C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    beq     v0, $at, lbl_8090467C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8090467C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8090467C
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x002C(s0)           # 0000002C
    trunc.w.s $f8, $f6
    sw      a0, 0x0030($sp)
    sw      $zero, 0x001C($sp)
    trunc.w.s $f16, $f10
    mfc1    a1, $f8
    sw      $zero, 0x0018($sp)
    trunc.w.s $f4, $f18
    mfc1    a2, $f16
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f4
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $zero, 0x0014($sp)
    jal     func_80065BCC
    sw      $zero, 0x0010($sp)
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    sw      a1, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0
    lw      a2, 0x0030($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x002C(s0)           # 0000002C
    trunc.w.s $f8, $f6
    sw      v0, 0x01B4(s0)             # 000001B4
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    trunc.w.s $f16, $f10
    mfc1    a1, $f8
    sw      a0, 0x0030($sp)
    trunc.w.s $f4, $f18
    mfc1    a2, $f16
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f4
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80065BCC
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_800665B0
    lw      a2, 0x0030($sp)
    sw      v0, 0x01C8(s0)             # 000001C8
lbl_8090467C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809052AC
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8090469C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0028($sp)
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    or      a0, a3, $zero              # a0 = 00000000
    lw      a2, 0x01B4(t6)             # 000001B4
    sw      a3, 0x002C($sp)
    jal     func_80066610
    sw      a1, 0x0018($sp)
    lw      t7, 0x0028($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x002C($sp)
    jal     func_80066610
    lw      a2, 0x01C8(t7)             # 000001C8
    lw      a3, 0x002C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a1, 0x0001                 # a1 = 00010000
lbl_809046E8:
    sll     t8, a0,  1
    addu    t9, a3, t8
    addu    v0, t9, a1
    sh      $zero, 0x0AB6(v0)          # 00000AB6
    lh      v1, 0x0AB6(v0)             # 00000AB6
    addiu   a0, a0, 0x0001             # a0 = 00000001
    andi    a0, a0, 0x00FF             # a0 = 00000001
    slti    $at, a0, 0x0003
    sh      v1, 0x0ABC(v0)             # 00000ABC
    bne     $at, $zero, lbl_809046E8
    sh      v1, 0x0AB0(v0)             # 00000AB0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80904724:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0028($sp)
    mtc1    $at, $f12                  # $f12 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    lw      t6, 0x003C($sp)
    addiu   t8, $zero, 0xFF74          # t8 = FFFFFF74
    addiu   t9, $zero, 0xFFB0          # t9 = FFFFFFB0
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     $at, %hi(var_809087C0)     # $at = 80910000
    sw      t7, 0x0034($sp)
    sh      $zero, 0x019C(s0)          # 0000019C
    sh      t8, 0x019E(s0)             # 0000019E
    sh      t9, 0x01A0(s0)             # 000001A0
    sh      v0, %lo(var_809087C0)($at)
    lh      t0, 0x001C(s0)             # 0000001C
    swc1    $f12, 0x01AC(s0)           # 000001AC
    swc1    $f0, 0x0190(s0)            # 00000190
    addiu   t1, t0, 0xFFFC             # t1 = FFFFFFFC
    sltiu   $at, t1, 0x0007
    swc1    $f0, 0x0194(s0)            # 00000194
    beq     $at, $zero, lbl_809047F8
    swc1    $f0, 0x0198(s0)            # 00000198
    sll     t1, t1,  2
    lui     $at, %hi(var_80908250)     # $at = 80910000
    addu    $at, $at, t1
    lw      t1, %lo(var_80908250)($at)
    jr      t1
    nop
var_809047A8:
    lui     $at, %hi(var_8090826C)     # $at = 80910000
    lwc1    $f4, %lo(var_8090826C)($at)
    lui     $at, %hi(var_80908270)     # $at = 80910000
    swc1    $f4, 0x0184(s0)            # 00000184
    lwc1    $f6, %lo(var_80908270)($at)
    beq     $zero, $zero, lbl_80904808
    swc1    $f6, 0x0188(s0)            # 00000188
var_809047C4:
    swc1    $f0, 0x0184(s0)            # 00000184
    beq     $zero, $zero, lbl_80904808
    swc1    $f0, 0x0188(s0)            # 00000188
var_809047D0:
    lui     $at, %hi(var_80908274)     # $at = 80910000
    lwc1    $f2, %lo(var_80908274)($at)
    addiu   t2, $zero, 0x0078          # t2 = 00000078
    addiu   t3, $zero, 0x00E6          # t3 = 000000E6
    sh      v0, 0x019C(s0)             # 0000019C
    sh      t2, 0x019E(s0)             # 0000019E
    sh      t3, 0x01A0(s0)             # 000001A0
    swc1    $f2, 0x0184(s0)            # 00000184
    beq     $zero, $zero, lbl_80904808
    swc1    $f2, 0x0188(s0)            # 00000188
lbl_809047F8:
    lui     $at, %hi(var_80908278)     # $at = 80910000
    lwc1    $f2, %lo(var_80908278)($at)
    swc1    $f2, 0x0184(s0)            # 00000184
    swc1    $f2, 0x0188(s0)            # 00000188
lbl_80904808:
    lh      v1, 0x001C(s0)             # 0000001C
    swc1    $f0, 0x018C(s0)            # 0000018C
    swc1    $f12, 0x00BC(s0)           # 000000BC
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sltiu   $at, t4, 0x000A
    beq     $at, $zero, lbl_8090483C
    sh      $zero, 0x0182(s0)          # 00000182
    sll     t4, t4,  2
    lui     $at, %hi(var_8090827C)     # $at = 80910000
    addu    $at, $at, t4
    lw      t4, %lo(var_8090827C)($at)
    jr      t4
    nop
lbl_8090483C:
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    trunc.w.s $f10, $f8
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a1, $f10
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    trunc.w.s $f6, $f4
    mfc1    a2, $f18
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    sll     a1, a1, 16
    mfc1    a3, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    trunc.w.s $f10, $f8
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a1, $f10
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    trunc.w.s $f6, $f4
    mfc1    a2, $f18
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sll     a1, a1, 16
    mfc1    a3, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lh      v1, 0x001C(s0)             # 0000001C
var_80904908:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80904930
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_80904944
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_809049F8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80904A0C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80904930:
    lui     a1, %hi(func_80905324)     # a1 = 80900000
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905324) # a1 = 80905324
    beq     $zero, $zero, lbl_80904A1C
    lw      $ra, 0x002C($sp)
lbl_80904944:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      v0, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x0608         # $at = 00000608
    lw      t0, 0x003C($sp)
    beq     v0, $at, lbl_80904990
    addiu   $at, $zero, 0x0564         # $at = 00000564
    beq     v0, $at, lbl_80904990
    addiu   $at, $zero, 0x060C         # $at = 0000060C
    beq     v0, $at, lbl_80904990
    addiu   $at, $zero, 0x0610         # $at = 00000610
    beq     v0, $at, lbl_80904990
    addiu   $at, $zero, 0x0580         # $at = 00000580
    beql    v0, $at, lbl_80904994
    lw      t1, 0x1C44(t0)             # 00001C44
    lw      t9, 0x1360(v1)             # 8011B930
    slti    $at, t9, 0x0004
    bne     $at, $zero, lbl_809049A8
    nop
lbl_80904990:
    lw      t1, 0x1C44(t0)             # 00001C44
lbl_80904994:
    addiu   $at, $zero, 0x0200         # $at = 00000200
    lh      t2, 0x001C(t1)             # 0000001C
    andi    t3, t2, 0x0F00             # t3 = 00000000
    beql    t3, $at, lbl_809049B4
    lw      a0, 0x0034($sp)
lbl_809049A8:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
lbl_809049B4:
    jal     func_800214FC
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    nop
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_809049E0
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_809049E0:
    lui     a1, %hi(func_80906C94)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80906C94) # a1 = 80906C94
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80904A1C
    lw      $ra, 0x002C($sp)
lbl_809049F8:
    lui     a1, %hi(func_80906DD4)     # a1 = 80900000
    jal     func_80904520
    addiu   a1, a1, %lo(func_80906DD4) # a1 = 80906DD4
    beq     $zero, $zero, lbl_80904A1C
    lw      $ra, 0x002C($sp)
lbl_80904A0C:
    lui     a1, %hi(func_809054CC)     # a1 = 80900000
    jal     func_80904520
    addiu   a1, a1, %lo(func_809054CC) # a1 = 809054CC
    lw      $ra, 0x002C($sp)
lbl_80904A1C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80904A2C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x1374             # a3 = 06001374
    addiu   a2, a2, 0x2CA8             # a2 = 06002CA8
    sw      a1, 0x0034($sp)
    lw      a0, 0x003C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mfc1    a2, $f2
    mfc1    a3, $f2
    sw      t7, 0x001C($sp)
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x1374             # a1 = 06001374
    lw      a0, 0x0034($sp)
    swc1    $f2, 0x0010($sp)
    jal     func_8008CFC0
    swc1    $f4, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_809082A4)     # $at = 80910000
    lwc1    $f12, %lo(var_809082A4)($at)
    addiu   t8, $zero, 0xFF74          # t8 = FFFFFF74
    addiu   t9, $zero, 0xFFB0          # t9 = FFFFFFB0
    sh      $zero, 0x019C(s0)          # 0000019C
    sh      t8, 0x019E(s0)             # 0000019E
    sh      t9, 0x01A0(s0)             # 000001A0
    lui     $at, %hi(var_809087C0)     # $at = 80910000
    addiu   t0, $zero, 0x00A0          # t0 = 000000A0
    sh      t0, %lo(var_809087C0)($at)
    lui     $at, 0xC3C8                # $at = C3C80000
    mtc1    $at, $f6                   # $f6 = -400.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    $zero, $f0                 # $f0 = 0.00
    swc1    $f6, 0x00BC(s0)            # 000000BC
    trunc.w.s $f6, $f4
    sh      $zero, 0x0182(s0)          # 00000182
    swc1    $f2, 0x01AC(s0)            # 000001AC
    trunc.w.s $f18, $f16
    mfc1    a3, $f6
    swc1    $f12, 0x0184(s0)           # 00000184
    trunc.w.s $f10, $f8
    mfc1    a2, $f18
    swc1    $f12, 0x0188(s0)           # 00000188
    swc1    $f0, 0x0190(s0)            # 00000190
    mfc1    a1, $f10
    swc1    $f0, 0x0194(s0)            # 00000194
    swc1    $f0, 0x0198(s0)            # 00000198
    swc1    $f0, 0x018C(s0)            # 0000018C
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sll     a3, a3, 16
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    trunc.w.s $f10, $f8
    addiu   t1, $zero, 0x00C8          # t1 = 000000C8
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a1, $f10
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f6, $f4
    mfc1    a2, $f18
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sll     a1, a1, 16
    mfc1    a3, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, %hi(func_80906160)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80906160) # a1 = 80906160
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80904BF8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x1374             # a3 = 06001374
    addiu   a2, a2, 0x2CA8             # a2 = 06002CA8
    sw      a1, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1374             # a0 = 06001374
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1374             # a0 = 06001374
    jal     func_8008A194
    sh      v0, 0x003A($sp)
    lh      t6, 0x003A($sp)
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x001C($sp)
    cvt.s.w $f4, $f4
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x1374             # a1 = 06001374
    swc1    $f8, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    mfc1    a3, $f4
    jal     func_8008CFC0
    swc1    $f0, 0x0018($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1374             # a0 = 06001374
    lui     $at, %hi(var_809082A8)     # $at = 80910000
    lwc1    $f2, %lo(var_809082A8)($at)
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    addiu   t1, $zero, 0x00E6          # t1 = 000000E6
    swc1    $f16, 0x0154(s0)           # 00000154
    sh      t9, 0x019C(s0)             # 0000019C
    sh      t0, 0x019E(s0)             # 0000019E
    sh      t1, 0x01A0(s0)             # 000001A0
    sh      $zero, 0x0182(s0)          # 00000182
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0xFF01          # a2 = FFFFFF01
    lui     a1, 0x0001                 # a1 = 00010000
    swc1    $f2, 0x0184(s0)            # 00000184
    swc1    $f2, 0x0188(s0)            # 00000188
    swc1    $f0, 0x0190(s0)            # 00000190
    swc1    $f0, 0x0194(s0)            # 00000194
    swc1    $f0, 0x0198(s0)            # 00000198
    swc1    $f0, 0x018C(s0)            # 0000018C
    swc1    $f18, 0x01AC(s0)           # 000001AC
    swc1    $f4, 0x00BC(s0)            # 000000BC
lbl_80904D1C:
    sll     t2, a0,  1
    addu    t3, s1, t2
    addu    v0, t3, a1
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sh      a2, 0x0AB6(v0)             # 00000AB6
    lh      v1, 0x0AB6(v0)             # 00000AB6
    sll     a0, a0, 16
    sra     a0, a0, 16
    slti    $at, a0, 0x0003
    sh      v1, 0x0ABC(v0)             # 00000ABC
    bne     $at, $zero, lbl_80904D1C
    sh      v1, 0x0AB0(v0)             # 00000AB0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t4, $zero, 0xFE0C          # t4 = FFFFFE0C
    sh      t4, 0x0AC2($at)            # 00010AC2
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    addiu   t6, $zero, 0x0FA0          # t6 = 00000FA0
    lui     a1, %hi(func_80904F68)     # a1 = 80900000
    sh      t5, 0x0182(s0)             # 00000182
    sh      t6, 0x01A8(s0)             # 000001A8
    addiu   a1, a1, %lo(func_80904F68) # a1 = 80904F68
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80904D90:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x1374             # a3 = 06001374
    addiu   a2, a2, 0x2CA8             # a2 = 06002CA8
    sw      a1, 0x0034($sp)
    lw      a0, 0x0044($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1374             # a0 = 06001374
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1374             # a0 = 06001374
    jal     func_8008A194
    sh      v0, 0x003C($sp)
    lh      t6, 0x003C($sp)
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x001C($sp)
    cvt.s.w $f4, $f4
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x1374             # a1 = 06001374
    swc1    $f8, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    mfc1    a3, $f4
    jal     func_8008CFC0
    swc1    $f0, 0x0018($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1374             # a0 = 06001374
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_809082AC)     # $at = 80910000
    lwc1    $f12, %lo(var_809082AC)($at)
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    addiu   t9, $zero, 0x0078          # t9 = 00000078
    addiu   t0, $zero, 0x00E6          # t0 = 000000E6
    addiu   t1, $zero, 0x00C8          # t1 = 000000C8
    addiu   t2, $zero, 0x0FA0          # t2 = 00000FA0
    swc1    $f16, 0x0154(s0)           # 00000154
    sh      t9, 0x019E(s0)             # 0000019E
    sh      t0, 0x01A0(s0)             # 000001A0
    sh      t1, 0x0182(s0)             # 00000182
    sh      t2, 0x01A8(s0)             # 000001A8
    lui     t3, 0x8012                 # t3 = 80120000
    swc1    $f2, 0x0050(s0)            # 00000050
    swc1    $f2, 0x0054(s0)            # 00000054
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f12, 0x0184(s0)           # 00000184
    swc1    $f12, 0x0188(s0)           # 00000188
    swc1    $f0, 0x0190(s0)            # 00000190
    swc1    $f0, 0x0194(s0)            # 00000194
    swc1    $f0, 0x0198(s0)            # 00000198
    swc1    $f0, 0x018C(s0)            # 0000018C
    swc1    $f18, 0x01AC(s0)           # 000001AC
    swc1    $f4, 0x00BC(s0)            # 000000BC
    lw      t3, -0x5A30(t3)            # 8011A5D0
    addiu   $at, $zero, 0x0053         # $at = 00000053
    or      a0, s0, $zero              # a0 = 00000000
    beq     t3, $at, lbl_80904F04
    lui     $at, %hi(var_809082B0)     # $at = 80910000
    lwc1    $f6, %lo(var_809082B0)($at)
    lui     $at, %hi(var_809082B4)     # $at = 80910000
    swc1    $f6, 0x0050(s0)            # 00000050
    lwc1    $f8, %lo(var_809082B4)($at)
    lui     $at, %hi(var_809082B8)     # $at = 80910000
    swc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f10, %lo(var_809082B8)($at)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    swc1    $f10, 0x0058(s0)           # 00000058
    beq     $zero, $zero, lbl_80904F0C
    swc1    $f16, 0x0198(s0)           # 00000198
lbl_80904F04:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2899          # a1 = 00002899
lbl_80904F0C:
    lui     a1, %hi(func_809051CC)     # a1 = 80900000
    addiu   a1, a1, %lo(func_809051CC) # a1 = 809051CC
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80904F30:
    lw      v0, 0x1C44(a1)             # 00001C44
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f10                  # $f10 = 55.00
    swc1    $f4, 0x0060(v0)            # 00000060
    lwc1    $f6, 0x0024(a0)            # 00000024
    swc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x0028(a0)            # 00000028
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0028(v0)           # 00000028
    lwc1    $f18, 0x002C(a0)           # 0000002C
    swc1    $f18, 0x002C(v0)           # 0000002C
    jr      $ra
    nop


func_80904F68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     v0, 0x0182(a0)             # 00000182
    lui     a1, %hi(func_80904FB4)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80904FB4) # a1 = 80904FB4
    beq     v0, $zero, lbl_80904F90
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80904F9C
    sh      t6, 0x0182(a0)             # 00000182
lbl_80904F90:
    jal     func_80904520
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_80904F9C:
    jal     func_80904F30
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80904FB4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, %hi(var_809082BC)     # $at = 80910000
    lwc1    $f4, %lo(var_809082BC)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0198             # a0 = 00000198
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lhu     t6, 0x0182(s1)             # 00000182
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    lui     $at, 0x4220                # $at = 42200000
    subu    t8, t7, t6
    mtc1    t8, $f6                    # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 40.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    cvt.s.w $f8, $f6
    lui     $at, 0xC37F                # $at = C37F0000
    mtc1    $at, $f16                  # $f16 = -255.00
    div.s   $f0, $f8, $f10
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_80905030
    nop
    mov.s   $f0, $f2
lbl_80905030:
    mul.s   $f18, $f16, $f0
    or      v1, $zero, $zero           # v1 = 00000000
    lui     a1, 0x0001                 # a1 = 00010000
    trunc.w.s $f4, $f18
    mfc1    a0, $f4
    nop
lbl_80905048:
    sll     t0, v1,  1
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    addu    t1, s0, t0
    sra     v1, v1, 16
    addu    v0, t1, a1
    slti    $at, v1, 0x0003
    sh      a0, 0x0AB6(v0)             # 00000AB6
    sh      a0, 0x0ABC(v0)             # 00000ABC
    bne     $at, $zero, lbl_80905048
    sh      a0, 0x0AB0(v0)             # 00000AB0
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f6                   # $f6 = -500.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    mul.s   $f8, $f6, $f0
    c.le.s  $f0, $f2
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(func_809050E8)     # a1 = 80900000
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x0AC2($at)            # 00010AC2
    lhu     t4, 0x0182(s1)             # 00000182
    addiu   t5, t4, 0x0001             # t5 = 00000001
    bc1f    lbl_809050BC
    sh      t5, 0x0182(s1)             # 00000182
    jal     func_80904520
    addiu   a1, a1, %lo(func_809050E8) # a1 = 809050E8
lbl_809050BC:
    lh      t7, 0x00B6(s1)             # 000000B6
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t6, t7, 0x0320             # t6 = 00000320
    jal     func_80904F30
    sh      t6, 0x00B6(s1)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809050E8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80904F30
    sw      t6, 0x002C($sp)
    lhu     v0, 0x0182(s0)             # 00000182
    addiu   a0, s0, 0x0198             # a0 = 00000198
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    bne     v0, $zero, lbl_80905190
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a3, 0x4080                 # a3 = 40800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f0, 0x0198(s0)            # 00000198
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, %hi(var_809082C0)     # $at = 80910000
    c.le.s  $f0, $f6
    lw      t7, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_809051B0)     # a1 = 80900000
    bc1fl   lbl_80905174
    c.le.s  $f0, $f10
    lwc1    $f8, %lo(var_809082C0)($at)
    swc1    $f8, 0x006C(t7)            # 0000006C
    lwc1    $f0, 0x0198(s0)            # 00000198
    c.le.s  $f0, $f10
lbl_80905174:
    nop
    bc1fl   lbl_80905198
    lh      t9, 0x00B6(s0)             # 000000B6
    jal     func_80904520
    addiu   a1, a1, %lo(func_809051B0) # a1 = 809051B0
    beq     $zero, $zero, lbl_80905198
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_80905190:
    sh      t8, 0x0182(s0)             # 00000182
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_80905198:
    addiu   t0, t9, 0x0320             # t0 = 00000320
    sh      t0, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809051B0:
    sw      a0, 0x0000($sp)
    lui     $at, %hi(var_809082C4)     # $at = 80910000
    lw      v0, 0x1C44(a1)             # 00001C44
    lwc1    $f4, %lo(var_809082C4)($at)
    swc1    $f4, 0x006C(v0)            # 0000006C
    jr      $ra
    nop


func_809051CC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lhu     v0, 0x0182(s0)             # 00000182
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    beq     v0, $zero, lbl_80905298
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0182(s0)             # 00000182
    lui     $at, %hi(var_809082C8)     # $at = 80910000
    lwc1    $f4, %lo(var_809082C8)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0x63F1             # a1 = 3D4C63F1
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_809082CC)     # $at = 80910000
    lwc1    $f6, %lo(var_809082CC)($at)
    lui     a1, 0x3D9D                 # a1 = 3D9D0000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0xB22D             # a1 = 3D9DB22D
    addiu   a0, s0, 0x0054             # a0 = 00000054
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_809082D0)     # $at = 80910000
    lwc1    $f8, %lo(var_809082D0)($at)
    lui     a1, 0x3DB8                 # a1 = 3DB80000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0x51EC             # a1 = 3DB851EC
    addiu   a0, s0, 0x0058             # a0 = 00000058
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     $at, %hi(var_809082D4)     # $at = 80910000
    lwc1    $f10, %lo(var_809082D4)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0198             # a0 = 00000198
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
lbl_80905298:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_809052AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   t7, t6, 0x0002             # t7 = 00000002
    sltiu   $at, t7, 0x000D
    beq     $at, $zero, lbl_80905314
    sll     t7, t7,  2
    lui     $at, %hi(var_809082D8)     # $at = 80910000
    addu    $at, $at, t7
    lw      t7, %lo(var_809082D8)($at)
    jr      t7
    nop
var_809052DC:
    jal     func_80904724
    nop
    beq     $zero, $zero, lbl_80905318
    lw      $ra, 0x0014($sp)
var_809052EC:
    jal     func_80904A2C
    nop
    beq     $zero, $zero, lbl_80905318
    lw      $ra, 0x0014($sp)
var_809052FC:
    jal     func_80904BF8
    nop
    beq     $zero, $zero, lbl_80905318
    lw      $ra, 0x0014($sp)
var_8090530C:
    jal     func_80904D90
    nop
lbl_80905314:
    lw      $ra, 0x0014($sp)
lbl_80905318:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80905324:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80020694
    lb      a1, 0x0003(t6)             # 00000003
    beq     v0, $zero, lbl_8090536C
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    lw      t8, 0x0018($sp)
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    jal     func_800CAA70
    sh      t7, 0x0182(t8)             # 00000182
    lui     a1, %hi(func_8090537C)     # a1 = 80900000
    addiu   a1, a1, %lo(func_8090537C) # a1 = 8090537C
    jal     func_80904520
    lw      a0, 0x0018($sp)
lbl_8090536C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8090537C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     v0, 0x0182(s0)             # 00000182
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    bne     v0, $zero, lbl_809054B0
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0xC2C4                # $at = C2C40000
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    c.lt.s  $f4, $f6
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    bc1fl   lbl_809053EC
    lwc1    $f18, 0x0024(s0)           # 00000024
    mtc1    $at, $f8                   # $f8 = -98.00
    lui     $at, %hi(var_8090830C)     # $at = 80910000
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, %lo(var_8090830C)($at)
    lui     $at, %hi(var_80908310)     # $at = 80910000
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, %lo(var_80908310)($at)
    swc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f18, 0x0024(s0)           # 00000024
lbl_809053EC:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    trunc.w.s $f8, $f6
    mfc1    a1, $f4
    sw      t0, 0x0014($sp)
    trunc.w.s $f16, $f10
    mfc1    a2, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_80065BCC
    sw      t9, 0x0010($sp)
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    trunc.w.s $f8, $f6
    mfc1    a1, $f4
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    trunc.w.s $f16, $f10
    mfc1    a2, $f8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sll     a1, a1, 16
    mfc1    a3, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    jal     func_80065BCC
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    lui     a1, %hi(func_809054CC)     # a1 = 80900000
    addiu   a1, a1, %lo(func_809054CC) # a1 = 809054CC
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0182(s0)             # 00000182
lbl_809054B0:
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0182(s0)             # 00000182
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809054CC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    lui     $at, %hi(var_80908314)     # $at = 80910000
    lwc1    $f4, %lo(var_80908314)($at)
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_80908318)     # $at = 80910000
    lwc1    $f6, %lo(var_80908318)($at)
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0194             # a0 = 00000194
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    v1, v0, lbl_80905604
    lh      v0, 0x019E(s0)             # 0000019E
    beq     v0, $at, lbl_80905600
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80905600
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    v0, $at, lbl_80905604
    lh      v0, 0x019E(s0)             # 0000019E
    lh      v0, 0x019C(s0)             # 0000019C
    slti    $at, v0, 0x0064
    beq     $at, $zero, lbl_80905574
    addiu   t6, v0, 0x0002             # t6 = 00000002
    sh      t6, 0x019C(s0)             # 0000019C
lbl_80905574:
    lh      v0, 0x019E(s0)             # 0000019E
    slti    $at, v0, 0x0078
    beq     $at, $zero, lbl_80905588
    addiu   t7, v0, 0x0004             # t7 = 00000004
    sh      t7, 0x019E(s0)             # 0000019E
lbl_80905588:
    lh      v0, 0x01A0(s0)             # 000001A0
    slti    $at, v0, 0x00E6
    beq     $at, $zero, lbl_809055A0
    addiu   t8, v0, 0x0004             # t8 = 00000004
    beq     $zero, $zero, lbl_8090563C
    sh      t8, 0x01A0(s0)             # 000001A0
lbl_809055A0:
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_809055C4
    lui     a1, %hi(func_80905C14)     # a1 = 80900000
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905C14) # a1 = 80905C14
    beq     $zero, $zero, lbl_80905640
    lw      $ra, 0x0024($sp)
lbl_809055C4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809055EC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, v0, lbl_809055EC
    lui     a1, %hi(func_80905754)     # a1 = 80900000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905754) # a1 = 80905754
    beq     $zero, $zero, lbl_80905640
    lw      $ra, 0x0024($sp)
lbl_809055EC:
    lui     a1, %hi(func_80905650)     # a1 = 80900000
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905650) # a1 = 80905650
    beq     $zero, $zero, lbl_80905640
    lw      $ra, 0x0024($sp)
lbl_80905600:
    lh      v0, 0x019E(s0)             # 0000019E
lbl_80905604:
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80905650)     # a1 = 80900000
    slti    $at, v0, 0xFFCE
    beq     $at, $zero, lbl_8090561C
    addiu   t9, v0, 0x0004             # t9 = 00000004
    sh      t9, 0x019E(s0)             # 0000019E
lbl_8090561C:
    lh      v0, 0x01A0(s0)             # 000001A0
    slti    $at, v0, 0x0046
    beq     $at, $zero, lbl_80905634
    addiu   t0, v0, 0x0004             # t0 = 00000004
    beq     $zero, $zero, lbl_8090563C
    sh      t0, 0x01A0(s0)             # 000001A0
lbl_80905634:
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905650) # a1 = 80905650
lbl_8090563C:
    lw      $ra, 0x0024($sp)
lbl_80905640:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80905650:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0190(t6)            # 00000190
    or      a0, t6, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6
    nop
    bc1t    lbl_80905688
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
lbl_80905688:
    lui     $at, %hi(var_8090831C)     # $at = 80910000
    lwc1    $f8, %lo(var_8090831C)($at)
    lw      a0, 0x0020($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f8, 0x0010($sp)
    jal     func_80064178
    addiu   a0, a0, 0x0190             # a0 = 00000190
    lui     $at, %hi(var_80908320)     # $at = 80910000
    lwc1    $f10, %lo(var_80908320)($at)
    lw      a0, 0x0020($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f10, 0x0010($sp)
    jal     func_80064178
    addiu   a0, a0, 0x0194             # a0 = 00000194
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_809056E8:
    lwc1    $f0, 0x0090(a0)            # 00000090
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    abs.s   $f0, $f0
    lw      v0, 0x1C44(a1)             # 00001C44
    c.lt.s  $f0, $f4
    or      v1, $zero, $zero           # v1 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    bc1fl   lbl_8090574C
    or      v0, v1, $zero              # v0 = 00000000
    mtc1    $at, $f12                  # $f12 = 20.00
    lwc1    $f0, 0x0028(v0)            # 00000028
    lwc1    $f2, 0x0028(a0)            # 00000028
    sub.s   $f6, $f0, $f12
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_8090574C
    or      v0, v1, $zero              # v0 = 00000000
    add.s   $f8, $f0, $f12
    c.lt.s  $f2, $f8
    nop
    bc1fl   lbl_8090574C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v0, v1, $zero              # v0 = 00000001
lbl_8090574C:
    jr      $ra
    nop


func_80905754:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809056E8
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_8090580C
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lw      t6, 0x0034($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2826          # a0 = 00002826
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    sw      v0, 0x002C($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x25E7          # a1 = 000025E7
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      v1, 0x002C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_80905820)     # a1 = 80900000
    swc1    $f4, 0x0440(v1)            # 00000440
    lwc1    $f6, 0x002C(s0)            # 0000002C
    addiu   a1, a1, %lo(func_80905820) # a1 = 80905820
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0448(v1)            # 00000448
    jal     func_80904520
    sh      t8, 0x01A2(s0)             # 000001A2
lbl_8090580C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80905820:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x002C($sp)
    lh      v0, 0x01A2(s2)             # 000001A2
    lw      s1, 0x1C44(s0)             # 00001C44
    addiu   a0, s2, 0x0190             # a0 = 00000190
    slti    $at, v0, 0x0065
    bne     $at, $zero, lbl_8090588C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0060(s1)            # 00000060
    lui     $at, %hi(var_80908324)     # $at = 80910000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80905884
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, %lo(var_80908324)($at)
    beq     $zero, $zero, lbl_80905894
    swc1    $f8, 0x006C(s1)            # 0000006C
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80905884:
    beq     $zero, $zero, lbl_80905894
    swc1    $f10, 0x006C(s1)           # 0000006C
lbl_8090588C:
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x01A2(s2)             # 000001A2
lbl_80905894:
    lui     $at, %hi(var_80908328)     # $at = 80910000
    lwc1    $f16, %lo(var_80908328)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lhu     t7, 0x0182(s2)             # 00000182
    lui     t9, %hi(var_809087C0)      # t9 = 80910000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0182(s2)             # 00000182
    lh      t9, %lo(var_809087C0)(t9)
    andi    t0, t8, 0xFFFF             # t0 = 00000001
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    slt     $at, t9, t0
    beql    $at, $zero, lbl_80905A30
    lui     a2, 0x3C23                 # a2 = 3C230000
    lhu     t1, 0x1412(v1)             # 8011B9E2
    ori     $at, $zero, 0xFFEF         # $at = 0000FFEF
    bnel    t1, $at, lbl_80905A30
    lui     a2, 0x3C23                 # a2 = 3C230000
    lh      v0, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bnel    v0, $at, lbl_8090596C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    bne     v0, $zero, lbl_80905948
    addiu   t4, $zero, 0x047A          # t4 = 0000047A
    jal     func_800288E0
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x006D          # a1 = 0000006D
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x013D          # t2 = 0000013D
    sh      t2, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    ori     t3, $zero, 0xFFF1          # t3 = 0000FFF1
    lui     v1, 0x8012                 # v1 = 80120000
    sh      t3, -0x461E($at)           # 8011B9E2
    beq     $zero, $zero, lbl_80905A04
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_80905948:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x461E($at)        # 8011B9E2
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_80905A04
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x0011         # $at = 00000011
lbl_8090596C:
    bnel    v0, $at, lbl_809059EC
    addiu   $at, $zero, 0x0013         # $at = 00000013
    jal     func_800288B4
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    bne     v0, $zero, lbl_809059C8
    addiu   t7, $zero, 0x0457          # t7 = 00000457
    jal     func_800288E0
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    jal     func_800288E0
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x006C          # a1 = 0000006C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x00EE          # t5 = 000000EE
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    ori     t6, $zero, 0xFFF1          # t6 = 0000FFF1
    lui     v1, 0x8012                 # v1 = 80120000
    sh      t6, -0x461E($at)           # 8011B9E2
    beq     $zero, $zero, lbl_80905A04
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_809059C8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x461E($at)        # 8011B9E2
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_80905A04
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x0013         # $at = 00000013
lbl_809059EC:
    bne     v0, $at, lbl_80905A04
    addiu   t8, $zero, 0x010E          # t8 = 0000010E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t8, 0x1E1A($at)            # 00011E1A
    sh      $zero, 0x1412(v1)          # 8011B9E2
lbl_80905A04:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sb      t0, 0x1E5E($at)            # 00011E5E
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t1, 0x141D(v1)             # 8011B9ED
    lui     a2, 0x3C23                 # a2 = 3C230000
lbl_80905A30:
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    addiu   a0, s2, 0x0184             # a0 = 00000184
    jal     func_8006385C
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s2, 0x0188             # a0 = 00000188
    jal     func_8006385C
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t7, $zero, 0x00EB          # t7 = 000000EB
    addiu   a0, s2, 0x01B8             # a0 = 000001B8
    mfc1    t3, $f4
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f6                    # $f6 = 0.00
    mfc1    t8, $f4
    trunc.w.s $f4, $f18
    sw      t7, 0x0010($sp)
    sll     t9, t8, 16
    cvt.s.w $f8, $f6
    sra     t0, t9, 16
    mtc1    t0, $f6                    # $f6 = 0.00
    mfc1    t3, $f4
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    add.s   $f10, $f8, $f0
    sll     t4, t3, 16
    sra     t5, t4, 16
    cvt.s.w $f8, $f6
    mtc1    t5, $f6                    # $f6 = 0.00
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    trunc.w.s $f16, $f10
    sw      t0, 0x001C($sp)
    add.s   $f10, $f8, $f0
    mfc1    a1, $f16
    cvt.s.w $f8, $f6
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f16, $f10
    add.s   $f10, $f8, $f0
    mfc1    a2, $f16
    trunc.w.s $f16, $f10
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f16
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t6, $zero, 0x00EB          # t6 = 000000EB
    addiu   a0, s2, 0x01CC             # a0 = 000001CC
    mfc1    t2, $f4
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f6                    # $f6 = 0.00
    mfc1    t7, $f4
    trunc.w.s $f4, $f18
    sw      t6, 0x0010($sp)
    sll     t8, t7, 16
    cvt.s.w $f8, $f6
    sra     t9, t8, 16
    mtc1    t9, $f6                    # $f6 = 0.00
    mfc1    t2, $f4
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sub.s   $f10, $f8, $f0
    sll     t3, t2, 16
    sra     t4, t3, 16
    cvt.s.w $f8, $f6
    mtc1    t4, $f6                    # $f6 = 0.00
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    trunc.w.s $f16, $f10
    sw      t9, 0x001C($sp)
    sub.s   $f10, $f8, $f0
    mfc1    a1, $f16
    cvt.s.w $f8, $f6
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f16, $f10
    sub.s   $f10, $f8, $f0
    mfc1    a2, $f16
    trunc.w.s $f16, $f10
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f16
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lui     $at, %hi(var_8090832C)     # $at = 80910000
    lwc1    $f18, %lo(var_8090832C)($at)
    addiu   a0, s2, 0x00BC             # a0 = 000000BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80905C14:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    lw      t6, 0x01DC(s0)             # 000001DC
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_80905C84
    lw      $ra, 0x001C($sp)
    jal     func_809056E8
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80905C80
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x01DC(s0)             # 000001DC
    lw      a0, 0x0024($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_80905C94)     # a1 = 80900000
    sh      t8, 0x01A2(s0)             # 000001A2
    addiu   a1, a1, %lo(func_80905C94) # a1 = 80905C94
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
lbl_80905C80:
    lw      $ra, 0x001C($sp)
lbl_80905C84:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80905C94:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(s0)             # 00001C44
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0024($sp)
    lw      t7, 0x01DC(s1)             # 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    bnel    t7, $at, lbl_80905D8C
    lw      $ra, 0x001C($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8009D0F0
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, %hi(var_809087C2)      # v1 = 80910000
    addiu   v1, v1, %lo(var_809087C2)  # v1 = 809087C2
    sh      v0, 0x0000(v1)             # 809087C2
    lh      a1, 0x0000(v1)             # 809087C2
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4244                # $at = 42440000
    lwc1    $f4, 0x0024(s1)            # 00000024
    mtc1    $at, $f6                   # $f6 = 49.00
    lw      v1, 0x0024($sp)
    swc1    $f4, 0x0034($sp)
    swc1    $f6, 0x0038($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lui     $at, 0x422C                # $at = 422C0000
    mtc1    $at, $f16                  # $f16 = 43.00
    swc1    $f8, 0x003C($sp)
    lwc1    $f10, 0x0024(v1)           # 00000024
    swc1    $f16, 0x002C($sp)
    lui     a1, %hi(var_809087C2)      # a1 = 80910000
    swc1    $f10, 0x0028($sp)
    lwc1    $f18, 0x002C(v1)           # 0000002C
    lh      a1, %lo(var_809087C2)(a1)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE8
    jal     func_8009D328
    swc1    $f18, 0x0030($sp)
    lui     a1, %hi(var_809087C2)      # a1 = 80910000
    lh      a1, %lo(var_809087C2)(a1)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D55C
    lui     a2, 0x42B4                 # a2 = 42B40000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x01DC(s1)             # 000001DC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4022          # a1 = 00004022
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, %hi(func_80905D9C)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80905D9C) # a1 = 80905D9C
    jal     func_80904520
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80905D8C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80905D9C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80905E44
    lui     a3, 0x8010                 # a3 = 80100000
    lw      a1, 0x0020($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2826          # a0 = 00002826
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x25E9          # a1 = 000025E9
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    lw      a3, 0x0020($sp)
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     a2, %hi(var_809087C2)      # a2 = 80910000
    lh      a2, %lo(var_809087C2)(a2)
    lw      a0, 0x0024($sp)
    jal     func_8009D5F0
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    lui     a1, %hi(var_809087C2)      # a1 = 80910000
    lh      a1, %lo(var_809087C2)(a1)
    lw      a0, 0x0024($sp)
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t8, 0x0020($sp)
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     a1, %hi(func_80905E54)     # a1 = 80900000
    sw      t7, 0x01DC(t8)             # 000001DC
    lw      a0, 0x0020($sp)
    jal     func_80904520
    addiu   a1, a1, %lo(func_80905E54) # a1 = 80905E54
lbl_80905E44:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80905E54:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x002C($sp)
    lh      v0, 0x01A2(s0)             # 000001A2
    lw      s1, 0x1C44(s2)             # 00001C44
    addiu   a0, s0, 0x0190             # a0 = 00000190
    slti    $at, v0, 0x003D
    bne     $at, $zero, lbl_80905EC0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0060(s1)            # 00000060
    lui     $at, %hi(var_80908330)     # $at = 80910000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80905EB8
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, %lo(var_80908330)($at)
    beq     $zero, $zero, lbl_80905EC8
    swc1    $f8, 0x006C(s1)            # 0000006C
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80905EB8:
    beq     $zero, $zero, lbl_80905EC8
    swc1    $f10, 0x006C(s1)           # 0000006C
lbl_80905EC0:
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x01A2(s0)             # 000001A2
lbl_80905EC8:
    lui     $at, %hi(var_80908334)     # $at = 80910000
    lwc1    $f16, %lo(var_80908334)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lhu     t7, 0x0182(s0)             # 00000182
    lui     t9, %hi(var_809087C0)      # t9 = 80910000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0182(s0)             # 00000182
    lh      t9, %lo(var_809087C0)(t9)
    andi    t0, t8, 0xFFFF             # t0 = 00000001
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    slt     $at, t9, t0
    beql    $at, $zero, lbl_80905F7C
    lui     a2, 0x3C23                 # a2 = 3C230000
    lhu     t1, 0x1412(v0)             # 8011B9E2
    ori     $at, $zero, 0xFFEF         # $at = 0000FFEF
    bnel    t1, $at, lbl_80905F7C
    lui     a2, 0x3C23                 # a2 = 3C230000
    lhu     t2, 0x0EDA(v0)             # 8011B4AA
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x006E          # a1 = 0000006E
    ori     t3, t2, 0x0080             # t3 = 00000080
    jal     func_8006FDCC
    sh      t3, 0x0EDA(v0)             # 8011B4AA
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t4, $zero, 0x010E          # t4 = 0000010E
    lui     v0, 0x8012                 # v0 = 80120000
    sh      t4, 0x1E1A($at)            # 00011E1A
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    ori     t5, $zero, 0xFFF0          # t5 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sh      t5, 0x1412(v0)             # 8011B9E2
    addu    $at, $at, s2
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sb      t7, 0x1E5E($at)            # 00011E5E
    lui     a2, 0x3C23                 # a2 = 3C230000
lbl_80905F7C:
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    addiu   a0, s0, 0x0184             # a0 = 00000184
    jal     func_8006385C
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s0, 0x0188             # a0 = 00000188
    jal     func_8006385C
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t3, $zero, 0x00EB          # t3 = 000000EB
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    mfc1    t9, $f4
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sll     t0, t9, 16
    sra     t1, t0, 16
    mtc1    t1, $f6                    # $f6 = 0.00
    mfc1    t4, $f4
    trunc.w.s $f4, $f18
    sw      t3, 0x0010($sp)
    sll     t5, t4, 16
    cvt.s.w $f8, $f6
    sra     t6, t5, 16
    mtc1    t6, $f6                    # $f6 = 0.00
    mfc1    t9, $f4
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    add.s   $f10, $f8, $f0
    sll     t0, t9, 16
    sra     t1, t0, 16
    cvt.s.w $f8, $f6
    mtc1    t1, $f6                    # $f6 = 0.00
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0014($sp)
    sw      t5, 0x0018($sp)
    trunc.w.s $f16, $f10
    sw      t6, 0x001C($sp)
    add.s   $f10, $f8, $f0
    mfc1    a1, $f16
    cvt.s.w $f8, $f6
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f16, $f10
    add.s   $f10, $f8, $f0
    mfc1    a2, $f16
    trunc.w.s $f16, $f10
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f16
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x0028(s1)           # 00000028
    addiu   t2, $zero, 0x00EB          # t2 = 000000EB
    addiu   a0, s0, 0x01CC             # a0 = 000001CC
    mfc1    t8, $f4
    trunc.w.s $f4, $f18
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sll     t9, t8, 16
    sra     t0, t9, 16
    mtc1    t0, $f6                    # $f6 = 0.00
    mfc1    t3, $f4
    trunc.w.s $f4, $f18
    sw      t2, 0x0010($sp)
    sll     t4, t3, 16
    cvt.s.w $f8, $f6
    sra     t5, t4, 16
    mtc1    t5, $f6                    # $f6 = 0.00
    mfc1    t8, $f4
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sub.s   $f10, $f8, $f0
    sll     t9, t8, 16
    sra     t0, t9, 16
    cvt.s.w $f8, $f6
    mtc1    t0, $f6                    # $f6 = 0.00
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t3, 0x0014($sp)
    sw      t4, 0x0018($sp)
    trunc.w.s $f16, $f10
    sw      t5, 0x001C($sp)
    sub.s   $f10, $f8, $f0
    mfc1    a1, $f16
    cvt.s.w $f8, $f6
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f16, $f10
    sub.s   $f10, $f8, $f0
    mfc1    a2, $f16
    trunc.w.s $f16, $f10
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f16
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lui     $at, %hi(var_80908338)     # $at = 80910000
    lwc1    $f18, %lo(var_80908338)($at)
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80906160:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    lui     $at, %hi(var_8090833C)     # $at = 80910000
    lwc1    $f4, %lo(var_8090833C)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_80908340)     # $at = 80910000
    lwc1    $f6, %lo(var_80908340)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0194             # a0 = 00000194
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      v0, 0x019C(s0)             # 0000019C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8090622C)     # a1 = 80900000
    slti    $at, v0, 0x000A
    beq     $at, $zero, lbl_809061E4
    addiu   t6, v0, 0x0002             # t6 = 00000002
    sh      t6, 0x019C(s0)             # 0000019C
lbl_809061E4:
    lh      v0, 0x019E(s0)             # 0000019E
    slti    $at, v0, 0x0078
    beq     $at, $zero, lbl_809061F8
    addiu   t7, v0, 0x0004             # t7 = 00000004
    sh      t7, 0x019E(s0)             # 0000019E
lbl_809061F8:
    lh      v0, 0x01A0(s0)             # 000001A0
    slti    $at, v0, 0x00E6
    beq     $at, $zero, lbl_80906210
    addiu   t8, v0, 0x0004             # t8 = 00000004
    beq     $zero, $zero, lbl_80906218
    sh      t8, 0x01A0(s0)             # 000001A0
lbl_80906210:
    jal     func_80904520
    addiu   a1, a1, %lo(func_8090622C) # a1 = 8090622C
lbl_80906218:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8090622C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809056E8
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_809062B8
    lw      a0, 0x0034($sp)
    lw      t6, 0x1C44(a0)             # 00001C44
    sw      $zero, 0x0010($sp)
    addiu   a1, $zero, 0x25E8          # a1 = 000025E8
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      t6, 0x002C($sp)
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      v1, 0x002C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    lui     a1, %hi(func_809062CC)     # a1 = 80900000
    swc1    $f4, 0x0440(v1)            # 00000440
    lwc1    $f6, 0x002C(s0)            # 0000002C
    addiu   a1, a1, %lo(func_809062CC) # a1 = 809062CC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0448(v1)            # 00000448
    jal     func_80904520
    sh      t7, 0x01A2(s0)             # 000001A2
lbl_809062B8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809062CC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lh      v0, 0x01A2(s0)             # 000001A2
    lui     a3, 0x8010                 # a3 = 80100000
    lw      v1, 0x1C44(a1)             # 00001C44
    beq     v0, $zero, lbl_809062FC
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_8090639C
    sh      t6, 0x01A2(s0)             # 000001A2
lbl_809062FC:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x2826          # a0 = 00002826
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1374             # a0 = 06001374
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1374             # a0 = 06001374
    jal     func_8008A194
    sh      v0, 0x0030($sp)
    lh      t8, 0x0030($sp)
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    t8, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    cvt.s.w $f4, $f4
    sw      t0, 0x001C($sp)
    sw      t9, 0x0014($sp)
    addiu   a1, a1, 0x1374             # a1 = 06001374
    swc1    $f8, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mfc1    a3, $f4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008CFC0
    swc1    $f10, 0x0018($sp)
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    lui     a1, %hi(func_809063B0)     # a1 = 80900000
    sh      t1, 0x01A2(s0)             # 000001A2
    addiu   a1, a1, %lo(func_809063B0) # a1 = 809063B0
    jal     func_80904520
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090639C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809063B0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lh      v0, 0x01A2(s1)             # 000001A2
    lw      t0, 0x1C44(s0)             # 00001C44
    beq     v0, $zero, lbl_809063E0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01A2(s1)             # 000001A2
    lh      v0, 0x01A2(s1)             # 000001A2
lbl_809063E0:
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_809064F0
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t7, 0x0004(v1)             # 8011A5D4
    addiu   a0, t0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    bne     t7, $zero, lbl_8090640C
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    beq     $zero, $zero, lbl_80906410
    addiu   v0, $zero, 0x0023          # v0 = 00000023
lbl_8090640C:
    addiu   v0, $zero, 0x002D          # v0 = 0000002D
lbl_80906410:
    mtc1    v0, $f4                    # $f4 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    bgez    v0, lbl_80906430
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80906430:
    lwc1    $f10, 0x0028(t0)           # 00000028
    lwc1    $f16, 0x0028(s1)           # 00000028
    lui     $at, %hi(var_80908344)     # $at = 80910000
    sub.s   $f18, $f10, $f16
    c.le.s  $f18, $f6
    nop
    bc1fl   lbl_80906460
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f4, %lo(var_80908344)($at)
    beq     $zero, $zero, lbl_8090646C
    swc1    $f4, 0x006C(t0)            # 0000006C
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80906460:
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f8, 0x006C(t0)            # 0000006C
    swc1    $f10, 0x0060(t0)           # 00000060
lbl_8090646C:
    lh      t8, 0x01A2(s1)             # 000001A2
    bgtz    t8, lbl_809064AC
    nop
    lh      v0, 0x01A8(s1)             # 000001A8
    slti    $at, v0, 0x0FA0
    beq     $at, $zero, lbl_80906490
    addiu   t9, v0, 0x0028             # t9 = 00000055
    sh      t9, 0x01A8(s1)             # 000001A8
    lh      v0, 0x01A8(s1)             # 000001A8
lbl_80906490:
    lh      t1, 0x0032(t0)             # 00000032
    lh      t3, 0x00B6(t0)             # 000000B6
    subu    t2, t1, v0
    sh      t2, 0x0032(t0)             # 00000032
    lh      t4, 0x01A8(s1)             # 000001A8
    subu    t5, t3, t4
    sh      t5, 0x00B6(t0)             # 000000B6
lbl_809064AC:
    lui     $at, %hi(var_80908348)     # $at = 80910000
    lwc1    $f16, %lo(var_80908348)($at)
    lw      a1, 0x0024(s1)             # 00000024
    sw      t0, 0x0034($sp)
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lui     $at, %hi(var_8090834C)     # $at = 80910000
    lw      t0, 0x0034($sp)
    lwc1    $f6, %lo(var_8090834C)($at)
    lw      a1, 0x002C(s1)             # 0000002C
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a0, t0, 0x002C             # a0 = 0000002C
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lw      t0, 0x0034($sp)
lbl_809064F0:
    lhu     t6, 0x0182(s1)             # 00000182
    lui     t8, %hi(var_809087C0)      # t8 = 80910000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0182(s1)             # 00000182
    lh      t8, %lo(var_809087C0)(t8)
    andi    v0, t7, 0xFFFF             # v0 = 00000001
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    slt     $at, t8, v0
    beql    $at, $zero, lbl_80906824
    slti    $at, v0, 0x008D
    lhu     t9, 0x1412(v1)             # 8011B9E2
    ori     $at, $zero, 0xFFEF         # $at = 0000FFEF
    bnel    t9, $at, lbl_80906824
    slti    $at, v0, 0x008D
    lh      v0, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v0, $at, lbl_809065C0
    addiu   $at, $zero, 0x0015         # $at = 00000015
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0066          # a1 = 00000066
    andi    t1, v0, 0x0100             # t1 = 00000000
    bne     t1, $zero, lbl_80906588
    ori     t2, v0, 0x0100             # t2 = 00000101
    sh      t2, 0x0EDC(v1)             # 8011B4AC
    jal     func_8006FDCC
    sw      t0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t0, 0x0034($sp)
    addu    $at, $at, s0
    addiu   t3, $zero, 0x006B          # t3 = 0000006B
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t3, 0x1E1A($at)            # 00011E1A
    sh      $zero, 0x1412(v1)          # 8011B9E2
    beq     $zero, $zero, lbl_809067F4
    sb      $zero, 0x1415(v1)          # 8011B9E5
lbl_80906588:
    lw      t4, 0x0004(v1)             # 8011A5D4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t4, $zero, lbl_809065B0
    addiu   t6, $zero, 0x0608          # t6 = 00000608
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0600          # t5 = 00000600
    beq     $zero, $zero, lbl_809065B4
    sh      t5, 0x1E1A($at)            # 00011E1A
lbl_809065B0:
    sh      t6, 0x1E1A($at)            # 00011E1A
lbl_809065B4:
    beq     $zero, $zero, lbl_809067F4
    sh      $zero, 0x1412(v1)          # 8011B9E2
    addiu   $at, $zero, 0x0015         # $at = 00000015
lbl_809065C0:
    bnel    v0, $at, lbl_8090664C
    addiu   $at, $zero, 0x0016         # $at = 00000016
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0067          # a1 = 00000067
    andi    t7, v0, 0x0200             # t7 = 00000000
    bne     t7, $zero, lbl_80906614
    ori     t8, v0, 0x0200             # t8 = 00000200
    sh      t8, 0x0EDC(v1)             # 8011B4AC
    jal     func_8006FDCC
    sw      t0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t0, 0x0034($sp)
    addu    $at, $at, s0
    addiu   t9, $zero, 0x00DB          # t9 = 000000DB
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t9, 0x1E1A($at)            # 00011E1A
    ori     t1, $zero, 0xFFF3          # t1 = 0000FFF3
    beq     $zero, $zero, lbl_809067F4
    sh      t1, 0x1412(v1)             # 8011B9E2
lbl_80906614:
    lw      t2, 0x0004(v1)             # 8011A5D4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t2, $zero, lbl_8090663C
    addiu   t4, $zero, 0x0564          # t4 = 00000564
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t3, $zero, 0x04F6          # t3 = 000004F6
    beq     $zero, $zero, lbl_80906640
    sh      t3, 0x1E1A($at)            # 00011E1A
lbl_8090663C:
    sh      t4, 0x1E1A($at)            # 00011E1A
lbl_80906640:
    beq     $zero, $zero, lbl_809067F4
    sh      $zero, 0x1412(v1)          # 8011B9E2
    addiu   $at, $zero, 0x0016         # $at = 00000016
lbl_8090664C:
    bnel    v0, $at, lbl_809066DC
    addiu   $at, $zero, 0x0017         # $at = 00000017
    lhu     v0, 0x0EDC(v1)             # 8011B4AC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0068          # a1 = 00000068
    andi    t5, v0, 0x0400             # t5 = 00000000
    bne     t5, $zero, lbl_809066A4
    ori     t6, v0, 0x0400             # t6 = 00000400
    sh      t6, 0x0EDC(v1)             # 8011B4AC
    jal     func_8006FDCC
    sw      t0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t0, 0x0034($sp)
    addu    $at, $at, s0
    addiu   t7, $zero, 0x006B          # t7 = 0000006B
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t7, 0x1E1A($at)            # 00011E1A
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sh      $zero, 0x1412(v1)          # 8011B9E2
    beq     $zero, $zero, lbl_809067F4
    sb      t8, 0x1415(v1)             # 8011B9E5
lbl_809066A4:
    lw      t9, 0x0004(v1)             # 8011A5D4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t9, $zero, lbl_809066CC
    addiu   t2, $zero, 0x060C          # t2 = 0000060C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0604          # t1 = 00000604
    beq     $zero, $zero, lbl_809066D0
    sh      t1, 0x1E1A($at)            # 00011E1A
lbl_809066CC:
    sh      t2, 0x1E1A($at)            # 00011E1A
lbl_809066D0:
    beq     $zero, $zero, lbl_809067F4
    sh      $zero, 0x1412(v1)          # 8011B9E2
    addiu   $at, $zero, 0x0017         # $at = 00000017
lbl_809066DC:
    bne     v0, $at, lbl_80906768
    lui     t3, 0x8010                 # t3 = 80100000
    lw      t3, -0x7404(t3)            # 800F8BFC
    lw      t4, 0x00A4(v1)             # 8011A674
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0069          # a1 = 00000069
    and     t5, t3, t4
    bnel    t5, $zero, lbl_80906738
    lw      t8, 0x0004(v1)             # 8011A5D4
    jal     func_8006FDCC
    sw      t0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t0, 0x0034($sp)
    addu    $at, $at, s0
    addiu   t6, $zero, 0x006B          # t6 = 0000006B
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t6, 0x1E1A($at)            # 00011E1A
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sh      $zero, 0x1412(v1)          # 8011B9E2
    beq     $zero, $zero, lbl_809067F4
    sb      t7, 0x1415(v1)             # 8011B9E5
    lw      t8, 0x0004(v1)             # 8011A5D4
lbl_80906738:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t8, $zero, lbl_8090675C
    addiu   t1, $zero, 0x0610          # t1 = 00000610
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x01F1          # t9 = 000001F1
    beq     $zero, $zero, lbl_80906760
    sh      t9, 0x1E1A($at)            # 00011E1A
lbl_8090675C:
    sh      t1, 0x1E1A($at)            # 00011E1A
lbl_80906760:
    beq     $zero, $zero, lbl_809067F4
    sh      $zero, 0x1412(v1)          # 8011B9E2
lbl_80906768:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     v0, $at, lbl_809067F4
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x7400(t2)            # 800F8C00
    lw      t3, 0x00A4(v1)             # 8011A674
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x006A          # a1 = 0000006A
    and     t4, t2, t3
    bnel    t4, $zero, lbl_809067C8
    lw      t7, 0x0004(v1)             # 8011A5D4
    jal     func_8006FDCC
    sw      t0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t0, 0x0034($sp)
    addu    $at, $at, s0
    addiu   t5, $zero, 0x006B          # t5 = 0000006B
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t5, 0x1E1A($at)            # 00011E1A
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      $zero, 0x1412(v1)          # 8011B9E2
    beq     $zero, $zero, lbl_809067F4
    sb      t6, 0x1415(v1)             # 8011B9E5
    lw      t7, 0x0004(v1)             # 8011A5D4
lbl_809067C8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t7, $zero, lbl_809067EC
    addiu   t9, $zero, 0x0580          # t9 = 00000580
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0568          # t8 = 00000568
    beq     $zero, $zero, lbl_809067F0
    sh      t8, 0x1E1A($at)            # 00011E1A
lbl_809067EC:
    sh      t9, 0x1E1A($at)            # 00011E1A
lbl_809067F0:
    sh      $zero, 0x1412(v1)          # 8011B9E2
lbl_809067F4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sb      t2, 0x1E5E($at)            # 00011E5E
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    sb      t3, 0x141D(v1)             # 8011B9ED
    lhu     v0, 0x0182(s1)             # 00000182
    slti    $at, v0, 0x008D
lbl_80906824:
    bne     $at, $zero, lbl_80906928
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x0B05($at)            # 00010B05
    lhu     t5, 0x0182(s1)             # 00000182
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    addiu   t6, t5, 0xFF74             # t6 = FFFFFFDF
    mtc1    t6, $f18                   # $f18 = NaN
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    cvt.s.w $f4, $f18
    lui     $at, 0x3F80                # $at = 3F800000
    div.s   $f0, $f4, $f8
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_8090687C
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $at, $f0                   # $f0 = 0.00
    nop
    lui     $at, 0x0001                # $at = 00010000
lbl_8090687C:
    addu    a1, s0, $at
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   v0, $zero, 0x00A0          # v0 = 000000A0
    mul.s   $f6, $f16, $f0
    sb      v0, 0x0B06(a1)             # 00000B06
    sb      v0, 0x0B07(a1)             # 00000B07
    sb      v0, 0x0B08(a1)             # 00000B08
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80906910
    mfc1    t8, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    t8, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80906904
    nop
    mfc1    t8, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8090691C
    or      t8, t8, $at                # t8 = 80000000
lbl_80906904:
    beq     $zero, $zero, lbl_8090691C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f18
lbl_80906910:
    nop
    bltz    t8, lbl_80906904
    nop
lbl_8090691C:
    ctc1    t7, $f31
    sb      t8, 0x0B09(a1)             # 00000B09
    nop
lbl_80906928:
    lwc1    $f4, 0x0024(t0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f8, $f4
    lwc1    $f4, 0x0028(t0)            # 00000028
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   a0, s1, 0x01B8             # a0 = 000001B8
    mfc1    t1, $f8
    trunc.w.s $f8, $f4
    lwc1    $f4, 0x002C(t0)            # 0000002C
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f10                   # $f10 = 0.00
    mfc1    t6, $f8
    trunc.w.s $f8, $f4
    sw      t0, 0x0034($sp)
    sll     t7, t6, 16
    cvt.s.w $f16, $f10
    sra     t8, t7, 16
    mtc1    t8, $f10                   # $f10 = NaN
    mfc1    t2, $f8
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    add.s   $f6, $f16, $f0
    sll     t3, t2, 16
    sra     t4, t3, 16
    cvt.s.w $f16, $f10
    mtc1    t4, $f10                   # $f10 = 0.00
    addiu   t6, $zero, 0x00EB          # t6 = 000000EB
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    trunc.w.s $f18, $f6
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    add.s   $f6, $f16, $f0
    mfc1    a1, $f18
    cvt.s.w $f16, $f10
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f6
    add.s   $f6, $f16, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lw      t0, 0x0034($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x0024(t0)            # 00000024
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   a0, s1, 0x01CC             # a0 = 000001CC
    trunc.w.s $f8, $f4
    lwc1    $f4, 0x0028(t0)            # 00000028
    mfc1    t2, $f8
    trunc.w.s $f8, $f4
    lwc1    $f4, 0x002C(t0)            # 0000002C
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f10                   # $f10 = 0.00
    mfc1    t7, $f8
    trunc.w.s $f8, $f4
    sw      t1, 0x001C($sp)
    sll     t8, t7, 16
    cvt.s.w $f16, $f10
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    mfc1    t3, $f8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sub.s   $f6, $f16, $f0
    sll     t4, t3, 16
    sra     t5, t4, 16
    cvt.s.w $f16, $f10
    mtc1    t5, $f10                   # $f10 = 0.00
    addiu   t7, $zero, 0x00EB          # t7 = 000000EB
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    trunc.w.s $f18, $f6
    sw      t9, 0x0018($sp)
    sub.s   $f6, $f16, $f0
    mfc1    a1, $f18
    cvt.s.w $f16, $f10
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f6
    sub.s   $f6, $f16, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lui     $at, %hi(var_80908350)     # $at = 80910000
    lwc1    $f4, %lo(var_80908350)($at)
    addiu   a0, s1, 0x00BC             # a0 = 000000BC
    lui     a1, 0x4448                 # a1 = 44480000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lh      t2, 0x00B6(s1)             # 000000B6
    lui     $at, %hi(var_80908354)     # $at = 80910000
    lui     a1, 0x3F90                 # a1 = 3F900000
    addiu   t3, t2, 0x0320             # t3 = 00000320
    sh      t3, 0x00B6(s1)             # 000000B6
    lwc1    $f8, %lo(var_80908354)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0xA3D7             # a1 = 3F90A3D7
    addiu   a0, s1, 0x01AC             # a0 = 000001AC
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     a2, 0x3B44                 # a2 = 3B440000
    ori     a2, a2, 0x9BA6             # a2 = 3B449BA6
    addiu   a0, s1, 0x0184             # a0 = 00000184
    jal     func_8006385C
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a2, 0x3BC4                 # a2 = 3BC40000
    ori     a2, a2, 0x9BA6             # a2 = 3BC49BA6
    addiu   a0, s1, 0x0188             # a0 = 00000188
    jal     func_8006385C
    lui     a1, 0x4120                 # a1 = 41200000
    lui     $at, %hi(var_80908358)     # $at = 80910000
    lwc1    $f10, %lo(var_80908358)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0190             # a0 = 00000190
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lui     $at, %hi(var_8090835C)     # $at = 80910000
    lwc1    $f16, %lo(var_8090835C)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0194             # a0 = 00000194
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lui     $at, %hi(var_80908360)     # $at = 80910000
    lwc1    $f6, %lo(var_80908360)($at)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0198             # a0 = 00000198
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     v0, %hi(var_809087C0)      # v0 = 80910000
    lh      v0, %lo(var_809087C0)(v0)
    lhu     t4, 0x0182(s1)             # 00000182
    lui     $at, 0x3F80                # $at = 3F800000
    subu    t6, v0, v0
    addiu   t7, t6, 0x0064             # t7 = 00000064
    subu    t5, v0, t4
    mtc1    t5, $f18                   # $f18 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    $at, $f6                   # $f6 = 1.00
    cvt.s.w $f4, $f18
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    a1, s0, $at
    lui     $at, 0xC37F                # $at = C37F0000
    cvt.s.w $f10, $f8
    div.s   $f16, $f4, $f10
    sub.s   $f0, $f6, $f16
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80906C84
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f8                   # $f8 = -255.00
    or      v1, $zero, $zero           # v1 = 00000000
    lui     a2, 0x0001                 # a2 = 00010000
    mul.s   $f4, $f8, $f0
    trunc.w.s $f10, $f4
    mfc1    a0, $f10
    nop
lbl_80906C18:
    sll     t9, v1,  1
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    addu    t1, s0, t9
    sra     v1, v1, 16
    addu    v0, t1, a2
    slti    $at, v1, 0x0003
    sh      a0, 0x0AB6(v0)             # 80910AB6
    sh      a0, 0x0ABC(v0)             # 80910ABC
    bne     $at, $zero, lbl_80906C18
    sh      a0, 0x0AB0(v0)             # 80910AB0
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f6                   # $f6 = -500.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    mul.s   $f16, $f6, $f0
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0AC2($at)            # 00010AC2
    lh      t4, 0x0AC2(a1)             # 00000AC2
    slti    $at, t4, 0xFED4
    beq     $at, $zero, lbl_80906C80
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1CC8($at)         # 00011CC8
lbl_80906C80:
    lw      $ra, 0x002C($sp)
lbl_80906C84:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80906C94:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0182(a0)             # 00000182
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   t7, t6, 0x0001             # t7 = 00000001
    andi    v0, t7, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x0014
    mov.s   $f0, $f2
    sh      t7, 0x0182(a0)             # 00000182
    or      v1, v0, $zero              # v1 = 00000001
    beq     $at, $zero, lbl_80906D00
    swc1    $f4, 0x0184(a0)            # 00000184
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80906CF0
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80906CF0:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    beq     $zero, $zero, lbl_80906D44
    div.s   $f0, $f8, $f16
lbl_80906D00:
    slti    $at, v1, 0x003C
    bnel    $at, $zero, lbl_80906D48
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80906D28
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_80906D28:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    sub.s   $f8, $f4, $f10
    div.s   $f18, $f8, $f16
    sub.s   $f0, $f2, $f18
lbl_80906D44:
    lui     $at, 0x437F                # $at = 437F0000
lbl_80906D48:
    mtc1    $at, $f6                   # $f6 = 255.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    v0, $f10                   # $f10 = 0.00
    mul.s   $f4, $f6, $f0
    lui     a1, %hi(func_80906DC4)     # a1 = 80900000
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   a1, a1, %lo(func_80906DC4) # a1 = 80906DC4
    swc1    $f2, 0x0190(a0)            # 00000190
    cvt.s.w $f8, $f10
    bgez    v0, lbl_80906D80
    swc1    $f4, 0x0194(a0)            # 00000194
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16
lbl_80906D80:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    nop
    c.le.s  $f18, $f8
    nop
    bc1f    lbl_80906DAC
    nop
    swc1    $f2, 0x0194(a0)            # 00000194
    jal     func_80904520
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_80906DAC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80906DC4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80906DD4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     $at, %hi(var_80908364)     # $at = 80910000
    lwc1    $f4, %lo(var_80908364)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lui     a1, 0x4300                 # a1 = 43000000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_80908368)     # $at = 80910000
    lwc1    $f6, %lo(var_80908368)($at)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0194             # a0 = 00000194
    lui     a1, 0x4300                 # a1 = 43000000
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f10                  # $f10 = 128.00
    lwc1    $f8, 0x0190(s0)            # 00000190
    addiu   a0, s0, 0x0184             # a0 = 00000184
    lui     a1, 0x4000                 # a1 = 40000000
    c.le.s  $f10, $f8
    lui     a2, 0x3C23                 # a2 = 3C230000
    bc1fl   lbl_80906E74
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006385C
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addiu   a0, s0, 0x0188             # a0 = 00000188
    jal     func_8006385C
    lui     a1, 0x4120                 # a1 = 41200000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80906E74:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2025          # a1 = 00002025
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80906E90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x01B0(a0)             # 000001B0
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t6, 0x001C(a0)             # 0000001C
    beql    t6, $at, lbl_80906EE8
    lw      $ra, 0x0014($sp)
    lh      t7, 0x019C(a0)             # 0000019C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_80020F88
    nop
    lw      $ra, 0x0014($sp)
lbl_80906EE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80906EF4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0030($sp)
    lw      v1, 0x0030($sp)
    lw      t0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0xFFFF             # t8 = FA00FFFF
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    cfc1    t9, $f31
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t8, 0x0000(t0)             # 00000000
    ctc1    t2, $f31
    lwc1    $f4, 0x0198(s0)            # 00000198
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t7, 0xFB00                 # t7 = FB000000
    cvt.w.s $f6, $f4
    or      a3, $zero, $zero           # a3 = 00000000
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80906FB0
    mfc1    t2, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80906FA4
    nop
    mfc1    t2, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80906FBC
    or      t2, t2, $at                # t2 = 80000000
lbl_80906FA4:
    beq     $zero, $zero, lbl_80906FBC
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f6
lbl_80906FB0:
    nop
    bltz    t2, lbl_80906FA4
    nop
lbl_80906FBC:
    lui     $at, 0xC8FF                # $at = C8FF0000
    ori     $at, $at, 0xFF00           # $at = C8FFFF00
    andi    t4, t2, 0x00FF             # t4 = 000000FF
    ctc1    t9, $f31
    or      t5, t4, $at                # t5 = C8FFFFFF
    sw      t5, 0x0004(t0)             # 00000004
    lw      t1, 0x02D0(v1)             # 000002D0
    cfc1    t8, $f31
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(t1)             # 00000000
    ctc1    t9, $f31
    lwc1    $f8, 0x0198(s0)            # 00000198
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f10, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80907058
    mfc1    t9, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8090704C
    nop
    mfc1    t9, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907064
    or      t9, t9, $at                # t9 = 80000000
lbl_8090704C:
    beq     $zero, $zero, lbl_80907064
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f10
lbl_80907058:
    nop
    bltz    t9, lbl_8090704C
    nop
lbl_80907064:
    lui     $at, 0x0064                # $at = 00640000
    ori     $at, $at, 0xFF00           # $at = 0064FF00
    andi    t3, t9, 0x00FF             # t3 = 000000FF
    ctc1    t8, $f31
    or      t4, t3, $at                # t4 = 0064FFFF
    sw      t4, 0x0004(t1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t5, 0x02D0(v1)             # 000002D0
    lw      a0, 0x003C($sp)
    jal     func_8008A414
    sw      t5, 0x0018($sp)
    lw      v1, 0x0030($sp)
    sw      v0, 0x02D0(v1)             # 000002D0
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_809070C0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    addiu   s0, $zero, 0x00C8          # s0 = 000000C8
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    lw      t6, 0x009C(s2)             # 0000009C
    multu   t6, s0
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    mul.s   $f6, $f0, $f4
    neg.s   $f8, $f6
    mul.s   $f16, $f8, $f10
    swc1    $f16, 0x004C($sp)
    lw      t7, 0x009C(s2)             # 0000009C
    multu   t7, s0
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f18                  # $f18 = 120.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    mul.s   $f4, $f0, $f18
    nop
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0050($sp)
    lw      t8, 0x009C(s2)             # 0000009C
    multu   t8, s0
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0054($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFEC
    or      a2, a1, $zero              # a2 = FFFFFFEC
    addiu   a0, s1, 0x0024             # a0 = 00000024
    jal     func_80022400
    lw      a3, 0x0000(s2)             # 00000000
    lw      t0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    cfc1    t3, $f31
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t2, 0x0000(t0)             # 00000000
    ctc1    t4, $f31
    lwc1    $f6, 0x0198(s1)            # 00000198
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t9, 0xFB00                 # t9 = FB000000
    cvt.w.s $f8, $f6
    or      a0, s2, $zero              # a0 = 00000000
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80907238
    mfc1    t4, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8090722C
    nop
    mfc1    t4, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907244
    or      t4, t4, $at                # t4 = 80000000
lbl_8090722C:
    beq     $zero, $zero, lbl_80907244
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f8
lbl_80907238:
    nop
    bltz    t4, lbl_8090722C
    nop
lbl_80907244:
    andi    t6, t4, 0x00FF             # t6 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t3, $f31
    or      t7, t6, $at                # t7 = FFFFFFFF
    sw      t7, 0x0004(t0)             # 00000004
    lw      t1, 0x02D0(s0)             # 000002D0
    cfc1    t2, $f31
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(t1)             # 00000000
    ctc1    t3, $f31
    lwc1    $f10, 0x0198(s1)           # 00000198
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f10
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_809072DC
    mfc1    t3, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t3, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_809072D0
    nop
    mfc1    t3, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809072E8
    or      t3, t3, $at                # t3 = 80000000
lbl_809072D0:
    beq     $zero, $zero, lbl_809072E8
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f16
lbl_809072DC:
    nop
    bltz    t3, lbl_809072D0
    nop
lbl_809072E8:
    lui     $at, 0x9600                # $at = 96000000
    ori     $at, $at, 0x6400           # $at = 96006400
    andi    t5, t3, 0x00FF             # t5 = 000000FF
    ctc1    t2, $f31
    or      t6, t5, $at                # t6 = 960064FF
    sw      t6, 0x0004(t1)             # 00000004
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    sw      s1, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t7, 0x02D0(s0)             # 000002D0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8008A414
    sw      t7, 0x0018($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
    jal     func_8008C9C0
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80907344:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s1, 0x0038($sp)
    mtc1    $at, $f12                  # $f12 = 1.00
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lw      t6, 0x009C(a1)             # 0000009C
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  1
    sw      t7, 0x00D4($sp)
    lwc1    $f2, 0x0184(s1)            # 00000184
    lui     $at, %hi(var_8090836C)     # $at = 80910000
    c.le.s  $f12, $f2
    sub.s   $f18, $f16, $f2
    bc1fl   lbl_809073A4
    sub.s   $f6, $f12, $f2
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_809073A8
    swc1    $f4, 0x00D0($sp)
    sub.s   $f6, $f12, $f2
lbl_809073A4:
    swc1    $f6, 0x00D0($sp)
lbl_809073A8:
    lwc1    $f0, 0x0188(s1)            # 00000188
    c.le.s  $f12, $f0
    nop
    bc1fl   lbl_809073CC
    sub.s   $f10, $f12, $f0
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_809073D0
    swc1    $f8, 0x00CC($sp)
    sub.s   $f10, $f12, $f0
lbl_809073CC:
    swc1    $f10, 0x00CC($sp)
lbl_809073D0:
    lwc1    $f4, %lo(var_8090836C)($at)
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    div.s   $f6, $f18, $f4
    lw      s0, 0x0000(a1)             # 00000000
    beq     v0, $at, lbl_80907448
    sub.s   $f0, $f12, $f6
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80907448
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80907448
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80907448
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80907448
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lwc1    $f8, 0x018C(s1)            # 0000018C
    lh      v0, 0x001C(s1)             # 0000001C
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sll     t1, t9, 16
    sra     t2, t1, 16
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f8, $f6
    swc1    $f10, 0x018C(s1)           # 0000018C
lbl_80907448:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80907488
    lw      a0, 0x0000(a1)             # 00000000
    add.s   $f18, $f0, $f0
    lwc1    $f16, 0x018C(s1)           # 0000018C
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    sub.s   $f10, $f16, $f6
    swc1    $f10, 0x018C(s1)           # 0000018C
    lw      a0, 0x0000(a1)             # 00000000
lbl_80907488:
    swc1    $f0, 0x00C4($sp)
    jal     func_8007E2C0
    sw      a1, 0x00E4($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     a1, 0xE300                 # a1 = E3000000
    beq     v0, $at, lbl_80907640
    ori     a1, a1, 0x1801             # a1 = E3001801
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80907714
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_809077E4
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_809078B4
    lui     t9, 0xFA00                 # t9 = FA000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x0080             # t8 = FA000080
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     $at, 0x437F                # $at = 437F0000
    sw      t8, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x00C4($sp)
    mtc1    $at, $f18                  # $f18 = 255.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f18, $f4
    cfc1    t9, $f31
    ctc1    a0, $f31
    nop
    cvt.w.s $f16, $f8
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    beql    a0, $zero, lbl_80907568
    mfc1    a0, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    a0, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    bne     a0, $zero, lbl_8090755C
    nop
    mfc1    a0, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907574
    or      a0, a0, $at                # a0 = 80000000
lbl_8090755C:
    beq     $zero, $zero, lbl_80907574
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    mfc1    a0, $f16
lbl_80907568:
    nop
    bltz    a0, lbl_8090755C
    nop
lbl_80907574:
    ctc1    t9, $f31
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lwc1    $f6, 0x0194(s1)            # 00000194
    andi    a0, a0, 0x00FF             # a0 = 000000FF
    cfc1    t4, $f31
    ctc1    t5, $f31
    sll     t1, a0, 24
    lui     $at, 0x00FF                # $at = 00FF0000
    cvt.w.s $f10, $f6
    or      t2, t1, $at                # t2 = 00FF0000
    ori     t3, t2, 0xFF00             # t3 = 00FFFF00
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t5, $f31
    lui     t1, 0xFB00                 # t1 = FB000000
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_80907600
    mfc1    t5, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t5, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_809075F4
    nop
    mfc1    t5, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8090760C
    or      t5, t5, $at                # t5 = 80000000
lbl_809075F4:
    beq     $zero, $zero, lbl_8090760C
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f10
lbl_80907600:
    nop
    bltz    t5, lbl_809075F4
    nop
lbl_8090760C:
    or      t6, t5, $zero              # t6 = FFFFFFFF
    andi    t7, t6, 0x00FF             # t7 = 000000FF
    or      t8, t3, t7                 # t8 = 00FFFFFF
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ctc1    t4, $f31
    sll     t4, a0, 16
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    ori     t5, t4, 0xFFFF             # t5 = 0000FFFF
    sw      t5, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8090797C
    sw      t1, 0x0000(v1)             # 00000000
lbl_80907640:
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0x0080             # t3 = FA000080
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    cfc1    t7, $f31
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t3, 0x0000(v0)             # 00000000
    ctc1    t8, $f31
    lwc1    $f18, 0x0194(s1)           # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t5, 0xFB00                 # t5 = FB000000
    cvt.w.s $f4, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_809076D0
    mfc1    t8, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809076C4
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809076DC
    or      t8, t8, $at                # t8 = 80000000
lbl_809076C4:
    beq     $zero, $zero, lbl_809076DC
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f4
lbl_809076D0:
    nop
    bltz    t8, lbl_809076C4
    nop
lbl_809076DC:
    andi    t1, t8, 0x00FF             # t1 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t7, $f31
    or      t2, t1, $at                # t2 = FFFFFFFF
    sw      t2, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xC8FF                 # t6 = C8FF0000
    ori     t6, t6, 0x00FF             # t6 = C8FF00FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8090797C
    nop
lbl_80907714:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x0080             # t7 = 000000FF
    cfc1    t8, $f31
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t7, 0x0000(v0)             # 00000000
    ctc1    t9, $f31
    lwc1    $f8, 0x0194(s1)            # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t6, 0xFB00                 # t6 = FB000000
    cvt.w.s $f16, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_809077A0
    mfc1    t9, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80907794
    nop
    mfc1    t9, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_809077AC
    or      t9, t9, $at                # t9 = 80000000
lbl_80907794:
    beq     $zero, $zero, lbl_809077AC
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16
lbl_809077A0:
    nop
    bltz    t9, lbl_80907794
    nop
lbl_809077AC:
    andi    t2, t9, 0x00FF             # t2 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t8, $f31
    or      t4, t2, $at                # t4 = FFFFFFFF
    sw      t4, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFF96                 # t3 = FF960000
    ori     t3, t3, 0x00FF             # t3 = FF9600FF
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8090797C
    nop
lbl_809077E4:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x0080             # t8 = FFFFFFFF
    cfc1    t9, $f31
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t8, 0x0000(v0)             # 00000000
    ctc1    t1, $f31
    lwc1    $f6, 0x0194(s1)            # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t3, 0xFB00                 # t3 = FB000000
    cvt.w.s $f10, $f6
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80907870
    mfc1    t1, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t1, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80907864
    nop
    mfc1    t1, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8090787C
    or      t1, t1, $at                # t1 = 80000000
lbl_80907864:
    beq     $zero, $zero, lbl_8090787C
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f10
lbl_80907870:
    nop
    bltz    t1, lbl_80907864
    nop
lbl_8090787C:
    andi    t4, t1, 0x00FF             # t4 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t9, $f31
    or      t5, t4, $at                # t5 = FFFFFFFF
    sw      t5, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x00C8                 # t7 = 00C80000
    ori     t7, t7, 0x00FF             # t7 = 00C800FF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8090797C
    nop
lbl_809078B4:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x0080             # t9 = FFFFFFFF
    cfc1    t1, $f31
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t9, 0x0000(v0)             # 00000000
    ctc1    t2, $f31
    lwc1    $f18, 0x0194(s1)           # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t7, 0xFB00                 # t7 = FB000000
    cvt.w.s $f4, $f18
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80907940
    mfc1    t2, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t2, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80907934
    nop
    mfc1    t2, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8090794C
    or      t2, t2, $at                # t2 = 80000000
lbl_80907934:
    beq     $zero, $zero, lbl_8090794C
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f4
lbl_80907940:
    nop
    bltz    t2, lbl_80907934
    nop
lbl_8090794C:
    andi    t5, t2, 0x00FF             # t5 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t1, $f31
    or      t6, t5, $at                # t6 = FFFFFFFF
    sw      t6, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFF32                 # t8 = FF320000
    ori     t8, t8, 0x00FF             # t8 = FF3200FF
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
lbl_8090797C:
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t1, $zero, 0x00C0          # t1 = 000000C0
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      a1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      a1, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f12, 0x0024(s1)           # 00000024
    lw      a2, 0x002C(s1)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f8, $f16
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t3, 0x00E4($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0088($sp)
    lw      a1, 0x0088($sp)
    sw      v0, 0x0004(a1)             # 00000004
    jal     func_800AA6EC
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f0, 0x018C(s1)            # 0000018C
    lw      t9, 0x00E4($sp)
    lw      a2, 0x00D4($sp)
    add.s   $f6, $f0, $f0
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t2, $zero, 0x0100          # t2 = 00000100
    addiu   t4, $zero, 0x0100          # t4 = 00000100
    trunc.w.s $f10, $f6
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    mfc1    a3, $f10
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      a2, 0x001C($sp)
    sll     a3, a3, 16
    sra     a3, a3, 16
    andi    a3, a3, 0x01FF             # a3 = 00000000
    subu    a3, $zero, a3
    sw      a3, 0x0020($sp)
    sw      t3, 0x0028($sp)
    sw      t6, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t2, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0084($sp)
    lw      t0, 0x0084($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0x4366                # $at = 43660000
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f18, 0x0184(s1)           # 00000184
    mtc1    $at, $f4                   # $f4 = 230.00
    mfc1    a2, $f12
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f18, $f4
    jal     func_800AA7F4
    nop
    lh      t7, 0x019E(s1)             # 0000019E
    lwc1    $f6, 0x00D0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x42C8                # $at = 42C80000
    cvt.s.w $f16, $f8
    mtc1    $at, $f18                  # $f18 = 100.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f16, $f6
    div.s   $f4, $f10, $f18
    add.s   $f12, $f4, $f14
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x00E4($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0080($sp)
    lw      a1, 0x0080($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x01A0             # a2 = 060001A0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_800AA724
    sw      a2, 0x0040($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f16, 0x0190(s1)           # 00000190
    or      a1, $zero, $zero           # a1 = 00000000
    c.lt.s  $f8, $f16
    nop
    bc1fl   lbl_8090817C
    lw      $ra, 0x003C($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t9, 0xFA00                 # t9 = FA000000
    beq     v0, $at, lbl_80907D10
    ori     t9, t9, 0x0080             # t9 = FA000080
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80907DDC
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80907EAC
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_80907F7C
    lui     t3, 0xFA00                 # t3 = FA000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    lui     $at, 0x437F                # $at = 437F0000
    sw      t6, 0x0000(v0)             # 00000000
    lwc1    $f10, 0x00C4($sp)
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f18, $f6, $f10
    cfc1    t3, $f31
    ctc1    a0, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    beql    a0, $zero, lbl_80907C38
    mfc1    a0, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    a0, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    a0, $f31
    nop
    andi    a0, a0, 0x0078             # a0 = 00000000
    bne     a0, $zero, lbl_80907C2C
    nop
    mfc1    a0, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907C44
    or      a0, a0, $at                # a0 = 80000000
lbl_80907C2C:
    beq     $zero, $zero, lbl_80907C44
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    mfc1    a0, $f4
lbl_80907C38:
    nop
    bltz    a0, lbl_80907C2C
    nop
lbl_80907C44:
    ctc1    t3, $f31
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lwc1    $f8, 0x0190(s1)            # 00000190
    andi    a0, a0, 0x00FF             # a0 = 000000FF
    cfc1    t1, $f31
    ctc1    t2, $f31
    sll     t7, a0, 24
    lui     $at, 0x00FF                # $at = 00FF0000
    cvt.w.s $f16, $f8
    or      t8, t7, $at                # t8 = 00FF0000
    ori     t9, t8, 0xFF00             # t9 = 00FFFF00
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t2, $f31
    lui     t7, 0xFB00                 # t7 = FB000000
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80907CD0
    mfc1    t2, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    t2, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80907CC4
    nop
    mfc1    t2, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907CDC
    or      t2, t2, $at                # t2 = 80000000
lbl_80907CC4:
    beq     $zero, $zero, lbl_80907CDC
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f16
lbl_80907CD0:
    nop
    bltz    t2, lbl_80907CC4
    nop
lbl_80907CDC:
    or      t4, t2, $zero              # t4 = FFFFFFFF
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    or      t6, t9, t5                 # t6 = 00FFFFFF
    sw      t6, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ctc1    t1, $f31
    sll     t1, a0, 16
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    ori     t2, t1, 0xFFFF             # t2 = 0000FFFF
    sw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80908044
    sw      t7, 0x0000(v1)             # 00000000
lbl_80907D10:
    lw      v0, 0x02D0(s0)             # 000002D0
    cfc1    t5, $f31
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    ctc1    t6, $f31
    lwc1    $f6, 0x0194(s1)            # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t2, 0xFB00                 # t2 = FB000000
    cvt.w.s $f10, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80907D98
    mfc1    t6, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80907D8C
    nop
    mfc1    t6, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907DA4
    or      t6, t6, $at                # t6 = 80000000
lbl_80907D8C:
    beq     $zero, $zero, lbl_80907DA4
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10
lbl_80907D98:
    nop
    bltz    t6, lbl_80907D8C
    nop
lbl_80907DA4:
    andi    t7, t6, 0x00FF             # t7 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t5, $f31
    or      t8, t7, $at                # t8 = FFFFFFFF
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xC8FF                 # t4 = C8FF0000
    ori     t4, t4, 0x00FF             # t4 = C8FF00FF
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80908048
    lw      t3, 0x00D4($sp)
lbl_80907DDC:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0080             # t5 = 000000FF
    cfc1    t6, $f31
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t5, 0x0000(v0)             # 00000000
    ctc1    t3, $f31
    lwc1    $f18, 0x0194(s1)           # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t4, 0xFB00                 # t4 = FB000000
    cvt.w.s $f4, $f18
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80907E68
    mfc1    t3, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t3, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80907E5C
    nop
    mfc1    t3, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907E74
    or      t3, t3, $at                # t3 = 80000000
lbl_80907E5C:
    beq     $zero, $zero, lbl_80907E74
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f4
lbl_80907E68:
    nop
    bltz    t3, lbl_80907E5C
    nop
lbl_80907E74:
    andi    t8, t3, 0x00FF             # t8 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t6, $f31
    or      t1, t8, $at                # t1 = FFFFFFFF
    sw      t1, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFF96                 # t9 = FF960000
    ori     t9, t9, 0x00FF             # t9 = FF9600FF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80908048
    lw      t3, 0x00D4($sp)
lbl_80907EAC:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0080             # t6 = FFFFFFFF
    cfc1    t3, $f31
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0000(v0)             # 00000000
    ctc1    t7, $f31
    lwc1    $f8, 0x0194(s1)            # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t9, 0xFB00                 # t9 = FB000000
    cvt.w.s $f16, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80907F38
    mfc1    t7, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80907F2C
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80907F44
    or      t7, t7, $at                # t7 = 80000000
lbl_80907F2C:
    beq     $zero, $zero, lbl_80907F44
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f16
lbl_80907F38:
    nop
    bltz    t7, lbl_80907F2C
    nop
lbl_80907F44:
    andi    t1, t7, 0x00FF             # t1 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t3, $f31
    or      t2, t1, $at                # t2 = FFFFFFFF
    sw      t2, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x00C8                 # t5 = 00C80000
    ori     t5, t5, 0x00FF             # t5 = 00C800FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80908048
    lw      t3, 0x00D4($sp)
lbl_80907F7C:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t3, t3, 0x0080             # t3 = FFFFFFFF
    cfc1    t7, $f31
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t3, 0x0000(v0)             # 00000000
    ctc1    t8, $f31
    lwc1    $f6, 0x0194(s1)            # 00000194
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t5, 0xFB00                 # t5 = FB000000
    cvt.w.s $f10, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80908008
    mfc1    t8, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80907FFC
    nop
    mfc1    t8, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80908014
    or      t8, t8, $at                # t8 = 80000000
lbl_80907FFC:
    beq     $zero, $zero, lbl_80908014
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f10
lbl_80908008:
    nop
    bltz    t8, lbl_80907FFC
    nop
lbl_80908014:
    andi    t2, t8, 0x00FF             # t2 = 000000FF
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    ctc1    t7, $f31
    or      t4, t2, $at                # t4 = FFFFFFFF
    sw      t4, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFF32                 # t6 = FF320000
    ori     t6, t6, 0x00FF             # t6 = FF3200FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
lbl_80908044:
    lw      t3, 0x00D4($sp)
lbl_80908048:
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    sll     t7, t3,  1
    sw      t7, 0x00D4($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    addiu   t5, $zero, 0x0100          # t5 = 00000100
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lwc1    $f18, 0x018C(s1)           # 0000018C
    lw      t2, 0x00E4($sp)
    lw      a2, 0x00D4($sp)
    trunc.w.s $f4, $f18
    lw      a0, 0x0000(t2)             # 000000FF
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    mfc1    a3, $f4
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    andi    a3, a3, 0x01FF             # a3 = 00000000
    subu    a3, $zero, a3
    sw      a3, 0x0020($sp)
    sw      a2, 0x001C($sp)
    sw      t7, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t9, 0x0010($sp)
    jal     func_8007EB84
    sw      v1, 0x0050($sp)
    lw      t0, 0x0050($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    sw      v0, 0x0004(t0)             # 00000004
    lwc1    $f8, 0x0188(s1)            # 00000188
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    mul.s   $f14, $f8, $f16
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t8, 0x01A0(s1)             # 000001A0
    lwc1    $f18, 0x00CC($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    t8, $f6                    # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 100.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f10, $f6
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f4, $f10, $f18
    div.s   $f16, $f4, $f8
    add.s   $f12, $f16, $f6
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0024             # t2 = DB060024
    addiu   t1, s1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(s1)             # 00000000
    lw      t4, 0x00E4($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0040($sp)
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
lbl_8090817C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_8090818C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   t7, t6, 0x0002             # t7 = 00000002
    sltiu   $at, t7, 0x000D
    beq     $at, $zero, lbl_80908204
    sll     t7, t7,  2
    lui     $at, %hi(var_80908370)     # $at = 80910000
    addu    $at, $at, t7
    lw      t7, %lo(var_80908370)($at)
    jr      t7
    nop
var_809081BC:
    sw      a0, 0x0018($sp)
    jal     func_80906EF4
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80907344
    lw      a1, 0x001C($sp)
    beq     $zero, $zero, lbl_80908208
    lw      $ra, 0x0014($sp)
var_809081DC:
    jal     func_80907344
    nop
    beq     $zero, $zero, lbl_80908208
    lw      $ra, 0x0014($sp)
var_809081EC:
    jal     func_80906EF4
    nop
    beq     $zero, $zero, lbl_80908208
    lw      $ra, 0x0014($sp)
var_809081FC:
    jal     func_809070C0
    nop
lbl_80908204:
    lw      $ra, 0x0014($sp)
lbl_80908208:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80908220: .word 0x005D0700, 0x00000000, 0x00480000, 0x000001E0
.word func_8090452C
.word func_8090469C
.word func_80906E90
.word func_8090818C
var_80908240: .word 0xC85003E8, 0xB0F40FA0, 0xB0F80320, 0x30FC0FA0

.section .rodata

var_80908250: .word var_809047A8
.word lbl_809047F8
.word var_809047C4
.word var_809047D0
.word var_809047A8
.word var_809047A8
.word var_809047A8
var_8090826C: .word 0x3E6B851F
var_80908270: .word 0x3F19999A
var_80908274: .word 0x3E99999A
var_80908278: .word 0x3E99999A
var_8090827C: .word var_80904908
.word var_80904908
.word lbl_8090483C
.word var_80904908
.word lbl_8090483C
.word var_80904908
.word lbl_8090483C
.word var_80904908
.word var_80904908
.word var_80904908
var_809082A4: .word 0x3E99999A
var_809082A8: .word 0x3E99999A
var_809082AC: .word 0x3E99999A
var_809082B0: .word 0x3D4C63F1
var_809082B4: .word 0x3D9DB22D
var_809082B8: .word 0x3DB851EC
var_809082BC: .word 0x3DCCCCCD
var_809082C0: .word 0xBDCCCCCD
var_809082C4: .word 0xBDCCCCCD
var_809082C8: .word 0x3A83126F
var_809082CC: .word 0x3A83126F
var_809082D0: .word 0x3A83126F
var_809082D4: .word 0x3DCCCCCD
var_809082D8: .word var_809052FC
.word var_809052EC
.word var_809052DC
.word var_809052DC
.word var_809052DC
.word var_8090530C
.word var_809052DC
.word var_809052DC
.word var_809052DC
.word var_809052DC
.word var_809052DC
.word var_809052DC
.word var_809052DC
var_8090830C: .word 0x444EC000
var_80908310: .word 0xC549C000
var_80908314: .word 0x3C23D70A
var_80908318: .word 0x3C23D70A
var_8090831C: .word 0x3C23D70A
var_80908320: .word 0x3C23D70A
var_80908324: .word 0x3DCCCCCD
var_80908328: .word 0x3C23D70A
var_8090832C: .word 0x3DCCCCCD
var_80908330: .word 0x3CA3D70A
var_80908334: .word 0x3C23D70A
var_80908338: .word 0x3DCCCCCD
var_8090833C: .word 0x3DCCCCCD
var_80908340: .word 0x3DCCCCCD
var_80908344: .word 0x3C656041
var_80908348: .word 0x3C23D70A
var_8090834C: .word 0x3C23D70A
var_80908350: .word 0x3DCCCCCD
var_80908354: .word 0x3C23D70A
var_80908358: .word 0x3C23D70A
var_8090835C: .word 0x3C23D70A
var_80908360: .word 0x3C23D70A
var_80908364: .word 0x3DCCCCCD
var_80908368: .word 0x3DCCCCCD
var_8090836C: .word 0x3FD9999A
var_80908370: .word var_809081EC
.word var_809081BC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word var_809081FC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word var_809081DC
.word 0x00000000, 0x00000000, 0x00000000

.bss

var_809087C0: .space 0x02
var_809087C2: .space 0x0E
