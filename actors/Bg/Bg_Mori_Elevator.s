.section .text
func_80927950:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      a3, 0x000C($sp)
    lwc1    $f0, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x000C($sp)
    sub.s   $f4, $f12, $f0
    c.lt.s  $f0, $f12
    mul.s   $f2, $f4, $f14
    bc1fl   lbl_809279CC
    c.lt.s  $f12, $f0
    c.lt.s  $f6, $f2
    lwc1    $f14, 0x0010($sp)
    bc1fl   lbl_80927994
    c.lt.s  $f2, $f14
    b       lbl_809279A4
    mov.s   $f2, $f6
    c.lt.s  $f2, $f14
lbl_80927994:
    nop
    bc1fl   lbl_809279A8
    add.s   $f8, $f0, $f2
    mov.s   $f2, $f14
lbl_809279A4:
    add.s   $f8, $f0, $f2
lbl_809279A8:
    swc1    $f8, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x0000(a0)           # 00000000
    c.lt.s  $f12, $f10
    nop
    bc1fl   lbl_80927A40
    mov.s   $f0, $f2
    b       lbl_80927A3C
    swc1    $f12, 0x0000(a0)           # 00000000
    c.lt.s  $f12, $f0
lbl_809279CC:
    lwc1    $f14, 0x000C($sp)
    bc1fl   lbl_80927A38
    mtc1    $zero, $f2                 # $f2 = 0.00
    neg.s   $f14, $f14
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_809279F8
    lwc1    $f14, 0x0010($sp)
    b       lbl_80927A10
    mov.s   $f2, $f14
    lwc1    $f14, 0x0010($sp)
lbl_809279F8:
    neg.s   $f16, $f14
    c.lt.s  $f16, $f2
    nop
    bc1fl   lbl_80927A14
    add.s   $f18, $f0, $f2
    mov.s   $f2, $f16
lbl_80927A10:
    add.s   $f18, $f0, $f2
lbl_80927A14:
    swc1    $f18, 0x0000(a0)           # 00000000
    lwc1    $f4, 0x0000(a0)            # 00000000
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_80927A40
    mov.s   $f0, $f2
    b       lbl_80927A3C
    swc1    $f12, 0x0000(a0)           # 00000000
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80927A38:
    nop
lbl_80927A3C:
    mov.s   $f0, $f2
lbl_80927A40:
    jr      $ra
    nop


func_80927A48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, %hi(var_809282F0)     # $at = 80930000
    lwc1    $f4, %lo(var_809282F0)($at)
    abs.s   $f0, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f2, $f0, $f4
    addiu   a0, a3, 0x00E4             # a0 = 000000E4
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_80927A90
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_80927AB4
    mov.s   $f0, $f14
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_80927A90:
    nop
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80927AB0
    mov.s   $f12, $f2
    b       lbl_80927AB0
    mov.s   $f12, $f0
    mov.s   $f12, $f2
lbl_80927AB0:
    mov.s   $f0, $f12
lbl_80927AB4:
    mfc1    a2, $f0
    jal     func_800C50AC
    addiu   a1, $zero, 0x2079          # a1 = 00002079
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80927AD0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     t6, %hi(var_809282B0)      # t6 = 80930000
    lh      t6, %lo(var_809282B0)(t6)
    sw      $zero, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      t6, 0x0162(s0)             # 00000162
    lw      a0, 0x0034($sp)
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lui     a2, %hi(var_809282B0)      # a2 = 80930000
    addiu   a2, a2, %lo(var_809282B0)  # a2 = 809282B0
    sb      v0, 0x0161(s0)             # 00000161
    lh      v1, 0x0000(a2)             # 809282B0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    beq     v1, $zero, lbl_80927B40
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80927B98
    nop
    b       lbl_80927BA4
    lw      $ra, 0x001C($sp)
lbl_80927B40:
    sh      t7, 0x0000(a2)             # 809282B0
    lui     a1, %hi(var_809282D4)      # a1 = 80930000
    sb      t8, 0x0003(s0)             # 00000003
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_809282D4)  # a1 = 809282D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x35F8             # a0 = 060035F8
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    jal     func_80927C54
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80927BA4
    lw      $ra, 0x001C($sp)
lbl_80927B98:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80927BA4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80927BB4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0162(a3)             # 00000162
    lw      a0, 0x001C($sp)
    bne     t6, $zero, lbl_80927BE4
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
    lui     $at, %hi(var_809282B0)     # $at = 80930000
    sh      $zero, %lo(var_809282B0)($at)
