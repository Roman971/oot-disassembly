.section .text
func_80AC72D0:
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
    lui     a3, %hi(var_80AC8168)      # a3 = 80AD0000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_80AC8168)  # a3 = 80AC8168
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sb      t7, 0x00AE(a2)             # 000000AE
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80AC732C:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sdc1    $f30, 0x0048($sp)
    sw      s2, 0x0058($sp)
    sw      s1, 0x0054($sp)
    mtc1    a2, $f30                   # $f30 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f28                  # $f28 = 80.00
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f26                  # $f26 = 35.00
    mtc1    $zero, $f24                # $f24 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $sp, 0x00A4            # s6 = FFFFFFF4
    addiu   s5, $sp, 0x0098            # s5 = FFFFFFE8
    addiu   s4, $sp, 0x008C            # s4 = FFFFFFDC
    addiu   s3, $zero, 0x0002          # s3 = 00000002
lbl_80AC739C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f30, $f0
    lui     a0, %hi(var_80AC8180)      # a0 = 80AD0000
    bc1tl   lbl_80AC74A0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lh      a0, %lo(var_80AC8180)(a0)
    lui     $at, %hi(var_80AC8180)     # $at = 80AD0000
    addiu   a0, a0, 0x7530             # a0 = 80AD7530
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, %lo(var_80AC8180)($at)
    lui     a0, %hi(var_80AC8180)      # a0 = 80AD0000
    lh      a0, %lo(var_80AC8180)(a0)
    jal     func_80063684              # coss?
    mov.s   $f20, $f0
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f22, $f0
    mul.s   $f4, $f0, $f26
    lwc1    $f8, 0x0024(s1)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    add.s   $f2, $f4, $f26
    mul.s   $f6, $f2, $f20
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f2, $f22
    swc1    $f10, 0x008C($sp)
    lwc1    $f16, 0x0028(s1)           # 00000028
    add.s   $f4, $f16, $f18
    mtc1    $at, $f16                  # $f16 = 0.50
    swc1    $f4, 0x0090($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    swc1    $f20, 0x0098($sp)
    swc1    $f24, 0x009C($sp)
    add.s   $f10, $f6, $f8
    swc1    $f22, 0x00A0($sp)
    swc1    $f24, 0x00A4($sp)
    swc1    $f24, 0x00AC($sp)
    swc1    $f10, 0x0094($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00A8($sp)
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f18                  # $f18 = 16.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    mul.s   $f4, $f20, $f18
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFDC
    mul.s   $f16, $f0, $f10
    or      a2, s5, $zero              # a2 = FFFFFFE8
    or      a3, s6, $zero              # a3 = FFFFFFF4
    add.s   $f6, $f4, $f28
    add.s   $f18, $f16, $f28
    trunc.w.s $f8, $f6
    trunc.w.s $f4, $f18
    mfc1    t7, $f8
    mfc1    t9, $f4
    sw      t7, 0x0010($sp)
    jal     func_8001C1C4
    sw      t9, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_80AC74A0:
    bne     s0, s3, lbl_80AC739C
    nop
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80AC74E8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      $zero, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC72D0
    or      a1, s1, $zero              # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x2154             # a0 = 06002154
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0044($sp)
    lui     a1, %hi(var_80AC8184)      # a1 = 80AD0000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(var_80AC8184)  # a1 = 80AC8184
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4170                 # a3 = 41700000
    lui     $at, %hi(var_80AC81A0)     # $at = 80AD0000
    lwc1    $f6, %lo(var_80AC81A0)($at)
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    swc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x000C(s0)           # 0000000C
    jal     func_8002049C
    swc1    $f10, 0x0028(s0)           # 00000028
    beq     v0, $zero, lbl_80AC75B4
    nop
    jal     func_80AC7748
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC7624
    lw      $ra, 0x003C($sp)
lbl_80AC75B4:
    jal     func_80AC767C
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f16, 0x0024(s0)           # 00000024
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a3, $zero, 0x01C3          # a3 = 000001C3
    swc1    $f4, 0x0018($sp)
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x001C($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0x1555             # t8 = 00001555
    sw      t8, 0x0020($sp)
    lh      t9, 0x00B8(s0)             # 000000B8
    sw      t0, 0x0028($sp)
    jal     func_800253F0
    sw      t9, 0x0024($sp)
    lw      t1, 0x011C(s0)             # 0000011C
    bnel    t1, $zero, lbl_80AC7624
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)
lbl_80AC7624:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80AC7634:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC767C:
    lui     t6, %hi(func_80AC7690)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC7690) # t6 = 80AC7690
    sw      t6, 0x01F4(a0)             # 000001F4
    jr      $ra
    nop


func_80AC7690:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AC76DC
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x107C          # a1 = 0000107C
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    lw      a3, 0x0020($sp)
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    jal     func_80AC76EC
    lw      a0, 0x0020($sp)
lbl_80AC76DC:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC76EC:
    lui     t6, %hi(func_80AC7704)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC7704) # t6 = 80AC7704
    sw      t6, 0x01F4(a0)             # 000001F4
    sh      $zero, 0x0206(a0)          # 00000206
    jr      $ra
    nop


