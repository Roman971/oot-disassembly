.section .text
func_80B6C070:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     a1, %hi(var_80B6DB48)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B6DB48)  # a1 = 80B6DB48
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80B6DAF0)      # a3 = 80B70000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80B6DAF0)  # a3 = 80B6DAF0
    lw      a0, 0x002C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80B6DB28)      # a1 = 80B70000
    lui     a2, %hi(var_80B6DB1C)      # a2 = 80B70000
    addiu   a2, a2, %lo(var_80B6DB1C)  # a2 = 80B6DB1C
    addiu   a1, a1, %lo(var_80B6DB28)  # a1 = 80B6DB28
    jal     func_80050370
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lw      t8, 0x0024(s0)             # 00000024
    lw      t7, 0x0028(s0)             # 00000028
    lui     t9, %hi(func_80B6D4B8)     # t9 = 80B70000
    sw      t8, 0x01C8(s0)             # 000001C8
    lw      t8, 0x002C(s0)             # 0000002C
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t9, t9, %lo(func_80B6D4B8) # t9 = 80B6D4B8
    sb      t6, 0x001F(s0)             # 0000001F
    sw      t9, 0x0188(s0)             # 00000188
    swc1    $f0, 0x01A4(s0)            # 000001A4
    swc1    $f0, 0x01A8(s0)            # 000001A8
    swc1    $f0, 0x01AC(s0)            # 000001AC
    swc1    $f0, 0x01B0(s0)            # 000001B0
    swc1    $f0, 0x01B4(s0)            # 000001B4
    swc1    $f0, 0x01B8(s0)            # 000001B8
    sw      t7, 0x01CC(s0)             # 000001CC
    sw      t8, 0x01D0(s0)             # 000001D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B6C134:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B6C144:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sw      v1, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80B6C1B8
    lw      v1, 0x001C($sp)
    lw      a0, 0x0024($sp)
    jal     func_800D6110
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_80B6C1B8
    lw      a1, 0x0020($sp)
    lhu     t6, 0x010E(a1)             # 0000010E
    addiu   $at, $zero, 0x2054         # $at = 00002054
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t6, $at, lbl_80B6C1B8
    nop
    lh      t7, 0x001C(a1)             # 0000001C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t8, t7, 0x00FF             # t8 = 00000000
    addiu   t9, t8, 0x0400             # t9 = 00000400
    b       lbl_80B6C1B8
    sh      t9, 0x010E(a1)             # 0000010E
lbl_80B6C1B8:
    or      v0, v1, $zero              # v0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B6C1CC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lw      v0, 0x1C44(s1)             # 00001C44
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B6C37C
    lw      $ra, 0x0034($sp)
    lbu     v1, 0x018D(s0)             # 0000018D
    bne     v1, $zero, lbl_80B6C244
    andi    t2, v1, 0x0001             # t2 = 00000000
    lw      t6, 0x0670(v0)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      a0, s1, $zero              # a0 = 00000000
    or      t7, t6, $at                # t7 = 00800000
    sll     t9, t7,  7
    bgez    t9, lbl_80B6C378
    sw      t7, 0x0670(v0)             # 00000670
    jal     func_800DD400
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     t0, 0x018D(s0)             # 0000018D
    ori     t1, t0, 0x0001             # t1 = 00000001
    b       lbl_80B6C378
    sb      t1, 0x018D(s0)             # 0000018D
