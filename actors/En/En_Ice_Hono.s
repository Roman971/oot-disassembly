.section .text
func_80A2A050:
    lwc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    lwc1    $f8, 0x0008(a0)            # 00000008
    lwc1    $f10, 0x0008(a1)           # 00000008
    sub.s   $f2, $f4, $f6
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f2
    nop
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    jr      $ra
    nop


func_80A2A080:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     a1, %hi(var_80A2B058)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A2B058)  # a1 = 80A2B058
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3BF2                 # a1 = 3BF20000
    ori     a1, a1, 0x7BB3             # a1 = 3BF27BB3
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x4120                 # a1 = 41200000
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_80020F04
    sw      t7, 0x0004(s0)             # 00000004
    addiu   a1, s0, 0x014C             # a1 = 0000014C
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80A2B000)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A2B000)  # a3 = 80A2B000
    lw      a0, 0x002C($sp)
    lw      a1, 0x0020($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0020($sp)
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00AE(s0)             # 000000AE
    jal     func_80A2A53C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A2A124:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80A2B06C)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A2B06C)  # a1 = 80A2B06C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A2B090)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A2B090)($at)
    lui     $at, %hi(var_80A2B094)     # $at = 80A30000
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f4, %lo(var_80A2B094)($at)
    sh      $zero, 0x0034(s0)          # 00000034
    lh      v0, 0x0034(s0)             # 00000034
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    addiu   a1, s0, 0x014C             # a1 = 0000014C
    swc1    $f8, 0x00BC(s0)            # 000000BC
    swc1    $f4, 0x006C(s0)            # 0000006C
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x0030(s0)             # 00000030
    sh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x00B4(s0)             # 000000B4
    swc1    $f6, 0x0070(s0)            # 00000070
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80A2B02C)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A2B02C)  # a3 = 80A2B02C
    lw      a0, 0x003C($sp)
    lw      a1, 0x0024($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0024($sp)
    lui     $at, %hi(var_80A2B098)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A2B098)($at)
    lwc1    $f10, 0x0050(s0)           # 00000050
    lui     $at, %hi(var_80A2B09C)     # $at = 80A30000
    lwc1    $f6, 0x0054(s0)            # 00000054
    mul.s   $f18, $f10, $f16
    addiu   t0, $zero, 0x00FD          # t0 = 000000FD
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x018C(s0)             # 0000018C
    lwc1    $f8, %lo(var_80A2B09C)($at)
    sb      t0, 0x00AE(s0)             # 000000AE
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    jal     func_80A2A614
    sh      t9, 0x018E(s0)             # 0000018E
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A2A22C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, %hi(var_80A2B078)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A2B078)  # a1 = 80A2B078
    jal     func_80063F7C
    sw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A2B0A0)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A2B0A0)($at)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80A2B0A4)     # $at = 80A30000
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x0054(a0)            # 00000054
    swc1    $f0, 0x0058(a0)            # 00000058
    swc1    $f0, 0x0050(a0)            # 00000050
    lwc1    $f4, %lo(var_80A2B0A4)($at)
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    swc1    $f8, 0x00BC(a0)            # 000000BC
    swc1    $f4, 0x006C(a0)            # 0000006C
    jal     func_80A2AA78
    swc1    $f6, 0x0070(a0)            # 00000070
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A2A294:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80A2A2E4
    nop
    beq     v0, $zero, lbl_80A2A2F4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A2A304
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A2A304
    nop
    b       lbl_80A2A314
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
lbl_80A2A2E4:
    jal     func_80A2A080
    lw      a1, 0x0044($sp)
    b       lbl_80A2A310
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A2A2F4:
    jal     func_80A2A124
    lw      a1, 0x0044($sp)
    b       lbl_80A2A310
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A2A304:
    jal     func_80A2A22C
    lw      a1, 0x0044($sp)
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80A2A310:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
lbl_80A2A314:
    beq     v0, $at, lbl_80A2A324
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    bnel    v0, $zero, lbl_80A2A3E4
    lw      $ra, 0x002C($sp)