func_80AC7704:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0206(a0)             # 00000206
    slti    $at, t6, 0x0015
    bnel    $at, $zero, lbl_80AC773C
    lw      $ra, 0x0014($sp)
    jal     func_80AC7748
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      t7, 0x011C(a0)             # 0000011C
    sw      $zero, 0x0118(t7)          # 00000118
    sw      $zero, 0x011C(a0)          # 0000011C
    lw      $ra, 0x0014($sp)
lbl_80AC773C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AC7748:
    sh      $zero, 0x01FC(a0)          # 000001FC
    lh      t7, 0x01FC(a0)             # 000001FC
    lui     t6, %hi(func_80AC7768)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC7768) # t6 = 80AC7768
    sw      t6, 0x01F4(a0)             # 000001F4
    sh      t7, 0x0200(a0)             # 00000200
    jr      $ra
    nop


func_80AC7768:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0200             # a0 = 00000200
    addiu   a1, $zero, 0x01F4          # a1 = 000001F4
    jal     func_800637D4
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t7, 0x0200(s0)             # 00000200
    addiu   a0, s0, 0x01F8             # a0 = 000001F8
    lui     a1, 0x4248                 # a1 = 42480000
    addu    t8, t6, t7
    sh      t8, 0x00B6(s0)             # 000000B6
    jal     func_8006385C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    jal     func_800637D4
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    lh      t9, 0x01FE(s0)             # 000001FE
    lh      t0, 0x01FC(s0)             # 000001FC
    addu    t1, t9, t0
    sh      t1, 0x01FE(s0)             # 000001FE
    jal     func_800636C4              # sins?
    lh      a0, 0x01FE(s0)             # 000001FE
    lwc1    $f4, 0x01F8(s0)            # 000001F8
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      a0, 0x01FE(s0)             # 000001FE
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x01F8(s0)           # 000001F8
    lwc1    $f4, 0x0010(s0)            # 00000010
    lbu     t2, 0x0165(s0)             # 00000165
    mul.s   $f18, $f0, $f16
    andi    t3, t2, 0x0002             # t3 = 00000000
    add.s   $f6, $f18, $f4
    beq     t3, $zero, lbl_80AC78B4
    swc1    $f6, 0x002C(s0)            # 0000002C
    lw      v1, 0x015C(s0)             # 0000015C
    beql    v1, $zero, lbl_80AC78B8
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f8, 0x0028(v1)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f16                  # $f16 = 120.00
    sub.s   $f0, $f8, $f10
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80AC78B8
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f18                  # $f18 = 200.00
    nop
    c.lt.s  $f0, $f18
    nop
    bc1fl   lbl_80AC78B8
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f12, 0x002C(v1)           # 0000002C
    lwc1    $f14, 0x0024(v1)           # 00000024
    lw      a2, 0x002C(s0)             # 0000002C
    jal     func_800A5470
    lw      a3, 0x0024(s0)             # 00000024
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f4                   # $f4 = 1024.00
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x1072          # a1 = 00001072
    c.lt.s  $f0, $f4
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    or      a3, s0, $zero              # a3 = 00000000
    bc1fl   lbl_80AC78B8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    jal     func_80AC78D4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_800314D8
    addiu   a1, a0, 0x0810             # a1 = 00000810