lbl_80B6C244:
    beq     t2, $zero, lbl_80B6C378
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s1, $at
    lhu     a0, 0x04C6(v1)             # 000004C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a0, $at, lbl_80B6C360
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     v0, 0x04CA(v1)             # 000004CA
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80B6C28C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80B6C28C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80B6C28C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_80B6C28C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_80B6C2E4
lbl_80B6C28C:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    add.s   $f16, $f8, $f10
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      t3, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28E7          # a1 = 000028E7
    b       lbl_80B6C340
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B6C2E4:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_80B6C33C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    add.s   $f8, $f4, $f6
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t4, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28E7          # a1 = 000028E7
lbl_80B6C33C:
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B6C340:
    sb      $zero, 0x018D(s0)          # 0000018D
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    b       lbl_80B6C37C
    lw      $ra, 0x0034($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80B6C360:
    bnel    a0, $at, lbl_80B6C37C
    lw      $ra, 0x0034($sp)
    lw      t5, 0x0670(v0)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      t6, t5, $at                # t6 = 00800000
    sw      t6, 0x0670(v0)             # 00000670
lbl_80B6C378:
    lw      $ra, 0x0034($sp)
lbl_80B6C37C:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B6C38C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lbu     v0, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80B6C3CC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    b       lbl_80B6C488
    sb      t6, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80B6C3CC:
    bne     v0, $at, lbl_80B6C3E8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6C144
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_80B6C488
    sb      v0, 0x018C(s0)             # 0000018C
lbl_80B6C3E8:
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80022930
    sw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_80B6C408
    lw      a0, 0x002C($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    b       lbl_80B6C488
    sb      t7, 0x018C(s0)             # 0000018C
lbl_80B6C408:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0026            # a2 = FFFFFFFE
    jal     func_80022B14
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFFC
    lh      v0, 0x0026($sp)
    bltz    v0, lbl_80B6C488
    slti    $at, v0, 0x0141
    beq     $at, $zero, lbl_80B6C488
    lh      v0, 0x0024($sp)
    bltz    v0, lbl_80B6C488
    slti    $at, v0, 0x00F1
    beql    $at, $zero, lbl_80B6C48C
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    beq     t8, $at, lbl_80B6C488
    lw      a1, 0x002C($sp)
    jal     func_80022A68
    lui     a2, 0x4220                 # a2 = 42200000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80B6C48C
    lw      $ra, 0x001C($sp)
    jal     func_80079B44
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80B6C484
    addiu   t0, $zero, 0x2053          # t0 = 00002053
    addiu   t9, $zero, 0x2054          # t9 = 00002054
    b       lbl_80B6C488
    sh      t9, 0x010E(s0)             # 0000010E
lbl_80B6C484:
    sh      t0, 0x010E(s0)             # 0000010E
lbl_80B6C488:
    lw      $ra, 0x001C($sp)
lbl_80B6C48C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B6C49C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lwc1    $f4, 0x004C($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x0000(t6)             # 00000000
    lw      a2, 0x0044($sp)
    lw      a3, 0x0048($sp)
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lw      t7, 0x0054($sp)
    swc1    $f0, 0x002C($sp)
    lw      a0, 0x0038($sp)
    bne     t7, $zero, lbl_80B6C648
    lw      t8, 0x003C($sp)
    lwc1    $f6, 0x004C($sp)
    lw      a1, 0x0000(t8)             # 00000000
    lw      a2, 0x0044($sp)
    lw      a3, 0x0048($sp)
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lw      v0, 0x0050($sp)
    lw      t9, 0x0040($sp)
    swc1    $f0, 0x002C($sp)
    mtc1    v0, $f10                   # $f10 = 0.00
    lhu     t0, 0x0000(t9)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f16, $f10
    div     $zero, t0, v0
    mtc1    $at, $f8                   # $f8 = 1.00
    mfhi    t1
    mtc1    t1, $f18                   # $f18 = 0.00
    div.s   $f2, $f8, $f16
    bne     v0, $zero, lbl_80B6C53C
    nop
    break   # 0x01C00
lbl_80B6C53C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80B6C554
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_80B6C554
    nop
    break   # 0x01800
lbl_80B6C554:
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f10                  # $f10 = 360.00
    lui     $at, %hi(var_80B6DBA0)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6DBA0)($at)
    cvt.s.w $f4, $f18
    swc1    $f2, 0x0024($sp)
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f8, $f6, $f10
    nop
    mul.s   $f12, $f8, $f16
    jal     func_800CF470
    nop
    lw      t2, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f18, 0x0000(t2)           # 00000000
    lw      t3, 0x0030($sp)
    lwc1    $f2, 0x0024($sp)
    mul.s   $f4, $f18, $f0
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x01A4(t3)           # 000001A4
    lw      t4, 0x0040($sp)
    lw      t6, 0x0050($sp)
    lhu     t5, 0x0000(t4)             # 00000000
    div     $zero, t5, t6
    mfhi    t7
    mtc1    t7, $f8                    # $f8 = 0.00
    bne     t6, $zero, lbl_80B6C5D0
    nop
    break   # 0x01C00
lbl_80B6C5D0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t6, $at, lbl_80B6C5E8
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_80B6C5E8
    nop
    break   # 0x01800
lbl_80B6C5E8:
    cvt.s.w $f16, $f8
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f4                   # $f4 = 360.00
    lui     $at, %hi(var_80B6DBA4)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B6DBA4)($at)
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f6, $f18, $f4
    nop
    mul.s   $f12, $f6, $f10
    jal     func_800CF470
    nop
    lw      t8, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lwc1    $f16, 0x0000(t8)           # 00000000
    lw      t9, 0x0030($sp)
    lw      v0, 0x0040($sp)
    mul.s   $f18, $f16, $f0
    sub.s   $f4, $f8, $f18
    swc1    $f4, 0x01A8(t9)            # 000001A8
    lhu     t0, 0x0000(v0)             # 00000000
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0000(v0)             # 00000000
lbl_80B6C648:
    lwc1    $f0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B6C65C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lbu     v0, 0x018F(s0)             # 0000018F
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B6C6B0
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x3831          # a1 = 00003831
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      $zero, 0x01F0(s0)          # 000001F0
    sb      t6, 0x018F(s0)             # 0000018F
    swc1    $f4, 0x01D8(s0)            # 000001D8
    b       lbl_80B6C744
    swc1    $f6, 0x01DC(s0)            # 000001DC
lbl_80B6C6B0:
    bne     v0, $at, lbl_80B6C744
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80B6DBA8)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DBA8)($at)
    lui     $at, %hi(var_80B6DBAC)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B6DBAC)($at)
    lui     $at, %hi(var_80B6DBB0)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6DBB0)($at)
    addiu   t7, s0, 0x01F0             # t7 = 000001F0
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sw      t8, 0x0020($sp)
    sw      t7, 0x0010($sp)
    lw      a1, 0x003C($sp)
    addiu   a2, s0, 0x01D8             # a2 = 000001D8
    addiu   a3, s0, 0x01DC             # a3 = 000001DC
    sw      $zero, 0x0024($sp)
    swc1    $f8, 0x0014($sp)
    swc1    $f10, 0x0018($sp)
    jal     func_80B6C49C
    swc1    $f16, 0x001C($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.eq.s  $f0, $f18
    nop
    bc1fl   lbl_80B6C748
    lw      $ra, 0x0034($sp)
    jal     func_8009CB08
    lw      a0, 0x003C($sp)
    bne     v0, $zero, lbl_80B6C734
    lw      a0, 0x003C($sp)
    addiu   a1, $zero, 0x71B1          # a1 = 000071B1
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B6C734:
    lui     t9, %hi(func_80B6D4B8)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B6D4B8) # t9 = 80B6D4B8
    sb      $zero, 0x018C(s0)          # 0000018C
    sw      t9, 0x0188(s0)             # 00000188
lbl_80B6C744:
    lw      $ra, 0x0034($sp)
lbl_80B6C748:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B6C758:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    lbu     v0, 0x018F(a0)             # 0000018F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B6C7A4
    nop
    addiu   a1, $zero, 0x3831          # a1 = 00003831
    jal     func_80022FD0
    sw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    lui     $at, %hi(var_80B6DBB4)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6DBB4)($at)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      $zero, 0x01F0(a0)          # 000001F0
    sb      t6, 0x018F(a0)             # 0000018F
    swc1    $f4, 0x01D8(a0)            # 000001D8
    b       lbl_80B6C87C
    swc1    $f6, 0x01DC(a0)            # 000001DC
lbl_80B6C7A4:
    bnel    v0, $at, lbl_80B6C880
    lw      $ra, 0x002C($sp)
    lhu     t7, 0x01F0(a0)             # 000001F0
    lui     $at, 0x3E00                # $at = 3E000000
    mtc1    $at, $f16                  # $f16 = 0.13
    bgez    t7, lbl_80B6C7CC
    andi    t8, t7, 0x0007             # t8 = 00000000
    beq     t8, $zero, lbl_80B6C7CC
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
lbl_80B6C7CC:
    mtc1    t8, $f8                    # $f8 = NaN
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f4                   # $f4 = 360.00
    cvt.s.w $f10, $f8
    lui     $at, %hi(var_80B6DBB8)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DBB8)($at)
    lui     $at, %hi(var_80B6DBBC)     # $at = 80B70000
    addiu   t3, a0, 0x01F0             # t3 = 000001F0
    addiu   t4, $zero, 0x0007          # t4 = 00000007
    mul.s   $f18, $f10, $f16
    addiu   a2, a0, 0x01D8             # a2 = 000001D8
    addiu   a3, a0, 0x01DC             # a3 = 000001DC
    mul.s   $f6, $f18, $f4
    nop
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t0, $f16
    nop
    sh      t0, 0x0194(a0)             # 00000194
    lh      t1, 0x0194(a0)             # 00000194
    subu    t2, $zero, t1
    sh      t2, 0x019A(a0)             # 0000019A
    lwc1    $f18, %lo(var_80B6DBBC)($at)
    lui     $at, %hi(var_80B6DBC0)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6DBC0)($at)
    lui     $at, %hi(var_80B6DBC4)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B6DBC4)($at)
    sw      a0, 0x0030($sp)
    sw      $zero, 0x0024($sp)
    sw      t4, 0x0020($sp)
    sw      t3, 0x0010($sp)
    swc1    $f18, 0x0014($sp)
    swc1    $f4, 0x0018($sp)
    jal     func_80B6C49C
    swc1    $f6, 0x001C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     t5, %hi(func_80B6D4B8)     # t5 = 80B70000
    lw      a0, 0x0030($sp)
    c.eq.s  $f0, $f8
    addiu   t5, t5, %lo(func_80B6D4B8) # t5 = 80B6D4B8
    bc1fl   lbl_80B6C880
    lw      $ra, 0x002C($sp)
    sb      $zero, 0x018C(a0)          # 0000018C
    sw      t5, 0x0188(a0)             # 00000188
