.section .text
func_80AAE9B0:
    sw      a1, 0x0004($sp)
    lui     t6, %hi(func_80AAE9D8)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAE9D8) # t6 = 80AAE9D8
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80AAE9C8:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AAE9D8:
    sw      a1, 0x0004($sp)
    lh      t6, 0x014C(a0)             # 0000014C
    lui     t8, %hi(func_80AAEA04)     # t8 = 80AB0000
    andi    t7, $zero, 0x00FF          # t7 = 00000000
    beq     t6, $zero, lbl_80AAE9FC
    addiu   t8, t8, %lo(func_80AAEA04) # t8 = 80AAEA04
    sb      $zero, 0x0154(a0)          # 00000154
    sh      t7, 0x014C(a0)             # 0000014C
    sw      t8, 0x013C(a0)             # 0000013C
lbl_80AAE9FC:
    jr      $ra
    nop


func_80AAEA04:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0790(s1)             # 00000790
    addiu   $at, $zero, 0x0015         # $at = 00000015
    lh      t7, 0x0142(t6)             # 00000142
    bnel    t7, $at, lbl_80AAECEC
    lw      $ra, 0x001C($sp)
    lw      v1, 0x1C4C(s1)             # 00001C4C
    lui     $at, 0x4220                # $at = 42200000
    addiu   a0, $zero, 0x00DA          # a0 = 000000DA
    beq     v1, $zero, lbl_80AAECE8
    lui     v0, 0x8012                 # v0 = 80120000
    mtc1    $at, $f16                  # $f16 = 40.00
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
lbl_80AAEA4C:
    beq     v1, s0, lbl_80AAEA60
    nop
    lh      t8, 0x0000(v1)             # 00000000
    beql    a0, t8, lbl_80AAEA6C
    lwc1    $f4, 0x0024(v1)            # 00000024
lbl_80AAEA60:
    b       lbl_80AAECE0
    lw      v1, 0x0124(v1)             # 00000124
    lwc1    $f4, 0x0024(v1)            # 00000024
lbl_80AAEA6C:
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(v1)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f2, $f4, $f6
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f18, 0x002C(v1)           # 0000002C
    sub.s   $f12, $f8, $f10
    abs.s   $f0, $f2
    sub.s   $f14, $f18, $f4
    c.lt.s  $f0, $f16
    nop
    bc1tl   lbl_80AAEAB4
    abs.s   $f0, $f12
    lw      t9, 0x0000(v0)             # 8011BA00
    lh      t0, 0x12D8(t9)             # 000012D8
    beql    t0, $zero, lbl_80AAECE0
    lw      v1, 0x0124(v1)             # 00000124
    abs.s   $f0, $f12
lbl_80AAEAB4:
    c.lt.s  $f0, $f16
    nop
    bc1tl   lbl_80AAEAD8
    abs.s   $f0, $f14
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t2, 0x12D8(t1)             # 000012D8
    beql    t2, $zero, lbl_80AAECE0
    lw      v1, 0x0124(v1)             # 00000124
    abs.s   $f0, $f14
lbl_80AAEAD8:
    c.lt.s  $f0, $f16
    nop
    bc1tl   lbl_80AAEAFC
    or      a0, s1, $zero              # a0 = 00000000
    lw      t3, 0x0000(v0)             # 8011BA00
    lh      t4, 0x12D8(t3)             # 000012D8
    beql    t4, $zero, lbl_80AAECE0
    lw      v1, 0x0124(v1)             # 00000124
    or      a0, s1, $zero              # a0 = 00000000