lbl_80A2A324:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f10, $f8
    addiu   t9, $zero, 0x009B          # t9 = 0000009B
    addiu   t0, $zero, 0x00D2          # t0 = 000000D2
    trunc.w.s $f6, $f4
    mfc1    a2, $f10
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a1, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    addiu   a2, a2, 0x000A             # a2 = 0000000A
    sll     a2, a2, 16
    sll     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      a0, 0x0030($sp)
    jal     func_80065BCC
    sw      $zero, 0x001C($sp)
    lw      a0, 0x0044($sp)
    lw      a2, 0x0030($sp)
    jal     func_800665B0
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0198(s0)             # 00000198
    lui     $at, %hi(var_80A2B0A8)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A2B0A8)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x0144(s0)             # 00000144
    lui     $at, %hi(var_80A2B0AC)     # $at = 80A30000
    lwc1    $f10, %lo(var_80A2B0AC)($at)
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sh      t6, 0x0146(s0)             # 00000146
    lw      $ra, 0x002C($sp)
lbl_80A2A3E4:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80A2A3F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_80A2A420
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    bnel    v0, $zero, lbl_80A2A440
    lw      $ra, 0x0014($sp)
lbl_80A2A420:
    lw      a2, 0x0198(a3)             # 00000198
    jal     func_80066610
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a3, 0x014C             # a1 = 0000014C
    lw      $ra, 0x0014($sp)
lbl_80A2A440:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A2A44C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    ori     $at, $zero, 0x8000         # $at = 00008000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A2A52C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      a0, 0x008A(a2)             # 0000008A
    sw      a2, 0x0028($sp)
    sw      v0, 0x0024($sp)
    addu    a0, a0, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lw      v0, 0x0024($sp)
    lw      t6, 0x0028($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f16, 0x0024(v0)           # 00000024
    ori     $at, $zero, 0x8000         # $at = 00008000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0018($sp)
    lwc1    $f4, 0x0028(v0)            # 00000028
    swc1    $f4, 0x001C($sp)
    lh      a0, 0x008A(t6)             # 0000008A
    addu    a0, a0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lw      v0, 0x0024($sp)
    lw      a1, 0x0028($sp)
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x002C(v0)           # 0000002C
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    addiu   a1, a1, 0x0024             # a1 = 00000024
    add.s   $f16, $f8, $f10
    jal     func_80A2A050
    swc1    $f16, 0x0020($sp)
    lui     $at, 0x44C8                # $at = 44C80000
    mtc1    $at, $f18                  # $f18 = 1600.00
    nop
    c.le.s  $f0, $f18
    nop
    bc1fl   lbl_80A2A52C
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80A2A52C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A2A52C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A2A53C:
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f4                   # $f4 = -1000.00
    lui     t6, %hi(func_80A2A564)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A2A564) # t6 = 80A2A564
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x0140(a0)             # 00000140
    swc1    $f4, 0x00BC(a0)            # 000000BC
    jr      $ra
    nop


func_80A2A564:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A2A598
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A2A5C4
    sw      $zero, 0x0118(s0)          # 00000118
