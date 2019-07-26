.section .text
func_8091D650:
    sll     t6, a1,  2
    lui     t7, %hi(var_8091E36C)      # t7 = 80920000
    sw      a1, 0x0230(a0)             # 00000230
    addu    t7, t7, t6
    lw      t7, %lo(var_8091E36C)(t7)
    sw      t7, 0x022C(a0)             # 0000022C
    jr      $ra
    nop


func_8091D670:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s3, 0x0060($sp)
    sw      s1, 0x0058($sp)
    sw      s0, 0x0054($sp)
    or      s0, a0, $zero              # s0 = 00000000
    ori     s1, $zero, 0x8000          # s1 = 00008000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s5, 0x0068($sp)
    sw      s4, 0x0064($sp)
    sw      s2, 0x005C($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    or      s2, s0, $zero              # s2 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0078($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    addu    a0, t6, s1
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t7, 0x00B6(s0)             # 000000B6
    mov.s   $f20, $f0
    addu    a0, t7, s1
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f26                  # $f26 = 60.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f24                  # $f24 = 160.00
    mov.s   $f22, $f0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s4, s3, 0x1C24             # s4 = 00001C24
    addiu   s5, $zero, 0x0005          # s5 = 00000005
lbl_8091D710:
    mtc1    v0, $f10                   # $f10 = 0.00
    lwc1    $f6, 0x0008(s0)            # 00000008
    addiu   s1, v0, 0x0001             # s1 = 00000001
    cvt.s.w $f16, $f10
    andi    t0, s1, 0x00FF             # t0 = 00000001
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0071          # a3 = 00000071
    mul.s   $f18, $f16, $f24
    add.s   $f0, $f18, $f26
    mul.s   $f4, $f0, $f20
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f0, $f22
    lwc1    $f4, 0x0078($sp)
    swc1    $f8, 0x0074($sp)
    lwc1    $f16, 0x0010(s0)           # 00000010
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x007C($sp)
    lh      t1, 0x001C(s0)             # 0000001C
    swc1    $f18, 0x0018($sp)
    swc1    $f8, 0x0010($sp)
    swc1    $f4, 0x0014($sp)
    lh      t3, 0x0030(s0)             # 00000030
    andi    t2, t1, 0xFF00             # t2 = 00000000
    or      v1, t0, t2                 # v1 = 00000001
    sw      t3, 0x001C($sp)
    lh      t4, 0x0032(s0)             # 00000032
    sll     v1, v1, 16
    sra     v1, v1, 16
    sw      t4, 0x0020($sp)
    lh      t5, 0x0034(s0)             # 00000034
    sw      v1, 0x0028($sp)
    jal     func_800253F0
    sw      t5, 0x0024($sp)
    bne     v0, $zero, lbl_8091D7AC
    or      s2, v0, $zero              # s2 = 00000000
    b       lbl_8091D7B8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8091D7AC:
    bne     s1, s5, lbl_8091D710
    or      v0, s1, $zero              # v0 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8091D7B8:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    lw      s0, 0x0054($sp)
    lw      s1, 0x0058($sp)
    lw      s2, 0x005C($sp)
    lw      s3, 0x0060($sp)
    lw      s4, 0x0064($sp)
    lw      s5, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_8091D7EC:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      a1, 0x007C($sp)
    sw      $zero, 0x006C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a1, %hi(var_8091E380)      # a1 = 80920000
    addiu   a1, a1, %lo(var_8091E380)  # a1 = 8091E380
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x007C($sp)
    addiu   s2, s0, 0x0154             # s2 = 00000154
    andi    v0, v0, 0x00FF             # v0 = 00000000
    bne     v0, $zero, lbl_8091D8FC
    nop
    jal     func_8004B064
    or      a1, s2, $zero              # a1 = 00000154
    lui     a3, %hi(var_8091E33C)      # a3 = 80920000
    addiu   t6, s0, 0x0174             # t6 = 00000174
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_8091E33C)  # a3 = 8091E33C
    lw      a0, 0x007C($sp)
    or      a1, s2, $zero              # a1 = 00000154
    jal     func_8004B3EC
    or      a2, s0, $zero              # a2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   t0, $sp, 0x006C            # t0 = FFFFFFF4