lbl_80B6C87C:
    lw      $ra, 0x002C($sp)
lbl_80B6C880:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B6C88C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lbu     v1, 0x018F(s0)             # 0000018F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $zero, lbl_80B6C8D8
    or      v0, v1, $zero              # v0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x01A8(s0)            # 000001A8
    lui     $at, %hi(var_80B6DBC8)     # $at = 80B70000
    addiu   t6, v1, 0x0001             # t6 = 00000001
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x01D8(s0)            # 000001D8
    lwc1    $f10, %lo(var_80B6DBC8)($at)
    sb      t6, 0x018F(s0)             # 0000018F
    b       lbl_80B6CA70
    swc1    $f10, 0x01DC(s0)           # 000001DC
lbl_80B6C8D8:
    bne     v0, $at, lbl_80B6C934
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    lui     $at, %hi(var_80B6DBCC)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6DBCC)($at)
    lw      a1, 0x01DC(s0)             # 000001DC
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f18, 0x01D8(s0)           # 000001D8
    c.eq.s  $f0, $f2
    add.s   $f6, $f18, $f4
    bc1f    lbl_80B6CA70
    swc1    $f6, 0x01A8(s0)            # 000001A8
    lbu     t7, 0x018F(s0)             # 0000018F
    sh      $zero, 0x01F0(s0)          # 000001F0
    addiu   t8, t7, 0x0001             # t8 = 00000001
    b       lbl_80B6CA70
    sb      t8, 0x018F(s0)             # 0000018F
lbl_80B6C934:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80B6C988
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lhu     t9, 0x01F0(s0)             # 000001F0
    addiu   t0, t9, 0x0001             # t0 = 00000001
    andi    t1, t0, 0xFFFF             # t1 = 00000001
    slti    $at, t1, 0x0064
    bne     $at, $zero, lbl_80B6CA70
    sh      t0, 0x01F0(s0)             # 000001F0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f8, 0x01A8(s0)            # 000001A8
    lbu     t2, 0x018F(s0)             # 0000018F
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f16, $f8, $f10
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x018F(s0)             # 0000018F
    swc1    $f2, 0x01DC(s0)            # 000001DC
    b       lbl_80B6CA70
    swc1    $f16, 0x01D8(s0)           # 000001D8
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80B6C988:
    bne     v0, $at, lbl_80B6C9FC
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    lui     $at, %hi(var_80B6DBD0)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DBD0)($at)
    lw      a1, 0x01DC(s0)             # 000001DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x01D8(s0)            # 000001D8
    c.eq.s  $f0, $f2
    lui     $at, 0x3F00                # $at = 3F000000
    add.s   $f8, $f4, $f6
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3831          # a1 = 00003831
    bc1f    lbl_80B6CA70
    swc1    $f8, 0x01A8(s0)            # 000001A8
    mtc1    $at, $f10                  # $f10 = 0.50
    swc1    $f2, 0x01DC(s0)            # 000001DC
    sh      $zero, 0x01F0(s0)          # 000001F0
    jal     func_80022FD0
    swc1    $f10, 0x01D8(s0)           # 000001D8
    lbu     t4, 0x018F(s0)             # 0000018F
    addiu   t5, t4, 0x0001             # t5 = 00000001
    b       lbl_80B6CA70
    sb      t5, 0x018F(s0)             # 0000018F
lbl_80B6C9FC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B6CA70
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, %hi(var_80B6DBD4)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DBD4)($at)
    lui     $at, %hi(var_80B6DBD8)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6DBD8)($at)
    addiu   t6, s0, 0x01F0             # t6 = 000001F0
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t7, 0x0020($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, s0, 0x01D8             # a2 = 000001D8
    addiu   a3, s0, 0x01DC             # a3 = 000001DC
    sw      $zero, 0x0024($sp)
    swc1    $f16, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    jal     func_80B6C49C
    swc1    $f4, 0x001C($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     t8, %hi(func_80B6D4B8)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B6D4B8) # t8 = 80B6D4B8
    c.eq.s  $f0, $f2
    nop
    bc1fl   lbl_80B6CA74
    lw      $ra, 0x0034($sp)
    sb      $zero, 0x018C(s0)          # 0000018C
    sw      t8, 0x0188(s0)             # 00000188
lbl_80B6CA70:
    lw      $ra, 0x0034($sp)
lbl_80B6CA74:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B6CA84:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x007C($sp)
    lbu     v1, 0x018F(s1)             # 0000018F
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $zero, lbl_80B6CAC4
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t6, 0x01F0(s1)             # 000001F0
    sb      t7, 0x018F(s1)             # 0000018F
    andi    v0, t7, 0x00FF             # v0 = 00000001
lbl_80B6CAC4:
    bne     v0, $at, lbl_80B6CB00
    addiu   s0, s1, 0x01D4             # s0 = 000001D4
    lhu     v0, 0x01F0(s1)             # 000001F0
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sltiu   v1, v0, 0x0001
    addiu   t8, v0, 0xFFFF             # t8 = 00000000
    beq     v1, $zero, lbl_80B6CB00
    sh      t8, 0x01F0(s1)             # 000001F0
    lbu     t0, 0x018E(s1)             # 0000018E
    lbu     t2, 0x018F(s1)             # 0000018F
    sh      t9, 0x01F0(s1)             # 000001F0
    ori     t1, t0, 0x0004             # t1 = 00000004
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t1, 0x018E(s1)             # 0000018E
    sb      t3, 0x018F(s1)             # 0000018F
lbl_80B6CB00:
    lbu     v0, 0x018F(s1)             # 0000018F
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 000001D4
    bnel    v0, $at, lbl_80B6CC34
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lhu     t4, 0x01F0(s1)             # 000001F0
    lui     a1, %hi(var_80B6DB54)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B6DB54)  # a1 = 80B6DB54
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    jal     func_800646C8
    sh      t5, 0x01F0(s1)             # 000001F0
    lhu     v0, 0x01F0(s1)             # 000001F0
    slti    $at, v0, 0x0050
    beq     $at, $zero, lbl_80B6CC08
    addiu   $at, $zero, 0x0014         # $at = 00000014
    div     $zero, v0, $at
    mfhi    t6
    slti    $at, t6, 0x0008
    beq     $at, $zero, lbl_80B6CC08
    slti    $at, v0, 0x0014
    beq     $at, $zero, lbl_80B6CBB4
    or      a0, s0, $zero              # a0 = 000001D4
    lui     a1, %hi(var_80B6DB4C)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B6DB4C)  # a1 = 80B6DB4C
    jal     func_800646C8
    or      a0, s0, $zero              # a0 = 000001D4
    lhu     v0, 0x01F0(s1)             # 000001F0
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     a3, 0x8010                 # a3 = 80100000
    div     $zero, v0, $at
    mfhi    t7
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t7, $at, lbl_80B6CC08
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    addiu   a0, $zero, 0x481A          # a0 = 0000481A
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_80B6CC08
    lhu     v0, 0x01F0(s1)             # 000001F0
