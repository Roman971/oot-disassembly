.section .text
func_809EDBB0:
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


func_809EDC08:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0154             # a1 = 00000154
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_809EE384)      # a3 = 809F0000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_809EE384)  # a3 = 809EE384
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lwc1    $f4, 0x0024(a2)            # 00000024
    lw      t9, 0x0170(a2)             # 00000170
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sh      t8, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0028(a2)            # 00000028
    lw      t5, 0x0170(a2)             # 00000170
    addiu   t9, $zero, 0x0013          # t9 = 00000013
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    addiu   t4, t3, 0x0015             # t4 = 00000015
    sh      t4, 0x0032(t5)             # 00000032
    lwc1    $f16, 0x002C(a2)           # 0000002C
    lw      t8, 0x0170(a2)             # 00000170
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    nop
    sh      t7, 0x0034(t8)             # 00000034
    lw      t0, 0x0170(a2)             # 00000170
    sh      t9, 0x0036(t0)             # 00000036
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809EDCB4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x004C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0040($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f18, 0x0040($sp)
    mul.s   $f4, $f16, $f0
    lui     $at, 0xC352                # $at = C3520000
    mtc1    $at, $f10                  # $f10 = -210.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a2, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f12, $f8, $f10
    addiu   a3, $zero, 0x00E2          # a3 = 000000E2
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f2, $f4, $f6
    mul.s   $f4, $f16, $f18
    lwc1    $f6, 0x002C(s0)            # 0000002C
    swc1    $f12, 0x0014($sp)
    swc1    $f2, 0x0010($sp)
    add.s   $f14, $f4, $f6
    swc1    $f14, 0x0018($sp)
    lh      t6, 0x0030(s0)             # 00000030
    sw      t6, 0x001C($sp)
    lh      t7, 0x0032(s0)             # 00000032
    sw      t7, 0x0020($sp)
    lh      t8, 0x0034(s0)             # 00000034
    sw      $zero, 0x0028($sp)
    jal     func_800253F0
    sw      t8, 0x0024($sp)
    beq     v0, $zero, lbl_809EDD5C
    lw      $ra, 0x003C($sp)
    beq     $zero, $zero, lbl_809EDD60
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809EDD5C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809EDD60:
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_809EDD6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, %hi(var_809EE394)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809EE394)  # a1 = 809EE394
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x425C                 # a1 = 425C0000
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_80020F04
    sw      t7, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EDC08
    lw      a1, 0x0024($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_809EDDE4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_809EDCB4
    lw      a1, 0x0024($sp)
    bnel    v0, $zero, lbl_809EDDE4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_809EDDE4
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809EDDE4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EDDF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x37D8             # a2 = 060037D8
    lw      a0, 0x0018($sp)
    jal     func_809EDBB0
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_809EE3AC)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809EE3AC)  # a1 = 809EE3AC
    jal     func_80063F7C
    lw      a0, 0x0018($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EDE3C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_809EDE84
    nop
    jal     func_809EDD6C
    lw      a1, 0x0024($sp)
    bnel    v0, $zero, lbl_809EDEB0
    lw      a0, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EDEF0
    lw      $ra, 0x001C($sp)
lbl_809EDE84:
    bne     v0, $zero, lbl_809EDEAC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EDDF8
    lw      a1, 0x0024($sp)
    bnel    v0, $zero, lbl_809EDEB0
    lw      a0, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EDEF0
    lw      $ra, 0x001C($sp)
lbl_809EDEAC:
    lw      a0, 0x0024($sp)
lbl_809EDEB0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    sb      v0, 0x01BC(s0)             # 000001BC
    lb      t6, 0x01BC(s0)             # 000001BC
    bgez    t6, lbl_809EDEE4
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EDEF0
    lw      $ra, 0x001C($sp)
lbl_809EDEE4:
    jal     func_809EDF58
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809EDEF0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EDF00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_809EDF34
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      v0, 0x001C(a3)             # 0000001C
lbl_809EDF34:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_809EDF48
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a3, 0x0154             # a1 = 00000154
lbl_809EDF48:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EDF58:
    lui     t6, %hi(func_809EDF6C)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EDF6C) # t6 = 809EDF6C
    sw      t6, 0x01B4(a0)             # 000001B4
    jr      $ra
    nop


func_809EDF6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    jal     func_80081688
    lb      a1, 0x01BC(s0)             # 000001BC
    beql    v0, $zero, lbl_809EDFDC
    lw      $ra, 0x001C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_809EDFBC
    nop
    jal     func_809EDFEC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EDFCC
    nop
lbl_809EDFBC:
    bne     v0, $zero, lbl_809EDFCC
    nop
    jal     func_809EE064
    or      a0, s0, $zero              # a0 = 00000000
lbl_809EDFCC:
    lui     t6, %hi(func_809EE228)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EE228) # t6 = 809EE228
    sw      t6, 0x0134(s0)             # 00000134
    lw      $ra, 0x001C($sp)
lbl_809EDFDC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EDFEC:
    lui     t6, %hi(func_809EE000)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EE000) # t6 = 809EE000
    sw      t6, 0x01B4(a0)             # 000001B4
    jr      $ra
    nop


