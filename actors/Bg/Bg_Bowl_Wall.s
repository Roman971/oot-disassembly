.section .text
func_80B70FA0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      $zero, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    bne     t6, $zero, lbl_80B70FEC
    addiu   a0, a0, 0x1B00             # a0 = 06001B00
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_80033EF4
    addiu   a0, a0, 0x0CB8             # a0 = 06000CB8
    beq     $zero, $zero, lbl_80B70FF8
    lw      a0, 0x003C($sp)
lbl_80B70FEC:
    jal     func_80033EF4
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lw      a0, 0x003C($sp)
lbl_80B70FF8:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0028($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t8, 0x0024(s0)             # 00000024
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    sw      t8, 0x0158(s0)             # 00000158
    lw      t8, 0x002C(s0)             # 0000002C
    lw      t7, 0x0028(s0)             # 00000028
    lui     t9, %hi(func_80B7108C)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B7108C) # t9 = 80B7108C
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t9, 0x0154(s0)             # 00000154
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0050(s0)            # 00000050
    sw      t8, 0x0160(s0)             # 00000160
    sw      t7, 0x015C(s0)             # 0000015C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B71058:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B7108C:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0074($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80B71880)     # $at = 80B70000
    beql    v0, $zero, lbl_80B710F4
    sll     t1, v0,  2
    lwc1    $f12, %lo(var_80B71880)($at)
    jal     func_80026D64
    sh      v0, 0x0062($sp)
    trunc.w.s $f4, $f0
    lh      v0, 0x0062($sp)
    lui     v1, %hi(var_80B71860)      # v1 = 80B70000
    mfc1    t9, $f4
    nop
    addu    v0, v0, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    sll     t0, v0,  1
    addu    v1, v1, t0
    lh      v1, %lo(var_80B71860)(v1)
    sh      v1, 0x0034(s0)             # 00000034
    sh      v1, 0x00B8(s0)             # 000000B8
    sll     t1, v0,  2