lbl_80AC78B4:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AC78B8:
    jal     func_8002313C
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AC78D4:
    lui     t6, %hi(func_80AC78F0)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC78F0) # t6 = 80AC78F0
    sw      t6, 0x01F4(a0)             # 000001F4
    sh      $zero, 0x0206(a0)          # 00000206
    sh      $zero, 0x0204(a0)          # 00000204
    jr      $ra
    nop


func_80AC78F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0206(s0)             # 00000206
    slti    $at, t6, 0x0079
    bne     $at, $zero, lbl_80AC7928
    addiu   a0, s0, 0x0200             # a0 = 00000200
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    jal     func_800637D4
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    beq     $zero, $zero, lbl_80AC793C
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80AC7928:
    addiu   a0, s0, 0x0200             # a0 = 00000200
    addiu   a1, $zero, 0x0BB8          # a1 = 00000BB8
    jal     func_800637D4
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80AC793C:
    lh      t8, 0x0200(s0)             # 00000200
    lh      t0, 0x0206(s0)             # 00000206
    addu    t9, t7, t8
    slti    $at, t0, 0x0046
    beq     $at, $zero, lbl_80AC796C
    sh      t9, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x01F8             # a0 = 000001F8
    lui     a1, 0x42C8                 # a1 = 42C80000
    jal     func_8006385C
    lui     a2, 0x4000                 # a2 = 40000000
    beq     $zero, $zero, lbl_80AC7980
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
lbl_80AC796C:
    addiu   a0, s0, 0x01F8             # a0 = 000001F8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a0, s0, 0x01FC             # a0 = 000001FC
lbl_80AC7980:
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    jal     func_800637D4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lh      t1, 0x01FE(s0)             # 000001FE
    lh      t2, 0x01FC(s0)             # 000001FC
    addu    t3, t1, t2
    sh      t3, 0x01FE(s0)             # 000001FE
    jal     func_800636C4              # sins?
    lh      a0, 0x01FE(s0)             # 000001FE
    lwc1    $f4, 0x01F8(s0)            # 000001F8
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      a0, 0x01FE(s0)             # 000001FE
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x01F8(s0)           # 000001F8
    lwc1    $f4, 0x0010(s0)            # 00000010
    lh      t4, 0x0202(s0)             # 00000202
    mul.s   $f18, $f0, $f16
    addiu   a0, s0, 0x0204             # a0 = 00000204
    addiu   t5, t4, 0x0BB8             # t5 = 00000BB8
    sh      t5, 0x0202(s0)             # 00000202
    addiu   a1, $zero, 0x05DC          # a1 = 000005DC
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    add.s   $f6, $f18, $f4
    jal     func_800637D4
    swc1    $f6, 0x002C(s0)            # 0000002C
    jal     func_80063684              # coss?
    lh      a0, 0x0202(s0)             # 00000202
    lh      t6, 0x0204(s0)             # 00000204
    lh      a0, 0x0202(s0)             # 00000202
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    jal     func_800636C4              # sins?
    sh      t8, 0x00B4(s0)             # 000000B4
    lh      t9, 0x0204(s0)             # 00000204
    neg.s   $f4, $f0
    lh      v0, 0x0206(s0)             # 00000206
    mtc1    t9, $f6                    # $f6 = 0.00
    slti    $at, v0, 0x008D
    cvt.s.w $f8, $f6
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    bne     $at, $zero, lbl_80AC7A58
    sh      t1, 0x00B8(s0)             # 000000B8
    jal     func_80AC7B14
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x0206(s0)             # 00000206
lbl_80AC7A58:
    slti    $at, v0, 0x0050
    beq     $at, $zero, lbl_80AC7A7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80AC732C
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80AC7A90
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80AC7A7C:
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    jal     func_80AC732C
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80AC7A90:
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lh      t2, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80AC81A4)     # $at = 80AD0000
    lwc1    $f4, %lo(var_80AC81A4)($at)
    addiu   t3, t2, 0xFE0C             # t3 = FFFFFE0C
    mtc1    t3, $f18                   # $f18 = NaN
    lui     $at, 0x3FC0                # $at = 3FC00000
    cvt.s.w $f6, $f18
    mul.s   $f0, $f6, $f4
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AC7AD0
    mtc1    $at, $f12                  # $f12 = 1.50
    beq     $zero, $zero, lbl_80AC7AF4
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = 1.50
lbl_80AC7AD0:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80AC7AF0
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_80AC7AF0
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_80AC7AF0:
    mov.s   $f0, $f2