lbl_80B6CBB4:
    lui     a1, %hi(var_80B6DB50)      # a1 = 80B70000
    jal     func_800646C8
    addiu   a1, a1, %lo(var_80B6DB50)  # a1 = 80B6DB50
    lhu     v0, 0x01F0(s1)             # 000001F0
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     a3, 0x8010                 # a3 = 80100000
    div     $zero, v0, $at
    mfhi    t9
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t9, $at, lbl_80B6CC08
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    addiu   a0, $zero, 0x4819          # a0 = 00004819
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lhu     v0, 0x01F0(s1)             # 000001F0
lbl_80B6CC08:
    bgtzl   v0, lbl_80B6CC30
    lbu     v0, 0x018F(s1)             # 0000018F
    lbu     t1, 0x018E(s1)             # 0000018E
    lbu     t3, 0x018F(s1)             # 0000018F
    sh      $zero, 0x01F0(s1)          # 000001F0
    andi    t2, t1, 0xFFFB             # t2 = 00000000
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t2, 0x018E(s1)             # 0000018E
    sb      t4, 0x018F(s1)             # 0000018F
    lbu     v0, 0x018F(s1)             # 0000018F
lbl_80B6CC30:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80B6CC34:
    bne     v0, $at, lbl_80B6CD80
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f20                  # $f20 = 15.00
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80B6CC44:
    jal     func_80026D90
    mov.s   $f12, $f20
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f12                  # $f12 = -1.00
    jal     func_80026D64
    swc1    $f0, 0x005C($sp)
    swc1    $f0, 0x0060($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x005C($sp)
    swc1    $f0, 0x0064($sp)
    lwc1    $f8, 0x0024(s1)            # 00000024
    add.s   $f6, $f4, $f4
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f18                  # $f18 = 7.00
    lui     $at, 0x4248                # $at = 42480000
    add.s   $f10, $f8, $f6
    mtc1    $at, $f12                  # $f12 = 50.00
    add.s   $f6, $f0, $f0
    swc1    $f10, 0x0068($sp)
    lwc1    $f16, 0x0028(s1)           # 00000028
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x006C($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f10, $f8, $f6
    jal     func_80026D64
    swc1    $f10, 0x0070($sp)
    trunc.w.s $f16, $f0
    lui     t5, %hi(var_80B6DB64)      # t5 = 80B70000
    lui     t6, %hi(var_80B6DB68)      # t6 = 80B70000
    addiu   t6, t6, %lo(var_80B6DB68)  # t6 = 80B6DB68
    mfc1    t8, $f16
    addiu   t5, t5, %lo(var_80B6DB64)  # t5 = 80B6DB64
    lui     a3, %hi(var_80B6DB58)      # a3 = 80B70000
    sll     t9, t8, 16
    sra     t0, t9, 16
    addiu   t1, t0, 0x00C8             # t1 = 000000C8
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    addiu   a3, a3, %lo(var_80B6DB58)  # a3 = 80B6DB58
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    lw      a0, 0x007C($sp)
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFF0
    jal     func_8001BE64
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFE4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0x00FF             # s0 = 00000001
    slti    $at, s0, 0x0003
    bne     $at, $zero, lbl_80B6CC44
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x2033          # a1 = 00002033
    lhu     v0, 0x01F0(s1)             # 000001F0
    slti    v1, v0, 0x0028
    xori    v1, v1, 0x0001             # v1 = 00000001
    addiu   t4, v0, 0x0001             # t4 = 00000001
    beq     v1, $zero, lbl_80B6CD7C
    sh      t4, 0x01F0(s1)             # 000001F0
    lbu     t5, 0x018E(s1)             # 0000018E
    lw      t7, 0x0004(s1)             # 00000004
    lui     $at, %hi(var_80B6DBDC)     # $at = 80B70000
    ori     t6, t5, 0x0010             # t6 = 00000010
    ori     t8, t7, 0x0010             # t8 = 00000010
    sb      t6, 0x018E(s1)             # 0000018E
    sw      t8, 0x0004(s1)             # 00000004
    lwc1    $f18, %lo(var_80B6DBDC)($at)
    lbu     t9, 0x018F(s1)             # 0000018F
    lui     $at, %hi(var_80B6DBE0)     # $at = 80B70000
    swc1    $f18, 0x00F4(s1)           # 000000F4
    lwc1    $f4, %lo(var_80B6DBE0)($at)
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x018F(s1)             # 0000018F
    swc1    $f4, 0x006C(s1)            # 0000006C
lbl_80B6CD7C:
    lbu     v0, 0x018F(s1)             # 0000018F
lbl_80B6CD80:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B6CE78
    lw      a0, 0x007C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t1, 0x0014($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    lhu     t2, 0x0088(s1)             # 00000088
    or      a0, s1, $zero              # a0 = 00000000
    andi    t3, t2, 0x0018             # t3 = 00000000
    beq     t3, $zero, lbl_80B6CE44
    nop
    lwc1    $f6, 0x0024(s1)            # 00000024
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    swc1    $f6, 0x0050($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    swc1    $f10, 0x0054($sp)
    lwc1    $f16, 0x002C(s1)           # 0000002C
    jal     func_80022FD0
    swc1    $f16, 0x0058($sp)
    lui     a2, %hi(var_80B6DB6C)      # a2 = 80B70000
    lui     a3, %hi(var_80B6DB78)      # a3 = 80B70000
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B6DB78)  # a3 = 80B6DB78
    addiu   a2, a2, %lo(var_80B6DB6C)  # a2 = 80B6DB6C
    lw      a0, 0x007C($sp)
    jal     func_8001C97C
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFD8
    lbu     t7, 0x018E(s1)             # 0000018E
    lui     t9, %hi(func_80B6D484)     # t9 = 80B70000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t9, t9, %lo(func_80B6D484) # t9 = 80B6D484
    ori     t8, t7, 0x0008             # t8 = 00000008
    sh      t6, 0x01F0(s1)             # 000001F0
    sb      t8, 0x018E(s1)             # 0000018E
    sw      t9, 0x0188(s1)             # 00000188
    b       lbl_80B6CE4C
    nop
lbl_80B6CE44:
    jal     func_8002313C
    addiu   a1, $zero, 0x20EA          # a1 = 000020EA
lbl_80B6CE4C:
    jal     func_8002121C
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_80B6DBE4)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6DBE4)($at)
    lwc1    $f18, 0x0094(s1)           # 00000094
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_80B6CE7C
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B6CE78:
    lw      $ra, 0x003C($sp)
lbl_80B6CE7C:
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80B6CE90:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lh      t6, 0x0192(s0)             # 00000192
    lui     $at, 0x42B4                # $at = 42B40000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t6, 0x0036($sp)
    lbu     v0, 0x018F(s0)             # 0000018F
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    lui     a2, 0x3F80                 # a2 = 3F800000
    bne     v0, $zero, lbl_80B6CF00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 90.00
    lui     $at, %hi(var_80B6DBE8)     # $at = 80B70000
    swc1    $f4, 0x01D8(s0)            # 000001D8
    swc1    $f6, 0x01DC(s0)            # 000001DC
    lwc1    $f8, %lo(var_80B6DBE8)($at)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    mtc1    $zero, $f16                # $f16 = 0.00
    sb      t7, 0x018F(s0)             # 0000018F
    andi    v0, t7, 0x00FF             # v0 = 00000001
    swc1    $f8, 0x01E0(s0)            # 000001E0
    swc1    $f10, 0x01E4(s0)           # 000001E4
    swc1    $f16, 0x01E8(s0)           # 000001E8
lbl_80B6CF00:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80B6CF88
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    lui     $at, %hi(var_80B6DBEC)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DBEC)($at)
    lw      a1, 0x01E4(s0)             # 000001E4
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lui     $at, %hi(var_80B6DBF0)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B6DBF0)($at)
    lw      a1, 0x01DC(s0)             # 000001DC
    lw      a3, 0x01E0(s0)             # 000001E0
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lh      t8, 0x0192(s0)             # 00000192
    lui     $at, %hi(var_80B6DBF4)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DBF4)($at)
    lwc1    $f6, 0x01D8(s0)            # 000001D8
    mtc1    t8, $f16                   # $f16 = 0.00
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mul.s   $f10, $f6, $f8
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    c.eq.s  $f0, $f8
    cvt.s.w $f18, $f16
    add.s   $f4, $f18, $f10
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    bc1f    lbl_80B6CF88
    sh      t0, 0x0192(s0)             # 00000192
    sh      $zero, 0x01F0(s0)          # 000001F0
    sb      t1, 0x018F(s0)             # 0000018F