lbl_80927BE4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80927BF4:
    lbu     v0, 0x0150(a0)             # 00000150
    andi    v0, v0, 0x0002             # v0 = 00000000
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_80927C4C
    nop
    lbu     v0, 0x0160(a0)             # 00000160
    andi    v0, v0, 0x0002             # v0 = 00000000
    sltiu   v0, v0, 0x0001
    beq     v0, $zero, lbl_80927C4C
    nop
    lw      t6, 0x1C44(a1)             # 00001C44
    lwc1    $f6, 0x0028(a0)            # 00000028
    lui     $at, 0x42A0                # $at = 42A00000
    lwc1    $f4, 0x0028(t6)            # 00000028
    mtc1    $at, $f10                  # $f10 = 80.00
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80927C4C
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80927C4C:
    jr      $ra
    nop


func_80927C54:
    lui     t6, %hi(func_80927C68)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80927C68) # t6 = 80927C68
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80927C68:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0161(s0)             # 00000161
    jal     func_80081688
    addu    a0, a0, $at
    beql    v0, $zero, lbl_80927CFC
    lw      $ra, 0x001C($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80927CE4
    lw      t6, 0x0024($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6
    lb      t7, 0x1CBC(t7)             # 00011CBC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t7, $at, lbl_80927CEC
    lui     $at, 0x4292                # $at = 42920000
    mtc1    $at, $f4                   # $f4 = 73.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80927EE4
    swc1    $f4, 0x0028(s0)            # 00000028
    b       lbl_80927CEC
    nop
lbl_80927CE4:
    jal     func_80927EE4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80927CEC:
    lui     t8, %hi(func_809281E8)     # t8 = 80930000
    addiu   t8, t8, %lo(func_809281E8) # t8 = 809281E8
    sw      t8, 0x0134(s0)             # 00000134
    lw      $ra, 0x001C($sp)
lbl_80927CFC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80927D0C:
    lui     t6, %hi(func_80927D20)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80927D20) # t6 = 80927D20
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80927D20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80927950
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    lw      a3, 0x0060(s0)             # 00000060
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4292                 # a1 = 42920000
    jal     func_80927950
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_809282F4)     # $at = 80930000
    lwc1    $f8, %lo(var_809282F4)($at)
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80927DB8
    mfc1    a1, $f2
    jal     func_80927EE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x287A          # a1 = 0000287A
    b       lbl_80927DC4
    lw      $ra, 0x0024($sp)
    mfc1    a1, $f2