lbl_80AC7AF4:
    mfc1    a2, $f0
    jal     func_800C50AC
    addiu   a1, $zero, 0x00CB          # a1 = 000000CB
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AC7B14:
    lh      v0, 0x00B6(a0)             # 000000B6
    lui     t6, %hi(func_80AC7B64)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC7B64) # t6 = 80AC7B64
    slti    $at, v0, 0xD16D
    bne     $at, $zero, lbl_80AC7B34
    sw      t6, 0x01F4(a0)             # 000001F4
    slti    $at, v0, 0x7C19
    bne     $at, $zero, lbl_80AC7B40
lbl_80AC7B34:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_80AC7B58
    sh      t7, 0x0208(a0)             # 00000208
lbl_80AC7B40:
    slti    $at, v0, 0x26C2
    beq     $at, $zero, lbl_80AC7B54
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_80AC7B58
    sh      t8, 0x0208(a0)             # 00000208
lbl_80AC7B54:
    sh      $zero, 0x0208(a0)          # 00000208
lbl_80AC7B58:
    sh      $zero, 0x0206(a0)          # 00000206
    jr      $ra
    nop


func_80AC7B64:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0202(s0)             # 00000202
    lh      t8, 0x0206(s0)             # 00000206
    addiu   a0, s0, 0x0204             # a0 = 00000204
    addiu   t7, t6, 0x0BB8             # t7 = 00000BB8
    slti    $at, t8, 0x000D
    bne     $at, $zero, lbl_80AC7BA8
    sh      t7, 0x0202(s0)             # 00000202
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800637D4
    addiu   a2, $zero, 0x0037          # a2 = 00000037
    beq     $zero, $zero, lbl_80AC7BAC
    sw      v0, 0x0020($sp)
lbl_80AC7BA8:
    sw      $zero, 0x0020($sp)