lbl_80B710F4:
    subu    t1, t1, v0
    lui     t2, %hi(var_80B71830)      # t2 = 80B70000
    addiu   t2, t2, %lo(var_80B71830)  # t2 = 80B71830
    sll     t1, t1,  2
    addu    v1, t1, t2
    lwc1    $f6, 0x0000(v1)            # 80B70000
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f18, 0x0028(s0)           # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   a3, $zero, 0x01BE          # a3 = 000001BE
    swc1    $f10, 0x0164(s0)           # 00000164
    lwc1    $f16, 0x0004(v1)           # 80B70004
    add.s   $f4, $f16, $f18
    lwc1    $f16, 0x0164(s0)           # 00000164
    swc1    $f4, 0x0168(s0)            # 00000168
    lwc1    $f6, 0x0008(v1)            # 80B70008
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x016C(s0)           # 0000016C
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0168(s0)           # 00000168
    lw      a2, 0x0074($sp)
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x016C(s0)            # 0000016C
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    swc1    $f4, 0x0018($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    sw      v1, 0x0048($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    sw      t4, 0x0028($sp)
    beq     v0, $zero, lbl_80B71248
    lw      v1, 0x0048($sp)
    addiu   a0, s0, 0x0164             # a0 = 00000164
    lw      t6, 0x0000(a0)             # 00000164
    addiu   a1, v0, 0x0144             # a1 = 00000144
    lui     t7, %hi(var_80B71830)      # t7 = 80B70000
    sw      t6, 0x0000(a1)             # 00000144
    lw      t5, 0x0004(a0)             # 00000168
    addiu   t7, t7, %lo(var_80B71830)  # t7 = 80B71830
    sw      t5, 0x0004(a1)             # 00000148
    lw      t6, 0x0008(a0)             # 0000016C
    beq     v1, t7, lbl_80B711FC
    sw      t6, 0x0008(a1)             # 0000014C
    lw      t9, 0x0024(s0)             # 00000024
    addiu   v1, $sp, 0x004C            # v1 = FFFFFFDC
    sw      t9, 0x0000(v1)             # FFFFFFDC
    lw      t8, 0x0028(s0)             # 00000028
    lw      t1, 0x0000(v1)             # FFFFFFDC
    sw      t8, 0x0004(v1)             # FFFFFFE0
    lw      t9, 0x002C(s0)             # 0000002C
    sw      t9, 0x0008(v1)             # FFFFFFE4
    sw      t1, 0x0000(a0)             # 00000164
    lw      t0, 0x0004(v1)             # FFFFFFE0
    sw      t0, 0x0004(a0)             # 00000168
    lw      t1, 0x0008(v1)             # FFFFFFE4
    sw      t1, 0x0008(a0)             # 0000016C
    lw      t3, 0x0000(v1)             # FFFFFFDC
    sw      t3, 0x0000(a1)             # 00000144
    lw      t2, 0x0004(v1)             # FFFFFFE0
    sw      t2, 0x0004(a1)             # 00000148
    lw      t3, 0x0008(v1)             # FFFFFFE4
    sw      t3, 0x0008(a1)             # 0000014C
lbl_80B711FC:
    lw      t4, 0x0174(s0)             # 00000174
    lui     t7, %hi(func_80B7125C)     # t7 = 80B70000
    lw      t5, 0x0074($sp)
    bne     t4, $zero, lbl_80B71244
    addiu   t7, t7, %lo(func_80B7125C) # t7 = 80B7125C
    lw      v0, 0x1C54(t5)             # 00001C54
    addiu   v1, $zero, 0x014B          # v1 = 0000014B
    beql    v0, $zero, lbl_80B71248
    sw      t7, 0x0154(s0)             # 00000154
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B71224:
    beq     v1, t6, lbl_80B71234
    nop
    beq     $zero, $zero, lbl_80B7123C
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B71234:
    beq     $zero, $zero, lbl_80B71244
    sw      v0, 0x0174(s0)             # 00000174
lbl_80B7123C:
    bnel    v0, $zero, lbl_80B71224
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B71244:
    sw      t7, 0x0154(s0)             # 00000154
lbl_80B71248:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80B7125C:
    sw      a1, 0x0004($sp)
    lh      t6, 0x0170(a0)             # 00000170
    lui     t7, %hi(func_80B71280)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B71280) # t7 = 80B71280
    beq     t6, $zero, lbl_80B71278
    nop
    sw      t7, 0x0154(a0)             # 00000154
lbl_80B71278:
    jr      $ra
    nop


func_80B71280:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s5, $sp, 0x00A0            # s5 = FFFFFFF0
    addiu   s6, $sp, 0x0094            # s6 = FFFFFFE4
    sw      $ra, 0x0074($sp)
    sw      s4, 0x0068($sp)
    sw      s1, 0x005C($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     t6, %hi(var_80B71868)      # t6 = 80B70000
    addiu   t6, t6, %lo(var_80B71868)  # t6 = 80B71868
    lw      t8, 0x0000(t6)             # 80B71868
    lui     t9, %hi(var_80B71874)      # t9 = 80B70000
    addiu   t9, t9, %lo(var_80B71874)  # t9 = 80B71874
    sw      t8, 0x0000(s5)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B7186C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    sw      t7, 0x0004(s5)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B71870
    addiu   a1, $zero, 0xC180          # a1 = FFFFC180
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sw      t8, 0x0008(s5)             # FFFFFFF8
    lw      t1, 0x0000(t9)             # 80B71874
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lui     $at, 0x4120                # $at = 41200000
    sw      t1, 0x0000(s6)             # FFFFFFE4
    lw      t0, 0x0004(t9)             # 80B71878
    sw      t0, 0x0004(s6)             # FFFFFFE8
    lw      t1, 0x0008(t9)             # 80B7187C
    sw      t1, 0x0008(s6)             # FFFFFFEC
    lh      t2, 0x001C(s2)             # 0000001C
    bnel    t2, $zero, lbl_80B71364
    mtc1    $at, $f28                  # $f28 = 10.00
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      v1, 0x00B4(s2)             # 000000B4
    slti    $at, v1, 0xC3E2
    beq     $at, $zero, lbl_80B71348
    sh      v1, 0x0030(s2)             # 00000030
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_80B71348:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f28                  # $f28 = 10.00
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f26                  # $f26 = 400.00
    beq     $zero, $zero, lbl_80B713B8
    nop
    mtc1    $at, $f28                  # $f28 = 400.00
lbl_80B71364:
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f6                   # $f6 = 450.00
    lwc1    $f4, 0x015C(s2)            # 0000015C
    lui     a2, 0x3E99                 # a2 = 3E990000
    mfc1    a3, $f28
    sub.s   $f8, $f4, $f6
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s2, 0x0028             # a0 = 00000028
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f26                  # $f26 = 400.00
    lwc1    $f16, 0x015C(s2)           # 0000015C
    lwc1    $f10, 0x0028(s2)           # 00000028
    sub.s   $f18, $f16, $f26
    c.lt.s  $f10, $f18
    nop
    bc1f    lbl_80B713B8
    nop
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_80B713B8:
    beq     s0, $zero, lbl_80B714F8
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f24                  # $f24 = -50.00
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f22                  # $f22 = -100.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f20                  # $f20 = 300.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x000F          # s4 = 0000000F
    addiu   s1, $sp, 0x0088            # s1 = FFFFFFD8
lbl_80B713E0:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0164(s2)            # 00000164
    swc1    $f22, 0x008C($sp)
    mov.s   $f12, $f26
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0088($sp)
    lwc1    $f8, 0x016C(s2)            # 0000016C
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    add.s   $f16, $f0, $f8
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f16, 0x0090($sp)
    or      a1, s1, $zero              # a1 = FFFFFFD8
    or      a2, s6, $zero              # a2 = FFFFFFE4
    jal     func_8001C97C
    or      a3, s5, $zero              # a3 = FFFFFFF0
    mfc1    a2, $f28
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    swc1    $f24, 0x008C($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFD8
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s4, 0x0014($sp)
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s4, lbl_80B713E0
    nop
    lh      t9, 0x07A0(s3)             # 000007A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t0, t9,  2
    addu    t1, s3, t0
    jal     func_8007D85C
    lw      a0, 0x0790(t1)             # 00000790
    sll     s0, v0, 16
    sll     a0, v0, 16
    sra     s0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x012C          # a1 = 0000012C
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    lui     t3, %hi(func_80B71534)     # t3 = 80B70000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, t3, %lo(func_80B71534) # t3 = 80B71534
    sh      t2, 0x0172(s2)             # 00000172
    sw      t3, 0x0154(s2)             # 00000154
lbl_80B714F8:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    lw      s5, 0x006C($sp)
    lw      s6, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80B71534:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0172(s0)             # 00000172
    slti    $at, v0, 0x0002
    bnel    $at, $zero, lbl_80B715B8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xC180          # a1 = FFFFC180
    bne     t6, $zero, lbl_80B71584
    lui     $at, 0x43E1                # $at = 43E10000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80B71604
    lw      $ra, 0x0024($sp)
lbl_80B71584:
    lwc1    $f4, 0x015C(s0)            # 0000015C
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    sub.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f8
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_80B71604
    lw      $ra, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80B715B8:
    bne     v0, $at, lbl_80B71600
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f16                  # $f16 = 450.00
    lwc1    $f10, 0x015C(s0)           # 0000015C
    lh      t0, 0x001C(s0)             # 0000001C
    sh      $zero, 0x00B4(s0)          # 000000B4
    sub.s   $f18, $f10, $f16
    lh      t7, 0x00B4(s0)             # 000000B4
    lw      t9, 0x0174(s0)             # 00000174
    sll     t1, t0,  1
    swc1    $f18, 0x0028(s0)           # 00000028
    lui     t3, %hi(func_80B71614)     # t3 = 80B70000
    sh      t7, 0x0030(s0)             # 00000030
    addu    t2, t9, t1
    sh      t8, 0x022E(t2)             # 0000022E
    addiu   t3, t3, %lo(func_80B71614) # t3 = 80B71614
    sw      t3, 0x0154(s0)             # 00000154
lbl_80B71600:
    lw      $ra, 0x0024($sp)
lbl_80B71604:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B71614:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    lw      t6, 0x0174(s0)             # 00000174
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sll     t8, t7,  1
    addu    t9, t6, t8
    lh      t0, 0x022E(t9)             # 0000022E
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    beq     t0, $at, lbl_80B71698
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x015C(s0)             # 0000015C
    jal     func_80064280
    lui     a3, 0x4248                 # a3 = 42480000
    lwc1    $f2, 0x015C(s0)            # 0000015C
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    sub.s   $f0, $f4, $f2
    lui     t1, %hi(func_80B7108C)     # t1 = 80B70000
    addiu   t1, t1, %lo(func_80B7108C) # t1 = 80B7108C
    abs.s   $f0, $f0
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_80B7169C
    lw      $ra, 0x001C($sp)
    swc1    $f2, 0x0028(s0)            # 00000028
    sh      $zero, 0x0170(s0)          # 00000170
    sw      t1, 0x0154(s0)             # 00000154
lbl_80B71698:
    lw      $ra, 0x001C($sp)
lbl_80B7169C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B716AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0172(a0)             # 00000172
    beq     v0, $zero, lbl_80B716C4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0172(a0)             # 00000172
lbl_80B716C4:
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B716E0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      t1, 0x004C($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(t1)             # 0000009C
    lw      a0, 0x0000(t1)             # 00000000
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    subu    $at, $zero, v0
    sll     a2, $at,  1
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    jal     func_8007EB00
    sw      v1, 0x0030($sp)
    lw      t0, 0x0030($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xE700                 # t3 = E7000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      t7, 0x0048($sp)
    lh      t8, 0x001C(t7)             # 0000001C
    bnel    t8, $zero, lbl_80B717D8
    lw      v1, 0x02C0(s0)             # 000002C0
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x0610             # t3 = 06000610
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80B717F4
    lw      $ra, 0x0024($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_80B717D8:
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1390             # t6 = 06001390
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)
lbl_80B717F4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B71810: .word 0x01BD0600, 0x00000030, 0x01780000, 0x00000178
.word func_80B70FA0
.word func_80B71058
.word func_80B716AC
.word func_80B716E0
var_80B71830: .word \
0x00000000, 0x43520000, 0xC1A00000, 0x00000000, \
0x432A0000, 0xC1A00000, 0xC32A0000, 0x00000000, \
0xC1A00000, 0x432A0000, 0x00000000, 0xC1A00000
var_80B71860: .word 0x00000000, 0x3FFFC001
var_80B71868: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80B71874: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B71880: .word 0x403F5C29, 0x00000000, 0x00000000, 0x00000000

