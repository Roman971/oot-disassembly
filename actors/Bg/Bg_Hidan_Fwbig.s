.section .text
func_809344C0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     a1, %hi(var_809350BC)      # a1 = 80930000
    addiu   a1, a1, %lo(var_809350BC)  # a1 = 809350BC
    lw      t7, 0x1C44(t6)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C
    sw      t7, 0x0024($sp)
    addiu   a1, s0, 0x0144             # a1 = 00000144
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x0034($sp)
    lui     a3, %hi(var_80935090)      # a3 = 80930000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80935090)  # a3 = 80935090
    lw      a0, 0x0034($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sra     t1, t9,  8
    sb      t1, 0x0140(s0)             # 00000140
    lb      t4, 0x0140(s0)             # 00000140
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sb      t8, 0x00AE(s0)             # 000000AE
    beq     t4, $zero, lbl_80934630
    sh      t3, 0x001C(s0)             # 0000001C
    lui     $at, 0x44C3                # $at = 44C30000
    mtc1    $at, $f4                   # $f4 = 1560.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x4396                # $at = 43960000
    swc1    $f4, 0x0008(s0)            # 00000008
    swc1    $f6, 0x0010(s0)            # 00000010
    lw      t5, 0x0024($sp)
    mtc1    $at, $f8                   # $f8 = 300.00
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    lwc1    $f0, 0x002C(t5)            # 0000002C
    addiu   t7, $zero, 0xB1C8          # t7 = FFFFB1C8
    lui     $at, 0xC396                # $at = C3960000
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_80934598
    mtc1    $at, $f10                  # $f10 = -300.00
    sh      t7, 0x00B6(s0)             # 000000B6
    lh      t8, 0x00B6(s0)             # 000000B6
    sb      t6, 0x0140(s0)             # 00000140
    b       lbl_809345D4
    sh      t8, 0x0016(s0)             # 00000016
    mtc1    $at, $f10                  # $f10 = -300.00
lbl_80934598:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0xCE38          # t0 = FFFFCE38
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_809345C4
    nop
    sh      t0, 0x00B6(s0)             # 000000B6
    lh      t1, 0x00B6(s0)             # 000000B6
    sb      t9, 0x0140(s0)             # 00000140
    b       lbl_809345D4
    sh      t1, 0x0016(s0)             # 00000016
lbl_809345C4:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80934650
    lw      $ra, 0x001C($sp)
lbl_809345D4:
    jal     func_8093468C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3E19                 # a1 = 3E190000
    ori     a1, a1, 0x999A             # a1 = 3E19999A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4516                # $at = 45160000
    mtc1    $at, $f16                  # $f16 = 2400.00
    lwc1    $f18, 0x0054(s0)           # 00000054
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lw      t3, 0x0004(s0)             # 00000004
    mul.s   $f4, $f16, $f18
    lui     t5, %hi(func_80934940)     # t5 = 80930000
    addiu   t2, $zero, 0x00E6          # t2 = 000000E6
    addiu   t5, t5, %lo(func_80934940) # t5 = 80934940
    ori     t4, t3, 0x0010             # t4 = 00000010
    sh      t2, 0x0186(s0)             # 00000186
    sw      t4, 0x0004(s0)             # 00000004
    sub.s   $f8, $f6, $f4
    sb      $zero, 0x0141(s0)          # 00000141
    sw      t5, 0x013C(s0)             # 0000013C
    b       lbl_8093464C
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_80934630:
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_8093470C)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8093470C) # t6 = 8093470C
    sw      t6, 0x013C(s0)             # 0000013C
lbl_8093464C:
    lw      $ra, 0x001C($sp)