lbl_80B6CF88:
    lbu     t2, 0x018F(s0)             # 0000018F
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t2, $at, lbl_80B6D02C
    lbu     t8, 0x018F(s0)             # 0000018F
    lh      t3, 0x0192(s0)             # 00000192
    lui     $at, %hi(var_80B6DBF8)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DBF8)($at)
    lwc1    $f16, 0x01D8(s0)           # 000001D8
    mtc1    t3, $f4                    # $f4 = 0.00
    lhu     v0, 0x01F0(s0)             # 000001F0
    mul.s   $f10, $f16, $f18
    lui     $at, 0x3F80                # $at = 3F800000
    slti    v1, v0, 0x0029
    xori    v1, v1, 0x0001             # v1 = 00000001
    addiu   t6, v0, 0x0001             # t6 = 00000001
    sh      t6, 0x01F0(s0)             # 000001F0
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f10
    trunc.w.s $f16, $f8
    mfc1    t5, $f16
    beq     v1, $zero, lbl_80B6D028
    sh      t5, 0x0192(s0)             # 00000192
    mtc1    $at, $f0                   # $f0 = 1.00
    lwc1    $f18, 0x01A8(s0)           # 000001A8
    lwc1    $f10, 0x01B4(s0)           # 000001B4
    lui     $at, 0x3FC0                # $at = 3FC00000
    sub.s   $f4, $f18, $f0
    mtc1    $at, $f6                   # $f6 = 1.50
    lui     $at, %hi(var_80B6DBFC)     # $at = 80B70000
    sub.s   $f8, $f10, $f0
    swc1    $f4, 0x01D8(s0)            # 000001D8
    swc1    $f6, 0x01DC(s0)            # 000001DC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x01E0(s0)            # 000001E0
    lwc1    $f16, %lo(var_80B6DBFC)($at)
    addiu   a1, $zero, 0x28E9          # a1 = 000028E9
    jal     func_80022FD0
    swc1    $f16, 0x01E4(s0)           # 000001E4
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x018F(s0)             # 0000018F
lbl_80B6D028:
    lbu     t8, 0x018F(s0)             # 0000018F
lbl_80B6D02C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t8, $at, lbl_80B6D11C
    lbu     t4, 0x018F(s0)             # 0000018F
    lh      t9, 0x0192(s0)             # 00000192
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f6                   # $f6 = 16384.00
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B6DC00)     # $at = 80B70000
    lw      a1, 0x01DC(s0)             # 000001DC
    cvt.s.w $f4, $f18
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    addiu   t2, s0, 0x01E0             # t2 = 000001E0
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    add.s   $f10, $f4, $f6
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    trunc.w.s $f8, $f10
    mfc1    t1, $f8
    nop
    sh      t1, 0x0192(s0)             # 00000192
    lwc1    $f16, %lo(var_80B6DC00)($at)
    sw      t2, 0x0028($sp)
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lui     $at, %hi(var_80B6DC04)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC04)($at)
    swc1    $f0, 0x0044($sp)
    lw      a1, 0x01E4(s0)             # 000001E4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lw      a0, 0x0028($sp)
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x01E0(s0)            # 000001E0
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f8, 0x01D8(s0)            # 000001D8
    add.s   $f10, $f4, $f6
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_80B6DC08)     # $at = 80B70000
    add.s   $f18, $f8, $f16
    swc1    $f10, 0x01A4(s0)           # 000001A4
    swc1    $f18, 0x01A8(s0)           # 000001A8
    lwc1    $f4, 0x0044($sp)
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B6D11C
    lbu     t4, 0x018F(s0)             # 0000018F
    lwc1    $f10, %lo(var_80B6DC08)($at)
    lui     $at, %hi(var_80B6DC0C)     # $at = 80B70000
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    swc1    $f10, 0x01D8(s0)           # 000001D8
    lwc1    $f8, %lo(var_80B6DC0C)($at)
    sb      t3, 0x018F(s0)             # 0000018F
    swc1    $f8, 0x01DC(s0)            # 000001DC
    lbu     t4, 0x018F(s0)             # 0000018F
lbl_80B6D11C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    bne     t4, $at, lbl_80B6D1A0
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     $at, %hi(var_80B6DC10)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6DC10)($at)
    lw      a1, 0x01DC(s0)             # 000001DC
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lui     a3, 0x4680                 # a3 = 46800000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x01D8(s0)           # 000001D8
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      t5, 0x0192(s0)             # 00000192
    trunc.w.s $f4, $f18
    c.eq.s  $f0, $f6
    mfc1    t9, $f4
    nop
    addu    t0, t5, t9
    bc1f    lbl_80B6D1A0
    sh      t0, 0x0192(s0)             # 00000192
    lh      v0, 0x0192(s0)             # 00000192
    lui     $at, 0xFFFF                # $at = FFFF0000
    blezl   v0, lbl_80B6D188
    mtc1    v0, $f10                   # $f10 = 0.00
    addu    v0, v0, $at
    mtc1    v0, $f10                   # $f10 = 0.00