lbl_80AAEAFC:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218EC
    sw      v1, 0x0024($sp)
    lw      v1, 0x0024($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D0F0
    sh      t5, 0x0140(v1)             # 00000140
    sh      v0, 0x0142(s0)             # 00000142
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0142(s0)             # 00000142
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_80AAF280)     # $at = 80AB0000
    lwc1    $f2, %lo(var_80AAF280)($at)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    swc1    $f2, 0x01C0(s0)            # 000001C0
    swc1    $f2, 0x01BC(s0)            # 000001BC
    swc1    $f2, 0x01B8(s0)            # 000001B8
    swc1    $f2, 0x019C(s0)            # 0000019C
    swc1    $f2, 0x0198(s0)            # 00000198
    swc1    $f2, 0x0194(s0)            # 00000194
    lwc1    $f0, 0x00EC(s1)            # 000000EC
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    swc1    $f0, 0x0158(s0)            # 00000158
    swc1    $f0, 0x0170(s0)            # 00000170
    lwc1    $f0, 0x00F0(s1)            # 000000F0
    lui     $at, 0xC448                # $at = C4480000
    mtc1    $at, $f8                   # $f8 = -800.00
    swc1    $f0, 0x015C(s0)            # 0000015C
    swc1    $f0, 0x0174(s0)            # 00000174
    lwc1    $f0, 0x00F4(s1)            # 000000F4
    lui     $at, %hi(var_80AAF284)     # $at = 80AB0000
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f0, 0x0160(s0)            # 00000160
    swc1    $f0, 0x0178(s0)            # 00000178
    lwc1    $f0, 0x00E0(s1)            # 000000E0
    lh      a1, 0x0142(s0)             # 00000142
    addiu   a2, s0, 0x0170             # a2 = 00000170
    swc1    $f0, 0x0164(s0)            # 00000164
    swc1    $f0, 0x017C(s0)            # 0000017C
    lwc1    $f0, 0x00E4(s1)            # 000000E4
    lwc1    $f10, 0x017C(s0)           # 0000017C
    addiu   a3, s0, 0x017C             # a3 = 0000017C
    swc1    $f0, 0x0168(s0)            # 00000168
    swc1    $f0, 0x0180(s0)            # 00000180
    lwc1    $f0, 0x00E8(s1)            # 000000E8
    swc1    $f12, 0x01AC(s0)           # 000001AC
    swc1    $f6, 0x01B0(s0)            # 000001B0
    swc1    $f0, 0x016C(s0)            # 0000016C
    swc1    $f0, 0x0184(s0)            # 00000184
    sub.s   $f0, $f10, $f12
    swc1    $f8, 0x01B4(s0)            # 000001B4
    lwc1    $f2, %lo(var_80AAF284)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f14                  # $f14 = 50.00
    lwc1    $f4, 0x0180(s0)            # 00000180
    abs.s   $f0, $f0
    lui     $at, %hi(var_80AAF288)     # $at = 80AB0000
    mul.s   $f18, $f0, $f2
    sub.s   $f0, $f4, $f14
    lwc1    $f16, %lo(var_80AAF288)($at)
    lwc1    $f8, 0x0184(s0)            # 00000184
    lwc1    $f4, 0x01AC(s0)            # 000001AC
    swc1    $f12, 0x0188(s0)           # 00000188
    abs.s   $f0, $f0
    swc1    $f18, 0x01A0(s0)           # 000001A0
    mul.s   $f6, $f0, $f2
    sub.s   $f0, $f8, $f16
    lwc1    $f18, 0x0170(s0)           # 00000170
    lwc1    $f8, 0x0174(s0)            # 00000174
    swc1    $f14, 0x018C(s0)           # 0000018C
    swc1    $f16, 0x0190(s0)           # 00000190
    abs.s   $f0, $f0
    swc1    $f6, 0x01A4(s0)            # 000001A4
    mul.s   $f10, $f0, $f2
    sub.s   $f0, $f18, $f4
    lwc1    $f4, 0x0178(s0)            # 00000178
    abs.s   $f0, $f0
    swc1    $f10, 0x01A8(s0)           # 000001A8
    mul.s   $f6, $f0, $f2
    lwc1    $f10, 0x01B0(s0)           # 000001B0
    sub.s   $f0, $f8, $f10
    swc1    $f6, 0x01C4(s0)            # 000001C4
    lwc1    $f6, 0x01B4(s0)            # 000001B4
    abs.s   $f0, $f0
    mul.s   $f18, $f0, $f2
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    swc1    $f18, 0x01C8(s0)           # 000001C8
    mul.s   $f8, $f0, $f2
    jal     func_8009D328
    swc1    $f8, 0x01CC(s0)            # 000001CC
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sh      t6, 0x010E(s0)             # 0000010E
    andi    a1, t6, 0xFFFF             # a1 = 0000000F
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, 0x0144(s0)             # 00000144
    jal     func_800646F0
    addiu   a0, $zero, 0x28D3          # a0 = 000028D3
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t9, %hi(func_80AAECFC)     # t9 = 80AB0000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, t9, %lo(func_80AAECFC) # t9 = 80AAECFC
    sb      t8, 0x0154(s0)             # 00000154
    b       lbl_80AAECE8
    sw      t9, 0x013C(s0)             # 0000013C
    lw      v1, 0x0124(v1)             # 00000124