lbl_80934650:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80934660:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0144             # a1 = 00000144
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8093468C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lb      t7, 0x0140(a1)             # 00000140
    lh      t6, 0x00B6(a1)             # 000000B6
    sw      a1, 0x0020($sp)
    subu    $at, $zero, t7
    sll     t8, $at, 14
    addu    a0, t6, t8
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, 0x001E($sp)
    lui     $at, %hi(var_809350C0)     # $at = 80930000
    lwc1    $f4, %lo(var_809350C0)($at)
    lw      a1, 0x0020($sp)
    lh      a0, 0x001E($sp)
    mul.s   $f6, $f0, $f4
    lwc1    $f8, 0x0008(a1)            # 00000008
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(a1)           # 00000024
    lui     $at, %hi(var_809350C4)     # $at = 80930000
    lwc1    $f16, %lo(var_809350C4)($at)
    lw      a1, 0x0020($sp)
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x0010(a1)            # 00000010
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x002C(a1)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8093470C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    lh      a1, 0x001C(t6)             # 0000001C
    beq     v0, $zero, lbl_80934760
    lw      a3, 0x0020($sp)
    lui     t7, %hi(func_80934770)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80934770) # t7 = 80934770
    sw      t7, 0x013C(a3)             # 0000013C
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0D0C          # a1 = 00000D0C
    jal     func_8006B6FC
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      t9, 0x0020($sp)
    addiu   t8, $zero, 0x0023          # t8 = 00000023
    sh      t8, 0x0142(t9)             # 00000142
lbl_80934760:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80934770:
    sw      a1, 0x0004($sp)
    lh      v1, 0x0142(a0)             # 00000142
    lui     t7, %hi(func_80934810)     # t7 = 80930000
    addiu   t7, t7, %lo(func_80934810) # t7 = 80934810
    sltiu   v0, v1, 0x0001
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_80934794
    sh      t6, 0x0142(a0)             # 00000142
    sw      t7, 0x013C(a0)             # 0000013C
lbl_80934794:
    jr      $ra
    nop


func_8093479C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_8006385C
    lui     a2, 0x4120                 # a2 = 41200000
    beq     v0, $zero, lbl_80934800
    lw      a3, 0x0018($sp)
    lb      t6, 0x0140(a3)             # 00000140
    lui     t8, %hi(func_809349A4)     # t8 = 80930000
    lw      a0, 0x001C($sp)
    bne     t6, $zero, lbl_809347FC
    addiu   t8, t8, %lo(func_809349A4) # t8 = 809349A4
    lh      a1, 0x001C(a3)             # 0000001C
    jal     func_80020510
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t7, %hi(func_8093470C)     # t7 = 80930000
    addiu   t7, t7, %lo(func_8093470C) # t7 = 8093470C
    b       lbl_80934800
    sw      t7, 0x013C(a3)             # 0000013C
lbl_809347FC:
    sw      t8, 0x013C(a3)             # 0000013C
lbl_80934800:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80934810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x4516                # $at = 45160000
    mtc1    $at, $f4                   # $f4 = 2400.00
    lwc1    $f6, 0x0054(a3)            # 00000054
    lwc1    $f10, 0x000C(a3)           # 0000000C
    sw      a3, 0x0018($sp)
    mul.s   $f8, $f4, $f6
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lui     a2, 0x4120                 # a2 = 41200000
    sub.s   $f16, $f10, $f8
    mfc1    a1, $f16
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_809348E0
    lw      a3, 0x0018($sp)
    lb      v0, 0x0140(a3)             # 00000140
    lui     t6, %hi(func_809348F0)     # t6 = 80930000
    addiu   t6, t6, %lo(func_809348F0) # t6 = 809348F0
    bne     v0, $zero, lbl_80934878
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    sw      t6, 0x013C(a3)             # 0000013C
    b       lbl_809348E0
    sh      t7, 0x0142(a3)             # 00000142
lbl_80934878:
    lbu     v1, 0x0141(a3)             # 00000141
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, a3, $zero              # a0 = 00000000
    bne     v1, $at, lbl_8093489C
    nop
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_809348E4
    lw      $ra, 0x0014($sp)
lbl_8093489C:
    bne     v1, $zero, lbl_809348BC
    sll     t9, v0,  2
    lh      t8, 0x00B6(a3)             # 000000B6
    subu    t9, t9, v0
    sll     t9, t9, 11
    subu    t0, t8, t9
    b       lbl_809348C8
    sh      t0, 0x00B6(a3)             # 000000B6
lbl_809348BC:
    lh      t1, 0x0016(a3)             # 00000016
    sb      $zero, 0x0141(a3)          # 00000141
    sh      t1, 0x00B6(a3)             # 000000B6