lbl_80A2A598:
    jal     func_80A2A44C
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A2A5C4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x007E          # a2 = 0000007E
    lui     a3, 0x4270                 # a3 = 42700000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80A2A5C4:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    c.lt.s  $f6, $f8
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80A2A5F8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x014C             # a2 = 0000014C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A2A5F8:
    jal     func_800230A0
    addiu   a1, $zero, 0x20A3          # a1 = 000020A3
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80A2A614:
    lui     t6, %hi(func_80A2A638)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A2A638) # t6 = 80A2A638
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x0142(a0)             # 00000142
    sh      t8, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_80A2A638:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x0048($sp)
    sw      s1, 0x003C($sp)
    sdc1    $f20, 0x0030($sp)
    lui     $at, %hi(var_80A2B0B0)     # $at = 80A30000
    lwc1    $f20, %lo(var_80A2B0B0)($at)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    lhu     s0, 0x0088(s1)             # 00000088
    mfc1    a1, $f20
    lui     a2, 0x38A7                 # a2 = 38A70000
    ori     a2, a2, 0xC5AC             # a2 = 38A7C5AC
    addiu   a0, s1, 0x0050             # a0 = 00000050
    jal     func_8006385C
    andi    s0, s0, 0x0001             # s0 = 00000000
    lwc1    $f4, 0x0050(s1)            # 00000050
    mfc1    a1, $f20
    lui     a2, 0x38A7                 # a2 = 38A70000
    ori     a2, a2, 0xC5AC             # a2 = 38A7C5AC
    addiu   a0, s1, 0x0054             # a0 = 00000054
    jal     func_8006385C
    swc1    $f4, 0x0058(s1)            # 00000058
    beq     s0, $zero, lbl_80A2A720
    addiu   s2, s4, 0x1C24             # s2 = 00001C24
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    or      s0, $zero, $zero           # s0 = 00000000
    lui     s3, 0x0001                 # s3 = 00010000
lbl_80A2A6B8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f10, $f0, $f20
    lwc1    $f6, 0x0028(s1)            # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t0, 0x0024($sp)
    trunc.w.s $f16, $f10
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00001C24
    mfc1    t7, $f16
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    addu    t8, t7, s0
    addiu   t9, t8, 0xFE0C             # t9 = FFFFFE0C
    sw      t9, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)
    addiu   s0, s0, 0x2000             # s0 = 00002000
    bne     s0, s3, lbl_80A2A6B8
    nop
    jal     func_80A2A7F8
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A2A720:
    jal     func_8002121C
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A2B0B4)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A2B0B4)($at)
    lwc1    $f18, 0x0050(s1)           # 00000050
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    mul.s   $f6, $f18, $f4
    sw      t1, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    swc1    $f8, 0x0010($sp)
    mfc1    a3, $f6
    jal     func_80021E6C
    nop
    addiu   s0, s1, 0x014C             # s0 = 0000014C
    or      a1, s0, $zero              # a1 = 0000014C
    jal     func_80050B00
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f16                  # $f16 = 4000.00
    lwc1    $f10, 0x0050(s1)           # 00000050
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f8                   # $f8 = 8000.00
    mul.s   $f18, $f10, $f16
    lwc1    $f6, 0x0054(s1)            # 00000054
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    mul.s   $f10, $f6, $f8
    addu    a1, s4, $at
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 0000014C
    trunc.w.s $f4, $f18
    trunc.w.s $f16, $f10
    mfc1    t3, $f4
    mfc1    t5, $f16
    sh      t3, 0x018C(s1)             # 0000018C
    jal     func_8004C130              # CollisionCheck_setOT
    sh      t5, 0x018E(s1)             # 0000018E
    lh      t6, 0x0142(s1)             # 00000142
    bgtzl   t6, lbl_80A2A7D8
    lw      $ra, 0x004C($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)