lbl_8091D870:
    lui     t7, %hi(var_8091E348)      # t7 = 80920000
    lw      t7, %lo(var_8091E348)(t7)
    sll     t8, s1,  4
    subu    t8, t8, s1
    sll     t8, t8,  2
    addiu   v0, $sp, 0x0048            # v0 = FFFFFFD0
    addu    v1, t7, t8
lbl_8091D88C:
    lwc1    $f4, 0x0018(v1)            # 00000018
    lwc1    $f6, 0x0008(s0)            # 00000008
    addiu   v0, v0, 0x000C             # v0 = FFFFFFDC
    addiu   v1, v1, 0x000C             # v1 = 0000000C
    add.s   $f8, $f4, $f6
    swc1    $f8, -0x000C(v0)           # FFFFFFD0
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f10, 0x0010(v1)           # 0000001C
    add.s   $f18, $f10, $f16
    swc1    $f18, -0x0008(v0)          # FFFFFFD4
    lwc1    $f6, 0x0010(s0)            # 00000010
    lwc1    $f4, 0x0014(v1)            # 00000020
    add.s   $f8, $f4, $f6
    bne     v0, t0, lbl_8091D88C
    swc1    $f8, -0x0004(v0)           # FFFFFFD8
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFE8
    sw      t9, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000154
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD0
    jal     func_80050BD4
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFDC
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     s1, $at, lbl_8091D870
    addiu   t0, $sp, 0x006C            # t0 = FFFFFFF4
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v0, v0, 0x00FF             # v0 = 00000000
lbl_8091D8FC:
    bne     v0, $zero, lbl_8091D91C
    lui     a0, 0x0601                 # a0 = 06010000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xDE44             # a0 = 0600DE44
    jal     func_80033EF4
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    b       lbl_8091D92C
    lw      a0, 0x007C($sp)
lbl_8091D91C:
    addiu   a0, a0, 0xDD1C             # a0 = FFFFDD1C
    jal     func_80033EF4
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    lw      a0, 0x007C($sp)
lbl_8091D92C:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x006C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      a1, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    lw      a0, 0x007C($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x00FF             # a1 = 00000000
    beql    v0, $zero, lbl_8091D9C4
    lh      t2, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_8091E2AC)     # $at = 80920000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    bne     v0, $zero, lbl_8091D998
    sll     t1, v0,  2
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f16                  # $f16 = -20.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    add.s   $f18, $f10, $f16
    jal     func_8091D650
    swc1    $f18, 0x0028(s0)           # 00000028
    b       lbl_8091D9F0
    nop
lbl_8091D998:
    addu    $at, $at, t1
    lwc1    $f4, %lo(var_8091E2AC)($at)
    lwc1    $f6, 0x000C(s0)            # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    add.s   $f8, $f4, $f6
    jal     func_8091D650
    swc1    $f8, 0x0028(s0)            # 00000028
    b       lbl_8091D9F0
    nop
    lh      t2, 0x001C(s0)             # 0000001C
lbl_8091D9C4:
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0x00FF             # t3 = 00000000
    bne     t3, $zero, lbl_8091D9E8
    nop
    jal     func_8091D650
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8091D9F0
    nop
lbl_8091D9E8:
    jal     func_8091D650
    addiu   a1, $zero, 0x0002          # a1 = 00000002
lbl_8091D9F0:
    lui     $at, %hi(var_8091E3E0)     # $at = 80920000
    lwc1    $f10, %lo(var_8091E3E0)($at)
    lh      t4, 0x001C(s0)             # 0000001C
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f16                  # $f16 = -12.00
    andi    t5, t4, 0x00FF             # t5 = 00000000
    swc1    $f10, 0x006C(s0)           # 0000006C
    bne     t5, $zero, lbl_8091DA44
    swc1    $f16, 0x0070(s0)           # 00000070
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091D670
    lw      a1, 0x007C($sp)
    bnel    v0, $zero, lbl_8091DA48
    lw      $ra, 0x002C($sp)
    beq     s0, $zero, lbl_8091DA44
    or      s1, s0, $zero              # s1 = 00000000