lbl_809348C8:
    jal     func_8093468C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t2, %hi(func_8093479C)     # t2 = 80930000
    addiu   t2, t2, %lo(func_8093479C) # t2 = 8093479C
    sw      t2, 0x013C(a3)             # 0000013C
lbl_809348E0:
    lw      $ra, 0x0014($sp)
lbl_809348E4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809348F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      a1, 0x0142(a0)             # 00000142
    lui     t7, %hi(func_8093479C)     # t7 = 80930000
    addiu   t7, t7, %lo(func_8093479C) # t7 = 8093479C
    beq     a1, $zero, lbl_80934918
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0142(a0)             # 00000142
    lh      a1, 0x0142(a0)             # 00000142
lbl_80934918:
    bne     a1, $zero, lbl_80934928
    nop
    sw      t7, 0x013C(a0)             # 0000013C
    lh      a1, 0x0142(a0)             # 00000142
lbl_80934928:
    jal     func_80023164
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80934940:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lui     $at, %hi(var_809350C8)     # $at = 80930000
    lwc1    $f6, %lo(var_809350C8)($at)
    lw      v0, 0x1C44(t6)             # 00001C44
    lui     t7, %hi(func_8093479C)     # t7 = 80930000
    addiu   t7, t7, %lo(func_8093479C) # t7 = 8093479C
    lwc1    $f4, 0x0024(v0)            # 00000024
    addiu   a1, $zero, 0x0CDA          # a1 = 00000CDA
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80934998
    lw      $ra, 0x001C($sp)
    sw      t7, 0x013C(a3)             # 0000013C
    sw      $zero, 0x0010($sp)
    jal     func_8006B6FC
    lw      a0, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_80934998:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809349A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8007943C
    sw      a3, 0x0018($sp)
    bne     v0, $zero, lbl_80934A34
    lw      a3, 0x0018($sp)
    lb      t7, 0x0140(a3)             # 00000140
    lh      t6, 0x0016(a3)             # 00000016
    sw      a3, 0x0018($sp)
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  3
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  4
    addu    a1, t6, t8
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, a3, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    beq     v0, $zero, lbl_80934A2C
    lw      a3, 0x0018($sp)
    lui     t0, %hi(func_80934810)     # t0 = 80930000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, t0, %lo(func_80934810) # t0 = 80934810
    sb      t9, 0x0141(a3)             # 00000141
    b       lbl_80934A34
    sw      t0, 0x013C(a3)             # 0000013C
lbl_80934A2C:
    jal     func_8093468C
    or      a0, a3, $zero              # a0 = 00000000