lbl_80AAECE0:
    bne     v1, $zero, lbl_80AAEA4C
    nop
lbl_80AAECE8:
    lw      $ra, 0x001C($sp)
lbl_80AAECEC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AAECFC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0142(s0)             # 00000142
    addiu   a0, s0, 0x0170             # a0 = 00000170
    beq     t6, $zero, lbl_80AAED9C
    sw      t6, 0x0024($sp)
    lw      a1, 0x01AC(s0)             # 000001AC
    lw      a2, 0x01B8(s0)             # 000001B8
    jal     func_80064280
    lw      a3, 0x01C4(s0)             # 000001C4
    addiu   a0, s0, 0x0174             # a0 = 00000174
    lw      a1, 0x01B0(s0)             # 000001B0
    lw      a2, 0x01BC(s0)             # 000001BC
    jal     func_80064280
    lw      a3, 0x01C8(s0)             # 000001C8
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      a1, 0x01B4(s0)             # 000001B4
    lw      a2, 0x01C0(s0)             # 000001C0
    jal     func_80064280
    lw      a3, 0x01CC(s0)             # 000001CC
    addiu   a0, s0, 0x017C             # a0 = 0000017C
    lw      a1, 0x0188(s0)             # 00000188
    lw      a2, 0x0194(s0)             # 00000194
    jal     func_80064280
    lw      a3, 0x01A0(s0)             # 000001A0
    addiu   a0, s0, 0x0180             # a0 = 00000180
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x0198(s0)             # 00000198
    jal     func_80064280
    lw      a3, 0x01A4(s0)             # 000001A4
    addiu   a0, s0, 0x0184             # a0 = 00000184
    lw      a1, 0x0190(s0)             # 00000190
    lw      a2, 0x019C(s0)             # 0000019C
    jal     func_80064280
    lw      a3, 0x01A8(s0)             # 000001A8
    lh      t8, 0x0142(s0)             # 00000142
    sw      t8, 0x0024($sp)
lbl_80AAED9C:
    lw      a0, 0x002C($sp)
    lh      a1, 0x0026($sp)
    addiu   a2, s0, 0x0170             # a2 = 00000170
    jal     func_8009D328
    addiu   a3, s0, 0x017C             # a3 = 0000017C
    lw      a0, 0x002C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t9, 0x0144(s0)             # 00000144
    bnel    t9, v0, lbl_80AAEDE4
    lwc1    $f4, 0x017C(s0)            # 0000017C
    jal     func_800D6110
    lw      a0, 0x002C($sp)
    beql    v0, $zero, lbl_80AAEDE4
    lwc1    $f4, 0x017C(s0)            # 0000017C
    jal     func_800D6218
    lw      a0, 0x002C($sp)
    lwc1    $f4, 0x017C(s0)            # 0000017C