lbl_8091DA30:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      s1, 0x011C(s1)             # 0000011C
    bne     s1, $zero, lbl_8091DA30
    nop
lbl_8091DA44:
    lw      $ra, 0x002C($sp)
lbl_8091DA48:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8091DA5C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)
    lw      a2, 0x013C(a3)             # 0000013C
    sw      a3, 0x0018($sp)
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    andi    t8, t7, 0x00FF             # t8 = 00000000
    bnel    t8, $zero, lbl_8091DAA4
    lw      $ra, 0x0014($sp)
    jal     func_8004B148
    addiu   a1, a3, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)
lbl_8091DAA4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091DAB0:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sdc1    $f24, 0x0038($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s1, 0x0044($sp)
    mtc1    $zero, $f24                # $f24 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x006C            # s4 = FFFFFFF4
    sw      $ra, 0x0054($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lw      t7, 0x0024(s1)             # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    sw      t7, 0x0000(s4)             # FFFFFFF4
    lw      t6, 0x0028(s1)             # 00000028
    mfc1    a2, $f24
    addiu   t8, $zero, 0x0258          # t8 = 00000258
    sw      t6, 0x0004(s4)             # FFFFFFF8
    lw      t7, 0x002C(s1)             # 0000002C
    addiu   t9, $zero, 0x012C          # t9 = 0000012C
    or      a0, s3, $zero              # a0 = 00000000
    sw      t7, 0x0008(s4)             # FFFFFFFC
    lwc1    $f4, 0x0070($sp)
    sw      $zero, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t8, 0x0010($sp)
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80026308
    swc1    $f8, 0x0070($sp)
    lh      t0, 0x00B6(s1)             # 000000B6
    ori     s0, $zero, 0x8000          # s0 = 00008000
    addu    a0, t0, s0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t1, 0x00B6(s1)             # 000000B6
    mov.s   $f20, $f0
    addu    a0, t1, s0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f10, 0x0028(s1)           # 00000028
    lui     s0, %hi(var_8091E384)      # s0 = 80920000
    lui     s2, %hi(var_8091E3DC)      # s2 = 80920000
    mov.s   $f22, $f0
    addiu   s2, s2, %lo(var_8091E3DC)  # s2 = 8091E3DC
    addiu   s0, s0, %lo(var_8091E384)  # s0 = 8091E384
    swc1    $f10, 0x0070($sp)
    lwc1    $f0, 0x0000(s0)            # 8091E384
lbl_8091DB8C:
    lwc1    $f2, 0x0004(s0)            # 8091E388
    lwc1    $f6, 0x0024(s1)            # 00000024
    mul.s   $f16, $f0, $f22
    mfc1    a2, $f24
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    mul.s   $f18, $f2, $f20
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    or      a0, s3, $zero              # a0 = 00000000
    mul.s   $f10, $f2, $f22
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f0, $f20
    add.s   $f8, $f4, $f6
    sub.s   $f18, $f10, $f16
    swc1    $f8, 0x006C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sw      $zero, 0x0018($sp)
    sw      t3, 0x0014($sp)
    add.s   $f6, $f18, $f4
    sw      t2, 0x0010($sp)
    jal     func_80026308
    swc1    $f6, 0x0074($sp)
    addiu   s0, s0, 0x0008             # s0 = 8091E38C
    bnel    s0, s2, lbl_8091DB8C
    lwc1    $f0, 0x0000(s0)            # 8091E38C
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8091DC20:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x011C(a0)             # 0000011C
    beql    s0, $zero, lbl_8091DC6C
    lw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
lbl_8091DC44:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    beql    t7, $zero, lbl_8091DC60
    lw      s0, 0x011C(s0)             # 0000011C
    jal     func_8091DAB0
    or      a1, s1, $zero              # a1 = 00000000
    lw      s0, 0x011C(s0)             # 0000011C
lbl_8091DC60:
    bnel    s0, $zero, lbl_8091DC44
    lh      t6, 0x001C(s0)             # 0000001C
    lw      $ra, 0x001C($sp)
lbl_8091DC6C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8091DC7C:
    lh      t6, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    slti    $at, t7, 0x0002
    bnel    $at, $zero, lbl_8091DCE4
    lw      v0, 0x011C(a0)             # 0000011C
    lwc1    $f0, 0x0028(a1)            # 00000028
    lwc1    $f2, 0x0028(a0)            # 00000028
    lui     $at, 0xC2C8                # $at = C2C80000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8091DCB8
    sub.s   $f4, $f2, $f0
    b       lbl_8091DCE0
    swc1    $f0, 0x0028(a0)            # 00000028
    sub.s   $f4, $f2, $f0
lbl_8091DCB8:
    mtc1    $at, $f6                   # $f6 = -100.00
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_8091DCE4
    lw      v0, 0x011C(a0)             # 0000011C
    mtc1    $at, $f8                   # $f8 = 100.00
    nop
    sub.s   $f10, $f0, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
lbl_8091DCE0:
    lw      v0, 0x011C(a0)             # 0000011C
lbl_8091DCE4:
    beq     v0, $zero, lbl_8091DD14
    nop
    lwc1    $f2, 0x0028(a0)            # 00000028
lbl_8091DCF0:
    lwc1    $f16, 0x0028(v0)           # 00000028
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_8091DD0C
    lw      v0, 0x011C(v0)             # 0000011C
    swc1    $f2, 0x0028(v0)            # 00000028
    lw      v0, 0x011C(v0)             # 0000011C
lbl_8091DD0C:
    bnel    v0, $zero, lbl_8091DCF0
    lwc1    $f2, 0x0028(a0)            # 00000028
lbl_8091DD14:
    jr      $ra
    nop


func_8091DD1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lh      t7, 0x0110(t6)             # 80120110
    lw      a1, 0x0118(a0)             # 00000118
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    beql    a1, $zero, lbl_8091DDA4
    lw      $ra, 0x0014($sp)
    lh      t8, 0x001C(a0)             # 0000001C
    lwc1    $f10, 0x0060(a1)           # 00000060
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t9, t8, 0x00FF             # t9 = 00000000
    bne     t9, $at, lbl_8091DD84
    swc1    $f10, 0x0060(a0)           # 00000060
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    lwc1    $f16, 0x0028(a1)           # 00000028
    sub.s   $f4, $f16, $f18
    b       lbl_8091DD98
    swc1    $f4, 0x0028(a0)            # 00000028
lbl_8091DD84:
    lwc1    $f8, 0x0060(a0)            # 00000060
    lwc1    $f6, 0x0028(a0)            # 00000028
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0028(a0)           # 00000028
lbl_8091DD98:
    jal     func_8091DC7C
    nop
    lw      $ra, 0x0014($sp)
lbl_8091DDA4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091DDB0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     t6, 0x0165(s0)             # 00000165
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8091DE2C
    lw      a0, 0x002C($sp)
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x0CEE          # a1 = 00000CEE
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x283A          # a1 = 0000283A
    sb      $zero, 0x0165(s0)          # 00000165
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091D650
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)
    sra     a1, a1,  8
    jal     func_800204D0
    andi    a1, a1, 0x00FF             # a1 = 00000000
    b       lbl_8091DE3C
    lw      $ra, 0x0024($sp)
lbl_8091DE2C:
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0154             # a2 = 00000154
    lw      $ra, 0x0024($sp)
lbl_8091DE3C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8091DE4C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f0                   # $f0 = -20.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x0070(s0)           # 00000070
    sub.s   $f8, $f4, $f6
    sub.s   $f16, $f0, $f10
    c.lt.s  $f8, $f16
    nop
    bc1fl   lbl_8091DF88
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_8091DF88
    lw      $ra, 0x0024($sp)
    lw      t6, 0x0234(s0)             # 00000234
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, t7, 0x0007
    bne     $at, $zero, lbl_8091DEE0
    sw      t7, 0x0234(s0)             # 00000234
    lwc1    $f6, 0x000C(s0)            # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    add.s   $f10, $f6, $f0
    jal     func_8091D650
    swc1    $f10, 0x0028(s0)           # 00000028
    b       lbl_8091DF88
    lw      $ra, 0x0024($sp)
lbl_8091DEE0:
    lui     $at, %hi(var_8091E3E4)     # $at = 80920000
    lwc1    $f16, %lo(var_8091E3E4)($at)
    lwc1    $f8, 0x0060(s0)            # 00000060
    lw      t9, 0x0234(s0)             # 00000234
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mul.s   $f18, $f8, $f16
    bne     t9, $at, lbl_8091DF84
    swc1    $f18, 0x0060(s0)           # 00000060
    lw      v0, 0x003C($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      t0, 0x07A0(v0)             # 000007A0
    sll     t1, t0,  2
    addu    t2, v0, t1
    jal     func_8007D85C
    lw      a0, 0x0790(t2)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x002C($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0xC350          # a1 = FFFFC350
    lh      a0, 0x002E($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091DC20
    lw      a1, 0x003C($sp)
lbl_8091DF84:
    lw      $ra, 0x0024($sp)
lbl_8091DF88:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8091DF98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x0118(a0)             # 00000118
    sw      a0, 0x0020($sp)
    jal     func_8091DD1C
    sw      v0, 0x0018($sp)
    lw      v0, 0x0018($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      a0, 0x0020($sp)
    lw      v1, 0x0230(v0)             # 00000230
    beq     v1, $at, lbl_8091DFE4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_8091E02C
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0234(v0)             # 00000234
    slti    $at, t6, 0x0005
    bnel    $at, $zero, lbl_8091E02C
    lw      $ra, 0x0014($sp)
lbl_8091DFE4:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000000
    bne     v0, $at, lbl_8091E020
    sll     t7, v0,  2
    lui     $at, %hi(var_8091E2AC)     # $at = 80920000
    addu    $at, $at, t7
    lwc1    $f4, %lo(var_8091E2AC)($at)
    lwc1    $f6, 0x000C(a0)            # 0000000C
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    add.s   $f8, $f4, $f6
    jal     func_8091D650
    swc1    $f8, 0x0028(a0)            # 00000028
    b       lbl_8091E02C
    lw      $ra, 0x0014($sp)
lbl_8091E020:
    jal     func_8091D650
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x0014($sp)
lbl_8091E02C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8091E038:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091DC7C
    lw      a1, 0x0118(s0)             # 00000118
    lh      t6, 0x001C(s0)             # 0000001C
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     v0, %hi(var_8091E2B0)      # v0 = 80920000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    addiu   v0, v0, %lo(var_8091E2B0)  # v0 = 8091E2B0
    sll     t8, t7,  2
    sub.s   $f10, $f6, $f8
    addu    t9, v0, t8
    lwc1    $f4, -0x0004(t9)           # FFFFFFFC
    c.le.s  $f10, $f4
    nop
    bc1fl   lbl_8091E1A4
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0060(s0)           # 00000060
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_8091E1A4
    lw      $ra, 0x0024($sp)
    lw      t0, 0x0234(s0)             # 00000234
    addiu   t1, t0, 0x0001             # t1 = 00000001
    slti    $at, t1, 0x0007
    bne     $at, $zero, lbl_8091E0F8
    sw      t1, 0x0234(s0)             # 00000234
    lh      t3, 0x001C(s0)             # 0000001C
    lwc1    $f8, 0x000C(s0)            # 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sll     t5, t4,  2
    addu    t6, v0, t5
    lwc1    $f6, -0x0004(t6)           # FFFFFFFC
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    add.s   $f4, $f6, $f8
    jal     func_8091D650
    swc1    $f4, 0x0028(s0)            # 00000028
    b       lbl_8091E1A4
    lw      $ra, 0x0024($sp)
lbl_8091E0F8:
    lui     $at, %hi(var_8091E3E8)     # $at = 80920000
    lwc1    $f16, %lo(var_8091E3E8)($at)
    lwc1    $f10, 0x0060(s0)           # 00000060
    lw      t7, 0x0234(s0)             # 00000234
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mul.s   $f18, $f10, $f16
    bne     t7, $at, lbl_8091E1A0
    swc1    $f18, 0x0060(s0)           # 00000060
    lw      v0, 0x003C($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      t8, 0x07A0(v0)             # 000007A0
    sll     t9, t8,  2
    addu    t0, v0, t9
    jal     func_8007D85C
    lw      a0, 0x0790(t0)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x002C($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0xC350          # a1 = FFFFC350
    lh      a0, 0x002E($sp)
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lui     $at, %hi(var_8091E3EC)     # $at = 80920000
    lwc1    $f12, %lo(var_8091E3EC)($at)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091DAB0
    lw      a1, 0x003C($sp)
lbl_8091E1A0:
    lw      $ra, 0x0024($sp)
lbl_8091E1A4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8091E1B4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8091E1C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x022C(a0)             # 0000022C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091E1E8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v0, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      v1, 0x0024($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      t0, 0x0028($sp)
    lh      t1, 0x001C(t0)             # 0000001C
    lui     t4, 0xDE00                 # t4 = DE000000
    andi    t2, t1, 0x00FF             # t2 = 00000000
    bnel    t2, $zero, lbl_8091E284
    lw      v0, 0x02C0(v1)             # 000002C0
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0xA668             # t5 = 0600A668
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    b       lbl_8091E2A0
    lw      $ra, 0x0014($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
lbl_8091E284:
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xA548             # t8 = 0600A548
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_8091E2A0:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
var_8091E2AC:
    nop

.section .data

var_8091E2B0: .word \
0xC1A00000, 0xC2F00000, 0xC35C0000, 0xC3A00000, \
0xC3D20000
var_8091E2C4: .word \
0x00000000, 0x00000000, 0x00000000, 0x40000040, \
0x00000000, 0x00010000, 0xC1A00000, 0x40400000, \
0xC1A00000, 0xC1A00000, 0x40400000, 0x41A00000, \
0x41A00000, 0x40400000, 0x41A00000, 0x00000000, \
0x00000000, 0x00000000, 0x40000040, 0x00000000, \
0x00010000, 0x41A00000, 0x40400000, 0x41A00000, \
0x41A00000, 0x40400000, 0xC1A00000, 0xC1A00000, \
0x40400000, 0xC1A00000
var_8091E33C: .word 0x0A000900, 0x00020000, 0x00000002
var_8091E348: .word var_8091E2C4
var_8091E34C: .word 0x00710100, 0x00000000, 0x002C0000, 0x00000238
.word func_8091D7EC
.word func_8091DA5C
.word func_8091E1C4
.word func_8091E1E8
var_8091E36C: .word func_8091DDB0
.word func_8091DE4C
.word func_8091DF98
.word func_8091E038
.word func_8091E1B4
var_8091E380: .word 0x48500064
var_8091E384: .word \
0xC2C80000, 0x42200000, 0x42C80000, 0x42200000, \
0xC2C80000, 0x00000000, 0x42C80000, 0x00000000, \
0xC2C80000, 0xC2200000, 0x42C80000, 0x42200000, \
0xC2C80000, 0xC2A00000, 0xC2480000, 0xC2A00000, \
0x00000000, 0xC2A00000, 0x42480000, 0xC2A00000, \
0x42C80000, 0xC2A00000
var_8091E3DC: .word 0x00000000

.section .rodata

var_8091E3E0: .word 0xBF99999A
var_8091E3E4: .word 0xBE75C28F
var_8091E3E8: .word 0xBE75C28F
var_8091E3EC: .word 0x461C4000