lbl_80934A34:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80934A44:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x003C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      a3, 0x0038($sp)
    jal     func_8002154C
    addiu   a2, v0, 0x0024             # a2 = 00000024
    lwc1    $f4, 0x0030($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      a3, 0x0038($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80934AA4
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_80934AAC
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f0                   # $f0 = 25.00
lbl_80934AA4:
    nop
    lui     $at, 0x41C8                # $at = 41C80000
lbl_80934AAC:
    mtc1    $at, $f8                   # $f8 = 25.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0xC3FA                # $at = C3FA0000
    lwc1    $f2, 0x0028($sp)
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0030($sp)
    lb      t7, 0x0140(a3)             # 00000140
    bnel    t7, $zero, lbl_80934B30
    mtc1    $at, $f0                   # $f0 = -500.00
    lui     $at, 0xC3B4                # $at = C3B40000
    mtc1    $at, $f0                   # $f0 = -360.00
    lwc1    $f2, 0x0028($sp)
    lui     $at, 0x43B4                # $at = 43B40000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80934B04
    mtc1    $at, $f12                  # $f12 = 360.00
    b       lbl_80934B74
    swc1    $f0, 0x0028($sp)
    mtc1    $at, $f12                  # $f12 = 360.00
lbl_80934B04:
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80934B24
    mov.s   $f0, $f2
    b       lbl_80934B24
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80934B24:
    b       lbl_80934B74
    swc1    $f0, 0x0028($sp)
    mtc1    $at, $f0                   # $f0 = 360.00
lbl_80934B30:
    lui     $at, 0x43FA                # $at = 43FA0000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80934B50
    mtc1    $at, $f12                  # $f12 = 500.00
    b       lbl_80934B74
    swc1    $f0, 0x0028($sp)
    mtc1    $at, $f12                  # $f12 = 500.00
lbl_80934B50:
    nop
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80934B70
    mov.s   $f0, $f2
    b       lbl_80934B70
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80934B70:
    swc1    $f0, 0x0028($sp)
lbl_80934B74:
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a3, 0x0038($sp)
    lw      a3, 0x0038($sp)
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0020($sp)
    lwc1    $f6, 0x0028($sp)
    lw      a3, 0x0038($sp)
    lwc1    $f2, 0x0020($sp)
    mul.s   $f8, $f6, $f0
    lwc1    $f16, 0x0030($sp)
    lwc1    $f4, 0x0024(a3)            # 00000024
    mul.s   $f18, $f16, $f2
    add.s   $f10, $f4, $f8
    lwc1    $f8, 0x002C(a3)            # 0000002C
    add.s   $f6, $f10, $f18
    trunc.w.s $f4, $f6
    mfc1    t9, $f4
    nop
    sh      t9, 0x018A(a3)             # 0000018A
    lwc1    $f16, 0x0028($sp)
    lwc1    $f6, 0x0030($sp)
    mul.s   $f10, $f16, $f2
    sub.s   $f18, $f8, $f10
    mul.s   $f4, $f6, $f0
    lwc1    $f10, 0x0028(a3)           # 00000028
    trunc.w.s $f6, $f10
    add.s   $f16, $f18, $f4
    mfc1    t3, $f6
    mtc1    $zero, $f4                 # $f4 = 0.00
    trunc.w.s $f8, $f16
    sh      t3, 0x018C(a3)             # 0000018C
    mfc1    t1, $f8
    nop
    sh      t1, 0x018E(a3)             # 0000018E
    lwc1    $f18, 0x0030($sp)
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_80934C28
    lh      t5, 0x00B6(a3)             # 000000B6
    lh      t4, 0x00B6(a3)             # 000000B6
    b       lbl_80934C34
    sh      t4, 0x0032(a3)             # 00000032
    lh      t5, 0x00B6(a3)             # 000000B6
lbl_80934C28:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t6, t5, $at
    sh      t6, 0x0032(a3)             # 00000032
lbl_80934C34:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80934C44:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     v0, 0x0154(s0)             # 00000154
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80934CA8
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t7, 0x0154(s0)             # 00000154
    lh      a3, 0x0032(s0)             # 00000032
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4
    swc1    $f4, 0x0010($sp)
    lb      t8, 0x0140(s0)             # 00000140
    lui     t9, %hi(func_80934810)     # t9 = 80930000
    addiu   t9, t9, %lo(func_80934810) # t9 = 80934810
    beql    t8, $zero, lbl_80934CAC
    lb      t0, 0x0140(s0)             # 00000140
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80934CA8:
    lb      t0, 0x0140(s0)             # 00000140
lbl_80934CAC:
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, s1
    beql    t0, $zero, lbl_80934CE0
    lw      t9, 0x013C(s0)             # 0000013C
    lb      t1, 0x0003(s0)             # 00000003
    lb      t2, 0x1CD0(t2)             # 00011CD0
    lui     t4, %hi(func_80934810)     # t4 = 80930000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    bne     t1, t2, lbl_80934CDC
    addiu   t4, t4, %lo(func_80934810) # t4 = 80934810
    sb      t3, 0x0141(s0)             # 00000141
    sw      t4, 0x013C(s0)             # 0000013C
lbl_80934CDC:
    lw      t9, 0x013C(s0)             # 0000013C
lbl_80934CE0:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     t5, 0x8012                 # t5 = 80120000
    sub.s   $f10, $f6, $f8
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_80934DAC
    lw      $ra, 0x0024($sp)
    lw      t5, -0x46D0(t5)            # 8011B930
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t5, 0x0004
    beql    $at, $zero, lbl_80934D40
    lwc1    $f18, 0x0024(s0)           # 00000024
    jal     func_8002313C
    addiu   a1, $zero, 0x20B3          # a1 = 000020B3
    b       lbl_80934D70
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f18, 0x0024(s0)           # 00000024
lbl_80934D40:
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sll     t8, t7, 16
    sra     t0, t8, 16
    bnel    t0, $at, lbl_80934D70
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x20BB          # a1 = 000020BB
    or      a0, s0, $zero              # a0 = 00000000
lbl_80934D70:
    jal     func_80934A44
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    addiu   a2, s0, 0x0144             # a2 = 00000144
    sw      a2, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    lw      a2, 0x0028($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80934DAC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80934DBC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    lw      t0, 0x0068($sp)
    lui     t3, 0x8000                 # t3 = 80000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a0, 0x0401                 # a0 = 04010000
    addiu   a0, a0, 0x7870             # a0 = 04017870
    sll     t9, a0,  4
    srl     t4, t9, 28
    lui     t8, 0xDB06                 # t8 = DB060000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     t5, t4,  2
    addu    t6, t1, t5
    sw      t8, 0x0000(v1)             # 00000000
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, a0, t2
    lui     t6, 0xDB06                 # t6 = DB060000
    addu    t9, t7, t8
    addu    t4, t9, t3
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a2, 0x0402                 # a2 = 04020000
    addiu   a2, a2, 0x8070             # a2 = 04018070
    sll     t7, a2,  4
    srl     t8, t7, 28
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sll     t9, t8,  2
    ori     t6, t6, 0x0028             # t6 = DB060028
    addu    t4, t1, t9
    sw      t6, 0x0000(v1)             # 00000000
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, a2, t2
    lui     $at, 0x4516                # $at = 45160000
    addu    t7, t5, t6
    addu    t8, t7, t3
    sw      t8, 0x0004(v1)             # 00000004
    lwc1    $f4, 0x0054(t0)            # 00000054
    mtc1    $at, $f6                   # $f6 = 2400.00
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f0, $f4, $f6
    nop
    lw      a3, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t9, a3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(a3)             # 00000000
    lwc1    $f10, 0x0028(t0)           # 00000028
    lwc1    $f8, 0x000C(t0)            # 0000000C
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    sub.s   $f16, $f8, $f10
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t0, 0x0001                 # t0 = 00010000
    sub.s   $f18, $f0, $f16
    mul.s   $f6, $f18, $f4
    div.s   $f8, $f6, $f0
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80934F48
    mfc1    t6, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80934F3C
    nop
    mfc1    t6, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80934F54
    or      t6, t6, $at                # t6 = 80000000
lbl_80934F3C:
    b       lbl_80934F54
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10
lbl_80934F48:
    nop
    bltz    t6, lbl_80934F3C
    nop
lbl_80934F54:
    andi    t7, t6, 0x00FF             # t7 = 000000FF
    lui     $at, 0xFFDC                # $at = FFDC0000
    or      t8, t7, $at                # t8 = FFDC00FF
    ctc1    t5, $f31
    sw      t8, 0x0004(a3)             # 00000004
    lw      t2, 0x006C($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    lui     t5, 0xFF00                 # t5 = FF000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    addu    t0, t0, t2
    sw      t7, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t0)             # 00011DE4
    lw      a0, 0x0000(t2)             # 00FFFFFF
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    $at, $zero, t0
    sll     t5, $at,  4
    subu    t5, t5, $at
    sw      t8, 0x0010($sp)
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    andi    t6, t5, 0x00FF             # t6 = 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x001C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0044($sp)
    jal     func_8007EB84
    andi    a2, t0, 0x007F             # a2 = 00000000
    lw      t1, 0x0044($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x006C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a1, 0x0040($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xDB20             # t8 = 0600DB20
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop
    nop

.section .data

var_80935070: .word 0x008D0600, 0x00000010, 0x002C0000, 0x00000190
.word func_809344C0
.word func_80934660
.word func_80934C44
.word func_80934DBC
var_80935090: .word \
0x0A110009, 0x20010000, 0x00000000, 0x20000000, \
0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, \
0x001E0082, 0x00000000, 0x00000000
var_809350BC: .word 0x30F803E8

.section .rodata

var_809350C0: .word 0x445D599A
var_809350C4: .word 0x445D599A
var_809350C8: .word 0x448FC000, 0x00000000