lbl_80B6D188:
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    cvt.s.w $f8, $f10
    sb      t1, 0x018F(s0)             # 0000018F
    swc1    $f16, 0x01DC(s0)           # 000001DC
    swc1    $f8, 0x01D8(s0)            # 000001D8
lbl_80B6D1A0:
    lbu     t2, 0x018F(s0)             # 0000018F
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t2, $at, lbl_80B6D27C
    lbu     t7, 0x018F(s0)             # 0000018F
    lh      v0, 0x0192(s0)             # 00000192
    lui     $at, 0xFFFF                # $at = FFFF0000
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    blez    v0, lbl_80B6D1C8
    ori     $at, $at, 0x0001           # $at = FFFF0001
    addu    v0, v0, $at
lbl_80B6D1C8:
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B6DC14)     # $at = 80B70000
    lw      a1, 0x01DC(s0)             # 000001DC
    cvt.s.w $f4, $f18
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x4563                 # a3 = 45630000
    ori     a3, a3, 0x8E39             # a3 = 45638E39
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    swc1    $f4, 0x01D8(s0)            # 000001D8
    lwc1    $f6, %lo(var_80B6DC14)($at)
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x01D8(s0)           # 000001D8
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    trunc.w.s $f8, $f10
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3831          # a1 = 00003831
    c.eq.s  $f0, $f16
    mfc1    t4, $f8
    bc1f    lbl_80B6D278
    sh      t4, 0x0192(s0)             # 00000192
    lwc1    $f18, 0x01A8(s0)           # 000001A8
    mtc1    $at, $f4                   # $f4 = 1.00
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x01A4(s0)            # 000001A4
    sub.s   $f6, $f18, $f4
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    swc1    $f10, 0x01DC(s0)           # 000001DC
    sub.s   $f18, $f8, $f16
    swc1    $f6, 0x01D8(s0)            # 000001D8
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 0.50
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      $zero, 0x0192(s0)          # 00000192
    sh      $zero, 0x01F0(s0)          # 000001F0
    swc1    $f18, 0x01E0(s0)           # 000001E0
    swc1    $f4, 0x01E4(s0)            # 000001E4
    swc1    $f6, 0x01E8(s0)            # 000001E8
    jal     func_80022FD0
    swc1    $f10, 0x01EC(s0)           # 000001EC
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sb      t6, 0x018F(s0)             # 0000018F
lbl_80B6D278:
    lbu     t7, 0x018F(s0)             # 0000018F
lbl_80B6D27C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    bne     t7, $at, lbl_80B6D450
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     $at, %hi(var_80B6DC18)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DC18)($at)
    lw      a1, 0x01DC(s0)             # 000001DC
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t8, s0, 0x01E0             # t8 = 000001E0
    sw      t8, 0x0028($sp)
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     $at, %hi(var_80B6DC1C)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B6DC1C)($at)
    swc1    $f0, 0x0044($sp)
    lw      a1, 0x01E4(s0)             # 000001E4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lw      a0, 0x0028($sp)
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lui     $at, %hi(var_80B6DC20)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC20)($at)
    swc1    $f0, 0x0040($sp)
    lw      a1, 0x01EC(s0)             # 000001EC
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   a0, s0, 0x01E8             # a0 = 000001E8
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    swc1    $f0, 0x003C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     t5, 0x01F0(s0)             # 000001F0
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, t5, $at
    lwc1    $f4, 0x01E0(s0)            # 000001E0
    lwc1    $f8, 0x01D8(s0)            # 000001D8
    mfhi    t9
    add.s   $f10, $f4, $f6
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80B6DC24)     # $at = 80B70000
    add.s   $f18, $f8, $f16
    swc1    $f10, 0x01A4(s0)           # 000001A4
    cvt.s.w $f6, $f4
    swc1    $f18, 0x01A8(s0)           # 000001A8
    lwc1    $f10, %lo(var_80B6DC24)($at)
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f16                  # $f16 = 360.00
    lui     $at, %hi(var_80B6DC28)     # $at = 80B70000
    mul.s   $f8, $f6, $f10
    lwc1    $f4, %lo(var_80B6DC28)($at)
    mul.s   $f18, $f8, $f16
    nop
    mul.s   $f12, $f18, $f4
    jal     func_800CF470
    nop
    lhu     t0, 0x01F0(s0)             # 000001F0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lwc1    $f10, 0x01E8(s0)           # 000001E8
    div     $zero, t0, $at
    mul.s   $f8, $f0, $f10
    lwc1    $f6, 0x01A4(s0)            # 000001A4
    mfhi    t1
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B6DC2C)     # $at = 80B70000
    cvt.s.w $f4, $f18
    add.s   $f16, $f6, $f8
    swc1    $f16, 0x01A4(s0)           # 000001A4
    lwc1    $f10, %lo(var_80B6DC2C)($at)
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f8                   # $f8 = 360.00
    mul.s   $f6, $f4, $f10
    lui     $at, %hi(var_80B6DC30)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC30)($at)
    mul.s   $f16, $f6, $f8
    nop
    mul.s   $f12, $f16, $f18
    jal     func_800CF470
    nop
    lwc1    $f10, 0x01E8(s0)           # 000001E8
    lwc1    $f4, 0x01A8(s0)            # 000001A8
    lhu     t2, 0x01F0(s0)             # 000001F0
    mul.s   $f6, $f0, $f10
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x01F0(s0)             # 000001F0
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x01A8(s0)            # 000001A8
    lwc1    $f16, 0x0044($sp)
    lwc1    $f10, 0x0040($sp)
    c.eq.s  $f16, $f18
    nop
    bc1fl   lbl_80B6D454
    lhu     t6, 0x0192(s0)             # 00000192
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x003C($sp)
    c.eq.s  $f10, $f4
    nop
    bc1fl   lbl_80B6D454
    lhu     t6, 0x0192(s0)             # 00000192
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     t4, %hi(func_80B6D4B8)     # t4 = 80B70000
    addiu   t4, t4, %lo(func_80B6D4B8) # t4 = 80B6D4B8
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80B6D454
    lhu     t6, 0x0192(s0)             # 00000192
    sb      $zero, 0x018C(s0)          # 0000018C
    sw      t4, 0x0188(s0)             # 00000188
lbl_80B6D450:
    lhu     t6, 0x0192(s0)             # 00000192
lbl_80B6D454:
    lhu     t7, 0x0036($sp)
    or      a0, s0, $zero              # a0 = 00000000
    slt     $at, t6, t7
    beql    $at, $zero, lbl_80B6D474
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x28EB          # a1 = 000028EB
    lw      $ra, 0x0024($sp)