lbl_80A2A7D8:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80A2A7F8:
    lui     t6, %hi(func_80A2A81C)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A2A81C) # t6 = 80A2A81C
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x013C(a0)             # 0000013C
    sh      t7, 0x0142(a0)             # 00000142
    sh      t8, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_80A2A81C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x0048($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lh      t6, 0x0142(s1)             # 00000142
    lui     a1, 0x3C34                 # a1 = 3C340000
    ori     a1, a1, 0x3958             # a1 = 3C343958
    slti    $at, t6, 0x0015
    bne     $at, $zero, lbl_80A2A888
    addiu   a0, s1, 0x0050             # a0 = 00000050
    lui     a2, 0x3912                 # a2 = 39120000
    jal     func_8006385C
    ori     a2, a2, 0xCCF7             # a2 = 3912CCF7
    lui     a1, 0x3BC4                 # a1 = 3BC40000
    lui     a2, 0x38FB                 # a2 = 38FB0000
    ori     a2, a2, 0xA882             # a2 = 38FBA882
    ori     a1, a1, 0x9BA6             # a1 = 3BC49BA6
    jal     func_8006385C
    addiu   a0, s1, 0x0054             # a0 = 00000054
    b       lbl_80A2A8BC
    lwc1    $f4, 0x0050(s1)            # 00000050
lbl_80A2A888:
    lui     $at, %hi(var_80A2B0B8)     # $at = 80A30000
    lwc1    $f20, %lo(var_80A2B0B8)($at)
    lui     a2, 0x391D                 # a2 = 391D0000
    ori     a2, a2, 0x4952             # a2 = 391D4952
    mfc1    a1, $f20
    jal     func_8006385C
    addiu   a0, s1, 0x0050             # a0 = 00000050
    mfc1    a1, $f20
    lui     a2, 0x391D                 # a2 = 391D0000
    ori     a2, a2, 0x4952             # a2 = 391D4952
    jal     func_8006385C
    addiu   a0, s1, 0x0054             # a0 = 00000054
    lwc1    $f4, 0x0050(s1)            # 00000050
lbl_80A2A8BC:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C
    swc1    $f4, 0x0058(s1)            # 00000058
    lui     $at, %hi(var_80A2B0BC)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2B0BC)($at)
    lwc1    $f6, 0x0050(s1)            # 00000050
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    mul.s   $f10, $f6, $f8
    sw      t7, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    swc1    $f16, 0x0010($sp)
    mfc1    a3, $f10
    jal     func_80021E6C
    nop
    lh      v0, 0x0142(s1)             # 00000142
    slti    $at, v0, 0x0019
    beql    $at, $zero, lbl_80A2A950
    lh      t0, 0x0140(s1)             # 00000140
    lh      t8, 0x0140(s1)             # 00000140
    addiu   t9, t8, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x0140(s1)             # 00000140
    lh      v0, 0x0140(s1)             # 00000140
    bgez    v0, lbl_80A2A934
    slti    $at, v0, 0x0100
    sh      $zero, 0x0140(s1)          # 00000140
    b       lbl_80A2A94C
    lh      v0, 0x0142(s1)             # 00000142
lbl_80A2A934:
    bne     $at, $zero, lbl_80A2A944
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80A2A944
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80A2A944:
    sh      v1, 0x0140(s1)             # 00000140
    lh      v0, 0x0142(s1)             # 00000142
lbl_80A2A94C:
    lh      t0, 0x0140(s1)             # 00000140
lbl_80A2A950:
    slti    $at, t0, 0x0065
    bne     $at, $zero, lbl_80A2A9C4
    slti    $at, v0, 0x0028
    beq     $at, $zero, lbl_80A2A9C4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x014C             # s0 = 0000014C
    jal     func_80050B00
    or      a1, s0, $zero              # a1 = 0000014C
    lui     $at, %hi(var_80A2B0C0)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A2B0C0)($at)
    lwc1    $f18, 0x0050(s1)           # 00000050
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f16                  # $f16 = 8000.00
    mul.s   $f6, $f18, $f4
    lwc1    $f10, 0x0054(s1)           # 00000054
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    mul.s   $f18, $f10, $f16
    addu    a1, s4, $at
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s0, $zero              # a2 = 0000014C
    trunc.w.s $f8, $f6
    trunc.w.s $f4, $f18
    mfc1    t2, $f8
    mfc1    t4, $f4
    sh      t2, 0x018C(s1)             # 0000018C
    jal     func_8004BD50              # CollisionCheck_setAT
    sh      t4, 0x018E(s1)             # 0000018E
    lh      v0, 0x0142(s1)             # 00000142
lbl_80A2A9C4:
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    bne     v0, $at, lbl_80A2AA44
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    addiu   s2, s4, 0x1C24             # s2 = 00001C24
    ori     s3, $zero, 0xFFFA          # s3 = 0000FFFA