lbl_80AC7BAC:
    jal     func_80063684              # coss?
    lh      a0, 0x0202(s0)             # 00000202
    lh      t9, 0x0204(s0)             # 00000204
    lh      a0, 0x0202(s0)             # 00000202
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    jal     func_800636C4              # sins?
    sh      t1, 0x00B4(s0)             # 000000B4
    lh      t2, 0x0204(s0)             # 00000204
    neg.s   $f16, $f0
    addiu   a0, s0, 0x0200             # a0 = 00000200
    mtc1    t2, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x01F4          # a1 = 000001F4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    cvt.s.w $f4, $f18
    mul.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    jal     func_800637D4
    sh      t4, 0x00B8(s0)             # 000000B8
    lh      t5, 0x00B6(s0)             # 000000B6
    lh      t6, 0x0200(s0)             # 00000200
    addu    t7, t5, t6
    sh      t7, 0x00B6(s0)             # 000000B6
    lw      t8, 0x0020($sp)
    beql    t8, $zero, lbl_80AC7C74
    lh      t5, 0x0206(s0)             # 00000206
    lh      t9, 0x0208(s0)             # 00000208
    lui     v0, %hi(var_80AC8178)      # v0 = 80AD0000
    lh      t1, 0x00B6(s0)             # 000000B6
    sll     t0, t9,  1
    addu    v0, v0, t0
    lh      v0, %lo(var_80AC8178)(v0)
    or      a0, s0, $zero              # a0 = 00000000
    subu    t2, t1, v0
    sll     t3, t2, 16
    sra     t4, t3, 16
    bltzl   t4, lbl_80AC7C74
    lh      t5, 0x0206(s0)             # 00000206
    jal     func_80AC7D30
    sh      v0, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80031530
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t5, 0x0206(s0)             # 00000206
lbl_80AC7C74:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    slti    $at, t5, 0x001E
    beq     $at, $zero, lbl_80AC7CA0
    lui     a2, 0x3E99                 # a2 = 3E990000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80AC732C
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_80AC7CAC
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80AC7CA0:
    jal     func_80AC732C
    ori     a2, a2, 0x999A             # a2 = 0000999A
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80AC7CAC:
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lh      t6, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80AC81A8)     # $at = 80AD0000
    lwc1    $f16, %lo(var_80AC81A8)($at)
    addiu   t7, t6, 0xFE0C             # t7 = FFFFFE0C
    mtc1    t7, $f10                   # $f10 = NaN
    lui     $at, 0x3FC0                # $at = 3FC00000
    cvt.s.w $f18, $f10
    mul.s   $f0, $f18, $f16
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80AC7CEC
    mtc1    $at, $f12                  # $f12 = 1.50
    beq     $zero, $zero, lbl_80AC7D10
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = 1.50
lbl_80AC7CEC:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80AC7D0C
    mov.s   $f2, $f0
    beq     $zero, $zero, lbl_80AC7D0C
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_80AC7D0C:
    mov.s   $f0, $f2
lbl_80AC7D10:
    mfc1    a2, $f0
    jal     func_800C50AC
    addiu   a1, $zero, 0x00CB          # a1 = 000000CB
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AC7D30:
    lui     t6, %hi(func_80AC7D48)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC7D48) # t6 = 80AC7D48
    sw      t6, 0x01F4(a0)             # 000001F4
    sh      $zero, 0x0206(a0)          # 00000206
    jr      $ra
    nop