lbl_80927DB8:
    jal     func_80927A48
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80927DC4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80927DD4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_80927E30)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80927E30) # t6 = 80927E30
    sw      t6, 0x0154(a3)             # 00000154
    sw      a3, 0x0020($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0C9E          # a1 = 00000C9E
    jal     func_8006B6FC
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    lw      a3, 0x0020($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x03FC          # a1 = 000003FC
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80927E30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80927950
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    lw      a3, 0x0060(s0)             # 00000060
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4369                 # a1 = 43690000
    jal     func_80927950
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_809282F8)     # $at = 80930000
    lwc1    $f8, %lo(var_809282F8)($at)
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80927EC8
    mfc1    a1, $f2
    jal     func_80927EE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x287A          # a1 = 0000287A
    b       lbl_80927ED4
    lw      $ra, 0x0024($sp)
    mfc1    a1, $f2
lbl_80927EC8:
    jal     func_80927A48
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80927ED4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80927EE4:
    lui     t6, %hi(func_80927EF8)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80927EF8) # t6 = 80927EF8
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80927EF8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80927BF4
    sw      a2, 0x0020($sp)
    beq     v0, $zero, lbl_80927F7C
    lw      a2, 0x0020($sp)
    lw      t6, 0x0024($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addu    v0, v0, t6
    lb      v0, 0x1CBC(v0)             # 00011CBC
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a3, v0, lbl_80927F5C
    nop
    lui     $at, %hi(var_809282FC)     # $at = 80930000
    lwc1    $f4, %lo(var_809282FC)($at)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_809280C0
    swc1    $f4, 0x0158(a2)            # 00000158
    b       lbl_809280B4
    lw      $ra, 0x0014($sp)
lbl_80927F5C:
    bne     v0, $at, lbl_809280B0
    lui     $at, 0x4369                # $at = 43690000
    mtc1    $at, $f6                   # $f6 = 233.00
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_809280C0
    swc1    $f6, 0x0158(a2)            # 00000158
    b       lbl_809280B4
    lw      $ra, 0x0014($sp)
lbl_80927F7C:
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addu    v1, a0, $at
    lb      v0, 0x1CBC(v1)             # 00001CBC
    lui     $at, %hi(var_80928300)     # $at = 80930000
    bnel    a3, v0, lbl_80927FD4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lwc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f10, %lo(var_80928300)($at)
    lui     $at, 0x4369                # $at = 43690000
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80927FD4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    mtc1    $at, $f16                  # $f16 = 0.00
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_809280C0
    swc1    $f16, 0x0158(a2)           # 00000158
    b       lbl_809280B4
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
lbl_80927FD4:
    bne     v0, $at, lbl_80928010
    lui     $at, %hi(var_80928304)     # $at = 80930000
    lwc1    $f18, %lo(var_80928304)($at)
    lwc1    $f4, 0x0028(a2)            # 00000028
    lui     $at, %hi(var_80928308)     # $at = 80930000
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_80928010
    nop
    lwc1    $f6, %lo(var_80928308)($at)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_809280C0
    swc1    $f6, 0x0158(a2)            # 00000158
    b       lbl_809280B4
    lw      $ra, 0x0014($sp)
lbl_80928010:
    bnel    a3, v0, lbl_80928068
    lb      t8, 0x1CBC(v1)             # 00001CBC
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0020($sp)
    sw      v1, 0x0018($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      v1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    beq     v0, $zero, lbl_80928064
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t7, 0x015C(a2)             # 0000015C
    lui     $at, 0x4292                # $at = 42920000
    bnel    t7, $zero, lbl_80928068
    lb      t8, 0x1CBC(v1)             # 00001CBC
    mtc1    $at, $f8                   # $f8 = 73.00
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80927D0C
    swc1    $f8, 0x0158(a2)            # 00000158
    b       lbl_809280B4
    lw      $ra, 0x0014($sp)
lbl_80928064:
    lb      t8, 0x1CBC(v1)             # 00001CBC
lbl_80928068:
    lw      a0, 0x0024($sp)
    bnel    a3, t8, lbl_809280B4
    lw      $ra, 0x0014($sp)
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0020($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_809280B0
    lw      a2, 0x0020($sp)
    lw      t9, 0x015C(a2)             # 0000015C
    lui     $at, 0x4369                # $at = 43690000
    beql    t9, $zero, lbl_809280B4
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = 233.00
    or      a0, a2, $zero              # a0 = 00000000
    swc1    $f10, 0x0158(a2)           # 00000158
    jal     func_80927DD4
    lw      a1, 0x0024($sp)
lbl_809280B0:
    lw      $ra, 0x0014($sp)
lbl_809280B4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809280C0:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_809280DC)     # t6 = 80930000
    addiu   t6, t6, %lo(func_809280DC) # t6 = 809280DC
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x0060(a0)            # 00000060
    jr      $ra
    nop


func_809280DC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4140                 # a1 = 41400000
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80927950
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_8092830C)     # $at = 80930000
    lwc1    $f6, %lo(var_8092830C)($at)
    lw      a1, 0x0158(s0)             # 00000158
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lw      a3, 0x0060(s0)             # 00000060
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    jal     func_80927950
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_80928310)     # $at = 80930000
    lwc1    $f8, %lo(var_80928310)($at)
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80928174
    mfc1    a1, $f2
    jal     func_80927EE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x287A          # a1 = 0000287A
    b       lbl_80928180
    lw      $ra, 0x0024($sp)
    mfc1    a1, $f2
lbl_80928174:
    jal     func_80927A48
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80928180:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80928190:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      a2, 0x0018($sp)
    lw      t9, 0x0154(a2)             # 00000154
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      a2, 0x0018($sp)
    lbu     t6, 0x0150(a2)             # 00000150
    lh      a1, 0x001C(a2)             # 0000001C
    sb      t6, 0x0160(a2)             # 00000160
    lw      a0, 0x001C($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      a2, 0x0018($sp)
    sw      v0, 0x015C(a2)             # 0000015C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_809281E8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x0034($sp)
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    lb      t9, 0x0161(t8)             # 00000161
    sll     t0, t9,  4
    addu    t0, t0, t9
    sll     t0, t0,  2
    addu    t1, a1, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a2, 0x0024($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x2AD0             # t7 = 06002AD0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop

.section .data

var_809282B0: .word 0x00000000
var_809282B4: .word 0x00870100, 0x00000010, 0x00720000, 0x00000164
.word func_80927AD0
.word func_80927BB4
.word func_80928190
.word 0x00000000
var_809282D4: .word \
0xB0F407D0, 0xB0F801F4, 0xB0FC0BB8, 0x485003E8, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809282F0: .word 0x3DB851EC
var_809282F4: .word 0x3A83126F
var_809282F8: .word 0x3A83126F
var_809282FC: .word 0xC442C000
var_80928300: .word 0xC3898000
var_80928304: .word 0xC3898000
var_80928308: .word 0xC442C000
var_8092830C: .word 0x3E99999A
var_80928310: .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000