lbl_80A2A9E0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f10, $f0, $f20
    lwc1    $f6, 0x0028(s1)            # 00000028
    lw      a3, 0x0024(s1)             # 00000024
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t9, 0x0024($sp)
    trunc.w.s $f16, $f10
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00001C24
    mfc1    t6, $f16
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    addu    t7, t6, s0
    addiu   t8, t7, 0xFE0C             # t8 = FFFFFE0C
    sw      t8, 0x001C($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)
    addiu   s0, s0, 0x1999             # s0 = 00001999
    bne     s0, s3, lbl_80A2A9E0
    nop
    lh      v0, 0x0142(s1)             # 00000142
lbl_80A2AA44:
    bgtzl   v0, lbl_80A2AA58
    lw      $ra, 0x004C($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)
lbl_80A2AA58:
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80A2AA78:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    lui     t6, %hi(func_80A2AB4C)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A2AB4C) # t6 = 80A2AB4C
    addiu   t7, $zero, 0x002C          # t7 = 0000002C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    sh      t7, 0x0142(s0)             # 00000142
    bne     t9, $at, lbl_80A2AAF8
    sh      t8, 0x0140(s0)             # 00000140
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A2B0C4)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A2B0C4)($at)
    lui     $at, %hi(var_80A2B0C8)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2B0C8)($at)
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0148(s0)           # 00000148
    lui     $at, %hi(var_80A2B0CC)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A2B0CC)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f18, $f0, $f16
    add.s   $f6, $f18, $f4
    b       lbl_80A2AB38
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80A2AAF8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A2B0D0)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2B0D0)($at)
    lui     $at, %hi(var_80A2B0D4)     # $at = 80A30000
    lwc1    $f16, %lo(var_80A2B0D4)($at)
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0148(s0)           # 00000148
    add.s   $f4, $f0, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80A2AB38:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A2AB4C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0142(s0)             # 00000142
    lui     a1, 0x38D1                 # a1 = 38D10000
    ori     a1, a1, 0xB717             # a1 = 38D1B717
    slti    $at, t6, 0x0015
    bne     $at, $zero, lbl_80A2ABC0
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     a1, 0x3BC4                 # a1 = 3BC40000
    lui     a2, 0x3927                 # a2 = 39270000
    ori     a2, a2, 0xC5AC             # a2 = 3927C5AC
    ori     a1, a1, 0x9BA6             # a1 = 3BC49BA6
    jal     func_8006385C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     $at, %hi(var_80A2B0D8)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A2B0D8)($at)
    lwc1    $f4, 0x0148(s0)            # 00000148
    lui     a2, 0x3912                 # a2 = 39120000
    ori     a2, a2, 0xCCF7             # a2 = 3912CCF7
    mul.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0054             # a0 = 00000054
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    b       lbl_80A2ABE8
    lwc1    $f10, 0x0050(s0)           # 00000050
lbl_80A2ABC0:
    lui     a2, 0x391D                 # a2 = 391D0000
    jal     func_8006385C
    ori     a2, a2, 0x4952             # a2 = 391D4952
    lui     a1, 0x38D1                 # a1 = 38D10000
    lui     a2, 0x391D                 # a2 = 391D0000
    ori     a2, a2, 0x4952             # a2 = 391D4952
    ori     a1, a1, 0xB717             # a1 = 38D1B717
    jal     func_8006385C
    addiu   a0, s0, 0x0054             # a0 = 00000054
    lwc1    $f10, 0x0050(s0)           # 00000050