lbl_80B6D474:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B6D484:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     v0, 0x01F0(a0)             # 000001F0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    bgtz    v0, lbl_80B6D4A8
    sh      t6, 0x01F0(a0)             # 000001F0
    jal     func_80020EB4
    nop
lbl_80B6D4A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6D4B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80B6D4F0
    lw      a0, 0x0018($sp)
    jal     func_80B6C1CC
    lw      a1, 0x001C($sp)
lbl_80B6D4F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6D500:
    lui     a1, %hi(var_80B6DB84)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B6DB84)  # a1 = 80B6DB84
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, a0, 0x0190             # v1 = 00000190
lbl_80B6D510:
    lw      t7, 0x0000(a1)             # 80B6DB84
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0003
    swl     t7, 0x0000(v1)             # 00000190
    swr     t7, 0x0003(v1)             # 00000193
    lhu     t7, 0x0004(a1)             # 80B6DB88
    addiu   v1, v1, 0x0006             # v1 = 00000196
    bne     $at, $zero, lbl_80B6D510
    sh      t7, -0x0002(v1)            # 00000194
    lui     a1, %hi(var_80B6DB8C)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B6DB8C)  # a1 = 80B6DB8C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, a0, 0x01A4             # v1 = 000001A4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_80B6D548:
    lw      t9, 0x0000(a1)             # 80B6DB8C
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x000C             # v1 = 000001B0
    sw      t9, -0x000C(v1)            # 000001A4
    lw      t8, 0x0004(a1)             # 80B6DB90
    sw      t8, -0x0008(v1)            # 000001A8
    lw      t9, 0x0008(a1)             # 80B6DB94
    bne     v0, a2, lbl_80B6D548
    sw      t9, -0x0004(v1)            # 000001AC
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x018C(a0)             # 0000018C
    jr      $ra
    nop


func_80B6D57C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x41B8                 # a1 = 41B80000
    lbu     t6, 0x018E(s0)             # 0000018E
    andi    t7, t6, 0x0010             # t7 = 00000000
    bnel    t7, $zero, lbl_80B6D6E4
    lw      t9, 0x0188(s0)             # 00000188
    lbu     v0, 0x014D(s0)             # 0000014D
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80B6D6A8
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lbu     t0, 0x00B1(s0)             # 000000B1
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      $zero, 0x018F(s0)          # 0000018F
    addiu   t1, t0, 0xFFF5             # t1 = FFFFFFF5
    sltiu   $at, t1, 0x0005
    beq     $at, $zero, lbl_80B6D6A4
    sb      t9, 0x014D(s0)             # 0000014D
    sll     t1, t1,  2
    lui     $at, %hi(var_80B6DC34)     # $at = 80B70000
    addu    $at, $at, t1
    lw      t1, %lo(var_80B6DC34)($at)
    jr      t1
    nop
var_80B6D5F4:
    lbu     t2, 0x018E(s0)             # 0000018E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t3, t2, 0x0001             # t3 = 00000001
    jal     func_80B6D500
    sb      t3, 0x018E(s0)             # 0000018E
    lui     t4, %hi(func_80B6C65C)     # t4 = 80B70000
    addiu   t4, t4, %lo(func_80B6C65C) # t4 = 80B6C65C
    b       lbl_80B6D6A4
    sw      t4, 0x0188(s0)             # 00000188
var_80B6D618:
    lbu     t5, 0x018E(s0)             # 0000018E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t6, t5, 0x0001             # t6 = 00000001
    jal     func_80B6D500
    sb      t6, 0x018E(s0)             # 0000018E
    lui     t7, %hi(func_80B6C758)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6C758) # t7 = 80B6C758
    b       lbl_80B6D6A4
    sw      t7, 0x0188(s0)             # 00000188
var_80B6D63C:
    lbu     t8, 0x018E(s0)             # 0000018E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t9, t8, 0x0001             # t9 = 00000001
    jal     func_80B6D500
    sb      t9, 0x018E(s0)             # 0000018E
    lui     t0, %hi(func_80B6C88C)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B6C88C) # t0 = 80B6C88C
    b       lbl_80B6D6A4
    sw      t0, 0x0188(s0)             # 00000188
var_80B6D660:
    lbu     t1, 0x018E(s0)             # 0000018E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t2, t1, 0x0002             # t2 = 00000002
    jal     func_80B6D500
    sb      t2, 0x018E(s0)             # 0000018E
    lui     t3, %hi(func_80B6CA84)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B6CA84) # t3 = 80B6CA84
    b       lbl_80B6D6A4
    sw      t3, 0x0188(s0)             # 00000188
var_80B6D684:
    lbu     t4, 0x018E(s0)             # 0000018E
    or      a0, s0, $zero              # a0 = 00000000
    ori     t5, t4, 0x0001             # t5 = 00000001
    jal     func_80B6D500
    sb      t5, 0x018E(s0)             # 0000018E
    lui     t6, %hi(func_80B6CE90)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6CE90) # t6 = 80B6CE90
    sw      t6, 0x0188(s0)             # 00000188
lbl_80B6D6A4:
    addiu   a1, s0, 0x013C             # a1 = 0000013C