func_80AC7D48:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s4, 0x0030($sp)
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lh      v0, 0x0206(s0)             # 00000206
    bnel    v1, v0, lbl_80AC7F78
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f8                   # $f8 = 170.00
    swc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     s2, %hi(var_80AC8194)      # s2 = 80AD0000
    addiu   s2, s2, %lo(var_80AC8194)  # s2 = 80AC8194
    add.s   $f10, $f6, $f8
    lui     $at, 0x4130                # $at = 41300000
    addiu   s3, $sp, 0x0044            # s3 = FFFFFFEC
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    swc1    $f10, 0x0048($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    swc1    $f16, 0x004C($sp)
    lh      v0, 0x0208(s0)             # 00000208
    bne     v0, $zero, lbl_80AC7E08
    nop
    mtc1    $at, $f20                  # $f20 = 11.00
    or      s0, $zero, $zero           # s0 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
lbl_80AC7DD0:
    or      a1, s3, $zero              # a1 = FFFFFFEC
    jal     func_80013678
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     v0, $zero, lbl_80AC7DF4
    sll     t6, s0,  1
    swc1    $f20, 0x0060(v0)           # 00000060
    addu    t7, s2, t6
    lh      t8, 0x0000(t7)             # 00000000
    sh      t8, 0x0032(v0)             # 00000032
lbl_80AC7DF4:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s1, lbl_80AC7DD0
    or      a0, s4, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
lbl_80AC7E08:
    bne     v1, v0, lbl_80AC7E64
    lui     $at, 0x4130                # $at = 41300000
    lui     s2, %hi(var_80AC8194)      # s2 = 80AD0000
    mtc1    $at, $f20                  # $f20 = 11.00
    addiu   s2, s2, %lo(var_80AC8194)  # s2 = 80AC8194
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $sp, 0x0044            # s3 = FFFFFFEC
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    or      a0, s4, $zero              # a0 = 00000000
lbl_80AC7E2C:
    or      a1, s3, $zero              # a1 = FFFFFFEC
    jal     func_80013678
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_80AC7E50
    sll     t9, s0,  1
    swc1    $f20, 0x0060(v0)           # 00000060
    addu    t0, s2, t9
    lh      t1, 0x0000(t0)             # 00000000
    sh      t1, 0x0032(v0)             # 00000032
lbl_80AC7E50:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s1, lbl_80AC7E2C
    or      a0, s4, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
lbl_80AC7E64:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    bnel    v1, v0, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
    lbu     t2, 0x020A(s0)             # 0000020B
    bnel    t2, $zero, lbl_80AC7E94
    addiu   s3, $sp, 0x0044            # s3 = FFFFFFEC
    lh      a1, 0x001C(s0)             # 0000001D
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800206E8
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AC7ECC
    addiu   s3, $sp, 0x0044            # s3 = FFFFFFEC
lbl_80AC7E94:
    or      a1, s3, $zero              # a1 = FFFFFFEC
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80013678
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     v0, $zero, lbl_80AC7EC4
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f20                  # $f20 = 11.00
    lui     s2, %hi(var_80AC8194)      # s2 = 80AD0000
    addiu   s2, s2, %lo(var_80AC8194)  # s2 = 80AC8194
    swc1    $f20, 0x0060(v0)           # 00000060
    lh      t3, 0x0002(s2)             # 80AC8196
    sh      t3, 0x0032(v0)             # 00000032
lbl_80AC7EC4:
    beq     $zero, $zero, lbl_80AC7F20
    lui     $at, 0x4130                # $at = 41300000
lbl_80AC7ECC:
    lh      a2, 0x001C(s0)             # 0000001D
    addiu   s3, $sp, 0x0044            # s3 = FFFFFFEC
    or      a1, s3, $zero              # a1 = FFFFFFEC
    andi    a2, a2, 0x003F             # a2 = 00000000
    sll     a2, a2,  8
    ori     a2, a2, 0x0006             # a2 = 00000006
    sll     a2, a2, 16
    sra     a2, a2, 16
    jal     func_80013678
    or      a0, s4, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AC7F1C
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f20                  # $f20 = 11.00
    lui     s2, %hi(var_80AC8194)      # s2 = 80AD0000
    addiu   s2, s2, %lo(var_80AC8194)  # s2 = 80AC8194
    swc1    $f20, 0x0060(v0)           # 00000060
    lh      t4, 0x0002(s2)             # 80AC8196
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t4, 0x0032(v0)             # 00000032
    sb      t5, 0x020A(s0)             # 0000020B
lbl_80AC7F1C:
    lui     $at, 0x4130                # $at = 41300000
lbl_80AC7F20:
    mtc1    $at, $f20                  # $f20 = 11.00
    lui     s2, %hi(var_80AC8194)      # s2 = 80AD0000
    addiu   s2, s2, %lo(var_80AC8194)  # s2 = 80AC8194
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFEC
    jal     func_80013678
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     v0, $zero, lbl_80AC7F50
    or      a0, s4, $zero              # a0 = 00000000
    swc1    $f20, 0x0060(v0)           # 00000060
    lh      t6, 0x0000(s2)             # 80AC8194
    sh      t6, 0x0032(v0)             # 00000032
lbl_80AC7F50:
    or      a1, s3, $zero              # a1 = FFFFFFEC
    jal     func_80013678
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beql    v0, $zero, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
    swc1    $f20, 0x0060(v0)           # 00000060
    lh      t7, 0x0004(s2)             # 80AC8198
    beq     $zero, $zero, lbl_80AC7FBC
    sh      t7, 0x0032(v0)             # 00000032
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80AC7F78:
    bne     v1, v0, lbl_80AC7FAC
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    lh      t8, 0x0208(s0)             # 00000209
    bne     v1, t8, lbl_80AC7F9C
    nop
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    beq     $zero, $zero, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
lbl_80AC7F9C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    beq     $zero, $zero, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
lbl_80AC7FAC:
    bnel    v0, $at, lbl_80AC7FC0
    lw      $ra, 0x0034($sp)
    jal     func_80AC7748
    or      a0, s0, $zero              # a0 = 00000001
lbl_80AC7FBC:
    lw      $ra, 0x0034($sp)
lbl_80AC7FC0:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80AC7FE0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x0206(s0)             # 00000206
    lw      t9, 0x01F4(s0)             # 000001F4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0206(s0)             # 00000206
    jalr    $ra, t9
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t8, s0, 0x0024             # t8 = 00000024
    sw      t8, 0x0010($sp)
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    jal     func_8002F4B8              # Raycast
    or      a3, s0, $zero              # a3 = 00000000
    lw      t1, 0x01F4(s0)             # 000001F4
    lui     t0, %hi(func_80AC7690)     # t0 = 80AC0000
    addiu   t0, t0, %lo(func_80AC7690) # t0 = 80AC7690
    beq     t0, t1, lbl_80AC8090
    swc1    $f0, 0x0080(s0)            # 00000080
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    addiu   a2, s0, 0x0154             # a2 = 00000154
    sw      a2, 0x002C($sp)
    sw      a1, 0x0030($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      t3, 0x01F4(s0)             # 000001F4
    lui     t2, %hi(func_80AC7704)     # t2 = 80AC0000
    addiu   t2, t2, %lo(func_80AC7704) # t2 = 80AC7704
    lw      a1, 0x0030($sp)
    beq     t2, t3, lbl_80AC8090
    lw      a2, 0x002C($sp)
    lbu     t4, 0x0165(s0)             # 00000165
    or      a0, s1, $zero              # a0 = 00000000
    andi    t5, t4, 0xFFFD             # t5 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    sb      t5, 0x0165(s0)             # 00000165
lbl_80AC8090:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80AC80A4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0020($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a1, 0x0154             # a1 = 00000154
    jal     func_80050CE4
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    jal     func_80050CE4
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x18B0             # a1 = 060018B0
    jal     func_80028048
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AC8100: .word 0x015C0600, 0x00000010, 0x00AF0000, 0x0000020C
.word func_80AC74E8
.word func_80AC7634
.word func_80AC7FE0
.word func_80AC80A4
var_80AC8120: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x00000000, 0x07F80000, \
0x00360064, 0x00000000, 0x00000000, 0x00000000, \
0x00000008, 0x00000000, 0x00010000, 0x01000000, \
0x05780000, 0x000D0064
var_80AC8168: .word 0x0A000909, 0x20000000, 0x00000002
.word var_80AC8120
var_80AC8178: .word 0x80002AAA, 0xD5550000
var_80AC8180: .word 0x00000000
var_80AC8184: .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
var_80AC8194: .word 0xF0600320, 0x0FA00000, 0x00000000

.section .rodata

var_80AC81A0: .word 0x3C23D70A
var_80AC81A4: .word 0x3A1D4952
var_80AC81A8: .word 0x3A1D4952, 0x00000000