lbl_80A2ABE8:
    lui     a2, 0x3D75                 # a2 = 3D750000
    ori     a2, a2, 0xC28F             # a2 = 3D75C28F
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C
    swc1    $f10, 0x0058(s0)           # 00000058
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t7, 0x0014($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f16, 0x0010($sp)
    lh      v0, 0x0142(s0)             # 00000142
    slti    $at, v0, 0x0019
    beq     $at, $zero, lbl_80A2AC80
    nop
    lh      t8, 0x0140(s0)             # 00000140
    addiu   t9, t8, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x0140(s0)             # 00000140
    lh      v0, 0x0140(s0)             # 00000140
    bgez    v0, lbl_80A2AC68
    slti    $at, v0, 0x0100
    sh      $zero, 0x0140(s0)          # 00000140
    b       lbl_80A2AC80
    lh      v0, 0x0142(s0)             # 00000142
lbl_80A2AC68:
    bne     $at, $zero, lbl_80A2AC78
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80A2AC78
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80A2AC78:
    sh      v1, 0x0140(s0)             # 00000140
    lh      v0, 0x0142(s0)             # 00000142
lbl_80A2AC80:
    bgtzl   v0, lbl_80A2AC94
    lw      $ra, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80A2AC94:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A2ACA4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lh      v0, 0x0142(s0)             # 00000142
    or      a0, s0, $zero              # a0 = 00000000
    blez    v0, lbl_80A2ACCC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0142(s0)             # 00000142
lbl_80A2ACCC:
    lh      v0, 0x001C(s0)             # 0000001C
    bnel    v0, $zero, lbl_80A2ACE8
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    jal     func_800230A0
    addiu   a1, $zero, 0x1048          # a1 = 00001048
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
lbl_80A2ACE8:
    beql    v0, $at, lbl_80A2ACFC
    lh      t9, 0x0146(s0)             # 00000146
    bnel    v0, $zero, lbl_80A2AE10
    lw      v0, 0x013C(s0)             # 0000013C
    lh      t9, 0x0146(s0)             # 00000146
lbl_80A2ACFC:
    lh      t7, 0x0144(s0)             # 00000144
    addiu   t0, t9, 0x4000             # t0 = 00004000
    sh      t0, 0x0146(s0)             # 00000146
    addiu   t8, t7, 0x1111             # t8 = 00001111
    sh      t8, 0x0144(s0)             # 00000144
    jal     func_800636C4              # sins?
    lh      a0, 0x0146(s0)             # 00000146
    swc1    $f0, 0x0030($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0144(s0)             # 00000144
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0034($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4
    lui     $at, 0x3E00                # $at = 3E000000
    lwc1    $f4, 0x0034($sp)
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    mtc1    $at, $f6                   # $f6 = 0.13
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    lui     $at, %hi(var_80A2B0DC)     # $at = 80A30000
    mul.s   $f8, $f4, $f6
    lwc1    $f16, %lo(var_80A2B0DC)($at)
    lwc1    $f10, 0x0030($sp)
    mfc1    a3, $f18
    lui     $at, %hi(var_80A2B0E0)     # $at = 80A30000
    mul.s   $f18, $f10, $f16
    lwc1    $f6, %lo(var_80A2B0E0)($at)
    lui     $at, %hi(var_80A2B0E4)     # $at = 80A30000
    sll     a2, a2, 16
    mul.s   $f10, $f0, $f6
    sra     a2, a2, 16
    addiu   a2, a2, 0x000A             # a2 = 0000000A
    sll     a2, a2, 16
    addiu   t0, $zero, 0x0578          # t0 = 00000578
    add.s   $f4, $f8, $f18
    lwc1    $f8, %lo(var_80A2B0E4)($at)
    lui     $at, 0x431B                # $at = 431B0000
    mtc1    $at, $f18                  # $f18 = 155.00
    add.s   $f16, $f10, $f4
    lui     $at, 0x4352                # $at = 43520000
    mtc1    $at, $f4                   # $f4 = 210.00
    lui     $at, 0x437F                # $at = 437F0000
    add.s   $f2, $f16, $f8
    sll     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    mul.s   $f6, $f18, $f2
    mtc1    $at, $f18                  # $f18 = 255.00
    sra     a1, a1, 16
    mul.s   $f16, $f4, $f2
    sw      t0, 0x001C($sp)
    sra     a2, a2, 16
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    trunc.w.s $f10, $f6
    mul.s   $f6, $f18, $f2
    mfc1    t5, $f10
    trunc.w.s $f8, $f16
    sw      t5, 0x0010($sp)
    trunc.w.s $f10, $f6
    mfc1    t7, $f8
    mfc1    t9, $f10
    sw      t7, 0x0014($sp)
    jal     func_80065BCC
    sw      t9, 0x0018($sp)
    lw      v0, 0x013C(s0)             # 0000013C
lbl_80A2AE10:
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A2AE28
    lw      $ra, 0x002C($sp)
    jalr    $ra, v0
    lw      a1, 0x004C($sp)
    lw      $ra, 0x002C($sp)
lbl_80A2AE28:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80A2AE38:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0038($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0060($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t2, 0x009C(s1)             # 0000009C
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    $at, $zero, t2
    sll     t3, $at,  2
    addu    t3, t3, $at
    sll     t3, t3,  2
    andi    t4, t3, 0x01FF             # t4 = 00000000
    sw      t4, 0x0020($sp)
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t0, 0x004C($sp)
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0060($sp)
    lui     $at, 0xAAFF                # $at = AAFF0000
    ori     $at, $at, 0xFF00           # $at = AAFFFF00
    lh      t1, 0x0140(t9)             # 00000140
    andi    t2, t1, 0x00FF             # t2 = 00000000
    or      t3, t2, $at                # t3 = AAFFFF00
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0096                 # t6 = 00960000
    ori     t6, t6, 0xFF00             # t6 = 0096FF00
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lh      t7, 0x07A0(s1)             # 000007A0
    sll     t8, t7,  2
    addu    t9, s1, t8
    jal     func_8004977C
    lw      a0, 0x0790(t9)             # 00000790
    lw      t1, 0x0060($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t2, 0x00B6(t1)             # 000000B6
    subu    t3, v0, t2
    addu    t4, t3, $at
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A2B0E8)     # $at = 80A30000
    lwc1    $f8, %lo(var_80A2B0E8)($at)
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a1, 0x0040($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0405                 # t2 = 04050000
    addiu   t2, t2, 0x2A10             # t2 = 04052A10
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60

.section .data

var_80A2AFE0: .word 0x00F00700, 0x00000000, 0x00010000, 0x000001AC
.word func_80A2A294
.word func_80A2A3F4
.word func_80A2ACA4
.word func_80A2AE38
var_80A2B000: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_80A2B02C: .word \
0x0A210021, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00000000, 0x00000000, 0x01000100, \
0x000C003C, 0x00000000, 0x00000000
var_80A2B058: .word \
0x801F0000, 0xB04C003C, 0xB0F403E8, 0xB0F80190, \
0x30FC03E8
var_80A2B06C: .word 0xB0F403E8, 0xB0F80190, 0x30FC03E8
var_80A2B078: .word \
0xB0F403E8, 0xB0F80190, 0x30FC03E8, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A2B090: .word 0x37A7C5AC
var_80A2B094: .word 0xBE99999A
var_80A2B098: .word 0x457A0666
var_80A2B09C: .word 0x45FA019A
var_80A2B0A0: .word 0x3A51B717
var_80A2B0A4: .word 0xBE99999A
var_80A2B0A8: .word 0x477FFF80
var_80A2B0AC: .word 0x477FFF80
var_80A2B0B0: .word 0x3ADED289
var_80A2B0B4: .word 0x455AC000
var_80A2B0B8: .word 0x38D1B717
var_80A2B0BC: .word 0x455AC000
var_80A2B0C0: .word 0x45BB8000
var_80A2B0C4: .word 0x3BA3D70A
var_80A2B0C8: .word 0x3B83126F
var_80A2B0CC: .word 0x3FCCCCCD
var_80A2B0D0: .word 0x3BA3D70A
var_80A2B0D4: .word 0x3B449BA6
var_80A2B0D8: .word 0x3F2AC083
var_80A2B0DC: .word 0x3DCCCCCD
var_80A2B0E0: .word 0x3D4CCCCD
var_80A2B0E4: .word 0x3ED9999A
var_80A2B0E8: .word 0x38C90FDB, 0x00000000