lbl_80AAEDE4:
    lwc1    $f6, 0x0188(s0)            # 00000188
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    lwc1    $f8, 0x0180(s0)            # 00000180
    lwc1    $f10, 0x018C(s0)           # 0000018C
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    lwc1    $f16, 0x0184(s0)           # 00000184
    lwc1    $f18, 0x0190(s0)           # 00000190
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0170(s0)            # 00000170
    lwc1    $f6, 0x01AC(s0)            # 000001AC
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    lwc1    $f8, 0x0174(s0)            # 00000174
    lwc1    $f10, 0x01B0(s0)           # 000001B0
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    lwc1    $f16, 0x0178(s0)           # 00000178
    lwc1    $f18, 0x01B4(s0)           # 000001B4
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AAEEC8
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x002C($sp)
    lui     t1, %hi(func_80AAEED8)     # t1 = 80AB0000
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    addiu   t1, t1, %lo(func_80AAEED8) # t1 = 80AAEED8
    sh      t0, 0x0148(s0)             # 00000148
    sw      t1, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
lbl_80AAEEC8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AAEED8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x0148(s0)             # 00000148
    bnel    t6, $zero, lbl_80AAEF58
    lw      $ra, 0x003C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sub.s   $f16, $f8, $f10
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x0168          # a3 = 00000168
    swc1    $f16, 0x0018($sp)
    lh      t7, 0x014A(s0)             # 0000014A
    jal     func_800253F0
    sw      t7, 0x0028($sp)
    beq     v0, $zero, lbl_80AAEF54
    sw      v0, 0x01D0(s0)             # 000001D0
    lui     t8, %hi(func_80AAEF68)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AAEF68) # t8 = 80AAEF68
    sw      t8, 0x013C(s0)             # 0000013C
lbl_80AAEF54:
    lw      $ra, 0x003C($sp)
lbl_80AAEF58:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AAEF68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0146(a2)             # 00000146
    beql    t6, $zero, lbl_80AAF014
    lw      $ra, 0x0014($sp)
    lh      v0, 0x014A(a2)             # 0000014A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80AAEFA4
    nop
    beq     v0, $at, lbl_80AAEFBC
    nop
    b       lbl_80AAEFD4
    lh      a1, 0x0142(a2)             # 00000142
lbl_80AAEFA4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t7, 0x0EF2(v0)             # 8011B4C2
    ori     t8, t7, 0x0002             # t8 = 00000002
    b       lbl_80AAEFD0
    sh      t8, 0x0EF2(v0)             # 8011B4C2
lbl_80AAEFBC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0EF2(v0)             # 8011B4C2
    ori     t0, t9, 0x0004             # t0 = 00000004
    sh      t0, 0x0EF2(v0)             # 8011B4C2
lbl_80AAEFD0:
    lh      a1, 0x0142(a2)             # 00000142
lbl_80AAEFD4:
    sw      a2, 0x0018($sp)
    jal     func_8009D21C
    lw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      t2, 0x0018($sp)
    lui     t1, %hi(func_80AAF020)     # t1 = 80AB0000
    addiu   t1, t1, %lo(func_80AAF020) # t1 = 80AAF020
    sw      t1, 0x013C(t2)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80AAF014:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AAF020:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    sw      a3, 0x0034($sp)
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_800218EC
    sw      v0, 0x002C($sp)
    lh      t6, 0x014A(s0)             # 0000014A
    lui     t8, %hi(var_80AAF240)      # t8 = 80AB0000
    lw      v0, 0x002C($sp)
    sll     t7, t6,  2
    addu    t8, t8, t7
    lw      t8, %lo(var_80AAF240)(t8)
    addiu   $at, $zero, 0x0033         # $at = 00000033
    or      a0, s0, $zero              # a0 = 00000000
    bne     t8, $at, lbl_80AAF0BC
    sw      t8, 0x0150(s0)             # 00000150
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x8010                 # t1 = 80100000
    lw      t1, -0x737C(t1)            # 800F8C84
    lw      t0, -0x5990(t0)            # 8011A670
    lui     t3, 0x8010                 # t3 = 80100000
    lbu     t3, -0x733B(t3)            # 800F8CC5
    and     t2, t0, t1
    lui     t6, 0x8010                 # t6 = 80100000
    srav    t4, t2, t3
    sll     t5, t4,  1
    addu    t6, t6, t5
    lhu     t6, -0x732C(t6)            # 800F8CD4
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addiu   t7, $zero, 0x0034          # t7 = 00000034
    bnel    t6, $at, lbl_80AAF0C0
    lw      t8, 0x066C(v0)             # 0000066C
    sw      t7, 0x0150(s0)             # 00000150