func_809EE000:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x01B8(a3)             # 000001B8
    bgtzl   t6, lbl_809EE058
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x0165(a3)             # 00000165
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809EE048
    lw      a0, 0x001C($sp)
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sb      t8, 0x0165(a3)             # 00000165
    beq     $zero, $zero, lbl_809EE054
    sh      t9, 0x01B8(a3)             # 000001B8
lbl_809EE048:
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a3, 0x0154             # a2 = 00000154
lbl_809EE054:
    lw      $ra, 0x0014($sp)
lbl_809EE058:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EE064:
    lui     t6, %hi(func_809EE078)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EE078) # t6 = 809EE078
    sw      t6, 0x01B4(a0)             # 000001B4
    jr      $ra
    nop


func_809EE078:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      v0, 0x0118(a0)             # 00000118
    lh      t6, 0x01B8(v0)             # 000001B8
    blezl   t6, lbl_809EE0A0
    lw      $ra, 0x0014($sp)
    jal     func_809EE0AC
    nop
    lw      $ra, 0x0014($sp)
lbl_809EE0A0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EE0AC:
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     t6, %hi(func_809EE0E8)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EE0E8) # t6 = 809EE0E8
    sh      $zero, 0x01BA(a0)          # 000001BA
    sw      t6, 0x01B4(a0)             # 000001B4
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0070(a0)            # 00000070
    swc1    $f8, 0x0060(a0)            # 00000060
    jr      $ra
    nop


func_809EE0E8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_809EE19C
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_809EE19C
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t8, 0x01BA(s0)             # 000001BA
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    slti    $at, t8, 0x0003
    bnel    $at, $zero, lbl_809EE160
    mfc1    a2, $f0
    jal     func_809EE1C8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EE1B8
    lw      $ra, 0x0024($sp)
    mfc1    a2, $f0
lbl_809EE160:
    mfc1    a3, $f0
    swc1    $f0, 0x0010($sp)
    jal     func_80021E6C
    sw      t9, 0x0014($sp)
    lh      t0, 0x01BA(s0)             # 000001BA
    lh      t2, 0x01BA(s0)             # 000001BA
    lui     $at, %hi(var_809EE3BC)     # $at = 809F0000
    sll     t1, t0,  2
    addu    $at, $at, t1
    lwc1    $f6, %lo(var_809EE3BC)($at)
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x01BA(s0)             # 000001BA
    beq     $zero, $zero, lbl_809EE1B4
    swc1    $f6, 0x0060(s0)            # 00000060
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_809EE19C:
    addiu   t4, $zero, 0x001C          # t4 = 0000001C
    sw      t4, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
lbl_809EE1B4:
    lw      $ra, 0x0024($sp)
lbl_809EE1B8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809EE1C8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lwc1    $f4, 0x0080(a0)            # 00000080
    swc1    $f0, 0x006C(a0)            # 0000006C
    swc1    $f0, 0x0060(a0)            # 00000060
    sw      $zero, 0x01B4(a0)          # 000001B4
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_809EE1EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x01B8(a0)             # 000001B8
    blez    v0, lbl_809EE204
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01B8(a0)             # 000001B8
lbl_809EE204:
    lw      v0, 0x01B4(a0)             # 000001B4
    beql    v0, $zero, lbl_809EE21C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_809EE21C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EE228:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      a0, 0x0000(a2)             # 00000000
    sw      a2, 0x0034($sp)
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    lw      a2, 0x0034($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0030($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lb      t9, 0x01BC(t8)             # 000001BC
    sll     t0, t9,  4
    addu    t0, t0, t9
    sll     t0, t0,  2
    addu    t1, a2, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(a2)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      v1, 0x0024($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      t5, 0x0030($sp)
    lh      a0, 0x001C(t5)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    a0, $at, lbl_809EE2EC
    lw      v0, 0x02C0(v1)             # 000002C0
    beq     a0, $zero, lbl_809EE30C
    lui     t0, 0xDE00                 # t0 = DE000000
    beq     $zero, $zero, lbl_809EE32C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
lbl_809EE2EC:
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x4770             # t8 = 06004770
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_809EE32C
    lw      $ra, 0x0014($sp)
lbl_809EE30C:
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x36B0             # t1 = 060036B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_809EE32C:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop

.section .data

var_809EE340: .word 0x00E20100, 0x00000000, 0x00720000, 0x000001C0
.word func_809EDE3C
.word func_809EDF00
.word func_809EE1EC
.word 0x00000000
var_809EE360: .word \
0x04000000, 0x00000000, 0x00000000, 0x0001F820, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00190064
var_809EE384: .word 0x0A000900, 0x00000000, 0x00000001
.word var_809EE360
var_809EE394: .word \
0xB0F403E8, 0xB0F80190, 0xB0FC03E8, 0x801F0003, \
0xB04C0028, 0x485003E8
var_809EE3AC: .word 0xB0F403E8, 0xB0F80190, 0xB0FC03E8, 0x485003E8
var_809EE3BC: .word \
0x40800000, 0x402CCCCD, 0x3FD9999A, 0x00000000, \
0x00000000

.section .rodata