lbl_80B6D6A8:
    sw      a1, 0x0020($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0020($sp)
    lw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0020($sp)
    lw      t9, 0x0188(s0)             # 00000188
lbl_80B6D6E4:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6C38C
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B6D714:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lbu     t6, 0x018E(s1)             # 0000018E
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, a1
    andi    t7, t6, 0x0008             # t7 = 00000000
    bnel    t7, $zero, lbl_80B6DAB8
    lw      $ra, 0x003C($sp)
    lw      a0, 0x0000(a1)             # 00000000
    lw      t8, 0x1DE4(t8)             # 00011DE4
    sw      a1, 0x007C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    jal     func_8007E298
    sw      t8, 0x006C($sp)
    jal     func_800AA6EC
    nop
    lbu     t9, 0x018E(s1)             # 0000018E
    andi    t1, t9, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_80B6D860
    lw      v1, 0x02C0(s0)             # 000002C0
    lh      t2, 0x0192(s1)             # 00000192
    lui     $at, %hi(var_80B6DC48)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DC48)($at)
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t3, 0x0190(s1)             # 00000190
    lui     $at, %hi(var_80B6DC4C)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC4C)($at)
    mtc1    t3, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AA9E0
    nop
    lh      t4, 0x0194(s1)             # 00000194
    lui     $at, %hi(var_80B6DC50)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DC50)($at)
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAD4C
    nop
    lwc1    $f12, 0x01A4(s1)           # 000001A4
    lwc1    $f14, 0x01A8(s1)           # 000001A8
    lw      a2, 0x01AC(s1)             # 000001AC
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t5, 0x0198(s1)             # 00000198
    lui     $at, %hi(var_80B6DC54)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC54)($at)
    mtc1    t5, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lh      t6, 0x0196(s1)             # 00000196
    lui     $at, %hi(var_80B6DC58)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B6DC58)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t7, 0x019A(s1)             # 0000019A
    lui     $at, %hi(var_80B6DC5C)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B6DC5C)($at)
    mtc1    t7, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80B6D860:
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x007C($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a1, 0x0060($sp)
    lui     a2, 0xDE00                 # a2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x0950             # t3 = 06000950
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lbu     t4, 0x018E(s1)             # 0000018E
    andi    t5, t4, 0x0004             # t5 = 00000000
    beql    t5, $zero, lbl_80B6D908
    lw      v1, 0x02C0(s0)             # 000002C0
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t3, 0x01D5(s1)             # 000001D5
    lbu     t9, 0x01D4(s1)             # 000001D4
    lbu     t7, 0x01D6(s1)             # 000001D6
    sll     t4, t3, 16
    lbu     t3, 0x01D7(s1)             # 000001D7
    sll     t1, t9, 24
    or      t5, t1, t4                 # t5 = 00000000
    sll     t8, t7,  8
    or      t9, t5, t8                 # t9 = 00000000
    or      t1, t9, t3                 # t1 = 06000950
    sw      t1, 0x0004(v1)             # 00000004
    b       lbl_80B6D924
    lw      v1, 0x02C0(s0)             # 000002C0
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80B6D908:
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80B6D924:
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x09D0             # t8 = 060009D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0A60             # t9 = 06000A60
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    jal     func_800AA724
    nop
    lbu     t3, 0x018E(s1)             # 0000018E
    lw      t4, 0x007C($sp)
    andi    t1, t3, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_80B6DAB8
    lw      $ra, 0x003C($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(t4)             # 00000000
    lw      a0, 0x007C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, a0, $at
    lui     $at, %hi(var_80B6DC60)     # $at = 80B70000
    lwc1    $f12, %lo(var_80B6DC60)($at)
    lui     $at, %hi(var_80B6DC64)     # $at = 80B70000
    lwc1    $f14, %lo(var_80B6DC64)($at)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(s1)             # 00000000
    lw      t5, 0x007C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t5)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t9, 0x007C($sp)
    lw      t6, 0x006C($sp)
    addiu   t2, $zero, 0x0080          # t2 = 00000080
    lw      a0, 0x0000(t9)             # 00000000
    subu    t7, $zero, t6
    sll     t5, t7,  2
    addu    t5, t5, t7
    sll     t5, t5,  2
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t1, $zero, 0x0040          # t1 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t3, 0x0010($sp)
    sw      t8, 0x0024($sp)
    sw      t5, 0x0020($sp)
    sw      t2, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0x8080             # t3 = FA008080
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFFFF                 # t1 = FFFF0000
    ori     t1, t1, 0x00FF             # t1 = FFFF00FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t7, 0xFF00                 # t7 = FF000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0405                 # t2 = 04050000
    addiu   t2, t2, 0x2A10             # t2 = 04052A10
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x003C($sp)
lbl_80B6DAB8:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    nop
    nop

.section .data

var_80B6DAD0: .word 0x01B90600, 0x02000009, 0x01880000, 0x000001F8
.word func_80B6C070
.word func_80B6C134
.word func_80B6D57C
.word func_80B6D714
var_80B6DAF0: .word \
0x0C000D39, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00150030, 0x00000000, 0x00000000
var_80B6DB1C: .word 0x00000000, 0x00000000, 0xFF000000
var_80B6DB28: .word \
0x0000E0C0, 0xE0E0D0E0, 0xF0F0F0B0, 0xB0B00000, \
0x00B0B0B0, 0x00000000, 0x00000000, 0x00000000
var_80B6DB48: .word 0x48500064
var_80B6DB4C: .word 0xFF323200
var_80B6DB50: .word 0x3232FF00
var_80B6DB54: .word 0xFFFFFF00
var_80B6DB58: .word 0x00000000, 0xBE99999A, 0x00000000
var_80B6DB64: .word 0xC8C8C880
var_80B6DB68: .word 0x64646400
var_80B6DB6C: .word 0x00000000, 0x00000000, 0x00000000
var_80B6DB78: .word 0x00000000, 0x00000000, 0x00000000
var_80B6DB84: .word 0x00000000, 0x00000000
var_80B6DB8C: .word \
0x3F800000, 0x3F800000, 0x3F800000, 0x00000000, \
0x00000000

.section .rodata

var_80B6DBA0: .word 0x3C8EFA35
var_80B6DBA4: .word 0x3C8EFA35
var_80B6DBA8: .word 0x3F4CCCCD
var_80B6DBAC: .word 0x3BE56042
var_80B6DBB0: .word 0x3A83126F
var_80B6DBB4: .word 0x3E99999A
var_80B6DBB8: .word 0x43360B61
var_80B6DBBC: .word 0x3F4CCCCD
var_80B6DBC0: .word 0x3BA3D70A
var_80B6DBC4: .word 0x3A83126F
var_80B6DBC8: .word 0xBF4CCCCD
var_80B6DBCC: .word 0x3A83126F
var_80B6DBD0: .word 0x3A83126F
var_80B6DBD4: .word 0x3CF5C28F
var_80B6DBD8: .word 0x3A83126F
var_80B6DBDC: .word 0x463B8000
var_80B6DBE0: .word 0x3E99999A
var_80B6DBE4: .word 0xC63B8000
var_80B6DBE8: .word 0x3DCCCCCD
var_80B6DBEC: .word 0x3A83126F
var_80B6DBF0: .word 0x3A83126F
var_80B6DBF4: .word 0x43360B61
var_80B6DBF8: .word 0x43360B61
var_80B6DBFC: .word 0xBE99999A
var_80B6DC00: .word 0x3A83126F
var_80B6DC04: .word 0x3A83126F
var_80B6DC08: .word 0x3F32B8C2
var_80B6DC0C: .word 0x3EB2B8C2
var_80B6DC10: .word 0x45638E39
var_80B6DC14: .word 0x3A83126F
var_80B6DC18: .word 0x3A83126F
var_80B6DC1C: .word 0x3A83126F
var_80B6DC20: .word 0x3A83126F
var_80B6DC24: .word 0x3DCCCCCD
var_80B6DC28: .word 0x3C8EFA35
var_80B6DC2C: .word 0x3DCCCCCD
var_80B6DC30: .word 0x3C8EFA35
var_80B6DC34: .word var_80B6D684
.word var_80B6D660
.word var_80B6D63C
.word var_80B6D618
.word var_80B6D5F4
var_80B6DC48: .word 0x38C90FDB
var_80B6DC4C: .word 0x38C90FDB
var_80B6DC50: .word 0x38C90FDB
var_80B6DC54: .word 0x38C90FDB
var_80B6DC58: .word 0x38C90FDB
var_80B6DC5C: .word 0x38C90FDB
var_80B6DC60: .word 0x3D4CCCCD
var_80B6DC64: .word 0xBD4CCCCD, 0x00000000, 0x00000000