lbl_80AAF0BC:
    lw      t8, 0x066C(v0)             # 0000066C
lbl_80AAF0C0:
    lui     $at, 0xDFFF                # $at = DFFF0000
    ori     $at, $at, 0xFFFF           # $at = DFFFFFFF
    and     t9, t8, $at
    sw      t9, 0x066C(v0)             # 0000066C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    sw      $zero, 0x0118(s0)          # 00000118
    lw      a2, 0x0150(s0)             # 00000150
    sw      v0, 0x002C($sp)
    lw      a1, 0x0034($sp)
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      v0, 0x002C($sp)
    lui     $at, 0x2000                # $at = 20000000
    lui     t2, %hi(func_80AAF124)     # t2 = 80AB0000
    lw      t0, 0x066C(v0)             # 0000066C
    addiu   t2, t2, %lo(func_80AAF124) # t2 = 80AAF124
    or      t1, t0, $at                # t1 = 20000000
    sw      t1, 0x066C(v0)             # 0000066C
    sw      t2, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80AAF124:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AAF154
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80AAF180)     # t6 = 80AB0000
    addiu   t6, t6, %lo(func_80AAF180) # t6 = 80AAF180
    b       lbl_80AAF170
    sw      t6, 0x013C(a0)             # 0000013C
lbl_80AAF154:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lw      a2, 0x0150(a0)             # 00000150
    lw      a1, 0x0024($sp)
    lui     a3, 0x44FA                 # a3 = 44FA0000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80AAF170:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AAF180:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80AAF1F0
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800D6110
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80AAF1F0
    lw      a2, 0x0018($sp)
    lw      t6, 0x0150(a2)             # 00000150
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    bne     t6, $at, lbl_80AAF1E0
    lui     t9, %hi(func_80AAE9D8)     # t9 = 80AB0000
    addiu   t7, $zero, 0x0140          # t7 = 00000140
    lui     $at, 0x8012                # $at = 80120000
    sh      t7, -0x460C($at)           # 8011B9F4
lbl_80AAF1E0:
    addiu   t9, t9, %lo(func_80AAE9D8) # t9 = 80AAE9D8
    sh      $zero, 0x0146(a2)          # 00000146
    sb      t8, 0x0154(a2)             # 00000154
    sw      t9, 0x013C(a2)             # 0000013C
lbl_80AAF1F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AAF200:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lh      v0, 0x0148(a0)             # 00000148
    beq     v0, $zero, lbl_80AAF22C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0148(a0)             # 00000148
lbl_80AAF22C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_80AAF240: .word \
0x00000033, 0x0000003E, 0x00000003, 0x00000065, \
0x00000055
var_80AAF254: .word 0x014C0600, 0x00000010, 0x00010000, 0x000036F4
.word func_80AAE9B0
.word func_80AAE9C8
.word func_80AAF200
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AAF280: .word 0x3DCCCCCD
var_80AAF284: .word 0x3CA3D70A
var_80AAF288: .word 0xC3F28000, 0x00000000

